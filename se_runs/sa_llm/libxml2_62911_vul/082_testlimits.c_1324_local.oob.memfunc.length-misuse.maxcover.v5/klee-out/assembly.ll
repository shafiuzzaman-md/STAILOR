; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/082_testlimits.c_1324_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/082_testlimits.c_1324_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"limit\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"crazy_indx\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"fail\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"crazy:\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"(strlen(filename) >= 6) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [109 x i8] c"se_runs/sa_llm/libxml2_62911_vul/082_testlimits.c_1324_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.9 = private unnamed_addr constant [25 x i8] c"Failed to parse '%s' %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Failed to parse '%s' %lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !12 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !17, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i64* %3, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32* %4, metadata !25, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata i32* %5, metadata !28, metadata !DIExpression()), !dbg !29
  store i32 1, i32* %5, align 4, !dbg !29
  call void @llvm.dbg.declare(metadata i32* %6, metadata !30, metadata !DIExpression()), !dbg !31
  store i32 0, i32* %6, align 4, !dbg !31
  call void @llvm.dbg.declare(metadata i32* %7, metadata !32, metadata !DIExpression()), !dbg !33
  store i32 1, i32* %7, align 4, !dbg !33
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !34
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !dbg !35
  %9 = bitcast i64* %3 to i8*, !dbg !36
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 8, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)), !dbg !37
  %10 = bitcast i32* %4 to i8*, !dbg !38
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)), !dbg !39
  %11 = bitcast i32* %6 to i8*, !dbg !40
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)), !dbg !41
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !42
  %13 = load i8, i8* %12, align 1, !dbg !42
  %14 = sext i8 %13 to i32, !dbg !42
  %15 = icmp eq i32 %14, 0, !dbg !43
  %16 = zext i1 %15 to i32, !dbg !43
  %17 = sext i32 %16 to i64, !dbg !42
  call void @klee_assume(i64 noundef %17), !dbg !44
  %18 = load i32, i32* %5, align 4, !dbg !45
  %19 = icmp ne i32 %18, 0, !dbg !47
  br i1 %19, label %20, label %58, !dbg !48

20:                                               ; preds = %0
  %21 = load i32, i32* %6, align 4, !dbg !49
  %22 = icmp ne i32 %21, 0, !dbg !49
  br i1 %22, label %23, label %24, !dbg !52

23:                                               ; preds = %20
  store i32 0, i32* %7, align 4, !dbg !53
  br label %57, !dbg !55

24:                                               ; preds = %20
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !56
  %26 = call i32 @strncmp(i8* noundef %25, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i64 noundef 6) #5, !dbg !59
  %27 = icmp eq i32 %26, 0, !dbg !60
  br i1 %27, label %28, label %42, !dbg !61

28:                                               ; preds = %24
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !62
  %30 = call i64 @strlen(i8* noundef %29) #5, !dbg !62
  %31 = icmp uge i64 %30, 6, !dbg !62
  br i1 %31, label %32, label %34, !dbg !62

32:                                               ; preds = %28
  br i1 true, label %33, label %34, !dbg !62

33:                                               ; preds = %32
  br label %36, !dbg !62

34:                                               ; preds = %32, %28
  %35 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.7, i64 0, i64 0), i32 noundef 30, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !62
  br label %36, !dbg !62

36:                                               ; preds = %34, %33
  %37 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.7, i64 0, i64 0), i32 noundef 31, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !64
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !65
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !66
  %40 = load i32, i32* %4, align 4, !dbg !67
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %38, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i8* noundef %39, i32 noundef %40), !dbg !68
  br label %56, !dbg !69

42:                                               ; preds = %24
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !70
  %44 = call i64 @strlen(i8* noundef %43) #5, !dbg !70
  %45 = icmp uge i64 %44, 6, !dbg !70
  br i1 %45, label %46, label %48, !dbg !70

46:                                               ; preds = %42
  br i1 true, label %47, label %48, !dbg !70

47:                                               ; preds = %46
  br label %50, !dbg !70

48:                                               ; preds = %46, %42
  %49 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.7, i64 0, i64 0), i32 noundef 35, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !70
  br label %50, !dbg !70

50:                                               ; preds = %48, %47
  %51 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.7, i64 0, i64 0), i32 noundef 36, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !72
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !73
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !74
  %54 = load i64, i64* %3, align 8, !dbg !75
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %52, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i8* noundef %53, i64 noundef %54), !dbg !76
  br label %56

56:                                               ; preds = %50, %36
  br label %57

57:                                               ; preds = %56, %23
  br label %58, !dbg !77

58:                                               ; preds = %57, %0
  ret i32 0, !dbg !78
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/082_testlimits.c_1324_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "2aa0945c1ecfe5583f6cb323edcf3268")
!2 = !{!3}
!3 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 7, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"Ubuntu clang version 14.0.6"}
!12 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 10, type: !13, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!13 = !DISubroutineType(types: !14)
!14 = !{!15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{}
!17 = !DILocalVariable(name: "filename", scope: !12, file: !1, line: 11, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 2048, elements: !20)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !{!21}
!21 = !DISubrange(count: 256)
!22 = !DILocation(line: 11, column: 10, scope: !12)
!23 = !DILocalVariable(name: "limit", scope: !12, file: !1, line: 12, type: !3)
!24 = !DILocation(line: 12, column: 19, scope: !12)
!25 = !DILocalVariable(name: "crazy_indx", scope: !12, file: !1, line: 13, type: !26)
!26 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!27 = !DILocation(line: 13, column: 18, scope: !12)
!28 = !DILocalVariable(name: "ret", scope: !12, file: !1, line: 14, type: !15)
!29 = !DILocation(line: 14, column: 9, scope: !12)
!30 = !DILocalVariable(name: "fail", scope: !12, file: !1, line: 15, type: !15)
!31 = !DILocation(line: 15, column: 9, scope: !12)
!32 = !DILocalVariable(name: "res", scope: !12, file: !1, line: 16, type: !15)
!33 = !DILocation(line: 16, column: 9, scope: !12)
!34 = !DILocation(line: 18, column: 24, scope: !12)
!35 = !DILocation(line: 18, column: 5, scope: !12)
!36 = !DILocation(line: 19, column: 24, scope: !12)
!37 = !DILocation(line: 19, column: 5, scope: !12)
!38 = !DILocation(line: 20, column: 24, scope: !12)
!39 = !DILocation(line: 20, column: 5, scope: !12)
!40 = !DILocation(line: 21, column: 24, scope: !12)
!41 = !DILocation(line: 21, column: 5, scope: !12)
!42 = !DILocation(line: 23, column: 17, scope: !12)
!43 = !DILocation(line: 23, column: 31, scope: !12)
!44 = !DILocation(line: 23, column: 5, scope: !12)
!45 = !DILocation(line: 25, column: 9, scope: !46)
!46 = distinct !DILexicalBlock(scope: !12, file: !1, line: 25, column: 9)
!47 = !DILocation(line: 25, column: 13, scope: !46)
!48 = !DILocation(line: 25, column: 9, scope: !12)
!49 = !DILocation(line: 26, column: 13, scope: !50)
!50 = distinct !DILexicalBlock(scope: !51, file: !1, line: 26, column: 13)
!51 = distinct !DILexicalBlock(scope: !46, file: !1, line: 25, column: 19)
!52 = !DILocation(line: 26, column: 13, scope: !51)
!53 = !DILocation(line: 27, column: 17, scope: !54)
!54 = distinct !DILexicalBlock(scope: !50, file: !1, line: 26, column: 19)
!55 = !DILocation(line: 28, column: 9, scope: !54)
!56 = !DILocation(line: 29, column: 25, scope: !57)
!57 = distinct !DILexicalBlock(scope: !58, file: !1, line: 29, column: 17)
!58 = distinct !DILexicalBlock(scope: !50, file: !1, line: 28, column: 16)
!59 = !DILocation(line: 29, column: 17, scope: !57)
!60 = !DILocation(line: 29, column: 48, scope: !57)
!61 = !DILocation(line: 29, column: 17, scope: !58)
!62 = !DILocation(line: 30, column: 17, scope: !63)
!63 = distinct !DILexicalBlock(scope: !57, file: !1, line: 29, column: 54)
!64 = !DILocation(line: 31, column: 17, scope: !63)
!65 = !DILocation(line: 32, column: 25, scope: !63)
!66 = !DILocation(line: 33, column: 25, scope: !63)
!67 = !DILocation(line: 33, column: 35, scope: !63)
!68 = !DILocation(line: 32, column: 17, scope: !63)
!69 = !DILocation(line: 34, column: 13, scope: !63)
!70 = !DILocation(line: 35, column: 17, scope: !71)
!71 = distinct !DILexicalBlock(scope: !57, file: !1, line: 34, column: 20)
!72 = !DILocation(line: 36, column: 17, scope: !71)
!73 = !DILocation(line: 37, column: 25, scope: !71)
!74 = !DILocation(line: 38, column: 25, scope: !71)
!75 = !DILocation(line: 38, column: 51, scope: !71)
!76 = !DILocation(line: 37, column: 17, scope: !71)
!77 = !DILocation(line: 41, column: 5, scope: !51)
!78 = !DILocation(line: 43, column: 5, scope: !12)

; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/087_runtest.c_3936_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/087_runtest.c_3936_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [21 x i8] c"checkTestFile_result\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"update_results\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"(len <= sizeof(xml)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/087_runtest.c_3936_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"result/pattern/%s\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c".xml\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.10 = private unnamed_addr constant [21 x i8] c"Missing xml file %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @baseFilename(i8* noundef %0) #0 !dbg !12 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !18, metadata !DIExpression()), !dbg !19
  %3 = load i8*, i8** %2, align 8, !dbg !20
  ret i8* %3, !dbg !21
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @checkTestFile(i8* noundef %0) #0 !dbg !22 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !26, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata i32* %3, metadata !28, metadata !DIExpression()), !dbg !29
  %4 = bitcast i32* %3 to i8*, !dbg !30
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0)), !dbg !31
  %5 = load i32, i32* %3, align 4, !dbg !32
  ret i32 %5, !dbg !33
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !34 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [500 x i8], align 16
  %4 = alloca [500 x i8], align 16
  %5 = alloca [500 x i8], align 16
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !37, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata [500 x i8]* %3, metadata !39, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.declare(metadata [500 x i8]* %4, metadata !44, metadata !DIExpression()), !dbg !45
  call void @llvm.dbg.declare(metadata [500 x i8]* %5, metadata !46, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.declare(metadata i32* %6, metadata !48, metadata !DIExpression()), !dbg !49
  %7 = bitcast i32* %2 to i8*, !dbg !50
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !51
  %8 = getelementptr inbounds [500 x i8], [500 x i8]* %4, i64 0, i64 0, !dbg !52
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 500, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !53
  %9 = bitcast i32* %6 to i8*, !dbg !54
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0)), !dbg !55
  %10 = load i32, i32* %2, align 4, !dbg !56
  %11 = icmp sge i32 %10, 4, !dbg !57
  %12 = zext i1 %11 to i32, !dbg !57
  %13 = sext i32 %12 to i64, !dbg !56
  call void @klee_assume(i64 noundef %13), !dbg !58
  %14 = load i32, i32* %2, align 4, !dbg !59
  %15 = sext i32 %14 to i64, !dbg !59
  %16 = icmp ult i64 %15, 500, !dbg !60
  %17 = zext i1 %16 to i32, !dbg !60
  %18 = sext i32 %17 to i64, !dbg !59
  call void @klee_assume(i64 noundef %18), !dbg !61
  %19 = getelementptr inbounds [500 x i8], [500 x i8]* %4, i64 0, i64 499, !dbg !62
  store i8 0, i8* %19, align 1, !dbg !63
  %20 = load i32, i32* %2, align 4, !dbg !64
  %21 = sub nsw i32 %20, 4, !dbg !64
  store i32 %21, i32* %2, align 4, !dbg !64
  %22 = load i32, i32* %2, align 4, !dbg !65
  %23 = sext i32 %22 to i64, !dbg !65
  %24 = icmp ule i64 %23, 500, !dbg !65
  br i1 %24, label %25, label %27, !dbg !65

25:                                               ; preds = %0
  br i1 true, label %26, label %27, !dbg !65

26:                                               ; preds = %25
  br label %29, !dbg !65

27:                                               ; preds = %25, %0
  %28 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.6, i64 0, i64 0), i32 noundef 52, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !65
  br label %29, !dbg !65

29:                                               ; preds = %27, %26
  %30 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.6, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !66
  %31 = getelementptr inbounds [500 x i8], [500 x i8]* %3, i64 0, i64 0, !dbg !67
  %32 = getelementptr inbounds [500 x i8], [500 x i8]* %4, i64 0, i64 0, !dbg !67
  %33 = load i32, i32* %2, align 4, !dbg !68
  %34 = sext i32 %33 to i64, !dbg !68
  %35 = call i8* @memcpy(i8* %31, i8* %32, i64 %34), !dbg !67
  %36 = load i32, i32* %2, align 4, !dbg !69
  %37 = sext i32 %36 to i64, !dbg !70
  %38 = getelementptr inbounds [500 x i8], [500 x i8]* %3, i64 0, i64 %37, !dbg !70
  store i8 0, i8* %38, align 1, !dbg !71
  %39 = getelementptr inbounds [500 x i8], [500 x i8]* %5, i64 0, i64 0, !dbg !72
  %40 = getelementptr inbounds [500 x i8], [500 x i8]* %3, i64 0, i64 0, !dbg !74
  %41 = call i8* @baseFilename(i8* noundef %40), !dbg !75
  %42 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %39, i64 noundef 499, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* noundef %41) #7, !dbg !76
  %43 = icmp sge i32 %42, 499, !dbg !77
  br i1 %43, label %44, label %46, !dbg !78

44:                                               ; preds = %29
  %45 = getelementptr inbounds [500 x i8], [500 x i8]* %5, i64 0, i64 499, !dbg !79
  store i8 0, i8* %45, align 1, !dbg !81
  br label %46, !dbg !82

46:                                               ; preds = %44, %29
  %47 = getelementptr inbounds [500 x i8], [500 x i8]* %3, i64 0, i64 0, !dbg !83
  %48 = load i32, i32* %2, align 4, !dbg !84
  %49 = sext i32 %48 to i64, !dbg !85
  %50 = getelementptr inbounds i8, i8* %47, i64 %49, !dbg !85
  %51 = call i8* @memcpy(i8* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i64 5), !dbg !86
  %52 = getelementptr inbounds [500 x i8], [500 x i8]* %3, i64 0, i64 0, !dbg !87
  %53 = call i32 @checkTestFile(i8* noundef %52), !dbg !89
  %54 = icmp ne i32 %53, 0, !dbg !89
  br i1 %54, label %62, label %55, !dbg !90

55:                                               ; preds = %46
  %56 = load i32, i32* %6, align 4, !dbg !91
  %57 = icmp ne i32 %56, 0, !dbg !91
  br i1 %57, label %62, label %58, !dbg !92

58:                                               ; preds = %55
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !93
  %60 = getelementptr inbounds [500 x i8], [500 x i8]* %3, i64 0, i64 0, !dbg !95
  %61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %59, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* noundef %60), !dbg !96
  store i32 -1, i32* %1, align 4, !dbg !97
  br label %63, !dbg !97

62:                                               ; preds = %55, %46
  store i32 0, i32* %1, align 4, !dbg !98
  br label %63, !dbg !98

63:                                               ; preds = %62, %58
  %64 = load i32, i32* %1, align 4, !dbg !99
  ret i32 %64, !dbg !99
}

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind
declare i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #5

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !100 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !110, metadata !DIExpression()), !dbg !111
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !112, metadata !DIExpression()), !dbg !113
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !114, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.declare(metadata i8** %7, metadata !116, metadata !DIExpression()), !dbg !117
  %9 = load i8*, i8** %4, align 8, !dbg !118
  store i8* %9, i8** %7, align 8, !dbg !117
  call void @llvm.dbg.declare(metadata i8** %8, metadata !119, metadata !DIExpression()), !dbg !122
  %10 = load i8*, i8** %5, align 8, !dbg !123
  store i8* %10, i8** %8, align 8, !dbg !122
  br label %11, !dbg !124

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !125
  %13 = add i64 %12, -1, !dbg !125
  store i64 %13, i64* %6, align 8, !dbg !125
  %14 = icmp ugt i64 %12, 0, !dbg !126
  br i1 %14, label %15, label %21, !dbg !124

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !127
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !127
  store i8* %17, i8** %8, align 8, !dbg !127
  %18 = load i8, i8* %16, align 1, !dbg !128
  %19 = load i8*, i8** %7, align 8, !dbg !129
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !129
  store i8* %20, i8** %7, align 8, !dbg !129
  store i8 %18, i8* %19, align 1, !dbg !130
  br label %11, !dbg !124, !llvm.loop !131

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !133
  ret i8* %22, !dbg !134
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11, !11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/087_runtest.c_3936_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "bce1703047e4839b83666a0372a134a4")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 7, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"Ubuntu clang version 14.0.6"}
!12 = distinct !DISubprogram(name: "baseFilename", scope: !1, file: !1, line: 11, type: !13, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !17)
!13 = !DISubroutineType(types: !14)
!14 = !{!15, !15}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !{}
!18 = !DILocalVariable(name: "path", arg: 1, scope: !12, file: !1, line: 11, type: !15)
!19 = !DILocation(line: 11, column: 26, scope: !12)
!20 = !DILocation(line: 13, column: 12, scope: !12)
!21 = !DILocation(line: 13, column: 5, scope: !12)
!22 = distinct !DISubprogram(name: "checkTestFile", scope: !1, file: !1, line: 17, type: !23, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !17)
!23 = !DISubroutineType(types: !24)
!24 = !{!25, !15}
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DILocalVariable(name: "filename", arg: 1, scope: !22, file: !1, line: 17, type: !15)
!27 = !DILocation(line: 17, column: 25, scope: !22)
!28 = !DILocalVariable(name: "result", scope: !22, file: !1, line: 19, type: !25)
!29 = !DILocation(line: 19, column: 9, scope: !22)
!30 = !DILocation(line: 20, column: 24, scope: !22)
!31 = !DILocation(line: 20, column: 5, scope: !22)
!32 = !DILocation(line: 21, column: 12, scope: !22)
!33 = !DILocation(line: 21, column: 5, scope: !22)
!34 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 24, type: !35, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !17)
!35 = !DISubroutineType(types: !36)
!36 = !{!25}
!37 = !DILocalVariable(name: "len", scope: !34, file: !1, line: 26, type: !25)
!38 = !DILocation(line: 26, column: 9, scope: !34)
!39 = !DILocalVariable(name: "xml", scope: !34, file: !1, line: 27, type: !40)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 4000, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 500)
!43 = !DILocation(line: 27, column: 10, scope: !34)
!44 = !DILocalVariable(name: "filename", scope: !34, file: !1, line: 28, type: !40)
!45 = !DILocation(line: 28, column: 10, scope: !34)
!46 = !DILocalVariable(name: "result", scope: !34, file: !1, line: 29, type: !40)
!47 = !DILocation(line: 29, column: 10, scope: !34)
!48 = !DILocalVariable(name: "update_results", scope: !34, file: !1, line: 30, type: !25)
!49 = !DILocation(line: 30, column: 9, scope: !34)
!50 = !DILocation(line: 33, column: 24, scope: !34)
!51 = !DILocation(line: 33, column: 5, scope: !34)
!52 = !DILocation(line: 34, column: 24, scope: !34)
!53 = !DILocation(line: 34, column: 5, scope: !34)
!54 = !DILocation(line: 35, column: 24, scope: !34)
!55 = !DILocation(line: 35, column: 5, scope: !34)
!56 = !DILocation(line: 38, column: 17, scope: !34)
!57 = !DILocation(line: 38, column: 21, scope: !34)
!58 = !DILocation(line: 38, column: 5, scope: !34)
!59 = !DILocation(line: 41, column: 17, scope: !34)
!60 = !DILocation(line: 41, column: 21, scope: !34)
!61 = !DILocation(line: 41, column: 5, scope: !34)
!62 = !DILocation(line: 44, column: 5, scope: !34)
!63 = !DILocation(line: 44, column: 36, scope: !34)
!64 = !DILocation(line: 47, column: 9, scope: !34)
!65 = !DILocation(line: 52, column: 5, scope: !34)
!66 = !DILocation(line: 55, column: 5, scope: !34)
!67 = !DILocation(line: 58, column: 5, scope: !34)
!68 = !DILocation(line: 58, column: 27, scope: !34)
!69 = !DILocation(line: 59, column: 9, scope: !34)
!70 = !DILocation(line: 59, column: 5, scope: !34)
!71 = !DILocation(line: 59, column: 14, scope: !34)
!72 = !DILocation(line: 62, column: 18, scope: !73)
!73 = distinct !DILexicalBlock(scope: !34, file: !1, line: 62, column: 9)
!74 = !DILocation(line: 62, column: 65, scope: !73)
!75 = !DILocation(line: 62, column: 52, scope: !73)
!76 = !DILocation(line: 62, column: 9, scope: !73)
!77 = !DILocation(line: 62, column: 71, scope: !73)
!78 = !DILocation(line: 62, column: 9, scope: !34)
!79 = !DILocation(line: 63, column: 9, scope: !80)
!80 = distinct !DILexicalBlock(scope: !73, file: !1, line: 62, column: 79)
!81 = !DILocation(line: 63, column: 21, scope: !80)
!82 = !DILocation(line: 64, column: 5, scope: !80)
!83 = !DILocation(line: 66, column: 12, scope: !34)
!84 = !DILocation(line: 66, column: 18, scope: !34)
!85 = !DILocation(line: 66, column: 16, scope: !34)
!86 = !DILocation(line: 66, column: 5, scope: !34)
!87 = !DILocation(line: 69, column: 24, scope: !88)
!88 = distinct !DILexicalBlock(scope: !34, file: !1, line: 69, column: 9)
!89 = !DILocation(line: 69, column: 10, scope: !88)
!90 = !DILocation(line: 69, column: 29, scope: !88)
!91 = !DILocation(line: 69, column: 33, scope: !88)
!92 = !DILocation(line: 69, column: 9, scope: !34)
!93 = !DILocation(line: 70, column: 17, scope: !94)
!94 = distinct !DILexicalBlock(scope: !88, file: !1, line: 69, column: 49)
!95 = !DILocation(line: 70, column: 50, scope: !94)
!96 = !DILocation(line: 70, column: 9, scope: !94)
!97 = !DILocation(line: 71, column: 9, scope: !94)
!98 = !DILocation(line: 74, column: 5, scope: !34)
!99 = !DILocation(line: 75, column: 1, scope: !34)
!100 = distinct !DISubprogram(name: "memcpy", scope: !101, file: !101, line: 12, type: !102, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !17)
!101 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!102 = !DISubroutineType(types: !103)
!103 = !{!104, !104, !105, !107}
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !108, line: 46, baseType: !109)
!108 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!109 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!110 = !DILocalVariable(name: "destaddr", arg: 1, scope: !100, file: !101, line: 12, type: !104)
!111 = !DILocation(line: 12, column: 20, scope: !100)
!112 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !100, file: !101, line: 12, type: !105)
!113 = !DILocation(line: 12, column: 42, scope: !100)
!114 = !DILocalVariable(name: "len", arg: 3, scope: !100, file: !101, line: 12, type: !107)
!115 = !DILocation(line: 12, column: 58, scope: !100)
!116 = !DILocalVariable(name: "dest", scope: !100, file: !101, line: 13, type: !15)
!117 = !DILocation(line: 13, column: 9, scope: !100)
!118 = !DILocation(line: 13, column: 16, scope: !100)
!119 = !DILocalVariable(name: "src", scope: !100, file: !101, line: 14, type: !120)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!122 = !DILocation(line: 14, column: 15, scope: !100)
!123 = !DILocation(line: 14, column: 21, scope: !100)
!124 = !DILocation(line: 16, column: 3, scope: !100)
!125 = !DILocation(line: 16, column: 13, scope: !100)
!126 = !DILocation(line: 16, column: 16, scope: !100)
!127 = !DILocation(line: 17, column: 19, scope: !100)
!128 = !DILocation(line: 17, column: 15, scope: !100)
!129 = !DILocation(line: 17, column: 10, scope: !100)
!130 = !DILocation(line: 17, column: 13, scope: !100)
!131 = distinct !{!131, !124, !127, !132}
!132 = !{!"llvm.loop.mustprogress"}
!133 = !DILocation(line: 18, column: 10, scope: !100)
!134 = !DILocation(line: 18, column: 3, scope: !100)

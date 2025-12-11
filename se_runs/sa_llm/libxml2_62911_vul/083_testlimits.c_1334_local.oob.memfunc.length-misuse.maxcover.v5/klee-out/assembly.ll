; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/083_testlimits.c_1334_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/083_testlimits.c_1334_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"limit\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"fail\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"crazy_indx\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [109 x i8] c"se_runs/sa_llm/libxml2_62911_vul/083_testlimits.c_1334_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"crazy:\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [35 x i8] c"Failed to get failure for '%s' %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"Failed to get failure for '%s' %lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !12 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !17, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i64* %3, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32* %4, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata i32* %5, metadata !27, metadata !DIExpression()), !dbg !29
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !30
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !dbg !31
  %7 = bitcast i64* %3 to i8*, !dbg !32
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 8, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)), !dbg !33
  %8 = bitcast i32* %4 to i8*, !dbg !34
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !dbg !35
  %9 = bitcast i32* %5 to i8*, !dbg !36
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0)), !dbg !37
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !38
  store i8 0, i8* %10, align 1, !dbg !39
  %11 = load i32, i32* %4, align 4, !dbg !40
  %12 = icmp ne i32 %11, 0, !dbg !41
  %13 = zext i1 %12 to i32, !dbg !41
  %14 = sext i32 %13 to i64, !dbg !40
  call void @klee_assume(i64 noundef %14), !dbg !42
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !43
  %16 = load i8, i8* %15, align 16, !dbg !43
  %17 = sext i8 %16 to i32, !dbg !43
  %18 = icmp eq i32 %17, 99, !dbg !44
  %19 = zext i1 %18 to i32, !dbg !44
  %20 = sext i32 %19 to i64, !dbg !43
  call void @klee_assume(i64 noundef %20), !dbg !45
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 1, !dbg !46
  %22 = load i8, i8* %21, align 1, !dbg !46
  %23 = sext i8 %22 to i32, !dbg !46
  %24 = icmp eq i32 %23, 114, !dbg !47
  %25 = zext i1 %24 to i32, !dbg !47
  %26 = sext i32 %25 to i64, !dbg !46
  call void @klee_assume(i64 noundef %26), !dbg !48
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 2, !dbg !49
  %28 = load i8, i8* %27, align 2, !dbg !49
  %29 = sext i8 %28 to i32, !dbg !49
  %30 = icmp eq i32 %29, 97, !dbg !50
  %31 = zext i1 %30 to i32, !dbg !50
  %32 = sext i32 %31 to i64, !dbg !49
  call void @klee_assume(i64 noundef %32), !dbg !51
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 3, !dbg !52
  %34 = load i8, i8* %33, align 1, !dbg !52
  %35 = sext i8 %34 to i32, !dbg !52
  %36 = icmp eq i32 %35, 122, !dbg !53
  %37 = zext i1 %36 to i32, !dbg !53
  %38 = sext i32 %37 to i64, !dbg !52
  call void @klee_assume(i64 noundef %38), !dbg !54
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 4, !dbg !55
  %40 = load i8, i8* %39, align 4, !dbg !55
  %41 = sext i8 %40 to i32, !dbg !55
  %42 = icmp eq i32 %41, 121, !dbg !56
  %43 = zext i1 %42 to i32, !dbg !56
  %44 = sext i32 %43 to i64, !dbg !55
  call void @klee_assume(i64 noundef %44), !dbg !57
  %45 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 5, !dbg !58
  %46 = load i8, i8* %45, align 1, !dbg !58
  %47 = sext i8 %46 to i32, !dbg !58
  %48 = icmp eq i32 %47, 58, !dbg !59
  %49 = zext i1 %48 to i32, !dbg !59
  %50 = sext i32 %49 to i64, !dbg !58
  call void @klee_assume(i64 noundef %50), !dbg !60
  %51 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.5, i64 0, i64 0), i32 noundef 54, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !61
  %52 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !62
  %53 = load i64, i64* %3, align 8, !dbg !63
  %54 = load i32, i32* %4, align 4, !dbg !64
  %55 = load i32, i32* %5, align 4, !dbg !65
  %56 = call i32 @runtest(i8* noundef %52, i64 noundef %53, i32 noundef %54, i32 noundef %55), !dbg !66
  ret i32 %56, !dbg !67
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @runtest(i8* noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !68 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !73, metadata !DIExpression()), !dbg !74
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !75, metadata !DIExpression()), !dbg !76
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !77, metadata !DIExpression()), !dbg !78
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !79, metadata !DIExpression()), !dbg !80
  %9 = load i32, i32* %7, align 4, !dbg !81
  %10 = icmp ne i32 %9, 0, !dbg !81
  br i1 %10, label %11, label %26, !dbg !83

11:                                               ; preds = %4
  %12 = load i8*, i8** %5, align 8, !dbg !84
  %13 = call i32 @strncmp(i8* noundef %12, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i64 noundef 6) #5, !dbg !87
  %14 = icmp eq i32 %13, 0, !dbg !88
  br i1 %14, label %15, label %20, !dbg !89

15:                                               ; preds = %11
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !90
  %17 = load i8*, i8** %5, align 8, !dbg !92
  %18 = load i32, i32* %8, align 4, !dbg !93
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i8* noundef %17, i32 noundef %18), !dbg !94
  br label %25, !dbg !95

20:                                               ; preds = %11
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !96
  %22 = load i8*, i8** %5, align 8, !dbg !98
  %23 = load i64, i64* %6, align 8, !dbg !99
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %21, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i8* noundef %22, i64 noundef %23), !dbg !100
  br label %25

25:                                               ; preds = %20, %15
  br label %26, !dbg !101

26:                                               ; preds = %25, %4
  ret i32 0, !dbg !102
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #4

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/083_testlimits.c_1334_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "35aa0d2f378ce70e904bc19ac7eba378")
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
!12 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 14, type: !13, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!13 = !DISubroutineType(types: !14)
!14 = !{!15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{}
!17 = !DILocalVariable(name: "filename", scope: !12, file: !1, line: 16, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 2048, elements: !20)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !{!21}
!21 = !DISubrange(count: 256)
!22 = !DILocation(line: 16, column: 10, scope: !12)
!23 = !DILocalVariable(name: "limit", scope: !12, file: !1, line: 17, type: !3)
!24 = !DILocation(line: 17, column: 19, scope: !12)
!25 = !DILocalVariable(name: "fail", scope: !12, file: !1, line: 18, type: !15)
!26 = !DILocation(line: 18, column: 9, scope: !12)
!27 = !DILocalVariable(name: "crazy_indx", scope: !12, file: !1, line: 19, type: !28)
!28 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!29 = !DILocation(line: 19, column: 18, scope: !12)
!30 = !DILocation(line: 22, column: 24, scope: !12)
!31 = !DILocation(line: 22, column: 5, scope: !12)
!32 = !DILocation(line: 23, column: 24, scope: !12)
!33 = !DILocation(line: 23, column: 5, scope: !12)
!34 = !DILocation(line: 24, column: 24, scope: !12)
!35 = !DILocation(line: 24, column: 5, scope: !12)
!36 = !DILocation(line: 25, column: 24, scope: !12)
!37 = !DILocation(line: 25, column: 5, scope: !12)
!38 = !DILocation(line: 28, column: 5, scope: !12)
!39 = !DILocation(line: 28, column: 19, scope: !12)
!40 = !DILocation(line: 34, column: 17, scope: !12)
!41 = !DILocation(line: 34, column: 22, scope: !12)
!42 = !DILocation(line: 34, column: 5, scope: !12)
!43 = !DILocation(line: 37, column: 17, scope: !12)
!44 = !DILocation(line: 37, column: 29, scope: !12)
!45 = !DILocation(line: 37, column: 5, scope: !12)
!46 = !DILocation(line: 38, column: 17, scope: !12)
!47 = !DILocation(line: 38, column: 29, scope: !12)
!48 = !DILocation(line: 38, column: 5, scope: !12)
!49 = !DILocation(line: 39, column: 17, scope: !12)
!50 = !DILocation(line: 39, column: 29, scope: !12)
!51 = !DILocation(line: 39, column: 5, scope: !12)
!52 = !DILocation(line: 40, column: 17, scope: !12)
!53 = !DILocation(line: 40, column: 29, scope: !12)
!54 = !DILocation(line: 40, column: 5, scope: !12)
!55 = !DILocation(line: 41, column: 17, scope: !12)
!56 = !DILocation(line: 41, column: 29, scope: !12)
!57 = !DILocation(line: 41, column: 5, scope: !12)
!58 = !DILocation(line: 42, column: 17, scope: !12)
!59 = !DILocation(line: 42, column: 29, scope: !12)
!60 = !DILocation(line: 42, column: 5, scope: !12)
!61 = !DILocation(line: 54, column: 5, scope: !12)
!62 = !DILocation(line: 58, column: 20, scope: !12)
!63 = !DILocation(line: 58, column: 30, scope: !12)
!64 = !DILocation(line: 58, column: 37, scope: !12)
!65 = !DILocation(line: 58, column: 43, scope: !12)
!66 = !DILocation(line: 58, column: 12, scope: !12)
!67 = !DILocation(line: 58, column: 5, scope: !12)
!68 = distinct !DISubprogram(name: "runtest", scope: !1, file: !1, line: 62, type: !69, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!69 = !DISubroutineType(types: !70)
!70 = !{!15, !71, !3, !15, !28}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!73 = !DILocalVariable(name: "filename", arg: 1, scope: !68, file: !1, line: 62, type: !71)
!74 = !DILocation(line: 62, column: 25, scope: !68)
!75 = !DILocalVariable(name: "limit", arg: 2, scope: !68, file: !1, line: 62, type: !3)
!76 = !DILocation(line: 62, column: 49, scope: !68)
!77 = !DILocalVariable(name: "fail", arg: 3, scope: !68, file: !1, line: 62, type: !15)
!78 = !DILocation(line: 62, column: 60, scope: !68)
!79 = !DILocalVariable(name: "crazy_indx", arg: 4, scope: !68, file: !1, line: 62, type: !28)
!80 = !DILocation(line: 62, column: 79, scope: !68)
!81 = !DILocation(line: 64, column: 9, scope: !82)
!82 = distinct !DILexicalBlock(scope: !68, file: !1, line: 64, column: 9)
!83 = !DILocation(line: 64, column: 9, scope: !68)
!84 = !DILocation(line: 65, column: 21, scope: !85)
!85 = distinct !DILexicalBlock(scope: !86, file: !1, line: 65, column: 13)
!86 = distinct !DILexicalBlock(scope: !82, file: !1, line: 64, column: 15)
!87 = !DILocation(line: 65, column: 13, scope: !85)
!88 = !DILocation(line: 65, column: 44, scope: !85)
!89 = !DILocation(line: 65, column: 13, scope: !86)
!90 = !DILocation(line: 67, column: 21, scope: !91)
!91 = distinct !DILexicalBlock(scope: !85, file: !1, line: 65, column: 50)
!92 = !DILocation(line: 67, column: 68, scope: !91)
!93 = !DILocation(line: 67, column: 78, scope: !91)
!94 = !DILocation(line: 67, column: 13, scope: !91)
!95 = !DILocation(line: 68, column: 9, scope: !91)
!96 = !DILocation(line: 69, column: 21, scope: !97)
!97 = distinct !DILexicalBlock(scope: !85, file: !1, line: 68, column: 16)
!98 = !DILocation(line: 69, column: 69, scope: !97)
!99 = !DILocation(line: 69, column: 95, scope: !97)
!100 = !DILocation(line: 69, column: 13, scope: !97)
!101 = !DILocation(line: 71, column: 5, scope: !86)
!102 = !DILocation(line: 72, column: 5, scope: !68)

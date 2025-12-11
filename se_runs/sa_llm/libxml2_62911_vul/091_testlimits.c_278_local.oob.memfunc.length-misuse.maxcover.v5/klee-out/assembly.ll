; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/091_testlimits.c_278_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/091_testlimits.c_278_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"URI\00", align 1
@crazy = internal global [1024 x i8] zeroinitializer, align 16, !dbg !0
@.str.1 = private unnamed_addr constant [6 x i8] c"crazy\00", align 1
@crazy_indx = internal global i32 0, align 4, !dbg !7
@.str.2 = private unnamed_addr constant [11 x i8] c"crazy_indx\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"crazy:\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"(strlen(URI) >= 6) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_62911_vul/091_testlimits.c_278_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.crazyOpen = private unnamed_addr constant [30 x i8] c"void *crazyOpen(const char *)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reset_timout() #0 !dbg !22 {
  ret void, !dbg !26
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !27 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !30, metadata !DIExpression()), !dbg !34
  %3 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !35
  call void @klee_make_symbolic(i8* noundef %3, i64 noundef 256, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !36
  %4 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !37
  store i8 0, i8* %4, align 1, !dbg !38
  call void @klee_make_symbolic(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @crazy, i64 0, i64 0), i64 noundef 1024, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)), !dbg !39
  store i8 0, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @crazy, i64 0, i64 1023), align 1, !dbg !40
  call void @klee_make_symbolic(i8* noundef bitcast (i32* @crazy_indx to i8*), i64 noundef 4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)), !dbg !41
  %5 = load i32, i32* @crazy_indx, align 4, !dbg !42
  %6 = icmp sge i32 %5, 0, !dbg !43
  %7 = zext i1 %6 to i32, !dbg !43
  %8 = sext i32 %7 to i64, !dbg !42
  call void @klee_assume(i64 noundef %8), !dbg !44
  %9 = load i32, i32* @crazy_indx, align 4, !dbg !45
  %10 = icmp slt i32 %9, 10000, !dbg !46
  %11 = zext i1 %10 to i32, !dbg !46
  %12 = sext i32 %11 to i64, !dbg !45
  call void @klee_assume(i64 noundef %12), !dbg !47
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !48
  %14 = call i8* @crazyOpen(i8* noundef %13), !dbg !49
  ret i32 0, !dbg !50
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @crazyOpen(i8* noundef %0) #0 !dbg !51 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !56, metadata !DIExpression()), !dbg !57
  %4 = load i8*, i8** %3, align 8, !dbg !58
  %5 = icmp eq i8* %4, null, !dbg !60
  br i1 %5, label %10, label %6, !dbg !61

6:                                                ; preds = %1
  %7 = load i8*, i8** %3, align 8, !dbg !62
  %8 = call i32 @strncmp(i8* noundef %7, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64 noundef 6) #5, !dbg !63
  %9 = icmp ne i32 %8, 0, !dbg !63
  br i1 %9, label %10, label %11, !dbg !64

10:                                               ; preds = %6, %1
  store i8* null, i8** %2, align 8, !dbg !65
  br label %27, !dbg !65

11:                                               ; preds = %6
  %12 = load i32, i32* @crazy_indx, align 4, !dbg !66
  %13 = sext i32 %12 to i64, !dbg !66
  %14 = call i64 @strlen(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @crazy, i64 0, i64 0)) #5, !dbg !68
  %15 = icmp ugt i64 %13, %14, !dbg !69
  br i1 %15, label %16, label %17, !dbg !70

16:                                               ; preds = %11
  store i8* null, i8** %2, align 8, !dbg !71
  br label %27, !dbg !71

17:                                               ; preds = %11
  %18 = load i8*, i8** %3, align 8, !dbg !72
  %19 = call i64 @strlen(i8* noundef %18) #5, !dbg !72
  %20 = icmp uge i64 %19, 6, !dbg !72
  br i1 %20, label %21, label %23, !dbg !72

21:                                               ; preds = %17
  br i1 true, label %22, label %23, !dbg !72

22:                                               ; preds = %21
  br label %25, !dbg !72

23:                                               ; preds = %21, %17
  %24 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.6, i64 0, i64 0), i32 noundef 29, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.crazyOpen, i64 0, i64 0)), !dbg !72
  br label %25, !dbg !72

25:                                               ; preds = %23, %22
  %26 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.6, i64 0, i64 0), i32 noundef 32, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.crazyOpen, i64 0, i64 0)), !dbg !73
  call void @reset_timout(), !dbg !74
  store i8* null, i8** %2, align 8, !dbg !75
  br label %27, !dbg !75

27:                                               ; preds = %25, %16, %10
  %28 = load i8*, i8** %2, align 8, !dbg !76
  ret i8* %28, !dbg !76
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "crazy", scope: !2, file: !3, line: 15, type: !10, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/091_testlimits.c_278_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "8af0f5c98d3abb5299e9f7cbe6b40728")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{!0, !7}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "crazy_indx", scope: !2, file: !3, line: 16, type: !9, isLocal: true, isDefinition: true)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8192, elements: !12)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !{!13}
!13 = !DISubrange(count: 1024)
!14 = !{i32 7, !"Dwarf Version", i32 5}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{i32 7, !"PIC Level", i32 2}
!18 = !{i32 7, !"PIE Level", i32 2}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"Ubuntu clang version 14.0.6"}
!22 = distinct !DISubprogram(name: "reset_timout", scope: !3, file: !3, line: 10, type: !23, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !25)
!23 = !DISubroutineType(types: !24)
!24 = !{null}
!25 = !{}
!26 = !DILocation(line: 12, column: 1, scope: !22)
!27 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 38, type: !28, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !25)
!28 = !DISubroutineType(types: !29)
!29 = !{!9}
!30 = !DILocalVariable(name: "URI", scope: !27, file: !3, line: 40, type: !31)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2048, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 256)
!34 = !DILocation(line: 40, column: 10, scope: !27)
!35 = !DILocation(line: 41, column: 24, scope: !27)
!36 = !DILocation(line: 41, column: 5, scope: !27)
!37 = !DILocation(line: 44, column: 5, scope: !27)
!38 = !DILocation(line: 44, column: 24, scope: !27)
!39 = !DILocation(line: 47, column: 5, scope: !27)
!40 = !DILocation(line: 48, column: 28, scope: !27)
!41 = !DILocation(line: 51, column: 5, scope: !27)
!42 = !DILocation(line: 54, column: 17, scope: !27)
!43 = !DILocation(line: 54, column: 28, scope: !27)
!44 = !DILocation(line: 54, column: 5, scope: !27)
!45 = !DILocation(line: 55, column: 17, scope: !27)
!46 = !DILocation(line: 55, column: 28, scope: !27)
!47 = !DILocation(line: 55, column: 5, scope: !27)
!48 = !DILocation(line: 58, column: 15, scope: !27)
!49 = !DILocation(line: 58, column: 5, scope: !27)
!50 = !DILocation(line: 60, column: 5, scope: !27)
!51 = distinct !DISubprogram(name: "crazyOpen", scope: !3, file: !3, line: 19, type: !52, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !25)
!52 = !DISubroutineType(types: !53)
!53 = !{!5, !54}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!56 = !DILocalVariable(name: "URI", arg: 1, scope: !51, file: !3, line: 19, type: !54)
!57 = !DILocation(line: 19, column: 36, scope: !51)
!58 = !DILocation(line: 20, column: 10, scope: !59)
!59 = distinct !DILexicalBlock(scope: !51, file: !3, line: 20, column: 9)
!60 = !DILocation(line: 20, column: 14, scope: !59)
!61 = !DILocation(line: 20, column: 23, scope: !59)
!62 = !DILocation(line: 20, column: 35, scope: !59)
!63 = !DILocation(line: 20, column: 27, scope: !59)
!64 = !DILocation(line: 20, column: 9, scope: !51)
!65 = !DILocation(line: 21, column: 9, scope: !59)
!66 = !DILocation(line: 23, column: 9, scope: !67)
!67 = distinct !DILexicalBlock(scope: !51, file: !3, line: 23, column: 9)
!68 = !DILocation(line: 23, column: 22, scope: !67)
!69 = !DILocation(line: 23, column: 20, scope: !67)
!70 = !DILocation(line: 23, column: 9, scope: !51)
!71 = !DILocation(line: 24, column: 9, scope: !67)
!72 = !DILocation(line: 29, column: 5, scope: !51)
!73 = !DILocation(line: 32, column: 5, scope: !51)
!74 = !DILocation(line: 34, column: 5, scope: !51)
!75 = !DILocation(line: 35, column: 5, scope: !51)
!76 = !DILocation(line: 36, column: 1, scope: !51)

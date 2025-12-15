; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/101_testlimits.c_283_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/101_testlimits.c_283_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"URI\00", align 1
@crazy = internal global [1024 x i8] zeroinitializer, align 16, !dbg !0
@.str.1 = private unnamed_addr constant [6 x i8] c"crazy\00", align 1
@crazy_indx = internal global i32 0, align 4, !dbg !7
@.str.2 = private unnamed_addr constant [11 x i8] c"crazy_indx\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"crazy:\00", align 1
@rlen = internal global i32 0, align 4, !dbg !10
@current = internal global i8* null, align 8, !dbg !12
@instate = internal global i32 0, align 4, !dbg !16
@.str.4 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"(strlen(URI) >= 6) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_55980_vul/101_testlimits.c_283_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.crazyOpen = private unnamed_addr constant [30 x i8] c"void *crazyOpen(const char *)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !29 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !33, metadata !DIExpression()), !dbg !37
  %3 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !38
  call void @klee_make_symbolic(i8* noundef %3, i64 noundef 256, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !39
  %4 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !40
  store i8 0, i8* %4, align 1, !dbg !41
  call void @klee_make_symbolic(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @crazy, i64 0, i64 0), i64 noundef 1024, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)), !dbg !42
  store i8 0, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @crazy, i64 0, i64 1023), align 1, !dbg !43
  call void @klee_make_symbolic(i8* noundef bitcast (i32* @crazy_indx to i8*), i64 noundef 4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)), !dbg !44
  %5 = load i32, i32* @crazy_indx, align 4, !dbg !45
  %6 = icmp sge i32 %5, 0, !dbg !46
  %7 = zext i1 %6 to i32, !dbg !46
  %8 = sext i32 %7 to i64, !dbg !45
  call void @klee_assume(i64 noundef %8), !dbg !47
  %9 = load i32, i32* @crazy_indx, align 4, !dbg !48
  %10 = icmp slt i32 %9, 1024, !dbg !49
  %11 = zext i1 %10 to i32, !dbg !49
  %12 = sext i32 %11 to i64, !dbg !48
  call void @klee_assume(i64 noundef %12), !dbg !50
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !51
  %14 = call i8* @crazyOpen(i8* noundef %13), !dbg !52
  ret i32 0, !dbg !53
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @crazyOpen(i8* noundef %0) #0 !dbg !54 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !59, metadata !DIExpression()), !dbg !60
  %4 = load i8*, i8** %3, align 8, !dbg !61
  %5 = icmp eq i8* %4, null, !dbg !63
  br i1 %5, label %10, label %6, !dbg !64

6:                                                ; preds = %1
  %7 = load i8*, i8** %3, align 8, !dbg !65
  %8 = call i32 @strncmp(i8* noundef %7, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64 noundef 6) #5, !dbg !66
  %9 = icmp ne i32 %8, 0, !dbg !66
  br i1 %9, label %10, label %11, !dbg !67

10:                                               ; preds = %6, %1
  store i8* null, i8** %2, align 8, !dbg !68
  br label %28, !dbg !68

11:                                               ; preds = %6
  %12 = load i32, i32* @crazy_indx, align 4, !dbg !69
  %13 = sext i32 %12 to i64, !dbg !69
  %14 = call i64 @strlen(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @crazy, i64 0, i64 0)) #5, !dbg !71
  %15 = icmp ugt i64 %13, %14, !dbg !72
  br i1 %15, label %16, label %17, !dbg !73

16:                                               ; preds = %11
  store i8* null, i8** %2, align 8, !dbg !74
  br label %28, !dbg !74

17:                                               ; preds = %11
  call void @reset_timout(), !dbg !75
  %18 = load i32, i32* @crazy_indx, align 4, !dbg !76
  store i32 %18, i32* @rlen, align 4, !dbg !77
  store i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @crazy, i64 0, i64 0), i8** @current, align 8, !dbg !78
  store i32 0, i32* @instate, align 4, !dbg !79
  %19 = load i8*, i8** %3, align 8, !dbg !80
  %20 = call i64 @strlen(i8* noundef %19) #5, !dbg !80
  %21 = icmp uge i64 %20, 6, !dbg !80
  br i1 %21, label %22, label %24, !dbg !80

22:                                               ; preds = %17
  br i1 true, label %23, label %24, !dbg !80

23:                                               ; preds = %22
  br label %26, !dbg !80

24:                                               ; preds = %22, %17
  %25 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.6, i64 0, i64 0), i32 noundef 39, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.crazyOpen, i64 0, i64 0)), !dbg !80
  br label %26, !dbg !80

26:                                               ; preds = %24, %23
  %27 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.6, i64 0, i64 0), i32 noundef 42, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.crazyOpen, i64 0, i64 0)), !dbg !81
  store i8* inttoptr (i64 1 to i8*), i8** %2, align 8, !dbg !82
  br label %28, !dbg !82

28:                                               ; preds = %26, %16, %10
  %29 = load i8*, i8** %2, align 8, !dbg !83
  ret i8* %29, !dbg !83
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_timout() #0 !dbg !84 {
  ret void, !dbg !87
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "crazy", scope: !2, file: !3, line: 10, type: !18, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/101_testlimits.c_283_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "039bd223826492d806b7243aaa6472ff")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{!0, !7, !10, !12, !16}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "crazy_indx", scope: !2, file: !3, line: 11, type: !9, isLocal: true, isDefinition: true)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "rlen", scope: !2, file: !3, line: 14, type: !9, isLocal: true, isDefinition: true)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "current", scope: !2, file: !3, line: 12, type: !14, isLocal: true, isDefinition: true)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "instate", scope: !2, file: !3, line: 13, type: !9, isLocal: true, isDefinition: true)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 8192, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 1024)
!21 = !{i32 7, !"Dwarf Version", i32 5}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 1, !"wchar_size", i32 4}
!24 = !{i32 7, !"PIC Level", i32 2}
!25 = !{i32 7, !"PIE Level", i32 2}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"Ubuntu clang version 14.0.6"}
!29 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 47, type: !30, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !32)
!30 = !DISubroutineType(types: !31)
!31 = !{!9}
!32 = !{}
!33 = !DILocalVariable(name: "URI", scope: !29, file: !3, line: 49, type: !34)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 2048, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 256)
!37 = !DILocation(line: 49, column: 10, scope: !29)
!38 = !DILocation(line: 50, column: 24, scope: !29)
!39 = !DILocation(line: 50, column: 5, scope: !29)
!40 = !DILocation(line: 53, column: 5, scope: !29)
!41 = !DILocation(line: 53, column: 14, scope: !29)
!42 = !DILocation(line: 56, column: 5, scope: !29)
!43 = !DILocation(line: 57, column: 28, scope: !29)
!44 = !DILocation(line: 60, column: 5, scope: !29)
!45 = !DILocation(line: 63, column: 17, scope: !29)
!46 = !DILocation(line: 63, column: 28, scope: !29)
!47 = !DILocation(line: 63, column: 5, scope: !29)
!48 = !DILocation(line: 64, column: 17, scope: !29)
!49 = !DILocation(line: 64, column: 28, scope: !29)
!50 = !DILocation(line: 64, column: 5, scope: !29)
!51 = !DILocation(line: 67, column: 15, scope: !29)
!52 = !DILocation(line: 67, column: 5, scope: !29)
!53 = !DILocation(line: 69, column: 5, scope: !29)
!54 = distinct !DISubprogram(name: "crazyOpen", scope: !3, file: !3, line: 26, type: !55, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !32)
!55 = !DISubroutineType(types: !56)
!56 = !{!5, !57}
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!59 = !DILocalVariable(name: "URI", arg: 1, scope: !54, file: !3, line: 26, type: !57)
!60 = !DILocation(line: 26, column: 36, scope: !54)
!61 = !DILocation(line: 27, column: 10, scope: !62)
!62 = distinct !DILexicalBlock(scope: !54, file: !3, line: 27, column: 9)
!63 = !DILocation(line: 27, column: 14, scope: !62)
!64 = !DILocation(line: 27, column: 23, scope: !62)
!65 = !DILocation(line: 27, column: 35, scope: !62)
!66 = !DILocation(line: 27, column: 27, scope: !62)
!67 = !DILocation(line: 27, column: 9, scope: !54)
!68 = !DILocation(line: 28, column: 9, scope: !62)
!69 = !DILocation(line: 30, column: 9, scope: !70)
!70 = distinct !DILexicalBlock(scope: !54, file: !3, line: 30, column: 9)
!71 = !DILocation(line: 30, column: 22, scope: !70)
!72 = !DILocation(line: 30, column: 20, scope: !70)
!73 = !DILocation(line: 30, column: 9, scope: !54)
!74 = !DILocation(line: 31, column: 9, scope: !70)
!75 = !DILocation(line: 32, column: 5, scope: !54)
!76 = !DILocation(line: 33, column: 12, scope: !54)
!77 = !DILocation(line: 33, column: 10, scope: !54)
!78 = !DILocation(line: 34, column: 13, scope: !54)
!79 = !DILocation(line: 35, column: 13, scope: !54)
!80 = !DILocation(line: 39, column: 5, scope: !54)
!81 = !DILocation(line: 42, column: 5, scope: !54)
!82 = !DILocation(line: 44, column: 5, scope: !54)
!83 = !DILocation(line: 45, column: 1, scope: !54)
!84 = distinct !DISubprogram(name: "reset_timout", scope: !3, file: !3, line: 21, type: !85, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !32)
!85 = !DISubroutineType(types: !86)
!86 = !{null}
!87 = !DILocation(line: 23, column: 1, scope: !84)

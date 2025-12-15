; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/060_runtest.c_3891_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/060_runtest.c_3891_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@update_results = dso_local global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"(len >= 0 && len <= 499) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_55980_vul/060_runtest.c_3891_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.testFunction = private unnamed_addr constant [48 x i8] c"void testFunction(const char *, char *, char *)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"result/pattern/%s\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c".xml\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"filename\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @testFunction(i8* noundef %0, i8* noundef %1, i8* noundef %2) #0 !dbg !16 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !24, metadata !DIExpression()), !dbg !25
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !26, metadata !DIExpression()), !dbg !27
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata i32* %7, metadata !30, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata i32* %8, metadata !32, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.declare(metadata i32* %9, metadata !34, metadata !DIExpression()), !dbg !35
  store i32 0, i32* %9, align 4, !dbg !35
  call void @llvm.dbg.declare(metadata i32* %10, metadata !36, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.declare(metadata i8** %11, metadata !38, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.declare(metadata i8** %12, metadata !40, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata i8** %13, metadata !43, metadata !DIExpression()), !dbg !44
  %14 = load i8*, i8** %4, align 8, !dbg !45
  %15 = call i64 @strlen(i8* noundef %14), !dbg !46
  %16 = trunc i64 %15 to i32, !dbg !46
  store i32 %16, i32* %7, align 4, !dbg !47
  %17 = load i32, i32* %7, align 4, !dbg !48
  %18 = sub nsw i32 %17, 4, !dbg !48
  store i32 %18, i32* %7, align 4, !dbg !48
  %19 = load i32, i32* %7, align 4, !dbg !49
  %20 = icmp sge i32 %19, 0, !dbg !49
  br i1 %20, label %21, label %26, !dbg !49

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4, !dbg !49
  %23 = icmp sle i32 %22, 499, !dbg !49
  br i1 %23, label %24, label %26, !dbg !49

24:                                               ; preds = %21
  br i1 true, label %25, label %26, !dbg !49

25:                                               ; preds = %24
  br label %28, !dbg !49

26:                                               ; preds = %24, %21, %3
  %27 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.2, i64 0, i64 0), i32 noundef 21, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.testFunction, i64 0, i64 0)), !dbg !49
  br label %28, !dbg !49

28:                                               ; preds = %26, %25
  %29 = load i8*, i8** %5, align 8, !dbg !50
  %30 = load i8*, i8** %4, align 8, !dbg !51
  %31 = load i32, i32* %7, align 4, !dbg !52
  %32 = sext i32 %31 to i64, !dbg !52
  %33 = call i8* @memcpy(i8* %29, i8* %30, i64 %32), !dbg !53
  %34 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.2, i64 0, i64 0), i32 noundef 23, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.testFunction, i64 0, i64 0)), !dbg !54
  %35 = load i8*, i8** %5, align 8, !dbg !55
  %36 = load i32, i32* %7, align 4, !dbg !56
  %37 = sext i32 %36 to i64, !dbg !55
  %38 = getelementptr inbounds i8, i8* %35, i64 %37, !dbg !55
  store i8 0, i8* %38, align 1, !dbg !57
  %39 = load i8*, i8** %6, align 8, !dbg !58
  %40 = load i8*, i8** %5, align 8, !dbg !60
  %41 = call i8* @baseFilename(i8* noundef %40), !dbg !61
  %42 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %39, i64 noundef 499, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* noundef %41), !dbg !62
  %43 = icmp sge i32 %42, 499, !dbg !63
  br i1 %43, label %44, label %47, !dbg !64

44:                                               ; preds = %28
  %45 = load i8*, i8** %6, align 8, !dbg !65
  %46 = getelementptr inbounds i8, i8* %45, i64 499, !dbg !65
  store i8 0, i8* %46, align 1, !dbg !66
  br label %47, !dbg !65

47:                                               ; preds = %44, %28
  %48 = load i8*, i8** %5, align 8, !dbg !67
  %49 = load i32, i32* %7, align 4, !dbg !68
  %50 = sext i32 %49 to i64, !dbg !69
  %51 = getelementptr inbounds i8, i8* %48, i64 %50, !dbg !69
  %52 = call i8* @memcpy(i8* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 5), !dbg !70
  ret void, !dbg !71
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i64 @strlen(i8* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #2

declare i8* @baseFilename(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !72 {
  %1 = alloca i32, align 4
  %2 = alloca [500 x i8], align 16
  %3 = alloca [500 x i8], align 16
  %4 = alloca [500 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [500 x i8]* %2, metadata !75, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.declare(metadata [500 x i8]* %3, metadata !80, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.declare(metadata [500 x i8]* %4, metadata !82, metadata !DIExpression()), !dbg !83
  %5 = getelementptr inbounds [500 x i8], [500 x i8]* %2, i64 0, i64 0, !dbg !84
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 500, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)), !dbg !85
  %6 = getelementptr inbounds [500 x i8], [500 x i8]* %2, i64 0, i64 499, !dbg !86
  %7 = load i8, i8* %6, align 1, !dbg !86
  %8 = sext i8 %7 to i32, !dbg !86
  %9 = icmp eq i32 %8, 0, !dbg !87
  %10 = zext i1 %9 to i32, !dbg !87
  %11 = sext i32 %10 to i64, !dbg !86
  call void @klee_assume(i64 noundef %11), !dbg !88
  %12 = getelementptr inbounds [500 x i8], [500 x i8]* %2, i64 0, i64 0, !dbg !89
  %13 = call i64 @strlen(i8* noundef %12), !dbg !90
  %14 = icmp uge i64 %13, 4, !dbg !91
  %15 = zext i1 %14 to i32, !dbg !91
  %16 = sext i32 %15 to i64, !dbg !90
  call void @klee_assume(i64 noundef %16), !dbg !92
  %17 = getelementptr inbounds [500 x i8], [500 x i8]* %2, i64 0, i64 0, !dbg !93
  %18 = getelementptr inbounds [500 x i8], [500 x i8]* %3, i64 0, i64 0, !dbg !94
  %19 = getelementptr inbounds [500 x i8], [500 x i8]* %4, i64 0, i64 0, !dbg !95
  call void @testFunction(i8* noundef %17, i8* noundef %18, i8* noundef %19), !dbg !96
  ret i32 0, !dbg !97
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #5 !dbg !98 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !107, metadata !DIExpression()), !dbg !108
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !109, metadata !DIExpression()), !dbg !110
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !111, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.declare(metadata i8** %7, metadata !113, metadata !DIExpression()), !dbg !114
  %9 = load i8*, i8** %4, align 8, !dbg !115
  store i8* %9, i8** %7, align 8, !dbg !114
  call void @llvm.dbg.declare(metadata i8** %8, metadata !116, metadata !DIExpression()), !dbg !117
  %10 = load i8*, i8** %5, align 8, !dbg !118
  store i8* %10, i8** %8, align 8, !dbg !117
  br label %11, !dbg !119

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !120
  %13 = add i64 %12, -1, !dbg !120
  store i64 %13, i64* %6, align 8, !dbg !120
  %14 = icmp ugt i64 %12, 0, !dbg !121
  br i1 %14, label %15, label %21, !dbg !119

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !122
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !122
  store i8* %17, i8** %8, align 8, !dbg !122
  %18 = load i8, i8* %16, align 1, !dbg !123
  %19 = load i8*, i8** %7, align 8, !dbg !124
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !124
  store i8* %20, i8** %7, align 8, !dbg !124
  store i8 %18, i8* %19, align 1, !dbg !125
  br label %11, !dbg !119, !llvm.loop !126

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !128
  ret i8* %22, !dbg !129
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!2, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15, !15}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "update_results", scope: !2, file: !3, line: 10, type: !5, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/060_runtest.c_3891_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "8bb2554885e1658e0f0af4223983587d")
!4 = !{!0}
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = distinct !DICompileUnit(language: DW_LANG_C99, file: !7, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!7 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!8 = !{i32 7, !"Dwarf Version", i32 5}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{i32 7, !"PIC Level", i32 2}
!12 = !{i32 7, !"PIE Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"Ubuntu clang version 14.0.6"}
!16 = distinct !DISubprogram(name: "testFunction", scope: !3, file: !3, line: 12, type: !17, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!17 = !DISubroutineType(types: !18)
!18 = !{null, !19, !22, !22}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!23 = !{}
!24 = !DILocalVariable(name: "filename", arg: 1, scope: !16, file: !3, line: 12, type: !19)
!25 = !DILocation(line: 12, column: 31, scope: !16)
!26 = !DILocalVariable(name: "xml", arg: 2, scope: !16, file: !3, line: 12, type: !22)
!27 = !DILocation(line: 12, column: 47, scope: !16)
!28 = !DILocalVariable(name: "result", arg: 3, scope: !16, file: !3, line: 12, type: !22)
!29 = !DILocation(line: 12, column: 58, scope: !16)
!30 = !DILocalVariable(name: "len", scope: !16, file: !3, line: 13, type: !5)
!31 = !DILocation(line: 13, column: 9, scope: !16)
!32 = !DILocalVariable(name: "i", scope: !16, file: !3, line: 13, type: !5)
!33 = !DILocation(line: 13, column: 14, scope: !16)
!34 = !DILocalVariable(name: "ret", scope: !16, file: !3, line: 14, type: !5)
!35 = !DILocation(line: 14, column: 9, scope: !16)
!36 = !DILocalVariable(name: "res", scope: !16, file: !3, line: 14, type: !5)
!37 = !DILocation(line: 14, column: 18, scope: !16)
!38 = !DILocalVariable(name: "temp", scope: !16, file: !3, line: 15, type: !22)
!39 = !DILocation(line: 15, column: 11, scope: !16)
!40 = !DILocalVariable(name: "reader", scope: !16, file: !3, line: 16, type: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!42 = !DILocation(line: 16, column: 11, scope: !16)
!43 = !DILocalVariable(name: "doc", scope: !16, file: !3, line: 17, type: !41)
!44 = !DILocation(line: 17, column: 11, scope: !16)
!45 = !DILocation(line: 19, column: 18, scope: !16)
!46 = !DILocation(line: 19, column: 11, scope: !16)
!47 = !DILocation(line: 19, column: 9, scope: !16)
!48 = !DILocation(line: 20, column: 9, scope: !16)
!49 = !DILocation(line: 21, column: 5, scope: !16)
!50 = !DILocation(line: 22, column: 12, scope: !16)
!51 = !DILocation(line: 22, column: 17, scope: !16)
!52 = !DILocation(line: 22, column: 27, scope: !16)
!53 = !DILocation(line: 22, column: 5, scope: !16)
!54 = !DILocation(line: 23, column: 5, scope: !16)
!55 = !DILocation(line: 24, column: 5, scope: !16)
!56 = !DILocation(line: 24, column: 9, scope: !16)
!57 = !DILocation(line: 24, column: 14, scope: !16)
!58 = !DILocation(line: 25, column: 18, scope: !59)
!59 = distinct !DILexicalBlock(scope: !16, file: !3, line: 25, column: 9)
!60 = !DILocation(line: 25, column: 65, scope: !59)
!61 = !DILocation(line: 25, column: 52, scope: !59)
!62 = !DILocation(line: 25, column: 9, scope: !59)
!63 = !DILocation(line: 25, column: 71, scope: !59)
!64 = !DILocation(line: 25, column: 9, scope: !16)
!65 = !DILocation(line: 26, column: 9, scope: !59)
!66 = !DILocation(line: 26, column: 21, scope: !59)
!67 = !DILocation(line: 27, column: 12, scope: !16)
!68 = !DILocation(line: 27, column: 18, scope: !16)
!69 = !DILocation(line: 27, column: 16, scope: !16)
!70 = !DILocation(line: 27, column: 5, scope: !16)
!71 = !DILocation(line: 28, column: 1, scope: !16)
!72 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 30, type: !73, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!73 = !DISubroutineType(types: !74)
!74 = !{!5}
!75 = !DILocalVariable(name: "filename", scope: !72, file: !3, line: 31, type: !76)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 4000, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 500)
!79 = !DILocation(line: 31, column: 10, scope: !72)
!80 = !DILocalVariable(name: "xml", scope: !72, file: !3, line: 32, type: !76)
!81 = !DILocation(line: 32, column: 10, scope: !72)
!82 = !DILocalVariable(name: "result", scope: !72, file: !3, line: 33, type: !76)
!83 = !DILocation(line: 33, column: 10, scope: !72)
!84 = !DILocation(line: 35, column: 24, scope: !72)
!85 = !DILocation(line: 35, column: 5, scope: !72)
!86 = !DILocation(line: 36, column: 17, scope: !72)
!87 = !DILocation(line: 36, column: 48, scope: !72)
!88 = !DILocation(line: 36, column: 5, scope: !72)
!89 = !DILocation(line: 37, column: 24, scope: !72)
!90 = !DILocation(line: 37, column: 17, scope: !72)
!91 = !DILocation(line: 37, column: 34, scope: !72)
!92 = !DILocation(line: 37, column: 5, scope: !72)
!93 = !DILocation(line: 39, column: 18, scope: !72)
!94 = !DILocation(line: 39, column: 28, scope: !72)
!95 = !DILocation(line: 39, column: 33, scope: !72)
!96 = !DILocation(line: 39, column: 5, scope: !72)
!97 = !DILocation(line: 40, column: 5, scope: !72)
!98 = distinct !DISubprogram(name: "memcpy", scope: !99, file: !99, line: 12, type: !100, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !23)
!99 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!100 = !DISubroutineType(types: !101)
!101 = !{!41, !41, !102, !104}
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !105, line: 46, baseType: !106)
!105 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!106 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!107 = !DILocalVariable(name: "destaddr", arg: 1, scope: !98, file: !99, line: 12, type: !41)
!108 = !DILocation(line: 12, column: 20, scope: !98)
!109 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !98, file: !99, line: 12, type: !102)
!110 = !DILocation(line: 12, column: 42, scope: !98)
!111 = !DILocalVariable(name: "len", arg: 3, scope: !98, file: !99, line: 12, type: !104)
!112 = !DILocation(line: 12, column: 58, scope: !98)
!113 = !DILocalVariable(name: "dest", scope: !98, file: !99, line: 13, type: !22)
!114 = !DILocation(line: 13, column: 9, scope: !98)
!115 = !DILocation(line: 13, column: 16, scope: !98)
!116 = !DILocalVariable(name: "src", scope: !98, file: !99, line: 14, type: !19)
!117 = !DILocation(line: 14, column: 15, scope: !98)
!118 = !DILocation(line: 14, column: 21, scope: !98)
!119 = !DILocation(line: 16, column: 3, scope: !98)
!120 = !DILocation(line: 16, column: 13, scope: !98)
!121 = !DILocation(line: 16, column: 16, scope: !98)
!122 = !DILocation(line: 17, column: 19, scope: !98)
!123 = !DILocation(line: 17, column: 15, scope: !98)
!124 = !DILocation(line: 17, column: 10, scope: !98)
!125 = !DILocation(line: 17, column: 13, scope: !98)
!126 = distinct !{!126, !119, !122, !127}
!127 = !{!"llvm.loop.mustprogress"}
!128 = !DILocation(line: 18, column: 10, scope: !98)
!129 = !DILocation(line: 18, column: 3, scope: !98)

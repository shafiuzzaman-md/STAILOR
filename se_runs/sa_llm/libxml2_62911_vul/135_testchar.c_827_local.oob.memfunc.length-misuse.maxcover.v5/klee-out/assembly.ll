; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/135_testchar.c_827_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/135_testchar.c_827_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"&#x3B1;\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"(i + 7 <= sizeof(out)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/135_testchar.c_827_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"test_out\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !12 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [10000 x i8], align 16
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !17, metadata !DIExpression()), !dbg !18
  %5 = call i32 @testDocumentRanges(), !dbg !19
  store i32 %5, i32* %2, align 4, !dbg !18
  %6 = load i32, i32* %2, align 4, !dbg !20
  %7 = icmp ne i32 %6, 0, !dbg !22
  br i1 %7, label %8, label %43, !dbg !23

8:                                                ; preds = %0
  call void @llvm.dbg.declare(metadata [10000 x i8]* %3, metadata !24, metadata !DIExpression()), !dbg !30
  %9 = getelementptr inbounds [10000 x i8], [10000 x i8]* %3, i64 0, i64 0, !dbg !31
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 10000, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %4, metadata !33, metadata !DIExpression()), !dbg !34
  store i32 25, i32* %4, align 4, !dbg !35
  br label %10, !dbg !37

10:                                               ; preds = %39, %8
  %11 = load i32, i32* %4, align 4, !dbg !38
  %12 = icmp slt i32 %11, 7032, !dbg !40
  br i1 %12, label %13, label %42, !dbg !41

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4, !dbg !42
  %15 = add nsw i32 %14, 7, !dbg !44
  %16 = sext i32 %15 to i64, !dbg !42
  %17 = icmp ule i64 %16, 10000, !dbg !45
  %18 = zext i1 %17 to i32, !dbg !45
  %19 = sext i32 %18 to i64, !dbg !42
  call void @klee_assume(i64 noundef %19), !dbg !46
  %20 = getelementptr inbounds [10000 x i8], [10000 x i8]* %3, i64 0, i64 0, !dbg !47
  %21 = load i32, i32* %4, align 4, !dbg !49
  %22 = sext i32 %21 to i64, !dbg !50
  %23 = getelementptr inbounds i8, i8* %20, i64 %22, !dbg !50
  %24 = call i32 @memcmp(i8* noundef %23, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 noundef 7) #5, !dbg !51
  %25 = icmp ne i32 %24, 0, !dbg !52
  br i1 %25, label %26, label %38, !dbg !53

26:                                               ; preds = %13
  %27 = load i32, i32* %4, align 4, !dbg !54
  %28 = add nsw i32 %27, 7, !dbg !54
  %29 = sext i32 %28 to i64, !dbg !54
  %30 = icmp ule i64 %29, 10000, !dbg !54
  br i1 %30, label %31, label %33, !dbg !54

31:                                               ; preds = %26
  br i1 true, label %32, label %33, !dbg !54

32:                                               ; preds = %31
  br label %35, !dbg !54

33:                                               ; preds = %31, %26
  %34 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.4, i64 0, i64 0), i32 noundef 23, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !54
  br label %35, !dbg !54

35:                                               ; preds = %33, %32
  %36 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.4, i64 0, i64 0), i32 noundef 24, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !56
  %37 = load i32, i32* %2, align 4, !dbg !57
  store i32 %37, i32* %1, align 4, !dbg !58
  br label %44, !dbg !58

38:                                               ; preds = %13
  br label %39, !dbg !59

39:                                               ; preds = %38
  %40 = load i32, i32* %4, align 4, !dbg !60
  %41 = add nsw i32 %40, 7, !dbg !60
  store i32 %41, i32* %4, align 4, !dbg !60
  br label %10, !dbg !61, !llvm.loop !62

42:                                               ; preds = %10
  br label %43, !dbg !65

43:                                               ; preds = %42, %0
  store i32 0, i32* %1, align 4, !dbg !66
  br label %44, !dbg !66

44:                                               ; preds = %43, %35
  %45 = load i32, i32* %1, align 4, !dbg !67
  ret i32 %45, !dbg !67
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @testDocumentRanges() #0 !dbg !68 {
  %1 = alloca i32, align 4
  %2 = alloca [10000 x i8], align 16
  %3 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !69, metadata !DIExpression()), !dbg !70
  store i32 0, i32* %1, align 4, !dbg !70
  call void @llvm.dbg.declare(metadata [10000 x i8]* %2, metadata !71, metadata !DIExpression()), !dbg !72
  %4 = getelementptr inbounds [10000 x i8], [10000 x i8]* %2, i64 0, i64 0, !dbg !73
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 10000, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)), !dbg !74
  call void @llvm.dbg.declare(metadata i32* %3, metadata !75, metadata !DIExpression()), !dbg !77
  store i32 25, i32* %3, align 4, !dbg !77
  br label %5, !dbg !78

5:                                                ; preds = %25, %0
  %6 = load i32, i32* %3, align 4, !dbg !79
  %7 = icmp slt i32 %6, 7032, !dbg !81
  br i1 %7, label %8, label %28, !dbg !82

8:                                                ; preds = %5
  %9 = load i32, i32* %3, align 4, !dbg !83
  %10 = add nsw i32 %9, 7, !dbg !85
  %11 = sext i32 %10 to i64, !dbg !83
  %12 = icmp ule i64 %11, 10000, !dbg !86
  %13 = zext i1 %12 to i32, !dbg !86
  %14 = sext i32 %13 to i64, !dbg !83
  call void @klee_assume(i64 noundef %14), !dbg !87
  %15 = getelementptr inbounds [10000 x i8], [10000 x i8]* %2, i64 0, i64 0, !dbg !88
  %16 = load i32, i32* %3, align 4, !dbg !90
  %17 = sext i32 %16 to i64, !dbg !91
  %18 = getelementptr inbounds i8, i8* %15, i64 %17, !dbg !91
  %19 = call i32 @memcmp(i8* noundef %18, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 noundef 7) #5, !dbg !92
  %20 = icmp ne i32 %19, 0, !dbg !93
  br i1 %20, label %21, label %24, !dbg !94

21:                                               ; preds = %8
  %22 = load i32, i32* %1, align 4, !dbg !95
  %23 = add nsw i32 %22, 1, !dbg !95
  store i32 %23, i32* %1, align 4, !dbg !95
  br label %28, !dbg !97

24:                                               ; preds = %8
  br label %25, !dbg !98

25:                                               ; preds = %24
  %26 = load i32, i32* %3, align 4, !dbg !99
  %27 = add nsw i32 %26, 7, !dbg !99
  store i32 %27, i32* %3, align 4, !dbg !99
  br label %5, !dbg !100, !llvm.loop !101

28:                                               ; preds = %21, %5
  %29 = load i32, i32* %1, align 4, !dbg !103
  ret i32 %29, !dbg !104
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @memcmp(i8* noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !105 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !114, metadata !DIExpression()), !dbg !115
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !116, metadata !DIExpression()), !dbg !117
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !118, metadata !DIExpression()), !dbg !119
  %10 = load i64, i64* %7, align 8, !dbg !120
  %11 = icmp ne i64 %10, 0, !dbg !122
  br i1 %11, label %12, label %39, !dbg !123

12:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i8** %8, metadata !124, metadata !DIExpression()), !dbg !129
  %13 = load i8*, i8** %5, align 8, !dbg !130
  store i8* %13, i8** %8, align 8, !dbg !129
  call void @llvm.dbg.declare(metadata i8** %9, metadata !131, metadata !DIExpression()), !dbg !132
  %14 = load i8*, i8** %6, align 8, !dbg !133
  store i8* %14, i8** %9, align 8, !dbg !132
  br label %15, !dbg !134

15:                                               ; preds = %35, %12
  %16 = load i8*, i8** %8, align 8, !dbg !135
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !135
  store i8* %17, i8** %8, align 8, !dbg !135
  %18 = load i8, i8* %16, align 1, !dbg !138
  %19 = zext i8 %18 to i32, !dbg !138
  %20 = load i8*, i8** %9, align 8, !dbg !139
  %21 = getelementptr inbounds i8, i8* %20, i32 1, !dbg !139
  store i8* %21, i8** %9, align 8, !dbg !139
  %22 = load i8, i8* %20, align 1, !dbg !140
  %23 = zext i8 %22 to i32, !dbg !140
  %24 = icmp ne i32 %19, %23, !dbg !141
  br i1 %24, label %25, label %35, !dbg !142

25:                                               ; preds = %15
  %26 = load i8*, i8** %8, align 8, !dbg !143
  %27 = getelementptr inbounds i8, i8* %26, i32 -1, !dbg !143
  store i8* %27, i8** %8, align 8, !dbg !143
  %28 = load i8, i8* %27, align 1, !dbg !145
  %29 = zext i8 %28 to i32, !dbg !145
  %30 = load i8*, i8** %9, align 8, !dbg !146
  %31 = getelementptr inbounds i8, i8* %30, i32 -1, !dbg !146
  store i8* %31, i8** %9, align 8, !dbg !146
  %32 = load i8, i8* %31, align 1, !dbg !147
  %33 = zext i8 %32 to i32, !dbg !147
  %34 = sub nsw i32 %29, %33, !dbg !148
  store i32 %34, i32* %4, align 4, !dbg !149
  br label %40, !dbg !149

35:                                               ; preds = %15
  %36 = load i64, i64* %7, align 8, !dbg !150
  %37 = add i64 %36, -1, !dbg !150
  store i64 %37, i64* %7, align 8, !dbg !150
  %38 = icmp ne i64 %37, 0, !dbg !151
  br i1 %38, label %15, label %39, !dbg !152, !llvm.loop !153

39:                                               ; preds = %35, %3
  store i32 0, i32* %4, align 4, !dbg !155
  br label %40, !dbg !155

40:                                               ; preds = %39, %25
  %41 = load i32, i32* %4, align 4, !dbg !156
  ret i32 %41, !dbg !156
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11, !11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/135_testchar.c_827_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "43e98fd5cd781a5ff285677913361e0d")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcmp.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "6a01b8a9953e07eca8ec791434d4f8e8")
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 7, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"Ubuntu clang version 14.0.6"}
!12 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 12, type: !13, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!13 = !DISubroutineType(types: !14)
!14 = !{!15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{}
!17 = !DILocalVariable(name: "ret", scope: !12, file: !1, line: 13, type: !15)
!18 = !DILocation(line: 13, column: 9, scope: !12)
!19 = !DILocation(line: 13, column: 15, scope: !12)
!20 = !DILocation(line: 15, column: 9, scope: !21)
!21 = distinct !DILexicalBlock(scope: !12, file: !1, line: 15, column: 9)
!22 = !DILocation(line: 15, column: 13, scope: !21)
!23 = !DILocation(line: 15, column: 9, scope: !12)
!24 = !DILocalVariable(name: "out", scope: !25, file: !1, line: 16, type: !26)
!25 = distinct !DILexicalBlock(scope: !21, file: !1, line: 15, column: 19)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 80000, elements: !28)
!27 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!28 = !{!29}
!29 = !DISubrange(count: 10000)
!30 = !DILocation(line: 16, column: 14, scope: !25)
!31 = !DILocation(line: 17, column: 28, scope: !25)
!32 = !DILocation(line: 17, column: 9, scope: !25)
!33 = !DILocalVariable(name: "i", scope: !25, file: !1, line: 19, type: !15)
!34 = !DILocation(line: 19, column: 13, scope: !25)
!35 = !DILocation(line: 20, column: 16, scope: !36)
!36 = distinct !DILexicalBlock(scope: !25, file: !1, line: 20, column: 9)
!37 = !DILocation(line: 20, column: 14, scope: !36)
!38 = !DILocation(line: 20, column: 22, scope: !39)
!39 = distinct !DILexicalBlock(scope: !36, file: !1, line: 20, column: 9)
!40 = !DILocation(line: 20, column: 24, scope: !39)
!41 = !DILocation(line: 20, column: 9, scope: !36)
!42 = !DILocation(line: 21, column: 25, scope: !43)
!43 = distinct !DILexicalBlock(scope: !39, file: !1, line: 20, column: 49)
!44 = !DILocation(line: 21, column: 27, scope: !43)
!45 = !DILocation(line: 21, column: 31, scope: !43)
!46 = !DILocation(line: 21, column: 13, scope: !43)
!47 = !DILocation(line: 22, column: 24, scope: !48)
!48 = distinct !DILexicalBlock(scope: !43, file: !1, line: 22, column: 17)
!49 = !DILocation(line: 22, column: 30, scope: !48)
!50 = !DILocation(line: 22, column: 28, scope: !48)
!51 = !DILocation(line: 22, column: 17, scope: !48)
!52 = !DILocation(line: 22, column: 47, scope: !48)
!53 = !DILocation(line: 22, column: 17, scope: !43)
!54 = !DILocation(line: 23, column: 17, scope: !55)
!55 = distinct !DILexicalBlock(scope: !48, file: !1, line: 22, column: 53)
!56 = !DILocation(line: 24, column: 17, scope: !55)
!57 = !DILocation(line: 25, column: 24, scope: !55)
!58 = !DILocation(line: 25, column: 17, scope: !55)
!59 = !DILocation(line: 27, column: 9, scope: !43)
!60 = !DILocation(line: 20, column: 43, scope: !39)
!61 = !DILocation(line: 20, column: 9, scope: !39)
!62 = distinct !{!62, !41, !63, !64}
!63 = !DILocation(line: 27, column: 9, scope: !36)
!64 = !{!"llvm.loop.mustprogress"}
!65 = !DILocation(line: 28, column: 5, scope: !25)
!66 = !DILocation(line: 30, column: 5, scope: !12)
!67 = !DILocation(line: 31, column: 1, scope: !12)
!68 = distinct !DISubprogram(name: "testDocumentRanges", scope: !1, file: !1, line: 33, type: !13, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!69 = !DILocalVariable(name: "ret", scope: !68, file: !1, line: 34, type: !15)
!70 = !DILocation(line: 34, column: 9, scope: !68)
!71 = !DILocalVariable(name: "out", scope: !68, file: !1, line: 35, type: !26)
!72 = !DILocation(line: 35, column: 10, scope: !68)
!73 = !DILocation(line: 37, column: 24, scope: !68)
!74 = !DILocation(line: 37, column: 5, scope: !68)
!75 = !DILocalVariable(name: "i", scope: !76, file: !1, line: 39, type: !15)
!76 = distinct !DILexicalBlock(scope: !68, file: !1, line: 39, column: 5)
!77 = !DILocation(line: 39, column: 14, scope: !76)
!78 = !DILocation(line: 39, column: 10, scope: !76)
!79 = !DILocation(line: 39, column: 22, scope: !80)
!80 = distinct !DILexicalBlock(scope: !76, file: !1, line: 39, column: 5)
!81 = !DILocation(line: 39, column: 24, scope: !80)
!82 = !DILocation(line: 39, column: 5, scope: !76)
!83 = !DILocation(line: 40, column: 21, scope: !84)
!84 = distinct !DILexicalBlock(scope: !80, file: !1, line: 39, column: 49)
!85 = !DILocation(line: 40, column: 23, scope: !84)
!86 = !DILocation(line: 40, column: 27, scope: !84)
!87 = !DILocation(line: 40, column: 9, scope: !84)
!88 = !DILocation(line: 41, column: 20, scope: !89)
!89 = distinct !DILexicalBlock(scope: !84, file: !1, line: 41, column: 13)
!90 = !DILocation(line: 41, column: 26, scope: !89)
!91 = !DILocation(line: 41, column: 24, scope: !89)
!92 = !DILocation(line: 41, column: 13, scope: !89)
!93 = !DILocation(line: 41, column: 43, scope: !89)
!94 = !DILocation(line: 41, column: 13, scope: !84)
!95 = !DILocation(line: 42, column: 17, scope: !96)
!96 = distinct !DILexicalBlock(scope: !89, file: !1, line: 41, column: 49)
!97 = !DILocation(line: 43, column: 13, scope: !96)
!98 = !DILocation(line: 45, column: 5, scope: !84)
!99 = !DILocation(line: 39, column: 43, scope: !80)
!100 = !DILocation(line: 39, column: 5, scope: !80)
!101 = distinct !{!101, !82, !102, !64}
!102 = !DILocation(line: 45, column: 5, scope: !76)
!103 = !DILocation(line: 47, column: 12, scope: !68)
!104 = !DILocation(line: 47, column: 5, scope: !68)
!105 = distinct !DISubprogram(name: "memcmp", scope: !106, file: !106, line: 42, type: !107, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !16)
!106 = !DIFile(filename: "runtime/Freestanding/memcmp.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "6a01b8a9953e07eca8ec791434d4f8e8")
!107 = !DISubroutineType(types: !108)
!108 = !{!15, !109, !109, !111}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !112, line: 46, baseType: !113)
!112 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!113 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!114 = !DILocalVariable(name: "s1", arg: 1, scope: !105, file: !106, line: 42, type: !109)
!115 = !DILocation(line: 42, column: 24, scope: !105)
!116 = !DILocalVariable(name: "s2", arg: 2, scope: !105, file: !106, line: 42, type: !109)
!117 = !DILocation(line: 42, column: 40, scope: !105)
!118 = !DILocalVariable(name: "n", arg: 3, scope: !105, file: !106, line: 42, type: !111)
!119 = !DILocation(line: 42, column: 51, scope: !105)
!120 = !DILocation(line: 43, column: 7, scope: !121)
!121 = distinct !DILexicalBlock(scope: !105, file: !106, line: 43, column: 7)
!122 = !DILocation(line: 43, column: 9, scope: !121)
!123 = !DILocation(line: 43, column: 7, scope: !105)
!124 = !DILocalVariable(name: "p1", scope: !125, file: !106, line: 44, type: !126)
!125 = distinct !DILexicalBlock(scope: !121, file: !106, line: 43, column: 15)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!128 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!129 = !DILocation(line: 44, column: 26, scope: !125)
!130 = !DILocation(line: 44, column: 31, scope: !125)
!131 = !DILocalVariable(name: "p2", scope: !125, file: !106, line: 44, type: !126)
!132 = !DILocation(line: 44, column: 36, scope: !125)
!133 = !DILocation(line: 44, column: 41, scope: !125)
!134 = !DILocation(line: 46, column: 5, scope: !125)
!135 = !DILocation(line: 47, column: 14, scope: !136)
!136 = distinct !DILexicalBlock(scope: !137, file: !106, line: 47, column: 11)
!137 = distinct !DILexicalBlock(scope: !125, file: !106, line: 46, column: 8)
!138 = !DILocation(line: 47, column: 11, scope: !136)
!139 = !DILocation(line: 47, column: 23, scope: !136)
!140 = !DILocation(line: 47, column: 20, scope: !136)
!141 = !DILocation(line: 47, column: 17, scope: !136)
!142 = !DILocation(line: 47, column: 11, scope: !137)
!143 = !DILocation(line: 48, column: 18, scope: !144)
!144 = distinct !DILexicalBlock(scope: !136, file: !106, line: 47, column: 27)
!145 = !DILocation(line: 48, column: 17, scope: !144)
!146 = !DILocation(line: 48, column: 26, scope: !144)
!147 = !DILocation(line: 48, column: 25, scope: !144)
!148 = !DILocation(line: 48, column: 23, scope: !144)
!149 = !DILocation(line: 48, column: 9, scope: !144)
!150 = !DILocation(line: 50, column: 14, scope: !125)
!151 = !DILocation(line: 50, column: 18, scope: !125)
!152 = !DILocation(line: 50, column: 5, scope: !137)
!153 = distinct !{!153, !134, !154, !64}
!154 = !DILocation(line: 50, column: 22, scope: !125)
!155 = !DILocation(line: 52, column: 3, scope: !105)
!156 = !DILocation(line: 53, column: 1, scope: !105)

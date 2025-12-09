; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/148_runtest.c_680_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/148_runtest.c_680_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"res1\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"res2\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"bytes1\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"bytes2\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_62911_vul/148_runtest.c_680_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !12 {
  %1 = alloca i32, align 4
  %2 = alloca [4096 x i8], align 16
  %3 = alloca [4096 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [4096 x i8]* %2, metadata !17, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata [4096 x i8]* %3, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32* %4, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata i32* %5, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %6, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %7, metadata !31, metadata !DIExpression()), !dbg !32
  %8 = bitcast i32* %6 to i8*, !dbg !33
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !34
  %9 = bitcast i32* %7 to i8*, !dbg !35
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !36
  %10 = load i32, i32* %6, align 4, !dbg !37
  %11 = load i32, i32* %7, align 4, !dbg !39
  %12 = icmp ne i32 %10, %11, !dbg !40
  br i1 %12, label %16, label %13, !dbg !41

13:                                               ; preds = %0
  %14 = load i32, i32* %6, align 4, !dbg !42
  %15 = icmp slt i32 %14, 0, !dbg !43
  br i1 %15, label %16, label %17, !dbg !44

16:                                               ; preds = %13, %0
  store i32 1, i32* %1, align 4, !dbg !45
  br label %42, !dbg !45

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4, !dbg !47
  %19 = icmp eq i32 %18, 0, !dbg !49
  br i1 %19, label %20, label %21, !dbg !50

20:                                               ; preds = %17
  store i32 0, i32* %1, align 4, !dbg !51
  br label %42, !dbg !51

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4, !dbg !53
  %23 = icmp sgt i32 %22, 0, !dbg !54
  br i1 %23, label %24, label %27, !dbg !55

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4, !dbg !56
  %26 = icmp sle i32 %25, 4096, !dbg !57
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi i1 [ false, %21 ], [ %26, %24 ], !dbg !58
  %29 = zext i1 %28 to i32, !dbg !55
  %30 = sext i32 %29 to i64, !dbg !53
  call void @klee_assume(i64 noundef %30), !dbg !59
  %31 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0, !dbg !60
  call void @klee_make_symbolic(i8* noundef %31, i64 noundef 4096, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)), !dbg !61
  %32 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0, !dbg !62
  call void @klee_make_symbolic(i8* noundef %32, i64 noundef 4096, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)), !dbg !63
  %33 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.5, i64 0, i64 0), i32 noundef 32, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !64
  %34 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0, !dbg !65
  %35 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0, !dbg !67
  %36 = load i32, i32* %6, align 4, !dbg !68
  %37 = sext i32 %36 to i64, !dbg !68
  %38 = call i32 @memcmp(i8* noundef %34, i8* noundef %35, i64 noundef %37) #5, !dbg !69
  %39 = icmp ne i32 %38, 0, !dbg !70
  br i1 %39, label %40, label %41, !dbg !71

40:                                               ; preds = %27
  store i32 1, i32* %1, align 4, !dbg !72
  br label %42, !dbg !72

41:                                               ; preds = %27
  store i32 0, i32* %1, align 4, !dbg !74
  br label %42, !dbg !74

42:                                               ; preds = %41, %40, %20, %16
  %43 = load i32, i32* %1, align 4, !dbg !75
  ret i32 %43, !dbg !75
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @memcmp(i8* noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !76 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !85, metadata !DIExpression()), !dbg !86
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !87, metadata !DIExpression()), !dbg !88
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !89, metadata !DIExpression()), !dbg !90
  %10 = load i64, i64* %7, align 8, !dbg !91
  %11 = icmp ne i64 %10, 0, !dbg !93
  br i1 %11, label %12, label %39, !dbg !94

12:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i8** %8, metadata !95, metadata !DIExpression()), !dbg !100
  %13 = load i8*, i8** %5, align 8, !dbg !101
  store i8* %13, i8** %8, align 8, !dbg !100
  call void @llvm.dbg.declare(metadata i8** %9, metadata !102, metadata !DIExpression()), !dbg !103
  %14 = load i8*, i8** %6, align 8, !dbg !104
  store i8* %14, i8** %9, align 8, !dbg !103
  br label %15, !dbg !105

15:                                               ; preds = %35, %12
  %16 = load i8*, i8** %8, align 8, !dbg !106
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !106
  store i8* %17, i8** %8, align 8, !dbg !106
  %18 = load i8, i8* %16, align 1, !dbg !109
  %19 = zext i8 %18 to i32, !dbg !109
  %20 = load i8*, i8** %9, align 8, !dbg !110
  %21 = getelementptr inbounds i8, i8* %20, i32 1, !dbg !110
  store i8* %21, i8** %9, align 8, !dbg !110
  %22 = load i8, i8* %20, align 1, !dbg !111
  %23 = zext i8 %22 to i32, !dbg !111
  %24 = icmp ne i32 %19, %23, !dbg !112
  br i1 %24, label %25, label %35, !dbg !113

25:                                               ; preds = %15
  %26 = load i8*, i8** %8, align 8, !dbg !114
  %27 = getelementptr inbounds i8, i8* %26, i32 -1, !dbg !114
  store i8* %27, i8** %8, align 8, !dbg !114
  %28 = load i8, i8* %27, align 1, !dbg !116
  %29 = zext i8 %28 to i32, !dbg !116
  %30 = load i8*, i8** %9, align 8, !dbg !117
  %31 = getelementptr inbounds i8, i8* %30, i32 -1, !dbg !117
  store i8* %31, i8** %9, align 8, !dbg !117
  %32 = load i8, i8* %31, align 1, !dbg !118
  %33 = zext i8 %32 to i32, !dbg !118
  %34 = sub nsw i32 %29, %33, !dbg !119
  store i32 %34, i32* %4, align 4, !dbg !120
  br label %40, !dbg !120

35:                                               ; preds = %15
  %36 = load i64, i64* %7, align 8, !dbg !121
  %37 = add i64 %36, -1, !dbg !121
  store i64 %37, i64* %7, align 8, !dbg !121
  %38 = icmp ne i64 %37, 0, !dbg !122
  br i1 %38, label %15, label %39, !dbg !123, !llvm.loop !124

39:                                               ; preds = %35, %3
  store i32 0, i32* %4, align 4, !dbg !127
  br label %40, !dbg !127

40:                                               ; preds = %39, %25
  %41 = load i32, i32* %4, align 4, !dbg !128
  ret i32 %41, !dbg !128
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
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/148_runtest.c_680_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "cb512c7a6ca5108647f48e9f8b60ec6f")
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
!12 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 11, type: !13, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!13 = !DISubroutineType(types: !14)
!14 = !{!15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{}
!17 = !DILocalVariable(name: "bytes1", scope: !12, file: !1, line: 12, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 32768, elements: !20)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !{!21}
!21 = !DISubrange(count: 4096)
!22 = !DILocation(line: 12, column: 10, scope: !12)
!23 = !DILocalVariable(name: "bytes2", scope: !12, file: !1, line: 13, type: !18)
!24 = !DILocation(line: 13, column: 10, scope: !12)
!25 = !DILocalVariable(name: "fd1", scope: !12, file: !1, line: 14, type: !15)
!26 = !DILocation(line: 14, column: 9, scope: !12)
!27 = !DILocalVariable(name: "fd2", scope: !12, file: !1, line: 14, type: !15)
!28 = !DILocation(line: 14, column: 14, scope: !12)
!29 = !DILocalVariable(name: "res1", scope: !12, file: !1, line: 15, type: !15)
!30 = !DILocation(line: 15, column: 9, scope: !12)
!31 = !DILocalVariable(name: "res2", scope: !12, file: !1, line: 15, type: !15)
!32 = !DILocation(line: 15, column: 15, scope: !12)
!33 = !DILocation(line: 17, column: 24, scope: !12)
!34 = !DILocation(line: 17, column: 5, scope: !12)
!35 = !DILocation(line: 18, column: 24, scope: !12)
!36 = !DILocation(line: 18, column: 5, scope: !12)
!37 = !DILocation(line: 20, column: 10, scope: !38)
!38 = distinct !DILexicalBlock(scope: !12, file: !1, line: 20, column: 9)
!39 = !DILocation(line: 20, column: 18, scope: !38)
!40 = !DILocation(line: 20, column: 15, scope: !38)
!41 = !DILocation(line: 20, column: 24, scope: !38)
!42 = !DILocation(line: 20, column: 28, scope: !38)
!43 = !DILocation(line: 20, column: 33, scope: !38)
!44 = !DILocation(line: 20, column: 9, scope: !12)
!45 = !DILocation(line: 21, column: 9, scope: !46)
!46 = distinct !DILexicalBlock(scope: !38, file: !1, line: 20, column: 39)
!47 = !DILocation(line: 23, column: 9, scope: !48)
!48 = distinct !DILexicalBlock(scope: !12, file: !1, line: 23, column: 9)
!49 = !DILocation(line: 23, column: 14, scope: !48)
!50 = !DILocation(line: 23, column: 9, scope: !12)
!51 = !DILocation(line: 24, column: 9, scope: !52)
!52 = distinct !DILexicalBlock(scope: !48, file: !1, line: 23, column: 20)
!53 = !DILocation(line: 27, column: 17, scope: !12)
!54 = !DILocation(line: 27, column: 22, scope: !12)
!55 = !DILocation(line: 27, column: 26, scope: !12)
!56 = !DILocation(line: 27, column: 29, scope: !12)
!57 = !DILocation(line: 27, column: 34, scope: !12)
!58 = !DILocation(line: 0, scope: !12)
!59 = !DILocation(line: 27, column: 5, scope: !12)
!60 = !DILocation(line: 29, column: 24, scope: !12)
!61 = !DILocation(line: 29, column: 5, scope: !12)
!62 = !DILocation(line: 30, column: 24, scope: !12)
!63 = !DILocation(line: 30, column: 5, scope: !12)
!64 = !DILocation(line: 32, column: 5, scope: !12)
!65 = !DILocation(line: 33, column: 16, scope: !66)
!66 = distinct !DILexicalBlock(scope: !12, file: !1, line: 33, column: 9)
!67 = !DILocation(line: 33, column: 24, scope: !66)
!68 = !DILocation(line: 33, column: 32, scope: !66)
!69 = !DILocation(line: 33, column: 9, scope: !66)
!70 = !DILocation(line: 33, column: 38, scope: !66)
!71 = !DILocation(line: 33, column: 9, scope: !12)
!72 = !DILocation(line: 34, column: 9, scope: !73)
!73 = distinct !DILexicalBlock(scope: !66, file: !1, line: 33, column: 44)
!74 = !DILocation(line: 37, column: 5, scope: !12)
!75 = !DILocation(line: 38, column: 1, scope: !12)
!76 = distinct !DISubprogram(name: "memcmp", scope: !77, file: !77, line: 42, type: !78, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !16)
!77 = !DIFile(filename: "runtime/Freestanding/memcmp.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "6a01b8a9953e07eca8ec791434d4f8e8")
!78 = !DISubroutineType(types: !79)
!79 = !{!15, !80, !80, !82}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !83, line: 46, baseType: !84)
!83 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!84 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!85 = !DILocalVariable(name: "s1", arg: 1, scope: !76, file: !77, line: 42, type: !80)
!86 = !DILocation(line: 42, column: 24, scope: !76)
!87 = !DILocalVariable(name: "s2", arg: 2, scope: !76, file: !77, line: 42, type: !80)
!88 = !DILocation(line: 42, column: 40, scope: !76)
!89 = !DILocalVariable(name: "n", arg: 3, scope: !76, file: !77, line: 42, type: !82)
!90 = !DILocation(line: 42, column: 51, scope: !76)
!91 = !DILocation(line: 43, column: 7, scope: !92)
!92 = distinct !DILexicalBlock(scope: !76, file: !77, line: 43, column: 7)
!93 = !DILocation(line: 43, column: 9, scope: !92)
!94 = !DILocation(line: 43, column: 7, scope: !76)
!95 = !DILocalVariable(name: "p1", scope: !96, file: !77, line: 44, type: !97)
!96 = distinct !DILexicalBlock(scope: !92, file: !77, line: 43, column: 15)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!99 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!100 = !DILocation(line: 44, column: 26, scope: !96)
!101 = !DILocation(line: 44, column: 31, scope: !96)
!102 = !DILocalVariable(name: "p2", scope: !96, file: !77, line: 44, type: !97)
!103 = !DILocation(line: 44, column: 36, scope: !96)
!104 = !DILocation(line: 44, column: 41, scope: !96)
!105 = !DILocation(line: 46, column: 5, scope: !96)
!106 = !DILocation(line: 47, column: 14, scope: !107)
!107 = distinct !DILexicalBlock(scope: !108, file: !77, line: 47, column: 11)
!108 = distinct !DILexicalBlock(scope: !96, file: !77, line: 46, column: 8)
!109 = !DILocation(line: 47, column: 11, scope: !107)
!110 = !DILocation(line: 47, column: 23, scope: !107)
!111 = !DILocation(line: 47, column: 20, scope: !107)
!112 = !DILocation(line: 47, column: 17, scope: !107)
!113 = !DILocation(line: 47, column: 11, scope: !108)
!114 = !DILocation(line: 48, column: 18, scope: !115)
!115 = distinct !DILexicalBlock(scope: !107, file: !77, line: 47, column: 27)
!116 = !DILocation(line: 48, column: 17, scope: !115)
!117 = !DILocation(line: 48, column: 26, scope: !115)
!118 = !DILocation(line: 48, column: 25, scope: !115)
!119 = !DILocation(line: 48, column: 23, scope: !115)
!120 = !DILocation(line: 48, column: 9, scope: !115)
!121 = !DILocation(line: 50, column: 14, scope: !96)
!122 = !DILocation(line: 50, column: 18, scope: !96)
!123 = !DILocation(line: 50, column: 5, scope: !108)
!124 = distinct !{!124, !105, !125, !126}
!125 = !DILocation(line: 50, column: 22, scope: !96)
!126 = !{!"llvm.loop.mustprogress"}
!127 = !DILocation(line: 52, column: 3, scope: !76)
!128 = !DILocation(line: 53, column: 1, scope: !76)

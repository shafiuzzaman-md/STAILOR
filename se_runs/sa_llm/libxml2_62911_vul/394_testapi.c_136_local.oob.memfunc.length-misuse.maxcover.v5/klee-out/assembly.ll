; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/394_testapi.c_136_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/394_testapi.c_136_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"chartab_size\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"(20 <= chartab_size) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_62911_vul/394_testapi.c_136_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlInitParser() #0 !dbg !19 {
  ret void, !dbg !23
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !24 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !27, metadata !DIExpression()), !dbg !29
  %6 = bitcast i32* %2 to i8*, !dbg !30
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0)), !dbg !31
  %7 = load i32, i32* %2, align 4, !dbg !32
  %8 = icmp uge i32 %7, 1, !dbg !33
  %9 = zext i1 %8 to i32, !dbg !33
  %10 = sext i32 %9 to i64, !dbg !32
  call void @klee_assume(i64 noundef %10), !dbg !34
  %11 = load i32, i32* %2, align 4, !dbg !35
  %12 = icmp ule i32 %11, 30, !dbg !36
  %13 = zext i1 %12 to i32, !dbg !36
  %14 = sext i32 %13 to i64, !dbg !35
  call void @klee_assume(i64 noundef %14), !dbg !37
  call void @llvm.dbg.declare(metadata i8** %3, metadata !38, metadata !DIExpression()), !dbg !39
  %15 = load i32, i32* %2, align 4, !dbg !40
  %16 = zext i32 %15 to i64, !dbg !40
  %17 = call noalias i8* @malloc(i64 noundef %16) #7, !dbg !41
  store i8* %17, i8** %3, align 8, !dbg !39
  %18 = load i8*, i8** %3, align 8, !dbg !42
  %19 = icmp ne i8* %18, null, !dbg !42
  br i1 %19, label %21, label %20, !dbg !44

20:                                               ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !45
  br label %69, !dbg !45

21:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata i32** %4, metadata !46, metadata !DIExpression()), !dbg !47
  %22 = call noalias i8* @malloc(i64 noundef 400) #7, !dbg !48
  %23 = bitcast i8* %22 to i32*, !dbg !49
  store i32* %23, i32** %4, align 8, !dbg !47
  call void @llvm.dbg.declare(metadata i64** %5, metadata !50, metadata !DIExpression()), !dbg !51
  %24 = call noalias i8* @malloc(i64 noundef 800) #7, !dbg !52
  %25 = bitcast i8* %24 to i64*, !dbg !53
  store i64* %25, i64** %5, align 8, !dbg !51
  %26 = load i32*, i32** %4, align 8, !dbg !54
  %27 = icmp ne i32* %26, null, !dbg !54
  br i1 %27, label %28, label %31, !dbg !56

28:                                               ; preds = %21
  %29 = load i64*, i64** %5, align 8, !dbg !57
  %30 = icmp ne i64* %29, null, !dbg !57
  br i1 %30, label %45, label %31, !dbg !58

31:                                               ; preds = %28, %21
  %32 = load i8*, i8** %3, align 8, !dbg !59
  call void @free(i8* noundef %32) #7, !dbg !61
  %33 = load i32*, i32** %4, align 8, !dbg !62
  %34 = icmp ne i32* %33, null, !dbg !62
  br i1 %34, label %35, label %38, !dbg !64

35:                                               ; preds = %31
  %36 = load i32*, i32** %4, align 8, !dbg !65
  %37 = bitcast i32* %36 to i8*, !dbg !65
  call void @free(i8* noundef %37) #7, !dbg !66
  br label %38, !dbg !66

38:                                               ; preds = %35, %31
  %39 = load i64*, i64** %5, align 8, !dbg !67
  %40 = icmp ne i64* %39, null, !dbg !67
  br i1 %40, label %41, label %44, !dbg !69

41:                                               ; preds = %38
  %42 = load i64*, i64** %5, align 8, !dbg !70
  %43 = bitcast i64* %42 to i8*, !dbg !70
  call void @free(i8* noundef %43) #7, !dbg !71
  br label %44, !dbg !71

44:                                               ; preds = %41, %38
  store i32 1, i32* %1, align 4, !dbg !72
  br label %69, !dbg !72

45:                                               ; preds = %28
  %46 = load i8*, i8** %3, align 8, !dbg !73
  %47 = load i32, i32* %2, align 4, !dbg !74
  %48 = zext i32 %47 to i64, !dbg !74
  %49 = call i8* @memset(i8* %46, i32 0, i64 %48), !dbg !75
  %50 = load i32, i32* %2, align 4, !dbg !76
  %51 = icmp ule i32 20, %50, !dbg !76
  br i1 %51, label %52, label %54, !dbg !76

52:                                               ; preds = %45
  br i1 true, label %53, label %54, !dbg !76

53:                                               ; preds = %52
  br label %56, !dbg !76

54:                                               ; preds = %52, %45
  %55 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.3, i64 0, i64 0), i32 noundef 57, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !76
  br label %56, !dbg !76

56:                                               ; preds = %54, %53
  %57 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.3, i64 0, i64 0), i32 noundef 60, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !77
  %58 = load i32*, i32** %4, align 8, !dbg !78
  %59 = bitcast i32* %58 to i8*, !dbg !79
  %60 = call i8* @memset(i8* %59, i32 0, i64 400), !dbg !79
  %61 = load i64*, i64** %5, align 8, !dbg !80
  %62 = bitcast i64* %61 to i8*, !dbg !81
  %63 = call i8* @memset(i8* %62, i32 0, i64 800), !dbg !81
  call void @xmlInitParser(), !dbg !82
  %64 = load i8*, i8** %3, align 8, !dbg !83
  call void @free(i8* noundef %64) #7, !dbg !84
  %65 = load i32*, i32** %4, align 8, !dbg !85
  %66 = bitcast i32* %65 to i8*, !dbg !85
  call void @free(i8* noundef %66) #7, !dbg !86
  %67 = load i64*, i64** %5, align 8, !dbg !87
  %68 = bitcast i64* %67 to i8*, !dbg !87
  call void @free(i8* noundef %68) #7, !dbg !88
  store i32 0, i32* %1, align 4, !dbg !89
  br label %69, !dbg !89

69:                                               ; preds = %56, %44, %20
  %70 = load i32, i32* %1, align 4, !dbg !90
  ret i32 %70, !dbg !90
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !91 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !99, metadata !DIExpression()), !dbg !100
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !101, metadata !DIExpression()), !dbg !102
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !103, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.declare(metadata i8** %7, metadata !105, metadata !DIExpression()), !dbg !106
  %8 = load i8*, i8** %4, align 8, !dbg !107
  store i8* %8, i8** %7, align 8, !dbg !106
  br label %9, !dbg !108

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !109
  %11 = add i64 %10, -1, !dbg !109
  store i64 %11, i64* %6, align 8, !dbg !109
  %12 = icmp ugt i64 %10, 0, !dbg !110
  br i1 %12, label %13, label %18, !dbg !108

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !111
  %15 = trunc i32 %14 to i8, !dbg !111
  %16 = load i8*, i8** %7, align 8, !dbg !112
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !112
  store i8* %17, i8** %7, align 8, !dbg !112
  store i8 %15, i8* %16, align 1, !dbg !113
  br label %9, !dbg !108, !llvm.loop !114

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !116
  ret i8* %19, !dbg !117
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18, !18}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/394_testapi.c_136_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "0b8a9fa40fc2c937d033697efb7a7536")
!2 = !{!3, !5, !7}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!11 = !{i32 7, !"Dwarf Version", i32 5}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{i32 7, !"PIC Level", i32 2}
!15 = !{i32 7, !"PIE Level", i32 2}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"Ubuntu clang version 14.0.6"}
!19 = distinct !DISubprogram(name: "xmlInitParser", scope: !1, file: !1, line: 10, type: !20, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!20 = !DISubroutineType(types: !21)
!21 = !{null}
!22 = !{}
!23 = !DILocation(line: 12, column: 1, scope: !19)
!24 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 15, type: !25, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!25 = !DISubroutineType(types: !26)
!26 = !{!6}
!27 = !DILocalVariable(name: "chartab_size", scope: !24, file: !1, line: 21, type: !28)
!28 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!29 = !DILocation(line: 21, column: 18, scope: !24)
!30 = !DILocation(line: 22, column: 24, scope: !24)
!31 = !DILocation(line: 22, column: 5, scope: !24)
!32 = !DILocation(line: 25, column: 17, scope: !24)
!33 = !DILocation(line: 25, column: 30, scope: !24)
!34 = !DILocation(line: 25, column: 5, scope: !24)
!35 = !DILocation(line: 26, column: 17, scope: !24)
!36 = !DILocation(line: 26, column: 30, scope: !24)
!37 = !DILocation(line: 26, column: 5, scope: !24)
!38 = !DILocalVariable(name: "chartab", scope: !24, file: !1, line: 29, type: !3)
!39 = !DILocation(line: 29, column: 11, scope: !24)
!40 = !DILocation(line: 29, column: 35, scope: !24)
!41 = !DILocation(line: 29, column: 28, scope: !24)
!42 = !DILocation(line: 30, column: 10, scope: !43)
!43 = distinct !DILexicalBlock(scope: !24, file: !1, line: 30, column: 9)
!44 = !DILocation(line: 30, column: 9, scope: !24)
!45 = !DILocation(line: 30, column: 19, scope: !43)
!46 = !DILocalVariable(name: "inttab", scope: !24, file: !1, line: 34, type: !5)
!47 = !DILocation(line: 34, column: 10, scope: !24)
!48 = !DILocation(line: 34, column: 25, scope: !24)
!49 = !DILocation(line: 34, column: 19, scope: !24)
!50 = !DILocalVariable(name: "longtab", scope: !24, file: !1, line: 35, type: !7)
!51 = !DILocation(line: 35, column: 11, scope: !24)
!52 = !DILocation(line: 35, column: 28, scope: !24)
!53 = !DILocation(line: 35, column: 21, scope: !24)
!54 = !DILocation(line: 36, column: 10, scope: !55)
!55 = distinct !DILexicalBlock(scope: !24, file: !1, line: 36, column: 9)
!56 = !DILocation(line: 36, column: 17, scope: !55)
!57 = !DILocation(line: 36, column: 21, scope: !55)
!58 = !DILocation(line: 36, column: 9, scope: !24)
!59 = !DILocation(line: 37, column: 14, scope: !60)
!60 = distinct !DILexicalBlock(scope: !55, file: !1, line: 36, column: 30)
!61 = !DILocation(line: 37, column: 9, scope: !60)
!62 = !DILocation(line: 38, column: 13, scope: !63)
!63 = distinct !DILexicalBlock(scope: !60, file: !1, line: 38, column: 13)
!64 = !DILocation(line: 38, column: 13, scope: !60)
!65 = !DILocation(line: 38, column: 26, scope: !63)
!66 = !DILocation(line: 38, column: 21, scope: !63)
!67 = !DILocation(line: 39, column: 13, scope: !68)
!68 = distinct !DILexicalBlock(scope: !60, file: !1, line: 39, column: 13)
!69 = !DILocation(line: 39, column: 13, scope: !60)
!70 = !DILocation(line: 39, column: 27, scope: !68)
!71 = !DILocation(line: 39, column: 22, scope: !68)
!72 = !DILocation(line: 40, column: 9, scope: !60)
!73 = !DILocation(line: 53, column: 12, scope: !24)
!74 = !DILocation(line: 53, column: 24, scope: !24)
!75 = !DILocation(line: 53, column: 5, scope: !24)
!76 = !DILocation(line: 57, column: 5, scope: !24)
!77 = !DILocation(line: 60, column: 5, scope: !24)
!78 = !DILocation(line: 66, column: 12, scope: !24)
!79 = !DILocation(line: 66, column: 5, scope: !24)
!80 = !DILocation(line: 67, column: 12, scope: !24)
!81 = !DILocation(line: 67, column: 5, scope: !24)
!82 = !DILocation(line: 69, column: 5, scope: !24)
!83 = !DILocation(line: 71, column: 10, scope: !24)
!84 = !DILocation(line: 71, column: 5, scope: !24)
!85 = !DILocation(line: 72, column: 10, scope: !24)
!86 = !DILocation(line: 72, column: 5, scope: !24)
!87 = !DILocation(line: 73, column: 10, scope: !24)
!88 = !DILocation(line: 73, column: 5, scope: !24)
!89 = !DILocation(line: 75, column: 5, scope: !24)
!90 = !DILocation(line: 76, column: 1, scope: !24)
!91 = distinct !DISubprogram(name: "memset", scope: !92, file: !92, line: 12, type: !93, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !22)
!92 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!93 = !DISubroutineType(types: !94)
!94 = !{!95, !95, !6, !96}
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !97, line: 46, baseType: !98)
!97 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!98 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!99 = !DILocalVariable(name: "dst", arg: 1, scope: !91, file: !92, line: 12, type: !95)
!100 = !DILocation(line: 12, column: 20, scope: !91)
!101 = !DILocalVariable(name: "s", arg: 2, scope: !91, file: !92, line: 12, type: !6)
!102 = !DILocation(line: 12, column: 29, scope: !91)
!103 = !DILocalVariable(name: "count", arg: 3, scope: !91, file: !92, line: 12, type: !96)
!104 = !DILocation(line: 12, column: 39, scope: !91)
!105 = !DILocalVariable(name: "a", scope: !91, file: !92, line: 13, type: !3)
!106 = !DILocation(line: 13, column: 9, scope: !91)
!107 = !DILocation(line: 13, column: 13, scope: !91)
!108 = !DILocation(line: 14, column: 3, scope: !91)
!109 = !DILocation(line: 14, column: 15, scope: !91)
!110 = !DILocation(line: 14, column: 18, scope: !91)
!111 = !DILocation(line: 15, column: 12, scope: !91)
!112 = !DILocation(line: 15, column: 7, scope: !91)
!113 = !DILocation(line: 15, column: 10, scope: !91)
!114 = distinct !{!114, !108, !111, !115}
!115 = !{!"llvm.loop.mustprogress"}
!116 = !DILocation(line: 16, column: 10, scope: !91)
!117 = !DILocation(line: 16, column: 3, scope: !91)

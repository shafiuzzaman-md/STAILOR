; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/147_runtest.c_671_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/147_runtest.c_671_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"r1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"r2\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"(res1 <= 4096 && res2 <= 4096) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_62911_vul/147_runtest.c_671_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !10 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca [256 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [4096 x i8], align 16
  %7 = alloca [4096 x i8], align 16
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !15, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i32* %4, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32* %5, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata [4096 x i8]* %6, metadata !27, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata [4096 x i8]* %7, metadata !32, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.declare(metadata i64* %8, metadata !34, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata i64* %9, metadata !41, metadata !DIExpression()), !dbg !42
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !43
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 256, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !44
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !45
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 256, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)), !dbg !46
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !47
  %13 = load i8, i8* %12, align 1, !dbg !47
  %14 = sext i8 %13 to i32, !dbg !47
  %15 = icmp eq i32 %14, 0, !dbg !48
  %16 = zext i1 %15 to i32, !dbg !48
  %17 = sext i32 %16 to i64, !dbg !47
  call void @klee_assume(i64 noundef %17), !dbg !49
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 255, !dbg !50
  %19 = load i8, i8* %18, align 1, !dbg !50
  %20 = sext i8 %19 to i32, !dbg !50
  %21 = icmp eq i32 %20, 0, !dbg !51
  %22 = zext i1 %21 to i32, !dbg !51
  %23 = sext i32 %22 to i64, !dbg !50
  call void @klee_assume(i64 noundef %23), !dbg !52
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !53
  %25 = call i32 (i8*, i32, ...) @open(i8* noundef %24, i32 noundef 0), !dbg !54
  store i32 %25, i32* %4, align 4, !dbg !55
  %26 = load i32, i32* %4, align 4, !dbg !56
  %27 = icmp slt i32 %26, 0, !dbg !58
  br i1 %27, label %28, label %29, !dbg !59

28:                                               ; preds = %0
  store i32 -1, i32* %1, align 4, !dbg !60
  br label %85, !dbg !60

29:                                               ; preds = %0
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !62
  %31 = call i32 (i8*, i32, ...) @open(i8* noundef %30, i32 noundef 0), !dbg !63
  store i32 %31, i32* %5, align 4, !dbg !64
  br label %32, !dbg !65

32:                                               ; preds = %29, %74
  %33 = load i32, i32* %4, align 4, !dbg !66
  %34 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0, !dbg !68
  %35 = call i64 @read(i32 noundef %33, i8* noundef %34, i64 noundef 4096), !dbg !69
  store i64 %35, i64* %8, align 8, !dbg !70
  %36 = load i32, i32* %5, align 4, !dbg !71
  %37 = icmp sge i32 %36, 0, !dbg !72
  br i1 %37, label %38, label %42, !dbg !71

38:                                               ; preds = %32
  %39 = load i32, i32* %5, align 4, !dbg !73
  %40 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0, !dbg !74
  %41 = call i64 @read(i32 noundef %39, i8* noundef %40, i64 noundef 4096), !dbg !75
  br label %43, !dbg !71

42:                                               ; preds = %32
  br label %43, !dbg !71

43:                                               ; preds = %42, %38
  %44 = phi i64 [ %41, %38 ], [ 0, %42 ], !dbg !71
  store i64 %44, i64* %9, align 8, !dbg !76
  %45 = load i64, i64* %8, align 8, !dbg !77
  %46 = load i64, i64* %9, align 8, !dbg !79
  %47 = icmp ne i64 %45, %46, !dbg !80
  br i1 %47, label %51, label %48, !dbg !81

48:                                               ; preds = %43
  %49 = load i64, i64* %8, align 8, !dbg !82
  %50 = icmp slt i64 %49, 0, !dbg !83
  br i1 %50, label %51, label %60, !dbg !84

51:                                               ; preds = %48, %43
  %52 = load i32, i32* %4, align 4, !dbg !85
  %53 = call i32 @close(i32 noundef %52), !dbg !87
  %54 = load i32, i32* %5, align 4, !dbg !88
  %55 = icmp sge i32 %54, 0, !dbg !90
  br i1 %55, label %56, label %59, !dbg !91

56:                                               ; preds = %51
  %57 = load i32, i32* %5, align 4, !dbg !92
  %58 = call i32 @close(i32 noundef %57), !dbg !94
  br label %59, !dbg !95

59:                                               ; preds = %56, %51
  store i32 1, i32* %1, align 4, !dbg !96
  br label %85, !dbg !96

60:                                               ; preds = %48
  %61 = load i64, i64* %8, align 8, !dbg !97
  %62 = icmp eq i64 %61, 0, !dbg !99
  br i1 %62, label %63, label %64, !dbg !100

63:                                               ; preds = %60
  br label %76, !dbg !101

64:                                               ; preds = %60
  %65 = load i64, i64* %8, align 8, !dbg !103
  %66 = icmp sle i64 %65, 4096, !dbg !103
  br i1 %66, label %67, label %72, !dbg !103

67:                                               ; preds = %64
  %68 = load i64, i64* %9, align 8, !dbg !103
  %69 = icmp sle i64 %68, 4096, !dbg !103
  br i1 %69, label %70, label %72, !dbg !103

70:                                               ; preds = %67
  br i1 true, label %71, label %72, !dbg !103

71:                                               ; preds = %70
  br label %74, !dbg !103

72:                                               ; preds = %70, %67, %64
  %73 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.4, i64 0, i64 0), i32 noundef 47, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !103
  br label %74, !dbg !103

74:                                               ; preds = %72, %71
  %75 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.4, i64 0, i64 0), i32 noundef 48, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !104
  br label %32, !dbg !65, !llvm.loop !105

76:                                               ; preds = %63
  %77 = load i32, i32* %4, align 4, !dbg !107
  %78 = call i32 @close(i32 noundef %77), !dbg !108
  %79 = load i32, i32* %5, align 4, !dbg !109
  %80 = icmp sge i32 %79, 0, !dbg !111
  br i1 %80, label %81, label %84, !dbg !112

81:                                               ; preds = %76
  %82 = load i32, i32* %5, align 4, !dbg !113
  %83 = call i32 @close(i32 noundef %82), !dbg !115
  br label %84, !dbg !116

84:                                               ; preds = %81, %76
  store i32 0, i32* %1, align 4, !dbg !117
  br label %85, !dbg !117

85:                                               ; preds = %84, %59, %28
  %86 = load i32, i32* %1, align 4, !dbg !118
  ret i32 %86, !dbg !118
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

declare i32 @open(i8* noundef, i32 noundef, ...) #2

declare i64 @read(i32 noundef, i8* noundef, i64 noundef) #2

declare i32 @close(i32 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/147_runtest.c_671_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "ba5a0f8362f82f63423f1926f50d06e4")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.6"}
!10 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 12, type: !11, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "r1", scope: !10, file: !1, line: 13, type: !16)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 2048, elements: !18)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !{!19}
!19 = !DISubrange(count: 256)
!20 = !DILocation(line: 13, column: 10, scope: !10)
!21 = !DILocalVariable(name: "r2", scope: !10, file: !1, line: 13, type: !16)
!22 = !DILocation(line: 13, column: 19, scope: !10)
!23 = !DILocalVariable(name: "fd1", scope: !10, file: !1, line: 14, type: !13)
!24 = !DILocation(line: 14, column: 9, scope: !10)
!25 = !DILocalVariable(name: "fd2", scope: !10, file: !1, line: 14, type: !13)
!26 = !DILocation(line: 14, column: 14, scope: !10)
!27 = !DILocalVariable(name: "bytes1", scope: !10, file: !1, line: 15, type: !28)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 32768, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 4096)
!31 = !DILocation(line: 15, column: 10, scope: !10)
!32 = !DILocalVariable(name: "bytes2", scope: !10, file: !1, line: 15, type: !28)
!33 = !DILocation(line: 15, column: 24, scope: !10)
!34 = !DILocalVariable(name: "res1", scope: !10, file: !1, line: 16, type: !35)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !36, line: 220, baseType: !37)
!36 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "877e832a8bb8424f9180387a13787475")
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !38, line: 194, baseType: !39)
!38 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!39 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!40 = !DILocation(line: 16, column: 13, scope: !10)
!41 = !DILocalVariable(name: "res2", scope: !10, file: !1, line: 16, type: !35)
!42 = !DILocation(line: 16, column: 19, scope: !10)
!43 = !DILocation(line: 18, column: 24, scope: !10)
!44 = !DILocation(line: 18, column: 5, scope: !10)
!45 = !DILocation(line: 19, column: 24, scope: !10)
!46 = !DILocation(line: 19, column: 5, scope: !10)
!47 = !DILocation(line: 21, column: 17, scope: !10)
!48 = !DILocation(line: 21, column: 34, scope: !10)
!49 = !DILocation(line: 21, column: 5, scope: !10)
!50 = !DILocation(line: 22, column: 17, scope: !10)
!51 = !DILocation(line: 22, column: 34, scope: !10)
!52 = !DILocation(line: 22, column: 5, scope: !10)
!53 = !DILocation(line: 24, column: 16, scope: !10)
!54 = !DILocation(line: 24, column: 11, scope: !10)
!55 = !DILocation(line: 24, column: 9, scope: !10)
!56 = !DILocation(line: 25, column: 9, scope: !57)
!57 = distinct !DILexicalBlock(scope: !10, file: !1, line: 25, column: 9)
!58 = !DILocation(line: 25, column: 13, scope: !57)
!59 = !DILocation(line: 25, column: 9, scope: !10)
!60 = !DILocation(line: 26, column: 9, scope: !61)
!61 = distinct !DILexicalBlock(scope: !57, file: !1, line: 25, column: 18)
!62 = !DILocation(line: 29, column: 16, scope: !10)
!63 = !DILocation(line: 29, column: 11, scope: !10)
!64 = !DILocation(line: 29, column: 9, scope: !10)
!65 = !DILocation(line: 31, column: 5, scope: !10)
!66 = !DILocation(line: 32, column: 21, scope: !67)
!67 = distinct !DILexicalBlock(scope: !10, file: !1, line: 31, column: 15)
!68 = !DILocation(line: 32, column: 26, scope: !67)
!69 = !DILocation(line: 32, column: 16, scope: !67)
!70 = !DILocation(line: 32, column: 14, scope: !67)
!71 = !DILocation(line: 33, column: 16, scope: !67)
!72 = !DILocation(line: 33, column: 20, scope: !67)
!73 = !DILocation(line: 33, column: 32, scope: !67)
!74 = !DILocation(line: 33, column: 37, scope: !67)
!75 = !DILocation(line: 33, column: 27, scope: !67)
!76 = !DILocation(line: 33, column: 14, scope: !67)
!77 = !DILocation(line: 35, column: 14, scope: !78)
!78 = distinct !DILexicalBlock(scope: !67, file: !1, line: 35, column: 13)
!79 = !DILocation(line: 35, column: 22, scope: !78)
!80 = !DILocation(line: 35, column: 19, scope: !78)
!81 = !DILocation(line: 35, column: 28, scope: !78)
!82 = !DILocation(line: 35, column: 32, scope: !78)
!83 = !DILocation(line: 35, column: 37, scope: !78)
!84 = !DILocation(line: 35, column: 13, scope: !67)
!85 = !DILocation(line: 36, column: 19, scope: !86)
!86 = distinct !DILexicalBlock(scope: !78, file: !1, line: 35, column: 43)
!87 = !DILocation(line: 36, column: 13, scope: !86)
!88 = !DILocation(line: 37, column: 17, scope: !89)
!89 = distinct !DILexicalBlock(scope: !86, file: !1, line: 37, column: 17)
!90 = !DILocation(line: 37, column: 21, scope: !89)
!91 = !DILocation(line: 37, column: 17, scope: !86)
!92 = !DILocation(line: 38, column: 23, scope: !93)
!93 = distinct !DILexicalBlock(scope: !89, file: !1, line: 37, column: 27)
!94 = !DILocation(line: 38, column: 17, scope: !93)
!95 = !DILocation(line: 39, column: 13, scope: !93)
!96 = !DILocation(line: 40, column: 13, scope: !86)
!97 = !DILocation(line: 43, column: 13, scope: !98)
!98 = distinct !DILexicalBlock(scope: !67, file: !1, line: 43, column: 13)
!99 = !DILocation(line: 43, column: 18, scope: !98)
!100 = !DILocation(line: 43, column: 13, scope: !67)
!101 = !DILocation(line: 44, column: 13, scope: !102)
!102 = distinct !DILexicalBlock(scope: !98, file: !1, line: 43, column: 24)
!103 = !DILocation(line: 47, column: 9, scope: !67)
!104 = !DILocation(line: 48, column: 9, scope: !67)
!105 = distinct !{!105, !65, !106}
!106 = !DILocation(line: 49, column: 5, scope: !10)
!107 = !DILocation(line: 51, column: 11, scope: !10)
!108 = !DILocation(line: 51, column: 5, scope: !10)
!109 = !DILocation(line: 52, column: 9, scope: !110)
!110 = distinct !DILexicalBlock(scope: !10, file: !1, line: 52, column: 9)
!111 = !DILocation(line: 52, column: 13, scope: !110)
!112 = !DILocation(line: 52, column: 9, scope: !10)
!113 = !DILocation(line: 53, column: 15, scope: !114)
!114 = distinct !DILexicalBlock(scope: !110, file: !1, line: 52, column: 19)
!115 = !DILocation(line: 53, column: 9, scope: !114)
!116 = !DILocation(line: 54, column: 5, scope: !114)
!117 = !DILocation(line: 56, column: 5, scope: !10)
!118 = !DILocation(line: 57, column: 1, scope: !10)

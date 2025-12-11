; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/146_runtest.c_670_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/146_runtest.c_670_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"r1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"r2\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [80 x i8] c"(res1 >= 0 && res1 <= 4096 && res2 >= 0 && res2 <= 4096) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_62911_vul/146_runtest.c_670_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !10 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca [256 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [4096 x i8], align 16
  %9 = alloca [4096 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !15, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i32* %4, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32* %5, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata i64* %6, metadata !27, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.declare(metadata i64* %7, metadata !34, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.declare(metadata [4096 x i8]* %8, metadata !36, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata [4096 x i8]* %9, metadata !42, metadata !DIExpression()), !dbg !43
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !44
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 256, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !45
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !46
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 256, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)), !dbg !47
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !48
  %13 = load i8, i8* %12, align 1, !dbg !48
  %14 = sext i8 %13 to i32, !dbg !48
  %15 = icmp eq i32 %14, 0, !dbg !49
  %16 = zext i1 %15 to i32, !dbg !49
  %17 = sext i32 %16 to i64, !dbg !48
  call void @klee_assume(i64 noundef %17), !dbg !50
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 255, !dbg !51
  %19 = load i8, i8* %18, align 1, !dbg !51
  %20 = sext i8 %19 to i32, !dbg !51
  %21 = icmp eq i32 %20, 0, !dbg !52
  %22 = zext i1 %21 to i32, !dbg !52
  %23 = sext i32 %22 to i64, !dbg !51
  call void @klee_assume(i64 noundef %23), !dbg !53
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !54
  %25 = call i32 (i8*, i32, ...) @open(i8* noundef %24, i32 noundef 0), !dbg !55
  store i32 %25, i32* %4, align 4, !dbg !56
  %26 = load i32, i32* %4, align 4, !dbg !57
  %27 = icmp slt i32 %26, 0, !dbg !59
  br i1 %27, label %28, label %29, !dbg !60

28:                                               ; preds = %0
  store i32 -1, i32* %1, align 4, !dbg !61
  br label %91, !dbg !61

29:                                               ; preds = %0
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !63
  %31 = call i32 (i8*, i32, ...) @open(i8* noundef %30, i32 noundef 0), !dbg !64
  store i32 %31, i32* %5, align 4, !dbg !65
  br label %32, !dbg !66

32:                                               ; preds = %29, %81
  %33 = load i32, i32* %4, align 4, !dbg !67
  %34 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0, !dbg !69
  %35 = call i64 @read(i32 noundef %33, i8* noundef %34, i64 noundef 4096), !dbg !70
  store i64 %35, i64* %6, align 8, !dbg !71
  %36 = load i32, i32* %5, align 4, !dbg !72
  %37 = icmp sge i32 %36, 0, !dbg !73
  br i1 %37, label %38, label %42, !dbg !72

38:                                               ; preds = %32
  %39 = load i32, i32* %5, align 4, !dbg !74
  %40 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0, !dbg !75
  %41 = call i64 @read(i32 noundef %39, i8* noundef %40, i64 noundef 4096), !dbg !76
  br label %43, !dbg !72

42:                                               ; preds = %32
  br label %43, !dbg !72

43:                                               ; preds = %42, %38
  %44 = phi i64 [ %41, %38 ], [ 0, %42 ], !dbg !72
  store i64 %44, i64* %7, align 8, !dbg !77
  %45 = load i64, i64* %6, align 8, !dbg !78
  %46 = load i64, i64* %7, align 8, !dbg !80
  %47 = icmp ne i64 %45, %46, !dbg !81
  br i1 %47, label %51, label %48, !dbg !82

48:                                               ; preds = %43
  %49 = load i64, i64* %6, align 8, !dbg !83
  %50 = icmp slt i64 %49, 0, !dbg !84
  br i1 %50, label %51, label %77, !dbg !85

51:                                               ; preds = %48, %43
  %52 = load i32, i32* %4, align 4, !dbg !86
  %53 = call i32 @close(i32 noundef %52), !dbg !88
  %54 = load i32, i32* %5, align 4, !dbg !89
  %55 = icmp sge i32 %54, 0, !dbg !91
  br i1 %55, label %56, label %59, !dbg !92

56:                                               ; preds = %51
  %57 = load i32, i32* %5, align 4, !dbg !93
  %58 = call i32 @close(i32 noundef %57), !dbg !95
  br label %59, !dbg !96

59:                                               ; preds = %56, %51
  %60 = load i64, i64* %6, align 8, !dbg !97
  %61 = icmp sge i64 %60, 0, !dbg !97
  br i1 %61, label %62, label %73, !dbg !97

62:                                               ; preds = %59
  %63 = load i64, i64* %6, align 8, !dbg !97
  %64 = icmp sle i64 %63, 4096, !dbg !97
  br i1 %64, label %65, label %73, !dbg !97

65:                                               ; preds = %62
  %66 = load i64, i64* %7, align 8, !dbg !97
  %67 = icmp sge i64 %66, 0, !dbg !97
  br i1 %67, label %68, label %73, !dbg !97

68:                                               ; preds = %65
  %69 = load i64, i64* %7, align 8, !dbg !97
  %70 = icmp sle i64 %69, 4096, !dbg !97
  br i1 %70, label %71, label %73, !dbg !97

71:                                               ; preds = %68
  br i1 true, label %72, label %73, !dbg !97

72:                                               ; preds = %71
  br label %75, !dbg !97

73:                                               ; preds = %71, %68, %65, %62, %59
  %74 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.4, i64 0, i64 0), i32 noundef 44, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !97
  br label %75, !dbg !97

75:                                               ; preds = %73, %72
  %76 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.4, i64 0, i64 0), i32 noundef 45, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !98
  store i32 0, i32* %1, align 4, !dbg !99
  br label %91, !dbg !99

77:                                               ; preds = %48
  %78 = load i64, i64* %6, align 8, !dbg !100
  %79 = icmp eq i64 %78, 0, !dbg !102
  br i1 %79, label %80, label %81, !dbg !103

80:                                               ; preds = %77
  br label %82, !dbg !104

81:                                               ; preds = %77
  br label %32, !dbg !66, !llvm.loop !106

82:                                               ; preds = %80
  %83 = load i32, i32* %4, align 4, !dbg !108
  %84 = call i32 @close(i32 noundef %83), !dbg !109
  %85 = load i32, i32* %5, align 4, !dbg !110
  %86 = icmp sge i32 %85, 0, !dbg !112
  br i1 %86, label %87, label %90, !dbg !113

87:                                               ; preds = %82
  %88 = load i32, i32* %5, align 4, !dbg !114
  %89 = call i32 @close(i32 noundef %88), !dbg !116
  br label %90, !dbg !117

90:                                               ; preds = %87, %82
  store i32 0, i32* %1, align 4, !dbg !118
  br label %91, !dbg !118

91:                                               ; preds = %90, %75, %28
  %92 = load i32, i32* %1, align 4, !dbg !119
  ret i32 %92, !dbg !119
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
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/146_runtest.c_670_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "b0c3b402b5857604269f5d6cc79e7dd6")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.6"}
!10 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 13, type: !11, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "r1", scope: !10, file: !1, line: 14, type: !16)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 2048, elements: !18)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !{!19}
!19 = !DISubrange(count: 256)
!20 = !DILocation(line: 14, column: 10, scope: !10)
!21 = !DILocalVariable(name: "r2", scope: !10, file: !1, line: 15, type: !16)
!22 = !DILocation(line: 15, column: 10, scope: !10)
!23 = !DILocalVariable(name: "fd1", scope: !10, file: !1, line: 16, type: !13)
!24 = !DILocation(line: 16, column: 9, scope: !10)
!25 = !DILocalVariable(name: "fd2", scope: !10, file: !1, line: 16, type: !13)
!26 = !DILocation(line: 16, column: 14, scope: !10)
!27 = !DILocalVariable(name: "res1", scope: !10, file: !1, line: 17, type: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !29, line: 220, baseType: !30)
!29 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "877e832a8bb8424f9180387a13787475")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !31, line: 194, baseType: !32)
!31 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!32 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!33 = !DILocation(line: 17, column: 13, scope: !10)
!34 = !DILocalVariable(name: "res2", scope: !10, file: !1, line: 17, type: !28)
!35 = !DILocation(line: 17, column: 19, scope: !10)
!36 = !DILocalVariable(name: "bytes1", scope: !10, file: !1, line: 18, type: !37)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 32768, elements: !39)
!38 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!39 = !{!40}
!40 = !DISubrange(count: 4096)
!41 = !DILocation(line: 18, column: 19, scope: !10)
!42 = !DILocalVariable(name: "bytes2", scope: !10, file: !1, line: 19, type: !37)
!43 = !DILocation(line: 19, column: 19, scope: !10)
!44 = !DILocation(line: 21, column: 24, scope: !10)
!45 = !DILocation(line: 21, column: 5, scope: !10)
!46 = !DILocation(line: 22, column: 24, scope: !10)
!47 = !DILocation(line: 22, column: 5, scope: !10)
!48 = !DILocation(line: 24, column: 17, scope: !10)
!49 = !DILocation(line: 24, column: 34, scope: !10)
!50 = !DILocation(line: 24, column: 5, scope: !10)
!51 = !DILocation(line: 25, column: 17, scope: !10)
!52 = !DILocation(line: 25, column: 34, scope: !10)
!53 = !DILocation(line: 25, column: 5, scope: !10)
!54 = !DILocation(line: 27, column: 16, scope: !10)
!55 = !DILocation(line: 27, column: 11, scope: !10)
!56 = !DILocation(line: 27, column: 9, scope: !10)
!57 = !DILocation(line: 28, column: 9, scope: !58)
!58 = distinct !DILexicalBlock(scope: !10, file: !1, line: 28, column: 9)
!59 = !DILocation(line: 28, column: 13, scope: !58)
!60 = !DILocation(line: 28, column: 9, scope: !10)
!61 = !DILocation(line: 29, column: 9, scope: !62)
!62 = distinct !DILexicalBlock(scope: !58, file: !1, line: 28, column: 18)
!63 = !DILocation(line: 32, column: 16, scope: !10)
!64 = !DILocation(line: 32, column: 11, scope: !10)
!65 = !DILocation(line: 32, column: 9, scope: !10)
!66 = !DILocation(line: 34, column: 5, scope: !10)
!67 = !DILocation(line: 35, column: 21, scope: !68)
!68 = distinct !DILexicalBlock(scope: !10, file: !1, line: 34, column: 15)
!69 = !DILocation(line: 35, column: 26, scope: !68)
!70 = !DILocation(line: 35, column: 16, scope: !68)
!71 = !DILocation(line: 35, column: 14, scope: !68)
!72 = !DILocation(line: 36, column: 16, scope: !68)
!73 = !DILocation(line: 36, column: 20, scope: !68)
!74 = !DILocation(line: 36, column: 32, scope: !68)
!75 = !DILocation(line: 36, column: 37, scope: !68)
!76 = !DILocation(line: 36, column: 27, scope: !68)
!77 = !DILocation(line: 36, column: 14, scope: !68)
!78 = !DILocation(line: 38, column: 14, scope: !79)
!79 = distinct !DILexicalBlock(scope: !68, file: !1, line: 38, column: 13)
!80 = !DILocation(line: 38, column: 22, scope: !79)
!81 = !DILocation(line: 38, column: 19, scope: !79)
!82 = !DILocation(line: 38, column: 28, scope: !79)
!83 = !DILocation(line: 38, column: 32, scope: !79)
!84 = !DILocation(line: 38, column: 37, scope: !79)
!85 = !DILocation(line: 38, column: 13, scope: !68)
!86 = !DILocation(line: 39, column: 19, scope: !87)
!87 = distinct !DILexicalBlock(scope: !79, file: !1, line: 38, column: 43)
!88 = !DILocation(line: 39, column: 13, scope: !87)
!89 = !DILocation(line: 40, column: 17, scope: !90)
!90 = distinct !DILexicalBlock(scope: !87, file: !1, line: 40, column: 17)
!91 = !DILocation(line: 40, column: 21, scope: !90)
!92 = !DILocation(line: 40, column: 17, scope: !87)
!93 = !DILocation(line: 41, column: 23, scope: !94)
!94 = distinct !DILexicalBlock(scope: !90, file: !1, line: 40, column: 27)
!95 = !DILocation(line: 41, column: 17, scope: !94)
!96 = !DILocation(line: 42, column: 13, scope: !94)
!97 = !DILocation(line: 44, column: 13, scope: !87)
!98 = !DILocation(line: 45, column: 13, scope: !87)
!99 = !DILocation(line: 46, column: 13, scope: !87)
!100 = !DILocation(line: 49, column: 13, scope: !101)
!101 = distinct !DILexicalBlock(scope: !68, file: !1, line: 49, column: 13)
!102 = !DILocation(line: 49, column: 18, scope: !101)
!103 = !DILocation(line: 49, column: 13, scope: !68)
!104 = !DILocation(line: 50, column: 13, scope: !105)
!105 = distinct !DILexicalBlock(scope: !101, file: !1, line: 49, column: 24)
!106 = distinct !{!106, !66, !107}
!107 = !DILocation(line: 52, column: 5, scope: !10)
!108 = !DILocation(line: 54, column: 11, scope: !10)
!109 = !DILocation(line: 54, column: 5, scope: !10)
!110 = !DILocation(line: 55, column: 9, scope: !111)
!111 = distinct !DILexicalBlock(scope: !10, file: !1, line: 55, column: 9)
!112 = !DILocation(line: 55, column: 13, scope: !111)
!113 = !DILocation(line: 55, column: 9, scope: !10)
!114 = !DILocation(line: 56, column: 15, scope: !115)
!115 = distinct !DILexicalBlock(scope: !111, file: !1, line: 55, column: 19)
!116 = !DILocation(line: 56, column: 9, scope: !115)
!117 = !DILocation(line: 57, column: 5, scope: !115)
!118 = !DILocation(line: 59, column: 5, scope: !10)
!119 = !DILocation(line: 60, column: 1, scope: !10)

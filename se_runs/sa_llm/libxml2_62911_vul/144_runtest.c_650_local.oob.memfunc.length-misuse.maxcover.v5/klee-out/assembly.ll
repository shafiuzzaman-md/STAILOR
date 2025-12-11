; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/144_runtest.c_650_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/144_runtest.c_650_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"/dev/zero\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"(res1 <= 4096) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_62911_vul/144_runtest.c_650_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !10 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [4096 x i8], align 16
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %3, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata [4096 x i8]* %4, metadata !19, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i64* %5, metadata !25, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata i64* %6, metadata !32, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.declare(metadata i32* %7, metadata !34, metadata !DIExpression()), !dbg !35
  %8 = call i32 (i8*, i32, ...) @open(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 0), !dbg !36
  store i32 %8, i32* %2, align 4, !dbg !37
  %9 = load i32, i32* %2, align 4, !dbg !38
  %10 = icmp slt i32 %9, 0, !dbg !40
  br i1 %10, label %11, label %12, !dbg !41

11:                                               ; preds = %0
  store i32 -1, i32* %1, align 4, !dbg !42
  br label %59, !dbg !42

12:                                               ; preds = %0
  %13 = call i32 (i8*, i32, ...) @open(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1), !dbg !44
  store i32 %13, i32* %3, align 4, !dbg !45
  %14 = load i32, i32* %3, align 4, !dbg !46
  %15 = icmp slt i32 %14, 0, !dbg !48
  br i1 %15, label %16, label %19, !dbg !49

16:                                               ; preds = %12
  %17 = load i32, i32* %2, align 4, !dbg !50
  %18 = call i32 @close(i32 noundef %17), !dbg !52
  store i32 -1, i32* %1, align 4, !dbg !53
  br label %59, !dbg !53

19:                                               ; preds = %12
  store i32 0, i32* %7, align 4, !dbg !54
  br label %20, !dbg !55

20:                                               ; preds = %53, %19
  %21 = load i32, i32* %2, align 4, !dbg !56
  %22 = getelementptr inbounds [4096 x i8], [4096 x i8]* %4, i64 0, i64 0, !dbg !58
  %23 = call i64 @read(i32 noundef %21, i8* noundef %22, i64 noundef 4096), !dbg !59
  store i64 %23, i64* %5, align 8, !dbg !60
  %24 = load i64, i64* %5, align 8, !dbg !61
  %25 = icmp sle i64 %24, 0, !dbg !63
  br i1 %25, label %26, label %27, !dbg !64

26:                                               ; preds = %20
  br label %54, !dbg !65

27:                                               ; preds = %20
  %28 = load i64, i64* %5, align 8, !dbg !66
  %29 = load i32, i32* %7, align 4, !dbg !67
  %30 = sext i32 %29 to i64, !dbg !67
  %31 = add nsw i64 %30, %28, !dbg !67
  %32 = trunc i64 %31 to i32, !dbg !67
  store i32 %32, i32* %7, align 4, !dbg !67
  %33 = load i32, i32* %3, align 4, !dbg !68
  %34 = getelementptr inbounds [4096 x i8], [4096 x i8]* %4, i64 0, i64 0, !dbg !69
  %35 = load i64, i64* %5, align 8, !dbg !70
  %36 = call i64 @write(i32 noundef %33, i8* noundef %34, i64 noundef %35), !dbg !71
  store i64 %36, i64* %6, align 8, !dbg !72
  %37 = load i64, i64* %6, align 8, !dbg !73
  %38 = icmp sle i64 %37, 0, !dbg !75
  br i1 %38, label %43, label %39, !dbg !76

39:                                               ; preds = %27
  %40 = load i64, i64* %6, align 8, !dbg !77
  %41 = load i64, i64* %5, align 8, !dbg !78
  %42 = icmp ne i64 %40, %41, !dbg !79
  br i1 %42, label %43, label %52, !dbg !80

43:                                               ; preds = %39, %27
  %44 = load i64, i64* %5, align 8, !dbg !81
  %45 = icmp sle i64 %44, 4096, !dbg !81
  br i1 %45, label %46, label %48, !dbg !81

46:                                               ; preds = %43
  br i1 true, label %47, label %48, !dbg !81

47:                                               ; preds = %46
  br label %50, !dbg !81

48:                                               ; preds = %46, %43
  %49 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.4, i64 0, i64 0), i32 noundef 35, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !81
  br label %50, !dbg !81

50:                                               ; preds = %48, %47
  %51 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.4, i64 0, i64 0), i32 noundef 36, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !83
  br label %52, !dbg !84

52:                                               ; preds = %50, %39
  br label %53, !dbg !85

53:                                               ; preds = %52
  br i1 true, label %20, label %54, !dbg !85, !llvm.loop !86

54:                                               ; preds = %53, %26
  %55 = load i32, i32* %2, align 4, !dbg !88
  %56 = call i32 @close(i32 noundef %55), !dbg !89
  %57 = load i32, i32* %3, align 4, !dbg !90
  %58 = call i32 @close(i32 noundef %57), !dbg !91
  store i32 0, i32* %1, align 4, !dbg !92
  br label %59, !dbg !92

59:                                               ; preds = %54, %16, %11
  %60 = load i32, i32* %1, align 4, !dbg !93
  ret i32 %60, !dbg !93
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @open(i8* noundef, i32 noundef, ...) #2

declare i32 @close(i32 noundef) #2

declare i64 @read(i32 noundef, i8* noundef, i64 noundef) #2

declare i64 @write(i32 noundef, i8* noundef, i64 noundef) #2

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
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/144_runtest.c_650_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "d0c786a73b797a0335a377bae129269a")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.6"}
!10 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 10, type: !11, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "fd1", scope: !10, file: !1, line: 11, type: !13)
!16 = !DILocation(line: 11, column: 9, scope: !10)
!17 = !DILocalVariable(name: "fd2", scope: !10, file: !1, line: 11, type: !13)
!18 = !DILocation(line: 11, column: 14, scope: !10)
!19 = !DILocalVariable(name: "bytes1", scope: !10, file: !1, line: 12, type: !20)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 32768, elements: !22)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!22 = !{!23}
!23 = !DISubrange(count: 4096)
!24 = !DILocation(line: 12, column: 10, scope: !10)
!25 = !DILocalVariable(name: "res1", scope: !10, file: !1, line: 13, type: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !27, line: 220, baseType: !28)
!27 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "877e832a8bb8424f9180387a13787475")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !29, line: 194, baseType: !30)
!29 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!30 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!31 = !DILocation(line: 13, column: 13, scope: !10)
!32 = !DILocalVariable(name: "res2", scope: !10, file: !1, line: 13, type: !26)
!33 = !DILocation(line: 13, column: 19, scope: !10)
!34 = !DILocalVariable(name: "total", scope: !10, file: !1, line: 14, type: !13)
!35 = !DILocation(line: 14, column: 9, scope: !10)
!36 = !DILocation(line: 16, column: 11, scope: !10)
!37 = !DILocation(line: 16, column: 9, scope: !10)
!38 = !DILocation(line: 17, column: 9, scope: !39)
!39 = distinct !DILexicalBlock(scope: !10, file: !1, line: 17, column: 9)
!40 = !DILocation(line: 17, column: 13, scope: !39)
!41 = !DILocation(line: 17, column: 9, scope: !10)
!42 = !DILocation(line: 18, column: 9, scope: !43)
!43 = distinct !DILexicalBlock(scope: !39, file: !1, line: 17, column: 18)
!44 = !DILocation(line: 21, column: 11, scope: !10)
!45 = !DILocation(line: 21, column: 9, scope: !10)
!46 = !DILocation(line: 22, column: 9, scope: !47)
!47 = distinct !DILexicalBlock(scope: !10, file: !1, line: 22, column: 9)
!48 = !DILocation(line: 22, column: 13, scope: !47)
!49 = !DILocation(line: 22, column: 9, scope: !10)
!50 = !DILocation(line: 23, column: 15, scope: !51)
!51 = distinct !DILexicalBlock(scope: !47, file: !1, line: 22, column: 18)
!52 = !DILocation(line: 23, column: 9, scope: !51)
!53 = !DILocation(line: 24, column: 9, scope: !51)
!54 = !DILocation(line: 27, column: 11, scope: !10)
!55 = !DILocation(line: 28, column: 5, scope: !10)
!56 = !DILocation(line: 29, column: 21, scope: !57)
!57 = distinct !DILexicalBlock(scope: !10, file: !1, line: 28, column: 8)
!58 = !DILocation(line: 29, column: 26, scope: !57)
!59 = !DILocation(line: 29, column: 16, scope: !57)
!60 = !DILocation(line: 29, column: 14, scope: !57)
!61 = !DILocation(line: 30, column: 13, scope: !62)
!62 = distinct !DILexicalBlock(scope: !57, file: !1, line: 30, column: 13)
!63 = !DILocation(line: 30, column: 18, scope: !62)
!64 = !DILocation(line: 30, column: 13, scope: !57)
!65 = !DILocation(line: 31, column: 13, scope: !62)
!66 = !DILocation(line: 32, column: 18, scope: !57)
!67 = !DILocation(line: 32, column: 15, scope: !57)
!68 = !DILocation(line: 33, column: 22, scope: !57)
!69 = !DILocation(line: 33, column: 27, scope: !57)
!70 = !DILocation(line: 33, column: 35, scope: !57)
!71 = !DILocation(line: 33, column: 16, scope: !57)
!72 = !DILocation(line: 33, column: 14, scope: !57)
!73 = !DILocation(line: 34, column: 13, scope: !74)
!74 = distinct !DILexicalBlock(scope: !57, file: !1, line: 34, column: 13)
!75 = !DILocation(line: 34, column: 18, scope: !74)
!76 = !DILocation(line: 34, column: 23, scope: !74)
!77 = !DILocation(line: 34, column: 26, scope: !74)
!78 = !DILocation(line: 34, column: 34, scope: !74)
!79 = !DILocation(line: 34, column: 31, scope: !74)
!80 = !DILocation(line: 34, column: 13, scope: !57)
!81 = !DILocation(line: 35, column: 13, scope: !82)
!82 = distinct !DILexicalBlock(scope: !74, file: !1, line: 34, column: 40)
!83 = !DILocation(line: 36, column: 13, scope: !82)
!84 = !DILocation(line: 37, column: 9, scope: !82)
!85 = !DILocation(line: 38, column: 5, scope: !57)
!86 = distinct !{!86, !55, !87}
!87 = !DILocation(line: 38, column: 15, scope: !10)
!88 = !DILocation(line: 40, column: 11, scope: !10)
!89 = !DILocation(line: 40, column: 5, scope: !10)
!90 = !DILocation(line: 41, column: 11, scope: !10)
!91 = !DILocation(line: 41, column: 5, scope: !10)
!92 = !DILocation(line: 42, column: 5, scope: !10)
!93 = !DILocation(line: 43, column: 1, scope: !10)

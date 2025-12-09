; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/144_runtest.c_650_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/144_runtest.c_650_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"r1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"r2\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_62911_vul/144_runtest.c_650_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !10 {
  %1 = alloca i32, align 4
  %2 = alloca [4096 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [256 x i8], align 16
  %9 = alloca [256 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [4096 x i8]* %2, metadata !15, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i32* %3, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i32* %4, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i64* %5, metadata !25, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata i64* %6, metadata !32, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.declare(metadata i32* %7, metadata !34, metadata !DIExpression()), !dbg !35
  store i32 0, i32* %7, align 4, !dbg !35
  call void @llvm.dbg.declare(metadata [256 x i8]* %8, metadata !36, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata [256 x i8]* %9, metadata !41, metadata !DIExpression()), !dbg !42
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0, !dbg !43
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 256, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !44
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0, !dbg !45
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 256, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)), !dbg !46
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 255, !dbg !47
  %13 = load i8, i8* %12, align 1, !dbg !47
  %14 = sext i8 %13 to i32, !dbg !47
  %15 = icmp eq i32 %14, 0, !dbg !48
  %16 = zext i1 %15 to i32, !dbg !48
  %17 = sext i32 %16 to i64, !dbg !47
  call void @klee_assume(i64 noundef %17), !dbg !49
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 255, !dbg !50
  %19 = load i8, i8* %18, align 1, !dbg !50
  %20 = sext i8 %19 to i32, !dbg !50
  %21 = icmp eq i32 %20, 0, !dbg !51
  %22 = zext i1 %21 to i32, !dbg !51
  %23 = sext i32 %22 to i64, !dbg !50
  call void @klee_assume(i64 noundef %23), !dbg !52
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0, !dbg !53
  %25 = call i32 (i8*, i32, ...) @open(i8* noundef %24, i32 noundef 0), !dbg !54
  store i32 %25, i32* %3, align 4, !dbg !55
  %26 = load i32, i32* %3, align 4, !dbg !56
  %27 = icmp slt i32 %26, 0, !dbg !58
  br i1 %27, label %28, label %29, !dbg !59

28:                                               ; preds = %0
  store i32 -1, i32* %1, align 4, !dbg !60
  br label %70, !dbg !60

29:                                               ; preds = %0
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0, !dbg !62
  %31 = call i32 (i8*, i32, ...) @open(i8* noundef %30, i32 noundef 577, i32 noundef 420), !dbg !63
  store i32 %31, i32* %4, align 4, !dbg !64
  %32 = load i32, i32* %4, align 4, !dbg !65
  %33 = icmp slt i32 %32, 0, !dbg !67
  br i1 %33, label %34, label %37, !dbg !68

34:                                               ; preds = %29
  %35 = load i32, i32* %3, align 4, !dbg !69
  %36 = call i32 @close(i32 noundef %35), !dbg !71
  store i32 -1, i32* %1, align 4, !dbg !72
  br label %70, !dbg !72

37:                                               ; preds = %29
  br label %38, !dbg !73

38:                                               ; preds = %64, %37
  %39 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.3, i64 0, i64 0), i32 noundef 37, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !74
  %40 = load i32, i32* %3, align 4, !dbg !76
  %41 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0, !dbg !77
  %42 = call i64 @read(i32 noundef %40, i8* noundef %41, i64 noundef 4096), !dbg !78
  store i64 %42, i64* %5, align 8, !dbg !79
  %43 = load i64, i64* %5, align 8, !dbg !80
  %44 = icmp sle i64 %43, 0, !dbg !82
  br i1 %44, label %45, label %46, !dbg !83

45:                                               ; preds = %38
  br label %65, !dbg !84

46:                                               ; preds = %38
  %47 = load i64, i64* %5, align 8, !dbg !85
  %48 = load i32, i32* %7, align 4, !dbg !86
  %49 = sext i32 %48 to i64, !dbg !86
  %50 = add nsw i64 %49, %47, !dbg !86
  %51 = trunc i64 %50 to i32, !dbg !86
  store i32 %51, i32* %7, align 4, !dbg !86
  %52 = load i32, i32* %4, align 4, !dbg !87
  %53 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0, !dbg !88
  %54 = load i64, i64* %5, align 8, !dbg !89
  %55 = call i64 @write(i32 noundef %52, i8* noundef %53, i64 noundef %54), !dbg !90
  store i64 %55, i64* %6, align 8, !dbg !91
  %56 = load i64, i64* %6, align 8, !dbg !92
  %57 = icmp sle i64 %56, 0, !dbg !94
  br i1 %57, label %62, label %58, !dbg !95

58:                                               ; preds = %46
  %59 = load i64, i64* %6, align 8, !dbg !96
  %60 = load i64, i64* %5, align 8, !dbg !97
  %61 = icmp ne i64 %59, %60, !dbg !98
  br i1 %61, label %62, label %63, !dbg !99

62:                                               ; preds = %58, %46
  br label %65, !dbg !100

63:                                               ; preds = %58
  br label %64, !dbg !101

64:                                               ; preds = %63
  br i1 true, label %38, label %65, !dbg !101, !llvm.loop !102

65:                                               ; preds = %64, %62, %45
  %66 = load i32, i32* %4, align 4, !dbg !104
  %67 = call i32 @close(i32 noundef %66), !dbg !105
  %68 = load i32, i32* %3, align 4, !dbg !106
  %69 = call i32 @close(i32 noundef %68), !dbg !107
  store i32 0, i32* %1, align 4, !dbg !108
  br label %70, !dbg !108

70:                                               ; preds = %65, %34, %28
  %71 = load i32, i32* %1, align 4, !dbg !109
  ret i32 %71, !dbg !109
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

declare i32 @open(i8* noundef, i32 noundef, ...) #2

declare i32 @close(i32 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare i64 @read(i32 noundef, i8* noundef, i64 noundef) #2

declare i64 @write(i32 noundef, i8* noundef, i64 noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/144_runtest.c_650_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "5ea38d35a276b9c1f318dd5138ff71c2")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.6"}
!10 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 11, type: !11, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "bytes1", scope: !10, file: !1, line: 12, type: !16)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 32768, elements: !18)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !{!19}
!19 = !DISubrange(count: 4096)
!20 = !DILocation(line: 12, column: 10, scope: !10)
!21 = !DILocalVariable(name: "fd1", scope: !10, file: !1, line: 13, type: !13)
!22 = !DILocation(line: 13, column: 9, scope: !10)
!23 = !DILocalVariable(name: "fd2", scope: !10, file: !1, line: 13, type: !13)
!24 = !DILocation(line: 13, column: 14, scope: !10)
!25 = !DILocalVariable(name: "res1", scope: !10, file: !1, line: 14, type: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !27, line: 78, baseType: !28)
!27 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "1e435c46987a169d9f9186f63a512303")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !29, line: 194, baseType: !30)
!29 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!30 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!31 = !DILocation(line: 14, column: 13, scope: !10)
!32 = !DILocalVariable(name: "res2", scope: !10, file: !1, line: 14, type: !26)
!33 = !DILocation(line: 14, column: 19, scope: !10)
!34 = !DILocalVariable(name: "total", scope: !10, file: !1, line: 15, type: !13)
!35 = !DILocation(line: 15, column: 9, scope: !10)
!36 = !DILocalVariable(name: "r1", scope: !10, file: !1, line: 17, type: !37)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 2048, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 256)
!40 = !DILocation(line: 17, column: 10, scope: !10)
!41 = !DILocalVariable(name: "r2", scope: !10, file: !1, line: 18, type: !37)
!42 = !DILocation(line: 18, column: 10, scope: !10)
!43 = !DILocation(line: 20, column: 24, scope: !10)
!44 = !DILocation(line: 20, column: 5, scope: !10)
!45 = !DILocation(line: 21, column: 24, scope: !10)
!46 = !DILocation(line: 21, column: 5, scope: !10)
!47 = !DILocation(line: 22, column: 17, scope: !10)
!48 = !DILocation(line: 22, column: 34, scope: !10)
!49 = !DILocation(line: 22, column: 5, scope: !10)
!50 = !DILocation(line: 23, column: 17, scope: !10)
!51 = !DILocation(line: 23, column: 34, scope: !10)
!52 = !DILocation(line: 23, column: 5, scope: !10)
!53 = !DILocation(line: 25, column: 16, scope: !10)
!54 = !DILocation(line: 25, column: 11, scope: !10)
!55 = !DILocation(line: 25, column: 9, scope: !10)
!56 = !DILocation(line: 26, column: 9, scope: !57)
!57 = distinct !DILexicalBlock(scope: !10, file: !1, line: 26, column: 9)
!58 = !DILocation(line: 26, column: 13, scope: !57)
!59 = !DILocation(line: 26, column: 9, scope: !10)
!60 = !DILocation(line: 27, column: 9, scope: !61)
!61 = distinct !DILexicalBlock(scope: !57, file: !1, line: 26, column: 18)
!62 = !DILocation(line: 30, column: 16, scope: !10)
!63 = !DILocation(line: 30, column: 11, scope: !10)
!64 = !DILocation(line: 30, column: 9, scope: !10)
!65 = !DILocation(line: 31, column: 9, scope: !66)
!66 = distinct !DILexicalBlock(scope: !10, file: !1, line: 31, column: 9)
!67 = !DILocation(line: 31, column: 13, scope: !66)
!68 = !DILocation(line: 31, column: 9, scope: !10)
!69 = !DILocation(line: 32, column: 15, scope: !70)
!70 = distinct !DILexicalBlock(scope: !66, file: !1, line: 31, column: 18)
!71 = !DILocation(line: 32, column: 9, scope: !70)
!72 = !DILocation(line: 33, column: 9, scope: !70)
!73 = !DILocation(line: 36, column: 5, scope: !10)
!74 = !DILocation(line: 37, column: 9, scope: !75)
!75 = distinct !DILexicalBlock(scope: !10, file: !1, line: 36, column: 8)
!76 = !DILocation(line: 38, column: 21, scope: !75)
!77 = !DILocation(line: 38, column: 26, scope: !75)
!78 = !DILocation(line: 38, column: 16, scope: !75)
!79 = !DILocation(line: 38, column: 14, scope: !75)
!80 = !DILocation(line: 39, column: 13, scope: !81)
!81 = distinct !DILexicalBlock(scope: !75, file: !1, line: 39, column: 13)
!82 = !DILocation(line: 39, column: 18, scope: !81)
!83 = !DILocation(line: 39, column: 13, scope: !75)
!84 = !DILocation(line: 40, column: 13, scope: !81)
!85 = !DILocation(line: 41, column: 18, scope: !75)
!86 = !DILocation(line: 41, column: 15, scope: !75)
!87 = !DILocation(line: 42, column: 22, scope: !75)
!88 = !DILocation(line: 42, column: 27, scope: !75)
!89 = !DILocation(line: 42, column: 35, scope: !75)
!90 = !DILocation(line: 42, column: 16, scope: !75)
!91 = !DILocation(line: 42, column: 14, scope: !75)
!92 = !DILocation(line: 43, column: 13, scope: !93)
!93 = distinct !DILexicalBlock(scope: !75, file: !1, line: 43, column: 13)
!94 = !DILocation(line: 43, column: 18, scope: !93)
!95 = !DILocation(line: 43, column: 23, scope: !93)
!96 = !DILocation(line: 43, column: 26, scope: !93)
!97 = !DILocation(line: 43, column: 34, scope: !93)
!98 = !DILocation(line: 43, column: 31, scope: !93)
!99 = !DILocation(line: 43, column: 13, scope: !75)
!100 = !DILocation(line: 44, column: 13, scope: !93)
!101 = !DILocation(line: 45, column: 5, scope: !75)
!102 = distinct !{!102, !73, !103}
!103 = !DILocation(line: 45, column: 15, scope: !10)
!104 = !DILocation(line: 47, column: 11, scope: !10)
!105 = !DILocation(line: 47, column: 5, scope: !10)
!106 = !DILocation(line: 48, column: 11, scope: !10)
!107 = !DILocation(line: 48, column: 5, scope: !10)
!108 = !DILocation(line: 49, column: 5, scope: !10)
!109 = !DILocation(line: 50, column: 1, scope: !10)

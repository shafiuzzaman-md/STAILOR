; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/147_runtest.c_671_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/147_runtest.c_671_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"r1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"r2\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_62911_vul/147_runtest.c_671_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

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
  store i8 0, i8* %12, align 1, !dbg !49
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 255, !dbg !50
  store i8 0, i8* %13, align 1, !dbg !51
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !52
  %15 = call i32 (i8*, i32, ...) @open(i8* noundef %14, i32 noundef 0), !dbg !53
  store i32 %15, i32* %4, align 4, !dbg !54
  %16 = load i32, i32* %4, align 4, !dbg !55
  %17 = icmp slt i32 %16, 0, !dbg !57
  br i1 %17, label %18, label %19, !dbg !58

18:                                               ; preds = %0
  store i32 -1, i32* %1, align 4, !dbg !59
  br label %65, !dbg !59

19:                                               ; preds = %0
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !61
  %21 = call i32 (i8*, i32, ...) @open(i8* noundef %20, i32 noundef 0), !dbg !62
  store i32 %21, i32* %5, align 4, !dbg !63
  br label %22, !dbg !64

22:                                               ; preds = %19, %55
  %23 = load i32, i32* %4, align 4, !dbg !65
  %24 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0, !dbg !67
  %25 = call i64 @read(i32 noundef %23, i8* noundef %24, i64 noundef 4096), !dbg !68
  store i64 %25, i64* %6, align 8, !dbg !69
  %26 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.3, i64 0, i64 0), i32 noundef 31, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !70
  %27 = load i32, i32* %5, align 4, !dbg !71
  %28 = icmp sge i32 %27, 0, !dbg !72
  br i1 %28, label %29, label %33, !dbg !71

29:                                               ; preds = %22
  %30 = load i32, i32* %5, align 4, !dbg !73
  %31 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0, !dbg !74
  %32 = call i64 @read(i32 noundef %30, i8* noundef %31, i64 noundef 4096), !dbg !75
  br label %34, !dbg !71

33:                                               ; preds = %22
  br label %34, !dbg !71

34:                                               ; preds = %33, %29
  %35 = phi i64 [ %32, %29 ], [ 0, %33 ], !dbg !71
  store i64 %35, i64* %7, align 8, !dbg !76
  %36 = load i64, i64* %6, align 8, !dbg !77
  %37 = load i64, i64* %7, align 8, !dbg !79
  %38 = icmp ne i64 %36, %37, !dbg !80
  br i1 %38, label %42, label %39, !dbg !81

39:                                               ; preds = %34
  %40 = load i64, i64* %6, align 8, !dbg !82
  %41 = icmp slt i64 %40, 0, !dbg !83
  br i1 %41, label %42, label %51, !dbg !84

42:                                               ; preds = %39, %34
  %43 = load i32, i32* %4, align 4, !dbg !85
  %44 = call i32 @close(i32 noundef %43), !dbg !87
  %45 = load i32, i32* %5, align 4, !dbg !88
  %46 = icmp sge i32 %45, 0, !dbg !90
  br i1 %46, label %47, label %50, !dbg !91

47:                                               ; preds = %42
  %48 = load i32, i32* %5, align 4, !dbg !92
  %49 = call i32 @close(i32 noundef %48), !dbg !94
  br label %50, !dbg !95

50:                                               ; preds = %47, %42
  store i32 1, i32* %1, align 4, !dbg !96
  br label %65, !dbg !96

51:                                               ; preds = %39
  %52 = load i64, i64* %6, align 8, !dbg !97
  %53 = icmp eq i64 %52, 0, !dbg !99
  br i1 %53, label %54, label %55, !dbg !100

54:                                               ; preds = %51
  br label %56, !dbg !101

55:                                               ; preds = %51
  br label %22, !dbg !64, !llvm.loop !103

56:                                               ; preds = %54
  %57 = load i32, i32* %4, align 4, !dbg !105
  %58 = call i32 @close(i32 noundef %57), !dbg !106
  %59 = load i32, i32* %5, align 4, !dbg !107
  %60 = icmp sge i32 %59, 0, !dbg !109
  br i1 %60, label %61, label %64, !dbg !110

61:                                               ; preds = %56
  %62 = load i32, i32* %5, align 4, !dbg !111
  %63 = call i32 @close(i32 noundef %62), !dbg !113
  br label %64, !dbg !114

64:                                               ; preds = %61, %56
  store i32 0, i32* %1, align 4, !dbg !115
  br label %65, !dbg !115

65:                                               ; preds = %64, %50, %18
  %66 = load i32, i32* %1, align 4, !dbg !116
  ret i32 %66, !dbg !116
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare i32 @open(i8* noundef, i32 noundef, ...) #2

declare i64 @read(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare i32 @close(i32 noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/147_runtest.c_671_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "0c54d92c02bd2422ebe42c525868dc21")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.6"}
!10 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 9, type: !11, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "r1", scope: !10, file: !1, line: 10, type: !16)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 2048, elements: !18)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !{!19}
!19 = !DISubrange(count: 256)
!20 = !DILocation(line: 10, column: 10, scope: !10)
!21 = !DILocalVariable(name: "r2", scope: !10, file: !1, line: 11, type: !16)
!22 = !DILocation(line: 11, column: 10, scope: !10)
!23 = !DILocalVariable(name: "fd1", scope: !10, file: !1, line: 12, type: !13)
!24 = !DILocation(line: 12, column: 9, scope: !10)
!25 = !DILocalVariable(name: "fd2", scope: !10, file: !1, line: 12, type: !13)
!26 = !DILocation(line: 12, column: 14, scope: !10)
!27 = !DILocalVariable(name: "res1", scope: !10, file: !1, line: 13, type: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !29, line: 220, baseType: !30)
!29 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "877e832a8bb8424f9180387a13787475")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !31, line: 194, baseType: !32)
!31 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!32 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!33 = !DILocation(line: 13, column: 13, scope: !10)
!34 = !DILocalVariable(name: "res2", scope: !10, file: !1, line: 13, type: !28)
!35 = !DILocation(line: 13, column: 19, scope: !10)
!36 = !DILocalVariable(name: "bytes1", scope: !10, file: !1, line: 14, type: !37)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 32768, elements: !39)
!38 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!39 = !{!40}
!40 = !DISubrange(count: 4096)
!41 = !DILocation(line: 14, column: 19, scope: !10)
!42 = !DILocalVariable(name: "bytes2", scope: !10, file: !1, line: 15, type: !37)
!43 = !DILocation(line: 15, column: 19, scope: !10)
!44 = !DILocation(line: 17, column: 24, scope: !10)
!45 = !DILocation(line: 17, column: 5, scope: !10)
!46 = !DILocation(line: 18, column: 24, scope: !10)
!47 = !DILocation(line: 18, column: 5, scope: !10)
!48 = !DILocation(line: 19, column: 5, scope: !10)
!49 = !DILocation(line: 19, column: 22, scope: !10)
!50 = !DILocation(line: 20, column: 5, scope: !10)
!51 = !DILocation(line: 20, column: 22, scope: !10)
!52 = !DILocation(line: 22, column: 16, scope: !10)
!53 = !DILocation(line: 22, column: 11, scope: !10)
!54 = !DILocation(line: 22, column: 9, scope: !10)
!55 = !DILocation(line: 23, column: 9, scope: !56)
!56 = distinct !DILexicalBlock(scope: !10, file: !1, line: 23, column: 9)
!57 = !DILocation(line: 23, column: 13, scope: !56)
!58 = !DILocation(line: 23, column: 9, scope: !10)
!59 = !DILocation(line: 24, column: 9, scope: !60)
!60 = distinct !DILexicalBlock(scope: !56, file: !1, line: 23, column: 18)
!61 = !DILocation(line: 27, column: 16, scope: !10)
!62 = !DILocation(line: 27, column: 11, scope: !10)
!63 = !DILocation(line: 27, column: 9, scope: !10)
!64 = !DILocation(line: 29, column: 5, scope: !10)
!65 = !DILocation(line: 30, column: 21, scope: !66)
!66 = distinct !DILexicalBlock(scope: !10, file: !1, line: 29, column: 15)
!67 = !DILocation(line: 30, column: 26, scope: !66)
!68 = !DILocation(line: 30, column: 16, scope: !66)
!69 = !DILocation(line: 30, column: 14, scope: !66)
!70 = !DILocation(line: 31, column: 9, scope: !66)
!71 = !DILocation(line: 32, column: 16, scope: !66)
!72 = !DILocation(line: 32, column: 20, scope: !66)
!73 = !DILocation(line: 32, column: 32, scope: !66)
!74 = !DILocation(line: 32, column: 37, scope: !66)
!75 = !DILocation(line: 32, column: 27, scope: !66)
!76 = !DILocation(line: 32, column: 14, scope: !66)
!77 = !DILocation(line: 33, column: 14, scope: !78)
!78 = distinct !DILexicalBlock(scope: !66, file: !1, line: 33, column: 13)
!79 = !DILocation(line: 33, column: 22, scope: !78)
!80 = !DILocation(line: 33, column: 19, scope: !78)
!81 = !DILocation(line: 33, column: 28, scope: !78)
!82 = !DILocation(line: 33, column: 32, scope: !78)
!83 = !DILocation(line: 33, column: 37, scope: !78)
!84 = !DILocation(line: 33, column: 13, scope: !66)
!85 = !DILocation(line: 34, column: 19, scope: !86)
!86 = distinct !DILexicalBlock(scope: !78, file: !1, line: 33, column: 43)
!87 = !DILocation(line: 34, column: 13, scope: !86)
!88 = !DILocation(line: 35, column: 17, scope: !89)
!89 = distinct !DILexicalBlock(scope: !86, file: !1, line: 35, column: 17)
!90 = !DILocation(line: 35, column: 21, scope: !89)
!91 = !DILocation(line: 35, column: 17, scope: !86)
!92 = !DILocation(line: 36, column: 23, scope: !93)
!93 = distinct !DILexicalBlock(scope: !89, file: !1, line: 35, column: 27)
!94 = !DILocation(line: 36, column: 17, scope: !93)
!95 = !DILocation(line: 37, column: 13, scope: !93)
!96 = !DILocation(line: 38, column: 13, scope: !86)
!97 = !DILocation(line: 40, column: 13, scope: !98)
!98 = distinct !DILexicalBlock(scope: !66, file: !1, line: 40, column: 13)
!99 = !DILocation(line: 40, column: 18, scope: !98)
!100 = !DILocation(line: 40, column: 13, scope: !66)
!101 = !DILocation(line: 41, column: 13, scope: !102)
!102 = distinct !DILexicalBlock(scope: !98, file: !1, line: 40, column: 24)
!103 = distinct !{!103, !64, !104}
!104 = !DILocation(line: 43, column: 5, scope: !10)
!105 = !DILocation(line: 45, column: 11, scope: !10)
!106 = !DILocation(line: 45, column: 5, scope: !10)
!107 = !DILocation(line: 46, column: 9, scope: !108)
!108 = distinct !DILexicalBlock(scope: !10, file: !1, line: 46, column: 9)
!109 = !DILocation(line: 46, column: 13, scope: !108)
!110 = !DILocation(line: 46, column: 9, scope: !10)
!111 = !DILocation(line: 47, column: 15, scope: !112)
!112 = distinct !DILexicalBlock(scope: !108, file: !1, line: 46, column: 19)
!113 = !DILocation(line: 47, column: 9, scope: !112)
!114 = !DILocation(line: 48, column: 5, scope: !112)
!115 = !DILocation(line: 49, column: 5, scope: !10)
!116 = !DILocation(line: 50, column: 1, scope: !10)

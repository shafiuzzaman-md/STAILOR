; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/137_runtest.c_769_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/137_runtest.c_769_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_62911_vul/137_runtest.c_769_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !12 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca %struct.stat, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !17, metadata !DIExpression()), !dbg !22
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !23
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !dbg !24
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !25
  store i8 0, i8* %9, align 1, !dbg !26
  call void @llvm.dbg.declare(metadata %struct.stat* %3, metadata !27, metadata !DIExpression()), !dbg !69
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !70
  %11 = call i32 @stat(i8* noundef %10, %struct.stat* noundef %3) #5, !dbg !72
  %12 = icmp ne i32 %11, 0, !dbg !73
  br i1 %12, label %13, label %14, !dbg !74

13:                                               ; preds = %0
  store i32 -1, i32* %1, align 4, !dbg !75
  br label %60, !dbg !75

14:                                               ; preds = %0
  %15 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 8, !dbg !77
  %16 = load i64, i64* %15, align 8, !dbg !77
  %17 = icmp sge i64 %16, 0, !dbg !78
  %18 = zext i1 %17 to i32, !dbg !78
  %19 = sext i32 %18 to i64, !dbg !79
  call void @klee_assume(i64 noundef %19), !dbg !80
  %20 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 8, !dbg !81
  %21 = load i64, i64* %20, align 8, !dbg !81
  %22 = icmp slt i64 %21, 1048576, !dbg !82
  %23 = zext i1 %22 to i32, !dbg !82
  %24 = sext i32 %23 to i64, !dbg !83
  call void @klee_assume(i64 noundef %24), !dbg !84
  call void @llvm.dbg.declare(metadata i8** %4, metadata !85, metadata !DIExpression()), !dbg !87
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 8, !dbg !88
  %26 = load i64, i64* %25, align 8, !dbg !88
  %27 = add nsw i64 %26, 1, !dbg !89
  %28 = call noalias i8* @malloc(i64 noundef %27) #5, !dbg !90
  store i8* %28, i8** %4, align 8, !dbg !87
  %29 = load i8*, i8** %4, align 8, !dbg !91
  %30 = icmp eq i8* %29, null, !dbg !93
  br i1 %30, label %31, label %32, !dbg !94

31:                                               ; preds = %14
  store i32 -1, i32* %1, align 4, !dbg !95
  br label %60, !dbg !95

32:                                               ; preds = %14
  call void @llvm.dbg.declare(metadata i32* %5, metadata !97, metadata !DIExpression()), !dbg !98
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !99
  %34 = call i32 (i8*, i32, ...) @open(i8* noundef %33, i32 noundef 0), !dbg !100
  store i32 %34, i32* %5, align 4, !dbg !98
  %35 = load i32, i32* %5, align 4, !dbg !101
  %36 = icmp slt i32 %35, 0, !dbg !103
  br i1 %36, label %37, label %39, !dbg !104

37:                                               ; preds = %32
  %38 = load i8*, i8** %4, align 8, !dbg !105
  call void @free(i8* noundef %38) #5, !dbg !107
  store i32 -1, i32* %1, align 4, !dbg !108
  br label %60, !dbg !108

39:                                               ; preds = %32
  call void @llvm.dbg.declare(metadata i64* %6, metadata !109, metadata !DIExpression()), !dbg !113
  store i64 0, i64* %6, align 8, !dbg !113
  call void @llvm.dbg.declare(metadata i64* %7, metadata !114, metadata !DIExpression()), !dbg !115
  %40 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.2, i64 0, i64 0), i32 noundef 38, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !116
  br label %41, !dbg !117

41:                                               ; preds = %52, %39
  %42 = load i32, i32* %5, align 4, !dbg !118
  %43 = load i8*, i8** %4, align 8, !dbg !119
  %44 = load i64, i64* %6, align 8, !dbg !120
  %45 = getelementptr inbounds i8, i8* %43, i64 %44, !dbg !119
  %46 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 8, !dbg !121
  %47 = load i64, i64* %46, align 8, !dbg !121
  %48 = load i64, i64* %6, align 8, !dbg !122
  %49 = sub nsw i64 %47, %48, !dbg !123
  %50 = call i64 @read(i32 noundef %42, i8* noundef %45, i64 noundef %49), !dbg !124
  store i64 %50, i64* %7, align 8, !dbg !125
  %51 = icmp sgt i64 %50, 0, !dbg !126
  br i1 %51, label %52, label %56, !dbg !117

52:                                               ; preds = %41
  %53 = load i64, i64* %7, align 8, !dbg !127
  %54 = load i64, i64* %6, align 8, !dbg !129
  %55 = add nsw i64 %54, %53, !dbg !129
  store i64 %55, i64* %6, align 8, !dbg !129
  br label %41, !dbg !117, !llvm.loop !130

56:                                               ; preds = %41
  %57 = load i32, i32* %5, align 4, !dbg !133
  %58 = call i32 @close(i32 noundef %57), !dbg !134
  %59 = load i8*, i8** %4, align 8, !dbg !135
  call void @free(i8* noundef %59) #5, !dbg !136
  store i32 0, i32* %1, align 4, !dbg !137
  br label %60, !dbg !137

60:                                               ; preds = %56, %37, %31, %13
  %61 = load i32, i32* %1, align 4, !dbg !138
  ret i32 %61, !dbg !138
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

; Function Attrs: nounwind
declare i32 @stat(i8* noundef, %struct.stat* noundef) #3

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

declare i32 @open(i8* noundef, i32 noundef, ...) #2

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

declare i64 @read(i32 noundef, i8* noundef, i64 noundef) #2

declare i32 @close(i32 noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/137_runtest.c_769_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "ccade5dba36a1323f741b9cbd87e03b5")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
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
!17 = !DILocalVariable(name: "filename", scope: !12, file: !1, line: 13, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 2048, elements: !20)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !{!21}
!21 = !DISubrange(count: 256)
!22 = !DILocation(line: 13, column: 10, scope: !12)
!23 = !DILocation(line: 14, column: 24, scope: !12)
!24 = !DILocation(line: 14, column: 5, scope: !12)
!25 = !DILocation(line: 15, column: 5, scope: !12)
!26 = !DILocation(line: 15, column: 36, scope: !12)
!27 = !DILocalVariable(name: "info", scope: !12, file: !1, line: 17, type: !28)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !29, line: 26, size: 1152, elements: !30)
!29 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "59591d2af474d06a64835bfc23e4bb5d")
!30 = !{!31, !35, !37, !39, !42, !44, !46, !47, !48, !51, !53, !55, !63, !64, !65}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !28, file: !29, line: 31, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !33, line: 145, baseType: !34)
!33 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!34 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !28, file: !29, line: 36, baseType: !36, size: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !33, line: 148, baseType: !34)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !28, file: !29, line: 44, baseType: !38, size: 64, offset: 128)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !33, line: 151, baseType: !34)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !28, file: !29, line: 45, baseType: !40, size: 32, offset: 192)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !33, line: 150, baseType: !41)
!41 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !28, file: !29, line: 47, baseType: !43, size: 32, offset: 224)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !33, line: 146, baseType: !41)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !28, file: !29, line: 48, baseType: !45, size: 32, offset: 256)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !33, line: 147, baseType: !41)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !28, file: !29, line: 50, baseType: !15, size: 32, offset: 288)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !28, file: !29, line: 52, baseType: !32, size: 64, offset: 320)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !28, file: !29, line: 57, baseType: !49, size: 64, offset: 384)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !33, line: 152, baseType: !50)
!50 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !28, file: !29, line: 61, baseType: !52, size: 64, offset: 448)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !33, line: 175, baseType: !50)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !28, file: !29, line: 63, baseType: !54, size: 64, offset: 512)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !33, line: 180, baseType: !50)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !28, file: !29, line: 74, baseType: !56, size: 128, offset: 576)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !57, line: 11, size: 128, elements: !58)
!57 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!58 = !{!59, !61}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !56, file: !57, line: 16, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !33, line: 160, baseType: !50)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !56, file: !57, line: 21, baseType: !62, size: 64, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !33, line: 197, baseType: !50)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !28, file: !29, line: 75, baseType: !56, size: 128, offset: 704)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !28, file: !29, line: 76, baseType: !56, size: 128, offset: 832)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !28, file: !29, line: 89, baseType: !66, size: 192, offset: 960)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 192, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 3)
!69 = !DILocation(line: 17, column: 17, scope: !12)
!70 = !DILocation(line: 18, column: 14, scope: !71)
!71 = distinct !DILexicalBlock(scope: !12, file: !1, line: 18, column: 9)
!72 = !DILocation(line: 18, column: 9, scope: !71)
!73 = !DILocation(line: 18, column: 31, scope: !71)
!74 = !DILocation(line: 18, column: 9, scope: !12)
!75 = !DILocation(line: 19, column: 9, scope: !76)
!76 = distinct !DILexicalBlock(scope: !71, file: !1, line: 18, column: 37)
!77 = !DILocation(line: 22, column: 22, scope: !12)
!78 = !DILocation(line: 22, column: 30, scope: !12)
!79 = !DILocation(line: 22, column: 17, scope: !12)
!80 = !DILocation(line: 22, column: 5, scope: !12)
!81 = !DILocation(line: 23, column: 22, scope: !12)
!82 = !DILocation(line: 23, column: 30, scope: !12)
!83 = !DILocation(line: 23, column: 17, scope: !12)
!84 = !DILocation(line: 23, column: 5, scope: !12)
!85 = !DILocalVariable(name: "base", scope: !12, file: !1, line: 25, type: !86)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!87 = !DILocation(line: 25, column: 11, scope: !12)
!88 = !DILocation(line: 25, column: 30, scope: !12)
!89 = !DILocation(line: 25, column: 38, scope: !12)
!90 = !DILocation(line: 25, column: 18, scope: !12)
!91 = !DILocation(line: 26, column: 9, scope: !92)
!92 = distinct !DILexicalBlock(scope: !12, file: !1, line: 26, column: 9)
!93 = !DILocation(line: 26, column: 14, scope: !92)
!94 = !DILocation(line: 26, column: 9, scope: !12)
!95 = !DILocation(line: 27, column: 9, scope: !96)
!96 = distinct !DILexicalBlock(scope: !92, file: !1, line: 26, column: 23)
!97 = !DILocalVariable(name: "fd", scope: !12, file: !1, line: 30, type: !15)
!98 = !DILocation(line: 30, column: 9, scope: !12)
!99 = !DILocation(line: 30, column: 19, scope: !12)
!100 = !DILocation(line: 30, column: 14, scope: !12)
!101 = !DILocation(line: 31, column: 9, scope: !102)
!102 = distinct !DILexicalBlock(scope: !12, file: !1, line: 31, column: 9)
!103 = !DILocation(line: 31, column: 12, scope: !102)
!104 = !DILocation(line: 31, column: 9, scope: !12)
!105 = !DILocation(line: 32, column: 14, scope: !106)
!106 = distinct !DILexicalBlock(scope: !102, file: !1, line: 31, column: 17)
!107 = !DILocation(line: 32, column: 9, scope: !106)
!108 = !DILocation(line: 33, column: 9, scope: !106)
!109 = !DILocalVariable(name: "siz", scope: !12, file: !1, line: 36, type: !110)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !111, line: 78, baseType: !112)
!111 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "1e435c46987a169d9f9186f63a512303")
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !33, line: 194, baseType: !50)
!113 = !DILocation(line: 36, column: 13, scope: !12)
!114 = !DILocalVariable(name: "res", scope: !12, file: !1, line: 37, type: !110)
!115 = !DILocation(line: 37, column: 13, scope: !12)
!116 = !DILocation(line: 38, column: 5, scope: !12)
!117 = !DILocation(line: 39, column: 5, scope: !12)
!118 = !DILocation(line: 39, column: 24, scope: !12)
!119 = !DILocation(line: 39, column: 29, scope: !12)
!120 = !DILocation(line: 39, column: 34, scope: !12)
!121 = !DILocation(line: 39, column: 45, scope: !12)
!122 = !DILocation(line: 39, column: 55, scope: !12)
!123 = !DILocation(line: 39, column: 53, scope: !12)
!124 = !DILocation(line: 39, column: 19, scope: !12)
!125 = !DILocation(line: 39, column: 17, scope: !12)
!126 = !DILocation(line: 39, column: 61, scope: !12)
!127 = !DILocation(line: 40, column: 16, scope: !128)
!128 = distinct !DILexicalBlock(scope: !12, file: !1, line: 39, column: 66)
!129 = !DILocation(line: 40, column: 13, scope: !128)
!130 = distinct !{!130, !117, !131, !132}
!131 = !DILocation(line: 41, column: 5, scope: !12)
!132 = !{!"llvm.loop.mustprogress"}
!133 = !DILocation(line: 43, column: 11, scope: !12)
!134 = !DILocation(line: 43, column: 5, scope: !12)
!135 = !DILocation(line: 44, column: 10, scope: !12)
!136 = !DILocation(line: 44, column: 5, scope: !12)
!137 = !DILocation(line: 45, column: 5, scope: !12)
!138 = !DILocation(line: 46, column: 1, scope: !12)

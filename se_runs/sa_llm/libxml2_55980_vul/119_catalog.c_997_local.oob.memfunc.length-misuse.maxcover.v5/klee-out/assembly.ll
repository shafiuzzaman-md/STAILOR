; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/119_catalog.c_997_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/119_catalog.c_997_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c"URL\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"fd\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"(size <= 4096) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_55980_vul/119_catalog.c_997_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !10 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !15, metadata !DIExpression()), !dbg !16
  %3 = load i8*, i8** %2, align 8, !dbg !17
  call void @free(i8* noundef %3) #5, !dbg !18
  ret void, !dbg !19
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !20 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca [256 x i8], align 16
  %4 = alloca %struct.stat, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !24, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !30, metadata !DIExpression()), !dbg !31
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !32
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 256, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !33
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !34
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)), !dbg !35
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !36
  store i8 0, i8* %10, align 1, !dbg !37
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 255, !dbg !38
  store i8 0, i8* %11, align 1, !dbg !39
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !40
  %13 = call i32 @access(i8* noundef %12, i32 noundef 0) #5, !dbg !41
  %14 = icmp eq i32 %13, 0, !dbg !42
  %15 = zext i1 %14 to i32, !dbg !42
  %16 = sext i32 %15 to i64, !dbg !41
  call void @klee_assume(i64 noundef %16), !dbg !43
  call void @llvm.dbg.declare(metadata %struct.stat* %4, metadata !44, metadata !DIExpression()), !dbg !86
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !87
  %18 = call i32 @stat(i8* noundef %17, %struct.stat* noundef %4) #5, !dbg !88
  %19 = icmp eq i32 %18, 0, !dbg !89
  %20 = zext i1 %19 to i32, !dbg !89
  %21 = sext i32 %20 to i64, !dbg !88
  call void @klee_assume(i64 noundef %21), !dbg !90
  %22 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 8, !dbg !91
  %23 = load i64, i64* %22, align 8, !dbg !91
  %24 = icmp sge i64 %23, 0, !dbg !92
  %25 = zext i1 %24 to i32, !dbg !92
  %26 = sext i32 %25 to i64, !dbg !93
  call void @klee_assume(i64 noundef %26), !dbg !94
  call void @llvm.dbg.declare(metadata i32* %5, metadata !95, metadata !DIExpression()), !dbg !96
  %27 = bitcast i32* %5 to i8*, !dbg !97
  call void @klee_make_symbolic(i8* noundef %27, i64 noundef 4, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)), !dbg !98
  %28 = load i32, i32* %5, align 4, !dbg !99
  %29 = icmp sge i32 %28, 0, !dbg !100
  %30 = zext i1 %29 to i32, !dbg !100
  %31 = sext i32 %30 to i64, !dbg !99
  call void @klee_assume(i64 noundef %31), !dbg !101
  call void @llvm.dbg.declare(metadata i32* %6, metadata !102, metadata !DIExpression()), !dbg !103
  %32 = bitcast i32* %6 to i8*, !dbg !104
  call void @klee_make_symbolic(i8* noundef %32, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)), !dbg !105
  %33 = load i32, i32* %6, align 4, !dbg !106
  %34 = icmp sgt i32 %33, 0, !dbg !107
  %35 = zext i1 %34 to i32, !dbg !107
  %36 = sext i32 %35 to i64, !dbg !106
  call void @klee_assume(i64 noundef %36), !dbg !108
  call void @llvm.dbg.declare(metadata i64* %7, metadata !109, metadata !DIExpression()), !dbg !113
  %37 = bitcast i64* %7 to i8*, !dbg !114
  call void @klee_make_symbolic(i8* noundef %37, i64 noundef 8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)), !dbg !115
  %38 = load i64, i64* %7, align 8, !dbg !116
  %39 = icmp sge i64 %38, 0, !dbg !117
  %40 = zext i1 %39 to i32, !dbg !117
  %41 = sext i32 %40 to i64, !dbg !116
  call void @klee_assume(i64 noundef %41), !dbg !118
  %42 = load i32, i32* %6, align 4, !dbg !119
  %43 = icmp sle i32 %42, 4096, !dbg !119
  br i1 %43, label %44, label %46, !dbg !119

44:                                               ; preds = %0
  br i1 true, label %45, label %46, !dbg !119

45:                                               ; preds = %44
  br label %48, !dbg !119

46:                                               ; preds = %44, %0
  %47 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.7, i64 0, i64 0), i32 noundef 66, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !119
  br label %48, !dbg !119

48:                                               ; preds = %46, %45
  %49 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.7, i64 0, i64 0), i32 noundef 69, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !120
  ret i32 0, !dbg !121
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: nounwind
declare i32 @access(i8* noundef, i32 noundef) #2

; Function Attrs: nounwind
declare i32 @stat(i8* noundef, %struct.stat* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/119_catalog.c_997_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "f34d5a86a7e17f047aae5aa9c30d2444")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.6"}
!10 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 13, type: !11, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!14 = !{}
!15 = !DILocalVariable(name: "ptr", arg: 1, scope: !10, file: !1, line: 13, type: !13)
!16 = !DILocation(line: 13, column: 20, scope: !10)
!17 = !DILocation(line: 14, column: 10, scope: !10)
!18 = !DILocation(line: 14, column: 5, scope: !10)
!19 = !DILocation(line: 15, column: 1, scope: !10)
!20 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 21, type: !21, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!21 = !DISubroutineType(types: !22)
!22 = !{!23}
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DILocalVariable(name: "URL", scope: !20, file: !1, line: 23, type: !25)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 2048, elements: !27)
!26 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!27 = !{!28}
!28 = !DISubrange(count: 256)
!29 = !DILocation(line: 23, column: 10, scope: !20)
!30 = !DILocalVariable(name: "filename", scope: !20, file: !1, line: 24, type: !25)
!31 = !DILocation(line: 24, column: 10, scope: !20)
!32 = !DILocation(line: 26, column: 24, scope: !20)
!33 = !DILocation(line: 26, column: 5, scope: !20)
!34 = !DILocation(line: 27, column: 24, scope: !20)
!35 = !DILocation(line: 27, column: 5, scope: !20)
!36 = !DILocation(line: 30, column: 5, scope: !20)
!37 = !DILocation(line: 30, column: 14, scope: !20)
!38 = !DILocation(line: 31, column: 5, scope: !20)
!39 = !DILocation(line: 31, column: 19, scope: !20)
!40 = !DILocation(line: 34, column: 24, scope: !20)
!41 = !DILocation(line: 34, column: 17, scope: !20)
!42 = !DILocation(line: 34, column: 40, scope: !20)
!43 = !DILocation(line: 34, column: 5, scope: !20)
!44 = !DILocalVariable(name: "st", scope: !20, file: !1, line: 37, type: !45)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !46, line: 26, size: 1152, elements: !47)
!46 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "59591d2af474d06a64835bfc23e4bb5d")
!47 = !{!48, !52, !54, !56, !59, !61, !63, !64, !65, !68, !70, !72, !80, !81, !82}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !45, file: !46, line: 31, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !50, line: 145, baseType: !51)
!50 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!51 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !45, file: !46, line: 36, baseType: !53, size: 64, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !50, line: 148, baseType: !51)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !45, file: !46, line: 44, baseType: !55, size: 64, offset: 128)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !50, line: 151, baseType: !51)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !45, file: !46, line: 45, baseType: !57, size: 32, offset: 192)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !50, line: 150, baseType: !58)
!58 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !45, file: !46, line: 47, baseType: !60, size: 32, offset: 224)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !50, line: 146, baseType: !58)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !45, file: !46, line: 48, baseType: !62, size: 32, offset: 256)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !50, line: 147, baseType: !58)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !45, file: !46, line: 50, baseType: !23, size: 32, offset: 288)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !45, file: !46, line: 52, baseType: !49, size: 64, offset: 320)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !45, file: !46, line: 57, baseType: !66, size: 64, offset: 384)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !50, line: 152, baseType: !67)
!67 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !45, file: !46, line: 61, baseType: !69, size: 64, offset: 448)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !50, line: 175, baseType: !67)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !45, file: !46, line: 63, baseType: !71, size: 64, offset: 512)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !50, line: 180, baseType: !67)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !45, file: !46, line: 74, baseType: !73, size: 128, offset: 576)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !74, line: 11, size: 128, elements: !75)
!74 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!75 = !{!76, !78}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !73, file: !74, line: 16, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !50, line: 160, baseType: !67)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !73, file: !74, line: 21, baseType: !79, size: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !50, line: 197, baseType: !67)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !45, file: !46, line: 75, baseType: !73, size: 128, offset: 704)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !45, file: !46, line: 76, baseType: !73, size: 128, offset: 832)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !45, file: !46, line: 89, baseType: !83, size: 192, offset: 960)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 192, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 3)
!86 = !DILocation(line: 37, column: 17, scope: !20)
!87 = !DILocation(line: 38, column: 22, scope: !20)
!88 = !DILocation(line: 38, column: 17, scope: !20)
!89 = !DILocation(line: 38, column: 37, scope: !20)
!90 = !DILocation(line: 38, column: 5, scope: !20)
!91 = !DILocation(line: 39, column: 20, scope: !20)
!92 = !DILocation(line: 39, column: 28, scope: !20)
!93 = !DILocation(line: 39, column: 17, scope: !20)
!94 = !DILocation(line: 39, column: 5, scope: !20)
!95 = !DILocalVariable(name: "fd", scope: !20, file: !1, line: 42, type: !23)
!96 = !DILocation(line: 42, column: 9, scope: !20)
!97 = !DILocation(line: 43, column: 24, scope: !20)
!98 = !DILocation(line: 43, column: 5, scope: !20)
!99 = !DILocation(line: 46, column: 17, scope: !20)
!100 = !DILocation(line: 46, column: 20, scope: !20)
!101 = !DILocation(line: 46, column: 5, scope: !20)
!102 = !DILocalVariable(name: "size", scope: !20, file: !1, line: 49, type: !23)
!103 = !DILocation(line: 49, column: 9, scope: !20)
!104 = !DILocation(line: 50, column: 24, scope: !20)
!105 = !DILocation(line: 50, column: 5, scope: !20)
!106 = !DILocation(line: 53, column: 17, scope: !20)
!107 = !DILocation(line: 53, column: 22, scope: !20)
!108 = !DILocation(line: 53, column: 5, scope: !20)
!109 = !DILocalVariable(name: "len", scope: !20, file: !1, line: 56, type: !110)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !111, line: 108, baseType: !112)
!111 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "7fb02a803b0c9b11cb5276b77d21e9d8")
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !50, line: 194, baseType: !67)
!113 = !DILocation(line: 56, column: 13, scope: !20)
!114 = !DILocation(line: 57, column: 24, scope: !20)
!115 = !DILocation(line: 57, column: 5, scope: !20)
!116 = !DILocation(line: 60, column: 17, scope: !20)
!117 = !DILocation(line: 60, column: 21, scope: !20)
!118 = !DILocation(line: 60, column: 5, scope: !20)
!119 = !DILocation(line: 66, column: 5, scope: !20)
!120 = !DILocation(line: 69, column: 5, scope: !20)
!121 = !DILocation(line: 75, column: 5, scope: !20)

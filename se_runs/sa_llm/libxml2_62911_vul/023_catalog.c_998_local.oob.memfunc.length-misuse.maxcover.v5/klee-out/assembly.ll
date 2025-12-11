; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/023_catalog.c_998_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/023_catalog.c_998_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"(len <= size) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_62911_vul/023_catalog.c_998_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlParseCatalogFile = private unnamed_addr constant [40 x i8] c"char *xmlParseCatalogFile(const char *)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"filename\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlParseCatalogFile(i8* noundef %0) #0 !dbg !13 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stat, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i32* %4, metadata !21, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata %struct.stat* %5, metadata !24, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.declare(metadata i8** %6, metadata !67, metadata !DIExpression()), !dbg !68
  store i8* null, i8** %6, align 8, !dbg !68
  call void @llvm.dbg.declare(metadata i64* %7, metadata !69, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.declare(metadata i64* %8, metadata !73, metadata !DIExpression()), !dbg !77
  %9 = load i8*, i8** %3, align 8, !dbg !78
  %10 = call i32 (i8*, i32, ...) @open(i8* noundef %9, i32 noundef 0), !dbg !79
  store i32 %10, i32* %4, align 4, !dbg !80
  %11 = load i32, i32* %4, align 4, !dbg !81
  %12 = icmp slt i32 %11, 0, !dbg !83
  br i1 %12, label %13, label %14, !dbg !84

13:                                               ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !85
  br label %63, !dbg !85

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4, !dbg !87
  %16 = call i32 @fstat(i32 noundef %15, %struct.stat* noundef %5) #5, !dbg !89
  %17 = icmp slt i32 %16, 0, !dbg !90
  br i1 %17, label %18, label %21, !dbg !91

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4, !dbg !92
  %20 = call i32 @close(i32 noundef %19), !dbg !94
  store i8* null, i8** %2, align 8, !dbg !95
  br label %63, !dbg !95

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 8, !dbg !96
  %23 = load i64, i64* %22, align 8, !dbg !96
  store i64 %23, i64* %7, align 8, !dbg !97
  %24 = load i64, i64* %7, align 8, !dbg !98
  %25 = icmp eq i64 %24, 0, !dbg !100
  br i1 %25, label %26, label %29, !dbg !101

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4, !dbg !102
  %28 = call i32 @close(i32 noundef %27), !dbg !104
  store i8* null, i8** %2, align 8, !dbg !105
  br label %63, !dbg !105

29:                                               ; preds = %21
  %30 = load i64, i64* %7, align 8, !dbg !106
  %31 = add i64 %30, 1, !dbg !107
  %32 = call noalias i8* @malloc(i64 noundef %31) #5, !dbg !108
  store i8* %32, i8** %6, align 8, !dbg !109
  %33 = load i8*, i8** %6, align 8, !dbg !110
  %34 = icmp ne i8* %33, null, !dbg !110
  br i1 %34, label %38, label %35, !dbg !112

35:                                               ; preds = %29
  %36 = load i32, i32* %4, align 4, !dbg !113
  %37 = call i32 @close(i32 noundef %36), !dbg !115
  store i8* null, i8** %2, align 8, !dbg !116
  br label %63, !dbg !116

38:                                               ; preds = %29
  %39 = load i32, i32* %4, align 4, !dbg !117
  %40 = load i8*, i8** %6, align 8, !dbg !118
  %41 = load i64, i64* %7, align 8, !dbg !119
  %42 = call i64 @read(i32 noundef %39, i8* noundef %40, i64 noundef %41), !dbg !120
  store i64 %42, i64* %8, align 8, !dbg !121
  %43 = load i64, i64* %8, align 8, !dbg !122
  %44 = load i64, i64* %7, align 8, !dbg !122
  %45 = icmp ule i64 %43, %44, !dbg !122
  br i1 %45, label %46, label %48, !dbg !122

46:                                               ; preds = %38
  br i1 true, label %47, label %48, !dbg !122

47:                                               ; preds = %46
  br label %50, !dbg !122

48:                                               ; preds = %46, %38
  %49 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.2, i64 0, i64 0), i32 noundef 54, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.xmlParseCatalogFile, i64 0, i64 0)), !dbg !122
  br label %50, !dbg !122

50:                                               ; preds = %48, %47
  %51 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.2, i64 0, i64 0), i32 noundef 57, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.xmlParseCatalogFile, i64 0, i64 0)), !dbg !123
  %52 = load i32, i32* %4, align 4, !dbg !124
  %53 = call i32 @close(i32 noundef %52), !dbg !125
  %54 = load i64, i64* %8, align 8, !dbg !126
  %55 = icmp sle i64 %54, 0, !dbg !128
  br i1 %55, label %56, label %58, !dbg !129

56:                                               ; preds = %50
  %57 = load i8*, i8** %6, align 8, !dbg !130
  call void @free(i8* noundef %57) #5, !dbg !132
  store i8* null, i8** %2, align 8, !dbg !133
  br label %63, !dbg !133

58:                                               ; preds = %50
  %59 = load i8*, i8** %6, align 8, !dbg !134
  %60 = load i64, i64* %8, align 8, !dbg !135
  %61 = getelementptr inbounds i8, i8* %59, i64 %60, !dbg !134
  store i8 0, i8* %61, align 1, !dbg !136
  %62 = load i8*, i8** %6, align 8, !dbg !137
  store i8* %62, i8** %2, align 8, !dbg !138
  br label %63, !dbg !138

63:                                               ; preds = %58, %56, %35, %26, %18, %13
  %64 = load i8*, i8** %2, align 8, !dbg !139
  ret i8* %64, !dbg !139
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @open(i8* noundef, i32 noundef, ...) #2

; Function Attrs: nounwind
declare i32 @fstat(i32 noundef, %struct.stat* noundef) #3

declare i32 @close(i32 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

declare i64 @read(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !140 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca %struct.stat, align 8
  %4 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !143, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.declare(metadata %struct.stat* %3, metadata !148, metadata !DIExpression()), !dbg !149
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !150
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)), !dbg !151
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !152
  store i8 0, i8* %6, align 1, !dbg !153
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !154
  %8 = call i32 @access(i8* noundef %7, i32 noundef 0) #5, !dbg !155
  %9 = icmp eq i32 %8, 0, !dbg !156
  %10 = zext i1 %9 to i32, !dbg !156
  %11 = sext i32 %10 to i64, !dbg !155
  call void @klee_assume(i64 noundef %11), !dbg !157
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !158
  %13 = call i32 @stat(i8* noundef %12, %struct.stat* noundef %3) #5, !dbg !159
  %14 = icmp eq i32 %13, 0, !dbg !160
  %15 = zext i1 %14 to i32, !dbg !160
  %16 = sext i32 %15 to i64, !dbg !159
  call void @klee_assume(i64 noundef %16), !dbg !161
  %17 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 3, !dbg !162
  %18 = load i32, i32* %17, align 8, !dbg !162
  %19 = and i32 %18, 61440, !dbg !162
  %20 = icmp eq i32 %19, 32768, !dbg !162
  %21 = zext i1 %20 to i32, !dbg !162
  %22 = sext i32 %21 to i64, !dbg !162
  call void @klee_assume(i64 noundef %22), !dbg !163
  %23 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 8, !dbg !164
  %24 = load i64, i64* %23, align 8, !dbg !164
  %25 = icmp sge i64 %24, 1, !dbg !165
  %26 = zext i1 %25 to i32, !dbg !165
  %27 = sext i32 %26 to i64, !dbg !166
  call void @klee_assume(i64 noundef %27), !dbg !167
  %28 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 8, !dbg !168
  %29 = load i64, i64* %28, align 8, !dbg !168
  %30 = icmp sle i64 %29, 4096, !dbg !169
  %31 = zext i1 %30 to i32, !dbg !169
  %32 = sext i32 %31 to i64, !dbg !170
  call void @klee_assume(i64 noundef %32), !dbg !171
  call void @llvm.dbg.declare(metadata i8** %4, metadata !172, metadata !DIExpression()), !dbg !173
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !174
  %34 = call i8* @xmlParseCatalogFile(i8* noundef %33), !dbg !175
  store i8* %34, i8** %4, align 8, !dbg !173
  %35 = load i8*, i8** %4, align 8, !dbg !176
  %36 = icmp ne i8* %35, null, !dbg !176
  br i1 %36, label %37, label %39, !dbg !178

37:                                               ; preds = %0
  %38 = load i8*, i8** %4, align 8, !dbg !179
  call void @free(i8* noundef %38) #5, !dbg !181
  br label %39, !dbg !182

39:                                               ; preds = %37, %0
  ret i32 0, !dbg !183
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare i32 @access(i8* noundef, i32 noundef) #3

; Function Attrs: nounwind
declare i32 @stat(i8* noundef, %struct.stat* noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/023_catalog.c_998_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "c0ef201bd02845c8e51dd3b42b2a382b")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{i32 7, !"Dwarf Version", i32 5}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{i32 7, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"Ubuntu clang version 14.0.6"}
!13 = distinct !DISubprogram(name: "xmlParseCatalogFile", scope: !1, file: !1, line: 17, type: !14, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!14 = !DISubroutineType(types: !15)
!15 = !{!3, !16}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!18 = !{}
!19 = !DILocalVariable(name: "filename", arg: 1, scope: !13, file: !1, line: 17, type: !16)
!20 = !DILocation(line: 17, column: 39, scope: !13)
!21 = !DILocalVariable(name: "fd", scope: !13, file: !1, line: 18, type: !22)
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DILocation(line: 18, column: 9, scope: !13)
!24 = !DILocalVariable(name: "statbuf", scope: !13, file: !1, line: 19, type: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !26, line: 26, size: 1152, elements: !27)
!26 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "59591d2af474d06a64835bfc23e4bb5d")
!27 = !{!28, !32, !34, !36, !39, !41, !43, !44, !45, !48, !50, !52, !60, !61, !62}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !25, file: !26, line: 31, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !30, line: 145, baseType: !31)
!30 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!31 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !25, file: !26, line: 36, baseType: !33, size: 64, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !30, line: 148, baseType: !31)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !25, file: !26, line: 44, baseType: !35, size: 64, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !30, line: 151, baseType: !31)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !25, file: !26, line: 45, baseType: !37, size: 32, offset: 192)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !30, line: 150, baseType: !38)
!38 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !25, file: !26, line: 47, baseType: !40, size: 32, offset: 224)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !30, line: 146, baseType: !38)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !25, file: !26, line: 48, baseType: !42, size: 32, offset: 256)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !30, line: 147, baseType: !38)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !25, file: !26, line: 50, baseType: !22, size: 32, offset: 288)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !25, file: !26, line: 52, baseType: !29, size: 64, offset: 320)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !25, file: !26, line: 57, baseType: !46, size: 64, offset: 384)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !30, line: 152, baseType: !47)
!47 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !25, file: !26, line: 61, baseType: !49, size: 64, offset: 448)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !30, line: 175, baseType: !47)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !25, file: !26, line: 63, baseType: !51, size: 64, offset: 512)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !30, line: 180, baseType: !47)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !25, file: !26, line: 74, baseType: !53, size: 128, offset: 576)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !54, line: 11, size: 128, elements: !55)
!54 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!55 = !{!56, !58}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !53, file: !54, line: 16, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !30, line: 160, baseType: !47)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !53, file: !54, line: 21, baseType: !59, size: 64, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !30, line: 197, baseType: !47)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !25, file: !26, line: 75, baseType: !53, size: 128, offset: 704)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !25, file: !26, line: 76, baseType: !53, size: 128, offset: 832)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !25, file: !26, line: 89, baseType: !63, size: 192, offset: 960)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 192, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 3)
!66 = !DILocation(line: 19, column: 17, scope: !13)
!67 = !DILocalVariable(name: "content", scope: !13, file: !1, line: 20, type: !3)
!68 = !DILocation(line: 20, column: 11, scope: !13)
!69 = !DILocalVariable(name: "size", scope: !13, file: !1, line: 21, type: !70)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !71, line: 46, baseType: !31)
!71 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!72 = !DILocation(line: 21, column: 12, scope: !13)
!73 = !DILocalVariable(name: "len", scope: !13, file: !1, line: 22, type: !74)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !75, line: 78, baseType: !76)
!75 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "1e435c46987a169d9f9186f63a512303")
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !30, line: 194, baseType: !47)
!77 = !DILocation(line: 22, column: 13, scope: !13)
!78 = !DILocation(line: 25, column: 15, scope: !13)
!79 = !DILocation(line: 25, column: 10, scope: !13)
!80 = !DILocation(line: 25, column: 8, scope: !13)
!81 = !DILocation(line: 26, column: 9, scope: !82)
!82 = distinct !DILexicalBlock(scope: !13, file: !1, line: 26, column: 9)
!83 = !DILocation(line: 26, column: 12, scope: !82)
!84 = !DILocation(line: 26, column: 9, scope: !13)
!85 = !DILocation(line: 27, column: 9, scope: !86)
!86 = distinct !DILexicalBlock(scope: !82, file: !1, line: 26, column: 17)
!87 = !DILocation(line: 31, column: 15, scope: !88)
!88 = distinct !DILexicalBlock(scope: !13, file: !1, line: 31, column: 9)
!89 = !DILocation(line: 31, column: 9, scope: !88)
!90 = !DILocation(line: 31, column: 29, scope: !88)
!91 = !DILocation(line: 31, column: 9, scope: !13)
!92 = !DILocation(line: 32, column: 15, scope: !93)
!93 = distinct !DILexicalBlock(scope: !88, file: !1, line: 31, column: 34)
!94 = !DILocation(line: 32, column: 9, scope: !93)
!95 = !DILocation(line: 33, column: 9, scope: !93)
!96 = !DILocation(line: 36, column: 20, scope: !13)
!97 = !DILocation(line: 36, column: 10, scope: !13)
!98 = !DILocation(line: 37, column: 9, scope: !99)
!99 = distinct !DILexicalBlock(scope: !13, file: !1, line: 37, column: 9)
!100 = !DILocation(line: 37, column: 14, scope: !99)
!101 = !DILocation(line: 37, column: 9, scope: !13)
!102 = !DILocation(line: 38, column: 15, scope: !103)
!103 = distinct !DILexicalBlock(scope: !99, file: !1, line: 37, column: 20)
!104 = !DILocation(line: 38, column: 9, scope: !103)
!105 = !DILocation(line: 39, column: 9, scope: !103)
!106 = !DILocation(line: 43, column: 29, scope: !13)
!107 = !DILocation(line: 43, column: 34, scope: !13)
!108 = !DILocation(line: 43, column: 22, scope: !13)
!109 = !DILocation(line: 43, column: 13, scope: !13)
!110 = !DILocation(line: 44, column: 10, scope: !111)
!111 = distinct !DILexicalBlock(scope: !13, file: !1, line: 44, column: 9)
!112 = !DILocation(line: 44, column: 9, scope: !13)
!113 = !DILocation(line: 45, column: 15, scope: !114)
!114 = distinct !DILexicalBlock(scope: !111, file: !1, line: 44, column: 19)
!115 = !DILocation(line: 45, column: 9, scope: !114)
!116 = !DILocation(line: 46, column: 9, scope: !114)
!117 = !DILocation(line: 51, column: 16, scope: !13)
!118 = !DILocation(line: 51, column: 20, scope: !13)
!119 = !DILocation(line: 51, column: 29, scope: !13)
!120 = !DILocation(line: 51, column: 11, scope: !13)
!121 = !DILocation(line: 51, column: 9, scope: !13)
!122 = !DILocation(line: 54, column: 5, scope: !13)
!123 = !DILocation(line: 57, column: 5, scope: !13)
!124 = !DILocation(line: 59, column: 11, scope: !13)
!125 = !DILocation(line: 59, column: 5, scope: !13)
!126 = !DILocation(line: 66, column: 9, scope: !127)
!127 = distinct !DILexicalBlock(scope: !13, file: !1, line: 66, column: 9)
!128 = !DILocation(line: 66, column: 13, scope: !127)
!129 = !DILocation(line: 66, column: 9, scope: !13)
!130 = !DILocation(line: 67, column: 14, scope: !131)
!131 = distinct !DILexicalBlock(scope: !127, file: !1, line: 66, column: 19)
!132 = !DILocation(line: 67, column: 9, scope: !131)
!133 = !DILocation(line: 68, column: 9, scope: !131)
!134 = !DILocation(line: 71, column: 5, scope: !13)
!135 = !DILocation(line: 71, column: 13, scope: !13)
!136 = !DILocation(line: 71, column: 18, scope: !13)
!137 = !DILocation(line: 72, column: 12, scope: !13)
!138 = !DILocation(line: 72, column: 5, scope: !13)
!139 = !DILocation(line: 73, column: 1, scope: !13)
!140 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 75, type: !141, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!141 = !DISubroutineType(types: !142)
!142 = !{!22}
!143 = !DILocalVariable(name: "filename", scope: !140, file: !1, line: 76, type: !144)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 256)
!147 = !DILocation(line: 76, column: 10, scope: !140)
!148 = !DILocalVariable(name: "statbuf", scope: !140, file: !1, line: 77, type: !25)
!149 = !DILocation(line: 77, column: 17, scope: !140)
!150 = !DILocation(line: 80, column: 24, scope: !140)
!151 = !DILocation(line: 80, column: 5, scope: !140)
!152 = !DILocation(line: 81, column: 5, scope: !140)
!153 = !DILocation(line: 81, column: 34, scope: !140)
!154 = !DILocation(line: 84, column: 24, scope: !140)
!155 = !DILocation(line: 84, column: 17, scope: !140)
!156 = !DILocation(line: 84, column: 40, scope: !140)
!157 = !DILocation(line: 84, column: 5, scope: !140)
!158 = !DILocation(line: 87, column: 22, scope: !140)
!159 = !DILocation(line: 87, column: 17, scope: !140)
!160 = !DILocation(line: 87, column: 42, scope: !140)
!161 = !DILocation(line: 87, column: 5, scope: !140)
!162 = !DILocation(line: 88, column: 17, scope: !140)
!163 = !DILocation(line: 88, column: 5, scope: !140)
!164 = !DILocation(line: 91, column: 25, scope: !140)
!165 = !DILocation(line: 91, column: 33, scope: !140)
!166 = !DILocation(line: 91, column: 17, scope: !140)
!167 = !DILocation(line: 91, column: 5, scope: !140)
!168 = !DILocation(line: 92, column: 25, scope: !140)
!169 = !DILocation(line: 92, column: 33, scope: !140)
!170 = !DILocation(line: 92, column: 17, scope: !140)
!171 = !DILocation(line: 92, column: 5, scope: !140)
!172 = !DILocalVariable(name: "result", scope: !140, file: !1, line: 95, type: !3)
!173 = !DILocation(line: 95, column: 11, scope: !140)
!174 = !DILocation(line: 95, column: 40, scope: !140)
!175 = !DILocation(line: 95, column: 20, scope: !140)
!176 = !DILocation(line: 97, column: 9, scope: !177)
!177 = distinct !DILexicalBlock(scope: !140, file: !1, line: 97, column: 9)
!178 = !DILocation(line: 97, column: 9, scope: !140)
!179 = !DILocation(line: 98, column: 14, scope: !180)
!180 = distinct !DILexicalBlock(scope: !177, file: !1, line: 97, column: 17)
!181 = !DILocation(line: 98, column: 9, scope: !180)
!182 = !DILocation(line: 99, column: 5, scope: !180)
!183 = !DILocation(line: 101, column: 5, scope: !140)

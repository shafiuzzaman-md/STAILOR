; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/100_runtest.c_3139_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/100_runtest.c_3139_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"test_input.txt\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"(in <= 1024) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/100_runtest.c_3139_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !12 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !17, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.declare(metadata [1024 x i8]* %3, metadata !80, metadata !DIExpression()), !dbg !84
  call void @llvm.dbg.declare(metadata i32* %4, metadata !85, metadata !DIExpression()), !dbg !86
  %5 = bitcast i32* %4 to i8*, !dbg !87
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !88
  %6 = load i32, i32* %4, align 4, !dbg !89
  %7 = icmp sge i32 %6, 0, !dbg !90
  %8 = zext i1 %7 to i32, !dbg !90
  %9 = sext i32 %8 to i64, !dbg !89
  call void @klee_assume(i64 noundef %9), !dbg !91
  %10 = load i32, i32* %4, align 4, !dbg !92
  %11 = icmp slt i32 %10, 1024, !dbg !93
  %12 = zext i1 %11 to i32, !dbg !93
  %13 = sext i32 %12 to i64, !dbg !92
  call void @klee_assume(i64 noundef %13), !dbg !94
  %14 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)), !dbg !95
  store %struct._IO_FILE* %14, %struct._IO_FILE** %2, align 8, !dbg !96
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !97
  %16 = icmp eq %struct._IO_FILE* %15, null, !dbg !99
  br i1 %16, label %17, label %18, !dbg !100

17:                                               ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !101
  br label %38, !dbg !101

18:                                               ; preds = %0
  br label %19, !dbg !103

19:                                               ; preds = %18, %33
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0, !dbg !104
  %21 = load i32, i32* %4, align 4, !dbg !107
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !108
  %23 = call i8* @fgets(i8* noundef %20, i32 noundef %21, %struct._IO_FILE* noundef %22), !dbg !109
  %24 = icmp eq i8* %23, null, !dbg !110
  br i1 %24, label %25, label %26, !dbg !111

25:                                               ; preds = %19
  br label %35, !dbg !112

26:                                               ; preds = %19
  %27 = load i32, i32* %4, align 4, !dbg !114
  %28 = icmp sle i32 %27, 1024, !dbg !114
  br i1 %28, label %29, label %31, !dbg !114

29:                                               ; preds = %26
  br i1 true, label %30, label %31, !dbg !114

30:                                               ; preds = %29
  br label %33, !dbg !114

31:                                               ; preds = %29, %26
  %32 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.5, i64 0, i64 0), i32 noundef 31, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !114
  br label %33, !dbg !114

33:                                               ; preds = %31, %30
  %34 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.5, i64 0, i64 0), i32 noundef 32, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !115
  br label %19, !dbg !103, !llvm.loop !116

35:                                               ; preds = %25
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !118
  %37 = call i32 @fclose(%struct._IO_FILE* noundef %36), !dbg !119
  store i32 0, i32* %1, align 4, !dbg !120
  br label %38, !dbg !120

38:                                               ; preds = %35, %17
  %39 = load i32, i32* %1, align 4, !dbg !121
  ret i32 %39, !dbg !121
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

declare noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare i32 @fclose(%struct._IO_FILE* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/100_runtest.c_3139_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "e90796048c8c31497d71f818230fa3ae")
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
!17 = !DILocalVariable(name: "f", scope: !12, file: !1, line: 13, type: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !20, line: 7, baseType: !21)
!20 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !22, line: 49, size: 1728, elements: !23)
!22 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "7a6d4a00a37ee6b9a40cd04bd01f5d00")
!23 = !{!24, !25, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !41, !43, !44, !45, !49, !51, !53, !57, !60, !62, !65, !68, !69, !70, !74, !75}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !21, file: !22, line: 51, baseType: !15, size: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !21, file: !22, line: 54, baseType: !26, size: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !21, file: !22, line: 55, baseType: !26, size: 64, offset: 128)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !21, file: !22, line: 56, baseType: !26, size: 64, offset: 192)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !21, file: !22, line: 57, baseType: !26, size: 64, offset: 256)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !21, file: !22, line: 58, baseType: !26, size: 64, offset: 320)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !21, file: !22, line: 59, baseType: !26, size: 64, offset: 384)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !21, file: !22, line: 60, baseType: !26, size: 64, offset: 448)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !21, file: !22, line: 61, baseType: !26, size: 64, offset: 512)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !21, file: !22, line: 64, baseType: !26, size: 64, offset: 576)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !21, file: !22, line: 65, baseType: !26, size: 64, offset: 640)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !21, file: !22, line: 66, baseType: !26, size: 64, offset: 704)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !21, file: !22, line: 68, baseType: !39, size: 64, offset: 768)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !22, line: 36, flags: DIFlagFwdDecl)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !21, file: !22, line: 70, baseType: !42, size: 64, offset: 832)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !21, file: !22, line: 72, baseType: !15, size: 32, offset: 896)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !21, file: !22, line: 73, baseType: !15, size: 32, offset: 928)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !21, file: !22, line: 74, baseType: !46, size: 64, offset: 960)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !47, line: 152, baseType: !48)
!47 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!48 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !21, file: !22, line: 77, baseType: !50, size: 16, offset: 1024)
!50 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !21, file: !22, line: 78, baseType: !52, size: 8, offset: 1040)
!52 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !21, file: !22, line: 79, baseType: !54, size: 8, offset: 1048)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 8, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 1)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !21, file: !22, line: 81, baseType: !58, size: 64, offset: 1088)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !22, line: 43, baseType: null)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !21, file: !22, line: 89, baseType: !61, size: 64, offset: 1152)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !47, line: 153, baseType: !48)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !21, file: !22, line: 91, baseType: !63, size: 64, offset: 1216)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !22, line: 37, flags: DIFlagFwdDecl)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !21, file: !22, line: 92, baseType: !66, size: 64, offset: 1280)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !22, line: 38, flags: DIFlagFwdDecl)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !21, file: !22, line: 93, baseType: !42, size: 64, offset: 1344)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !21, file: !22, line: 94, baseType: !3, size: 64, offset: 1408)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !21, file: !22, line: 95, baseType: !71, size: 64, offset: 1472)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !72, line: 46, baseType: !73)
!72 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!73 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !21, file: !22, line: 96, baseType: !15, size: 32, offset: 1536)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !21, file: !22, line: 98, baseType: !76, size: 160, offset: 1568)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 160, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 20)
!79 = !DILocation(line: 13, column: 11, scope: !12)
!80 = !DILocalVariable(name: "str", scope: !12, file: !1, line: 14, type: !81)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 8192, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 1024)
!84 = !DILocation(line: 14, column: 10, scope: !12)
!85 = !DILocalVariable(name: "in", scope: !12, file: !1, line: 15, type: !15)
!86 = !DILocation(line: 15, column: 9, scope: !12)
!87 = !DILocation(line: 17, column: 24, scope: !12)
!88 = !DILocation(line: 17, column: 5, scope: !12)
!89 = !DILocation(line: 18, column: 17, scope: !12)
!90 = !DILocation(line: 18, column: 20, scope: !12)
!91 = !DILocation(line: 18, column: 5, scope: !12)
!92 = !DILocation(line: 19, column: 17, scope: !12)
!93 = !DILocation(line: 19, column: 20, scope: !12)
!94 = !DILocation(line: 19, column: 5, scope: !12)
!95 = !DILocation(line: 21, column: 9, scope: !12)
!96 = !DILocation(line: 21, column: 7, scope: !12)
!97 = !DILocation(line: 22, column: 9, scope: !98)
!98 = distinct !DILexicalBlock(scope: !12, file: !1, line: 22, column: 9)
!99 = !DILocation(line: 22, column: 11, scope: !98)
!100 = !DILocation(line: 22, column: 9, scope: !12)
!101 = !DILocation(line: 23, column: 9, scope: !102)
!102 = distinct !DILexicalBlock(scope: !98, file: !1, line: 22, column: 20)
!103 = !DILocation(line: 26, column: 5, scope: !12)
!104 = !DILocation(line: 27, column: 20, scope: !105)
!105 = distinct !DILexicalBlock(scope: !106, file: !1, line: 27, column: 13)
!106 = distinct !DILexicalBlock(scope: !12, file: !1, line: 26, column: 15)
!107 = !DILocation(line: 27, column: 28, scope: !105)
!108 = !DILocation(line: 27, column: 32, scope: !105)
!109 = !DILocation(line: 27, column: 13, scope: !105)
!110 = !DILocation(line: 27, column: 35, scope: !105)
!111 = !DILocation(line: 27, column: 13, scope: !106)
!112 = !DILocation(line: 28, column: 13, scope: !113)
!113 = distinct !DILexicalBlock(scope: !105, file: !1, line: 27, column: 44)
!114 = !DILocation(line: 31, column: 9, scope: !106)
!115 = !DILocation(line: 32, column: 9, scope: !106)
!116 = distinct !{!116, !103, !117}
!117 = !DILocation(line: 33, column: 5, scope: !12)
!118 = !DILocation(line: 35, column: 12, scope: !12)
!119 = !DILocation(line: 35, column: 5, scope: !12)
!120 = !DILocation(line: 36, column: 5, scope: !12)
!121 = !DILocation(line: 37, column: 1, scope: !12)

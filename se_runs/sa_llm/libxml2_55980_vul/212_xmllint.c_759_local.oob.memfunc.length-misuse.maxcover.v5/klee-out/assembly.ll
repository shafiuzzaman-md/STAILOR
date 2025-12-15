; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/212_xmllint.c_759_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/212_xmllint.c_759_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [13 x i8] c"stdin_buffer\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"Test prompt: \00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"(len < 500) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_55980_vul/212_xmllint.c_759_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !10 {
  %1 = alloca i32, align 4
  %2 = alloca [500 x i8], align 16
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [500 x i8]* %2, metadata !15, metadata !DIExpression()), !dbg !20
  %7 = getelementptr inbounds [500 x i8], [500 x i8]* %2, i64 0, i64 0, !dbg !21
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 500, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0)), !dbg !22
  %8 = getelementptr inbounds [500 x i8], [500 x i8]* %2, i64 0, i64 499, !dbg !23
  %9 = load i8, i8* %8, align 1, !dbg !23
  %10 = sext i8 %9 to i32, !dbg !23
  %11 = icmp eq i32 %10, 0, !dbg !24
  %12 = zext i1 %11 to i32, !dbg !24
  %13 = sext i32 %12 to i64, !dbg !23
  call void @klee_assume(i64 noundef %13), !dbg !25
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !26, metadata !DIExpression()), !dbg !88
  %14 = getelementptr inbounds [500 x i8], [500 x i8]* %2, i64 0, i64 0, !dbg !89
  %15 = call noalias %struct._IO_FILE* @fmemopen(i8* noundef %14, i64 noundef 500, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !90
  store %struct._IO_FILE* %15, %struct._IO_FILE** %3, align 8, !dbg !88
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !91
  %17 = icmp ne %struct._IO_FILE* %16, null, !dbg !91
  br i1 %17, label %19, label %18, !dbg !93

18:                                               ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !94
  br label %42, !dbg !94

19:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %4, metadata !96, metadata !DIExpression()), !dbg !97
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !98
  store %struct._IO_FILE* %20, %struct._IO_FILE** %4, align 8, !dbg !97
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !99
  store %struct._IO_FILE* %21, %struct._IO_FILE** @stdin, align 8, !dbg !100
  call void @llvm.dbg.declare(metadata i8** %5, metadata !101, metadata !DIExpression()), !dbg !102
  %22 = call i8* @prompt(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)), !dbg !103
  store i8* %22, i8** %5, align 8, !dbg !102
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !104
  store %struct._IO_FILE* %23, %struct._IO_FILE** @stdin, align 8, !dbg !105
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !106
  %25 = call i32 @fclose(%struct._IO_FILE* noundef %24), !dbg !107
  call void @llvm.dbg.declare(metadata i32* %6, metadata !108, metadata !DIExpression()), !dbg !109
  %26 = getelementptr inbounds [500 x i8], [500 x i8]* %2, i64 0, i64 0, !dbg !110
  %27 = call i64 @strlen(i8* noundef %26) #7, !dbg !111
  %28 = trunc i64 %27 to i32, !dbg !111
  store i32 %28, i32* %6, align 4, !dbg !109
  %29 = load i32, i32* %6, align 4, !dbg !112
  %30 = icmp slt i32 %29, 500, !dbg !112
  br i1 %30, label %31, label %33, !dbg !112

31:                                               ; preds = %19
  br i1 true, label %32, label %33, !dbg !112

32:                                               ; preds = %31
  br label %35, !dbg !112

33:                                               ; preds = %31, %19
  %34 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.5, i64 0, i64 0), i32 noundef 41, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !112
  br label %35, !dbg !112

35:                                               ; preds = %33, %32
  %36 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.5, i64 0, i64 0), i32 noundef 44, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !113
  %37 = load i8*, i8** %5, align 8, !dbg !114
  %38 = icmp ne i8* %37, null, !dbg !114
  br i1 %38, label %39, label %41, !dbg !116

39:                                               ; preds = %35
  %40 = load i8*, i8** %5, align 8, !dbg !117
  call void @free(i8* noundef %40) #6, !dbg !119
  br label %41, !dbg !120

41:                                               ; preds = %39, %35
  store i32 0, i32* %1, align 4, !dbg !121
  br label %42, !dbg !121

42:                                               ; preds = %41, %18
  %43 = load i32, i32* %1, align 4, !dbg !122
  ret i32 %43, !dbg !122
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fmemopen(i8* noundef, i64 noundef, i8* noundef) #3

declare i8* @prompt(i8* noundef) #2

declare i32 @fclose(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/212_xmllint.c_759_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "699f93e89eff653b13c0fd2ae1f20588")
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
!15 = !DILocalVariable(name: "stdin_buffer", scope: !10, file: !1, line: 15, type: !16)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 4000, elements: !18)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !{!19}
!19 = !DISubrange(count: 500)
!20 = !DILocation(line: 15, column: 10, scope: !10)
!21 = !DILocation(line: 16, column: 24, scope: !10)
!22 = !DILocation(line: 16, column: 5, scope: !10)
!23 = !DILocation(line: 19, column: 17, scope: !10)
!24 = !DILocation(line: 19, column: 35, scope: !10)
!25 = !DILocation(line: 19, column: 5, scope: !10)
!26 = !DILocalVariable(name: "fake_stdin", scope: !10, file: !1, line: 22, type: !27)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !29, line: 7, baseType: !30)
!29 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !31, line: 49, size: 1728, elements: !32)
!31 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "7a6d4a00a37ee6b9a40cd04bd01f5d00")
!32 = !{!33, !34, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !49, !51, !52, !53, !57, !59, !61, !65, !68, !70, !73, !76, !77, !79, !83, !84}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !30, file: !31, line: 51, baseType: !13, size: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !30, file: !31, line: 54, baseType: !35, size: 64, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !30, file: !31, line: 55, baseType: !35, size: 64, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !30, file: !31, line: 56, baseType: !35, size: 64, offset: 192)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !30, file: !31, line: 57, baseType: !35, size: 64, offset: 256)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !30, file: !31, line: 58, baseType: !35, size: 64, offset: 320)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !30, file: !31, line: 59, baseType: !35, size: 64, offset: 384)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !30, file: !31, line: 60, baseType: !35, size: 64, offset: 448)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !30, file: !31, line: 61, baseType: !35, size: 64, offset: 512)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !30, file: !31, line: 64, baseType: !35, size: 64, offset: 576)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !30, file: !31, line: 65, baseType: !35, size: 64, offset: 640)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !30, file: !31, line: 66, baseType: !35, size: 64, offset: 704)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !30, file: !31, line: 68, baseType: !47, size: 64, offset: 768)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !31, line: 36, flags: DIFlagFwdDecl)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !30, file: !31, line: 70, baseType: !50, size: 64, offset: 832)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !30, file: !31, line: 72, baseType: !13, size: 32, offset: 896)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !30, file: !31, line: 73, baseType: !13, size: 32, offset: 928)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !30, file: !31, line: 74, baseType: !54, size: 64, offset: 960)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !55, line: 152, baseType: !56)
!55 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!56 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !30, file: !31, line: 77, baseType: !58, size: 16, offset: 1024)
!58 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !30, file: !31, line: 78, baseType: !60, size: 8, offset: 1040)
!60 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !30, file: !31, line: 79, baseType: !62, size: 8, offset: 1048)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 8, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 1)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !30, file: !31, line: 81, baseType: !66, size: 64, offset: 1088)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !31, line: 43, baseType: null)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !30, file: !31, line: 89, baseType: !69, size: 64, offset: 1152)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !55, line: 153, baseType: !56)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !30, file: !31, line: 91, baseType: !71, size: 64, offset: 1216)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !31, line: 37, flags: DIFlagFwdDecl)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !30, file: !31, line: 92, baseType: !74, size: 64, offset: 1280)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !31, line: 38, flags: DIFlagFwdDecl)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !30, file: !31, line: 93, baseType: !50, size: 64, offset: 1344)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !30, file: !31, line: 94, baseType: !78, size: 64, offset: 1408)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !30, file: !31, line: 95, baseType: !80, size: 64, offset: 1472)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !81, line: 46, baseType: !82)
!81 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!82 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !30, file: !31, line: 96, baseType: !13, size: 32, offset: 1536)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !30, file: !31, line: 98, baseType: !85, size: 160, offset: 1568)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 160, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 20)
!88 = !DILocation(line: 22, column: 11, scope: !10)
!89 = !DILocation(line: 22, column: 33, scope: !10)
!90 = !DILocation(line: 22, column: 24, scope: !10)
!91 = !DILocation(line: 23, column: 10, scope: !92)
!92 = distinct !DILexicalBlock(scope: !10, file: !1, line: 23, column: 9)
!93 = !DILocation(line: 23, column: 9, scope: !10)
!94 = !DILocation(line: 24, column: 9, scope: !95)
!95 = distinct !DILexicalBlock(scope: !92, file: !1, line: 23, column: 22)
!96 = !DILocalVariable(name: "original_stdin", scope: !10, file: !1, line: 28, type: !27)
!97 = !DILocation(line: 28, column: 11, scope: !10)
!98 = !DILocation(line: 28, column: 28, scope: !10)
!99 = !DILocation(line: 29, column: 13, scope: !10)
!100 = !DILocation(line: 29, column: 11, scope: !10)
!101 = !DILocalVariable(name: "result", scope: !10, file: !1, line: 32, type: !35)
!102 = !DILocation(line: 32, column: 11, scope: !10)
!103 = !DILocation(line: 32, column: 20, scope: !10)
!104 = !DILocation(line: 35, column: 13, scope: !10)
!105 = !DILocation(line: 35, column: 11, scope: !10)
!106 = !DILocation(line: 36, column: 12, scope: !10)
!107 = !DILocation(line: 36, column: 5, scope: !10)
!108 = !DILocalVariable(name: "len", scope: !10, file: !1, line: 40, type: !13)
!109 = !DILocation(line: 40, column: 9, scope: !10)
!110 = !DILocation(line: 40, column: 22, scope: !10)
!111 = !DILocation(line: 40, column: 15, scope: !10)
!112 = !DILocation(line: 41, column: 5, scope: !10)
!113 = !DILocation(line: 44, column: 5, scope: !10)
!114 = !DILocation(line: 47, column: 9, scope: !115)
!115 = distinct !DILexicalBlock(scope: !10, file: !1, line: 47, column: 9)
!116 = !DILocation(line: 47, column: 9, scope: !10)
!117 = !DILocation(line: 48, column: 14, scope: !118)
!118 = distinct !DILexicalBlock(scope: !115, file: !1, line: 47, column: 17)
!119 = !DILocation(line: 48, column: 9, scope: !118)
!120 = !DILocation(line: 49, column: 5, scope: !118)
!121 = !DILocation(line: 51, column: 5, scope: !10)
!122 = !DILocation(line: 52, column: 1, scope: !10)

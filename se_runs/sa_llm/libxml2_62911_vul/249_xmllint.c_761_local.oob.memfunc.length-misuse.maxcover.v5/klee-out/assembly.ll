; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/249_xmllint.c_761_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/249_xmllint.c_761_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdout = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"line_read\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"(len <= 500) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_62911_vul/249_xmllint.c_761_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.my_prompt = private unnamed_addr constant [30 x i8] c"char *my_prompt(const char *)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"test> \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlFgets(i8* noundef %0, i32 noundef %1, %struct._IO_FILE* noundef %2) #0 !dbg !14 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._IO_FILE*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !78, metadata !DIExpression()), !dbg !79
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !80, metadata !DIExpression()), !dbg !81
  store %struct._IO_FILE* %2, %struct._IO_FILE** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !82, metadata !DIExpression()), !dbg !83
  %8 = load i8*, i8** %5, align 8, !dbg !84
  %9 = load i32, i32* %6, align 4, !dbg !86
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !87
  %11 = call i8* @fgets(i8* noundef %8, i32 noundef %9, %struct._IO_FILE* noundef %10), !dbg !88
  %12 = icmp ne i8* %11, null, !dbg !88
  br i1 %12, label %14, label %13, !dbg !89

13:                                               ; preds = %3
  store i8* null, i8** %4, align 8, !dbg !90
  br label %20, !dbg !90

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8, !dbg !91
  %16 = load i32, i32* %6, align 4, !dbg !92
  %17 = sext i32 %16 to i64, !dbg !91
  %18 = getelementptr inbounds i8, i8* %15, i64 %17, !dbg !91
  store i8 0, i8* %18, align 1, !dbg !93
  %19 = load i8*, i8** %5, align 8, !dbg !94
  store i8* %19, i8** %4, align 8, !dbg !95
  br label %20, !dbg !95

20:                                               ; preds = %14, %13
  %21 = load i8*, i8** %4, align 8, !dbg !96
  ret i8* %21, !dbg !96
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @my_prompt(i8* noundef %0) #0 !dbg !97 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [501 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !102, metadata !DIExpression()), !dbg !103
  call void @llvm.dbg.declare(metadata [501 x i8]* %4, metadata !104, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.declare(metadata i32* %5, metadata !109, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.declare(metadata i8** %6, metadata !111, metadata !DIExpression()), !dbg !112
  %7 = load i8*, i8** %3, align 8, !dbg !113
  %8 = icmp ne i8* %7, null, !dbg !115
  br i1 %8, label %9, label %13, !dbg !116

9:                                                ; preds = %1
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !117
  %11 = load i8*, i8** %3, align 8, !dbg !118
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %10, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* noundef %11), !dbg !119
  br label %13, !dbg !119

13:                                               ; preds = %9, %1
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !120
  %15 = call i32 @fflush(%struct._IO_FILE* noundef %14), !dbg !121
  %16 = getelementptr inbounds [501 x i8], [501 x i8]* %4, i64 0, i64 0, !dbg !122
  call void @klee_make_symbolic(i8* noundef %16, i64 noundef 501, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)), !dbg !123
  %17 = getelementptr inbounds [501 x i8], [501 x i8]* %4, i64 0, i64 499, !dbg !124
  %18 = load i8, i8* %17, align 1, !dbg !124
  %19 = sext i8 %18 to i32, !dbg !124
  %20 = icmp eq i32 %19, 0, !dbg !125
  %21 = zext i1 %20 to i32, !dbg !125
  %22 = sext i32 %21 to i64, !dbg !124
  call void @klee_assume(i64 noundef %22), !dbg !126
  %23 = getelementptr inbounds [501 x i8], [501 x i8]* %4, i64 0, i64 0, !dbg !127
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !129
  %25 = call i8* @xmlFgets(i8* noundef %23, i32 noundef 500, %struct._IO_FILE* noundef %24), !dbg !130
  %26 = icmp ne i8* %25, null, !dbg !130
  br i1 %26, label %28, label %27, !dbg !131

27:                                               ; preds = %13
  store i8* null, i8** %2, align 8, !dbg !132
  br label %49, !dbg !132

28:                                               ; preds = %13
  %29 = getelementptr inbounds [501 x i8], [501 x i8]* %4, i64 0, i64 0, !dbg !133
  %30 = call i64 @strlen(i8* noundef %29) #6, !dbg !134
  %31 = trunc i64 %30 to i32, !dbg !134
  store i32 %31, i32* %5, align 4, !dbg !135
  %32 = load i32, i32* %5, align 4, !dbg !136
  %33 = add nsw i32 %32, 1, !dbg !137
  %34 = sext i32 %33 to i64, !dbg !136
  %35 = call noalias i8* @malloc(i64 noundef %34) #7, !dbg !138
  store i8* %35, i8** %6, align 8, !dbg !139
  %36 = load i8*, i8** %6, align 8, !dbg !140
  %37 = icmp ne i8* %36, null, !dbg !142
  br i1 %37, label %38, label %47, !dbg !143

38:                                               ; preds = %28
  %39 = load i32, i32* %5, align 4, !dbg !144
  %40 = icmp sle i32 %39, 500, !dbg !144
  br i1 %40, label %41, label %43, !dbg !144

41:                                               ; preds = %38
  br i1 true, label %42, label %43, !dbg !144

42:                                               ; preds = %41
  br label %45, !dbg !144

43:                                               ; preds = %41, %38
  %44 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.4, i64 0, i64 0), i32 noundef 36, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.my_prompt, i64 0, i64 0)), !dbg !144
  br label %45, !dbg !144

45:                                               ; preds = %43, %42
  %46 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.4, i64 0, i64 0), i32 noundef 37, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.my_prompt, i64 0, i64 0)), !dbg !146
  br label %47, !dbg !147

47:                                               ; preds = %45, %28
  %48 = load i8*, i8** %6, align 8, !dbg !148
  store i8* %48, i8** %2, align 8, !dbg !149
  br label %49, !dbg !149

49:                                               ; preds = %47, %27
  %50 = load i8*, i8** %2, align 8, !dbg !150
  ret i8* %50, !dbg !150
}

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

declare i32 @fflush(%struct._IO_FILE* noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @testSAX() #0 !dbg !151 {
  %1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !154, metadata !DIExpression()), !dbg !155
  %2 = call i8* @my_prompt(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)), !dbg !156
  store i8* %2, i8** %1, align 8, !dbg !155
  %3 = load i8*, i8** %1, align 8, !dbg !157
  %4 = icmp ne i8* %3, null, !dbg !157
  br i1 %4, label %5, label %7, !dbg !159

5:                                                ; preds = %0
  %6 = load i8*, i8** %1, align 8, !dbg !160
  call void @free(i8* noundef %6) #7, !dbg !162
  br label %7, !dbg !163

7:                                                ; preds = %5, %0
  ret i32 0, !dbg !164
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !165 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @testSAX(), !dbg !166
  ret i32 %2, !dbg !167
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/249_xmllint.c_761_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "76e72676a18b60963dba722024b91536")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 7, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"Ubuntu clang version 14.0.6"}
!14 = distinct !DISubprogram(name: "xmlFgets", scope: !1, file: !1, line: 10, type: !15, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !77)
!15 = !DISubroutineType(types: !16)
!16 = !{!4, !4, !17, !18}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !20, line: 7, baseType: !21)
!20 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !22, line: 49, size: 1728, elements: !23)
!22 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "7a6d4a00a37ee6b9a40cd04bd01f5d00")
!23 = !{!24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !39, !41, !42, !43, !47, !49, !51, !55, !58, !60, !63, !66, !67, !68, !72, !73}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !21, file: !22, line: 51, baseType: !17, size: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !21, file: !22, line: 54, baseType: !4, size: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !21, file: !22, line: 55, baseType: !4, size: 64, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !21, file: !22, line: 56, baseType: !4, size: 64, offset: 192)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !21, file: !22, line: 57, baseType: !4, size: 64, offset: 256)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !21, file: !22, line: 58, baseType: !4, size: 64, offset: 320)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !21, file: !22, line: 59, baseType: !4, size: 64, offset: 384)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !21, file: !22, line: 60, baseType: !4, size: 64, offset: 448)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !21, file: !22, line: 61, baseType: !4, size: 64, offset: 512)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !21, file: !22, line: 64, baseType: !4, size: 64, offset: 576)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !21, file: !22, line: 65, baseType: !4, size: 64, offset: 640)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !21, file: !22, line: 66, baseType: !4, size: 64, offset: 704)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !21, file: !22, line: 68, baseType: !37, size: 64, offset: 768)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !22, line: 36, flags: DIFlagFwdDecl)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !21, file: !22, line: 70, baseType: !40, size: 64, offset: 832)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !21, file: !22, line: 72, baseType: !17, size: 32, offset: 896)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !21, file: !22, line: 73, baseType: !17, size: 32, offset: 928)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !21, file: !22, line: 74, baseType: !44, size: 64, offset: 960)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !45, line: 152, baseType: !46)
!45 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!46 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !21, file: !22, line: 77, baseType: !48, size: 16, offset: 1024)
!48 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !21, file: !22, line: 78, baseType: !50, size: 8, offset: 1040)
!50 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !21, file: !22, line: 79, baseType: !52, size: 8, offset: 1048)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 1)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !21, file: !22, line: 81, baseType: !56, size: 64, offset: 1088)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !22, line: 43, baseType: null)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !21, file: !22, line: 89, baseType: !59, size: 64, offset: 1152)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !45, line: 153, baseType: !46)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !21, file: !22, line: 91, baseType: !61, size: 64, offset: 1216)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !22, line: 37, flags: DIFlagFwdDecl)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !21, file: !22, line: 92, baseType: !64, size: 64, offset: 1280)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !22, line: 38, flags: DIFlagFwdDecl)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !21, file: !22, line: 93, baseType: !40, size: 64, offset: 1344)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !21, file: !22, line: 94, baseType: !3, size: 64, offset: 1408)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !21, file: !22, line: 95, baseType: !69, size: 64, offset: 1472)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !70, line: 46, baseType: !71)
!70 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!71 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !21, file: !22, line: 96, baseType: !17, size: 32, offset: 1536)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !21, file: !22, line: 98, baseType: !74, size: 160, offset: 1568)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 160, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 20)
!77 = !{}
!78 = !DILocalVariable(name: "line_read", arg: 1, scope: !14, file: !1, line: 10, type: !4)
!79 = !DILocation(line: 10, column: 22, scope: !14)
!80 = !DILocalVariable(name: "size", arg: 2, scope: !14, file: !1, line: 10, type: !17)
!81 = !DILocation(line: 10, column: 37, scope: !14)
!82 = !DILocalVariable(name: "stream", arg: 3, scope: !14, file: !1, line: 10, type: !18)
!83 = !DILocation(line: 10, column: 49, scope: !14)
!84 = !DILocation(line: 11, column: 16, scope: !85)
!85 = distinct !DILexicalBlock(scope: !14, file: !1, line: 11, column: 9)
!86 = !DILocation(line: 11, column: 27, scope: !85)
!87 = !DILocation(line: 11, column: 33, scope: !85)
!88 = !DILocation(line: 11, column: 10, scope: !85)
!89 = !DILocation(line: 11, column: 9, scope: !14)
!90 = !DILocation(line: 12, column: 9, scope: !85)
!91 = !DILocation(line: 13, column: 5, scope: !14)
!92 = !DILocation(line: 13, column: 15, scope: !14)
!93 = !DILocation(line: 13, column: 21, scope: !14)
!94 = !DILocation(line: 14, column: 12, scope: !14)
!95 = !DILocation(line: 14, column: 5, scope: !14)
!96 = !DILocation(line: 15, column: 1, scope: !14)
!97 = distinct !DISubprogram(name: "my_prompt", scope: !1, file: !1, line: 17, type: !98, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !77)
!98 = !DISubroutineType(types: !99)
!99 = !{!4, !100}
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!102 = !DILocalVariable(name: "prompt", arg: 1, scope: !97, file: !1, line: 17, type: !100)
!103 = !DILocation(line: 17, column: 29, scope: !97)
!104 = !DILocalVariable(name: "line_read", scope: !97, file: !1, line: 18, type: !105)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 4008, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 501)
!108 = !DILocation(line: 18, column: 10, scope: !97)
!109 = !DILocalVariable(name: "len", scope: !97, file: !1, line: 19, type: !17)
!110 = !DILocation(line: 19, column: 9, scope: !97)
!111 = !DILocalVariable(name: "ret", scope: !97, file: !1, line: 20, type: !4)
!112 = !DILocation(line: 20, column: 11, scope: !97)
!113 = !DILocation(line: 22, column: 9, scope: !114)
!114 = distinct !DILexicalBlock(scope: !97, file: !1, line: 22, column: 9)
!115 = !DILocation(line: 22, column: 16, scope: !114)
!116 = !DILocation(line: 22, column: 9, scope: !97)
!117 = !DILocation(line: 23, column: 17, scope: !114)
!118 = !DILocation(line: 23, column: 31, scope: !114)
!119 = !DILocation(line: 23, column: 9, scope: !114)
!120 = !DILocation(line: 24, column: 12, scope: !97)
!121 = !DILocation(line: 24, column: 5, scope: !97)
!122 = !DILocation(line: 26, column: 24, scope: !97)
!123 = !DILocation(line: 26, column: 5, scope: !97)
!124 = !DILocation(line: 27, column: 17, scope: !97)
!125 = !DILocation(line: 27, column: 32, scope: !97)
!126 = !DILocation(line: 27, column: 5, scope: !97)
!127 = !DILocation(line: 29, column: 19, scope: !128)
!128 = distinct !DILexicalBlock(scope: !97, file: !1, line: 29, column: 9)
!129 = !DILocation(line: 29, column: 35, scope: !128)
!130 = !DILocation(line: 29, column: 10, scope: !128)
!131 = !DILocation(line: 29, column: 9, scope: !97)
!132 = !DILocation(line: 30, column: 9, scope: !128)
!133 = !DILocation(line: 32, column: 18, scope: !97)
!134 = !DILocation(line: 32, column: 11, scope: !97)
!135 = !DILocation(line: 32, column: 9, scope: !97)
!136 = !DILocation(line: 33, column: 25, scope: !97)
!137 = !DILocation(line: 33, column: 29, scope: !97)
!138 = !DILocation(line: 33, column: 18, scope: !97)
!139 = !DILocation(line: 33, column: 9, scope: !97)
!140 = !DILocation(line: 35, column: 9, scope: !141)
!141 = distinct !DILexicalBlock(scope: !97, file: !1, line: 35, column: 9)
!142 = !DILocation(line: 35, column: 13, scope: !141)
!143 = !DILocation(line: 35, column: 9, scope: !97)
!144 = !DILocation(line: 36, column: 9, scope: !145)
!145 = distinct !DILexicalBlock(scope: !141, file: !1, line: 35, column: 22)
!146 = !DILocation(line: 37, column: 9, scope: !145)
!147 = !DILocation(line: 38, column: 5, scope: !145)
!148 = !DILocation(line: 40, column: 12, scope: !97)
!149 = !DILocation(line: 40, column: 5, scope: !97)
!150 = !DILocation(line: 41, column: 1, scope: !97)
!151 = distinct !DISubprogram(name: "testSAX", scope: !1, file: !1, line: 43, type: !152, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !77)
!152 = !DISubroutineType(types: !153)
!153 = !{!17}
!154 = !DILocalVariable(name: "result", scope: !151, file: !1, line: 44, type: !4)
!155 = !DILocation(line: 44, column: 11, scope: !151)
!156 = !DILocation(line: 44, column: 20, scope: !151)
!157 = !DILocation(line: 45, column: 9, scope: !158)
!158 = distinct !DILexicalBlock(scope: !151, file: !1, line: 45, column: 9)
!159 = !DILocation(line: 45, column: 9, scope: !151)
!160 = !DILocation(line: 46, column: 14, scope: !161)
!161 = distinct !DILexicalBlock(scope: !158, file: !1, line: 45, column: 17)
!162 = !DILocation(line: 46, column: 9, scope: !161)
!163 = !DILocation(line: 47, column: 5, scope: !161)
!164 = !DILocation(line: 48, column: 5, scope: !151)
!165 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 51, type: !152, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !77)
!166 = !DILocation(line: 52, column: 12, scope: !165)
!167 = !DILocation(line: 52, column: 5, scope: !165)

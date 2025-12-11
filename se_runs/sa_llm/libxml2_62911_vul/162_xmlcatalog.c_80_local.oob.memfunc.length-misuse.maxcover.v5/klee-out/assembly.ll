; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/162_xmlcatalog.c_80_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/162_xmlcatalog.c_80_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdout = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"(len <= 500) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [107 x i8] c"se_runs/sa_llm/libxml2_62911_vul/162_xmlcatalog.c_80_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlReadline = private unnamed_addr constant [32 x i8] c"char *xmlReadline(const char *)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"prompt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlFgets(i8* noundef %0, i32 noundef %1, %struct._IO_FILE* noundef %2) #0 !dbg !16 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._IO_FILE*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !80, metadata !DIExpression()), !dbg !81
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !82, metadata !DIExpression()), !dbg !83
  store %struct._IO_FILE* %2, %struct._IO_FILE** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !84, metadata !DIExpression()), !dbg !85
  %8 = load i8*, i8** %5, align 8, !dbg !86
  %9 = load i32, i32* %6, align 4, !dbg !88
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !89
  %11 = call i8* @fgets(i8* noundef %8, i32 noundef %9, %struct._IO_FILE* noundef %10), !dbg !90
  %12 = icmp ne i8* %11, null, !dbg !90
  br i1 %12, label %14, label %13, !dbg !91

13:                                               ; preds = %3
  store i8* null, i8** %4, align 8, !dbg !92
  br label %20, !dbg !92

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8, !dbg !93
  %16 = load i32, i32* %6, align 4, !dbg !94
  %17 = sext i32 %16 to i64, !dbg !93
  %18 = getelementptr inbounds i8, i8* %15, i64 %17, !dbg !93
  store i8 0, i8* %18, align 1, !dbg !95
  %19 = load i8*, i8** %5, align 8, !dbg !96
  store i8* %19, i8** %4, align 8, !dbg !97
  br label %20, !dbg !97

20:                                               ; preds = %14, %13
  %21 = load i8*, i8** %4, align 8, !dbg !98
  ret i8* %21, !dbg !98
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlReadline(i8* noundef %0) #0 !dbg !99 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [501 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !104, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata [501 x i8]* %4, metadata !106, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.declare(metadata i8** %5, metadata !111, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.declare(metadata i32* %6, metadata !113, metadata !DIExpression()), !dbg !114
  %7 = load i8*, i8** %3, align 8, !dbg !115
  %8 = icmp ne i8* %7, null, !dbg !117
  br i1 %8, label %9, label %13, !dbg !118

9:                                                ; preds = %1
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !119
  %11 = load i8*, i8** %3, align 8, !dbg !120
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %10, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* noundef %11), !dbg !121
  br label %13, !dbg !121

13:                                               ; preds = %9, %1
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !122
  %15 = call i32 @fflush(%struct._IO_FILE* noundef %14), !dbg !123
  %16 = getelementptr inbounds [501 x i8], [501 x i8]* %4, i64 0, i64 0, !dbg !124
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !126
  %18 = call i8* @xmlFgets(i8* noundef %16, i32 noundef 500, %struct._IO_FILE* noundef %17), !dbg !127
  %19 = icmp ne i8* %18, null, !dbg !127
  br i1 %19, label %21, label %20, !dbg !128

20:                                               ; preds = %13
  store i8* null, i8** %2, align 8, !dbg !129
  br label %48, !dbg !129

21:                                               ; preds = %13
  %22 = getelementptr inbounds [501 x i8], [501 x i8]* %4, i64 0, i64 0, !dbg !130
  %23 = call i64 @strlen(i8* noundef %22) #8, !dbg !131
  %24 = trunc i64 %23 to i32, !dbg !131
  store i32 %24, i32* %6, align 4, !dbg !132
  %25 = load i32, i32* %6, align 4, !dbg !133
  %26 = add nsw i32 %25, 1, !dbg !134
  %27 = sext i32 %26 to i64, !dbg !133
  %28 = call noalias i8* @malloc(i64 noundef %27) #9, !dbg !135
  store i8* %28, i8** %5, align 8, !dbg !136
  %29 = load i8*, i8** %5, align 8, !dbg !137
  %30 = icmp ne i8* %29, null, !dbg !139
  br i1 %30, label %31, label %46, !dbg !140

31:                                               ; preds = %21
  %32 = load i32, i32* %6, align 4, !dbg !141
  %33 = icmp sle i32 %32, 500, !dbg !141
  br i1 %33, label %34, label %36, !dbg !141

34:                                               ; preds = %31
  br i1 true, label %35, label %36, !dbg !141

35:                                               ; preds = %34
  br label %38, !dbg !141

36:                                               ; preds = %34, %31
  %37 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.3, i64 0, i64 0), i32 noundef 33, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.xmlReadline, i64 0, i64 0)), !dbg !141
  br label %38, !dbg !141

38:                                               ; preds = %36, %35
  %39 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.3, i64 0, i64 0), i32 noundef 34, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.xmlReadline, i64 0, i64 0)), !dbg !143
  %40 = load i8*, i8** %5, align 8, !dbg !144
  %41 = getelementptr inbounds [501 x i8], [501 x i8]* %4, i64 0, i64 0, !dbg !145
  %42 = load i32, i32* %6, align 4, !dbg !146
  %43 = add nsw i32 %42, 1, !dbg !147
  %44 = sext i32 %43 to i64, !dbg !146
  %45 = call i8* @memcpy(i8* %40, i8* %41, i64 %44), !dbg !145
  br label %46, !dbg !148

46:                                               ; preds = %38, %21
  %47 = load i8*, i8** %5, align 8, !dbg !149
  store i8* %47, i8** %2, align 8, !dbg !150
  br label %48, !dbg !150

48:                                               ; preds = %46, %20
  %49 = load i8*, i8** %2, align 8, !dbg !151
  ret i8* %49, !dbg !151
}

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

declare i32 @fflush(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !152 {
  %1 = alloca i32, align 4
  %2 = alloca [100 x i8], align 16
  %3 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [100 x i8]* %2, metadata !155, metadata !DIExpression()), !dbg !159
  %4 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0, !dbg !160
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 100, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)), !dbg !161
  %5 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 99, !dbg !162
  store i8 0, i8* %5, align 1, !dbg !163
  call void @llvm.dbg.declare(metadata i8** %3, metadata !164, metadata !DIExpression()), !dbg !165
  %6 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0, !dbg !166
  %7 = call i8* @xmlReadline(i8* noundef %6), !dbg !167
  store i8* %7, i8** %3, align 8, !dbg !165
  %8 = load i8*, i8** %3, align 8, !dbg !168
  %9 = icmp ne i8* %8, null, !dbg !170
  br i1 %9, label %10, label %12, !dbg !171

10:                                               ; preds = %0
  %11 = load i8*, i8** %3, align 8, !dbg !172
  call void @free(i8* noundef %11) #9, !dbg !174
  br label %12, !dbg !175

12:                                               ; preds = %10, %0
  ret i32 0, !dbg !176
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !177 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !183, metadata !DIExpression()), !dbg !184
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !185, metadata !DIExpression()), !dbg !186
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !187, metadata !DIExpression()), !dbg !188
  call void @llvm.dbg.declare(metadata i8** %7, metadata !189, metadata !DIExpression()), !dbg !190
  %9 = load i8*, i8** %4, align 8, !dbg !191
  store i8* %9, i8** %7, align 8, !dbg !190
  call void @llvm.dbg.declare(metadata i8** %8, metadata !192, metadata !DIExpression()), !dbg !193
  %10 = load i8*, i8** %5, align 8, !dbg !194
  store i8* %10, i8** %8, align 8, !dbg !193
  br label %11, !dbg !195

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !196
  %13 = add i64 %12, -1, !dbg !196
  store i64 %13, i64* %6, align 8, !dbg !196
  %14 = icmp ugt i64 %12, 0, !dbg !197
  br i1 %14, label %15, label %21, !dbg !195

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !198
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !198
  store i8* %17, i8** %8, align 8, !dbg !198
  %18 = load i8, i8* %16, align 1, !dbg !199
  %19 = load i8*, i8** %7, align 8, !dbg !200
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !200
  store i8* %20, i8** %7, align 8, !dbg !200
  store i8 %18, i8* %19, align 1, !dbg !201
  br label %11, !dbg !195, !llvm.loop !202

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !204
  ret i8* %22, !dbg !205
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15, !15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/162_xmlcatalog.c_80_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "5106ef911689340b3ddc0ccf10462c9a")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = distinct !DICompileUnit(language: DW_LANG_C99, file: !7, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!7 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!8 = !{i32 7, !"Dwarf Version", i32 5}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{i32 7, !"PIC Level", i32 2}
!12 = !{i32 7, !"PIE Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"Ubuntu clang version 14.0.6"}
!16 = distinct !DISubprogram(name: "xmlFgets", scope: !1, file: !1, line: 10, type: !17, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !79)
!17 = !DISubroutineType(types: !18)
!18 = !{!4, !4, !19, !20}
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !22, line: 7, baseType: !23)
!22 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !24, line: 49, size: 1728, elements: !25)
!24 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "7a6d4a00a37ee6b9a40cd04bd01f5d00")
!25 = !{!26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !41, !43, !44, !45, !49, !51, !53, !57, !60, !62, !65, !68, !69, !70, !74, !75}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !23, file: !24, line: 51, baseType: !19, size: 32)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !23, file: !24, line: 54, baseType: !4, size: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !23, file: !24, line: 55, baseType: !4, size: 64, offset: 128)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !23, file: !24, line: 56, baseType: !4, size: 64, offset: 192)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !23, file: !24, line: 57, baseType: !4, size: 64, offset: 256)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !23, file: !24, line: 58, baseType: !4, size: 64, offset: 320)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !23, file: !24, line: 59, baseType: !4, size: 64, offset: 384)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !23, file: !24, line: 60, baseType: !4, size: 64, offset: 448)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !23, file: !24, line: 61, baseType: !4, size: 64, offset: 512)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !23, file: !24, line: 64, baseType: !4, size: 64, offset: 576)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !23, file: !24, line: 65, baseType: !4, size: 64, offset: 640)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !23, file: !24, line: 66, baseType: !4, size: 64, offset: 704)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !23, file: !24, line: 68, baseType: !39, size: 64, offset: 768)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !24, line: 36, flags: DIFlagFwdDecl)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !23, file: !24, line: 70, baseType: !42, size: 64, offset: 832)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !23, file: !24, line: 72, baseType: !19, size: 32, offset: 896)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !23, file: !24, line: 73, baseType: !19, size: 32, offset: 928)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !23, file: !24, line: 74, baseType: !46, size: 64, offset: 960)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !47, line: 152, baseType: !48)
!47 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!48 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !23, file: !24, line: 77, baseType: !50, size: 16, offset: 1024)
!50 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !23, file: !24, line: 78, baseType: !52, size: 8, offset: 1040)
!52 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !23, file: !24, line: 79, baseType: !54, size: 8, offset: 1048)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 1)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !23, file: !24, line: 81, baseType: !58, size: 64, offset: 1088)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !24, line: 43, baseType: null)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !23, file: !24, line: 89, baseType: !61, size: 64, offset: 1152)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !47, line: 153, baseType: !48)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !23, file: !24, line: 91, baseType: !63, size: 64, offset: 1216)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !24, line: 37, flags: DIFlagFwdDecl)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !23, file: !24, line: 92, baseType: !66, size: 64, offset: 1280)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !24, line: 38, flags: DIFlagFwdDecl)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !23, file: !24, line: 93, baseType: !42, size: 64, offset: 1344)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !23, file: !24, line: 94, baseType: !3, size: 64, offset: 1408)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !23, file: !24, line: 95, baseType: !71, size: 64, offset: 1472)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !72, line: 46, baseType: !73)
!72 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!73 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !23, file: !24, line: 96, baseType: !19, size: 32, offset: 1536)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !23, file: !24, line: 98, baseType: !76, size: 160, offset: 1568)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 160, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 20)
!79 = !{}
!80 = !DILocalVariable(name: "line_read", arg: 1, scope: !16, file: !1, line: 10, type: !4)
!81 = !DILocation(line: 10, column: 22, scope: !16)
!82 = !DILocalVariable(name: "size", arg: 2, scope: !16, file: !1, line: 10, type: !19)
!83 = !DILocation(line: 10, column: 37, scope: !16)
!84 = !DILocalVariable(name: "stream", arg: 3, scope: !16, file: !1, line: 10, type: !20)
!85 = !DILocation(line: 10, column: 49, scope: !16)
!86 = !DILocation(line: 11, column: 16, scope: !87)
!87 = distinct !DILexicalBlock(scope: !16, file: !1, line: 11, column: 9)
!88 = !DILocation(line: 11, column: 27, scope: !87)
!89 = !DILocation(line: 11, column: 33, scope: !87)
!90 = !DILocation(line: 11, column: 10, scope: !87)
!91 = !DILocation(line: 11, column: 9, scope: !16)
!92 = !DILocation(line: 12, column: 9, scope: !87)
!93 = !DILocation(line: 13, column: 5, scope: !16)
!94 = !DILocation(line: 13, column: 15, scope: !16)
!95 = !DILocation(line: 13, column: 21, scope: !16)
!96 = !DILocation(line: 14, column: 12, scope: !16)
!97 = !DILocation(line: 14, column: 5, scope: !16)
!98 = !DILocation(line: 15, column: 1, scope: !16)
!99 = distinct !DISubprogram(name: "xmlReadline", scope: !1, file: !1, line: 17, type: !100, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !79)
!100 = !DISubroutineType(types: !101)
!101 = !{!4, !102}
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!104 = !DILocalVariable(name: "prompt", arg: 1, scope: !99, file: !1, line: 17, type: !102)
!105 = !DILocation(line: 17, column: 31, scope: !99)
!106 = !DILocalVariable(name: "line_read", scope: !99, file: !1, line: 18, type: !107)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 4008, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 501)
!110 = !DILocation(line: 18, column: 10, scope: !99)
!111 = !DILocalVariable(name: "ret", scope: !99, file: !1, line: 19, type: !4)
!112 = !DILocation(line: 19, column: 11, scope: !99)
!113 = !DILocalVariable(name: "len", scope: !99, file: !1, line: 20, type: !19)
!114 = !DILocation(line: 20, column: 9, scope: !99)
!115 = !DILocation(line: 22, column: 9, scope: !116)
!116 = distinct !DILexicalBlock(scope: !99, file: !1, line: 22, column: 9)
!117 = !DILocation(line: 22, column: 16, scope: !116)
!118 = !DILocation(line: 22, column: 9, scope: !99)
!119 = !DILocation(line: 23, column: 17, scope: !116)
!120 = !DILocation(line: 23, column: 31, scope: !116)
!121 = !DILocation(line: 23, column: 9, scope: !116)
!122 = !DILocation(line: 24, column: 12, scope: !99)
!123 = !DILocation(line: 24, column: 5, scope: !99)
!124 = !DILocation(line: 26, column: 19, scope: !125)
!125 = distinct !DILexicalBlock(scope: !99, file: !1, line: 26, column: 9)
!126 = !DILocation(line: 26, column: 35, scope: !125)
!127 = !DILocation(line: 26, column: 10, scope: !125)
!128 = !DILocation(line: 26, column: 9, scope: !99)
!129 = !DILocation(line: 27, column: 9, scope: !125)
!130 = !DILocation(line: 29, column: 18, scope: !99)
!131 = !DILocation(line: 29, column: 11, scope: !99)
!132 = !DILocation(line: 29, column: 9, scope: !99)
!133 = !DILocation(line: 30, column: 25, scope: !99)
!134 = !DILocation(line: 30, column: 29, scope: !99)
!135 = !DILocation(line: 30, column: 18, scope: !99)
!136 = !DILocation(line: 30, column: 9, scope: !99)
!137 = !DILocation(line: 32, column: 9, scope: !138)
!138 = distinct !DILexicalBlock(scope: !99, file: !1, line: 32, column: 9)
!139 = !DILocation(line: 32, column: 13, scope: !138)
!140 = !DILocation(line: 32, column: 9, scope: !99)
!141 = !DILocation(line: 33, column: 9, scope: !142)
!142 = distinct !DILexicalBlock(scope: !138, file: !1, line: 32, column: 22)
!143 = !DILocation(line: 34, column: 9, scope: !142)
!144 = !DILocation(line: 35, column: 16, scope: !142)
!145 = !DILocation(line: 35, column: 9, scope: !142)
!146 = !DILocation(line: 35, column: 32, scope: !142)
!147 = !DILocation(line: 35, column: 36, scope: !142)
!148 = !DILocation(line: 36, column: 5, scope: !142)
!149 = !DILocation(line: 38, column: 12, scope: !99)
!150 = !DILocation(line: 38, column: 5, scope: !99)
!151 = !DILocation(line: 39, column: 1, scope: !99)
!152 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 41, type: !153, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !79)
!153 = !DISubroutineType(types: !154)
!154 = !{!19}
!155 = !DILocalVariable(name: "prompt", scope: !152, file: !1, line: 42, type: !156)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 800, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 100)
!159 = !DILocation(line: 42, column: 10, scope: !152)
!160 = !DILocation(line: 43, column: 24, scope: !152)
!161 = !DILocation(line: 43, column: 5, scope: !152)
!162 = !DILocation(line: 44, column: 5, scope: !152)
!163 = !DILocation(line: 44, column: 32, scope: !152)
!164 = !DILocalVariable(name: "result", scope: !152, file: !1, line: 46, type: !4)
!165 = !DILocation(line: 46, column: 11, scope: !152)
!166 = !DILocation(line: 46, column: 32, scope: !152)
!167 = !DILocation(line: 46, column: 20, scope: !152)
!168 = !DILocation(line: 47, column: 9, scope: !169)
!169 = distinct !DILexicalBlock(scope: !152, file: !1, line: 47, column: 9)
!170 = !DILocation(line: 47, column: 16, scope: !169)
!171 = !DILocation(line: 47, column: 9, scope: !152)
!172 = !DILocation(line: 48, column: 14, scope: !173)
!173 = distinct !DILexicalBlock(scope: !169, file: !1, line: 47, column: 25)
!174 = !DILocation(line: 48, column: 9, scope: !173)
!175 = !DILocation(line: 49, column: 5, scope: !173)
!176 = !DILocation(line: 51, column: 5, scope: !152)
!177 = distinct !DISubprogram(name: "memcpy", scope: !178, file: !178, line: 12, type: !179, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !79)
!178 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!179 = !DISubroutineType(types: !180)
!180 = !{!3, !3, !181, !71}
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!183 = !DILocalVariable(name: "destaddr", arg: 1, scope: !177, file: !178, line: 12, type: !3)
!184 = !DILocation(line: 12, column: 20, scope: !177)
!185 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !177, file: !178, line: 12, type: !181)
!186 = !DILocation(line: 12, column: 42, scope: !177)
!187 = !DILocalVariable(name: "len", arg: 3, scope: !177, file: !178, line: 12, type: !71)
!188 = !DILocation(line: 12, column: 58, scope: !177)
!189 = !DILocalVariable(name: "dest", scope: !177, file: !178, line: 13, type: !4)
!190 = !DILocation(line: 13, column: 9, scope: !177)
!191 = !DILocation(line: 13, column: 16, scope: !177)
!192 = !DILocalVariable(name: "src", scope: !177, file: !178, line: 14, type: !102)
!193 = !DILocation(line: 14, column: 15, scope: !177)
!194 = !DILocation(line: 14, column: 21, scope: !177)
!195 = !DILocation(line: 16, column: 3, scope: !177)
!196 = !DILocation(line: 16, column: 13, scope: !177)
!197 = !DILocation(line: 16, column: 16, scope: !177)
!198 = !DILocation(line: 17, column: 19, scope: !177)
!199 = !DILocation(line: 17, column: 15, scope: !177)
!200 = !DILocation(line: 17, column: 10, scope: !177)
!201 = !DILocation(line: 17, column: 13, scope: !177)
!202 = distinct !{!202, !195, !198, !203}
!203 = !{!"llvm.loop.mustprogress"}
!204 = !DILocation(line: 18, column: 10, scope: !177)
!205 = !DILocation(line: 18, column: 3, scope: !177)

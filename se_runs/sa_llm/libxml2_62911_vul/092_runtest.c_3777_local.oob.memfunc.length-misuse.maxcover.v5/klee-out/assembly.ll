; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/092_runtest.c_3777_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/092_runtest.c_3777_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [19 x i8] c"len(base) == %d !\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"(len < sizeof(prefix)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/092_runtest.c_3777_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fprintf(%struct._IO_FILE* noundef nonnull %0, i8* noundef %1, ...) #0 !dbg !12 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !81, metadata !DIExpression()), !dbg !82
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !83, metadata !DIExpression()), !dbg !84
  ret i32 0, !dbg !85
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_function(i8* noundef %0, i8* noundef %1) #0 !dbg !86 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !89, metadata !DIExpression()), !dbg !90
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !91, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.declare(metadata i32* %6, metadata !93, metadata !DIExpression()), !dbg !94
  store i32 0, i32* %6, align 4, !dbg !95
  br label %7, !dbg !97

7:                                                ; preds = %16, %2
  %8 = load i8*, i8** %4, align 8, !dbg !98
  %9 = load i32, i32* %6, align 4, !dbg !100
  %10 = sext i32 %9 to i64, !dbg !98
  %11 = getelementptr inbounds i8, i8* %8, i64 %10, !dbg !98
  %12 = load i8, i8* %11, align 1, !dbg !98
  %13 = sext i8 %12 to i32, !dbg !98
  %14 = icmp ne i32 %13, 0, !dbg !101
  br i1 %14, label %15, label %19, !dbg !102

15:                                               ; preds = %7
  br label %16, !dbg !102

16:                                               ; preds = %15
  %17 = load i32, i32* %6, align 4, !dbg !103
  %18 = add nsw i32 %17, 1, !dbg !103
  store i32 %18, i32* %6, align 4, !dbg !103
  br label %7, !dbg !104, !llvm.loop !105

19:                                               ; preds = %7
  %20 = load i32, i32* %6, align 4, !dbg !108
  %21 = icmp sgt i32 %20, 499, !dbg !110
  br i1 %21, label %25, label %22, !dbg !111

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4, !dbg !112
  %24 = icmp slt i32 %23, 5, !dbg !113
  br i1 %24, label %25, label %29, !dbg !114

25:                                               ; preds = %22, %19
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !115
  %27 = load i32, i32* %6, align 4, !dbg !117
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %26, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef %27), !dbg !118
  store i32 -1, i32* %3, align 4, !dbg !119
  br label %41, !dbg !119

29:                                               ; preds = %22
  %30 = load i32, i32* %6, align 4, !dbg !120
  %31 = sub nsw i32 %30, 4, !dbg !120
  store i32 %31, i32* %6, align 4, !dbg !120
  %32 = load i8*, i8** %5, align 8, !dbg !121
  %33 = load i8*, i8** %4, align 8, !dbg !122
  %34 = load i32, i32* %6, align 4, !dbg !123
  %35 = sext i32 %34 to i64, !dbg !123
  %36 = call i8* @memcpy(i8* %32, i8* %33, i64 %35), !dbg !124
  %37 = load i8*, i8** %5, align 8, !dbg !125
  %38 = load i32, i32* %6, align 4, !dbg !126
  %39 = sext i32 %38 to i64, !dbg !125
  %40 = getelementptr inbounds i8, i8* %37, i64 %39, !dbg !125
  store i8 0, i8* %40, align 1, !dbg !127
  store i32 0, i32* %3, align 4, !dbg !128
  br label %41, !dbg !128

41:                                               ; preds = %29, %25
  %42 = load i32, i32* %3, align 4, !dbg !129
  ret i32 %42, !dbg !129
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !130 {
  %1 = alloca i32, align 4
  %2 = alloca [504 x i8], align 16
  %3 = alloca [500 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [504 x i8]* %2, metadata !133, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.declare(metadata [500 x i8]* %3, metadata !138, metadata !DIExpression()), !dbg !142
  %6 = getelementptr inbounds [504 x i8], [504 x i8]* %2, i64 0, i64 0, !dbg !143
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 504, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !144
  %7 = getelementptr inbounds [504 x i8], [504 x i8]* %2, i64 0, i64 503, !dbg !145
  store i8 0, i8* %7, align 1, !dbg !146
  %8 = getelementptr inbounds [500 x i8], [500 x i8]* %3, i64 0, i64 0, !dbg !147
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 500, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)), !dbg !148
  call void @llvm.dbg.declare(metadata i32* %4, metadata !149, metadata !DIExpression()), !dbg !150
  %9 = getelementptr inbounds [504 x i8], [504 x i8]* %2, i64 0, i64 0, !dbg !151
  %10 = getelementptr inbounds [500 x i8], [500 x i8]* %3, i64 0, i64 0, !dbg !152
  %11 = call i32 @target_function(i8* noundef %9, i8* noundef %10), !dbg !153
  store i32 %11, i32* %4, align 4, !dbg !150
  call void @llvm.dbg.declare(metadata i32* %5, metadata !154, metadata !DIExpression()), !dbg !155
  store i32 0, i32* %5, align 4, !dbg !155
  br label %12, !dbg !156

12:                                               ; preds = %25, %0
  %13 = load i32, i32* %5, align 4, !dbg !157
  %14 = sext i32 %13 to i64, !dbg !158
  %15 = getelementptr inbounds [504 x i8], [504 x i8]* %2, i64 0, i64 %14, !dbg !158
  %16 = load i8, i8* %15, align 1, !dbg !158
  %17 = sext i8 %16 to i32, !dbg !158
  %18 = icmp ne i32 %17, 0, !dbg !159
  br i1 %18, label %19, label %23, !dbg !160

19:                                               ; preds = %12
  %20 = load i32, i32* %5, align 4, !dbg !161
  %21 = sext i32 %20 to i64, !dbg !161
  %22 = icmp ult i64 %21, 504, !dbg !162
  br label %23

23:                                               ; preds = %19, %12
  %24 = phi i1 [ false, %12 ], [ %22, %19 ], !dbg !163
  br i1 %24, label %25, label %28, !dbg !156

25:                                               ; preds = %23
  %26 = load i32, i32* %5, align 4, !dbg !164
  %27 = add nsw i32 %26, 1, !dbg !164
  store i32 %27, i32* %5, align 4, !dbg !164
  br label %12, !dbg !156, !llvm.loop !166

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4, !dbg !168
  %30 = icmp sgt i32 %29, 499, !dbg !170
  br i1 %30, label %46, label %31, !dbg !171

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4, !dbg !172
  %33 = icmp slt i32 %32, 5, !dbg !173
  br i1 %33, label %46, label %34, !dbg !174

34:                                               ; preds = %31
  %35 = load i32, i32* %5, align 4, !dbg !175
  %36 = sub nsw i32 %35, 4, !dbg !175
  store i32 %36, i32* %5, align 4, !dbg !175
  %37 = load i32, i32* %5, align 4, !dbg !177
  %38 = sext i32 %37 to i64, !dbg !177
  %39 = icmp ult i64 %38, 500, !dbg !177
  br i1 %39, label %40, label %42, !dbg !177

40:                                               ; preds = %34
  br i1 true, label %41, label %42, !dbg !177

41:                                               ; preds = %40
  br label %44, !dbg !177

42:                                               ; preds = %40, %34
  %43 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.5, i64 0, i64 0), i32 noundef 66, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !177
  br label %44, !dbg !177

44:                                               ; preds = %42, %41
  %45 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.5, i64 0, i64 0), i32 noundef 69, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !178
  br label %46, !dbg !179

46:                                               ; preds = %44, %31, %28
  ret i32 0, !dbg !180
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #5 !dbg !181 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !187, metadata !DIExpression()), !dbg !188
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !189, metadata !DIExpression()), !dbg !190
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !191, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.declare(metadata i8** %7, metadata !193, metadata !DIExpression()), !dbg !194
  %9 = load i8*, i8** %4, align 8, !dbg !195
  store i8* %9, i8** %7, align 8, !dbg !194
  call void @llvm.dbg.declare(metadata i8** %8, metadata !196, metadata !DIExpression()), !dbg !197
  %10 = load i8*, i8** %5, align 8, !dbg !198
  store i8* %10, i8** %8, align 8, !dbg !197
  br label %11, !dbg !199

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !200
  %13 = add i64 %12, -1, !dbg !200
  store i64 %13, i64* %6, align 8, !dbg !200
  %14 = icmp ugt i64 %12, 0, !dbg !201
  br i1 %14, label %15, label %21, !dbg !199

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !202
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !202
  store i8* %17, i8** %8, align 8, !dbg !202
  %18 = load i8, i8* %16, align 1, !dbg !203
  %19 = load i8*, i8** %7, align 8, !dbg !204
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !204
  store i8* %20, i8** %7, align 8, !dbg !204
  store i8 %18, i8* %19, align 1, !dbg !205
  br label %11, !dbg !199, !llvm.loop !206

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !207
  ret i8* %22, !dbg !208
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11, !11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/092_runtest.c_3777_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "9842e0bd7bab305ddb1cc8ea8ade5296")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 7, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"Ubuntu clang version 14.0.6"}
!12 = distinct !DISubprogram(name: "fprintf", scope: !1, file: !1, line: 11, type: !13, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !80)
!13 = !DISubroutineType(types: !14)
!14 = !{!15, !16, !78, null}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !18, line: 7, baseType: !19)
!18 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !20, line: 49, size: 1728, elements: !21)
!20 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "7a6d4a00a37ee6b9a40cd04bd01f5d00")
!21 = !{!22, !23, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !39, !41, !42, !43, !47, !49, !51, !55, !58, !60, !63, !66, !67, !69, !73, !74}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !19, file: !20, line: 51, baseType: !15, size: 32)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !19, file: !20, line: 54, baseType: !24, size: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !19, file: !20, line: 55, baseType: !24, size: 64, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !19, file: !20, line: 56, baseType: !24, size: 64, offset: 192)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !19, file: !20, line: 57, baseType: !24, size: 64, offset: 256)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !19, file: !20, line: 58, baseType: !24, size: 64, offset: 320)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !19, file: !20, line: 59, baseType: !24, size: 64, offset: 384)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !19, file: !20, line: 60, baseType: !24, size: 64, offset: 448)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !19, file: !20, line: 61, baseType: !24, size: 64, offset: 512)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !19, file: !20, line: 64, baseType: !24, size: 64, offset: 576)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !19, file: !20, line: 65, baseType: !24, size: 64, offset: 640)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !19, file: !20, line: 66, baseType: !24, size: 64, offset: 704)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !19, file: !20, line: 68, baseType: !37, size: 64, offset: 768)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !20, line: 36, flags: DIFlagFwdDecl)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !19, file: !20, line: 70, baseType: !40, size: 64, offset: 832)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !19, file: !20, line: 72, baseType: !15, size: 32, offset: 896)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !19, file: !20, line: 73, baseType: !15, size: 32, offset: 928)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !19, file: !20, line: 74, baseType: !44, size: 64, offset: 960)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !45, line: 152, baseType: !46)
!45 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!46 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !19, file: !20, line: 77, baseType: !48, size: 16, offset: 1024)
!48 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !19, file: !20, line: 78, baseType: !50, size: 8, offset: 1040)
!50 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !19, file: !20, line: 79, baseType: !52, size: 8, offset: 1048)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 8, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 1)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !19, file: !20, line: 81, baseType: !56, size: 64, offset: 1088)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !20, line: 43, baseType: null)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !19, file: !20, line: 89, baseType: !59, size: 64, offset: 1152)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !45, line: 153, baseType: !46)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !19, file: !20, line: 91, baseType: !61, size: 64, offset: 1216)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !20, line: 37, flags: DIFlagFwdDecl)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !19, file: !20, line: 92, baseType: !64, size: 64, offset: 1280)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !20, line: 38, flags: DIFlagFwdDecl)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !19, file: !20, line: 93, baseType: !40, size: 64, offset: 1344)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !19, file: !20, line: 94, baseType: !68, size: 64, offset: 1408)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !19, file: !20, line: 95, baseType: !70, size: 64, offset: 1472)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !71, line: 46, baseType: !72)
!71 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!72 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !19, file: !20, line: 96, baseType: !15, size: 32, offset: 1536)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !19, file: !20, line: 98, baseType: !75, size: 160, offset: 1568)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 160, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 20)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!80 = !{}
!81 = !DILocalVariable(name: "stream", arg: 1, scope: !12, file: !1, line: 11, type: !16)
!82 = !DILocation(line: 11, column: 19, scope: !12)
!83 = !DILocalVariable(name: "format", arg: 2, scope: !12, file: !1, line: 11, type: !78)
!84 = !DILocation(line: 11, column: 39, scope: !12)
!85 = !DILocation(line: 12, column: 5, scope: !12)
!86 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 16, type: !87, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !80)
!87 = !DISubroutineType(types: !88)
!88 = !{!15, !78, !24}
!89 = !DILocalVariable(name: "base", arg: 1, scope: !86, file: !1, line: 16, type: !78)
!90 = !DILocation(line: 16, column: 33, scope: !86)
!91 = !DILocalVariable(name: "prefix", arg: 2, scope: !86, file: !1, line: 16, type: !24)
!92 = !DILocation(line: 16, column: 45, scope: !86)
!93 = !DILocalVariable(name: "len", scope: !86, file: !1, line: 17, type: !15)
!94 = !DILocation(line: 17, column: 9, scope: !86)
!95 = !DILocation(line: 20, column: 14, scope: !96)
!96 = distinct !DILexicalBlock(scope: !86, file: !1, line: 20, column: 5)
!97 = !DILocation(line: 20, column: 10, scope: !96)
!98 = !DILocation(line: 20, column: 19, scope: !99)
!99 = distinct !DILexicalBlock(scope: !96, file: !1, line: 20, column: 5)
!100 = !DILocation(line: 20, column: 24, scope: !99)
!101 = !DILocation(line: 20, column: 29, scope: !99)
!102 = !DILocation(line: 20, column: 5, scope: !96)
!103 = !DILocation(line: 20, column: 41, scope: !99)
!104 = !DILocation(line: 20, column: 5, scope: !99)
!105 = distinct !{!105, !102, !106, !107}
!106 = !DILocation(line: 20, column: 44, scope: !96)
!107 = !{!"llvm.loop.mustprogress"}
!108 = !DILocation(line: 22, column: 10, scope: !109)
!109 = distinct !DILexicalBlock(scope: !86, file: !1, line: 22, column: 9)
!110 = !DILocation(line: 22, column: 14, scope: !109)
!111 = !DILocation(line: 22, column: 21, scope: !109)
!112 = !DILocation(line: 22, column: 25, scope: !109)
!113 = !DILocation(line: 22, column: 29, scope: !109)
!114 = !DILocation(line: 22, column: 9, scope: !86)
!115 = !DILocation(line: 23, column: 17, scope: !116)
!116 = distinct !DILexicalBlock(scope: !109, file: !1, line: 22, column: 35)
!117 = !DILocation(line: 23, column: 48, scope: !116)
!118 = !DILocation(line: 23, column: 9, scope: !116)
!119 = !DILocation(line: 24, column: 9, scope: !116)
!120 = !DILocation(line: 27, column: 9, scope: !86)
!121 = !DILocation(line: 30, column: 12, scope: !86)
!122 = !DILocation(line: 30, column: 20, scope: !86)
!123 = !DILocation(line: 30, column: 26, scope: !86)
!124 = !DILocation(line: 30, column: 5, scope: !86)
!125 = !DILocation(line: 33, column: 5, scope: !86)
!126 = !DILocation(line: 33, column: 12, scope: !86)
!127 = !DILocation(line: 33, column: 17, scope: !86)
!128 = !DILocation(line: 35, column: 5, scope: !86)
!129 = !DILocation(line: 36, column: 1, scope: !86)
!130 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 38, type: !131, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !80)
!131 = !DISubroutineType(types: !132)
!132 = !{!15}
!133 = !DILocalVariable(name: "base", scope: !130, file: !1, line: 39, type: !134)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 4032, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 504)
!137 = !DILocation(line: 39, column: 10, scope: !130)
!138 = !DILocalVariable(name: "prefix", scope: !130, file: !1, line: 40, type: !139)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 4000, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 500)
!142 = !DILocation(line: 40, column: 10, scope: !130)
!143 = !DILocation(line: 43, column: 24, scope: !130)
!144 = !DILocation(line: 43, column: 5, scope: !130)
!145 = !DILocation(line: 46, column: 5, scope: !130)
!146 = !DILocation(line: 46, column: 28, scope: !130)
!147 = !DILocation(line: 49, column: 24, scope: !130)
!148 = !DILocation(line: 49, column: 5, scope: !130)
!149 = !DILocalVariable(name: "result", scope: !130, file: !1, line: 52, type: !15)
!150 = !DILocation(line: 52, column: 9, scope: !130)
!151 = !DILocation(line: 52, column: 34, scope: !130)
!152 = !DILocation(line: 52, column: 40, scope: !130)
!153 = !DILocation(line: 52, column: 18, scope: !130)
!154 = !DILocalVariable(name: "len", scope: !130, file: !1, line: 56, type: !15)
!155 = !DILocation(line: 56, column: 9, scope: !130)
!156 = !DILocation(line: 57, column: 5, scope: !130)
!157 = !DILocation(line: 57, column: 17, scope: !130)
!158 = !DILocation(line: 57, column: 12, scope: !130)
!159 = !DILocation(line: 57, column: 22, scope: !130)
!160 = !DILocation(line: 57, column: 30, scope: !130)
!161 = !DILocation(line: 57, column: 33, scope: !130)
!162 = !DILocation(line: 57, column: 37, scope: !130)
!163 = !DILocation(line: 0, scope: !130)
!164 = !DILocation(line: 58, column: 12, scope: !165)
!165 = distinct !DILexicalBlock(scope: !130, file: !1, line: 57, column: 53)
!166 = distinct !{!166, !156, !167, !107}
!167 = !DILocation(line: 59, column: 5, scope: !130)
!168 = !DILocation(line: 61, column: 12, scope: !169)
!169 = distinct !DILexicalBlock(scope: !130, file: !1, line: 61, column: 9)
!170 = !DILocation(line: 61, column: 16, scope: !169)
!171 = !DILocation(line: 61, column: 23, scope: !169)
!172 = !DILocation(line: 61, column: 27, scope: !169)
!173 = !DILocation(line: 61, column: 31, scope: !169)
!174 = !DILocation(line: 61, column: 9, scope: !130)
!175 = !DILocation(line: 62, column: 13, scope: !176)
!176 = distinct !DILexicalBlock(scope: !169, file: !1, line: 61, column: 38)
!177 = !DILocation(line: 66, column: 9, scope: !176)
!178 = !DILocation(line: 69, column: 9, scope: !176)
!179 = !DILocation(line: 70, column: 5, scope: !176)
!180 = !DILocation(line: 72, column: 5, scope: !130)
!181 = distinct !DISubprogram(name: "memcpy", scope: !182, file: !182, line: 12, type: !183, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !80)
!182 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!183 = !DISubroutineType(types: !184)
!184 = !{!68, !68, !185, !70}
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!187 = !DILocalVariable(name: "destaddr", arg: 1, scope: !181, file: !182, line: 12, type: !68)
!188 = !DILocation(line: 12, column: 20, scope: !181)
!189 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !181, file: !182, line: 12, type: !185)
!190 = !DILocation(line: 12, column: 42, scope: !181)
!191 = !DILocalVariable(name: "len", arg: 3, scope: !181, file: !182, line: 12, type: !70)
!192 = !DILocation(line: 12, column: 58, scope: !181)
!193 = !DILocalVariable(name: "dest", scope: !181, file: !182, line: 13, type: !24)
!194 = !DILocation(line: 13, column: 9, scope: !181)
!195 = !DILocation(line: 13, column: 16, scope: !181)
!196 = !DILocalVariable(name: "src", scope: !181, file: !182, line: 14, type: !78)
!197 = !DILocation(line: 14, column: 15, scope: !181)
!198 = !DILocation(line: 14, column: 21, scope: !181)
!199 = !DILocation(line: 16, column: 3, scope: !181)
!200 = !DILocation(line: 16, column: 13, scope: !181)
!201 = !DILocation(line: 16, column: 16, scope: !181)
!202 = !DILocation(line: 17, column: 19, scope: !181)
!203 = !DILocation(line: 17, column: 15, scope: !181)
!204 = !DILocation(line: 17, column: 10, scope: !181)
!205 = !DILocation(line: 17, column: 13, scope: !181)
!206 = distinct !{!206, !199, !202, !107}
!207 = !DILocation(line: 18, column: 10, scope: !181)
!208 = !DILocation(line: 18, column: 3, scope: !181)

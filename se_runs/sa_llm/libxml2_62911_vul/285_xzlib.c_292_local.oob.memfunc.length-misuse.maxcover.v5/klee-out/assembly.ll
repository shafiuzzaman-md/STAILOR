; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/285_xzlib.c_292_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/285_xzlib.c_292_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.xz_state = type { %struct.lzma_stream, [1024 x i8] }
%struct.lzma_stream = type { i8*, i64 }

@.str = private unnamed_addr constant [9 x i8] c"avail_in\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"in_buffer\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"(state.strm.avail_in >= 6) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/285_xzlib.c_292_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"\FD7zXZ\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__libxml2_xzread(%struct.xz_state* noundef %0) #0 !dbg !12 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xz_state*, align 8
  store %struct.xz_state* %0, %struct.xz_state** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.xz_state** %3, metadata !42, metadata !DIExpression()), !dbg !43
  %4 = load %struct.xz_state*, %struct.xz_state** %3, align 8, !dbg !44
  %5 = call i32 @is_format_xz(%struct.xz_state* noundef %4), !dbg !46
  %6 = icmp ne i32 %5, 0, !dbg !46
  br i1 %6, label %7, label %8, !dbg !47

7:                                                ; preds = %1
  store i32 1, i32* %2, align 4, !dbg !48
  br label %14, !dbg !48

8:                                                ; preds = %1
  %9 = load %struct.xz_state*, %struct.xz_state** %3, align 8, !dbg !50
  %10 = call i32 @is_format_lzma(%struct.xz_state* noundef %9), !dbg !52
  %11 = icmp ne i32 %10, 0, !dbg !52
  br i1 %11, label %12, label %13, !dbg !53

12:                                               ; preds = %8
  store i32 2, i32* %2, align 4, !dbg !54
  br label %14, !dbg !54

13:                                               ; preds = %8
  store i32 0, i32* %2, align 4, !dbg !56
  br label %14, !dbg !56

14:                                               ; preds = %13, %12, %7
  %15 = load i32, i32* %2, align 4, !dbg !57
  ret i32 %15, !dbg !57
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_format_xz(%struct.xz_state* noundef %0) #0 !dbg !58 {
  %2 = alloca %struct.xz_state*, align 8
  %3 = alloca %struct.lzma_stream*, align 8
  store %struct.xz_state* %0, %struct.xz_state** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.xz_state** %2, metadata !59, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata %struct.lzma_stream** %3, metadata !61, metadata !DIExpression()), !dbg !63
  %4 = load %struct.xz_state*, %struct.xz_state** %2, align 8, !dbg !64
  %5 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %4, i32 0, i32 0, !dbg !65
  store %struct.lzma_stream* %5, %struct.lzma_stream** %3, align 8, !dbg !63
  %6 = load %struct.lzma_stream*, %struct.lzma_stream** %3, align 8, !dbg !66
  %7 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %6, i32 0, i32 1, !dbg !67
  %8 = load i64, i64* %7, align 8, !dbg !67
  %9 = icmp uge i64 %8, 6, !dbg !68
  br i1 %9, label %10, label %16, !dbg !69

10:                                               ; preds = %1
  %11 = load %struct.xz_state*, %struct.xz_state** %2, align 8, !dbg !70
  %12 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %11, i32 0, i32 1, !dbg !71
  %13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0, !dbg !70
  %14 = call i32 @memcmp(i8* noundef %13, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i64 noundef 6) #5, !dbg !72
  %15 = icmp eq i32 %14, 0, !dbg !73
  br label %16

16:                                               ; preds = %10, %1
  %17 = phi i1 [ false, %1 ], [ %15, %10 ], !dbg !74
  %18 = zext i1 %17 to i32, !dbg !69
  ret i32 %18, !dbg !75
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_format_lzma(%struct.xz_state* noundef %0) #0 !dbg !76 {
  %2 = alloca %struct.xz_state*, align 8
  store %struct.xz_state* %0, %struct.xz_state** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.xz_state** %2, metadata !77, metadata !DIExpression()), !dbg !78
  ret i32 0, !dbg !79
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !80 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.xz_state, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.xz_state* %2, metadata !83, metadata !DIExpression()), !dbg !84
  %4 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %2, i32 0, i32 0, !dbg !85
  %5 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %4, i32 0, i32 1, !dbg !86
  %6 = bitcast i64* %5 to i8*, !dbg !87
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !dbg !88
  %7 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %2, i32 0, i32 1, !dbg !89
  %8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0, !dbg !90
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 1024, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)), !dbg !91
  %9 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %2, i32 0, i32 0, !dbg !92
  %10 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %9, i32 0, i32 1, !dbg !93
  %11 = load i64, i64* %10, align 8, !dbg !93
  %12 = icmp uge i64 %11, 0, !dbg !94
  %13 = zext i1 %12 to i32, !dbg !94
  %14 = sext i32 %13 to i64, !dbg !95
  call void @klee_assume(i64 noundef %14), !dbg !96
  %15 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %2, i32 0, i32 0, !dbg !97
  %16 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %15, i32 0, i32 1, !dbg !98
  %17 = load i64, i64* %16, align 8, !dbg !98
  %18 = icmp ult i64 %17, 1024, !dbg !99
  %19 = zext i1 %18 to i32, !dbg !99
  %20 = sext i32 %19 to i64, !dbg !100
  call void @klee_assume(i64 noundef %20), !dbg !101
  %21 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %2, i32 0, i32 1, !dbg !102
  %22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %21, i64 0, i64 0, !dbg !103
  %23 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %2, i32 0, i32 0, !dbg !104
  %24 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %23, i32 0, i32 0, !dbg !105
  store i8* %22, i8** %24, align 8, !dbg !106
  call void @llvm.dbg.declare(metadata i32* %3, metadata !107, metadata !DIExpression()), !dbg !108
  %25 = call i32 @__libxml2_xzread(%struct.xz_state* noundef %2), !dbg !109
  store i32 %25, i32* %3, align 4, !dbg !108
  %26 = load i32, i32* %3, align 4, !dbg !110
  %27 = icmp eq i32 %26, 1, !dbg !112
  br i1 %27, label %28, label %39, !dbg !113

28:                                               ; preds = %0
  %29 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %2, i32 0, i32 0, !dbg !114
  %30 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %29, i32 0, i32 1, !dbg !114
  %31 = load i64, i64* %30, align 8, !dbg !114
  %32 = icmp uge i64 %31, 6, !dbg !114
  br i1 %32, label %33, label %35, !dbg !114

33:                                               ; preds = %28
  br i1 true, label %34, label %35, !dbg !114

34:                                               ; preds = %33
  br label %37, !dbg !114

35:                                               ; preds = %33, %28
  %36 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.4, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !114
  br label %37, !dbg !114

37:                                               ; preds = %35, %34
  %38 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.4, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !116
  br label %39, !dbg !117

39:                                               ; preds = %37, %0
  ret i32 0, !dbg !118
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @memcmp(i8* noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !119 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !125, metadata !DIExpression()), !dbg !126
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !127, metadata !DIExpression()), !dbg !128
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !129, metadata !DIExpression()), !dbg !130
  %10 = load i64, i64* %7, align 8, !dbg !131
  %11 = icmp ne i64 %10, 0, !dbg !133
  br i1 %11, label %12, label %39, !dbg !134

12:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i8** %8, metadata !135, metadata !DIExpression()), !dbg !139
  %13 = load i8*, i8** %5, align 8, !dbg !140
  store i8* %13, i8** %8, align 8, !dbg !139
  call void @llvm.dbg.declare(metadata i8** %9, metadata !141, metadata !DIExpression()), !dbg !142
  %14 = load i8*, i8** %6, align 8, !dbg !143
  store i8* %14, i8** %9, align 8, !dbg !142
  br label %15, !dbg !144

15:                                               ; preds = %35, %12
  %16 = load i8*, i8** %8, align 8, !dbg !145
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !145
  store i8* %17, i8** %8, align 8, !dbg !145
  %18 = load i8, i8* %16, align 1, !dbg !148
  %19 = zext i8 %18 to i32, !dbg !148
  %20 = load i8*, i8** %9, align 8, !dbg !149
  %21 = getelementptr inbounds i8, i8* %20, i32 1, !dbg !149
  store i8* %21, i8** %9, align 8, !dbg !149
  %22 = load i8, i8* %20, align 1, !dbg !150
  %23 = zext i8 %22 to i32, !dbg !150
  %24 = icmp ne i32 %19, %23, !dbg !151
  br i1 %24, label %25, label %35, !dbg !152

25:                                               ; preds = %15
  %26 = load i8*, i8** %8, align 8, !dbg !153
  %27 = getelementptr inbounds i8, i8* %26, i32 -1, !dbg !153
  store i8* %27, i8** %8, align 8, !dbg !153
  %28 = load i8, i8* %27, align 1, !dbg !155
  %29 = zext i8 %28 to i32, !dbg !155
  %30 = load i8*, i8** %9, align 8, !dbg !156
  %31 = getelementptr inbounds i8, i8* %30, i32 -1, !dbg !156
  store i8* %31, i8** %9, align 8, !dbg !156
  %32 = load i8, i8* %31, align 1, !dbg !157
  %33 = zext i8 %32 to i32, !dbg !157
  %34 = sub nsw i32 %29, %33, !dbg !158
  store i32 %34, i32* %4, align 4, !dbg !159
  br label %40, !dbg !159

35:                                               ; preds = %15
  %36 = load i64, i64* %7, align 8, !dbg !160
  %37 = add i64 %36, -1, !dbg !160
  store i64 %37, i64* %7, align 8, !dbg !160
  %38 = icmp ne i64 %37, 0, !dbg !161
  br i1 %38, label %15, label %39, !dbg !162, !llvm.loop !163

39:                                               ; preds = %35, %3
  store i32 0, i32* %4, align 4, !dbg !166
  br label %40, !dbg !166

40:                                               ; preds = %39, %25
  %41 = load i32, i32* %4, align 4, !dbg !167
  ret i32 %41, !dbg !167
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11, !11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/285_xzlib.c_292_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "e1fef3320a5ebecea50452f59902e1b8")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcmp.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "6a01b8a9953e07eca8ec791434d4f8e8")
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 7, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"Ubuntu clang version 14.0.6"}
!12 = distinct !DISubprogram(name: "__libxml2_xzread", scope: !1, file: !1, line: 31, type: !13, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !41)
!13 = !DISubroutineType(types: !14)
!14 = !{!15, !16}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "xz_statep", file: !1, line: 20, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "xz_state", file: !1, line: 18, baseType: !19)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xz_state", file: !1, line: 15, size: 8320, elements: !20)
!20 = !{!21, !37}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "strm", scope: !19, file: !1, line: 16, baseType: !22, size: 128)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_stream", file: !1, line: 13, baseType: !23)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_stream", file: !1, line: 10, size: 128, elements: !24)
!24 = !{!25, !33}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !23, file: !1, line: 11, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !29, line: 24, baseType: !30)
!29 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "256fcabbefa27ca8cf5e6d37525e6e16")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !31, line: 38, baseType: !32)
!31 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!32 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !23, file: !1, line: 12, baseType: !34, size: 64, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !35, line: 46, baseType: !36)
!35 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!36 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !19, file: !1, line: 17, baseType: !38, size: 8192, offset: 128)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 8192, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 1024)
!41 = !{}
!42 = !DILocalVariable(name: "state", arg: 1, scope: !12, file: !1, line: 31, type: !16)
!43 = !DILocation(line: 31, column: 32, scope: !12)
!44 = !DILocation(line: 32, column: 22, scope: !45)
!45 = distinct !DILexicalBlock(scope: !12, file: !1, line: 32, column: 9)
!46 = !DILocation(line: 32, column: 9, scope: !45)
!47 = !DILocation(line: 32, column: 9, scope: !12)
!48 = !DILocation(line: 33, column: 9, scope: !49)
!49 = distinct !DILexicalBlock(scope: !45, file: !1, line: 32, column: 30)
!50 = !DILocation(line: 35, column: 24, scope: !51)
!51 = distinct !DILexicalBlock(scope: !12, file: !1, line: 35, column: 9)
!52 = !DILocation(line: 35, column: 9, scope: !51)
!53 = !DILocation(line: 35, column: 9, scope: !12)
!54 = !DILocation(line: 36, column: 9, scope: !55)
!55 = distinct !DILexicalBlock(scope: !51, file: !1, line: 35, column: 32)
!56 = !DILocation(line: 38, column: 5, scope: !12)
!57 = !DILocation(line: 39, column: 1, scope: !12)
!58 = distinct !DISubprogram(name: "is_format_xz", scope: !1, file: !1, line: 22, type: !13, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !41)
!59 = !DILocalVariable(name: "state", arg: 1, scope: !58, file: !1, line: 22, type: !16)
!60 = !DILocation(line: 22, column: 35, scope: !58)
!61 = !DILocalVariable(name: "strm", scope: !58, file: !1, line: 23, type: !62)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!63 = !DILocation(line: 23, column: 18, scope: !58)
!64 = !DILocation(line: 23, column: 27, scope: !58)
!65 = !DILocation(line: 23, column: 34, scope: !58)
!66 = !DILocation(line: 24, column: 12, scope: !58)
!67 = !DILocation(line: 24, column: 18, scope: !58)
!68 = !DILocation(line: 24, column: 27, scope: !58)
!69 = !DILocation(line: 24, column: 32, scope: !58)
!70 = !DILocation(line: 24, column: 42, scope: !58)
!71 = !DILocation(line: 24, column: 49, scope: !58)
!72 = !DILocation(line: 24, column: 35, scope: !58)
!73 = !DILocation(line: 24, column: 68, scope: !58)
!74 = !DILocation(line: 0, scope: !58)
!75 = !DILocation(line: 24, column: 5, scope: !58)
!76 = distinct !DISubprogram(name: "is_format_lzma", scope: !1, file: !1, line: 27, type: !13, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !41)
!77 = !DILocalVariable(name: "state", arg: 1, scope: !76, file: !1, line: 27, type: !16)
!78 = !DILocation(line: 27, column: 37, scope: !76)
!79 = !DILocation(line: 28, column: 5, scope: !76)
!80 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 41, type: !81, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !41)
!81 = !DISubroutineType(types: !82)
!82 = !{!15}
!83 = !DILocalVariable(name: "state", scope: !80, file: !1, line: 42, type: !18)
!84 = !DILocation(line: 42, column: 14, scope: !80)
!85 = !DILocation(line: 44, column: 31, scope: !80)
!86 = !DILocation(line: 44, column: 36, scope: !80)
!87 = !DILocation(line: 44, column: 24, scope: !80)
!88 = !DILocation(line: 44, column: 5, scope: !80)
!89 = !DILocation(line: 45, column: 30, scope: !80)
!90 = !DILocation(line: 45, column: 24, scope: !80)
!91 = !DILocation(line: 45, column: 5, scope: !80)
!92 = !DILocation(line: 47, column: 23, scope: !80)
!93 = !DILocation(line: 47, column: 28, scope: !80)
!94 = !DILocation(line: 47, column: 37, scope: !80)
!95 = !DILocation(line: 47, column: 17, scope: !80)
!96 = !DILocation(line: 47, column: 5, scope: !80)
!97 = !DILocation(line: 48, column: 23, scope: !80)
!98 = !DILocation(line: 48, column: 28, scope: !80)
!99 = !DILocation(line: 48, column: 37, scope: !80)
!100 = !DILocation(line: 48, column: 17, scope: !80)
!101 = !DILocation(line: 48, column: 5, scope: !80)
!102 = !DILocation(line: 50, column: 32, scope: !80)
!103 = !DILocation(line: 50, column: 26, scope: !80)
!104 = !DILocation(line: 50, column: 11, scope: !80)
!105 = !DILocation(line: 50, column: 16, scope: !80)
!106 = !DILocation(line: 50, column: 24, scope: !80)
!107 = !DILocalVariable(name: "result", scope: !80, file: !1, line: 52, type: !15)
!108 = !DILocation(line: 52, column: 9, scope: !80)
!109 = !DILocation(line: 52, column: 18, scope: !80)
!110 = !DILocation(line: 54, column: 9, scope: !111)
!111 = distinct !DILexicalBlock(scope: !80, file: !1, line: 54, column: 9)
!112 = !DILocation(line: 54, column: 16, scope: !111)
!113 = !DILocation(line: 54, column: 9, scope: !80)
!114 = !DILocation(line: 55, column: 9, scope: !115)
!115 = distinct !DILexicalBlock(scope: !111, file: !1, line: 54, column: 22)
!116 = !DILocation(line: 56, column: 9, scope: !115)
!117 = !DILocation(line: 57, column: 5, scope: !115)
!118 = !DILocation(line: 59, column: 5, scope: !80)
!119 = distinct !DISubprogram(name: "memcmp", scope: !120, file: !120, line: 42, type: !121, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !41)
!120 = !DIFile(filename: "runtime/Freestanding/memcmp.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "6a01b8a9953e07eca8ec791434d4f8e8")
!121 = !DISubroutineType(types: !122)
!122 = !{!15, !123, !123, !34}
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!125 = !DILocalVariable(name: "s1", arg: 1, scope: !119, file: !120, line: 42, type: !123)
!126 = !DILocation(line: 42, column: 24, scope: !119)
!127 = !DILocalVariable(name: "s2", arg: 2, scope: !119, file: !120, line: 42, type: !123)
!128 = !DILocation(line: 42, column: 40, scope: !119)
!129 = !DILocalVariable(name: "n", arg: 3, scope: !119, file: !120, line: 42, type: !34)
!130 = !DILocation(line: 42, column: 51, scope: !119)
!131 = !DILocation(line: 43, column: 7, scope: !132)
!132 = distinct !DILexicalBlock(scope: !119, file: !120, line: 43, column: 7)
!133 = !DILocation(line: 43, column: 9, scope: !132)
!134 = !DILocation(line: 43, column: 7, scope: !119)
!135 = !DILocalVariable(name: "p1", scope: !136, file: !120, line: 44, type: !137)
!136 = distinct !DILexicalBlock(scope: !132, file: !120, line: 43, column: 15)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!139 = !DILocation(line: 44, column: 26, scope: !136)
!140 = !DILocation(line: 44, column: 31, scope: !136)
!141 = !DILocalVariable(name: "p2", scope: !136, file: !120, line: 44, type: !137)
!142 = !DILocation(line: 44, column: 36, scope: !136)
!143 = !DILocation(line: 44, column: 41, scope: !136)
!144 = !DILocation(line: 46, column: 5, scope: !136)
!145 = !DILocation(line: 47, column: 14, scope: !146)
!146 = distinct !DILexicalBlock(scope: !147, file: !120, line: 47, column: 11)
!147 = distinct !DILexicalBlock(scope: !136, file: !120, line: 46, column: 8)
!148 = !DILocation(line: 47, column: 11, scope: !146)
!149 = !DILocation(line: 47, column: 23, scope: !146)
!150 = !DILocation(line: 47, column: 20, scope: !146)
!151 = !DILocation(line: 47, column: 17, scope: !146)
!152 = !DILocation(line: 47, column: 11, scope: !147)
!153 = !DILocation(line: 48, column: 18, scope: !154)
!154 = distinct !DILexicalBlock(scope: !146, file: !120, line: 47, column: 27)
!155 = !DILocation(line: 48, column: 17, scope: !154)
!156 = !DILocation(line: 48, column: 26, scope: !154)
!157 = !DILocation(line: 48, column: 25, scope: !154)
!158 = !DILocation(line: 48, column: 23, scope: !154)
!159 = !DILocation(line: 48, column: 9, scope: !154)
!160 = !DILocation(line: 50, column: 14, scope: !136)
!161 = !DILocation(line: 50, column: 18, scope: !136)
!162 = !DILocation(line: 50, column: 5, scope: !147)
!163 = distinct !{!163, !144, !164, !165}
!164 = !DILocation(line: 50, column: 22, scope: !136)
!165 = !{!"llvm.loop.mustprogress"}
!166 = !DILocation(line: 52, column: 3, scope: !119)
!167 = !DILocation(line: 53, column: 1, scope: !119)

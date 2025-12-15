; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/177_xzlib.c_286_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/177_xzlib.c_286_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.xz_state = type { i8*, %struct.lzma_stream }
%struct.lzma_stream = type { i8*, i64, i64, i8*, i64, i64, %struct.lzma_allocator*, %struct.lzma_internal_s*, i8*, i8*, i8*, i8*, i64, i64, i64, i64, i32, i32 }
%struct.lzma_allocator = type { i8* (i8*, i64, i64)*, void (i8*, i8*)*, i8* }
%struct.lzma_internal_s = type opaque

@.str = private unnamed_addr constant [16 x i8] c"state_in_buffer\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"avail_in\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"(state->in != ((void*)0) && 6 <= 256) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_55980_vul/177_xzlib.c_286_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !22 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.xz_state*, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.xz_state** %2, metadata !27, metadata !DIExpression()), !dbg !87
  %4 = call %struct.xz_state* @create_xz_state(), !dbg !88
  store %struct.xz_state* %4, %struct.xz_state** %2, align 8, !dbg !87
  %5 = load %struct.xz_state*, %struct.xz_state** %2, align 8, !dbg !89
  %6 = icmp ne %struct.xz_state* %5, null, !dbg !89
  br i1 %6, label %8, label %7, !dbg !91

7:                                                ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !92
  br label %41, !dbg !92

8:                                                ; preds = %0
  %9 = load %struct.xz_state*, %struct.xz_state** %2, align 8, !dbg !93
  %10 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %9, i32 0, i32 0, !dbg !94
  %11 = load i8*, i8** %10, align 8, !dbg !94
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 256, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !95
  call void @llvm.dbg.declare(metadata i32* %3, metadata !96, metadata !DIExpression()), !dbg !97
  %12 = bitcast i32* %3 to i8*, !dbg !98
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)), !dbg !99
  %13 = load i32, i32* %3, align 4, !dbg !100
  %14 = zext i32 %13 to i64, !dbg !100
  %15 = load %struct.xz_state*, %struct.xz_state** %2, align 8, !dbg !101
  %16 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %15, i32 0, i32 1, !dbg !102
  %17 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %16, i32 0, i32 1, !dbg !103
  store i64 %14, i64* %17, align 8, !dbg !104
  %18 = load i32, i32* %3, align 4, !dbg !105
  %19 = icmp ugt i32 %18, 0, !dbg !106
  %20 = zext i1 %19 to i32, !dbg !106
  %21 = sext i32 %20 to i64, !dbg !105
  call void @klee_assume(i64 noundef %21), !dbg !107
  %22 = load i32, i32* %3, align 4, !dbg !108
  %23 = icmp uge i32 %22, 6, !dbg !109
  %24 = zext i1 %23 to i32, !dbg !109
  %25 = sext i32 %24 to i64, !dbg !108
  call void @klee_assume(i64 noundef %25), !dbg !110
  %26 = load %struct.xz_state*, %struct.xz_state** %2, align 8, !dbg !111
  %27 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %26, i32 0, i32 0, !dbg !111
  %28 = load i8*, i8** %27, align 8, !dbg !111
  %29 = icmp ne i8* %28, null, !dbg !111
  br i1 %29, label %30, label %32, !dbg !111

30:                                               ; preds = %8
  br i1 true, label %31, label %32, !dbg !111

31:                                               ; preds = %30
  br label %34, !dbg !111

32:                                               ; preds = %30, %8
  %33 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.4, i64 0, i64 0), i32 noundef 58, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !111
  br label %34, !dbg !111

34:                                               ; preds = %32, %31
  %35 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.4, i64 0, i64 0), i32 noundef 61, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !112
  %36 = load %struct.xz_state*, %struct.xz_state** %2, align 8, !dbg !113
  %37 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %36, i32 0, i32 0, !dbg !114
  %38 = load i8*, i8** %37, align 8, !dbg !114
  call void @free(i8* noundef %38) #8, !dbg !115
  %39 = load %struct.xz_state*, %struct.xz_state** %2, align 8, !dbg !116
  %40 = bitcast %struct.xz_state* %39 to i8*, !dbg !116
  call void @free(i8* noundef %40) #8, !dbg !117
  store i32 0, i32* %1, align 4, !dbg !118
  br label %41, !dbg !118

41:                                               ; preds = %34, %7
  %42 = load i32, i32* %1, align 4, !dbg !119
  ret i32 %42, !dbg !119
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xz_state* @create_xz_state() #0 !dbg !120 {
  %1 = alloca %struct.xz_state*, align 8
  %2 = alloca %struct.xz_state*, align 8
  %3 = alloca %struct.lzma_stream, align 8
  call void @llvm.dbg.declare(metadata %struct.xz_state** %2, metadata !123, metadata !DIExpression()), !dbg !124
  %4 = call noalias i8* @malloc(i64 noundef 144) #8, !dbg !125
  %5 = bitcast i8* %4 to %struct.xz_state*, !dbg !125
  store %struct.xz_state* %5, %struct.xz_state** %2, align 8, !dbg !124
  %6 = load %struct.xz_state*, %struct.xz_state** %2, align 8, !dbg !126
  %7 = icmp ne %struct.xz_state* %6, null, !dbg !126
  br i1 %7, label %9, label %8, !dbg !128

8:                                                ; preds = %0
  store %struct.xz_state* null, %struct.xz_state** %1, align 8, !dbg !129
  br label %31, !dbg !129

9:                                                ; preds = %0
  %10 = call noalias i8* @malloc(i64 noundef 256) #8, !dbg !130
  %11 = load %struct.xz_state*, %struct.xz_state** %2, align 8, !dbg !131
  %12 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %11, i32 0, i32 0, !dbg !132
  store i8* %10, i8** %12, align 8, !dbg !133
  %13 = load %struct.xz_state*, %struct.xz_state** %2, align 8, !dbg !134
  %14 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %13, i32 0, i32 0, !dbg !136
  %15 = load i8*, i8** %14, align 8, !dbg !136
  %16 = icmp ne i8* %15, null, !dbg !134
  br i1 %16, label %20, label %17, !dbg !137

17:                                               ; preds = %9
  %18 = load %struct.xz_state*, %struct.xz_state** %2, align 8, !dbg !138
  %19 = bitcast %struct.xz_state* %18 to i8*, !dbg !138
  call void @free(i8* noundef %19) #8, !dbg !140
  store %struct.xz_state* null, %struct.xz_state** %1, align 8, !dbg !141
  br label %31, !dbg !141

20:                                               ; preds = %9
  %21 = load %struct.xz_state*, %struct.xz_state** %2, align 8, !dbg !142
  %22 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %21, i32 0, i32 1, !dbg !143
  %23 = bitcast %struct.lzma_stream* %3 to i8*, !dbg !144
  %24 = call i8* @memset(i8* %23, i32 0, i64 136), !dbg !144
  %25 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %3, i32 0, i32 16, !dbg !145
  store i32 0, i32* %25, align 8, !dbg !145
  %26 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %3, i32 0, i32 17, !dbg !145
  store i32 0, i32* %26, align 4, !dbg !145
  %27 = bitcast %struct.lzma_stream* %22 to i8*, !dbg !144
  %28 = bitcast %struct.lzma_stream* %3 to i8*, !dbg !144
  %29 = call i8* @memcpy(i8* %27, i8* %28, i64 136), !dbg !144
  %30 = load %struct.xz_state*, %struct.xz_state** %2, align 8, !dbg !146
  store %struct.xz_state* %30, %struct.xz_state** %1, align 8, !dbg !147
  br label %31, !dbg !147

31:                                               ; preds = %20, %17, %8
  %32 = load %struct.xz_state*, %struct.xz_state** %1, align 8, !dbg !148
  ret %struct.xz_state* %32, !dbg !148
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !149 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !155, metadata !DIExpression()), !dbg !156
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !157, metadata !DIExpression()), !dbg !158
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !159, metadata !DIExpression()), !dbg !160
  call void @llvm.dbg.declare(metadata i8** %7, metadata !161, metadata !DIExpression()), !dbg !164
  %9 = load i8*, i8** %4, align 8, !dbg !165
  store i8* %9, i8** %7, align 8, !dbg !164
  call void @llvm.dbg.declare(metadata i8** %8, metadata !166, metadata !DIExpression()), !dbg !169
  %10 = load i8*, i8** %5, align 8, !dbg !170
  store i8* %10, i8** %8, align 8, !dbg !169
  br label %11, !dbg !171

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !172
  %13 = add i64 %12, -1, !dbg !172
  store i64 %13, i64* %6, align 8, !dbg !172
  %14 = icmp ugt i64 %12, 0, !dbg !173
  br i1 %14, label %15, label %21, !dbg !171

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !174
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !174
  store i8* %17, i8** %8, align 8, !dbg !174
  %18 = load i8, i8* %16, align 1, !dbg !175
  %19 = load i8*, i8** %7, align 8, !dbg !176
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !176
  store i8* %20, i8** %7, align 8, !dbg !176
  store i8 %18, i8* %19, align 1, !dbg !177
  br label %11, !dbg !171, !llvm.loop !178

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !180
  ret i8* %22, !dbg !181
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #7 !dbg !182 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !186, metadata !DIExpression()), !dbg !187
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !188, metadata !DIExpression()), !dbg !189
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !190, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.declare(metadata i8** %7, metadata !192, metadata !DIExpression()), !dbg !193
  %8 = load i8*, i8** %4, align 8, !dbg !194
  store i8* %8, i8** %7, align 8, !dbg !193
  br label %9, !dbg !195

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !196
  %11 = add i64 %10, -1, !dbg !196
  store i64 %11, i64* %6, align 8, !dbg !196
  %12 = icmp ugt i64 %10, 0, !dbg !197
  br i1 %12, label %13, label %18, !dbg !195

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !198
  %15 = trunc i32 %14 to i8, !dbg !198
  %16 = load i8*, i8** %7, align 8, !dbg !199
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !199
  store i8* %17, i8** %7, align 8, !dbg !199
  store i8 %15, i8* %16, align 1, !dbg !200
  br label %9, !dbg !195, !llvm.loop !201

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !202
  ret i8* %19, !dbg !203
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21, !21, !21}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !8, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/177_xzlib.c_286_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "54836f7d6e3f57af4ccc2bb8488759fb")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 43, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/usr/include/lzma/base.h", directory: "", checksumkind: CSK_MD5, checksum: "39736d43069638972efa2a289510b1e4")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7}
!7 = !DIEnumerator(name: "LZMA_RESERVED_ENUM", value: 0)
!8 = !{!9}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !11, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!11 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!12 = distinct !DICompileUnit(language: DW_LANG_C99, file: !13, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!13 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!14 = !{i32 7, !"Dwarf Version", i32 5}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{i32 7, !"PIC Level", i32 2}
!18 = !{i32 7, !"PIE Level", i32 2}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"Ubuntu clang version 14.0.6"}
!22 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 38, type: !23, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!23 = !DISubroutineType(types: !24)
!24 = !{!25}
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !{}
!27 = !DILocalVariable(name: "state", scope: !22, file: !1, line: 39, type: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "xz_statep", file: !1, line: 14, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xz_state", file: !1, line: 11, size: 1152, elements: !31)
!31 = !{!32, !35}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !30, file: !1, line: 12, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "strm", scope: !30, file: !1, line: 13, baseType: !36, size: 1088, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_stream", file: !4, line: 588, baseType: !37)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 520, size: 1088, elements: !38)
!38 = !{!39, !46, !50, !53, !55, !56, !57, !72, !76, !77, !78, !79, !80, !81, !82, !83, !84, !86}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !37, file: !4, line: 521, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !43, line: 24, baseType: !44)
!43 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "256fcabbefa27ca8cf5e6d37525e6e16")
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !45, line: 38, baseType: !34)
!45 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!46 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !37, file: !4, line: 522, baseType: !47, size: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !48, line: 46, baseType: !49)
!48 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!49 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !37, file: !4, line: 523, baseType: !51, size: 64, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !43, line: 27, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !45, line: 45, baseType: !49)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !37, file: !4, line: 525, baseType: !54, size: 64, offset: 192)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !37, file: !4, line: 526, baseType: !47, size: 64, offset: 256)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !37, file: !4, line: 527, baseType: !51, size: 64, offset: 320)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !37, file: !4, line: 537, baseType: !58, size: 64, offset: 384)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !4, line: 469, baseType: !61)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 407, size: 192, elements: !62)
!62 = !{!63, !67, !71}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !61, file: !4, line: 442, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DISubroutineType(types: !66)
!66 = !{!9, !9, !47, !47}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !61, file: !4, line: 456, baseType: !68, size: 64, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !9, !9}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !61, file: !4, line: 467, baseType: !9, size: 64, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !37, file: !4, line: 540, baseType: !73, size: 64, offset: 448)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_internal", file: !4, line: 477, baseType: !75)
!75 = !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_internal_s", file: !4, line: 477, flags: DIFlagFwdDecl)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !37, file: !4, line: 550, baseType: !9, size: 64, offset: 512)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !37, file: !4, line: 553, baseType: !9, size: 64, offset: 576)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !37, file: !4, line: 556, baseType: !9, size: 64, offset: 640)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr4", scope: !37, file: !4, line: 559, baseType: !9, size: 64, offset: 704)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "seek_pos", scope: !37, file: !4, line: 571, baseType: !51, size: 64, offset: 768)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !37, file: !4, line: 574, baseType: !51, size: 64, offset: 832)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !37, file: !4, line: 577, baseType: !47, size: 64, offset: 896)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !37, file: !4, line: 580, baseType: !47, size: 64, offset: 960)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !37, file: !4, line: 583, baseType: !85, size: 32, offset: 1024)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !4, line: 45, baseType: !3)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !37, file: !4, line: 586, baseType: !85, size: 32, offset: 1056)
!87 = !DILocation(line: 39, column: 15, scope: !22)
!88 = !DILocation(line: 39, column: 23, scope: !22)
!89 = !DILocation(line: 40, column: 10, scope: !90)
!90 = distinct !DILexicalBlock(scope: !22, file: !1, line: 40, column: 9)
!91 = !DILocation(line: 40, column: 9, scope: !22)
!92 = !DILocation(line: 40, column: 17, scope: !90)
!93 = !DILocation(line: 43, column: 24, scope: !22)
!94 = !DILocation(line: 43, column: 31, scope: !22)
!95 = !DILocation(line: 43, column: 5, scope: !22)
!96 = !DILocalVariable(name: "avail_in", scope: !22, file: !1, line: 46, type: !5)
!97 = !DILocation(line: 46, column: 14, scope: !22)
!98 = !DILocation(line: 47, column: 24, scope: !22)
!99 = !DILocation(line: 47, column: 5, scope: !22)
!100 = !DILocation(line: 48, column: 28, scope: !22)
!101 = !DILocation(line: 48, column: 5, scope: !22)
!102 = !DILocation(line: 48, column: 12, scope: !22)
!103 = !DILocation(line: 48, column: 17, scope: !22)
!104 = !DILocation(line: 48, column: 26, scope: !22)
!105 = !DILocation(line: 51, column: 17, scope: !22)
!106 = !DILocation(line: 51, column: 26, scope: !22)
!107 = !DILocation(line: 51, column: 5, scope: !22)
!108 = !DILocation(line: 54, column: 17, scope: !22)
!109 = !DILocation(line: 54, column: 26, scope: !22)
!110 = !DILocation(line: 54, column: 5, scope: !22)
!111 = !DILocation(line: 58, column: 5, scope: !22)
!112 = !DILocation(line: 61, column: 5, scope: !22)
!113 = !DILocation(line: 64, column: 10, scope: !22)
!114 = !DILocation(line: 64, column: 17, scope: !22)
!115 = !DILocation(line: 64, column: 5, scope: !22)
!116 = !DILocation(line: 65, column: 10, scope: !22)
!117 = !DILocation(line: 65, column: 5, scope: !22)
!118 = !DILocation(line: 66, column: 5, scope: !22)
!119 = !DILocation(line: 67, column: 1, scope: !22)
!120 = distinct !DISubprogram(name: "create_xz_state", scope: !1, file: !1, line: 23, type: !121, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !26)
!121 = !DISubroutineType(types: !122)
!122 = !{!28}
!123 = !DILocalVariable(name: "state", scope: !120, file: !1, line: 24, type: !28)
!124 = !DILocation(line: 24, column: 15, scope: !120)
!125 = !DILocation(line: 24, column: 23, scope: !120)
!126 = !DILocation(line: 25, column: 10, scope: !127)
!127 = distinct !DILexicalBlock(scope: !120, file: !1, line: 25, column: 9)
!128 = !DILocation(line: 25, column: 9, scope: !120)
!129 = !DILocation(line: 25, column: 17, scope: !127)
!130 = !DILocation(line: 27, column: 17, scope: !120)
!131 = !DILocation(line: 27, column: 5, scope: !120)
!132 = !DILocation(line: 27, column: 12, scope: !120)
!133 = !DILocation(line: 27, column: 15, scope: !120)
!134 = !DILocation(line: 28, column: 10, scope: !135)
!135 = distinct !DILexicalBlock(scope: !120, file: !1, line: 28, column: 9)
!136 = !DILocation(line: 28, column: 17, scope: !135)
!137 = !DILocation(line: 28, column: 9, scope: !120)
!138 = !DILocation(line: 29, column: 14, scope: !139)
!139 = distinct !DILexicalBlock(scope: !135, file: !1, line: 28, column: 21)
!140 = !DILocation(line: 29, column: 9, scope: !139)
!141 = !DILocation(line: 30, column: 9, scope: !139)
!142 = !DILocation(line: 34, column: 5, scope: !120)
!143 = !DILocation(line: 34, column: 12, scope: !120)
!144 = !DILocation(line: 34, column: 19, scope: !120)
!145 = !DILocation(line: 34, column: 32, scope: !120)
!146 = !DILocation(line: 35, column: 12, scope: !120)
!147 = !DILocation(line: 35, column: 5, scope: !120)
!148 = !DILocation(line: 36, column: 1, scope: !120)
!149 = distinct !DISubprogram(name: "memcpy", scope: !150, file: !150, line: 12, type: !151, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !26)
!150 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!151 = !DISubroutineType(types: !152)
!152 = !{!9, !9, !153, !47}
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!155 = !DILocalVariable(name: "destaddr", arg: 1, scope: !149, file: !150, line: 12, type: !9)
!156 = !DILocation(line: 12, column: 20, scope: !149)
!157 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !149, file: !150, line: 12, type: !153)
!158 = !DILocation(line: 12, column: 42, scope: !149)
!159 = !DILocalVariable(name: "len", arg: 3, scope: !149, file: !150, line: 12, type: !47)
!160 = !DILocation(line: 12, column: 58, scope: !149)
!161 = !DILocalVariable(name: "dest", scope: !149, file: !150, line: 13, type: !162)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!164 = !DILocation(line: 13, column: 9, scope: !149)
!165 = !DILocation(line: 13, column: 16, scope: !149)
!166 = !DILocalVariable(name: "src", scope: !149, file: !150, line: 14, type: !167)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!169 = !DILocation(line: 14, column: 15, scope: !149)
!170 = !DILocation(line: 14, column: 21, scope: !149)
!171 = !DILocation(line: 16, column: 3, scope: !149)
!172 = !DILocation(line: 16, column: 13, scope: !149)
!173 = !DILocation(line: 16, column: 16, scope: !149)
!174 = !DILocation(line: 17, column: 19, scope: !149)
!175 = !DILocation(line: 17, column: 15, scope: !149)
!176 = !DILocation(line: 17, column: 10, scope: !149)
!177 = !DILocation(line: 17, column: 13, scope: !149)
!178 = distinct !{!178, !171, !174, !179}
!179 = !{!"llvm.loop.mustprogress"}
!180 = !DILocation(line: 18, column: 10, scope: !149)
!181 = !DILocation(line: 18, column: 3, scope: !149)
!182 = distinct !DISubprogram(name: "memset", scope: !183, file: !183, line: 12, type: !184, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !26)
!183 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!184 = !DISubroutineType(types: !185)
!185 = !{!9, !9, !25, !47}
!186 = !DILocalVariable(name: "dst", arg: 1, scope: !182, file: !183, line: 12, type: !9)
!187 = !DILocation(line: 12, column: 20, scope: !182)
!188 = !DILocalVariable(name: "s", arg: 2, scope: !182, file: !183, line: 12, type: !25)
!189 = !DILocation(line: 12, column: 29, scope: !182)
!190 = !DILocalVariable(name: "count", arg: 3, scope: !182, file: !183, line: 12, type: !47)
!191 = !DILocation(line: 12, column: 39, scope: !182)
!192 = !DILocalVariable(name: "a", scope: !182, file: !183, line: 13, type: !162)
!193 = !DILocation(line: 13, column: 9, scope: !182)
!194 = !DILocation(line: 13, column: 13, scope: !182)
!195 = !DILocation(line: 14, column: 3, scope: !182)
!196 = !DILocation(line: 14, column: 15, scope: !182)
!197 = !DILocation(line: 14, column: 18, scope: !182)
!198 = !DILocation(line: 15, column: 12, scope: !182)
!199 = !DILocation(line: 15, column: 7, scope: !182)
!200 = !DILocation(line: 15, column: 10, scope: !182)
!201 = distinct !{!201, !195, !198, !179}
!202 = !DILocation(line: 16, column: 10, scope: !182)
!203 = !DILocation(line: 16, column: 3, scope: !182)

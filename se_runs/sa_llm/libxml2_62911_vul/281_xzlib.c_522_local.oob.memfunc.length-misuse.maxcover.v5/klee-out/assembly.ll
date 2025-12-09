; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/281_xzlib.c_522_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/281_xzlib.c_522_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.xz_state = type { i8*, i32, i8*, i32, i32, i32, i32 }
%struct.z_stream_s = type { i8*, i32, i64, i8*, i32, i64, i8*, %struct.internal_state*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8*, i32, i64, i64 }
%struct.internal_state = type opaque
%struct.xz_file = type { %struct.xz_state*, %struct.z_stream_s* }

@.str = private unnamed_addr constant [10 x i8] c"state_out\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"next_in_buf\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"avail_in\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/281_xzlib.c_522_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.__libxml2_xzread = private unnamed_addr constant [32 x i8] c"int __libxml2_xzread(xz_file *)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !15 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.xz_state, align 8
  %3 = alloca %struct.z_stream_s, align 8
  %4 = alloca %struct.xz_file, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.xz_state* %2, metadata !20, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata %struct.z_stream_s* %3, metadata !33, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.declare(metadata %struct.xz_file* %4, metadata !74, metadata !DIExpression()), !dbg !82
  %8 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %2, i32 0, i32 1, !dbg !83
  store i32 0, i32* %8, align 8, !dbg !84
  %9 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %2, i32 0, i32 3, !dbg !85
  store i32 0, i32* %9, align 8, !dbg !86
  %10 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %2, i32 0, i32 4, !dbg !87
  store i32 0, i32* %10, align 4, !dbg !88
  %11 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %2, i32 0, i32 5, !dbg !89
  store i32 0, i32* %11, align 8, !dbg !90
  %12 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %2, i32 0, i32 6, !dbg !91
  store i32 0, i32* %12, align 4, !dbg !92
  call void @llvm.dbg.declare(metadata i32* %5, metadata !93, metadata !DIExpression()), !dbg !94
  store i32 4096, i32* %5, align 4, !dbg !94
  %13 = load i32, i32* %5, align 4, !dbg !95
  %14 = zext i32 %13 to i64, !dbg !95
  %15 = call noalias i8* @malloc(i64 noundef %14) #7, !dbg !96
  %16 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %2, i32 0, i32 2, !dbg !97
  store i8* %15, i8** %16, align 8, !dbg !98
  %17 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %2, i32 0, i32 2, !dbg !99
  %18 = load i8*, i8** %17, align 8, !dbg !99
  %19 = load i32, i32* %5, align 4, !dbg !100
  %20 = zext i32 %19 to i64, !dbg !100
  call void @klee_make_symbolic(i8* noundef %18, i64 noundef %20, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)), !dbg !101
  %21 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %2, i32 0, i32 0, !dbg !102
  store i8* null, i8** %21, align 8, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %6, metadata !104, metadata !DIExpression()), !dbg !105
  store i32 2048, i32* %6, align 4, !dbg !105
  call void @llvm.dbg.declare(metadata i8** %7, metadata !106, metadata !DIExpression()), !dbg !107
  %22 = load i32, i32* %6, align 4, !dbg !108
  %23 = zext i32 %22 to i64, !dbg !108
  %24 = call noalias i8* @malloc(i64 noundef %23) #7, !dbg !109
  store i8* %24, i8** %7, align 8, !dbg !107
  %25 = load i8*, i8** %7, align 8, !dbg !110
  %26 = load i32, i32* %6, align 4, !dbg !111
  %27 = zext i32 %26 to i64, !dbg !111
  call void @klee_make_symbolic(i8* noundef %25, i64 noundef %27, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)), !dbg !112
  %28 = load i8*, i8** %7, align 8, !dbg !113
  %29 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %3, i32 0, i32 0, !dbg !114
  store i8* %28, i8** %29, align 8, !dbg !115
  %30 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %3, i32 0, i32 1, !dbg !116
  %31 = bitcast i32* %30 to i8*, !dbg !117
  call void @klee_make_symbolic(i8* noundef %31, i64 noundef 4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !118
  %32 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %3, i32 0, i32 1, !dbg !119
  %33 = load i32, i32* %32, align 8, !dbg !119
  %34 = load i32, i32* %6, align 4, !dbg !121
  %35 = icmp ugt i32 %33, %34, !dbg !122
  br i1 %35, label %36, label %39, !dbg !123

36:                                               ; preds = %0
  %37 = load i32, i32* %6, align 4, !dbg !124
  %38 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %3, i32 0, i32 1, !dbg !126
  store i32 %37, i32* %38, align 8, !dbg !127
  br label %39, !dbg !128

39:                                               ; preds = %36, %0
  %40 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %3, i32 0, i32 1, !dbg !129
  %41 = load i32, i32* %40, align 8, !dbg !129
  %42 = load i32, i32* %5, align 4, !dbg !131
  %43 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %2, i32 0, i32 1, !dbg !132
  %44 = load i32, i32* %43, align 8, !dbg !132
  %45 = sub i32 %42, %44, !dbg !133
  %46 = icmp ugt i32 %41, %45, !dbg !134
  br i1 %46, label %47, label %53, !dbg !135

47:                                               ; preds = %39
  %48 = load i32, i32* %5, align 4, !dbg !136
  %49 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %2, i32 0, i32 1, !dbg !138
  %50 = load i32, i32* %49, align 8, !dbg !138
  %51 = sub i32 %48, %50, !dbg !139
  %52 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %3, i32 0, i32 1, !dbg !140
  store i32 %51, i32* %52, align 8, !dbg !141
  br label %53, !dbg !142

53:                                               ; preds = %47, %39
  %54 = getelementptr inbounds %struct.xz_file, %struct.xz_file* %4, i32 0, i32 0, !dbg !143
  store %struct.xz_state* %2, %struct.xz_state** %54, align 8, !dbg !144
  %55 = getelementptr inbounds %struct.xz_file, %struct.xz_file* %4, i32 0, i32 1, !dbg !145
  store %struct.z_stream_s* %3, %struct.z_stream_s** %55, align 8, !dbg !146
  %56 = call i32 @__libxml2_xzread(%struct.xz_file* noundef %4), !dbg !147
  %57 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %2, i32 0, i32 2, !dbg !148
  %58 = load i8*, i8** %57, align 8, !dbg !148
  call void @free(i8* noundef %58) #7, !dbg !149
  %59 = load i8*, i8** %7, align 8, !dbg !150
  call void @free(i8* noundef %59) #7, !dbg !151
  ret i32 0, !dbg !152
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__libxml2_xzread(%struct.xz_file* noundef %0) #0 !dbg !153 {
  %2 = alloca %struct.xz_file*, align 8
  %3 = alloca %struct.xz_state*, align 8
  %4 = alloca %struct.z_stream_s*, align 8
  store %struct.xz_file* %0, %struct.xz_file** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.xz_file** %2, metadata !157, metadata !DIExpression()), !dbg !158
  call void @llvm.dbg.declare(metadata %struct.xz_state** %3, metadata !159, metadata !DIExpression()), !dbg !160
  %5 = load %struct.xz_file*, %struct.xz_file** %2, align 8, !dbg !161
  %6 = getelementptr inbounds %struct.xz_file, %struct.xz_file* %5, i32 0, i32 0, !dbg !162
  %7 = load %struct.xz_state*, %struct.xz_state** %6, align 8, !dbg !162
  store %struct.xz_state* %7, %struct.xz_state** %3, align 8, !dbg !160
  call void @llvm.dbg.declare(metadata %struct.z_stream_s** %4, metadata !163, metadata !DIExpression()), !dbg !164
  %8 = load %struct.xz_file*, %struct.xz_file** %2, align 8, !dbg !165
  %9 = getelementptr inbounds %struct.xz_file, %struct.xz_file* %8, i32 0, i32 1, !dbg !166
  %10 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8, !dbg !166
  store %struct.z_stream_s* %10, %struct.z_stream_s** %4, align 8, !dbg !164
  %11 = load %struct.xz_state*, %struct.xz_state** %3, align 8, !dbg !167
  %12 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %11, i32 0, i32 3, !dbg !168
  %13 = load i32, i32* %12, align 8, !dbg !168
  %14 = load %struct.xz_state*, %struct.xz_state** %3, align 8, !dbg !169
  %15 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %14, i32 0, i32 4, !dbg !170
  store i32 %13, i32* %15, align 4, !dbg !171
  %16 = load %struct.xz_state*, %struct.xz_state** %3, align 8, !dbg !172
  %17 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %16, i32 0, i32 2, !dbg !173
  %18 = load i8*, i8** %17, align 8, !dbg !173
  %19 = load %struct.xz_state*, %struct.xz_state** %3, align 8, !dbg !174
  %20 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %19, i32 0, i32 0, !dbg !175
  store i8* %18, i8** %20, align 8, !dbg !176
  %21 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !177
  %22 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %21, i32 0, i32 1, !dbg !179
  %23 = load i32, i32* %22, align 8, !dbg !179
  %24 = icmp ne i32 %23, 0, !dbg !177
  br i1 %24, label %25, label %52, !dbg !180

25:                                               ; preds = %1
  %26 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.4, i64 0, i64 0), i32 noundef 35, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.__libxml2_xzread, i64 0, i64 0)), !dbg !181
  %27 = load %struct.xz_state*, %struct.xz_state** %3, align 8, !dbg !183
  %28 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %27, i32 0, i32 0, !dbg !184
  %29 = load i8*, i8** %28, align 8, !dbg !184
  %30 = load %struct.xz_state*, %struct.xz_state** %3, align 8, !dbg !185
  %31 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %30, i32 0, i32 1, !dbg !186
  %32 = load i32, i32* %31, align 8, !dbg !186
  %33 = zext i32 %32 to i64, !dbg !187
  %34 = getelementptr inbounds i8, i8* %29, i64 %33, !dbg !187
  %35 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !188
  %36 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %35, i32 0, i32 0, !dbg !189
  %37 = load i8*, i8** %36, align 8, !dbg !189
  %38 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !190
  %39 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %38, i32 0, i32 1, !dbg !191
  %40 = load i32, i32* %39, align 8, !dbg !191
  %41 = zext i32 %40 to i64, !dbg !190
  %42 = call i8* @memcpy(i8* %34, i8* %37, i64 %41), !dbg !192
  %43 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !193
  %44 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %43, i32 0, i32 1, !dbg !194
  %45 = load i32, i32* %44, align 8, !dbg !194
  %46 = load %struct.xz_state*, %struct.xz_state** %3, align 8, !dbg !195
  %47 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %46, i32 0, i32 1, !dbg !196
  %48 = load i32, i32* %47, align 8, !dbg !197
  %49 = add i32 %48, %45, !dbg !197
  store i32 %49, i32* %47, align 8, !dbg !197
  %50 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !198
  %51 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %50, i32 0, i32 1, !dbg !199
  store i32 0, i32* %51, align 8, !dbg !200
  br label %52, !dbg !201

52:                                               ; preds = %25, %1
  %53 = load %struct.xz_state*, %struct.xz_state** %3, align 8, !dbg !202
  %54 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %53, i32 0, i32 5, !dbg !203
  store i32 1, i32* %54, align 8, !dbg !204
  %55 = load %struct.xz_state*, %struct.xz_state** %3, align 8, !dbg !205
  %56 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %55, i32 0, i32 6, !dbg !206
  store i32 1, i32* %56, align 4, !dbg !207
  ret i32 0, !dbg !208
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !209 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !217, metadata !DIExpression()), !dbg !218
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !219, metadata !DIExpression()), !dbg !220
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !221, metadata !DIExpression()), !dbg !222
  call void @llvm.dbg.declare(metadata i8** %7, metadata !223, metadata !DIExpression()), !dbg !224
  %9 = load i8*, i8** %4, align 8, !dbg !225
  store i8* %9, i8** %7, align 8, !dbg !224
  call void @llvm.dbg.declare(metadata i8** %8, metadata !226, metadata !DIExpression()), !dbg !229
  %10 = load i8*, i8** %5, align 8, !dbg !230
  store i8* %10, i8** %8, align 8, !dbg !229
  br label %11, !dbg !231

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !232
  %13 = add i64 %12, -1, !dbg !232
  store i64 %13, i64* %6, align 8, !dbg !232
  %14 = icmp ugt i64 %12, 0, !dbg !233
  br i1 %14, label %15, label %21, !dbg !231

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !234
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !234
  store i8* %17, i8** %8, align 8, !dbg !234
  %18 = load i8, i8* %16, align 1, !dbg !235
  %19 = load i8*, i8** %7, align 8, !dbg !236
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !236
  store i8* %20, i8** %7, align 8, !dbg !236
  store i8 %18, i8* %19, align 1, !dbg !237
  br label %11, !dbg !231, !llvm.loop !238

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !240
  ret i8* %22, !dbg !241
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !5}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14, !14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/281_xzlib.c_522_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "af0be10418fb141ed13a8c96fd2350b5")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = distinct !DICompileUnit(language: DW_LANG_C99, file: !6, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!6 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!7 = !{i32 7, !"Dwarf Version", i32 5}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{i32 7, !"PIC Level", i32 2}
!11 = !{i32 7, !"PIE Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"Ubuntu clang version 14.0.6"}
!15 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 45, type: !16, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !19)
!16 = !DISubroutineType(types: !17)
!17 = !{!18}
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !{}
!20 = !DILocalVariable(name: "state", scope: !15, file: !1, line: 46, type: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "xz_state", file: !1, line: 16, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 8, size: 320, elements: !23)
!23 = !{!24, !25, !27, !28, !29, !30, !31}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !22, file: !1, line: 9, baseType: !3, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "have", scope: !22, file: !1, line: 10, baseType: !26, size: 32, offset: 64)
!26 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !22, file: !1, line: 11, baseType: !3, size: 64, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !22, file: !1, line: 12, baseType: !26, size: 32, offset: 192)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !22, file: !1, line: 13, baseType: !26, size: 32, offset: 224)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "how", scope: !22, file: !1, line: 14, baseType: !18, size: 32, offset: 256)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "direct", scope: !22, file: !1, line: 15, baseType: !18, size: 32, offset: 288)
!32 = !DILocation(line: 46, column: 14, scope: !15)
!33 = !DILocalVariable(name: "strm", scope: !15, file: !1, line: 47, type: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "z_stream", file: !35, line: 106, baseType: !36)
!35 = !DIFile(filename: "/usr/include/zlib.h", directory: "", checksumkind: CSK_MD5, checksum: "b0d674489d5c40c17a7ab66238737af4")
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_stream_s", file: !35, line: 86, size: 896, elements: !37)
!37 = !{!38, !43, !45, !48, !49, !50, !51, !54, !57, !64, !69, !70, !71, !72}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !36, file: !35, line: 87, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bytef", file: !41, line: 410, baseType: !42)
!41 = !DIFile(filename: "/usr/include/zconf.h", directory: "", checksumkind: CSK_MD5, checksum: "bd0f8a8caa143025ff8bcff655d4dc19")
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "Byte", file: !41, line: 401, baseType: !4)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !36, file: !35, line: 88, baseType: !44, size: 32, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "uInt", file: !41, line: 403, baseType: !26)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !36, file: !35, line: 89, baseType: !46, size: 64, offset: 128)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "uLong", file: !41, line: 404, baseType: !47)
!47 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !36, file: !35, line: 91, baseType: !39, size: 64, offset: 192)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !36, file: !35, line: 92, baseType: !44, size: 32, offset: 256)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !36, file: !35, line: 93, baseType: !46, size: 64, offset: 320)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !36, file: !35, line: 95, baseType: !52, size: 64, offset: 384)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !36, file: !35, line: 96, baseType: !55, size: 64, offset: 448)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DICompositeType(tag: DW_TAG_structure_type, name: "internal_state", file: !35, line: 84, flags: DIFlagFwdDecl)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "zalloc", scope: !36, file: !35, line: 98, baseType: !58, size: 64, offset: 512)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "alloc_func", file: !35, line: 81, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{!62, !62, !44, !44}
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "voidpf", file: !41, line: 419, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "zfree", scope: !36, file: !35, line: 99, baseType: !65, size: 64, offset: 576)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "free_func", file: !35, line: 82, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DISubroutineType(types: !68)
!68 = !{null, !62, !62}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !36, file: !35, line: 100, baseType: !62, size: 64, offset: 640)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "data_type", scope: !36, file: !35, line: 102, baseType: !18, size: 32, offset: 704)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "adler", scope: !36, file: !35, line: 104, baseType: !46, size: 64, offset: 768)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !36, file: !35, line: 105, baseType: !46, size: 64, offset: 832)
!73 = !DILocation(line: 47, column: 14, scope: !15)
!74 = !DILocalVariable(name: "file", scope: !15, file: !1, line: 48, type: !75)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "xz_file", file: !1, line: 21, baseType: !76)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 18, size: 128, elements: !77)
!77 = !{!78, !80}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !76, file: !1, line: 19, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "strm", scope: !76, file: !1, line: 20, baseType: !81, size: 64, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!82 = !DILocation(line: 48, column: 13, scope: !15)
!83 = !DILocation(line: 51, column: 11, scope: !15)
!84 = !DILocation(line: 51, column: 16, scope: !15)
!85 = !DILocation(line: 52, column: 11, scope: !15)
!86 = !DILocation(line: 52, column: 15, scope: !15)
!87 = !DILocation(line: 53, column: 11, scope: !15)
!88 = !DILocation(line: 53, column: 15, scope: !15)
!89 = !DILocation(line: 54, column: 11, scope: !15)
!90 = !DILocation(line: 54, column: 15, scope: !15)
!91 = !DILocation(line: 55, column: 11, scope: !15)
!92 = !DILocation(line: 55, column: 18, scope: !15)
!93 = !DILocalVariable(name: "out_size", scope: !15, file: !1, line: 58, type: !26)
!94 = !DILocation(line: 58, column: 14, scope: !15)
!95 = !DILocation(line: 59, column: 41, scope: !15)
!96 = !DILocation(line: 59, column: 34, scope: !15)
!97 = !DILocation(line: 59, column: 11, scope: !15)
!98 = !DILocation(line: 59, column: 15, scope: !15)
!99 = !DILocation(line: 60, column: 30, scope: !15)
!100 = !DILocation(line: 60, column: 35, scope: !15)
!101 = !DILocation(line: 60, column: 5, scope: !15)
!102 = !DILocation(line: 61, column: 11, scope: !15)
!103 = !DILocation(line: 61, column: 16, scope: !15)
!104 = !DILocalVariable(name: "in_size", scope: !15, file: !1, line: 64, type: !26)
!105 = !DILocation(line: 64, column: 14, scope: !15)
!106 = !DILocalVariable(name: "next_in_buf", scope: !15, file: !1, line: 65, type: !3)
!107 = !DILocation(line: 65, column: 20, scope: !15)
!108 = !DILocation(line: 65, column: 58, scope: !15)
!109 = !DILocation(line: 65, column: 51, scope: !15)
!110 = !DILocation(line: 66, column: 24, scope: !15)
!111 = !DILocation(line: 66, column: 37, scope: !15)
!112 = !DILocation(line: 66, column: 5, scope: !15)
!113 = !DILocation(line: 67, column: 20, scope: !15)
!114 = !DILocation(line: 67, column: 10, scope: !15)
!115 = !DILocation(line: 67, column: 18, scope: !15)
!116 = !DILocation(line: 70, column: 30, scope: !15)
!117 = !DILocation(line: 70, column: 24, scope: !15)
!118 = !DILocation(line: 70, column: 5, scope: !15)
!119 = !DILocation(line: 72, column: 14, scope: !120)
!120 = distinct !DILexicalBlock(scope: !15, file: !1, line: 72, column: 9)
!121 = !DILocation(line: 72, column: 25, scope: !120)
!122 = !DILocation(line: 72, column: 23, scope: !120)
!123 = !DILocation(line: 72, column: 9, scope: !15)
!124 = !DILocation(line: 73, column: 25, scope: !125)
!125 = distinct !DILexicalBlock(scope: !120, file: !1, line: 72, column: 34)
!126 = !DILocation(line: 73, column: 14, scope: !125)
!127 = !DILocation(line: 73, column: 23, scope: !125)
!128 = !DILocation(line: 74, column: 5, scope: !125)
!129 = !DILocation(line: 75, column: 14, scope: !130)
!130 = distinct !DILexicalBlock(scope: !15, file: !1, line: 75, column: 9)
!131 = !DILocation(line: 75, column: 25, scope: !130)
!132 = !DILocation(line: 75, column: 42, scope: !130)
!133 = !DILocation(line: 75, column: 34, scope: !130)
!134 = !DILocation(line: 75, column: 23, scope: !130)
!135 = !DILocation(line: 75, column: 9, scope: !15)
!136 = !DILocation(line: 76, column: 25, scope: !137)
!137 = distinct !DILexicalBlock(scope: !130, file: !1, line: 75, column: 48)
!138 = !DILocation(line: 76, column: 42, scope: !137)
!139 = !DILocation(line: 76, column: 34, scope: !137)
!140 = !DILocation(line: 76, column: 14, scope: !137)
!141 = !DILocation(line: 76, column: 23, scope: !137)
!142 = !DILocation(line: 77, column: 5, scope: !137)
!143 = !DILocation(line: 80, column: 10, scope: !15)
!144 = !DILocation(line: 80, column: 16, scope: !15)
!145 = !DILocation(line: 81, column: 10, scope: !15)
!146 = !DILocation(line: 81, column: 15, scope: !15)
!147 = !DILocation(line: 84, column: 5, scope: !15)
!148 = !DILocation(line: 87, column: 16, scope: !15)
!149 = !DILocation(line: 87, column: 5, scope: !15)
!150 = !DILocation(line: 88, column: 10, scope: !15)
!151 = !DILocation(line: 88, column: 5, scope: !15)
!152 = !DILocation(line: 90, column: 5, scope: !15)
!153 = distinct !DISubprogram(name: "__libxml2_xzread", scope: !1, file: !1, line: 24, type: !154, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !19)
!154 = !DISubroutineType(types: !155)
!155 = !{!18, !156}
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!157 = !DILocalVariable(name: "file", arg: 1, scope: !153, file: !1, line: 24, type: !156)
!158 = !DILocation(line: 24, column: 38, scope: !153)
!159 = !DILocalVariable(name: "state", scope: !153, file: !1, line: 25, type: !79)
!160 = !DILocation(line: 25, column: 15, scope: !153)
!161 = !DILocation(line: 25, column: 23, scope: !153)
!162 = !DILocation(line: 25, column: 29, scope: !153)
!163 = !DILocalVariable(name: "strm", scope: !153, file: !1, line: 26, type: !81)
!164 = !DILocation(line: 26, column: 15, scope: !153)
!165 = !DILocation(line: 26, column: 22, scope: !153)
!166 = !DILocation(line: 26, column: 28, scope: !153)
!167 = !DILocation(line: 31, column: 18, scope: !153)
!168 = !DILocation(line: 31, column: 25, scope: !153)
!169 = !DILocation(line: 31, column: 5, scope: !153)
!170 = !DILocation(line: 31, column: 12, scope: !153)
!171 = !DILocation(line: 31, column: 16, scope: !153)
!172 = !DILocation(line: 32, column: 19, scope: !153)
!173 = !DILocation(line: 32, column: 26, scope: !153)
!174 = !DILocation(line: 32, column: 5, scope: !153)
!175 = !DILocation(line: 32, column: 12, scope: !153)
!176 = !DILocation(line: 32, column: 17, scope: !153)
!177 = !DILocation(line: 33, column: 9, scope: !178)
!178 = distinct !DILexicalBlock(scope: !153, file: !1, line: 33, column: 9)
!179 = !DILocation(line: 33, column: 15, scope: !178)
!180 = !DILocation(line: 33, column: 9, scope: !153)
!181 = !DILocation(line: 35, column: 9, scope: !182)
!182 = distinct !DILexicalBlock(scope: !178, file: !1, line: 33, column: 25)
!183 = !DILocation(line: 36, column: 16, scope: !182)
!184 = !DILocation(line: 36, column: 23, scope: !182)
!185 = !DILocation(line: 36, column: 30, scope: !182)
!186 = !DILocation(line: 36, column: 37, scope: !182)
!187 = !DILocation(line: 36, column: 28, scope: !182)
!188 = !DILocation(line: 36, column: 43, scope: !182)
!189 = !DILocation(line: 36, column: 49, scope: !182)
!190 = !DILocation(line: 36, column: 58, scope: !182)
!191 = !DILocation(line: 36, column: 64, scope: !182)
!192 = !DILocation(line: 36, column: 9, scope: !182)
!193 = !DILocation(line: 37, column: 24, scope: !182)
!194 = !DILocation(line: 37, column: 30, scope: !182)
!195 = !DILocation(line: 37, column: 9, scope: !182)
!196 = !DILocation(line: 37, column: 16, scope: !182)
!197 = !DILocation(line: 37, column: 21, scope: !182)
!198 = !DILocation(line: 38, column: 9, scope: !182)
!199 = !DILocation(line: 38, column: 15, scope: !182)
!200 = !DILocation(line: 38, column: 24, scope: !182)
!201 = !DILocation(line: 39, column: 5, scope: !182)
!202 = !DILocation(line: 40, column: 5, scope: !153)
!203 = !DILocation(line: 40, column: 12, scope: !153)
!204 = !DILocation(line: 40, column: 16, scope: !153)
!205 = !DILocation(line: 41, column: 5, scope: !153)
!206 = !DILocation(line: 41, column: 12, scope: !153)
!207 = !DILocation(line: 41, column: 19, scope: !153)
!208 = !DILocation(line: 42, column: 5, scope: !153)
!209 = distinct !DISubprogram(name: "memcpy", scope: !210, file: !210, line: 12, type: !211, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !19)
!210 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!211 = !DISubroutineType(types: !212)
!212 = !{!63, !63, !213, !215}
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !216, line: 46, baseType: !47)
!216 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!217 = !DILocalVariable(name: "destaddr", arg: 1, scope: !209, file: !210, line: 12, type: !63)
!218 = !DILocation(line: 12, column: 20, scope: !209)
!219 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !209, file: !210, line: 12, type: !213)
!220 = !DILocation(line: 12, column: 42, scope: !209)
!221 = !DILocalVariable(name: "len", arg: 3, scope: !209, file: !210, line: 12, type: !215)
!222 = !DILocation(line: 12, column: 58, scope: !209)
!223 = !DILocalVariable(name: "dest", scope: !209, file: !210, line: 13, type: !52)
!224 = !DILocation(line: 13, column: 9, scope: !209)
!225 = !DILocation(line: 13, column: 16, scope: !209)
!226 = !DILocalVariable(name: "src", scope: !209, file: !210, line: 14, type: !227)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!229 = !DILocation(line: 14, column: 15, scope: !209)
!230 = !DILocation(line: 14, column: 21, scope: !209)
!231 = !DILocation(line: 16, column: 3, scope: !209)
!232 = !DILocation(line: 16, column: 13, scope: !209)
!233 = !DILocation(line: 16, column: 16, scope: !209)
!234 = !DILocation(line: 17, column: 19, scope: !209)
!235 = !DILocation(line: 17, column: 15, scope: !209)
!236 = !DILocation(line: 17, column: 10, scope: !209)
!237 = !DILocation(line: 17, column: 13, scope: !209)
!238 = distinct !{!238, !231, !234, !239}
!239 = !{!"llvm.loop.mustprogress"}
!240 = !DILocation(line: 18, column: 10, scope: !209)
!241 = !DILocation(line: 18, column: 3, scope: !209)

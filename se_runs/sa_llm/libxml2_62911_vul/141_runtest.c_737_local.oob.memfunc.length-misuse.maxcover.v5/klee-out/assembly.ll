; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/141_runtest.c_737_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/141_runtest.c_737_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [9 x i8] c"memcmp_n\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"(n <= 4096 && n <= 4096) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_62911_vul/141_runtest.c_737_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.memcmp = private unnamed_addr constant [47 x i8] c"int memcmp(const void *, const void *, size_t)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"read_res\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"fd\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"idx\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.11 = private unnamed_addr constant [30 x i8] c"Compare error at position %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i32 @memcmp(i8* noundef nonnull %0, i8* noundef nonnull %1, i64 noundef %2) #0 !dbg !10 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !20, metadata !DIExpression()), !dbg !21
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !22, metadata !DIExpression()), !dbg !23
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !24, metadata !DIExpression()), !dbg !25
  %7 = bitcast i64* %6 to i8*, !dbg !26
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !dbg !27
  %8 = load i64, i64* %6, align 8, !dbg !28
  %9 = icmp ule i64 %8, 4096, !dbg !28
  br i1 %9, label %10, label %15, !dbg !28

10:                                               ; preds = %3
  %11 = load i64, i64* %6, align 8, !dbg !28
  %12 = icmp ule i64 %11, 4096, !dbg !28
  br i1 %12, label %13, label %15, !dbg !28

13:                                               ; preds = %10
  br i1 true, label %14, label %15, !dbg !28

14:                                               ; preds = %13
  br label %17, !dbg !28

15:                                               ; preds = %13, %10, %3
  %16 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.3, i64 0, i64 0), i32 noundef 16, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.memcmp, i64 0, i64 0)), !dbg !28
  br label %17, !dbg !28

17:                                               ; preds = %15, %14
  %18 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.3, i64 0, i64 0), i32 noundef 18, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.memcmp, i64 0, i64 0)), !dbg !29
  ret i32 0, !dbg !30
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @read(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !31 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !40, metadata !DIExpression()), !dbg !41
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !42, metadata !DIExpression()), !dbg !43
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !44, metadata !DIExpression()), !dbg !45
  call void @llvm.dbg.declare(metadata i64* %7, metadata !46, metadata !DIExpression()), !dbg !47
  %8 = bitcast i64* %7 to i8*, !dbg !48
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)), !dbg !49
  %9 = load i64, i64* %7, align 8, !dbg !50
  %10 = icmp sge i64 %9, -1, !dbg !51
  br i1 %10, label %11, label %14, !dbg !52

11:                                               ; preds = %3
  %12 = load i64, i64* %7, align 8, !dbg !53
  %13 = icmp sle i64 %12, 4096, !dbg !54
  br label %14

14:                                               ; preds = %11, %3
  %15 = phi i1 [ false, %3 ], [ %13, %11 ], !dbg !55
  %16 = zext i1 %15 to i32, !dbg !52
  %17 = sext i32 %16 to i64, !dbg !50
  call void @klee_assume(i64 noundef %17), !dbg !56
  %18 = load i64, i64* %7, align 8, !dbg !57
  ret i64 %18, !dbg !58
}

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fprintf(%struct._IO_FILE* noundef nonnull %0, i8* noundef %1, ...) #4 !dbg !59 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !120, metadata !DIExpression()), !dbg !121
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !122, metadata !DIExpression()), !dbg !123
  ret i32 0, !dbg !124
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #4 !dbg !125 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [4096 x i8], align 16
  %4 = alloca [4096 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !128, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.declare(metadata [4096 x i8]* %3, metadata !130, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.declare(metadata [4096 x i8]* %4, metadata !135, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.declare(metadata i32* %5, metadata !137, metadata !DIExpression()), !dbg !138
  store i32 0, i32* %5, align 4, !dbg !138
  call void @llvm.dbg.declare(metadata i32* %6, metadata !139, metadata !DIExpression()), !dbg !140
  store i32 4096, i32* %6, align 4, !dbg !140
  call void @llvm.dbg.declare(metadata i64* %7, metadata !141, metadata !DIExpression()), !dbg !142
  %9 = bitcast i32* %2 to i8*, !dbg !143
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)), !dbg !144
  %10 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0, !dbg !145
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4096, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)), !dbg !146
  %11 = getelementptr inbounds [4096 x i8], [4096 x i8]* %4, i64 0, i64 0, !dbg !147
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 4096, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)), !dbg !148
  %12 = bitcast i32* %5 to i8*, !dbg !149
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)), !dbg !150
  %13 = bitcast i32* %6 to i8*, !dbg !151
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)), !dbg !152
  %14 = load i32, i32* %5, align 4, !dbg !153
  %15 = icmp sge i32 %14, 0, !dbg !154
  %16 = zext i1 %15 to i32, !dbg !154
  %17 = sext i32 %16 to i64, !dbg !153
  call void @klee_assume(i64 noundef %17), !dbg !155
  %18 = load i32, i32* %6, align 4, !dbg !156
  %19 = icmp sge i32 %18, 0, !dbg !157
  br i1 %19, label %20, label %23, !dbg !158

20:                                               ; preds = %0
  %21 = load i32, i32* %6, align 4, !dbg !159
  %22 = icmp sle i32 %21, 4096, !dbg !160
  br label %23

23:                                               ; preds = %20, %0
  %24 = phi i1 [ false, %0 ], [ %22, %20 ], !dbg !161
  %25 = zext i1 %24 to i32, !dbg !158
  %26 = sext i32 %25 to i64, !dbg !156
  call void @klee_assume(i64 noundef %26), !dbg !162
  %27 = load i32, i32* %5, align 4, !dbg !163
  %28 = load i32, i32* %6, align 4, !dbg !164
  %29 = icmp sle i32 %27, %28, !dbg !165
  %30 = zext i1 %29 to i32, !dbg !165
  %31 = sext i32 %30 to i64, !dbg !163
  call void @klee_assume(i64 noundef %31), !dbg !166
  br label %32, !dbg !167

32:                                               ; preds = %23, %97
  %33 = load i32, i32* %2, align 4, !dbg !168
  %34 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0, !dbg !170
  %35 = call i64 @read(i32 noundef %33, i8* noundef %34, i64 noundef 4096), !dbg !171
  store i64 %35, i64* %7, align 8, !dbg !172
  %36 = load i64, i64* %7, align 8, !dbg !173
  %37 = icmp sle i64 %36, 0, !dbg !175
  br i1 %37, label %38, label %39, !dbg !176

38:                                               ; preds = %32
  br label %98, !dbg !177

39:                                               ; preds = %32
  %40 = load i64, i64* %7, align 8, !dbg !179
  %41 = load i32, i32* %5, align 4, !dbg !181
  %42 = sext i32 %41 to i64, !dbg !181
  %43 = add nsw i64 %40, %42, !dbg !182
  %44 = load i32, i32* %6, align 4, !dbg !183
  %45 = sext i32 %44 to i64, !dbg !183
  %46 = icmp sgt i64 %43, %45, !dbg !184
  br i1 %46, label %47, label %48, !dbg !185

47:                                               ; preds = %39
  br label %98, !dbg !186

48:                                               ; preds = %39
  %49 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0, !dbg !188
  %50 = load i32, i32* %5, align 4, !dbg !190
  %51 = sext i32 %50 to i64, !dbg !191
  %52 = getelementptr inbounds [4096 x i8], [4096 x i8]* %4, i64 0, i64 %51, !dbg !191
  %53 = load i64, i64* %7, align 8, !dbg !192
  %54 = call i32 @memcmp(i8* noundef %49, i8* noundef %52, i64 noundef %53) #5, !dbg !193
  %55 = icmp ne i32 %54, 0, !dbg !194
  br i1 %55, label %56, label %87, !dbg !195

56:                                               ; preds = %48
  call void @llvm.dbg.declare(metadata i32* %8, metadata !196, metadata !DIExpression()), !dbg !198
  store i32 0, i32* %8, align 4, !dbg !199
  br label %57, !dbg !201

57:                                               ; preds = %78, %56
  %58 = load i32, i32* %8, align 4, !dbg !202
  %59 = sext i32 %58 to i64, !dbg !202
  %60 = load i64, i64* %7, align 8, !dbg !204
  %61 = icmp slt i64 %59, %60, !dbg !205
  br i1 %61, label %62, label %81, !dbg !206

62:                                               ; preds = %57
  %63 = load i32, i32* %8, align 4, !dbg !207
  %64 = sext i32 %63 to i64, !dbg !210
  %65 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 %64, !dbg !210
  %66 = load i8, i8* %65, align 1, !dbg !210
  %67 = sext i8 %66 to i32, !dbg !210
  %68 = load i32, i32* %5, align 4, !dbg !211
  %69 = load i32, i32* %8, align 4, !dbg !212
  %70 = add nsw i32 %68, %69, !dbg !213
  %71 = sext i32 %70 to i64, !dbg !214
  %72 = getelementptr inbounds [4096 x i8], [4096 x i8]* %4, i64 0, i64 %71, !dbg !214
  %73 = load i8, i8* %72, align 1, !dbg !214
  %74 = sext i8 %73 to i32, !dbg !214
  %75 = icmp ne i32 %67, %74, !dbg !215
  br i1 %75, label %76, label %77, !dbg !216

76:                                               ; preds = %62
  br label %81, !dbg !217

77:                                               ; preds = %62
  br label %78, !dbg !219

78:                                               ; preds = %77
  %79 = load i32, i32* %8, align 4, !dbg !220
  %80 = add nsw i32 %79, 1, !dbg !220
  store i32 %80, i32* %8, align 4, !dbg !220
  br label %57, !dbg !221, !llvm.loop !222

81:                                               ; preds = %76, %57
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !225
  %83 = load i32, i32* %5, align 4, !dbg !226
  %84 = load i32, i32* %8, align 4, !dbg !227
  %85 = add nsw i32 %83, %84, !dbg !228
  %86 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %82, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i32 noundef %85), !dbg !229
  br label %87, !dbg !230

87:                                               ; preds = %81, %48
  %88 = load i64, i64* %7, align 8, !dbg !231
  %89 = load i32, i32* %5, align 4, !dbg !232
  %90 = sext i32 %89 to i64, !dbg !232
  %91 = add nsw i64 %90, %88, !dbg !232
  %92 = trunc i64 %91 to i32, !dbg !232
  store i32 %92, i32* %5, align 4, !dbg !232
  %93 = load i32, i32* %5, align 4, !dbg !233
  %94 = load i32, i32* %6, align 4, !dbg !235
  %95 = icmp sge i32 %93, %94, !dbg !236
  br i1 %95, label %96, label %97, !dbg !237

96:                                               ; preds = %87
  br label %98, !dbg !238

97:                                               ; preds = %87
  br label %32, !dbg !167, !llvm.loop !240

98:                                               ; preds = %96, %47, %38
  ret i32 0, !dbg !242
}

attributes #0 = { noinline nounwind optnone readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/141_runtest.c_737_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "9a3dfca355f5b83449ca5900756540de")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.6"}
!10 = distinct !DISubprogram(name: "memcmp", scope: !1, file: !1, line: 13, type: !11, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !19)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14, !14, !16}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !17, line: 46, baseType: !18)
!17 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!18 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!19 = !{}
!20 = !DILocalVariable(name: "s1", arg: 1, scope: !10, file: !1, line: 13, type: !14)
!21 = !DILocation(line: 13, column: 24, scope: !10)
!22 = !DILocalVariable(name: "s2", arg: 2, scope: !10, file: !1, line: 13, type: !14)
!23 = !DILocation(line: 13, column: 40, scope: !10)
!24 = !DILocalVariable(name: "n", arg: 3, scope: !10, file: !1, line: 13, type: !16)
!25 = !DILocation(line: 13, column: 51, scope: !10)
!26 = !DILocation(line: 14, column: 24, scope: !10)
!27 = !DILocation(line: 14, column: 5, scope: !10)
!28 = !DILocation(line: 16, column: 5, scope: !10)
!29 = !DILocation(line: 18, column: 5, scope: !10)
!30 = !DILocation(line: 19, column: 5, scope: !10)
!31 = distinct !DISubprogram(name: "read", scope: !1, file: !1, line: 23, type: !32, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !19)
!32 = !DISubroutineType(types: !33)
!33 = !{!34, !13, !39, !16}
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !35, line: 78, baseType: !36)
!35 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "1e435c46987a169d9f9186f63a512303")
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !37, line: 194, baseType: !38)
!37 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!38 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!40 = !DILocalVariable(name: "fd", arg: 1, scope: !31, file: !1, line: 23, type: !13)
!41 = !DILocation(line: 23, column: 18, scope: !31)
!42 = !DILocalVariable(name: "buf", arg: 2, scope: !31, file: !1, line: 23, type: !39)
!43 = !DILocation(line: 23, column: 28, scope: !31)
!44 = !DILocalVariable(name: "count", arg: 3, scope: !31, file: !1, line: 23, type: !16)
!45 = !DILocation(line: 23, column: 40, scope: !31)
!46 = !DILocalVariable(name: "res", scope: !31, file: !1, line: 24, type: !34)
!47 = !DILocation(line: 24, column: 13, scope: !31)
!48 = !DILocation(line: 25, column: 24, scope: !31)
!49 = !DILocation(line: 25, column: 5, scope: !31)
!50 = !DILocation(line: 26, column: 17, scope: !31)
!51 = !DILocation(line: 26, column: 21, scope: !31)
!52 = !DILocation(line: 26, column: 27, scope: !31)
!53 = !DILocation(line: 26, column: 30, scope: !31)
!54 = !DILocation(line: 26, column: 34, scope: !31)
!55 = !DILocation(line: 0, scope: !31)
!56 = !DILocation(line: 26, column: 5, scope: !31)
!57 = !DILocation(line: 27, column: 12, scope: !31)
!58 = !DILocation(line: 27, column: 5, scope: !31)
!59 = distinct !DISubprogram(name: "fprintf", scope: !1, file: !1, line: 31, type: !60, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !19)
!60 = !DISubroutineType(types: !61)
!61 = !{!13, !62, !118, null}
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !64, line: 7, baseType: !65)
!64 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !66, line: 49, size: 1728, elements: !67)
!66 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "7a6d4a00a37ee6b9a40cd04bd01f5d00")
!67 = !{!68, !69, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !85, !87, !88, !89, !91, !93, !95, !99, !102, !104, !107, !110, !111, !112, !113, !114}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !65, file: !66, line: 51, baseType: !13, size: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !65, file: !66, line: 54, baseType: !70, size: 64, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !65, file: !66, line: 55, baseType: !70, size: 64, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !65, file: !66, line: 56, baseType: !70, size: 64, offset: 192)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !65, file: !66, line: 57, baseType: !70, size: 64, offset: 256)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !65, file: !66, line: 58, baseType: !70, size: 64, offset: 320)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !65, file: !66, line: 59, baseType: !70, size: 64, offset: 384)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !65, file: !66, line: 60, baseType: !70, size: 64, offset: 448)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !65, file: !66, line: 61, baseType: !70, size: 64, offset: 512)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !65, file: !66, line: 64, baseType: !70, size: 64, offset: 576)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !65, file: !66, line: 65, baseType: !70, size: 64, offset: 640)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !65, file: !66, line: 66, baseType: !70, size: 64, offset: 704)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !65, file: !66, line: 68, baseType: !83, size: 64, offset: 768)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !66, line: 36, flags: DIFlagFwdDecl)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !65, file: !66, line: 70, baseType: !86, size: 64, offset: 832)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !65, file: !66, line: 72, baseType: !13, size: 32, offset: 896)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !65, file: !66, line: 73, baseType: !13, size: 32, offset: 928)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !65, file: !66, line: 74, baseType: !90, size: 64, offset: 960)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !37, line: 152, baseType: !38)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !65, file: !66, line: 77, baseType: !92, size: 16, offset: 1024)
!92 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !65, file: !66, line: 78, baseType: !94, size: 8, offset: 1040)
!94 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !65, file: !66, line: 79, baseType: !96, size: 8, offset: 1048)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 8, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 1)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !65, file: !66, line: 81, baseType: !100, size: 64, offset: 1088)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !66, line: 43, baseType: null)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !65, file: !66, line: 89, baseType: !103, size: 64, offset: 1152)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !37, line: 153, baseType: !38)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !65, file: !66, line: 91, baseType: !105, size: 64, offset: 1216)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !66, line: 37, flags: DIFlagFwdDecl)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !65, file: !66, line: 92, baseType: !108, size: 64, offset: 1280)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !66, line: 38, flags: DIFlagFwdDecl)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !65, file: !66, line: 93, baseType: !86, size: 64, offset: 1344)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !65, file: !66, line: 94, baseType: !39, size: 64, offset: 1408)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !65, file: !66, line: 95, baseType: !16, size: 64, offset: 1472)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !65, file: !66, line: 96, baseType: !13, size: 32, offset: 1536)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !65, file: !66, line: 98, baseType: !115, size: 160, offset: 1568)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 160, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 20)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!120 = !DILocalVariable(name: "stream", arg: 1, scope: !59, file: !1, line: 31, type: !62)
!121 = !DILocation(line: 31, column: 19, scope: !59)
!122 = !DILocalVariable(name: "format", arg: 2, scope: !59, file: !1, line: 31, type: !118)
!123 = !DILocation(line: 31, column: 39, scope: !59)
!124 = !DILocation(line: 32, column: 5, scope: !59)
!125 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 35, type: !126, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !19)
!126 = !DISubroutineType(types: !127)
!127 = !{!13}
!128 = !DILocalVariable(name: "fd", scope: !125, file: !1, line: 36, type: !13)
!129 = !DILocation(line: 36, column: 9, scope: !125)
!130 = !DILocalVariable(name: "bytes", scope: !125, file: !1, line: 37, type: !131)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 32768, elements: !132)
!132 = !{!133}
!133 = !DISubrange(count: 4096)
!134 = !DILocation(line: 37, column: 10, scope: !125)
!135 = !DILocalVariable(name: "mem", scope: !125, file: !1, line: 38, type: !131)
!136 = !DILocation(line: 38, column: 10, scope: !125)
!137 = !DILocalVariable(name: "idx", scope: !125, file: !1, line: 39, type: !13)
!138 = !DILocation(line: 39, column: 9, scope: !125)
!139 = !DILocalVariable(name: "size", scope: !125, file: !1, line: 40, type: !13)
!140 = !DILocation(line: 40, column: 9, scope: !125)
!141 = !DILocalVariable(name: "res", scope: !125, file: !1, line: 41, type: !34)
!142 = !DILocation(line: 41, column: 13, scope: !125)
!143 = !DILocation(line: 44, column: 24, scope: !125)
!144 = !DILocation(line: 44, column: 5, scope: !125)
!145 = !DILocation(line: 45, column: 24, scope: !125)
!146 = !DILocation(line: 45, column: 5, scope: !125)
!147 = !DILocation(line: 46, column: 24, scope: !125)
!148 = !DILocation(line: 46, column: 5, scope: !125)
!149 = !DILocation(line: 47, column: 24, scope: !125)
!150 = !DILocation(line: 47, column: 5, scope: !125)
!151 = !DILocation(line: 48, column: 24, scope: !125)
!152 = !DILocation(line: 48, column: 5, scope: !125)
!153 = !DILocation(line: 51, column: 17, scope: !125)
!154 = !DILocation(line: 51, column: 21, scope: !125)
!155 = !DILocation(line: 51, column: 5, scope: !125)
!156 = !DILocation(line: 52, column: 17, scope: !125)
!157 = !DILocation(line: 52, column: 22, scope: !125)
!158 = !DILocation(line: 52, column: 27, scope: !125)
!159 = !DILocation(line: 52, column: 30, scope: !125)
!160 = !DILocation(line: 52, column: 35, scope: !125)
!161 = !DILocation(line: 0, scope: !125)
!162 = !DILocation(line: 52, column: 5, scope: !125)
!163 = !DILocation(line: 53, column: 17, scope: !125)
!164 = !DILocation(line: 53, column: 24, scope: !125)
!165 = !DILocation(line: 53, column: 21, scope: !125)
!166 = !DILocation(line: 53, column: 5, scope: !125)
!167 = !DILocation(line: 56, column: 5, scope: !125)
!168 = !DILocation(line: 57, column: 20, scope: !169)
!169 = distinct !DILexicalBlock(scope: !125, file: !1, line: 56, column: 15)
!170 = !DILocation(line: 57, column: 24, scope: !169)
!171 = !DILocation(line: 57, column: 15, scope: !169)
!172 = !DILocation(line: 57, column: 13, scope: !169)
!173 = !DILocation(line: 58, column: 13, scope: !174)
!174 = distinct !DILexicalBlock(scope: !169, file: !1, line: 58, column: 13)
!175 = !DILocation(line: 58, column: 17, scope: !174)
!176 = !DILocation(line: 58, column: 13, scope: !169)
!177 = !DILocation(line: 59, column: 13, scope: !178)
!178 = distinct !DILexicalBlock(scope: !174, file: !1, line: 58, column: 23)
!179 = !DILocation(line: 61, column: 13, scope: !180)
!180 = distinct !DILexicalBlock(scope: !169, file: !1, line: 61, column: 13)
!181 = !DILocation(line: 61, column: 19, scope: !180)
!182 = !DILocation(line: 61, column: 17, scope: !180)
!183 = !DILocation(line: 61, column: 25, scope: !180)
!184 = !DILocation(line: 61, column: 23, scope: !180)
!185 = !DILocation(line: 61, column: 13, scope: !169)
!186 = !DILocation(line: 62, column: 13, scope: !187)
!187 = distinct !DILexicalBlock(scope: !180, file: !1, line: 61, column: 31)
!188 = !DILocation(line: 65, column: 20, scope: !189)
!189 = distinct !DILexicalBlock(scope: !169, file: !1, line: 65, column: 13)
!190 = !DILocation(line: 65, column: 32, scope: !189)
!191 = !DILocation(line: 65, column: 28, scope: !189)
!192 = !DILocation(line: 65, column: 38, scope: !189)
!193 = !DILocation(line: 65, column: 13, scope: !189)
!194 = !DILocation(line: 65, column: 43, scope: !189)
!195 = !DILocation(line: 65, column: 13, scope: !169)
!196 = !DILocalVariable(name: "ix", scope: !197, file: !1, line: 66, type: !13)
!197 = distinct !DILexicalBlock(scope: !189, file: !1, line: 65, column: 49)
!198 = !DILocation(line: 66, column: 17, scope: !197)
!199 = !DILocation(line: 67, column: 21, scope: !200)
!200 = distinct !DILexicalBlock(scope: !197, file: !1, line: 67, column: 13)
!201 = !DILocation(line: 67, column: 18, scope: !200)
!202 = !DILocation(line: 67, column: 26, scope: !203)
!203 = distinct !DILexicalBlock(scope: !200, file: !1, line: 67, column: 13)
!204 = !DILocation(line: 67, column: 31, scope: !203)
!205 = !DILocation(line: 67, column: 29, scope: !203)
!206 = !DILocation(line: 67, column: 13, scope: !200)
!207 = !DILocation(line: 68, column: 27, scope: !208)
!208 = distinct !DILexicalBlock(scope: !209, file: !1, line: 68, column: 21)
!209 = distinct !DILexicalBlock(scope: !203, file: !1, line: 67, column: 42)
!210 = !DILocation(line: 68, column: 21, scope: !208)
!211 = !DILocation(line: 68, column: 38, scope: !208)
!212 = !DILocation(line: 68, column: 44, scope: !208)
!213 = !DILocation(line: 68, column: 42, scope: !208)
!214 = !DILocation(line: 68, column: 34, scope: !208)
!215 = !DILocation(line: 68, column: 31, scope: !208)
!216 = !DILocation(line: 68, column: 21, scope: !209)
!217 = !DILocation(line: 69, column: 21, scope: !218)
!218 = distinct !DILexicalBlock(scope: !208, file: !1, line: 68, column: 49)
!219 = !DILocation(line: 71, column: 13, scope: !209)
!220 = !DILocation(line: 67, column: 38, scope: !203)
!221 = !DILocation(line: 67, column: 13, scope: !203)
!222 = distinct !{!222, !206, !223, !224}
!223 = !DILocation(line: 71, column: 13, scope: !200)
!224 = !{!"llvm.loop.mustprogress"}
!225 = !DILocation(line: 72, column: 21, scope: !197)
!226 = !DILocation(line: 72, column: 63, scope: !197)
!227 = !DILocation(line: 72, column: 69, scope: !197)
!228 = !DILocation(line: 72, column: 67, scope: !197)
!229 = !DILocation(line: 72, column: 13, scope: !197)
!230 = !DILocation(line: 73, column: 9, scope: !197)
!231 = !DILocation(line: 74, column: 16, scope: !169)
!232 = !DILocation(line: 74, column: 13, scope: !169)
!233 = !DILocation(line: 75, column: 13, scope: !234)
!234 = distinct !DILexicalBlock(scope: !169, file: !1, line: 75, column: 13)
!235 = !DILocation(line: 75, column: 20, scope: !234)
!236 = !DILocation(line: 75, column: 17, scope: !234)
!237 = !DILocation(line: 75, column: 13, scope: !169)
!238 = !DILocation(line: 76, column: 13, scope: !239)
!239 = distinct !DILexicalBlock(scope: !234, file: !1, line: 75, column: 26)
!240 = distinct !{!240, !167, !241}
!241 = !DILocation(line: 78, column: 5, scope: !125)
!242 = !DILocation(line: 80, column: 5, scope: !125)

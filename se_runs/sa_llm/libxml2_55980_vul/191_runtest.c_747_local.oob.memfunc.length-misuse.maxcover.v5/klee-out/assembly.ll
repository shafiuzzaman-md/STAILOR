; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/191_runtest.c_747_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/191_runtest.c_747_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [8 x i8] c"statbuf\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"fd\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"read_res\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"(siz <= info.st_size) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_55980_vul/191_runtest.c_747_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.target_function = private unnamed_addr constant [34 x i8] c"int target_function(const char *)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__wrap_stat(i8* noundef %0, %struct.stat* noundef %1) #0 !dbg !17 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !65, metadata !DIExpression()), !dbg !66
  store %struct.stat* %1, %struct.stat** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.stat** %4, metadata !67, metadata !DIExpression()), !dbg !68
  %5 = load %struct.stat*, %struct.stat** %4, align 8, !dbg !69
  %6 = bitcast %struct.stat* %5 to i8*, !dbg !69
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 144, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)), !dbg !70
  %7 = load %struct.stat*, %struct.stat** %4, align 8, !dbg !71
  %8 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 8, !dbg !72
  %9 = load i64, i64* %8, align 8, !dbg !72
  %10 = icmp sge i64 %9, 0, !dbg !73
  %11 = zext i1 %10 to i32, !dbg !73
  %12 = sext i32 %11 to i64, !dbg !71
  call void @klee_assume(i64 noundef %12), !dbg !74
  %13 = load %struct.stat*, %struct.stat** %4, align 8, !dbg !75
  %14 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 8, !dbg !76
  %15 = load i64, i64* %14, align 8, !dbg !76
  %16 = icmp slt i64 %15, 1048576, !dbg !77
  %17 = zext i1 %16 to i32, !dbg !77
  %18 = sext i32 %17 to i64, !dbg !75
  call void @klee_assume(i64 noundef %18), !dbg !78
  ret i32 0, !dbg !79
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__wrap_open(i8* noundef %0, i32 noundef %1) #0 !dbg !80 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !83, metadata !DIExpression()), !dbg !84
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !85, metadata !DIExpression()), !dbg !86
  call void @llvm.dbg.declare(metadata i32* %5, metadata !87, metadata !DIExpression()), !dbg !88
  %6 = bitcast i32* %5 to i8*, !dbg !89
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)), !dbg !90
  %7 = load i32, i32* %5, align 4, !dbg !91
  %8 = icmp sge i32 %7, -1, !dbg !92
  br i1 %8, label %9, label %12, !dbg !93

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4, !dbg !94
  %11 = icmp slt i32 %10, 100, !dbg !95
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi i1 [ false, %2 ], [ %11, %9 ], !dbg !96
  %14 = zext i1 %13 to i32, !dbg !93
  %15 = sext i32 %14 to i64, !dbg !91
  call void @klee_assume(i64 noundef %15), !dbg !97
  %16 = load i32, i32* %5, align 4, !dbg !98
  ret i32 %16, !dbg !99
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @__wrap_read(i32 noundef %0, i8* noundef %1, i64 noundef %2) #0 !dbg !100 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !105, metadata !DIExpression()), !dbg !106
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !107, metadata !DIExpression()), !dbg !108
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !109, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.declare(metadata i64* %7, metadata !111, metadata !DIExpression()), !dbg !112
  %8 = bitcast i64* %7 to i8*, !dbg !113
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !114
  %9 = load i64, i64* %7, align 8, !dbg !115
  %10 = icmp sge i64 %9, -1, !dbg !116
  %11 = zext i1 %10 to i32, !dbg !116
  %12 = sext i32 %11 to i64, !dbg !115
  call void @klee_assume(i64 noundef %12), !dbg !117
  %13 = load i64, i64* %7, align 8, !dbg !118
  %14 = load i64, i64* %6, align 8, !dbg !119
  %15 = icmp sle i64 %13, %14, !dbg !120
  %16 = zext i1 %15 to i32, !dbg !120
  %17 = sext i32 %16 to i64, !dbg !118
  call void @klee_assume(i64 noundef %17), !dbg !121
  %18 = load i64, i64* %7, align 8, !dbg !122
  ret i64 %18, !dbg !123
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__wrap_close(i32 noundef %0) #0 !dbg !124 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !127, metadata !DIExpression()), !dbg !128
  ret i32 0, !dbg !129
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !130 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !133, metadata !DIExpression()), !dbg !137
  %3 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !138
  call void @klee_make_symbolic(i8* noundef %3, i64 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !139
  %4 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !140
  %5 = load i8, i8* %4, align 1, !dbg !140
  %6 = sext i8 %5 to i32, !dbg !140
  %7 = icmp eq i32 %6, 0, !dbg !141
  %8 = zext i1 %7 to i32, !dbg !141
  %9 = sext i32 %8 to i64, !dbg !140
  call void @klee_assume(i64 noundef %9), !dbg !142
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !143
  %11 = call i32 @target_function(i8* noundef %10), !dbg !144
  ret i32 0, !dbg !145
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_function(i8* noundef %0) #0 !dbg !146 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !149, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.declare(metadata %struct.stat* %4, metadata !151, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.declare(metadata i8** %5, metadata !153, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.declare(metadata i32* %6, metadata !156, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.declare(metadata i64* %7, metadata !158, metadata !DIExpression()), !dbg !159
  call void @llvm.dbg.declare(metadata i64* %8, metadata !160, metadata !DIExpression()), !dbg !161
  store i64 0, i64* %8, align 8, !dbg !161
  %9 = load i8*, i8** %3, align 8, !dbg !162
  %10 = call i32 @stat(i8* noundef %9, %struct.stat* noundef %4) #5, !dbg !164
  %11 = icmp slt i32 %10, 0, !dbg !165
  br i1 %11, label %12, label %13, !dbg !166

12:                                               ; preds = %1
  store i32 -1, i32* %2, align 4, !dbg !167
  br label %57, !dbg !167

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 8, !dbg !168
  %15 = load i64, i64* %14, align 8, !dbg !168
  %16 = add nsw i64 %15, 1, !dbg !169
  %17 = call noalias i8* @malloc(i64 noundef %16) #5, !dbg !170
  store i8* %17, i8** %5, align 8, !dbg !171
  %18 = load i8*, i8** %5, align 8, !dbg !172
  %19 = icmp eq i8* %18, null, !dbg !174
  br i1 %19, label %20, label %21, !dbg !175

20:                                               ; preds = %13
  store i32 -1, i32* %2, align 4, !dbg !176
  br label %57, !dbg !176

21:                                               ; preds = %13
  %22 = load i8*, i8** %3, align 8, !dbg !177
  %23 = call i32 (i8*, i32, ...) @open(i8* noundef %22, i32 noundef 0), !dbg !179
  store i32 %23, i32* %6, align 4, !dbg !180
  %24 = icmp slt i32 %23, 0, !dbg !181
  br i1 %24, label %25, label %27, !dbg !182

25:                                               ; preds = %21
  %26 = load i8*, i8** %5, align 8, !dbg !183
  call void @free(i8* noundef %26) #5, !dbg !185
  store i32 -1, i32* %2, align 4, !dbg !186
  br label %57, !dbg !186

27:                                               ; preds = %21
  br label %28, !dbg !187

28:                                               ; preds = %39, %27
  %29 = load i32, i32* %6, align 4, !dbg !188
  %30 = load i8*, i8** %5, align 8, !dbg !189
  %31 = load i64, i64* %8, align 8, !dbg !190
  %32 = getelementptr inbounds i8, i8* %30, i64 %31, !dbg !189
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 8, !dbg !191
  %34 = load i64, i64* %33, align 8, !dbg !191
  %35 = load i64, i64* %8, align 8, !dbg !192
  %36 = sub i64 %34, %35, !dbg !193
  %37 = call i64 @read(i32 noundef %29, i8* noundef %32, i64 noundef %36), !dbg !194
  store i64 %37, i64* %7, align 8, !dbg !195
  %38 = icmp sgt i64 %37, 0, !dbg !196
  br i1 %38, label %39, label %43, !dbg !187

39:                                               ; preds = %28
  %40 = load i64, i64* %7, align 8, !dbg !197
  %41 = load i64, i64* %8, align 8, !dbg !199
  %42 = add i64 %41, %40, !dbg !199
  store i64 %42, i64* %8, align 8, !dbg !199
  br label %28, !dbg !187, !llvm.loop !200

43:                                               ; preds = %28
  %44 = load i32, i32* %6, align 4, !dbg !203
  %45 = call i32 @close(i32 noundef %44), !dbg !204
  %46 = load i64, i64* %8, align 8, !dbg !205
  %47 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 8, !dbg !205
  %48 = load i64, i64* %47, align 8, !dbg !205
  %49 = icmp ule i64 %46, %48, !dbg !205
  br i1 %49, label %50, label %52, !dbg !205

50:                                               ; preds = %43
  br i1 true, label %51, label %52, !dbg !205

51:                                               ; preds = %50
  br label %54, !dbg !205

52:                                               ; preds = %50, %43
  %53 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.6, i64 0, i64 0), i32 noundef 81, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !205
  br label %54, !dbg !205

54:                                               ; preds = %52, %51
  %55 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.6, i64 0, i64 0), i32 noundef 84, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !206
  %56 = load i8*, i8** %5, align 8, !dbg !207
  call void @free(i8* noundef %56) #5, !dbg !208
  store i32 0, i32* %2, align 4, !dbg !209
  br label %57, !dbg !209

57:                                               ; preds = %54, %25, %20, %12
  %58 = load i32, i32* %2, align 4, !dbg !210
  ret i32 %58, !dbg !210
}

; Function Attrs: nounwind
declare i32 @stat(i8* noundef, %struct.stat* noundef) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

declare i32 @open(i8* noundef, i32 noundef, ...) #2

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

declare i64 @read(i32 noundef, i8* noundef, i64 noundef) #2

declare i32 @close(i32 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/191_runtest.c_747_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "f7f526b7082f51d45fb8f84d3f351677")
!2 = !{!3, !8}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !4, line: 108, baseType: !5)
!4 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "7fb02a803b0c9b11cb5276b77d21e9d8")
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !6, line: 194, baseType: !7)
!6 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!7 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !{i32 7, !"Dwarf Version", i32 5}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{i32 7, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"Ubuntu clang version 14.0.6"}
!17 = distinct !DISubprogram(name: "__wrap_stat", scope: !1, file: !1, line: 13, type: !18, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !64)
!18 = !DISubroutineType(types: !19)
!19 = !{!20, !21, !24}
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !26, line: 26, size: 1152, elements: !27)
!26 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "59591d2af474d06a64835bfc23e4bb5d")
!27 = !{!28, !31, !33, !35, !38, !40, !42, !43, !44, !46, !48, !50, !58, !59, !60}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !25, file: !26, line: 31, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !6, line: 145, baseType: !30)
!30 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !25, file: !26, line: 36, baseType: !32, size: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !6, line: 148, baseType: !30)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !25, file: !26, line: 44, baseType: !34, size: 64, offset: 128)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !6, line: 151, baseType: !30)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !25, file: !26, line: 45, baseType: !36, size: 32, offset: 192)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !6, line: 150, baseType: !37)
!37 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !25, file: !26, line: 47, baseType: !39, size: 32, offset: 224)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !6, line: 146, baseType: !37)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !25, file: !26, line: 48, baseType: !41, size: 32, offset: 256)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !6, line: 147, baseType: !37)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !25, file: !26, line: 50, baseType: !20, size: 32, offset: 288)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !25, file: !26, line: 52, baseType: !29, size: 64, offset: 320)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !25, file: !26, line: 57, baseType: !45, size: 64, offset: 384)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !6, line: 152, baseType: !7)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !25, file: !26, line: 61, baseType: !47, size: 64, offset: 448)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !6, line: 175, baseType: !7)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !25, file: !26, line: 63, baseType: !49, size: 64, offset: 512)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !6, line: 180, baseType: !7)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !25, file: !26, line: 74, baseType: !51, size: 128, offset: 576)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !52, line: 11, size: 128, elements: !53)
!52 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!53 = !{!54, !56}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !51, file: !52, line: 16, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !6, line: 160, baseType: !7)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !51, file: !52, line: 21, baseType: !57, size: 64, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !6, line: 197, baseType: !7)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !25, file: !26, line: 75, baseType: !51, size: 128, offset: 704)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !25, file: !26, line: 76, baseType: !51, size: 128, offset: 832)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !25, file: !26, line: 89, baseType: !61, size: 192, offset: 960)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 192, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 3)
!64 = !{}
!65 = !DILocalVariable(name: "pathname", arg: 1, scope: !17, file: !1, line: 13, type: !21)
!66 = !DILocation(line: 13, column: 29, scope: !17)
!67 = !DILocalVariable(name: "statbuf", arg: 2, scope: !17, file: !1, line: 13, type: !24)
!68 = !DILocation(line: 13, column: 52, scope: !17)
!69 = !DILocation(line: 15, column: 24, scope: !17)
!70 = !DILocation(line: 15, column: 5, scope: !17)
!71 = !DILocation(line: 18, column: 17, scope: !17)
!72 = !DILocation(line: 18, column: 26, scope: !17)
!73 = !DILocation(line: 18, column: 34, scope: !17)
!74 = !DILocation(line: 18, column: 5, scope: !17)
!75 = !DILocation(line: 19, column: 17, scope: !17)
!76 = !DILocation(line: 19, column: 26, scope: !17)
!77 = !DILocation(line: 19, column: 34, scope: !17)
!78 = !DILocation(line: 19, column: 5, scope: !17)
!79 = !DILocation(line: 22, column: 5, scope: !17)
!80 = distinct !DISubprogram(name: "__wrap_open", scope: !1, file: !1, line: 26, type: !81, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !64)
!81 = !DISubroutineType(types: !82)
!82 = !{!20, !21, !20}
!83 = !DILocalVariable(name: "pathname", arg: 1, scope: !80, file: !1, line: 26, type: !21)
!84 = !DILocation(line: 26, column: 29, scope: !80)
!85 = !DILocalVariable(name: "flags", arg: 2, scope: !80, file: !1, line: 26, type: !20)
!86 = !DILocation(line: 26, column: 43, scope: !80)
!87 = !DILocalVariable(name: "fd", scope: !80, file: !1, line: 27, type: !20)
!88 = !DILocation(line: 27, column: 9, scope: !80)
!89 = !DILocation(line: 28, column: 24, scope: !80)
!90 = !DILocation(line: 28, column: 5, scope: !80)
!91 = !DILocation(line: 31, column: 17, scope: !80)
!92 = !DILocation(line: 31, column: 20, scope: !80)
!93 = !DILocation(line: 31, column: 26, scope: !80)
!94 = !DILocation(line: 31, column: 29, scope: !80)
!95 = !DILocation(line: 31, column: 32, scope: !80)
!96 = !DILocation(line: 0, scope: !80)
!97 = !DILocation(line: 31, column: 5, scope: !80)
!98 = !DILocation(line: 33, column: 12, scope: !80)
!99 = !DILocation(line: 33, column: 5, scope: !80)
!100 = distinct !DISubprogram(name: "__wrap_read", scope: !1, file: !1, line: 37, type: !101, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !64)
!101 = !DISubroutineType(types: !102)
!102 = !{!3, !20, !8, !103}
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !104, line: 46, baseType: !30)
!104 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!105 = !DILocalVariable(name: "fd", arg: 1, scope: !100, file: !1, line: 37, type: !20)
!106 = !DILocation(line: 37, column: 25, scope: !100)
!107 = !DILocalVariable(name: "buf", arg: 2, scope: !100, file: !1, line: 37, type: !8)
!108 = !DILocation(line: 37, column: 35, scope: !100)
!109 = !DILocalVariable(name: "count", arg: 3, scope: !100, file: !1, line: 37, type: !103)
!110 = !DILocation(line: 37, column: 47, scope: !100)
!111 = !DILocalVariable(name: "res", scope: !100, file: !1, line: 38, type: !3)
!112 = !DILocation(line: 38, column: 13, scope: !100)
!113 = !DILocation(line: 39, column: 24, scope: !100)
!114 = !DILocation(line: 39, column: 5, scope: !100)
!115 = !DILocation(line: 42, column: 17, scope: !100)
!116 = !DILocation(line: 42, column: 21, scope: !100)
!117 = !DILocation(line: 42, column: 5, scope: !100)
!118 = !DILocation(line: 43, column: 17, scope: !100)
!119 = !DILocation(line: 43, column: 33, scope: !100)
!120 = !DILocation(line: 43, column: 21, scope: !100)
!121 = !DILocation(line: 43, column: 5, scope: !100)
!122 = !DILocation(line: 45, column: 12, scope: !100)
!123 = !DILocation(line: 45, column: 5, scope: !100)
!124 = distinct !DISubprogram(name: "__wrap_close", scope: !1, file: !1, line: 49, type: !125, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !64)
!125 = !DISubroutineType(types: !126)
!126 = !{!20, !20}
!127 = !DILocalVariable(name: "fd", arg: 1, scope: !124, file: !1, line: 49, type: !20)
!128 = !DILocation(line: 49, column: 22, scope: !124)
!129 = !DILocation(line: 50, column: 5, scope: !124)
!130 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 90, type: !131, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !64)
!131 = !DISubroutineType(types: !132)
!132 = !{!20}
!133 = !DILocalVariable(name: "filename", scope: !130, file: !1, line: 91, type: !134)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2048, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 256)
!137 = !DILocation(line: 91, column: 10, scope: !130)
!138 = !DILocation(line: 94, column: 24, scope: !130)
!139 = !DILocation(line: 94, column: 5, scope: !130)
!140 = !DILocation(line: 97, column: 17, scope: !130)
!141 = !DILocation(line: 97, column: 31, scope: !130)
!142 = !DILocation(line: 97, column: 5, scope: !130)
!143 = !DILocation(line: 100, column: 21, scope: !130)
!144 = !DILocation(line: 100, column: 5, scope: !130)
!145 = !DILocation(line: 102, column: 5, scope: !130)
!146 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 54, type: !147, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !64)
!147 = !DISubroutineType(types: !148)
!148 = !{!20, !21}
!149 = !DILocalVariable(name: "filename", arg: 1, scope: !146, file: !1, line: 54, type: !21)
!150 = !DILocation(line: 54, column: 40, scope: !146)
!151 = !DILocalVariable(name: "info", scope: !146, file: !1, line: 55, type: !25)
!152 = !DILocation(line: 55, column: 17, scope: !146)
!153 = !DILocalVariable(name: "base", scope: !146, file: !1, line: 56, type: !154)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!155 = !DILocation(line: 56, column: 11, scope: !146)
!156 = !DILocalVariable(name: "fd", scope: !146, file: !1, line: 57, type: !20)
!157 = !DILocation(line: 57, column: 9, scope: !146)
!158 = !DILocalVariable(name: "res", scope: !146, file: !1, line: 58, type: !3)
!159 = !DILocation(line: 58, column: 13, scope: !146)
!160 = !DILocalVariable(name: "siz", scope: !146, file: !1, line: 59, type: !103)
!161 = !DILocation(line: 59, column: 12, scope: !146)
!162 = !DILocation(line: 61, column: 14, scope: !163)
!163 = distinct !DILexicalBlock(scope: !146, file: !1, line: 61, column: 9)
!164 = !DILocation(line: 61, column: 9, scope: !163)
!165 = !DILocation(line: 61, column: 31, scope: !163)
!166 = !DILocation(line: 61, column: 9, scope: !146)
!167 = !DILocation(line: 62, column: 9, scope: !163)
!168 = !DILocation(line: 64, column: 24, scope: !146)
!169 = !DILocation(line: 64, column: 32, scope: !146)
!170 = !DILocation(line: 64, column: 12, scope: !146)
!171 = !DILocation(line: 64, column: 10, scope: !146)
!172 = !DILocation(line: 65, column: 9, scope: !173)
!173 = distinct !DILexicalBlock(scope: !146, file: !1, line: 65, column: 9)
!174 = !DILocation(line: 65, column: 14, scope: !173)
!175 = !DILocation(line: 65, column: 9, scope: !146)
!176 = !DILocation(line: 66, column: 9, scope: !173)
!177 = !DILocation(line: 68, column: 20, scope: !178)
!178 = distinct !DILexicalBlock(scope: !146, file: !1, line: 68, column: 9)
!179 = !DILocation(line: 68, column: 15, scope: !178)
!180 = !DILocation(line: 68, column: 13, scope: !178)
!181 = !DILocation(line: 68, column: 41, scope: !178)
!182 = !DILocation(line: 68, column: 9, scope: !146)
!183 = !DILocation(line: 69, column: 14, scope: !184)
!184 = distinct !DILexicalBlock(scope: !178, file: !1, line: 68, column: 46)
!185 = !DILocation(line: 69, column: 9, scope: !184)
!186 = !DILocation(line: 70, column: 9, scope: !184)
!187 = !DILocation(line: 74, column: 5, scope: !146)
!188 = !DILocation(line: 74, column: 24, scope: !146)
!189 = !DILocation(line: 74, column: 29, scope: !146)
!190 = !DILocation(line: 74, column: 34, scope: !146)
!191 = !DILocation(line: 74, column: 45, scope: !146)
!192 = !DILocation(line: 74, column: 55, scope: !146)
!193 = !DILocation(line: 74, column: 53, scope: !146)
!194 = !DILocation(line: 74, column: 19, scope: !146)
!195 = !DILocation(line: 74, column: 17, scope: !146)
!196 = !DILocation(line: 74, column: 61, scope: !146)
!197 = !DILocation(line: 75, column: 16, scope: !198)
!198 = distinct !DILexicalBlock(scope: !146, file: !1, line: 74, column: 66)
!199 = !DILocation(line: 75, column: 13, scope: !198)
!200 = distinct !{!200, !187, !201, !202}
!201 = !DILocation(line: 76, column: 5, scope: !146)
!202 = !{!"llvm.loop.mustprogress"}
!203 = !DILocation(line: 78, column: 11, scope: !146)
!204 = !DILocation(line: 78, column: 5, scope: !146)
!205 = !DILocation(line: 81, column: 5, scope: !146)
!206 = !DILocation(line: 84, column: 5, scope: !146)
!207 = !DILocation(line: 86, column: 10, scope: !146)
!208 = !DILocation(line: 86, column: 5, scope: !146)
!209 = !DILocation(line: 87, column: 5, scope: !146)
!210 = !DILocation(line: 88, column: 1, scope: !146)

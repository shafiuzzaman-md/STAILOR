; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/139_runtest.c_732_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/139_runtest.c_732_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [30 x i8] c"failed to open %s for reading\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"(idx + res <= size) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_62911_vul/139_runtest.c_732_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.test_function = private unnamed_addr constant [54 x i8] c"int test_function(const char *, unsigned char *, int)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"mem\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_function(i8* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !16 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4096 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !24, metadata !DIExpression()), !dbg !25
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !26, metadata !DIExpression()), !dbg !27
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata i32* %8, metadata !30, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata [4096 x i8]* %9, metadata !32, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i32* %10, metadata !37, metadata !DIExpression()), !dbg !38
  store i32 0, i32* %10, align 4, !dbg !38
  call void @llvm.dbg.declare(metadata i32* %11, metadata !39, metadata !DIExpression()), !dbg !40
  %12 = load i8*, i8** %5, align 8, !dbg !41
  %13 = call i32 (i8*, i32, ...) @open(i8* noundef %12, i32 noundef 0), !dbg !42
  store i32 %13, i32* %8, align 4, !dbg !43
  %14 = load i32, i32* %8, align 4, !dbg !44
  %15 = icmp slt i32 %14, 0, !dbg !46
  br i1 %15, label %16, label %20, !dbg !47

16:                                               ; preds = %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !48
  %18 = load i8*, i8** %5, align 8, !dbg !50
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* noundef %18), !dbg !51
  store i32 -1, i32* %4, align 4, !dbg !52
  br label %71, !dbg !52

20:                                               ; preds = %3
  br label %21, !dbg !53

21:                                               ; preds = %64, %20
  %22 = load i32, i32* %10, align 4, !dbg !54
  %23 = load i32, i32* %7, align 4, !dbg !55
  %24 = icmp slt i32 %22, %23, !dbg !56
  br i1 %24, label %25, label %68, !dbg !53

25:                                               ; preds = %21
  %26 = load i32, i32* %8, align 4, !dbg !57
  %27 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0, !dbg !59
  %28 = call i64 @read(i32 noundef %26, i8* noundef %27, i64 noundef 4096), !dbg !60
  %29 = trunc i64 %28 to i32, !dbg !60
  store i32 %29, i32* %11, align 4, !dbg !61
  %30 = load i32, i32* %11, align 4, !dbg !62
  %31 = icmp sle i32 %30, 0, !dbg !64
  br i1 %31, label %32, label %33, !dbg !65

32:                                               ; preds = %25
  br label %68, !dbg !66

33:                                               ; preds = %25
  %34 = load i32, i32* %11, align 4, !dbg !67
  %35 = load i32, i32* %10, align 4, !dbg !69
  %36 = add nsw i32 %34, %35, !dbg !70
  %37 = load i32, i32* %7, align 4, !dbg !71
  %38 = icmp sgt i32 %36, %37, !dbg !72
  br i1 %38, label %39, label %40, !dbg !73

39:                                               ; preds = %33
  br label %68, !dbg !74

40:                                               ; preds = %33
  %41 = load i32, i32* %10, align 4, !dbg !75
  %42 = load i32, i32* %11, align 4, !dbg !75
  %43 = add nsw i32 %41, %42, !dbg !75
  %44 = load i32, i32* %7, align 4, !dbg !75
  %45 = icmp sle i32 %43, %44, !dbg !75
  br i1 %45, label %46, label %48, !dbg !75

46:                                               ; preds = %40
  br i1 true, label %47, label %48, !dbg !75

47:                                               ; preds = %46
  br label %50, !dbg !75

48:                                               ; preds = %46, %40
  %49 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.3, i64 0, i64 0), i32 noundef 34, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.test_function, i64 0, i64 0)), !dbg !75
  br label %50, !dbg !75

50:                                               ; preds = %48, %47
  %51 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.3, i64 0, i64 0), i32 noundef 35, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.test_function, i64 0, i64 0)), !dbg !76
  %52 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0, !dbg !77
  %53 = load i8*, i8** %6, align 8, !dbg !79
  %54 = load i32, i32* %10, align 4, !dbg !80
  %55 = sext i32 %54 to i64, !dbg !79
  %56 = getelementptr inbounds i8, i8* %53, i64 %55, !dbg !79
  %57 = load i32, i32* %11, align 4, !dbg !81
  %58 = sext i32 %57 to i64, !dbg !81
  %59 = call i32 @memcmp(i8* noundef %52, i8* noundef %56, i64 noundef %58) #6, !dbg !82
  %60 = icmp ne i32 %59, 0, !dbg !83
  br i1 %60, label %61, label %64, !dbg !84

61:                                               ; preds = %50
  %62 = load i32, i32* %8, align 4, !dbg !85
  %63 = call i32 @close(i32 noundef %62), !dbg !87
  store i32 -1, i32* %4, align 4, !dbg !88
  br label %71, !dbg !88

64:                                               ; preds = %50
  %65 = load i32, i32* %11, align 4, !dbg !89
  %66 = load i32, i32* %10, align 4, !dbg !90
  %67 = add nsw i32 %66, %65, !dbg !90
  store i32 %67, i32* %10, align 4, !dbg !90
  br label %21, !dbg !53, !llvm.loop !91

68:                                               ; preds = %39, %32, %21
  %69 = load i32, i32* %8, align 4, !dbg !94
  %70 = call i32 @close(i32 noundef %69), !dbg !95
  store i32 0, i32* %4, align 4, !dbg !96
  br label %71, !dbg !96

71:                                               ; preds = %68, %61, %16
  %72 = load i32, i32* %4, align 4, !dbg !97
  ret i32 %72, !dbg !97
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @open(i8* noundef, i32 noundef, ...) #2

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

declare i64 @read(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare i32 @close(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !98 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !101, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata i32* %3, metadata !106, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.declare(metadata i8** %4, metadata !108, metadata !DIExpression()), !dbg !109
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !110
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)), !dbg !111
  %6 = bitcast i32* %3 to i8*, !dbg !112
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)), !dbg !113
  %7 = load i32, i32* %3, align 4, !dbg !114
  %8 = icmp sge i32 %7, 0, !dbg !115
  br i1 %8, label %9, label %12, !dbg !116

9:                                                ; preds = %0
  %10 = load i32, i32* %3, align 4, !dbg !117
  %11 = icmp sle i32 %10, 65536, !dbg !118
  br label %12

12:                                               ; preds = %9, %0
  %13 = phi i1 [ false, %0 ], [ %11, %9 ], !dbg !119
  %14 = zext i1 %13 to i32, !dbg !116
  %15 = sext i32 %14 to i64, !dbg !114
  call void @klee_assume(i64 noundef %15), !dbg !120
  %16 = load i32, i32* %3, align 4, !dbg !121
  %17 = sext i32 %16 to i64, !dbg !121
  %18 = call noalias i8* @malloc(i64 noundef %17) #7, !dbg !122
  store i8* %18, i8** %4, align 8, !dbg !123
  %19 = load i8*, i8** %4, align 8, !dbg !124
  %20 = icmp eq i8* %19, null, !dbg !126
  br i1 %20, label %21, label %22, !dbg !127

21:                                               ; preds = %12
  store i32 0, i32* %1, align 4, !dbg !128
  br label %31, !dbg !128

22:                                               ; preds = %12
  %23 = load i8*, i8** %4, align 8, !dbg !130
  %24 = load i32, i32* %3, align 4, !dbg !131
  %25 = sext i32 %24 to i64, !dbg !131
  call void @klee_make_symbolic(i8* noundef %23, i64 noundef %25, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)), !dbg !132
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !133
  %27 = load i8*, i8** %4, align 8, !dbg !134
  %28 = load i32, i32* %3, align 4, !dbg !135
  %29 = call i32 @test_function(i8* noundef %26, i8* noundef %27, i32 noundef %28), !dbg !136
  %30 = load i8*, i8** %4, align 8, !dbg !137
  call void @free(i8* noundef %30) #7, !dbg !138
  store i32 0, i32* %1, align 4, !dbg !139
  br label %31, !dbg !139

31:                                               ; preds = %22, %21
  %32 = load i32, i32* %1, align 4, !dbg !140
  ret i32 %32, !dbg !140
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @memcmp(i8* noundef %0, i8* noundef %1, i64 noundef %2) #5 !dbg !141 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !150, metadata !DIExpression()), !dbg !151
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !152, metadata !DIExpression()), !dbg !153
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !154, metadata !DIExpression()), !dbg !155
  %10 = load i64, i64* %7, align 8, !dbg !156
  %11 = icmp ne i64 %10, 0, !dbg !158
  br i1 %11, label %12, label %39, !dbg !159

12:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i8** %8, metadata !160, metadata !DIExpression()), !dbg !164
  %13 = load i8*, i8** %5, align 8, !dbg !165
  store i8* %13, i8** %8, align 8, !dbg !164
  call void @llvm.dbg.declare(metadata i8** %9, metadata !166, metadata !DIExpression()), !dbg !167
  %14 = load i8*, i8** %6, align 8, !dbg !168
  store i8* %14, i8** %9, align 8, !dbg !167
  br label %15, !dbg !169

15:                                               ; preds = %35, %12
  %16 = load i8*, i8** %8, align 8, !dbg !170
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !170
  store i8* %17, i8** %8, align 8, !dbg !170
  %18 = load i8, i8* %16, align 1, !dbg !173
  %19 = zext i8 %18 to i32, !dbg !173
  %20 = load i8*, i8** %9, align 8, !dbg !174
  %21 = getelementptr inbounds i8, i8* %20, i32 1, !dbg !174
  store i8* %21, i8** %9, align 8, !dbg !174
  %22 = load i8, i8* %20, align 1, !dbg !175
  %23 = zext i8 %22 to i32, !dbg !175
  %24 = icmp ne i32 %19, %23, !dbg !176
  br i1 %24, label %25, label %35, !dbg !177

25:                                               ; preds = %15
  %26 = load i8*, i8** %8, align 8, !dbg !178
  %27 = getelementptr inbounds i8, i8* %26, i32 -1, !dbg !178
  store i8* %27, i8** %8, align 8, !dbg !178
  %28 = load i8, i8* %27, align 1, !dbg !180
  %29 = zext i8 %28 to i32, !dbg !180
  %30 = load i8*, i8** %9, align 8, !dbg !181
  %31 = getelementptr inbounds i8, i8* %30, i32 -1, !dbg !181
  store i8* %31, i8** %9, align 8, !dbg !181
  %32 = load i8, i8* %31, align 1, !dbg !182
  %33 = zext i8 %32 to i32, !dbg !182
  %34 = sub nsw i32 %29, %33, !dbg !183
  store i32 %34, i32* %4, align 4, !dbg !184
  br label %40, !dbg !184

35:                                               ; preds = %15
  %36 = load i64, i64* %7, align 8, !dbg !185
  %37 = add i64 %36, -1, !dbg !185
  store i64 %37, i64* %7, align 8, !dbg !185
  %38 = icmp ne i64 %37, 0, !dbg !186
  br i1 %38, label %15, label %39, !dbg !187, !llvm.loop !188

39:                                               ; preds = %35, %3
  store i32 0, i32* %4, align 4, !dbg !190
  br label %40, !dbg !190

40:                                               ; preds = %39, %25
  %41 = load i32, i32* %4, align 4, !dbg !191
  ret i32 %41, !dbg !191
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15, !15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/139_runtest.c_732_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "67480311439852d69af35f199b36cfdf")
!2 = !{!3, !5}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = distinct !DICompileUnit(language: DW_LANG_C99, file: !7, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!7 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcmp.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "6a01b8a9953e07eca8ec791434d4f8e8")
!8 = !{i32 7, !"Dwarf Version", i32 5}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{i32 7, !"PIC Level", i32 2}
!12 = !{i32 7, !"PIE Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"Ubuntu clang version 14.0.6"}
!16 = distinct !DISubprogram(name: "test_function", scope: !1, file: !1, line: 13, type: !17, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!17 = !DISubroutineType(types: !18)
!18 = !{!19, !20, !3, !19}
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!22 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!23 = !{}
!24 = !DILocalVariable(name: "filename", arg: 1, scope: !16, file: !1, line: 13, type: !20)
!25 = !DILocation(line: 13, column: 31, scope: !16)
!26 = !DILocalVariable(name: "mem", arg: 2, scope: !16, file: !1, line: 13, type: !3)
!27 = !DILocation(line: 13, column: 56, scope: !16)
!28 = !DILocalVariable(name: "size", arg: 3, scope: !16, file: !1, line: 13, type: !19)
!29 = !DILocation(line: 13, column: 65, scope: !16)
!30 = !DILocalVariable(name: "fd", scope: !16, file: !1, line: 14, type: !19)
!31 = !DILocation(line: 14, column: 9, scope: !16)
!32 = !DILocalVariable(name: "bytes", scope: !16, file: !1, line: 15, type: !33)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 4096)
!36 = !DILocation(line: 15, column: 19, scope: !16)
!37 = !DILocalVariable(name: "idx", scope: !16, file: !1, line: 16, type: !19)
!38 = !DILocation(line: 16, column: 9, scope: !16)
!39 = !DILocalVariable(name: "res", scope: !16, file: !1, line: 17, type: !19)
!40 = !DILocation(line: 17, column: 9, scope: !16)
!41 = !DILocation(line: 19, column: 15, scope: !16)
!42 = !DILocation(line: 19, column: 10, scope: !16)
!43 = !DILocation(line: 19, column: 8, scope: !16)
!44 = !DILocation(line: 20, column: 9, scope: !45)
!45 = distinct !DILexicalBlock(scope: !16, file: !1, line: 20, column: 9)
!46 = !DILocation(line: 20, column: 12, scope: !45)
!47 = !DILocation(line: 20, column: 9, scope: !16)
!48 = !DILocation(line: 21, column: 17, scope: !49)
!49 = distinct !DILexicalBlock(scope: !45, file: !1, line: 20, column: 17)
!50 = !DILocation(line: 21, column: 58, scope: !49)
!51 = !DILocation(line: 21, column: 9, scope: !49)
!52 = !DILocation(line: 22, column: 9, scope: !49)
!53 = !DILocation(line: 25, column: 5, scope: !16)
!54 = !DILocation(line: 25, column: 12, scope: !16)
!55 = !DILocation(line: 25, column: 18, scope: !16)
!56 = !DILocation(line: 25, column: 16, scope: !16)
!57 = !DILocation(line: 26, column: 20, scope: !58)
!58 = distinct !DILexicalBlock(scope: !16, file: !1, line: 25, column: 24)
!59 = !DILocation(line: 26, column: 24, scope: !58)
!60 = !DILocation(line: 26, column: 15, scope: !58)
!61 = !DILocation(line: 26, column: 13, scope: !58)
!62 = !DILocation(line: 27, column: 13, scope: !63)
!63 = distinct !DILexicalBlock(scope: !58, file: !1, line: 27, column: 13)
!64 = !DILocation(line: 27, column: 17, scope: !63)
!65 = !DILocation(line: 27, column: 13, scope: !58)
!66 = !DILocation(line: 28, column: 13, scope: !63)
!67 = !DILocation(line: 29, column: 13, scope: !68)
!68 = distinct !DILexicalBlock(scope: !58, file: !1, line: 29, column: 13)
!69 = !DILocation(line: 29, column: 19, scope: !68)
!70 = !DILocation(line: 29, column: 17, scope: !68)
!71 = !DILocation(line: 29, column: 25, scope: !68)
!72 = !DILocation(line: 29, column: 23, scope: !68)
!73 = !DILocation(line: 29, column: 13, scope: !58)
!74 = !DILocation(line: 30, column: 13, scope: !68)
!75 = !DILocation(line: 34, column: 9, scope: !58)
!76 = !DILocation(line: 35, column: 9, scope: !58)
!77 = !DILocation(line: 37, column: 20, scope: !78)
!78 = distinct !DILexicalBlock(scope: !58, file: !1, line: 37, column: 13)
!79 = !DILocation(line: 37, column: 28, scope: !78)
!80 = !DILocation(line: 37, column: 32, scope: !78)
!81 = !DILocation(line: 37, column: 38, scope: !78)
!82 = !DILocation(line: 37, column: 13, scope: !78)
!83 = !DILocation(line: 37, column: 43, scope: !78)
!84 = !DILocation(line: 37, column: 13, scope: !58)
!85 = !DILocation(line: 38, column: 19, scope: !86)
!86 = distinct !DILexicalBlock(scope: !78, file: !1, line: 37, column: 49)
!87 = !DILocation(line: 38, column: 13, scope: !86)
!88 = !DILocation(line: 39, column: 13, scope: !86)
!89 = !DILocation(line: 41, column: 16, scope: !58)
!90 = !DILocation(line: 41, column: 13, scope: !58)
!91 = distinct !{!91, !53, !92, !93}
!92 = !DILocation(line: 42, column: 5, scope: !16)
!93 = !{!"llvm.loop.mustprogress"}
!94 = !DILocation(line: 44, column: 11, scope: !16)
!95 = !DILocation(line: 44, column: 5, scope: !16)
!96 = !DILocation(line: 45, column: 5, scope: !16)
!97 = !DILocation(line: 46, column: 1, scope: !16)
!98 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 48, type: !99, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!99 = !DISubroutineType(types: !100)
!100 = !{!19}
!101 = !DILocalVariable(name: "filename", scope: !98, file: !1, line: 50, type: !102)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 2048, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 256)
!105 = !DILocation(line: 50, column: 10, scope: !98)
!106 = !DILocalVariable(name: "size", scope: !98, file: !1, line: 51, type: !19)
!107 = !DILocation(line: 51, column: 9, scope: !98)
!108 = !DILocalVariable(name: "mem", scope: !98, file: !1, line: 52, type: !3)
!109 = !DILocation(line: 52, column: 20, scope: !98)
!110 = !DILocation(line: 55, column: 24, scope: !98)
!111 = !DILocation(line: 55, column: 5, scope: !98)
!112 = !DILocation(line: 56, column: 24, scope: !98)
!113 = !DILocation(line: 56, column: 5, scope: !98)
!114 = !DILocation(line: 59, column: 17, scope: !98)
!115 = !DILocation(line: 59, column: 22, scope: !98)
!116 = !DILocation(line: 59, column: 27, scope: !98)
!117 = !DILocation(line: 59, column: 30, scope: !98)
!118 = !DILocation(line: 59, column: 35, scope: !98)
!119 = !DILocation(line: 0, scope: !98)
!120 = !DILocation(line: 59, column: 5, scope: !98)
!121 = !DILocation(line: 62, column: 34, scope: !98)
!122 = !DILocation(line: 62, column: 27, scope: !98)
!123 = !DILocation(line: 62, column: 9, scope: !98)
!124 = !DILocation(line: 63, column: 9, scope: !125)
!125 = distinct !DILexicalBlock(scope: !98, file: !1, line: 63, column: 9)
!126 = !DILocation(line: 63, column: 13, scope: !125)
!127 = !DILocation(line: 63, column: 9, scope: !98)
!128 = !DILocation(line: 64, column: 9, scope: !129)
!129 = distinct !DILexicalBlock(scope: !125, file: !1, line: 63, column: 22)
!130 = !DILocation(line: 68, column: 24, scope: !98)
!131 = !DILocation(line: 68, column: 29, scope: !98)
!132 = !DILocation(line: 68, column: 5, scope: !98)
!133 = !DILocation(line: 71, column: 19, scope: !98)
!134 = !DILocation(line: 71, column: 29, scope: !98)
!135 = !DILocation(line: 71, column: 34, scope: !98)
!136 = !DILocation(line: 71, column: 5, scope: !98)
!137 = !DILocation(line: 73, column: 10, scope: !98)
!138 = !DILocation(line: 73, column: 5, scope: !98)
!139 = !DILocation(line: 74, column: 5, scope: !98)
!140 = !DILocation(line: 75, column: 1, scope: !98)
!141 = distinct !DISubprogram(name: "memcmp", scope: !142, file: !142, line: 42, type: !143, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !23)
!142 = !DIFile(filename: "runtime/Freestanding/memcmp.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "6a01b8a9953e07eca8ec791434d4f8e8")
!143 = !DISubroutineType(types: !144)
!144 = !{!19, !145, !145, !147}
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !148, line: 46, baseType: !149)
!148 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!149 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!150 = !DILocalVariable(name: "s1", arg: 1, scope: !141, file: !142, line: 42, type: !145)
!151 = !DILocation(line: 42, column: 24, scope: !141)
!152 = !DILocalVariable(name: "s2", arg: 2, scope: !141, file: !142, line: 42, type: !145)
!153 = !DILocation(line: 42, column: 40, scope: !141)
!154 = !DILocalVariable(name: "n", arg: 3, scope: !141, file: !142, line: 42, type: !147)
!155 = !DILocation(line: 42, column: 51, scope: !141)
!156 = !DILocation(line: 43, column: 7, scope: !157)
!157 = distinct !DILexicalBlock(scope: !141, file: !142, line: 43, column: 7)
!158 = !DILocation(line: 43, column: 9, scope: !157)
!159 = !DILocation(line: 43, column: 7, scope: !141)
!160 = !DILocalVariable(name: "p1", scope: !161, file: !142, line: 44, type: !162)
!161 = distinct !DILexicalBlock(scope: !157, file: !142, line: 43, column: 15)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!164 = !DILocation(line: 44, column: 26, scope: !161)
!165 = !DILocation(line: 44, column: 31, scope: !161)
!166 = !DILocalVariable(name: "p2", scope: !161, file: !142, line: 44, type: !162)
!167 = !DILocation(line: 44, column: 36, scope: !161)
!168 = !DILocation(line: 44, column: 41, scope: !161)
!169 = !DILocation(line: 46, column: 5, scope: !161)
!170 = !DILocation(line: 47, column: 14, scope: !171)
!171 = distinct !DILexicalBlock(scope: !172, file: !142, line: 47, column: 11)
!172 = distinct !DILexicalBlock(scope: !161, file: !142, line: 46, column: 8)
!173 = !DILocation(line: 47, column: 11, scope: !171)
!174 = !DILocation(line: 47, column: 23, scope: !171)
!175 = !DILocation(line: 47, column: 20, scope: !171)
!176 = !DILocation(line: 47, column: 17, scope: !171)
!177 = !DILocation(line: 47, column: 11, scope: !172)
!178 = !DILocation(line: 48, column: 18, scope: !179)
!179 = distinct !DILexicalBlock(scope: !171, file: !142, line: 47, column: 27)
!180 = !DILocation(line: 48, column: 17, scope: !179)
!181 = !DILocation(line: 48, column: 26, scope: !179)
!182 = !DILocation(line: 48, column: 25, scope: !179)
!183 = !DILocation(line: 48, column: 23, scope: !179)
!184 = !DILocation(line: 48, column: 9, scope: !179)
!185 = !DILocation(line: 50, column: 14, scope: !161)
!186 = !DILocation(line: 50, column: 18, scope: !161)
!187 = !DILocation(line: 50, column: 5, scope: !172)
!188 = distinct !{!188, !169, !189, !93}
!189 = !DILocation(line: 50, column: 22, scope: !161)
!190 = !DILocation(line: 52, column: 3, scope: !141)
!191 = !DILocation(line: 53, column: 1, scope: !141)

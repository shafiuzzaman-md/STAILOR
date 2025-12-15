; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/201_runtest.c_649_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/201_runtest.c_649_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"r1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"r2\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"reached_target\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_55980_vul/201_runtest.c_649_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !12 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca [256 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !17, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !23, metadata !DIExpression()), !dbg !24
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !25
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 256, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !26
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !27
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 256, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)), !dbg !28
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !29
  store i8 0, i8* %8, align 1, !dbg !30
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 255, !dbg !31
  store i8 0, i8* %9, align 1, !dbg !32
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !33
  %11 = call i32 @access(i8* noundef %10, i32 noundef 0) #6, !dbg !34
  %12 = icmp eq i32 %11, 0, !dbg !35
  %13 = zext i1 %12 to i32, !dbg !35
  %14 = sext i32 %13 to i64, !dbg !34
  call void @klee_assume(i64 noundef %14), !dbg !36
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !37
  %16 = call i32 @access(i8* noundef %15, i32 noundef 0) #6, !dbg !38
  %17 = icmp eq i32 %16, 0, !dbg !39
  %18 = zext i1 %17 to i32, !dbg !39
  %19 = sext i32 %18 to i64, !dbg !38
  call void @klee_assume(i64 noundef %19), !dbg !40
  call void @llvm.dbg.declare(metadata i32* %4, metadata !41, metadata !DIExpression()), !dbg !42
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !43
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !44
  %22 = call i32 @compareFiles(i8* noundef %20, i8* noundef %21), !dbg !45
  store i32 %22, i32* %4, align 4, !dbg !42
  call void @llvm.dbg.declare(metadata i32* %5, metadata !46, metadata !DIExpression()), !dbg !47
  store i32 0, i32* %5, align 4, !dbg !47
  %23 = bitcast i32* %5 to i8*, !dbg !48
  call void @klee_make_symbolic(i8* noundef %23, i64 noundef 4, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !49
  %24 = load i32, i32* %5, align 4, !dbg !50
  %25 = icmp eq i32 %24, 1, !dbg !51
  %26 = zext i1 %25 to i32, !dbg !51
  %27 = sext i32 %26 to i64, !dbg !50
  call void @klee_assume(i64 noundef %27), !dbg !52
  %28 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.4, i64 0, i64 0), i32 noundef 57, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !53
  %29 = load i32, i32* %4, align 4, !dbg !54
  ret i32 %29, !dbg !55
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare i32 @access(i8* noundef, i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compareFiles(i8* noundef %0, i8* noundef %1) #0 !dbg !56 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [4096 x i8], align 16
  %11 = alloca [4096 x i8], align 16
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !61, metadata !DIExpression()), !dbg !62
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !63, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata i32* %6, metadata !65, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.declare(metadata i32* %7, metadata !67, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.declare(metadata i32* %8, metadata !69, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.declare(metadata i32* %9, metadata !71, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.declare(metadata [4096 x i8]* %10, metadata !73, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.declare(metadata [4096 x i8]* %11, metadata !79, metadata !DIExpression()), !dbg !80
  %13 = load i8*, i8** %4, align 8, !dbg !81
  %14 = call i32 (i8*, i32, ...) @open(i8* noundef %13, i32 noundef 0), !dbg !82
  store i32 %14, i32* %6, align 4, !dbg !83
  %15 = load i32, i32* %6, align 4, !dbg !84
  %16 = icmp slt i32 %15, 0, !dbg !86
  br i1 %16, label %17, label %18, !dbg !87

17:                                               ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !88
  br label %81, !dbg !88

18:                                               ; preds = %2
  %19 = load i8*, i8** %5, align 8, !dbg !89
  %20 = call i32 (i8*, i32, ...) @open(i8* noundef %19, i32 noundef 0), !dbg !90
  store i32 %20, i32* %7, align 4, !dbg !91
  br label %21, !dbg !92

21:                                               ; preds = %18, %71
  %22 = load i32, i32* %6, align 4, !dbg !93
  %23 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0, !dbg !95
  %24 = call i64 @read(i32 noundef %22, i8* noundef %23, i64 noundef 4096), !dbg !96
  %25 = trunc i64 %24 to i32, !dbg !96
  store i32 %25, i32* %8, align 4, !dbg !97
  %26 = load i32, i32* %7, align 4, !dbg !98
  %27 = icmp sge i32 %26, 0, !dbg !99
  br i1 %27, label %28, label %32, !dbg !98

28:                                               ; preds = %21
  %29 = load i32, i32* %7, align 4, !dbg !100
  %30 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0, !dbg !101
  %31 = call i64 @read(i32 noundef %29, i8* noundef %30, i64 noundef 4096), !dbg !102
  br label %33, !dbg !98

32:                                               ; preds = %21
  br label %33, !dbg !98

33:                                               ; preds = %32, %28
  %34 = phi i64 [ %31, %28 ], [ 0, %32 ], !dbg !98
  %35 = trunc i64 %34 to i32, !dbg !98
  store i32 %35, i32* %9, align 4, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %12, metadata !104, metadata !DIExpression()), !dbg !106
  store volatile i32 1, i32* %12, align 4, !dbg !106
  %36 = load i32, i32* %8, align 4, !dbg !107
  %37 = load i32, i32* %9, align 4, !dbg !109
  %38 = icmp ne i32 %36, %37, !dbg !110
  br i1 %38, label %42, label %39, !dbg !111

39:                                               ; preds = %33
  %40 = load i32, i32* %8, align 4, !dbg !112
  %41 = icmp slt i32 %40, 0, !dbg !113
  br i1 %41, label %42, label %51, !dbg !114

42:                                               ; preds = %39, %33
  %43 = load i32, i32* %6, align 4, !dbg !115
  %44 = call i32 @close(i32 noundef %43), !dbg !117
  %45 = load i32, i32* %7, align 4, !dbg !118
  %46 = icmp sge i32 %45, 0, !dbg !120
  br i1 %46, label %47, label %50, !dbg !121

47:                                               ; preds = %42
  %48 = load i32, i32* %7, align 4, !dbg !122
  %49 = call i32 @close(i32 noundef %48), !dbg !123
  br label %50, !dbg !123

50:                                               ; preds = %47, %42
  store i32 1, i32* %3, align 4, !dbg !124
  br label %81, !dbg !124

51:                                               ; preds = %39
  %52 = load i32, i32* %8, align 4, !dbg !125
  %53 = icmp eq i32 %52, 0, !dbg !127
  br i1 %53, label %54, label %55, !dbg !128

54:                                               ; preds = %51
  br label %72, !dbg !129

55:                                               ; preds = %51
  %56 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0, !dbg !130
  %57 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0, !dbg !132
  %58 = load i32, i32* %8, align 4, !dbg !133
  %59 = sext i32 %58 to i64, !dbg !133
  %60 = call i32 @memcmp(i8* noundef %56, i8* noundef %57, i64 noundef %59) #7, !dbg !134
  %61 = icmp ne i32 %60, 0, !dbg !135
  br i1 %61, label %62, label %71, !dbg !136

62:                                               ; preds = %55
  %63 = load i32, i32* %6, align 4, !dbg !137
  %64 = call i32 @close(i32 noundef %63), !dbg !139
  %65 = load i32, i32* %7, align 4, !dbg !140
  %66 = icmp sge i32 %65, 0, !dbg !142
  br i1 %66, label %67, label %70, !dbg !143

67:                                               ; preds = %62
  %68 = load i32, i32* %7, align 4, !dbg !144
  %69 = call i32 @close(i32 noundef %68), !dbg !145
  br label %70, !dbg !145

70:                                               ; preds = %67, %62
  store i32 1, i32* %3, align 4, !dbg !146
  br label %81, !dbg !146

71:                                               ; preds = %55
  br label %21, !dbg !92, !llvm.loop !147

72:                                               ; preds = %54
  %73 = load i32, i32* %6, align 4, !dbg !149
  %74 = call i32 @close(i32 noundef %73), !dbg !150
  %75 = load i32, i32* %7, align 4, !dbg !151
  %76 = icmp sge i32 %75, 0, !dbg !153
  br i1 %76, label %77, label %80, !dbg !154

77:                                               ; preds = %72
  %78 = load i32, i32* %7, align 4, !dbg !155
  %79 = call i32 @close(i32 noundef %78), !dbg !156
  br label %80, !dbg !156

80:                                               ; preds = %77, %72
  store i32 0, i32* %3, align 4, !dbg !157
  br label %81, !dbg !157

81:                                               ; preds = %80, %70, %50, %17
  %82 = load i32, i32* %3, align 4, !dbg !158
  ret i32 %82, !dbg !158
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

declare i32 @open(i8* noundef, i32 noundef, ...) #2

declare i64 @read(i32 noundef, i8* noundef, i64 noundef) #2

declare i32 @close(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @memcmp(i8* noundef %0, i8* noundef %1, i64 noundef %2) #5 !dbg !159 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !168, metadata !DIExpression()), !dbg !169
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !170, metadata !DIExpression()), !dbg !171
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !172, metadata !DIExpression()), !dbg !173
  %10 = load i64, i64* %7, align 8, !dbg !174
  %11 = icmp ne i64 %10, 0, !dbg !176
  br i1 %11, label %12, label %39, !dbg !177

12:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i8** %8, metadata !178, metadata !DIExpression()), !dbg !182
  %13 = load i8*, i8** %5, align 8, !dbg !183
  store i8* %13, i8** %8, align 8, !dbg !182
  call void @llvm.dbg.declare(metadata i8** %9, metadata !184, metadata !DIExpression()), !dbg !185
  %14 = load i8*, i8** %6, align 8, !dbg !186
  store i8* %14, i8** %9, align 8, !dbg !185
  br label %15, !dbg !187

15:                                               ; preds = %35, %12
  %16 = load i8*, i8** %8, align 8, !dbg !188
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !188
  store i8* %17, i8** %8, align 8, !dbg !188
  %18 = load i8, i8* %16, align 1, !dbg !191
  %19 = zext i8 %18 to i32, !dbg !191
  %20 = load i8*, i8** %9, align 8, !dbg !192
  %21 = getelementptr inbounds i8, i8* %20, i32 1, !dbg !192
  store i8* %21, i8** %9, align 8, !dbg !192
  %22 = load i8, i8* %20, align 1, !dbg !193
  %23 = zext i8 %22 to i32, !dbg !193
  %24 = icmp ne i32 %19, %23, !dbg !194
  br i1 %24, label %25, label %35, !dbg !195

25:                                               ; preds = %15
  %26 = load i8*, i8** %8, align 8, !dbg !196
  %27 = getelementptr inbounds i8, i8* %26, i32 -1, !dbg !196
  store i8* %27, i8** %8, align 8, !dbg !196
  %28 = load i8, i8* %27, align 1, !dbg !198
  %29 = zext i8 %28 to i32, !dbg !198
  %30 = load i8*, i8** %9, align 8, !dbg !199
  %31 = getelementptr inbounds i8, i8* %30, i32 -1, !dbg !199
  store i8* %31, i8** %9, align 8, !dbg !199
  %32 = load i8, i8* %31, align 1, !dbg !200
  %33 = zext i8 %32 to i32, !dbg !200
  %34 = sub nsw i32 %29, %33, !dbg !201
  store i32 %34, i32* %4, align 4, !dbg !202
  br label %40, !dbg !202

35:                                               ; preds = %15
  %36 = load i64, i64* %7, align 8, !dbg !203
  %37 = add i64 %36, -1, !dbg !203
  store i64 %37, i64* %7, align 8, !dbg !203
  %38 = icmp ne i64 %37, 0, !dbg !204
  br i1 %38, label %15, label %39, !dbg !205, !llvm.loop !206

39:                                               ; preds = %35, %3
  store i32 0, i32* %4, align 4, !dbg !209
  br label %40, !dbg !209

40:                                               ; preds = %39, %25
  %41 = load i32, i32* %4, align 4, !dbg !210
  ret i32 %41, !dbg !210
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11, !11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/201_runtest.c_649_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "5a07263af34732ea454a2f8a783dbf27")
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
!12 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 14, type: !13, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!13 = !DISubroutineType(types: !14)
!14 = !{!15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{}
!17 = !DILocalVariable(name: "r1", scope: !12, file: !1, line: 16, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 2048, elements: !20)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !{!21}
!21 = !DISubrange(count: 256)
!22 = !DILocation(line: 16, column: 10, scope: !12)
!23 = !DILocalVariable(name: "r2", scope: !12, file: !1, line: 17, type: !18)
!24 = !DILocation(line: 17, column: 10, scope: !12)
!25 = !DILocation(line: 19, column: 24, scope: !12)
!26 = !DILocation(line: 19, column: 5, scope: !12)
!27 = !DILocation(line: 20, column: 24, scope: !12)
!28 = !DILocation(line: 20, column: 5, scope: !12)
!29 = !DILocation(line: 23, column: 5, scope: !12)
!30 = !DILocation(line: 23, column: 13, scope: !12)
!31 = !DILocation(line: 24, column: 5, scope: !12)
!32 = !DILocation(line: 24, column: 13, scope: !12)
!33 = !DILocation(line: 27, column: 24, scope: !12)
!34 = !DILocation(line: 27, column: 17, scope: !12)
!35 = !DILocation(line: 27, column: 34, scope: !12)
!36 = !DILocation(line: 27, column: 5, scope: !12)
!37 = !DILocation(line: 28, column: 24, scope: !12)
!38 = !DILocation(line: 28, column: 17, scope: !12)
!39 = !DILocation(line: 28, column: 34, scope: !12)
!40 = !DILocation(line: 28, column: 5, scope: !12)
!41 = !DILocalVariable(name: "result", scope: !12, file: !1, line: 31, type: !15)
!42 = !DILocation(line: 31, column: 9, scope: !12)
!43 = !DILocation(line: 31, column: 31, scope: !12)
!44 = !DILocation(line: 31, column: 35, scope: !12)
!45 = !DILocation(line: 31, column: 18, scope: !12)
!46 = !DILocalVariable(name: "reached_target", scope: !12, file: !1, line: 47, type: !15)
!47 = !DILocation(line: 47, column: 9, scope: !12)
!48 = !DILocation(line: 48, column: 24, scope: !12)
!49 = !DILocation(line: 48, column: 5, scope: !12)
!50 = !DILocation(line: 51, column: 17, scope: !12)
!51 = !DILocation(line: 51, column: 32, scope: !12)
!52 = !DILocation(line: 51, column: 5, scope: !12)
!53 = !DILocation(line: 57, column: 5, scope: !12)
!54 = !DILocation(line: 59, column: 12, scope: !12)
!55 = !DILocation(line: 59, column: 5, scope: !12)
!56 = distinct !DISubprogram(name: "compareFiles", scope: !1, file: !1, line: 63, type: !57, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!57 = !DISubroutineType(types: !58)
!58 = !{!15, !59, !59}
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!61 = !DILocalVariable(name: "r1", arg: 1, scope: !56, file: !1, line: 63, type: !59)
!62 = !DILocation(line: 63, column: 30, scope: !56)
!63 = !DILocalVariable(name: "r2", arg: 2, scope: !56, file: !1, line: 63, type: !59)
!64 = !DILocation(line: 63, column: 46, scope: !56)
!65 = !DILocalVariable(name: "fd1", scope: !56, file: !1, line: 64, type: !15)
!66 = !DILocation(line: 64, column: 9, scope: !56)
!67 = !DILocalVariable(name: "fd2", scope: !56, file: !1, line: 64, type: !15)
!68 = !DILocation(line: 64, column: 14, scope: !56)
!69 = !DILocalVariable(name: "res1", scope: !56, file: !1, line: 65, type: !15)
!70 = !DILocation(line: 65, column: 9, scope: !56)
!71 = !DILocalVariable(name: "res2", scope: !56, file: !1, line: 65, type: !15)
!72 = !DILocation(line: 65, column: 15, scope: !56)
!73 = !DILocalVariable(name: "bytes1", scope: !56, file: !1, line: 66, type: !74)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 32768, elements: !76)
!75 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!76 = !{!77}
!77 = !DISubrange(count: 4096)
!78 = !DILocation(line: 66, column: 19, scope: !56)
!79 = !DILocalVariable(name: "bytes2", scope: !56, file: !1, line: 67, type: !74)
!80 = !DILocation(line: 67, column: 19, scope: !56)
!81 = !DILocation(line: 69, column: 16, scope: !56)
!82 = !DILocation(line: 69, column: 11, scope: !56)
!83 = !DILocation(line: 69, column: 9, scope: !56)
!84 = !DILocation(line: 70, column: 9, scope: !85)
!85 = distinct !DILexicalBlock(scope: !56, file: !1, line: 70, column: 9)
!86 = !DILocation(line: 70, column: 13, scope: !85)
!87 = !DILocation(line: 70, column: 9, scope: !56)
!88 = !DILocation(line: 71, column: 9, scope: !85)
!89 = !DILocation(line: 73, column: 16, scope: !56)
!90 = !DILocation(line: 73, column: 11, scope: !56)
!91 = !DILocation(line: 73, column: 9, scope: !56)
!92 = !DILocation(line: 75, column: 5, scope: !56)
!93 = !DILocation(line: 76, column: 21, scope: !94)
!94 = distinct !DILexicalBlock(scope: !56, file: !1, line: 75, column: 15)
!95 = !DILocation(line: 76, column: 26, scope: !94)
!96 = !DILocation(line: 76, column: 16, scope: !94)
!97 = !DILocation(line: 76, column: 14, scope: !94)
!98 = !DILocation(line: 78, column: 16, scope: !94)
!99 = !DILocation(line: 78, column: 20, scope: !94)
!100 = !DILocation(line: 78, column: 32, scope: !94)
!101 = !DILocation(line: 78, column: 37, scope: !94)
!102 = !DILocation(line: 78, column: 27, scope: !94)
!103 = !DILocation(line: 78, column: 14, scope: !94)
!104 = !DILocalVariable(name: "marker", scope: !94, file: !1, line: 82, type: !105)
!105 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !15)
!106 = !DILocation(line: 82, column: 22, scope: !94)
!107 = !DILocation(line: 84, column: 14, scope: !108)
!108 = distinct !DILexicalBlock(scope: !94, file: !1, line: 84, column: 13)
!109 = !DILocation(line: 84, column: 22, scope: !108)
!110 = !DILocation(line: 84, column: 19, scope: !108)
!111 = !DILocation(line: 84, column: 28, scope: !108)
!112 = !DILocation(line: 84, column: 32, scope: !108)
!113 = !DILocation(line: 84, column: 37, scope: !108)
!114 = !DILocation(line: 84, column: 13, scope: !94)
!115 = !DILocation(line: 85, column: 19, scope: !116)
!116 = distinct !DILexicalBlock(scope: !108, file: !1, line: 84, column: 43)
!117 = !DILocation(line: 85, column: 13, scope: !116)
!118 = !DILocation(line: 86, column: 17, scope: !119)
!119 = distinct !DILexicalBlock(scope: !116, file: !1, line: 86, column: 17)
!120 = !DILocation(line: 86, column: 21, scope: !119)
!121 = !DILocation(line: 86, column: 17, scope: !116)
!122 = !DILocation(line: 87, column: 23, scope: !119)
!123 = !DILocation(line: 87, column: 17, scope: !119)
!124 = !DILocation(line: 88, column: 13, scope: !116)
!125 = !DILocation(line: 90, column: 13, scope: !126)
!126 = distinct !DILexicalBlock(scope: !94, file: !1, line: 90, column: 13)
!127 = !DILocation(line: 90, column: 18, scope: !126)
!128 = !DILocation(line: 90, column: 13, scope: !94)
!129 = !DILocation(line: 91, column: 13, scope: !126)
!130 = !DILocation(line: 94, column: 20, scope: !131)
!131 = distinct !DILexicalBlock(scope: !94, file: !1, line: 94, column: 13)
!132 = !DILocation(line: 94, column: 28, scope: !131)
!133 = !DILocation(line: 94, column: 36, scope: !131)
!134 = !DILocation(line: 94, column: 13, scope: !131)
!135 = !DILocation(line: 94, column: 42, scope: !131)
!136 = !DILocation(line: 94, column: 13, scope: !94)
!137 = !DILocation(line: 95, column: 19, scope: !138)
!138 = distinct !DILexicalBlock(scope: !131, file: !1, line: 94, column: 48)
!139 = !DILocation(line: 95, column: 13, scope: !138)
!140 = !DILocation(line: 96, column: 17, scope: !141)
!141 = distinct !DILexicalBlock(scope: !138, file: !1, line: 96, column: 17)
!142 = !DILocation(line: 96, column: 21, scope: !141)
!143 = !DILocation(line: 96, column: 17, scope: !138)
!144 = !DILocation(line: 97, column: 23, scope: !141)
!145 = !DILocation(line: 97, column: 17, scope: !141)
!146 = !DILocation(line: 98, column: 13, scope: !138)
!147 = distinct !{!147, !92, !148}
!148 = !DILocation(line: 100, column: 5, scope: !56)
!149 = !DILocation(line: 102, column: 11, scope: !56)
!150 = !DILocation(line: 102, column: 5, scope: !56)
!151 = !DILocation(line: 103, column: 9, scope: !152)
!152 = distinct !DILexicalBlock(scope: !56, file: !1, line: 103, column: 9)
!153 = !DILocation(line: 103, column: 13, scope: !152)
!154 = !DILocation(line: 103, column: 9, scope: !56)
!155 = !DILocation(line: 104, column: 15, scope: !152)
!156 = !DILocation(line: 104, column: 9, scope: !152)
!157 = !DILocation(line: 105, column: 5, scope: !56)
!158 = !DILocation(line: 106, column: 1, scope: !56)
!159 = distinct !DISubprogram(name: "memcmp", scope: !160, file: !160, line: 42, type: !161, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !16)
!160 = !DIFile(filename: "runtime/Freestanding/memcmp.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "6a01b8a9953e07eca8ec791434d4f8e8")
!161 = !DISubroutineType(types: !162)
!162 = !{!15, !163, !163, !165}
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !166, line: 46, baseType: !167)
!166 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!167 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!168 = !DILocalVariable(name: "s1", arg: 1, scope: !159, file: !160, line: 42, type: !163)
!169 = !DILocation(line: 42, column: 24, scope: !159)
!170 = !DILocalVariable(name: "s2", arg: 2, scope: !159, file: !160, line: 42, type: !163)
!171 = !DILocation(line: 42, column: 40, scope: !159)
!172 = !DILocalVariable(name: "n", arg: 3, scope: !159, file: !160, line: 42, type: !165)
!173 = !DILocation(line: 42, column: 51, scope: !159)
!174 = !DILocation(line: 43, column: 7, scope: !175)
!175 = distinct !DILexicalBlock(scope: !159, file: !160, line: 43, column: 7)
!176 = !DILocation(line: 43, column: 9, scope: !175)
!177 = !DILocation(line: 43, column: 7, scope: !159)
!178 = !DILocalVariable(name: "p1", scope: !179, file: !160, line: 44, type: !180)
!179 = distinct !DILexicalBlock(scope: !175, file: !160, line: 43, column: 15)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!182 = !DILocation(line: 44, column: 26, scope: !179)
!183 = !DILocation(line: 44, column: 31, scope: !179)
!184 = !DILocalVariable(name: "p2", scope: !179, file: !160, line: 44, type: !180)
!185 = !DILocation(line: 44, column: 36, scope: !179)
!186 = !DILocation(line: 44, column: 41, scope: !179)
!187 = !DILocation(line: 46, column: 5, scope: !179)
!188 = !DILocation(line: 47, column: 14, scope: !189)
!189 = distinct !DILexicalBlock(scope: !190, file: !160, line: 47, column: 11)
!190 = distinct !DILexicalBlock(scope: !179, file: !160, line: 46, column: 8)
!191 = !DILocation(line: 47, column: 11, scope: !189)
!192 = !DILocation(line: 47, column: 23, scope: !189)
!193 = !DILocation(line: 47, column: 20, scope: !189)
!194 = !DILocation(line: 47, column: 17, scope: !189)
!195 = !DILocation(line: 47, column: 11, scope: !190)
!196 = !DILocation(line: 48, column: 18, scope: !197)
!197 = distinct !DILexicalBlock(scope: !189, file: !160, line: 47, column: 27)
!198 = !DILocation(line: 48, column: 17, scope: !197)
!199 = !DILocation(line: 48, column: 26, scope: !197)
!200 = !DILocation(line: 48, column: 25, scope: !197)
!201 = !DILocation(line: 48, column: 23, scope: !197)
!202 = !DILocation(line: 48, column: 9, scope: !197)
!203 = !DILocation(line: 50, column: 14, scope: !179)
!204 = !DILocation(line: 50, column: 18, scope: !179)
!205 = !DILocation(line: 50, column: 5, scope: !190)
!206 = distinct !{!206, !187, !207, !208}
!207 = !DILocation(line: 50, column: 22, scope: !179)
!208 = !{!"llvm.loop.mustprogress"}
!209 = !DILocation(line: 52, column: 3, scope: !159)
!210 = !DILocation(line: 53, column: 1, scope: !159)

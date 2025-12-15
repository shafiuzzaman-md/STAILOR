; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/110_testlimits.c_120_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/110_testlimits.c_120_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { i8* }

@hugeTests = internal global %struct.anon* null, align 8, !dbg !0
@.str = private unnamed_addr constant [10 x i8] c"test_name\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"URI\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"huge:\00", align 1
@currentTest = internal global i32 0, align 4, !dbg !7
@.str.4 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"(strlen(URI) >= 5) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_55980_vul/110_testlimits.c_120_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.hugeOpen = private unnamed_addr constant [29 x i8] c"void *hugeOpen(const char *)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !25 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca [256 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  %6 = call noalias i8* @malloc(i64 noundef 16) #6, !dbg !29
  %7 = bitcast i8* %6 to %struct.anon*, !dbg !29
  store %struct.anon* %7, %struct.anon** @hugeTests, align 8, !dbg !30
  %8 = load %struct.anon*, %struct.anon** @hugeTests, align 8, !dbg !31
  %9 = icmp ne %struct.anon* %8, null, !dbg !31
  br i1 %9, label %11, label %10, !dbg !33

10:                                               ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !34
  br label %104, !dbg !34

11:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !35, metadata !DIExpression()), !dbg !39
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !40
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 256, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)), !dbg !41
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !42
  %14 = load i8, i8* %13, align 1, !dbg !42
  %15 = sext i8 %14 to i32, !dbg !42
  %16 = icmp eq i32 %15, 0, !dbg !43
  %17 = zext i1 %16 to i32, !dbg !43
  %18 = sext i32 %17 to i64, !dbg !42
  call void @klee_assume(i64 noundef %18), !dbg !44
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !45
  %20 = load %struct.anon*, %struct.anon** @hugeTests, align 8, !dbg !46
  %21 = getelementptr inbounds %struct.anon, %struct.anon* %20, i64 0, !dbg !46
  %22 = getelementptr inbounds %struct.anon, %struct.anon* %21, i32 0, i32 0, !dbg !47
  store i8* %19, i8** %22, align 8, !dbg !48
  %23 = load %struct.anon*, %struct.anon** @hugeTests, align 8, !dbg !49
  %24 = getelementptr inbounds %struct.anon, %struct.anon* %23, i64 1, !dbg !49
  %25 = getelementptr inbounds %struct.anon, %struct.anon* %24, i32 0, i32 0, !dbg !50
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %25, align 8, !dbg !51
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !52, metadata !DIExpression()), !dbg !53
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !54
  call void @klee_make_symbolic(i8* noundef %26, i64 noundef 256, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)), !dbg !55
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 255, !dbg !56
  %28 = load i8, i8* %27, align 1, !dbg !56
  %29 = sext i8 %28 to i32, !dbg !56
  %30 = icmp eq i32 %29, 0, !dbg !57
  %31 = zext i1 %30 to i32, !dbg !57
  %32 = sext i32 %31 to i64, !dbg !56
  call void @klee_assume(i64 noundef %32), !dbg !58
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !59
  %34 = load i8, i8* %33, align 16, !dbg !59
  %35 = sext i8 %34 to i32, !dbg !59
  %36 = icmp eq i32 %35, 104, !dbg !60
  %37 = zext i1 %36 to i32, !dbg !60
  %38 = sext i32 %37 to i64, !dbg !59
  call void @klee_assume(i64 noundef %38), !dbg !61
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 1, !dbg !62
  %40 = load i8, i8* %39, align 1, !dbg !62
  %41 = sext i8 %40 to i32, !dbg !62
  %42 = icmp eq i32 %41, 117, !dbg !63
  %43 = zext i1 %42 to i32, !dbg !63
  %44 = sext i32 %43 to i64, !dbg !62
  call void @klee_assume(i64 noundef %44), !dbg !64
  %45 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 2, !dbg !65
  %46 = load i8, i8* %45, align 2, !dbg !65
  %47 = sext i8 %46 to i32, !dbg !65
  %48 = icmp eq i32 %47, 103, !dbg !66
  %49 = zext i1 %48 to i32, !dbg !66
  %50 = sext i32 %49 to i64, !dbg !65
  call void @klee_assume(i64 noundef %50), !dbg !67
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 3, !dbg !68
  %52 = load i8, i8* %51, align 1, !dbg !68
  %53 = sext i8 %52 to i32, !dbg !68
  %54 = icmp eq i32 %53, 101, !dbg !69
  %55 = zext i1 %54 to i32, !dbg !69
  %56 = sext i32 %55 to i64, !dbg !68
  call void @klee_assume(i64 noundef %56), !dbg !70
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 4, !dbg !71
  %58 = load i8, i8* %57, align 4, !dbg !71
  %59 = sext i8 %58 to i32, !dbg !71
  %60 = icmp eq i32 %59, 58, !dbg !72
  %61 = zext i1 %60 to i32, !dbg !72
  %62 = sext i32 %61 to i64, !dbg !71
  call void @klee_assume(i64 noundef %62), !dbg !73
  call void @llvm.dbg.declare(metadata i32* %4, metadata !74, metadata !DIExpression()), !dbg !76
  store i32 0, i32* %4, align 4, !dbg !76
  br label %63, !dbg !77

63:                                               ; preds = %96, %11
  %64 = load i32, i32* %4, align 4, !dbg !78
  %65 = icmp slt i32 %64, 256, !dbg !80
  br i1 %65, label %66, label %99, !dbg !81

66:                                               ; preds = %63
  %67 = load i32, i32* %4, align 4, !dbg !82
  %68 = sext i32 %67 to i64, !dbg !85
  %69 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 %68, !dbg !85
  %70 = load i8, i8* %69, align 1, !dbg !85
  %71 = sext i8 %70 to i32, !dbg !85
  %72 = icmp eq i32 %71, 0, !dbg !86
  br i1 %72, label %73, label %82, !dbg !87

73:                                               ; preds = %66
  %74 = load i32, i32* %4, align 4, !dbg !88
  %75 = sext i32 %74 to i64, !dbg !90
  %76 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 %75, !dbg !90
  %77 = load i8, i8* %76, align 1, !dbg !90
  %78 = sext i8 %77 to i32, !dbg !90
  %79 = icmp eq i32 %78, 0, !dbg !91
  %80 = zext i1 %79 to i32, !dbg !91
  %81 = sext i32 %80 to i64, !dbg !90
  call void @klee_assume(i64 noundef %81), !dbg !92
  br label %99, !dbg !93

82:                                               ; preds = %66
  %83 = load i32, i32* %4, align 4, !dbg !94
  %84 = sext i32 %83 to i64, !dbg !95
  %85 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 %84, !dbg !95
  %86 = load i8, i8* %85, align 1, !dbg !95
  %87 = sext i8 %86 to i32, !dbg !95
  %88 = load i32, i32* %4, align 4, !dbg !96
  %89 = sext i32 %88 to i64, !dbg !97
  %90 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 %89, !dbg !97
  %91 = load i8, i8* %90, align 1, !dbg !97
  %92 = sext i8 %91 to i32, !dbg !97
  %93 = icmp eq i32 %87, %92, !dbg !98
  %94 = zext i1 %93 to i32, !dbg !98
  %95 = sext i32 %94 to i64, !dbg !95
  call void @klee_assume(i64 noundef %95), !dbg !99
  br label %96, !dbg !100

96:                                               ; preds = %82
  %97 = load i32, i32* %4, align 4, !dbg !101
  %98 = add nsw i32 %97, 1, !dbg !101
  store i32 %98, i32* %4, align 4, !dbg !101
  br label %63, !dbg !102, !llvm.loop !103

99:                                               ; preds = %73, %63
  call void @llvm.dbg.declare(metadata i8** %5, metadata !106, metadata !DIExpression()), !dbg !107
  %100 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !108
  %101 = call i8* @hugeOpen(i8* noundef %100), !dbg !109
  store i8* %101, i8** %5, align 8, !dbg !107
  %102 = load %struct.anon*, %struct.anon** @hugeTests, align 8, !dbg !110
  %103 = bitcast %struct.anon* %102 to i8*, !dbg !110
  call void @free(i8* noundef %103) #6, !dbg !111
  store i32 0, i32* %1, align 4, !dbg !112
  br label %104, !dbg !112

104:                                              ; preds = %99, %10
  %105 = load i32, i32* %1, align 4, !dbg !113
  ret i32 %105, !dbg !113
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @hugeOpen(i8* noundef %0) #0 !dbg !114 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !117, metadata !DIExpression()), !dbg !118
  %4 = load i8*, i8** %3, align 8, !dbg !119
  %5 = icmp eq i8* %4, null, !dbg !121
  br i1 %5, label %10, label %6, !dbg !122

6:                                                ; preds = %1
  %7 = load i8*, i8** %3, align 8, !dbg !123
  %8 = call i32 @strncmp(i8* noundef %7, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i64 noundef 5) #7, !dbg !124
  %9 = icmp ne i32 %8, 0, !dbg !124
  br i1 %9, label %10, label %11, !dbg !125

10:                                               ; preds = %6, %1
  store i8* null, i8** %2, align 8, !dbg !126
  br label %42, !dbg !126

11:                                               ; preds = %6
  store i32 0, i32* @currentTest, align 4, !dbg !127
  br label %12, !dbg !129

12:                                               ; preds = %28, %11
  %13 = load i32, i32* @currentTest, align 4, !dbg !130
  %14 = sext i32 %13 to i64, !dbg !130
  %15 = icmp ult i64 %14, 1, !dbg !132
  br i1 %15, label %16, label %31, !dbg !133

16:                                               ; preds = %12
  %17 = load %struct.anon*, %struct.anon** @hugeTests, align 8, !dbg !134
  %18 = load i32, i32* @currentTest, align 4, !dbg !136
  %19 = sext i32 %18 to i64, !dbg !134
  %20 = getelementptr inbounds %struct.anon, %struct.anon* %17, i64 %19, !dbg !134
  %21 = getelementptr inbounds %struct.anon, %struct.anon* %20, i32 0, i32 0, !dbg !137
  %22 = load i8*, i8** %21, align 8, !dbg !137
  %23 = load i8*, i8** %3, align 8, !dbg !138
  %24 = call i32 @strcmp(i8* noundef %22, i8* noundef %23) #7, !dbg !139
  %25 = icmp ne i32 %24, 0, !dbg !139
  br i1 %25, label %27, label %26, !dbg !140

26:                                               ; preds = %16
  br label %32, !dbg !141

27:                                               ; preds = %16
  br label %28, !dbg !142

28:                                               ; preds = %27
  %29 = load i32, i32* @currentTest, align 4, !dbg !143
  %30 = add nsw i32 %29, 1, !dbg !143
  store i32 %30, i32* @currentTest, align 4, !dbg !143
  br label %12, !dbg !144, !llvm.loop !145

31:                                               ; preds = %12
  store i8* null, i8** %2, align 8, !dbg !147
  br label %42, !dbg !147

32:                                               ; preds = %26
  call void @llvm.dbg.label(metadata !148), !dbg !149
  %33 = load i8*, i8** %3, align 8, !dbg !150
  %34 = call i64 @strlen(i8* noundef %33) #7, !dbg !150
  %35 = icmp uge i64 %34, 5, !dbg !150
  br i1 %35, label %36, label %38, !dbg !150

36:                                               ; preds = %32
  br i1 true, label %37, label %38, !dbg !150

37:                                               ; preds = %36
  br label %40, !dbg !150

38:                                               ; preds = %36, %32
  %39 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.6, i64 0, i64 0), i32 noundef 33, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.hugeOpen, i64 0, i64 0)), !dbg !150
  br label %40, !dbg !150

40:                                               ; preds = %38, %37
  %41 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.6, i64 0, i64 0), i32 noundef 36, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.hugeOpen, i64 0, i64 0)), !dbg !151
  store i8* inttoptr (i64 1 to i8*), i8** %2, align 8, !dbg !152
  br label %42, !dbg !152

42:                                               ; preds = %40, %31, %10
  %43 = load i8*, i8** %2, align 8, !dbg !153
  ret i8* %43, !dbg !153
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #4

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "hugeTests", scope: !2, file: !3, line: 15, type: !10, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/110_testlimits.c_120_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "e98eedcdda61667f89a3946d2ee8e16f")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{!0, !7}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "currentTest", scope: !2, file: !3, line: 16, type: !9, isLocal: true, isDefinition: true)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 13, size: 64, elements: !12)
!12 = !{!13}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !11, file: !3, line: 14, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !{i32 7, !"Dwarf Version", i32 5}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 4}
!20 = !{i32 7, !"PIC Level", i32 2}
!21 = !{i32 7, !"PIE Level", i32 2}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"Ubuntu clang version 14.0.6"}
!25 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 41, type: !26, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!26 = !DISubroutineType(types: !27)
!27 = !{!9}
!28 = !{}
!29 = !DILocation(line: 43, column: 17, scope: !25)
!30 = !DILocation(line: 43, column: 15, scope: !25)
!31 = !DILocation(line: 44, column: 10, scope: !32)
!32 = distinct !DILexicalBlock(scope: !25, file: !3, line: 44, column: 9)
!33 = !DILocation(line: 44, column: 9, scope: !25)
!34 = !DILocation(line: 44, column: 21, scope: !32)
!35 = !DILocalVariable(name: "test_name", scope: !25, file: !3, line: 47, type: !36)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 2048, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 256)
!39 = !DILocation(line: 47, column: 10, scope: !25)
!40 = !DILocation(line: 48, column: 24, scope: !25)
!41 = !DILocation(line: 48, column: 5, scope: !25)
!42 = !DILocation(line: 49, column: 17, scope: !25)
!43 = !DILocation(line: 49, column: 32, scope: !25)
!44 = !DILocation(line: 49, column: 5, scope: !25)
!45 = !DILocation(line: 51, column: 25, scope: !25)
!46 = !DILocation(line: 51, column: 5, scope: !25)
!47 = !DILocation(line: 51, column: 18, scope: !25)
!48 = !DILocation(line: 51, column: 23, scope: !25)
!49 = !DILocation(line: 52, column: 5, scope: !25)
!50 = !DILocation(line: 52, column: 18, scope: !25)
!51 = !DILocation(line: 52, column: 23, scope: !25)
!52 = !DILocalVariable(name: "URI", scope: !25, file: !3, line: 55, type: !36)
!53 = !DILocation(line: 55, column: 10, scope: !25)
!54 = !DILocation(line: 56, column: 24, scope: !25)
!55 = !DILocation(line: 56, column: 5, scope: !25)
!56 = !DILocation(line: 57, column: 17, scope: !25)
!57 = !DILocation(line: 57, column: 26, scope: !25)
!58 = !DILocation(line: 57, column: 5, scope: !25)
!59 = !DILocation(line: 60, column: 17, scope: !25)
!60 = !DILocation(line: 60, column: 24, scope: !25)
!61 = !DILocation(line: 60, column: 5, scope: !25)
!62 = !DILocation(line: 61, column: 17, scope: !25)
!63 = !DILocation(line: 61, column: 24, scope: !25)
!64 = !DILocation(line: 61, column: 5, scope: !25)
!65 = !DILocation(line: 62, column: 17, scope: !25)
!66 = !DILocation(line: 62, column: 24, scope: !25)
!67 = !DILocation(line: 62, column: 5, scope: !25)
!68 = !DILocation(line: 63, column: 17, scope: !25)
!69 = !DILocation(line: 63, column: 24, scope: !25)
!70 = !DILocation(line: 63, column: 5, scope: !25)
!71 = !DILocation(line: 64, column: 17, scope: !25)
!72 = !DILocation(line: 64, column: 24, scope: !25)
!73 = !DILocation(line: 64, column: 5, scope: !25)
!74 = !DILocalVariable(name: "i", scope: !75, file: !3, line: 67, type: !9)
!75 = distinct !DILexicalBlock(scope: !25, file: !3, line: 67, column: 5)
!76 = !DILocation(line: 67, column: 14, scope: !75)
!77 = !DILocation(line: 67, column: 10, scope: !75)
!78 = !DILocation(line: 67, column: 21, scope: !79)
!79 = distinct !DILexicalBlock(scope: !75, file: !3, line: 67, column: 5)
!80 = !DILocation(line: 67, column: 23, scope: !79)
!81 = !DILocation(line: 67, column: 5, scope: !75)
!82 = !DILocation(line: 68, column: 17, scope: !83)
!83 = distinct !DILexicalBlock(scope: !84, file: !3, line: 68, column: 13)
!84 = distinct !DILexicalBlock(scope: !79, file: !3, line: 67, column: 35)
!85 = !DILocation(line: 68, column: 13, scope: !83)
!86 = !DILocation(line: 68, column: 20, scope: !83)
!87 = !DILocation(line: 68, column: 13, scope: !84)
!88 = !DILocation(line: 69, column: 35, scope: !89)
!89 = distinct !DILexicalBlock(scope: !83, file: !3, line: 68, column: 29)
!90 = !DILocation(line: 69, column: 25, scope: !89)
!91 = !DILocation(line: 69, column: 38, scope: !89)
!92 = !DILocation(line: 69, column: 13, scope: !89)
!93 = !DILocation(line: 70, column: 13, scope: !89)
!94 = !DILocation(line: 72, column: 31, scope: !84)
!95 = !DILocation(line: 72, column: 21, scope: !84)
!96 = !DILocation(line: 72, column: 41, scope: !84)
!97 = !DILocation(line: 72, column: 37, scope: !84)
!98 = !DILocation(line: 72, column: 34, scope: !84)
!99 = !DILocation(line: 72, column: 9, scope: !84)
!100 = !DILocation(line: 73, column: 5, scope: !84)
!101 = !DILocation(line: 67, column: 31, scope: !79)
!102 = !DILocation(line: 67, column: 5, scope: !79)
!103 = distinct !{!103, !81, !104, !105}
!104 = !DILocation(line: 73, column: 5, scope: !75)
!105 = !{!"llvm.loop.mustprogress"}
!106 = !DILocalVariable(name: "result", scope: !25, file: !3, line: 76, type: !5)
!107 = !DILocation(line: 76, column: 11, scope: !25)
!108 = !DILocation(line: 76, column: 29, scope: !25)
!109 = !DILocation(line: 76, column: 20, scope: !25)
!110 = !DILocation(line: 79, column: 10, scope: !25)
!111 = !DILocation(line: 79, column: 5, scope: !25)
!112 = !DILocation(line: 81, column: 5, scope: !25)
!113 = !DILocation(line: 82, column: 1, scope: !25)
!114 = distinct !DISubprogram(name: "hugeOpen", scope: !3, file: !3, line: 20, type: !115, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!115 = !DISubroutineType(types: !116)
!116 = !{!5, !14}
!117 = !DILocalVariable(name: "URI", arg: 1, scope: !114, file: !3, line: 20, type: !14)
!118 = !DILocation(line: 20, column: 22, scope: !114)
!119 = !DILocation(line: 21, column: 10, scope: !120)
!120 = distinct !DILexicalBlock(scope: !114, file: !3, line: 21, column: 9)
!121 = !DILocation(line: 21, column: 14, scope: !120)
!122 = !DILocation(line: 21, column: 23, scope: !120)
!123 = !DILocation(line: 21, column: 35, scope: !120)
!124 = !DILocation(line: 21, column: 27, scope: !120)
!125 = !DILocation(line: 21, column: 9, scope: !114)
!126 = !DILocation(line: 22, column: 9, scope: !120)
!127 = !DILocation(line: 24, column: 22, scope: !128)
!128 = distinct !DILexicalBlock(scope: !114, file: !3, line: 24, column: 5)
!129 = !DILocation(line: 24, column: 10, scope: !128)
!130 = !DILocation(line: 24, column: 27, scope: !131)
!131 = distinct !DILexicalBlock(scope: !128, file: !3, line: 24, column: 5)
!132 = !DILocation(line: 24, column: 39, scope: !131)
!133 = !DILocation(line: 24, column: 5, scope: !128)
!134 = !DILocation(line: 26, column: 22, scope: !135)
!135 = distinct !DILexicalBlock(scope: !131, file: !3, line: 26, column: 14)
!136 = !DILocation(line: 26, column: 32, scope: !135)
!137 = !DILocation(line: 26, column: 45, scope: !135)
!138 = !DILocation(line: 26, column: 51, scope: !135)
!139 = !DILocation(line: 26, column: 15, scope: !135)
!140 = !DILocation(line: 26, column: 14, scope: !131)
!141 = !DILocation(line: 27, column: 14, scope: !135)
!142 = !DILocation(line: 26, column: 54, scope: !135)
!143 = !DILocation(line: 25, column: 21, scope: !131)
!144 = !DILocation(line: 24, column: 5, scope: !131)
!145 = distinct !{!145, !133, !146, !105}
!146 = !DILocation(line: 27, column: 19, scope: !128)
!147 = !DILocation(line: 29, column: 5, scope: !114)
!148 = !DILabel(scope: !114, name: "found", file: !3, line: 31)
!149 = !DILocation(line: 31, column: 1, scope: !114)
!150 = !DILocation(line: 33, column: 5, scope: !114)
!151 = !DILocation(line: 36, column: 5, scope: !114)
!152 = !DILocation(line: 38, column: 5, scope: !114)
!153 = !DILocation(line: 39, column: 1, scope: !114)

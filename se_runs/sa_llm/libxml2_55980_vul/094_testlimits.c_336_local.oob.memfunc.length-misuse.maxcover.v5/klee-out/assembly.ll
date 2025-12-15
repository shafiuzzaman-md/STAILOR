; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/094_testlimits.c_336_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/094_testlimits.c_336_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"xmlFuzzReadInt_val\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"xmlFuzzReadString_str\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"crazy_indx\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"crazy\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"(len <= sizeof(buffer)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_55980_vul/094_testlimits.c_336_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.test_target_function = private unnamed_addr constant [32 x i8] c"void test_target_function(void)\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlFuzzReadInt() #0 !dbg !12 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !17, metadata !DIExpression()), !dbg !18
  %2 = bitcast i32* %1 to i8*, !dbg !19
  call void @klee_make_symbolic(i8* noundef %2, i64 noundef 4, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0)), !dbg !20
  %3 = load i32, i32* %1, align 4, !dbg !21
  ret i32 %3, !dbg !22
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlFuzzReadString(i32 noundef %0) #0 !dbg !23 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata i8** %3, metadata !30, metadata !DIExpression()), !dbg !31
  %4 = load i32, i32* %2, align 4, !dbg !32
  %5 = add nsw i32 %4, 1, !dbg !33
  %6 = sext i32 %5 to i64, !dbg !32
  %7 = call noalias i8* @malloc(i64 noundef %6) #8, !dbg !34
  store i8* %7, i8** %3, align 8, !dbg !31
  %8 = load i8*, i8** %3, align 8, !dbg !35
  %9 = icmp ne i8* %8, null, !dbg !35
  br i1 %9, label %10, label %18, !dbg !37

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8, !dbg !38
  %12 = load i32, i32* %2, align 4, !dbg !40
  %13 = sext i32 %12 to i64, !dbg !40
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef %13, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)), !dbg !41
  %14 = load i8*, i8** %3, align 8, !dbg !42
  %15 = load i32, i32* %2, align 4, !dbg !43
  %16 = sext i32 %15 to i64, !dbg !42
  %17 = getelementptr inbounds i8, i8* %14, i64 %16, !dbg !42
  store i8 0, i8* %17, align 1, !dbg !44
  br label %18, !dbg !45

18:                                               ; preds = %10, %1
  %19 = load i8*, i8** %3, align 8, !dbg !46
  ret i8* %19, !dbg !47
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !48 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @test_target_function(), !dbg !49
  ret i32 0, !dbg !50
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_target_function() #0 !dbg !51 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [1024 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %1, metadata !54, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata i32* %2, metadata !56, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata i32* %3, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata [1024 x i8]* %4, metadata !60, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata i8** %5, metadata !65, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.declare(metadata i32* %6, metadata !67, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.declare(metadata i32* %7, metadata !69, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.declare(metadata i32* %8, metadata !71, metadata !DIExpression()), !dbg !72
  %10 = bitcast i32* %2 to i8*, !dbg !73
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)), !dbg !74
  %11 = bitcast i32* %3 to i8*, !dbg !75
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)), !dbg !76
  %12 = load i32, i32* %2, align 4, !dbg !77
  %13 = icmp sge i32 %12, 0, !dbg !78
  %14 = zext i1 %13 to i32, !dbg !78
  %15 = sext i32 %14 to i64, !dbg !77
  call void @klee_assume(i64 noundef %15), !dbg !79
  %16 = load i32, i32* %3, align 4, !dbg !80
  %17 = icmp sge i32 %16, 0, !dbg !81
  %18 = zext i1 %17 to i32, !dbg !81
  %19 = sext i32 %18 to i64, !dbg !80
  call void @klee_assume(i64 noundef %19), !dbg !82
  %20 = load i32, i32* %3, align 4, !dbg !83
  %21 = icmp slt i32 %20, 1024, !dbg !84
  %22 = zext i1 %21 to i32, !dbg !84
  %23 = sext i32 %22 to i64, !dbg !83
  call void @klee_assume(i64 noundef %23), !dbg !85
  call void @llvm.dbg.declare(metadata i32* %9, metadata !86, metadata !DIExpression()), !dbg !87
  store i32 2048, i32* %9, align 4, !dbg !87
  %24 = load i32, i32* %9, align 4, !dbg !88
  %25 = add nsw i32 %24, 1, !dbg !89
  %26 = sext i32 %25 to i64, !dbg !88
  %27 = call noalias i8* @malloc(i64 noundef %26) #8, !dbg !90
  store i8* %27, i8** %1, align 8, !dbg !91
  %28 = load i8*, i8** %1, align 8, !dbg !92
  %29 = icmp ne i8* %28, null, !dbg !92
  br i1 %29, label %31, label %30, !dbg !94

30:                                               ; preds = %0
  br label %97, !dbg !95

31:                                               ; preds = %0
  %32 = load i8*, i8** %1, align 8, !dbg !96
  %33 = load i32, i32* %9, align 4, !dbg !97
  %34 = sext i32 %33 to i64, !dbg !97
  call void @klee_make_symbolic(i8* noundef %32, i64 noundef %34, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)), !dbg !98
  %35 = load i8*, i8** %1, align 8, !dbg !99
  %36 = load i32, i32* %9, align 4, !dbg !100
  %37 = sext i32 %36 to i64, !dbg !99
  %38 = getelementptr inbounds i8, i8* %35, i64 %37, !dbg !99
  store i8 0, i8* %38, align 1, !dbg !101
  %39 = load i32, i32* %2, align 4, !dbg !102
  %40 = load i32, i32* %9, align 4, !dbg !103
  %41 = icmp slt i32 %39, %40, !dbg !104
  %42 = zext i1 %41 to i32, !dbg !104
  %43 = sext i32 %42 to i64, !dbg !102
  call void @klee_assume(i64 noundef %43), !dbg !105
  %44 = load i8*, i8** %1, align 8, !dbg !106
  %45 = call i64 @strlen(i8* noundef %44) #9, !dbg !107
  %46 = load i32, i32* %2, align 4, !dbg !108
  %47 = sext i32 %46 to i64, !dbg !108
  %48 = sub i64 %45, %47, !dbg !109
  %49 = trunc i64 %48 to i32, !dbg !107
  store i32 %49, i32* %6, align 4, !dbg !110
  %50 = load i8*, i8** %1, align 8, !dbg !111
  %51 = load i32, i32* %2, align 4, !dbg !112
  %52 = sext i32 %51 to i64, !dbg !111
  %53 = getelementptr inbounds i8, i8* %50, i64 %52, !dbg !111
  store i8* %53, i8** %5, align 8, !dbg !113
  store i32 2, i32* %7, align 4, !dbg !114
  %54 = load i32, i32* %7, align 4, !dbg !115
  %55 = icmp eq i32 %54, 0, !dbg !117
  br i1 %55, label %56, label %90, !dbg !118

56:                                               ; preds = %31
  %57 = load i32, i32* %3, align 4, !dbg !119
  %58 = load i32, i32* %6, align 4, !dbg !122
  %59 = icmp sge i32 %57, %58, !dbg !123
  br i1 %59, label %60, label %76, !dbg !124

60:                                               ; preds = %56
  %61 = load i32, i32* %6, align 4, !dbg !125
  store i32 %61, i32* %3, align 4, !dbg !127
  store i32 0, i32* %6, align 4, !dbg !128
  %62 = load i32, i32* %3, align 4, !dbg !129
  %63 = sext i32 %62 to i64, !dbg !129
  %64 = icmp ule i64 %63, 1024, !dbg !129
  br i1 %64, label %65, label %67, !dbg !129

65:                                               ; preds = %60
  br i1 true, label %66, label %67, !dbg !129

66:                                               ; preds = %65
  br label %69, !dbg !129

67:                                               ; preds = %65, %60
  %68 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.7, i64 0, i64 0), i32 noundef 73, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.test_target_function, i64 0, i64 0)), !dbg !129
  br label %69, !dbg !129

69:                                               ; preds = %67, %66
  %70 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.7, i64 0, i64 0), i32 noundef 76, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.test_target_function, i64 0, i64 0)), !dbg !130
  %71 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0, !dbg !131
  %72 = load i8*, i8** %5, align 8, !dbg !132
  %73 = load i32, i32* %3, align 4, !dbg !133
  %74 = sext i32 %73 to i64, !dbg !133
  %75 = call i8* @memcpy(i8* %71, i8* %72, i64 %74), !dbg !131
  store i32 1, i32* %7, align 4, !dbg !134
  store i32 0, i32* %8, align 4, !dbg !135
  br label %89, !dbg !136

76:                                               ; preds = %56
  %77 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0, !dbg !137
  %78 = load i8*, i8** %5, align 8, !dbg !139
  %79 = load i32, i32* %3, align 4, !dbg !140
  %80 = sext i32 %79 to i64, !dbg !140
  %81 = call i8* @memcpy(i8* %77, i8* %78, i64 %80), !dbg !137
  %82 = load i32, i32* %3, align 4, !dbg !141
  %83 = load i32, i32* %6, align 4, !dbg !142
  %84 = sub nsw i32 %83, %82, !dbg !142
  store i32 %84, i32* %6, align 4, !dbg !142
  %85 = load i32, i32* %3, align 4, !dbg !143
  %86 = load i8*, i8** %5, align 8, !dbg !144
  %87 = sext i32 %85 to i64, !dbg !144
  %88 = getelementptr inbounds i8, i8* %86, i64 %87, !dbg !144
  store i8* %88, i8** %5, align 8, !dbg !144
  br label %89

89:                                               ; preds = %76, %69
  br label %95, !dbg !145

90:                                               ; preds = %31
  %91 = load i32, i32* %7, align 4, !dbg !146
  %92 = icmp eq i32 %91, 2, !dbg !148
  br i1 %92, label %93, label %94, !dbg !149

93:                                               ; preds = %90
  br label %94, !dbg !150

94:                                               ; preds = %93, %90
  br label %95

95:                                               ; preds = %94, %89
  %96 = load i8*, i8** %1, align 8, !dbg !152
  call void @free(i8* noundef %96) #8, !dbg !153
  br label %97, !dbg !154

97:                                               ; preds = %95, %30
  ret void, !dbg !154
}

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !155 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !165, metadata !DIExpression()), !dbg !166
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !167, metadata !DIExpression()), !dbg !168
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !169, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.declare(metadata i8** %7, metadata !171, metadata !DIExpression()), !dbg !172
  %9 = load i8*, i8** %4, align 8, !dbg !173
  store i8* %9, i8** %7, align 8, !dbg !172
  call void @llvm.dbg.declare(metadata i8** %8, metadata !174, metadata !DIExpression()), !dbg !177
  %10 = load i8*, i8** %5, align 8, !dbg !178
  store i8* %10, i8** %8, align 8, !dbg !177
  br label %11, !dbg !179

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !180
  %13 = add i64 %12, -1, !dbg !180
  store i64 %13, i64* %6, align 8, !dbg !180
  %14 = icmp ugt i64 %12, 0, !dbg !181
  br i1 %14, label %15, label %21, !dbg !179

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !182
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !182
  store i8* %17, i8** %8, align 8, !dbg !182
  %18 = load i8, i8* %16, align 1, !dbg !183
  %19 = load i8*, i8** %7, align 8, !dbg !184
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !184
  store i8* %20, i8** %7, align 8, !dbg !184
  store i8 %18, i8* %19, align 1, !dbg !185
  br label %11, !dbg !179, !llvm.loop !186

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !188
  ret i8* %22, !dbg !189
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11, !11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/094_testlimits.c_336_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "3b4641eb13ed087a4de5f52e3bbad92f")
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
!12 = distinct !DISubprogram(name: "xmlFuzzReadInt", scope: !1, file: !1, line: 14, type: !13, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!13 = !DISubroutineType(types: !14)
!14 = !{!15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{}
!17 = !DILocalVariable(name: "val", scope: !12, file: !1, line: 15, type: !15)
!18 = !DILocation(line: 15, column: 9, scope: !12)
!19 = !DILocation(line: 16, column: 24, scope: !12)
!20 = !DILocation(line: 16, column: 5, scope: !12)
!21 = !DILocation(line: 17, column: 12, scope: !12)
!22 = !DILocation(line: 17, column: 5, scope: !12)
!23 = distinct !DISubprogram(name: "xmlFuzzReadString", scope: !1, file: !1, line: 21, type: !24, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!24 = !DISubroutineType(types: !25)
!25 = !{!26, !15}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!28 = !DILocalVariable(name: "size", arg: 1, scope: !23, file: !1, line: 21, type: !15)
!29 = !DILocation(line: 21, column: 29, scope: !23)
!30 = !DILocalVariable(name: "str", scope: !23, file: !1, line: 22, type: !26)
!31 = !DILocation(line: 22, column: 11, scope: !23)
!32 = !DILocation(line: 22, column: 24, scope: !23)
!33 = !DILocation(line: 22, column: 29, scope: !23)
!34 = !DILocation(line: 22, column: 17, scope: !23)
!35 = !DILocation(line: 23, column: 9, scope: !36)
!36 = distinct !DILexicalBlock(scope: !23, file: !1, line: 23, column: 9)
!37 = !DILocation(line: 23, column: 9, scope: !23)
!38 = !DILocation(line: 24, column: 28, scope: !39)
!39 = distinct !DILexicalBlock(scope: !36, file: !1, line: 23, column: 14)
!40 = !DILocation(line: 24, column: 33, scope: !39)
!41 = !DILocation(line: 24, column: 9, scope: !39)
!42 = !DILocation(line: 25, column: 9, scope: !39)
!43 = !DILocation(line: 25, column: 13, scope: !39)
!44 = !DILocation(line: 25, column: 19, scope: !39)
!45 = !DILocation(line: 26, column: 5, scope: !39)
!46 = !DILocation(line: 27, column: 12, scope: !23)
!47 = !DILocation(line: 27, column: 5, scope: !23)
!48 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 93, type: !13, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!49 = !DILocation(line: 94, column: 5, scope: !48)
!50 = !DILocation(line: 95, column: 5, scope: !48)
!51 = distinct !DISubprogram(name: "test_target_function", scope: !1, file: !1, line: 31, type: !52, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !16)
!52 = !DISubroutineType(types: !53)
!53 = !{null}
!54 = !DILocalVariable(name: "crazy", scope: !51, file: !1, line: 32, type: !26)
!55 = !DILocation(line: 32, column: 11, scope: !51)
!56 = !DILocalVariable(name: "crazy_indx", scope: !51, file: !1, line: 33, type: !15)
!57 = !DILocation(line: 33, column: 9, scope: !51)
!58 = !DILocalVariable(name: "len", scope: !51, file: !1, line: 34, type: !15)
!59 = !DILocation(line: 34, column: 9, scope: !51)
!60 = !DILocalVariable(name: "buffer", scope: !51, file: !1, line: 35, type: !61)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 8192, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 1024)
!64 = !DILocation(line: 35, column: 10, scope: !51)
!65 = !DILocalVariable(name: "current", scope: !51, file: !1, line: 36, type: !26)
!66 = !DILocation(line: 36, column: 11, scope: !51)
!67 = !DILocalVariable(name: "rlen", scope: !51, file: !1, line: 37, type: !15)
!68 = !DILocation(line: 37, column: 9, scope: !51)
!69 = !DILocalVariable(name: "instate", scope: !51, file: !1, line: 38, type: !15)
!70 = !DILocation(line: 38, column: 9, scope: !51)
!71 = !DILocalVariable(name: "curlen", scope: !51, file: !1, line: 39, type: !15)
!72 = !DILocation(line: 39, column: 9, scope: !51)
!73 = !DILocation(line: 42, column: 24, scope: !51)
!74 = !DILocation(line: 42, column: 5, scope: !51)
!75 = !DILocation(line: 43, column: 24, scope: !51)
!76 = !DILocation(line: 43, column: 5, scope: !51)
!77 = !DILocation(line: 46, column: 17, scope: !51)
!78 = !DILocation(line: 46, column: 28, scope: !51)
!79 = !DILocation(line: 46, column: 5, scope: !51)
!80 = !DILocation(line: 47, column: 17, scope: !51)
!81 = !DILocation(line: 47, column: 21, scope: !51)
!82 = !DILocation(line: 47, column: 5, scope: !51)
!83 = !DILocation(line: 48, column: 17, scope: !51)
!84 = !DILocation(line: 48, column: 21, scope: !51)
!85 = !DILocation(line: 48, column: 5, scope: !51)
!86 = !DILocalVariable(name: "crazy_size", scope: !51, file: !1, line: 51, type: !15)
!87 = !DILocation(line: 51, column: 9, scope: !51)
!88 = !DILocation(line: 52, column: 20, scope: !51)
!89 = !DILocation(line: 52, column: 31, scope: !51)
!90 = !DILocation(line: 52, column: 13, scope: !51)
!91 = !DILocation(line: 52, column: 11, scope: !51)
!92 = !DILocation(line: 53, column: 10, scope: !93)
!93 = distinct !DILexicalBlock(scope: !51, file: !1, line: 53, column: 9)
!94 = !DILocation(line: 53, column: 9, scope: !51)
!95 = !DILocation(line: 53, column: 17, scope: !93)
!96 = !DILocation(line: 55, column: 24, scope: !51)
!97 = !DILocation(line: 55, column: 31, scope: !51)
!98 = !DILocation(line: 55, column: 5, scope: !51)
!99 = !DILocation(line: 56, column: 5, scope: !51)
!100 = !DILocation(line: 56, column: 11, scope: !51)
!101 = !DILocation(line: 56, column: 23, scope: !51)
!102 = !DILocation(line: 59, column: 17, scope: !51)
!103 = !DILocation(line: 59, column: 30, scope: !51)
!104 = !DILocation(line: 59, column: 28, scope: !51)
!105 = !DILocation(line: 59, column: 5, scope: !51)
!106 = !DILocation(line: 62, column: 19, scope: !51)
!107 = !DILocation(line: 62, column: 12, scope: !51)
!108 = !DILocation(line: 62, column: 28, scope: !51)
!109 = !DILocation(line: 62, column: 26, scope: !51)
!110 = !DILocation(line: 62, column: 10, scope: !51)
!111 = !DILocation(line: 63, column: 16, scope: !51)
!112 = !DILocation(line: 63, column: 22, scope: !51)
!113 = !DILocation(line: 63, column: 13, scope: !51)
!114 = !DILocation(line: 64, column: 13, scope: !51)
!115 = !DILocation(line: 67, column: 9, scope: !116)
!116 = distinct !DILexicalBlock(scope: !51, file: !1, line: 67, column: 9)
!117 = !DILocation(line: 67, column: 17, scope: !116)
!118 = !DILocation(line: 67, column: 9, scope: !51)
!119 = !DILocation(line: 68, column: 13, scope: !120)
!120 = distinct !DILexicalBlock(scope: !121, file: !1, line: 68, column: 13)
!121 = distinct !DILexicalBlock(scope: !116, file: !1, line: 67, column: 23)
!122 = !DILocation(line: 68, column: 20, scope: !120)
!123 = !DILocation(line: 68, column: 17, scope: !120)
!124 = !DILocation(line: 68, column: 13, scope: !121)
!125 = !DILocation(line: 69, column: 19, scope: !126)
!126 = distinct !DILexicalBlock(scope: !120, file: !1, line: 68, column: 26)
!127 = !DILocation(line: 69, column: 17, scope: !126)
!128 = !DILocation(line: 70, column: 18, scope: !126)
!129 = !DILocation(line: 73, column: 13, scope: !126)
!130 = !DILocation(line: 76, column: 13, scope: !126)
!131 = !DILocation(line: 78, column: 13, scope: !126)
!132 = !DILocation(line: 78, column: 28, scope: !126)
!133 = !DILocation(line: 78, column: 37, scope: !126)
!134 = !DILocation(line: 79, column: 21, scope: !126)
!135 = !DILocation(line: 80, column: 20, scope: !126)
!136 = !DILocation(line: 81, column: 9, scope: !126)
!137 = !DILocation(line: 82, column: 13, scope: !138)
!138 = distinct !DILexicalBlock(scope: !120, file: !1, line: 81, column: 16)
!139 = !DILocation(line: 82, column: 28, scope: !138)
!140 = !DILocation(line: 82, column: 37, scope: !138)
!141 = !DILocation(line: 83, column: 21, scope: !138)
!142 = !DILocation(line: 83, column: 18, scope: !138)
!143 = !DILocation(line: 84, column: 24, scope: !138)
!144 = !DILocation(line: 84, column: 21, scope: !138)
!145 = !DILocation(line: 86, column: 5, scope: !121)
!146 = !DILocation(line: 86, column: 16, scope: !147)
!147 = distinct !DILexicalBlock(scope: !116, file: !1, line: 86, column: 16)
!148 = !DILocation(line: 86, column: 24, scope: !147)
!149 = !DILocation(line: 86, column: 16, scope: !116)
!150 = !DILocation(line: 88, column: 5, scope: !151)
!151 = distinct !DILexicalBlock(scope: !147, file: !1, line: 86, column: 30)
!152 = !DILocation(line: 90, column: 10, scope: !51)
!153 = !DILocation(line: 90, column: 5, scope: !51)
!154 = !DILocation(line: 91, column: 1, scope: !51)
!155 = distinct !DISubprogram(name: "memcpy", scope: !156, file: !156, line: 12, type: !157, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !16)
!156 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!157 = !DISubroutineType(types: !158)
!158 = !{!159, !159, !160, !162}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !163, line: 46, baseType: !164)
!163 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!164 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!165 = !DILocalVariable(name: "destaddr", arg: 1, scope: !155, file: !156, line: 12, type: !159)
!166 = !DILocation(line: 12, column: 20, scope: !155)
!167 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !155, file: !156, line: 12, type: !160)
!168 = !DILocation(line: 12, column: 42, scope: !155)
!169 = !DILocalVariable(name: "len", arg: 3, scope: !155, file: !156, line: 12, type: !162)
!170 = !DILocation(line: 12, column: 58, scope: !155)
!171 = !DILocalVariable(name: "dest", scope: !155, file: !156, line: 13, type: !26)
!172 = !DILocation(line: 13, column: 9, scope: !155)
!173 = !DILocation(line: 13, column: 16, scope: !155)
!174 = !DILocalVariable(name: "src", scope: !155, file: !156, line: 14, type: !175)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!177 = !DILocation(line: 14, column: 15, scope: !155)
!178 = !DILocation(line: 14, column: 21, scope: !155)
!179 = !DILocation(line: 16, column: 3, scope: !155)
!180 = !DILocation(line: 16, column: 13, scope: !155)
!181 = !DILocation(line: 16, column: 16, scope: !155)
!182 = !DILocation(line: 17, column: 19, scope: !155)
!183 = !DILocation(line: 17, column: 15, scope: !155)
!184 = !DILocation(line: 17, column: 10, scope: !155)
!185 = !DILocation(line: 17, column: 13, scope: !155)
!186 = distinct !{!186, !179, !182, !187}
!187 = !{!"llvm.loop.mustprogress"}
!188 = !DILocation(line: 18, column: 10, scope: !155)
!189 = !DILocation(line: 18, column: 3, scope: !155)

; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/080_runtest.c_4299_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/080_runtest.c_4299_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"base_len\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"base_content\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"filename_len\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"filename_content\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"(len < sizeof(prefix)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/080_runtest.c_4299_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"result/c14n/%s/%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @baseFilename(i8* noundef %0) #0 !dbg !12 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i8** %4, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i64* %5, metadata !24, metadata !DIExpression()), !dbg !28
  %6 = bitcast i64* %5 to i8*, !dbg !29
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !dbg !30
  %7 = load i64, i64* %5, align 8, !dbg !31
  %8 = icmp uge i64 %7, 0, !dbg !32
  br i1 %8, label %9, label %12, !dbg !33

9:                                                ; preds = %1
  %10 = load i64, i64* %5, align 8, !dbg !34
  %11 = icmp ult i64 %10, 1024, !dbg !35
  br label %12

12:                                               ; preds = %9, %1
  %13 = phi i1 [ false, %1 ], [ %11, %9 ], !dbg !36
  %14 = zext i1 %13 to i32, !dbg !33
  %15 = sext i32 %14 to i64, !dbg !31
  call void @klee_assume(i64 noundef %15), !dbg !37
  %16 = load i64, i64* %5, align 8, !dbg !38
  %17 = add i64 %16, 1, !dbg !39
  %18 = call noalias i8* @malloc(i64 noundef %17) #8, !dbg !40
  store i8* %18, i8** %4, align 8, !dbg !41
  %19 = load i8*, i8** %4, align 8, !dbg !42
  %20 = icmp ne i8* %19, null, !dbg !42
  br i1 %20, label %22, label %21, !dbg !44

21:                                               ; preds = %12
  store i8* null, i8** %2, align 8, !dbg !45
  br label %30, !dbg !45

22:                                               ; preds = %12
  %23 = load i8*, i8** %4, align 8, !dbg !46
  %24 = load i64, i64* %5, align 8, !dbg !47
  %25 = add i64 %24, 1, !dbg !48
  call void @klee_make_symbolic(i8* noundef %23, i64 noundef %25, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0)), !dbg !49
  %26 = load i8*, i8** %4, align 8, !dbg !50
  %27 = load i64, i64* %5, align 8, !dbg !51
  %28 = getelementptr inbounds i8, i8* %26, i64 %27, !dbg !50
  store i8 0, i8* %28, align 1, !dbg !52
  %29 = load i8*, i8** %4, align 8, !dbg !53
  store i8* %29, i8** %2, align 8, !dbg !54
  br label %30, !dbg !54

30:                                               ; preds = %22, %21
  %31 = load i8*, i8** %2, align 8, !dbg !55
  ret i8* %31, !dbg !55
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !56 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = alloca [500 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !60, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata i8** %3, metadata !62, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.declare(metadata i64* %4, metadata !64, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !66, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.declare(metadata [500 x i8]* %6, metadata !71, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata i8** %7, metadata !76, metadata !DIExpression()), !dbg !77
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8, !dbg !77
  call void @llvm.dbg.declare(metadata i8** %8, metadata !78, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.declare(metadata i32* %9, metadata !80, metadata !DIExpression()), !dbg !81
  %10 = bitcast i64* %4 to i8*, !dbg !82
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 8, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0)), !dbg !83
  %11 = load i64, i64* %4, align 8, !dbg !84
  %12 = icmp uge i64 %11, 0, !dbg !85
  br i1 %12, label %13, label %16, !dbg !86

13:                                               ; preds = %0
  %14 = load i64, i64* %4, align 8, !dbg !87
  %15 = icmp ult i64 %14, 1024, !dbg !88
  br label %16

16:                                               ; preds = %13, %0
  %17 = phi i1 [ false, %0 ], [ %15, %13 ], !dbg !89
  %18 = zext i1 %17 to i32, !dbg !86
  %19 = sext i32 %18 to i64, !dbg !84
  call void @klee_assume(i64 noundef %19), !dbg !90
  %20 = load i64, i64* %4, align 8, !dbg !91
  %21 = add i64 %20, 1, !dbg !92
  %22 = call noalias i8* @malloc(i64 noundef %21) #8, !dbg !93
  store i8* %22, i8** %2, align 8, !dbg !94
  %23 = load i8*, i8** %2, align 8, !dbg !95
  %24 = icmp ne i8* %23, null, !dbg !95
  br i1 %24, label %26, label %25, !dbg !97

25:                                               ; preds = %16
  store i32 0, i32* %1, align 4, !dbg !98
  br label %79, !dbg !98

26:                                               ; preds = %16
  %27 = load i8*, i8** %2, align 8, !dbg !99
  %28 = load i64, i64* %4, align 8, !dbg !100
  %29 = add i64 %28, 1, !dbg !101
  call void @klee_make_symbolic(i8* noundef %27, i64 noundef %29, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0)), !dbg !102
  %30 = load i8*, i8** %2, align 8, !dbg !103
  %31 = load i64, i64* %4, align 8, !dbg !104
  %32 = getelementptr inbounds i8, i8* %30, i64 %31, !dbg !103
  store i8 0, i8* %32, align 1, !dbg !105
  %33 = load i8*, i8** %2, align 8, !dbg !106
  %34 = call i8* @baseFilename(i8* noundef %33), !dbg !107
  store i8* %34, i8** %3, align 8, !dbg !108
  %35 = load i8*, i8** %3, align 8, !dbg !109
  %36 = icmp ne i8* %35, null, !dbg !109
  br i1 %36, label %39, label %37, !dbg !111

37:                                               ; preds = %26
  %38 = load i8*, i8** %2, align 8, !dbg !112
  call void @free(i8* noundef %38) #8, !dbg !114
  store i32 0, i32* %1, align 4, !dbg !115
  br label %79, !dbg !115

39:                                               ; preds = %26
  %40 = load i8*, i8** %3, align 8, !dbg !116
  %41 = call i64 @strlen(i8* noundef %40) #9, !dbg !117
  %42 = trunc i64 %41 to i32, !dbg !117
  store i32 %42, i32* %9, align 4, !dbg !118
  %43 = load i32, i32* %9, align 4, !dbg !119
  %44 = icmp sge i32 %43, 4, !dbg !120
  %45 = zext i1 %44 to i32, !dbg !120
  %46 = sext i32 %45 to i64, !dbg !119
  call void @klee_assume(i64 noundef %46), !dbg !121
  %47 = load i32, i32* %9, align 4, !dbg !122
  %48 = sub nsw i32 %47, 4, !dbg !122
  store i32 %48, i32* %9, align 4, !dbg !122
  %49 = load i32, i32* %9, align 4, !dbg !123
  %50 = sext i32 %49 to i64, !dbg !123
  %51 = icmp ult i64 %50, 1024, !dbg !123
  br i1 %51, label %52, label %54, !dbg !123

52:                                               ; preds = %39
  br i1 true, label %53, label %54, !dbg !123

53:                                               ; preds = %52
  br label %56, !dbg !123

54:                                               ; preds = %52, %39
  %55 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.7, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !123
  br label %56, !dbg !123

56:                                               ; preds = %54, %53
  %57 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !124
  %58 = load i8*, i8** %3, align 8, !dbg !125
  %59 = load i32, i32* %9, align 4, !dbg !126
  %60 = sext i32 %59 to i64, !dbg !126
  %61 = call i8* @memcpy(i8* %57, i8* %58, i64 %60), !dbg !124
  %62 = load i32, i32* %9, align 4, !dbg !127
  %63 = sext i32 %62 to i64, !dbg !128
  %64 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 %63, !dbg !128
  store i8 0, i8* %64, align 1, !dbg !129
  %65 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.7, i64 0, i64 0), i32 noundef 60, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !130
  %66 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 0, !dbg !131
  %67 = load i8*, i8** %7, align 8, !dbg !133
  %68 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !134
  %69 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %66, i64 noundef 499, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* noundef %67, i8* noundef %68), !dbg !135
  %70 = icmp sge i32 %69, 499, !dbg !136
  br i1 %70, label %71, label %73, !dbg !137

71:                                               ; preds = %56
  %72 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 499, !dbg !138
  store i8 0, i8* %72, align 1, !dbg !139
  br label %73, !dbg !138

73:                                               ; preds = %71, %56
  %74 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 0, !dbg !140
  %75 = call noalias i8* @strdup(i8* noundef %74) #8, !dbg !141
  store i8* %75, i8** %8, align 8, !dbg !142
  %76 = load i8*, i8** %8, align 8, !dbg !143
  call void @free(i8* noundef %76) #8, !dbg !144
  %77 = load i8*, i8** %3, align 8, !dbg !145
  call void @free(i8* noundef %77) #8, !dbg !146
  %78 = load i8*, i8** %2, align 8, !dbg !147
  call void @free(i8* noundef %78) #8, !dbg !148
  store i32 0, i32* %1, align 4, !dbg !149
  br label %79, !dbg !149

79:                                               ; preds = %73, %37, %25
  %80 = load i32, i32* %1, align 4, !dbg !150
  ret i32 %80, !dbg !150
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

declare i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #2

; Function Attrs: nounwind
declare noalias i8* @strdup(i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !151 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !158, metadata !DIExpression()), !dbg !159
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !160, metadata !DIExpression()), !dbg !161
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !162, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.declare(metadata i8** %7, metadata !164, metadata !DIExpression()), !dbg !165
  %9 = load i8*, i8** %4, align 8, !dbg !166
  store i8* %9, i8** %7, align 8, !dbg !165
  call void @llvm.dbg.declare(metadata i8** %8, metadata !167, metadata !DIExpression()), !dbg !168
  %10 = load i8*, i8** %5, align 8, !dbg !169
  store i8* %10, i8** %8, align 8, !dbg !168
  br label %11, !dbg !170

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !171
  %13 = add i64 %12, -1, !dbg !171
  store i64 %13, i64* %6, align 8, !dbg !171
  %14 = icmp ugt i64 %12, 0, !dbg !172
  br i1 %14, label %15, label %21, !dbg !170

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !173
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !173
  store i8* %17, i8** %8, align 8, !dbg !173
  %18 = load i8, i8* %16, align 1, !dbg !174
  %19 = load i8*, i8** %7, align 8, !dbg !175
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !175
  store i8* %20, i8** %7, align 8, !dbg !175
  store i8 %18, i8* %19, align 1, !dbg !176
  br label %11, !dbg !170, !llvm.loop !177

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !179
  ret i8* %22, !dbg !180
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
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/080_runtest.c_4299_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "a3f5fb0c5ae4f1670cc284c0420325a2")
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
!12 = distinct !DISubprogram(name: "baseFilename", scope: !1, file: !1, line: 9, type: !13, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !19)
!13 = !DISubroutineType(types: !14)
!14 = !{!15, !17}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!19 = !{}
!20 = !DILocalVariable(name: "filename", arg: 1, scope: !12, file: !1, line: 9, type: !17)
!21 = !DILocation(line: 9, column: 32, scope: !12)
!22 = !DILocalVariable(name: "result", scope: !12, file: !1, line: 10, type: !15)
!23 = !DILocation(line: 10, column: 11, scope: !12)
!24 = !DILocalVariable(name: "len", scope: !12, file: !1, line: 11, type: !25)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !26, line: 46, baseType: !27)
!26 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!27 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!28 = !DILocation(line: 11, column: 12, scope: !12)
!29 = !DILocation(line: 13, column: 24, scope: !12)
!30 = !DILocation(line: 13, column: 5, scope: !12)
!31 = !DILocation(line: 14, column: 17, scope: !12)
!32 = !DILocation(line: 14, column: 21, scope: !12)
!33 = !DILocation(line: 14, column: 26, scope: !12)
!34 = !DILocation(line: 14, column: 29, scope: !12)
!35 = !DILocation(line: 14, column: 33, scope: !12)
!36 = !DILocation(line: 0, scope: !12)
!37 = !DILocation(line: 14, column: 5, scope: !12)
!38 = !DILocation(line: 16, column: 21, scope: !12)
!39 = !DILocation(line: 16, column: 25, scope: !12)
!40 = !DILocation(line: 16, column: 14, scope: !12)
!41 = !DILocation(line: 16, column: 12, scope: !12)
!42 = !DILocation(line: 17, column: 10, scope: !43)
!43 = distinct !DILexicalBlock(scope: !12, file: !1, line: 17, column: 9)
!44 = !DILocation(line: 17, column: 9, scope: !12)
!45 = !DILocation(line: 17, column: 18, scope: !43)
!46 = !DILocation(line: 19, column: 24, scope: !12)
!47 = !DILocation(line: 19, column: 32, scope: !12)
!48 = !DILocation(line: 19, column: 36, scope: !12)
!49 = !DILocation(line: 19, column: 5, scope: !12)
!50 = !DILocation(line: 20, column: 5, scope: !12)
!51 = !DILocation(line: 20, column: 12, scope: !12)
!52 = !DILocation(line: 20, column: 17, scope: !12)
!53 = !DILocation(line: 22, column: 12, scope: !12)
!54 = !DILocation(line: 22, column: 5, scope: !12)
!55 = !DILocation(line: 23, column: 1, scope: !12)
!56 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 25, type: !57, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !19)
!57 = !DISubroutineType(types: !58)
!58 = !{!59}
!59 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!60 = !DILocalVariable(name: "filename", scope: !56, file: !1, line: 26, type: !15)
!61 = !DILocation(line: 26, column: 11, scope: !56)
!62 = !DILocalVariable(name: "base", scope: !56, file: !1, line: 27, type: !15)
!63 = !DILocation(line: 27, column: 11, scope: !56)
!64 = !DILocalVariable(name: "filename_len", scope: !56, file: !1, line: 28, type: !25)
!65 = !DILocation(line: 28, column: 12, scope: !56)
!66 = !DILocalVariable(name: "prefix", scope: !56, file: !1, line: 29, type: !67)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 8192, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 1024)
!70 = !DILocation(line: 29, column: 10, scope: !56)
!71 = !DILocalVariable(name: "buf", scope: !56, file: !1, line: 30, type: !72)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 4000, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 500)
!75 = !DILocation(line: 30, column: 10, scope: !56)
!76 = !DILocalVariable(name: "subdir", scope: !56, file: !1, line: 31, type: !15)
!77 = !DILocation(line: 31, column: 11, scope: !56)
!78 = !DILocalVariable(name: "result", scope: !56, file: !1, line: 32, type: !15)
!79 = !DILocation(line: 32, column: 11, scope: !56)
!80 = !DILocalVariable(name: "len", scope: !56, file: !1, line: 33, type: !59)
!81 = !DILocation(line: 33, column: 9, scope: !56)
!82 = !DILocation(line: 35, column: 24, scope: !56)
!83 = !DILocation(line: 35, column: 5, scope: !56)
!84 = !DILocation(line: 36, column: 17, scope: !56)
!85 = !DILocation(line: 36, column: 30, scope: !56)
!86 = !DILocation(line: 36, column: 35, scope: !56)
!87 = !DILocation(line: 36, column: 38, scope: !56)
!88 = !DILocation(line: 36, column: 51, scope: !56)
!89 = !DILocation(line: 0, scope: !56)
!90 = !DILocation(line: 36, column: 5, scope: !56)
!91 = !DILocation(line: 38, column: 23, scope: !56)
!92 = !DILocation(line: 38, column: 36, scope: !56)
!93 = !DILocation(line: 38, column: 16, scope: !56)
!94 = !DILocation(line: 38, column: 14, scope: !56)
!95 = !DILocation(line: 39, column: 10, scope: !96)
!96 = distinct !DILexicalBlock(scope: !56, file: !1, line: 39, column: 9)
!97 = !DILocation(line: 39, column: 9, scope: !56)
!98 = !DILocation(line: 39, column: 20, scope: !96)
!99 = !DILocation(line: 41, column: 24, scope: !56)
!100 = !DILocation(line: 41, column: 34, scope: !56)
!101 = !DILocation(line: 41, column: 47, scope: !56)
!102 = !DILocation(line: 41, column: 5, scope: !56)
!103 = !DILocation(line: 42, column: 5, scope: !56)
!104 = !DILocation(line: 42, column: 14, scope: !56)
!105 = !DILocation(line: 42, column: 28, scope: !56)
!106 = !DILocation(line: 44, column: 25, scope: !56)
!107 = !DILocation(line: 44, column: 12, scope: !56)
!108 = !DILocation(line: 44, column: 10, scope: !56)
!109 = !DILocation(line: 45, column: 10, scope: !110)
!110 = distinct !DILexicalBlock(scope: !56, file: !1, line: 45, column: 9)
!111 = !DILocation(line: 45, column: 9, scope: !56)
!112 = !DILocation(line: 46, column: 14, scope: !113)
!113 = distinct !DILexicalBlock(scope: !110, file: !1, line: 45, column: 16)
!114 = !DILocation(line: 46, column: 9, scope: !113)
!115 = !DILocation(line: 47, column: 9, scope: !113)
!116 = !DILocation(line: 50, column: 18, scope: !56)
!117 = !DILocation(line: 50, column: 11, scope: !56)
!118 = !DILocation(line: 50, column: 9, scope: !56)
!119 = !DILocation(line: 52, column: 17, scope: !56)
!120 = !DILocation(line: 52, column: 21, scope: !56)
!121 = !DILocation(line: 52, column: 5, scope: !56)
!122 = !DILocation(line: 53, column: 9, scope: !56)
!123 = !DILocation(line: 55, column: 5, scope: !56)
!124 = !DILocation(line: 57, column: 5, scope: !56)
!125 = !DILocation(line: 57, column: 20, scope: !56)
!126 = !DILocation(line: 57, column: 26, scope: !56)
!127 = !DILocation(line: 58, column: 12, scope: !56)
!128 = !DILocation(line: 58, column: 5, scope: !56)
!129 = !DILocation(line: 58, column: 17, scope: !56)
!130 = !DILocation(line: 60, column: 5, scope: !56)
!131 = !DILocation(line: 62, column: 18, scope: !132)
!132 = distinct !DILexicalBlock(scope: !56, file: !1, line: 62, column: 9)
!133 = !DILocation(line: 62, column: 49, scope: !132)
!134 = !DILocation(line: 62, column: 57, scope: !132)
!135 = !DILocation(line: 62, column: 9, scope: !132)
!136 = !DILocation(line: 62, column: 65, scope: !132)
!137 = !DILocation(line: 62, column: 9, scope: !56)
!138 = !DILocation(line: 63, column: 9, scope: !132)
!139 = !DILocation(line: 63, column: 18, scope: !132)
!140 = !DILocation(line: 64, column: 21, scope: !56)
!141 = !DILocation(line: 64, column: 14, scope: !56)
!142 = !DILocation(line: 64, column: 12, scope: !56)
!143 = !DILocation(line: 66, column: 10, scope: !56)
!144 = !DILocation(line: 66, column: 5, scope: !56)
!145 = !DILocation(line: 67, column: 10, scope: !56)
!146 = !DILocation(line: 67, column: 5, scope: !56)
!147 = !DILocation(line: 68, column: 10, scope: !56)
!148 = !DILocation(line: 68, column: 5, scope: !56)
!149 = !DILocation(line: 70, column: 5, scope: !56)
!150 = !DILocation(line: 71, column: 1, scope: !56)
!151 = distinct !DISubprogram(name: "memcpy", scope: !152, file: !152, line: 12, type: !153, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !19)
!152 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!153 = !DISubroutineType(types: !154)
!154 = !{!155, !155, !156, !25}
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!158 = !DILocalVariable(name: "destaddr", arg: 1, scope: !151, file: !152, line: 12, type: !155)
!159 = !DILocation(line: 12, column: 20, scope: !151)
!160 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !151, file: !152, line: 12, type: !156)
!161 = !DILocation(line: 12, column: 42, scope: !151)
!162 = !DILocalVariable(name: "len", arg: 3, scope: !151, file: !152, line: 12, type: !25)
!163 = !DILocation(line: 12, column: 58, scope: !151)
!164 = !DILocalVariable(name: "dest", scope: !151, file: !152, line: 13, type: !15)
!165 = !DILocation(line: 13, column: 9, scope: !151)
!166 = !DILocation(line: 13, column: 16, scope: !151)
!167 = !DILocalVariable(name: "src", scope: !151, file: !152, line: 14, type: !17)
!168 = !DILocation(line: 14, column: 15, scope: !151)
!169 = !DILocation(line: 14, column: 21, scope: !151)
!170 = !DILocation(line: 16, column: 3, scope: !151)
!171 = !DILocation(line: 16, column: 13, scope: !151)
!172 = !DILocation(line: 16, column: 16, scope: !151)
!173 = !DILocation(line: 17, column: 19, scope: !151)
!174 = !DILocation(line: 17, column: 15, scope: !151)
!175 = !DILocation(line: 17, column: 10, scope: !151)
!176 = !DILocation(line: 17, column: 13, scope: !151)
!177 = distinct !{!177, !170, !173, !178}
!178 = !{!"llvm.loop.mustprogress"}
!179 = !DILocation(line: 18, column: 10, scope: !151)
!180 = !DILocation(line: 18, column: 3, scope: !151)

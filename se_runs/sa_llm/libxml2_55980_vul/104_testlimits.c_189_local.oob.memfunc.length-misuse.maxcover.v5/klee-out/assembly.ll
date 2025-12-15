; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/104_testlimits.c_189_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/104_testlimits.c_189_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"(len <= 100) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_55980_vul/104_testlimits.c_189_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.testlimits = private unnamed_addr constant [56 x i8] c"int testlimits(int, char *, int, int, int, char *, int)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"instate\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"rlen\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"maxlen\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlFuzzDataConsistencyCheck() #0 !dbg !14 {
  ret i32 0, !dbg !19
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @testlimits(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i8* noundef %5, i32 noundef %6) #0 !dbg !20 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !25, metadata !DIExpression()), !dbg !26
  store i8* %1, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !27, metadata !DIExpression()), !dbg !28
  store i32 %2, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !29, metadata !DIExpression()), !dbg !30
  store i32 %3, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !31, metadata !DIExpression()), !dbg !32
  store i32 %4, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !33, metadata !DIExpression()), !dbg !34
  store i8* %5, i8** %14, align 8
  call void @llvm.dbg.declare(metadata i8** %14, metadata !35, metadata !DIExpression()), !dbg !36
  store i32 %6, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !37, metadata !DIExpression()), !dbg !38
  %16 = load i32, i32* %9, align 4, !dbg !39
  %17 = icmp eq i32 %16, 0, !dbg !41
  br i1 %17, label %24, label %18, !dbg !42

18:                                               ; preds = %7
  %19 = load i8*, i8** %10, align 8, !dbg !43
  %20 = icmp eq i8* %19, null, !dbg !44
  br i1 %20, label %24, label %21, !dbg !45

21:                                               ; preds = %18
  %22 = load i32, i32* %11, align 4, !dbg !46
  %23 = icmp slt i32 %22, 0, !dbg !47
  br i1 %23, label %24, label %25, !dbg !48

24:                                               ; preds = %21, %18, %7
  store i32 -1, i32* %8, align 4, !dbg !49
  br label %62, !dbg !49

25:                                               ; preds = %21
  %26 = load i32, i32* %12, align 4, !dbg !50
  %27 = icmp eq i32 %26, 0, !dbg !52
  br i1 %27, label %28, label %61, !dbg !53

28:                                               ; preds = %25
  %29 = load i32, i32* %11, align 4, !dbg !54
  %30 = load i32, i32* %13, align 4, !dbg !57
  %31 = icmp sge i32 %29, %30, !dbg !58
  br i1 %31, label %32, label %47, !dbg !59

32:                                               ; preds = %28
  %33 = load i32, i32* %13, align 4, !dbg !60
  store i32 %33, i32* %11, align 4, !dbg !62
  store i32 0, i32* %13, align 4, !dbg !63
  %34 = load i8*, i8** %10, align 8, !dbg !64
  %35 = load i8*, i8** %14, align 8, !dbg !65
  %36 = load i32, i32* %11, align 4, !dbg !66
  %37 = sext i32 %36 to i64, !dbg !66
  %38 = call i8* @memcpy(i8* %34, i8* %35, i64 %37), !dbg !67
  %39 = load i32, i32* %11, align 4, !dbg !68
  %40 = icmp sle i32 %39, 100, !dbg !68
  br i1 %40, label %41, label %43, !dbg !68

41:                                               ; preds = %32
  br i1 true, label %42, label %43, !dbg !68

42:                                               ; preds = %41
  br label %45, !dbg !68

43:                                               ; preds = %41, %32
  %44 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.2, i64 0, i64 0), i32 noundef 31, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.testlimits, i64 0, i64 0)), !dbg !68
  br label %45, !dbg !68

45:                                               ; preds = %43, %42
  %46 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.2, i64 0, i64 0), i32 noundef 33, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.testlimits, i64 0, i64 0)), !dbg !69
  store i32 1, i32* %12, align 4, !dbg !70
  br label %60, !dbg !71

47:                                               ; preds = %28
  %48 = load i8*, i8** %10, align 8, !dbg !72
  %49 = load i8*, i8** %14, align 8, !dbg !74
  %50 = load i32, i32* %11, align 4, !dbg !75
  %51 = sext i32 %50 to i64, !dbg !75
  %52 = call i8* @memcpy(i8* %48, i8* %49, i64 %51), !dbg !76
  %53 = load i32, i32* %11, align 4, !dbg !77
  %54 = load i32, i32* %13, align 4, !dbg !78
  %55 = sub nsw i32 %54, %53, !dbg !78
  store i32 %55, i32* %13, align 4, !dbg !78
  %56 = load i32, i32* %11, align 4, !dbg !79
  %57 = load i8*, i8** %14, align 8, !dbg !80
  %58 = sext i32 %56 to i64, !dbg !80
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !80
  store i8* %59, i8** %14, align 8, !dbg !80
  br label %60

60:                                               ; preds = %47, %45
  br label %61, !dbg !81

61:                                               ; preds = %60, %25
  store i32 0, i32* %8, align 4, !dbg !82
  br label %62, !dbg !82

62:                                               ; preds = %61, %24
  %63 = load i32, i32* %8, align 4, !dbg !83
  ret i32 %63, !dbg !83
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !84 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !85, metadata !DIExpression()), !dbg !86
  call void @llvm.dbg.declare(metadata i32* %3, metadata !87, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.declare(metadata i32* %4, metadata !89, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.declare(metadata i32* %5, metadata !91, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.declare(metadata i32* %6, metadata !93, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.declare(metadata i8** %7, metadata !95, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.declare(metadata i8** %8, metadata !97, metadata !DIExpression()), !dbg !98
  %9 = call noalias i8* @malloc(i64 noundef 100) #7, !dbg !99
  store i8* %9, i8** %7, align 8, !dbg !100
  %10 = call noalias i8* @malloc(i64 noundef 200) #7, !dbg !101
  store i8* %10, i8** %8, align 8, !dbg !102
  %11 = bitcast i32* %2 to i8*, !dbg !103
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)), !dbg !104
  %12 = bitcast i32* %3 to i8*, !dbg !105
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)), !dbg !106
  %13 = bitcast i32* %4 to i8*, !dbg !107
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)), !dbg !108
  %14 = bitcast i32* %5 to i8*, !dbg !109
  call void @klee_make_symbolic(i8* noundef %14, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)), !dbg !110
  %15 = bitcast i32* %6 to i8*, !dbg !111
  call void @klee_make_symbolic(i8* noundef %15, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)), !dbg !112
  %16 = load i32, i32* %2, align 4, !dbg !113
  %17 = icmp ne i32 %16, 0, !dbg !114
  %18 = zext i1 %17 to i32, !dbg !114
  %19 = sext i32 %18 to i64, !dbg !113
  call void @klee_assume(i64 noundef %19), !dbg !115
  %20 = load i32, i32* %3, align 4, !dbg !116
  %21 = icmp sge i32 %20, 0, !dbg !117
  %22 = zext i1 %21 to i32, !dbg !117
  %23 = sext i32 %22 to i64, !dbg !116
  call void @klee_assume(i64 noundef %23), !dbg !118
  %24 = load i32, i32* %4, align 4, !dbg !119
  %25 = icmp eq i32 %24, 0, !dbg !120
  %26 = zext i1 %25 to i32, !dbg !120
  %27 = sext i32 %26 to i64, !dbg !119
  call void @klee_assume(i64 noundef %27), !dbg !121
  %28 = load i32, i32* %3, align 4, !dbg !122
  %29 = load i32, i32* %5, align 4, !dbg !123
  %30 = icmp sge i32 %28, %29, !dbg !124
  %31 = zext i1 %30 to i32, !dbg !124
  %32 = sext i32 %31 to i64, !dbg !122
  call void @klee_assume(i64 noundef %32), !dbg !125
  %33 = load i32, i32* %5, align 4, !dbg !126
  %34 = icmp sge i32 %33, 0, !dbg !127
  %35 = zext i1 %34 to i32, !dbg !127
  %36 = sext i32 %35 to i64, !dbg !126
  call void @klee_assume(i64 noundef %36), !dbg !128
  %37 = load i32, i32* %5, align 4, !dbg !129
  %38 = icmp sle i32 %37, 200, !dbg !130
  %39 = zext i1 %38 to i32, !dbg !130
  %40 = sext i32 %39 to i64, !dbg !129
  call void @klee_assume(i64 noundef %40), !dbg !131
  %41 = load i32, i32* %2, align 4, !dbg !132
  %42 = load i8*, i8** %7, align 8, !dbg !133
  %43 = load i32, i32* %3, align 4, !dbg !134
  %44 = load i32, i32* %4, align 4, !dbg !135
  %45 = load i32, i32* %5, align 4, !dbg !136
  %46 = load i8*, i8** %8, align 8, !dbg !137
  %47 = load i32, i32* %6, align 4, !dbg !138
  %48 = call i32 @testlimits(i32 noundef %41, i8* noundef %42, i32 noundef %43, i32 noundef %44, i32 noundef %45, i8* noundef %46, i32 noundef %47), !dbg !139
  %49 = load i8*, i8** %7, align 8, !dbg !140
  call void @free(i8* noundef %49) #7, !dbg !141
  %50 = load i8*, i8** %8, align 8, !dbg !142
  call void @free(i8* noundef %50) #7, !dbg !143
  ret i32 0, !dbg !144
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !145 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !154, metadata !DIExpression()), !dbg !155
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !156, metadata !DIExpression()), !dbg !157
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !158, metadata !DIExpression()), !dbg !159
  call void @llvm.dbg.declare(metadata i8** %7, metadata !160, metadata !DIExpression()), !dbg !161
  %9 = load i8*, i8** %4, align 8, !dbg !162
  store i8* %9, i8** %7, align 8, !dbg !161
  call void @llvm.dbg.declare(metadata i8** %8, metadata !163, metadata !DIExpression()), !dbg !166
  %10 = load i8*, i8** %5, align 8, !dbg !167
  store i8* %10, i8** %8, align 8, !dbg !166
  br label %11, !dbg !168

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !169
  %13 = add i64 %12, -1, !dbg !169
  store i64 %13, i64* %6, align 8, !dbg !169
  %14 = icmp ugt i64 %12, 0, !dbg !170
  br i1 %14, label %15, label %21, !dbg !168

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !171
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !171
  store i8* %17, i8** %8, align 8, !dbg !171
  %18 = load i8, i8* %16, align 1, !dbg !172
  %19 = load i8*, i8** %7, align 8, !dbg !173
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !173
  store i8* %20, i8** %7, align 8, !dbg !173
  store i8 %18, i8* %19, align 1, !dbg !174
  br label %11, !dbg !168, !llvm.loop !175

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !177
  ret i8* %22, !dbg !178
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13, !13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/104_testlimits.c_189_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "1b2aa62391564cf35184161aaf896a61")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = distinct !DICompileUnit(language: DW_LANG_C99, file: !5, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!5 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 7, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"Ubuntu clang version 14.0.6"}
!14 = distinct !DISubprogram(name: "xmlFuzzDataConsistencyCheck", scope: !1, file: !1, line: 15, type: !15, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!15 = !DISubroutineType(types: !16)
!16 = !{!17}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !{}
!19 = !DILocation(line: 16, column: 5, scope: !14)
!20 = distinct !DISubprogram(name: "testlimits", scope: !1, file: !1, line: 20, type: !21, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!21 = !DISubroutineType(types: !22)
!22 = !{!17, !17, !23, !17, !17, !17, !23, !17}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!25 = !DILocalVariable(name: "context", arg: 1, scope: !20, file: !1, line: 20, type: !17)
!26 = !DILocation(line: 20, column: 20, scope: !20)
!27 = !DILocalVariable(name: "buffer", arg: 2, scope: !20, file: !1, line: 20, type: !23)
!28 = !DILocation(line: 20, column: 35, scope: !20)
!29 = !DILocalVariable(name: "len", arg: 3, scope: !20, file: !1, line: 20, type: !17)
!30 = !DILocation(line: 20, column: 47, scope: !20)
!31 = !DILocalVariable(name: "instate", arg: 4, scope: !20, file: !1, line: 20, type: !17)
!32 = !DILocation(line: 20, column: 56, scope: !20)
!33 = !DILocalVariable(name: "rlen", arg: 5, scope: !20, file: !1, line: 20, type: !17)
!34 = !DILocation(line: 20, column: 69, scope: !20)
!35 = !DILocalVariable(name: "current", arg: 6, scope: !20, file: !1, line: 20, type: !23)
!36 = !DILocation(line: 20, column: 81, scope: !20)
!37 = !DILocalVariable(name: "maxlen", arg: 7, scope: !20, file: !1, line: 20, type: !17)
!38 = !DILocation(line: 20, column: 94, scope: !20)
!39 = !DILocation(line: 21, column: 10, scope: !40)
!40 = distinct !DILexicalBlock(scope: !20, file: !1, line: 21, column: 9)
!41 = !DILocation(line: 21, column: 18, scope: !40)
!42 = !DILocation(line: 21, column: 24, scope: !40)
!43 = !DILocation(line: 21, column: 28, scope: !40)
!44 = !DILocation(line: 21, column: 35, scope: !40)
!45 = !DILocation(line: 21, column: 44, scope: !40)
!46 = !DILocation(line: 21, column: 48, scope: !40)
!47 = !DILocation(line: 21, column: 52, scope: !40)
!48 = !DILocation(line: 21, column: 9, scope: !20)
!49 = !DILocation(line: 22, column: 9, scope: !40)
!50 = !DILocation(line: 24, column: 9, scope: !51)
!51 = distinct !DILexicalBlock(scope: !20, file: !1, line: 24, column: 9)
!52 = !DILocation(line: 24, column: 17, scope: !51)
!53 = !DILocation(line: 24, column: 9, scope: !20)
!54 = !DILocation(line: 25, column: 13, scope: !55)
!55 = distinct !DILexicalBlock(scope: !56, file: !1, line: 25, column: 13)
!56 = distinct !DILexicalBlock(scope: !51, file: !1, line: 24, column: 23)
!57 = !DILocation(line: 25, column: 20, scope: !55)
!58 = !DILocation(line: 25, column: 17, scope: !55)
!59 = !DILocation(line: 25, column: 13, scope: !56)
!60 = !DILocation(line: 26, column: 19, scope: !61)
!61 = distinct !DILexicalBlock(scope: !55, file: !1, line: 25, column: 26)
!62 = !DILocation(line: 26, column: 17, scope: !61)
!63 = !DILocation(line: 27, column: 18, scope: !61)
!64 = !DILocation(line: 29, column: 20, scope: !61)
!65 = !DILocation(line: 29, column: 28, scope: !61)
!66 = !DILocation(line: 29, column: 37, scope: !61)
!67 = !DILocation(line: 29, column: 13, scope: !61)
!68 = !DILocation(line: 31, column: 13, scope: !61)
!69 = !DILocation(line: 33, column: 13, scope: !61)
!70 = !DILocation(line: 34, column: 21, scope: !61)
!71 = !DILocation(line: 36, column: 9, scope: !61)
!72 = !DILocation(line: 37, column: 20, scope: !73)
!73 = distinct !DILexicalBlock(scope: !55, file: !1, line: 36, column: 16)
!74 = !DILocation(line: 37, column: 28, scope: !73)
!75 = !DILocation(line: 37, column: 37, scope: !73)
!76 = !DILocation(line: 37, column: 13, scope: !73)
!77 = !DILocation(line: 38, column: 21, scope: !73)
!78 = !DILocation(line: 38, column: 18, scope: !73)
!79 = !DILocation(line: 39, column: 24, scope: !73)
!80 = !DILocation(line: 39, column: 21, scope: !73)
!81 = !DILocation(line: 41, column: 5, scope: !56)
!82 = !DILocation(line: 42, column: 5, scope: !20)
!83 = !DILocation(line: 43, column: 1, scope: !20)
!84 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 45, type: !15, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!85 = !DILocalVariable(name: "context", scope: !84, file: !1, line: 47, type: !17)
!86 = !DILocation(line: 47, column: 9, scope: !84)
!87 = !DILocalVariable(name: "len", scope: !84, file: !1, line: 47, type: !17)
!88 = !DILocation(line: 47, column: 18, scope: !84)
!89 = !DILocalVariable(name: "instate", scope: !84, file: !1, line: 47, type: !17)
!90 = !DILocation(line: 47, column: 23, scope: !84)
!91 = !DILocalVariable(name: "rlen", scope: !84, file: !1, line: 47, type: !17)
!92 = !DILocation(line: 47, column: 32, scope: !84)
!93 = !DILocalVariable(name: "maxlen", scope: !84, file: !1, line: 47, type: !17)
!94 = !DILocation(line: 47, column: 38, scope: !84)
!95 = !DILocalVariable(name: "buffer", scope: !84, file: !1, line: 48, type: !23)
!96 = !DILocation(line: 48, column: 11, scope: !84)
!97 = !DILocalVariable(name: "current", scope: !84, file: !1, line: 49, type: !23)
!98 = !DILocation(line: 49, column: 11, scope: !84)
!99 = !DILocation(line: 52, column: 14, scope: !84)
!100 = !DILocation(line: 52, column: 12, scope: !84)
!101 = !DILocation(line: 53, column: 15, scope: !84)
!102 = !DILocation(line: 53, column: 13, scope: !84)
!103 = !DILocation(line: 56, column: 24, scope: !84)
!104 = !DILocation(line: 56, column: 5, scope: !84)
!105 = !DILocation(line: 57, column: 24, scope: !84)
!106 = !DILocation(line: 57, column: 5, scope: !84)
!107 = !DILocation(line: 58, column: 24, scope: !84)
!108 = !DILocation(line: 58, column: 5, scope: !84)
!109 = !DILocation(line: 59, column: 24, scope: !84)
!110 = !DILocation(line: 59, column: 5, scope: !84)
!111 = !DILocation(line: 60, column: 24, scope: !84)
!112 = !DILocation(line: 60, column: 5, scope: !84)
!113 = !DILocation(line: 63, column: 17, scope: !84)
!114 = !DILocation(line: 63, column: 25, scope: !84)
!115 = !DILocation(line: 63, column: 5, scope: !84)
!116 = !DILocation(line: 64, column: 17, scope: !84)
!117 = !DILocation(line: 64, column: 21, scope: !84)
!118 = !DILocation(line: 64, column: 5, scope: !84)
!119 = !DILocation(line: 65, column: 17, scope: !84)
!120 = !DILocation(line: 65, column: 25, scope: !84)
!121 = !DILocation(line: 65, column: 5, scope: !84)
!122 = !DILocation(line: 66, column: 17, scope: !84)
!123 = !DILocation(line: 66, column: 24, scope: !84)
!124 = !DILocation(line: 66, column: 21, scope: !84)
!125 = !DILocation(line: 66, column: 5, scope: !84)
!126 = !DILocation(line: 67, column: 17, scope: !84)
!127 = !DILocation(line: 67, column: 22, scope: !84)
!128 = !DILocation(line: 67, column: 5, scope: !84)
!129 = !DILocation(line: 68, column: 17, scope: !84)
!130 = !DILocation(line: 68, column: 22, scope: !84)
!131 = !DILocation(line: 68, column: 5, scope: !84)
!132 = !DILocation(line: 71, column: 16, scope: !84)
!133 = !DILocation(line: 71, column: 25, scope: !84)
!134 = !DILocation(line: 71, column: 33, scope: !84)
!135 = !DILocation(line: 71, column: 38, scope: !84)
!136 = !DILocation(line: 71, column: 47, scope: !84)
!137 = !DILocation(line: 71, column: 53, scope: !84)
!138 = !DILocation(line: 71, column: 62, scope: !84)
!139 = !DILocation(line: 71, column: 5, scope: !84)
!140 = !DILocation(line: 74, column: 10, scope: !84)
!141 = !DILocation(line: 74, column: 5, scope: !84)
!142 = !DILocation(line: 75, column: 10, scope: !84)
!143 = !DILocation(line: 75, column: 5, scope: !84)
!144 = !DILocation(line: 77, column: 5, scope: !84)
!145 = distinct !DISubprogram(name: "memcpy", scope: !146, file: !146, line: 12, type: !147, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !18)
!146 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!147 = !DISubroutineType(types: !148)
!148 = !{!3, !3, !149, !151}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !152, line: 46, baseType: !153)
!152 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!153 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!154 = !DILocalVariable(name: "destaddr", arg: 1, scope: !145, file: !146, line: 12, type: !3)
!155 = !DILocation(line: 12, column: 20, scope: !145)
!156 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !145, file: !146, line: 12, type: !149)
!157 = !DILocation(line: 12, column: 42, scope: !145)
!158 = !DILocalVariable(name: "len", arg: 3, scope: !145, file: !146, line: 12, type: !151)
!159 = !DILocation(line: 12, column: 58, scope: !145)
!160 = !DILocalVariable(name: "dest", scope: !145, file: !146, line: 13, type: !23)
!161 = !DILocation(line: 13, column: 9, scope: !145)
!162 = !DILocation(line: 13, column: 16, scope: !145)
!163 = !DILocalVariable(name: "src", scope: !145, file: !146, line: 14, type: !164)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!166 = !DILocation(line: 14, column: 15, scope: !145)
!167 = !DILocation(line: 14, column: 21, scope: !145)
!168 = !DILocation(line: 16, column: 3, scope: !145)
!169 = !DILocation(line: 16, column: 13, scope: !145)
!170 = !DILocation(line: 16, column: 16, scope: !145)
!171 = !DILocation(line: 17, column: 19, scope: !145)
!172 = !DILocation(line: 17, column: 15, scope: !145)
!173 = !DILocation(line: 17, column: 10, scope: !145)
!174 = !DILocation(line: 17, column: 13, scope: !145)
!175 = distinct !{!175, !168, !171, !176}
!176 = !{!"llvm.loop.mustprogress"}
!177 = !DILocation(line: 18, column: 10, scope: !145)
!178 = !DILocation(line: 18, column: 3, scope: !145)

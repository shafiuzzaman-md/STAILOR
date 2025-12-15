; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/109_testlimits.c_212_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/109_testlimits.c_212_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.HugeTest = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"len\00", align 1
@instate = internal global i32 0, align 4, !dbg !0
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"(len <= 4096) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_55980_vul/109_testlimits.c_212_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.testFunction = private unnamed_addr constant [24 x i8] c"void testFunction(void)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@buffer = internal global [4096 x i8] zeroinitializer, align 16, !dbg !22
@filling = internal global [4096 x i8] zeroinitializer, align 16, !dbg !17
@curlen = internal global i64 0, align 8, !dbg !24
@.str.5 = private unnamed_addr constant [8 x i8] c"instate\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"curlen\00", align 1
@maxlen = internal global i64 0, align 8, !dbg !29
@.str.7 = private unnamed_addr constant [7 x i8] c"maxlen\00", align 1
@dotlen = internal global i64 0, align 8, !dbg !31
@.str.8 = private unnamed_addr constant [7 x i8] c"dotlen\00", align 1
@currentTest = internal global i32 0, align 4, !dbg !33
@.str.9 = private unnamed_addr constant [12 x i8] c"currentTest\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@hugeTests = internal global [10 x %struct.HugeTest] zeroinitializer, align 16, !dbg !5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @testFunction() #0 !dbg !46 {
  %1 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %1, metadata !50, metadata !DIExpression()), !dbg !51
  %2 = bitcast i64* %1 to i8*, !dbg !52
  call void @klee_make_symbolic(i8* noundef %2, i64 noundef 8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !53
  %3 = load i32, i32* @instate, align 4, !dbg !54
  %4 = icmp eq i32 %3, 1, !dbg !56
  br i1 %4, label %5, label %23, !dbg !57

5:                                                ; preds = %0
  %6 = load i64, i64* %1, align 8, !dbg !58
  %7 = icmp ugt i64 %6, 4096, !dbg !61
  br i1 %7, label %8, label %9, !dbg !62

8:                                                ; preds = %5
  store i64 4096, i64* %1, align 8, !dbg !63
  br label %9, !dbg !64

9:                                                ; preds = %8, %5
  %10 = load i64, i64* %1, align 8, !dbg !65
  %11 = icmp ule i64 %10, 4096, !dbg !65
  br i1 %11, label %12, label %14, !dbg !65

12:                                               ; preds = %9
  br i1 true, label %13, label %14, !dbg !65

13:                                               ; preds = %12
  br label %16, !dbg !65

14:                                               ; preds = %12, %9
  %15 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.3, i64 0, i64 0), i32 noundef 32, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.testFunction, i64 0, i64 0)), !dbg !65
  br label %16, !dbg !65

16:                                               ; preds = %14, %13
  %17 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.3, i64 0, i64 0), i32 noundef 33, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.testFunction, i64 0, i64 0)), !dbg !66
  %18 = load i64, i64* %1, align 8, !dbg !67
  %19 = call i8* @memcpy(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @buffer, i64 0, i64 0), i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @filling, i64 0, i64 0), i64 %18), !dbg !68
  %20 = load i64, i64* %1, align 8, !dbg !69
  %21 = load i64, i64* @curlen, align 8, !dbg !70
  %22 = add i64 %21, %20, !dbg !70
  store i64 %22, i64* @curlen, align 8, !dbg !70
  br label %23, !dbg !71

23:                                               ; preds = %16, %0
  ret void, !dbg !72
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !73 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @klee_make_symbolic(i8* noundef bitcast (i32* @instate to i8*), i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)), !dbg !76
  call void @klee_make_symbolic(i8* noundef bitcast (i64* @curlen to i8*), i64 noundef 8, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)), !dbg !77
  call void @klee_make_symbolic(i8* noundef bitcast (i64* @maxlen to i8*), i64 noundef 8, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)), !dbg !78
  call void @klee_make_symbolic(i8* noundef bitcast (i64* @dotlen to i8*), i64 noundef 8, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)), !dbg !79
  call void @klee_make_symbolic(i8* noundef bitcast (i32* @currentTest to i8*), i64 noundef 4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0)), !dbg !80
  %3 = load i32, i32* @instate, align 4, !dbg !81
  %4 = icmp eq i32 %3, 1, !dbg !82
  %5 = zext i1 %4 to i32, !dbg !82
  %6 = sext i32 %5 to i64, !dbg !81
  call void @klee_assume(i64 noundef %6), !dbg !83
  %7 = load i32, i32* @currentTest, align 4, !dbg !84
  %8 = icmp sge i32 %7, 0, !dbg !85
  br i1 %8, label %9, label %12, !dbg !86

9:                                                ; preds = %0
  %10 = load i32, i32* @currentTest, align 4, !dbg !87
  %11 = icmp slt i32 %10, 10, !dbg !88
  br label %12

12:                                               ; preds = %9, %0
  %13 = phi i1 [ false, %0 ], [ %11, %9 ], !dbg !89
  %14 = zext i1 %13 to i32, !dbg !86
  %15 = sext i32 %14 to i64, !dbg !84
  call void @klee_assume(i64 noundef %15), !dbg !90
  call void @llvm.dbg.declare(metadata i32* %2, metadata !91, metadata !DIExpression()), !dbg !93
  store i32 0, i32* %2, align 4, !dbg !93
  br label %16, !dbg !94

16:                                               ; preds = %24, %12
  %17 = load i32, i32* %2, align 4, !dbg !95
  %18 = icmp slt i32 %17, 10, !dbg !97
  br i1 %18, label %19, label %27, !dbg !98

19:                                               ; preds = %16
  %20 = load i32, i32* %2, align 4, !dbg !99
  %21 = sext i32 %20 to i64, !dbg !101
  %22 = getelementptr inbounds [10 x %struct.HugeTest], [10 x %struct.HugeTest]* @hugeTests, i64 0, i64 %21, !dbg !101
  %23 = getelementptr inbounds %struct.HugeTest, %struct.HugeTest* %22, i32 0, i32 0, !dbg !102
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i8** %23, align 8, !dbg !103
  br label %24, !dbg !104

24:                                               ; preds = %19
  %25 = load i32, i32* %2, align 4, !dbg !105
  %26 = add nsw i32 %25, 1, !dbg !105
  store i32 %26, i32* %2, align 4, !dbg !105
  br label %16, !dbg !106, !llvm.loop !107

27:                                               ; preds = %16
  call void @testFunction(), !dbg !110
  ret i32 0, !dbg !111
}

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #5 !dbg !112 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !119, metadata !DIExpression()), !dbg !120
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !121, metadata !DIExpression()), !dbg !122
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !123, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.declare(metadata i8** %7, metadata !125, metadata !DIExpression()), !dbg !127
  %9 = load i8*, i8** %4, align 8, !dbg !128
  store i8* %9, i8** %7, align 8, !dbg !127
  call void @llvm.dbg.declare(metadata i8** %8, metadata !129, metadata !DIExpression()), !dbg !130
  %10 = load i8*, i8** %5, align 8, !dbg !131
  store i8* %10, i8** %8, align 8, !dbg !130
  br label %11, !dbg !132

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !133
  %13 = add i64 %12, -1, !dbg !133
  store i64 %13, i64* %6, align 8, !dbg !133
  %14 = icmp ugt i64 %12, 0, !dbg !134
  br i1 %14, label %15, label %21, !dbg !132

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !135
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !135
  store i8* %17, i8** %8, align 8, !dbg !135
  %18 = load i8, i8* %16, align 1, !dbg !136
  %19 = load i8*, i8** %7, align 8, !dbg !137
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !137
  store i8* %20, i8** %7, align 8, !dbg !137
  store i8 %18, i8* %19, align 1, !dbg !138
  br label %11, !dbg !132, !llvm.loop !139

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !140
  ret i8* %22, !dbg !141
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!2, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45, !45}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "instate", scope: !2, file: !3, line: 19, type: !35, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/109_testlimits.c_212_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "a5b6b939e334a5e2c50af2b381eeae68")
!4 = !{!5, !17, !22, !0, !24, !29, !31, !33}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "hugeTests", scope: !2, file: !3, line: 16, type: !7, isLocal: true, isDefinition: true)
!7 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 640, elements: !15)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "HugeTest", file: !3, line: 14, baseType: !9)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 12, size: 64, elements: !10)
!10 = !{!11}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !9, file: !3, line: 13, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !{!16}
!16 = !DISubrange(count: 10)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "filling", scope: !2, file: !3, line: 17, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 32768, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 4096)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "buffer", scope: !2, file: !3, line: 23, type: !19, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "curlen", scope: !2, file: !3, line: 20, type: !26, isLocal: true, isDefinition: true)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !27, line: 46, baseType: !28)
!27 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!28 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "maxlen", scope: !2, file: !3, line: 21, type: !26, isLocal: true, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "dotlen", scope: !2, file: !3, line: 22, type: !26, isLocal: true, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "currentTest", scope: !2, file: !3, line: 18, type: !35, isLocal: true, isDefinition: true)
!35 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!36 = distinct !DICompileUnit(language: DW_LANG_C99, file: !37, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!37 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!38 = !{i32 7, !"Dwarf Version", i32 5}
!39 = !{i32 2, !"Debug Info Version", i32 3}
!40 = !{i32 1, !"wchar_size", i32 4}
!41 = !{i32 7, !"PIC Level", i32 2}
!42 = !{i32 7, !"PIE Level", i32 2}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"Ubuntu clang version 14.0.6"}
!46 = distinct !DISubprogram(name: "testFunction", scope: !3, file: !3, line: 25, type: !47, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !49)
!47 = !DISubroutineType(types: !48)
!48 = !{null}
!49 = !{}
!50 = !DILocalVariable(name: "len", scope: !46, file: !3, line: 26, type: !26)
!51 = !DILocation(line: 26, column: 12, scope: !46)
!52 = !DILocation(line: 27, column: 24, scope: !46)
!53 = !DILocation(line: 27, column: 5, scope: !46)
!54 = !DILocation(line: 29, column: 9, scope: !55)
!55 = distinct !DILexicalBlock(scope: !46, file: !3, line: 29, column: 9)
!56 = !DILocation(line: 29, column: 17, scope: !55)
!57 = !DILocation(line: 29, column: 9, scope: !46)
!58 = !DILocation(line: 30, column: 13, scope: !59)
!59 = distinct !DILexicalBlock(scope: !60, file: !3, line: 30, column: 13)
!60 = distinct !DILexicalBlock(scope: !55, file: !3, line: 29, column: 23)
!61 = !DILocation(line: 30, column: 17, scope: !59)
!62 = !DILocation(line: 30, column: 13, scope: !60)
!63 = !DILocation(line: 30, column: 30, scope: !59)
!64 = !DILocation(line: 30, column: 26, scope: !59)
!65 = !DILocation(line: 32, column: 9, scope: !60)
!66 = !DILocation(line: 33, column: 9, scope: !60)
!67 = !DILocation(line: 35, column: 37, scope: !60)
!68 = !DILocation(line: 35, column: 9, scope: !60)
!69 = !DILocation(line: 36, column: 19, scope: !60)
!70 = !DILocation(line: 36, column: 16, scope: !60)
!71 = !DILocation(line: 37, column: 5, scope: !60)
!72 = !DILocation(line: 38, column: 1, scope: !46)
!73 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 40, type: !74, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !49)
!74 = !DISubroutineType(types: !75)
!75 = !{!35}
!76 = !DILocation(line: 41, column: 5, scope: !73)
!77 = !DILocation(line: 42, column: 5, scope: !73)
!78 = !DILocation(line: 43, column: 5, scope: !73)
!79 = !DILocation(line: 44, column: 5, scope: !73)
!80 = !DILocation(line: 45, column: 5, scope: !73)
!81 = !DILocation(line: 47, column: 17, scope: !73)
!82 = !DILocation(line: 47, column: 25, scope: !73)
!83 = !DILocation(line: 47, column: 5, scope: !73)
!84 = !DILocation(line: 48, column: 17, scope: !73)
!85 = !DILocation(line: 48, column: 29, scope: !73)
!86 = !DILocation(line: 48, column: 34, scope: !73)
!87 = !DILocation(line: 48, column: 37, scope: !73)
!88 = !DILocation(line: 48, column: 49, scope: !73)
!89 = !DILocation(line: 0, scope: !73)
!90 = !DILocation(line: 48, column: 5, scope: !73)
!91 = !DILocalVariable(name: "i", scope: !92, file: !3, line: 50, type: !35)
!92 = distinct !DILexicalBlock(scope: !73, file: !3, line: 50, column: 5)
!93 = !DILocation(line: 50, column: 14, scope: !92)
!94 = !DILocation(line: 50, column: 10, scope: !92)
!95 = !DILocation(line: 50, column: 21, scope: !96)
!96 = distinct !DILexicalBlock(scope: !92, file: !3, line: 50, column: 5)
!97 = !DILocation(line: 50, column: 23, scope: !96)
!98 = !DILocation(line: 50, column: 5, scope: !92)
!99 = !DILocation(line: 51, column: 19, scope: !100)
!100 = distinct !DILexicalBlock(scope: !96, file: !3, line: 50, column: 34)
!101 = !DILocation(line: 51, column: 9, scope: !100)
!102 = !DILocation(line: 51, column: 22, scope: !100)
!103 = !DILocation(line: 51, column: 26, scope: !100)
!104 = !DILocation(line: 52, column: 5, scope: !100)
!105 = !DILocation(line: 50, column: 30, scope: !96)
!106 = !DILocation(line: 50, column: 5, scope: !96)
!107 = distinct !{!107, !98, !108, !109}
!108 = !DILocation(line: 52, column: 5, scope: !92)
!109 = !{!"llvm.loop.mustprogress"}
!110 = !DILocation(line: 54, column: 5, scope: !73)
!111 = !DILocation(line: 56, column: 5, scope: !73)
!112 = distinct !DISubprogram(name: "memcpy", scope: !113, file: !113, line: 12, type: !114, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !36, retainedNodes: !49)
!113 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!114 = !DISubroutineType(types: !115)
!115 = !{!116, !116, !117, !26}
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!119 = !DILocalVariable(name: "destaddr", arg: 1, scope: !112, file: !113, line: 12, type: !116)
!120 = !DILocation(line: 12, column: 20, scope: !112)
!121 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !112, file: !113, line: 12, type: !117)
!122 = !DILocation(line: 12, column: 42, scope: !112)
!123 = !DILocalVariable(name: "len", arg: 3, scope: !112, file: !113, line: 12, type: !26)
!124 = !DILocation(line: 12, column: 58, scope: !112)
!125 = !DILocalVariable(name: "dest", scope: !112, file: !113, line: 13, type: !126)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!127 = !DILocation(line: 13, column: 9, scope: !112)
!128 = !DILocation(line: 13, column: 16, scope: !112)
!129 = !DILocalVariable(name: "src", scope: !112, file: !113, line: 14, type: !12)
!130 = !DILocation(line: 14, column: 15, scope: !112)
!131 = !DILocation(line: 14, column: 21, scope: !112)
!132 = !DILocation(line: 16, column: 3, scope: !112)
!133 = !DILocation(line: 16, column: 13, scope: !112)
!134 = !DILocation(line: 16, column: 16, scope: !112)
!135 = !DILocation(line: 17, column: 19, scope: !112)
!136 = !DILocation(line: 17, column: 15, scope: !112)
!137 = !DILocation(line: 17, column: 10, scope: !112)
!138 = !DILocation(line: 17, column: 13, scope: !112)
!139 = distinct !{!139, !132, !135, !109}
!140 = !DILocation(line: 18, column: 10, scope: !112)
!141 = !DILocation(line: 18, column: 3, scope: !112)

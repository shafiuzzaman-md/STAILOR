; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/081_testdict.c_299_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/081_testdict.c_299_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@xmlDictLookup.dummy = internal global i8 0, align 1, !dbg !0
@xmlDictQLookup.dummy = internal global i8 0, align 1, !dbg !15
@.str = private unnamed_addr constant [15 x i8] c"NB_STRINGS_MIN\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/081_testdict.c_299_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.test_dict = private unnamed_addr constant [21 x i8] c"void test_dict(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlDictCreate() #0 !dbg !31 {
  %1 = call noalias i8* @malloc(i64 noundef 1) #7, !dbg !33
  ret i8* %1, !dbg !34
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlDictFree(i8* noundef %0) #0 !dbg !35 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !38, metadata !DIExpression()), !dbg !39
  %3 = load i8*, i8** %2, align 8, !dbg !40
  call void @free(i8* noundef %3) #7, !dbg !41
  ret void, !dbg !42
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind
declare void @free(i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlDictLookup(i8* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !2 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !43, metadata !DIExpression()), !dbg !44
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !45, metadata !DIExpression()), !dbg !46
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !47, metadata !DIExpression()), !dbg !48
  %7 = load i8*, i8** %4, align 8, !dbg !49
  %8 = load i8*, i8** %5, align 8, !dbg !50
  %9 = load i32, i32* %6, align 4, !dbg !51
  ret i8* @xmlDictLookup.dummy, !dbg !52
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlDictQLookup(i8* noundef %0, i8* noundef %1, i8* noundef %2) #0 !dbg !17 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !53, metadata !DIExpression()), !dbg !54
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !55, metadata !DIExpression()), !dbg !56
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !57, metadata !DIExpression()), !dbg !58
  %7 = load i8*, i8** %4, align 8, !dbg !59
  %8 = load i8*, i8** %5, align 8, !dbg !60
  %9 = load i8*, i8** %6, align 8, !dbg !61
  ret i8* @xmlDictQLookup.dummy, !dbg !62
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlDictOwns(i8* noundef %0, i8* noundef %1) #0 !dbg !63 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !66, metadata !DIExpression()), !dbg !67
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !68, metadata !DIExpression()), !dbg !69
  %5 = load i8*, i8** %3, align 8, !dbg !70
  %6 = load i8*, i8** %4, align 8, !dbg !71
  ret i32 1, !dbg !72
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlDictSize(i8* noundef %0) #0 !dbg !73 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !76, metadata !DIExpression()), !dbg !77
  %3 = load i8*, i8** %2, align 8, !dbg !78
  ret i32 0, !dbg !79
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !80 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !83, metadata !DIExpression()), !dbg !84
  %3 = call i8* @xmlDictCreate(), !dbg !85
  store i8* %3, i8** %2, align 8, !dbg !86
  %4 = load i8*, i8** %2, align 8, !dbg !87
  %5 = icmp eq i8* %4, null, !dbg !89
  br i1 %5, label %6, label %7, !dbg !90

6:                                                ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !91
  br label %9, !dbg !91

7:                                                ; preds = %0
  call void @test_dict(), !dbg !93
  %8 = load i8*, i8** %2, align 8, !dbg !94
  call void @xmlDictFree(i8* noundef %8), !dbg !95
  store i32 0, i32* %1, align 4, !dbg !96
  br label %9, !dbg !96

9:                                                ; preds = %7, %6
  %10 = load i32, i32* %1, align 4, !dbg !97
  ret i32 %10, !dbg !97
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_dict() #0 !dbg !98 {
  %1 = alloca [40 x i8], align 16
  %2 = alloca [40 x i8], align 16
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata [40 x i8]* %1, metadata !101, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata [40 x i8]* %2, metadata !106, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.declare(metadata i8** %3, metadata !108, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.declare(metadata i8** %4, metadata !111, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.declare(metadata i8** %5, metadata !113, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.declare(metadata i32* %6, metadata !115, metadata !DIExpression()), !dbg !116
  call void @llvm.dbg.declare(metadata i32* %7, metadata !117, metadata !DIExpression()), !dbg !118
  call void @llvm.dbg.declare(metadata i32* %8, metadata !119, metadata !DIExpression()), !dbg !120
  %9 = bitcast i32* %6 to i8*, !dbg !121
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !122
  %10 = bitcast i32* %7 to i8*, !dbg !123
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)), !dbg !124
  %11 = bitcast i32* %8 to i8*, !dbg !125
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 4, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)), !dbg !126
  %12 = load i32, i32* %6, align 4, !dbg !127
  %13 = icmp sge i32 %12, 0, !dbg !128
  %14 = zext i1 %13 to i32, !dbg !128
  %15 = sext i32 %14 to i64, !dbg !127
  call void @klee_assume(i64 noundef %15), !dbg !129
  %16 = load i32, i32* %7, align 4, !dbg !130
  %17 = icmp sge i32 %16, 0, !dbg !131
  %18 = zext i1 %17 to i32, !dbg !131
  %19 = sext i32 %18 to i64, !dbg !130
  call void @klee_assume(i64 noundef %19), !dbg !132
  %20 = load i32, i32* %8, align 4, !dbg !133
  %21 = icmp sge i32 %20, 0, !dbg !134
  %22 = zext i1 %21 to i32, !dbg !134
  %23 = sext i32 %22 to i64, !dbg !133
  call void @klee_assume(i64 noundef %23), !dbg !135
  %24 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.4, i64 0, i64 0), i32 noundef 80, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__PRETTY_FUNCTION__.test_dict, i64 0, i64 0)), !dbg !136
  %25 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i64 0, i64 0, !dbg !137
  %26 = call i8* @memset(i8* %25, i32 0, i64 40), !dbg !137
  ret void, !dbg !138
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !139 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !146, metadata !DIExpression()), !dbg !147
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !148, metadata !DIExpression()), !dbg !149
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !150, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.declare(metadata i8** %7, metadata !152, metadata !DIExpression()), !dbg !155
  %8 = load i8*, i8** %4, align 8, !dbg !156
  store i8* %8, i8** %7, align 8, !dbg !155
  br label %9, !dbg !157

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !158
  %11 = add i64 %10, -1, !dbg !158
  store i64 %11, i64* %6, align 8, !dbg !158
  %12 = icmp ugt i64 %10, 0, !dbg !159
  br i1 %12, label %13, label %18, !dbg !157

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !160
  %15 = trunc i32 %14 to i8, !dbg !160
  %16 = load i8*, i8** %7, align 8, !dbg !161
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !161
  store i8* %17, i8** %7, align 8, !dbg !161
  store i8 %15, i8* %16, align 1, !dbg !162
  br label %9, !dbg !157, !llvm.loop !163

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !165
  ret i8* %19, !dbg !166
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!12, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30, !30}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "dummy", scope: !2, file: !3, line: 27, type: !8, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "xmlDictLookup", scope: !3, file: !3, line: 23, type: !4, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !20)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/081_testdict.c_299_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "9e13707948f500a1ae389cebc3aae998")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !10, !6, !11}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !3, line: 10, baseType: !9)
!9 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !13, globals: !14, splitDebugInlining: false, nameTableKind: None)
!13 = !{!10}
!14 = !{!0, !15}
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "dummy", scope: !17, file: !3, line: 36, type: !8, isLocal: true, isDefinition: true)
!17 = distinct !DISubprogram(name: "xmlDictQLookup", scope: !3, file: !3, line: 32, type: !18, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !20)
!18 = !DISubroutineType(types: !19)
!19 = !{!6, !10, !6, !6}
!20 = !{}
!21 = distinct !DICompileUnit(language: DW_LANG_C99, file: !22, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!22 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!23 = !{i32 7, !"Dwarf Version", i32 5}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{i32 1, !"wchar_size", i32 4}
!26 = !{i32 7, !"PIC Level", i32 2}
!27 = !{i32 7, !"PIE Level", i32 2}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"Ubuntu clang version 14.0.6"}
!31 = distinct !DISubprogram(name: "xmlDictCreate", scope: !3, file: !3, line: 13, type: !32, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !20)
!32 = !DISubroutineType(types: !13)
!33 = !DILocation(line: 14, column: 12, scope: !31)
!34 = !DILocation(line: 14, column: 5, scope: !31)
!35 = distinct !DISubprogram(name: "xmlDictFree", scope: !3, file: !3, line: 18, type: !36, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !20)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !10}
!38 = !DILocalVariable(name: "dict", arg: 1, scope: !35, file: !3, line: 18, type: !10)
!39 = !DILocation(line: 18, column: 24, scope: !35)
!40 = !DILocation(line: 19, column: 10, scope: !35)
!41 = !DILocation(line: 19, column: 5, scope: !35)
!42 = !DILocation(line: 20, column: 1, scope: !35)
!43 = !DILocalVariable(name: "dict", arg: 1, scope: !2, file: !3, line: 23, type: !10)
!44 = !DILocation(line: 23, column: 36, scope: !2)
!45 = !DILocalVariable(name: "name", arg: 2, scope: !2, file: !3, line: 23, type: !6)
!46 = !DILocation(line: 23, column: 57, scope: !2)
!47 = !DILocalVariable(name: "len", arg: 3, scope: !2, file: !3, line: 23, type: !11)
!48 = !DILocation(line: 23, column: 67, scope: !2)
!49 = !DILocation(line: 24, column: 11, scope: !2)
!50 = !DILocation(line: 25, column: 11, scope: !2)
!51 = !DILocation(line: 26, column: 11, scope: !2)
!52 = !DILocation(line: 28, column: 5, scope: !2)
!53 = !DILocalVariable(name: "dict", arg: 1, scope: !17, file: !3, line: 32, type: !10)
!54 = !DILocation(line: 32, column: 37, scope: !17)
!55 = !DILocalVariable(name: "prefix", arg: 2, scope: !17, file: !3, line: 32, type: !6)
!56 = !DILocation(line: 32, column: 58, scope: !17)
!57 = !DILocalVariable(name: "name", arg: 3, scope: !17, file: !3, line: 32, type: !6)
!58 = !DILocation(line: 32, column: 81, scope: !17)
!59 = !DILocation(line: 33, column: 11, scope: !17)
!60 = !DILocation(line: 34, column: 11, scope: !17)
!61 = !DILocation(line: 35, column: 11, scope: !17)
!62 = !DILocation(line: 37, column: 5, scope: !17)
!63 = distinct !DISubprogram(name: "xmlDictOwns", scope: !3, file: !3, line: 41, type: !64, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !20)
!64 = !DISubroutineType(types: !65)
!65 = !{!11, !10, !6}
!66 = !DILocalVariable(name: "dict", arg: 1, scope: !63, file: !3, line: 41, type: !10)
!67 = !DILocation(line: 41, column: 23, scope: !63)
!68 = !DILocalVariable(name: "str", arg: 2, scope: !63, file: !3, line: 41, type: !6)
!69 = !DILocation(line: 41, column: 44, scope: !63)
!70 = !DILocation(line: 42, column: 11, scope: !63)
!71 = !DILocation(line: 43, column: 11, scope: !63)
!72 = !DILocation(line: 44, column: 5, scope: !63)
!73 = distinct !DISubprogram(name: "xmlDictSize", scope: !3, file: !3, line: 48, type: !74, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !20)
!74 = !DISubroutineType(types: !75)
!75 = !{!11, !10}
!76 = !DILocalVariable(name: "dict", arg: 1, scope: !73, file: !3, line: 48, type: !10)
!77 = !DILocation(line: 48, column: 23, scope: !73)
!78 = !DILocation(line: 49, column: 11, scope: !73)
!79 = !DILocation(line: 50, column: 5, scope: !73)
!80 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 86, type: !81, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !20)
!81 = !DISubroutineType(types: !82)
!82 = !{!11}
!83 = !DILocalVariable(name: "dict", scope: !80, file: !3, line: 87, type: !10)
!84 = !DILocation(line: 87, column: 11, scope: !80)
!85 = !DILocation(line: 90, column: 12, scope: !80)
!86 = !DILocation(line: 90, column: 10, scope: !80)
!87 = !DILocation(line: 91, column: 9, scope: !88)
!88 = distinct !DILexicalBlock(scope: !80, file: !3, line: 91, column: 9)
!89 = !DILocation(line: 91, column: 14, scope: !88)
!90 = !DILocation(line: 91, column: 9, scope: !80)
!91 = !DILocation(line: 92, column: 9, scope: !92)
!92 = distinct !DILexicalBlock(scope: !88, file: !3, line: 91, column: 23)
!93 = !DILocation(line: 96, column: 5, scope: !80)
!94 = !DILocation(line: 99, column: 17, scope: !80)
!95 = !DILocation(line: 99, column: 5, scope: !80)
!96 = !DILocation(line: 101, column: 5, scope: !80)
!97 = !DILocation(line: 102, column: 1, scope: !80)
!98 = distinct !DISubprogram(name: "test_dict", scope: !3, file: !3, line: 54, type: !99, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !12, retainedNodes: !20)
!99 = !DISubroutineType(types: !100)
!100 = !{null}
!101 = !DILocalVariable(name: "test1", scope: !98, file: !3, line: 55, type: !102)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 320, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 40)
!105 = !DILocation(line: 55, column: 13, scope: !98)
!106 = !DILocalVariable(name: "prefix", scope: !98, file: !3, line: 56, type: !102)
!107 = !DILocation(line: 56, column: 13, scope: !98)
!108 = !DILocalVariable(name: "cur", scope: !98, file: !3, line: 57, type: !109)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!110 = !DILocation(line: 57, column: 14, scope: !98)
!111 = !DILocalVariable(name: "pref", scope: !98, file: !3, line: 57, type: !109)
!112 = !DILocation(line: 57, column: 20, scope: !98)
!113 = !DILocalVariable(name: "tmp", scope: !98, file: !3, line: 58, type: !6)
!114 = !DILocation(line: 58, column: 20, scope: !98)
!115 = !DILocalVariable(name: "NB_STRINGS_MIN", scope: !98, file: !3, line: 59, type: !11)
!116 = !DILocation(line: 59, column: 9, scope: !98)
!117 = !DILocalVariable(name: "in", scope: !98, file: !3, line: 59, type: !11)
!118 = !DILocation(line: 59, column: 25, scope: !98)
!119 = !DILocalVariable(name: "on", scope: !98, file: !3, line: 59, type: !11)
!120 = !DILocation(line: 59, column: 29, scope: !98)
!121 = !DILocation(line: 62, column: 24, scope: !98)
!122 = !DILocation(line: 62, column: 5, scope: !98)
!123 = !DILocation(line: 63, column: 24, scope: !98)
!124 = !DILocation(line: 63, column: 5, scope: !98)
!125 = !DILocation(line: 64, column: 24, scope: !98)
!126 = !DILocation(line: 64, column: 5, scope: !98)
!127 = !DILocation(line: 67, column: 17, scope: !98)
!128 = !DILocation(line: 67, column: 32, scope: !98)
!129 = !DILocation(line: 67, column: 5, scope: !98)
!130 = !DILocation(line: 68, column: 17, scope: !98)
!131 = !DILocation(line: 68, column: 20, scope: !98)
!132 = !DILocation(line: 68, column: 5, scope: !98)
!133 = !DILocation(line: 69, column: 17, scope: !98)
!134 = !DILocation(line: 69, column: 20, scope: !98)
!135 = !DILocation(line: 69, column: 5, scope: !98)
!136 = !DILocation(line: 80, column: 5, scope: !98)
!137 = !DILocation(line: 82, column: 5, scope: !98)
!138 = !DILocation(line: 83, column: 1, scope: !98)
!139 = distinct !DISubprogram(name: "memset", scope: !140, file: !140, line: 12, type: !141, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !21, retainedNodes: !20)
!140 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!141 = !DISubroutineType(types: !142)
!142 = !{!10, !10, !11, !143}
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !144, line: 46, baseType: !145)
!144 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!145 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!146 = !DILocalVariable(name: "dst", arg: 1, scope: !139, file: !140, line: 12, type: !10)
!147 = !DILocation(line: 12, column: 20, scope: !139)
!148 = !DILocalVariable(name: "s", arg: 2, scope: !139, file: !140, line: 12, type: !11)
!149 = !DILocation(line: 12, column: 29, scope: !139)
!150 = !DILocalVariable(name: "count", arg: 3, scope: !139, file: !140, line: 12, type: !143)
!151 = !DILocation(line: 12, column: 39, scope: !139)
!152 = !DILocalVariable(name: "a", scope: !139, file: !140, line: 13, type: !153)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!155 = !DILocation(line: 13, column: 9, scope: !139)
!156 = !DILocation(line: 13, column: 13, scope: !139)
!157 = !DILocation(line: 14, column: 3, scope: !139)
!158 = !DILocation(line: 14, column: 15, scope: !139)
!159 = !DILocation(line: 14, column: 18, scope: !139)
!160 = !DILocation(line: 15, column: 12, scope: !139)
!161 = !DILocation(line: 15, column: 7, scope: !139)
!162 = !DILocation(line: 15, column: 10, scope: !139)
!163 = distinct !{!163, !157, !160, !164}
!164 = !{!"llvm.loop.mustprogress"}
!165 = !DILocation(line: 16, column: 10, scope: !139)
!166 = !DILocation(line: 16, column: 3, scope: !139)

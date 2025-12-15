; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/083_testrecurse.c_260_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/083_testrecurse.c_260_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@segment = dso_local global i8* null, align 8, !dbg !0
@current = dso_local global i8* null, align 8, !dbg !7
@rlen = dso_local global i64 0, align 8, !dbg !11
@len = dso_local global i64 0, align 8, !dbg !16
@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"(len <= sizeof(buffer)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [109 x i8] c"se_runs/sa_llm/libxml2_55980_vul/083_testrecurse.c_260_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.simulate_target_function = private unnamed_addr constant [38 x i8] c"size_t simulate_target_function(void)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@buffer = dso_local global [1024 x i8] zeroinitializer, align 16, !dbg !18
@.str.4 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"rlen\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"segment\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fprintf(i8* noundef %0, i8* noundef %1, ...) #0 !dbg !33 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !40, metadata !DIExpression()), !dbg !41
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !42, metadata !DIExpression()), !dbg !43
  ret i32 0, !dbg !44
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @simulate_target_function() #0 !dbg !45 {
  %1 = load i8*, i8** @current, align 8, !dbg !48
  %2 = icmp ne i8* %1, null, !dbg !50
  br i1 %2, label %3, label %24, !dbg !51

3:                                                ; preds = %0
  %4 = load i64, i64* @len, align 8, !dbg !52
  %5 = icmp ugt i64 %4, 0, !dbg !53
  br i1 %5, label %6, label %24, !dbg !54

6:                                                ; preds = %3
  %7 = load i64, i64* @len, align 8, !dbg !55
  %8 = icmp ule i64 %7, 1024, !dbg !55
  br i1 %8, label %9, label %11, !dbg !55

9:                                                ; preds = %6
  br i1 true, label %10, label %11, !dbg !55

10:                                               ; preds = %9
  br label %13, !dbg !55

11:                                               ; preds = %9, %6
  %12 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.2, i64 0, i64 0), i32 noundef 27, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.simulate_target_function, i64 0, i64 0)), !dbg !55
  br label %13, !dbg !55

13:                                               ; preds = %11, %10
  %14 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.2, i64 0, i64 0), i32 noundef 30, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.simulate_target_function, i64 0, i64 0)), !dbg !57
  %15 = load i8*, i8** @current, align 8, !dbg !58
  %16 = load i64, i64* @len, align 8, !dbg !59
  %17 = call i8* @memcpy(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0), i8* %15, i64 %16), !dbg !60
  %18 = load i64, i64* @len, align 8, !dbg !61
  %19 = load i64, i64* @rlen, align 8, !dbg !62
  %20 = sub i64 %19, %18, !dbg !62
  store i64 %20, i64* @rlen, align 8, !dbg !62
  %21 = load i64, i64* @len, align 8, !dbg !63
  %22 = load i8*, i8** @current, align 8, !dbg !64
  %23 = getelementptr inbounds i8, i8* %22, i64 %21, !dbg !64
  store i8* %23, i8** @current, align 8, !dbg !64
  br label %24, !dbg !65

24:                                               ; preds = %13, %3, %0
  %25 = load i64, i64* @len, align 8, !dbg !66
  ret i64 %25, !dbg !67
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !68 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @klee_make_symbolic(i8* noundef bitcast (i64* @len to i8*), i64 noundef 8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)), !dbg !71
  call void @klee_make_symbolic(i8* noundef bitcast (i64* @rlen to i8*), i64 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)), !dbg !72
  %2 = call noalias i8* @malloc(i64 noundef 1024) #7, !dbg !73
  store i8* %2, i8** @segment, align 8, !dbg !74
  %3 = load i8*, i8** @segment, align 8, !dbg !75
  %4 = icmp ne i8* %3, null, !dbg !76
  %5 = zext i1 %4 to i32, !dbg !76
  %6 = sext i32 %5 to i64, !dbg !75
  call void @klee_assume(i64 noundef %6), !dbg !77
  %7 = load i8*, i8** @segment, align 8, !dbg !78
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 1024, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)), !dbg !79
  %8 = load i8*, i8** @segment, align 8, !dbg !80
  store i8* %8, i8** @current, align 8, !dbg !81
  %9 = load i64, i64* @len, align 8, !dbg !82
  %10 = icmp ugt i64 %9, 0, !dbg !83
  %11 = zext i1 %10 to i32, !dbg !83
  %12 = sext i32 %11 to i64, !dbg !82
  call void @klee_assume(i64 noundef %12), !dbg !84
  %13 = load i64, i64* @len, align 8, !dbg !85
  %14 = icmp ule i64 %13, 2048, !dbg !86
  %15 = zext i1 %14 to i32, !dbg !86
  %16 = sext i32 %15 to i64, !dbg !85
  call void @klee_assume(i64 noundef %16), !dbg !87
  %17 = load i64, i64* @rlen, align 8, !dbg !88
  %18 = load i64, i64* @len, align 8, !dbg !89
  %19 = icmp uge i64 %17, %18, !dbg !90
  %20 = zext i1 %19 to i32, !dbg !90
  %21 = sext i32 %20 to i64, !dbg !88
  call void @klee_assume(i64 noundef %21), !dbg !91
  %22 = call i64 @simulate_target_function(), !dbg !92
  %23 = load i8*, i8** @segment, align 8, !dbg !93
  call void @free(i8* noundef %23) #7, !dbg !94
  ret i32 0, !dbg !95
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #5

declare void @klee_assume(i64 noundef) #4

; Function Attrs: nounwind
declare void @free(i8* noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !96 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !102, metadata !DIExpression()), !dbg !103
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !104, metadata !DIExpression()), !dbg !105
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !106, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.declare(metadata i8** %7, metadata !108, metadata !DIExpression()), !dbg !109
  %9 = load i8*, i8** %4, align 8, !dbg !110
  store i8* %9, i8** %7, align 8, !dbg !109
  call void @llvm.dbg.declare(metadata i8** %8, metadata !111, metadata !DIExpression()), !dbg !112
  %10 = load i8*, i8** %5, align 8, !dbg !113
  store i8* %10, i8** %8, align 8, !dbg !112
  br label %11, !dbg !114

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !115
  %13 = add i64 %12, -1, !dbg !115
  store i64 %13, i64* %6, align 8, !dbg !115
  %14 = icmp ugt i64 %12, 0, !dbg !116
  br i1 %14, label %15, label %21, !dbg !114

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !117
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !117
  store i8* %17, i8** %8, align 8, !dbg !117
  %18 = load i8, i8* %16, align 1, !dbg !118
  %19 = load i8*, i8** %7, align 8, !dbg !119
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !119
  store i8* %20, i8** %7, align 8, !dbg !119
  store i8 %18, i8* %19, align 1, !dbg !120
  br label %11, !dbg !114, !llvm.loop !121

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !123
  ret i8* %22, !dbg !124
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32, !32}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "segment", scope: !2, file: !3, line: 10, type: !9, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/083_testrecurse.c_260_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "d4a3dbf92c6bb8a3c5d39ebf47f0f614")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{!0, !7, !11, !16, !18}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "current", scope: !2, file: !3, line: 11, type: !9, isLocal: false, isDefinition: true)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "rlen", scope: !2, file: !3, line: 12, type: !13, isLocal: false, isDefinition: true)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !14, line: 46, baseType: !15)
!14 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!15 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "len", scope: !2, file: !3, line: 13, type: !13, isLocal: false, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "buffer", scope: !2, file: !3, line: 14, type: !20, isLocal: false, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 8192, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 1024)
!23 = distinct !DICompileUnit(language: DW_LANG_C99, file: !24, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!24 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!25 = !{i32 7, !"Dwarf Version", i32 5}
!26 = !{i32 2, !"Debug Info Version", i32 3}
!27 = !{i32 1, !"wchar_size", i32 4}
!28 = !{i32 7, !"PIC Level", i32 2}
!29 = !{i32 7, !"PIE Level", i32 2}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"Ubuntu clang version 14.0.6"}
!33 = distinct !DISubprogram(name: "fprintf", scope: !3, file: !3, line: 17, type: !34, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !39)
!34 = !DISubroutineType(types: !35)
!35 = !{!36, !5, !37, null}
!36 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!39 = !{}
!40 = !DILocalVariable(name: "stream", arg: 1, scope: !33, file: !3, line: 17, type: !5)
!41 = !DILocation(line: 17, column: 19, scope: !33)
!42 = !DILocalVariable(name: "format", arg: 2, scope: !33, file: !3, line: 17, type: !37)
!43 = !DILocation(line: 17, column: 39, scope: !33)
!44 = !DILocation(line: 18, column: 5, scope: !33)
!45 = distinct !DISubprogram(name: "simulate_target_function", scope: !3, file: !3, line: 22, type: !46, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !39)
!46 = !DISubroutineType(types: !47)
!47 = !{!13}
!48 = !DILocation(line: 24, column: 9, scope: !49)
!49 = distinct !DILexicalBlock(scope: !45, file: !3, line: 24, column: 9)
!50 = !DILocation(line: 24, column: 17, scope: !49)
!51 = !DILocation(line: 24, column: 25, scope: !49)
!52 = !DILocation(line: 24, column: 28, scope: !49)
!53 = !DILocation(line: 24, column: 32, scope: !49)
!54 = !DILocation(line: 24, column: 9, scope: !45)
!55 = !DILocation(line: 27, column: 9, scope: !56)
!56 = distinct !DILexicalBlock(scope: !49, file: !3, line: 24, column: 37)
!57 = !DILocation(line: 30, column: 9, scope: !56)
!58 = !DILocation(line: 32, column: 24, scope: !56)
!59 = !DILocation(line: 32, column: 33, scope: !56)
!60 = !DILocation(line: 32, column: 9, scope: !56)
!61 = !DILocation(line: 33, column: 17, scope: !56)
!62 = !DILocation(line: 33, column: 14, scope: !56)
!63 = !DILocation(line: 34, column: 20, scope: !56)
!64 = !DILocation(line: 34, column: 17, scope: !56)
!65 = !DILocation(line: 35, column: 5, scope: !56)
!66 = !DILocation(line: 36, column: 12, scope: !45)
!67 = !DILocation(line: 36, column: 5, scope: !45)
!68 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 39, type: !69, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !39)
!69 = !DISubroutineType(types: !70)
!70 = !{!36}
!71 = !DILocation(line: 41, column: 5, scope: !68)
!72 = !DILocation(line: 42, column: 5, scope: !68)
!73 = !DILocation(line: 45, column: 15, scope: !68)
!74 = !DILocation(line: 45, column: 13, scope: !68)
!75 = !DILocation(line: 46, column: 17, scope: !68)
!76 = !DILocation(line: 46, column: 25, scope: !68)
!77 = !DILocation(line: 46, column: 5, scope: !68)
!78 = !DILocation(line: 49, column: 24, scope: !68)
!79 = !DILocation(line: 49, column: 5, scope: !68)
!80 = !DILocation(line: 52, column: 15, scope: !68)
!81 = !DILocation(line: 52, column: 13, scope: !68)
!82 = !DILocation(line: 55, column: 17, scope: !68)
!83 = !DILocation(line: 55, column: 21, scope: !68)
!84 = !DILocation(line: 55, column: 5, scope: !68)
!85 = !DILocation(line: 56, column: 17, scope: !68)
!86 = !DILocation(line: 56, column: 21, scope: !68)
!87 = !DILocation(line: 56, column: 5, scope: !68)
!88 = !DILocation(line: 59, column: 17, scope: !68)
!89 = !DILocation(line: 59, column: 25, scope: !68)
!90 = !DILocation(line: 59, column: 22, scope: !68)
!91 = !DILocation(line: 59, column: 5, scope: !68)
!92 = !DILocation(line: 62, column: 5, scope: !68)
!93 = !DILocation(line: 65, column: 10, scope: !68)
!94 = !DILocation(line: 65, column: 5, scope: !68)
!95 = !DILocation(line: 67, column: 5, scope: !68)
!96 = distinct !DISubprogram(name: "memcpy", scope: !97, file: !97, line: 12, type: !98, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !23, retainedNodes: !39)
!97 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!98 = !DISubroutineType(types: !99)
!99 = !{!5, !5, !100, !13}
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!102 = !DILocalVariable(name: "destaddr", arg: 1, scope: !96, file: !97, line: 12, type: !5)
!103 = !DILocation(line: 12, column: 20, scope: !96)
!104 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !96, file: !97, line: 12, type: !100)
!105 = !DILocation(line: 12, column: 42, scope: !96)
!106 = !DILocalVariable(name: "len", arg: 3, scope: !96, file: !97, line: 12, type: !13)
!107 = !DILocation(line: 12, column: 58, scope: !96)
!108 = !DILocalVariable(name: "dest", scope: !96, file: !97, line: 13, type: !9)
!109 = !DILocation(line: 13, column: 9, scope: !96)
!110 = !DILocation(line: 13, column: 16, scope: !96)
!111 = !DILocalVariable(name: "src", scope: !96, file: !97, line: 14, type: !37)
!112 = !DILocation(line: 14, column: 15, scope: !96)
!113 = !DILocation(line: 14, column: 21, scope: !96)
!114 = !DILocation(line: 16, column: 3, scope: !96)
!115 = !DILocation(line: 16, column: 13, scope: !96)
!116 = !DILocation(line: 16, column: 16, scope: !96)
!117 = !DILocation(line: 17, column: 19, scope: !96)
!118 = !DILocation(line: 17, column: 15, scope: !96)
!119 = !DILocation(line: 17, column: 10, scope: !96)
!120 = !DILocation(line: 17, column: 13, scope: !96)
!121 = distinct !{!121, !114, !117, !122}
!122 = !{!"llvm.loop.mustprogress"}
!123 = !DILocation(line: 18, column: 10, scope: !96)
!124 = !DILocation(line: 18, column: 3, scope: !96)

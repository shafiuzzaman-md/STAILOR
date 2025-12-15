; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/108_runtest.c_3305_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/108_runtest.c_3305_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@urip_rlen = internal global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [15 x i8] c"context_buffer\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"(len <= 1024) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_55980_vul/108_runtest.c_3305_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.uripRead = private unnamed_addr constant [34 x i8] c"int uripRead(void *, char *, int)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !21 {
  %1 = alloca i32, align 4
  %2 = alloca [1024 x i8], align 16
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [1024 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [1024 x i8]* %2, metadata !25, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata i8** %3, metadata !30, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %4, metadata !33, metadata !DIExpression()), !dbg !34
  store i32 2048, i32* @urip_rlen, align 4, !dbg !35
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !36
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 1024, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !37
  %7 = bitcast i8** %3 to i8*, !dbg !38
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 8, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)), !dbg !39
  %8 = bitcast i32* %4 to i8*, !dbg !40
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)), !dbg !41
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !42, metadata !DIExpression()), !dbg !43
  %9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !44
  store i8* %9, i8** %3, align 8, !dbg !45
  %10 = load i32, i32* %4, align 4, !dbg !46
  %11 = icmp sge i32 %10, 0, !dbg !47
  %12 = zext i1 %11 to i32, !dbg !47
  %13 = sext i32 %12 to i64, !dbg !46
  call void @klee_assume(i64 noundef %13), !dbg !48
  %14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !49
  %15 = load i8*, i8** %3, align 8, !dbg !50
  %16 = load i32, i32* %4, align 4, !dbg !51
  %17 = call i32 @uripRead(i8* noundef %14, i8* noundef %15, i32 noundef %16), !dbg !52
  ret i32 0, !dbg !53
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uripRead(i8* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !54 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !57, metadata !DIExpression()), !dbg !58
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !59, metadata !DIExpression()), !dbg !60
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata i8** %8, metadata !63, metadata !DIExpression()), !dbg !64
  %9 = load i8*, i8** %5, align 8, !dbg !65
  store i8* %9, i8** %8, align 8, !dbg !64
  %10 = load i8*, i8** %5, align 8, !dbg !66
  %11 = icmp eq i8* %10, null, !dbg !68
  br i1 %11, label %18, label %12, !dbg !69

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8, !dbg !70
  %14 = icmp eq i8* %13, null, !dbg !71
  br i1 %14, label %18, label %15, !dbg !72

15:                                               ; preds = %12
  %16 = load i32, i32* %7, align 4, !dbg !73
  %17 = icmp slt i32 %16, 0, !dbg !74
  br i1 %17, label %18, label %19, !dbg !75

18:                                               ; preds = %15, %12, %3
  store i32 -1, i32* %4, align 4, !dbg !76
  br label %43, !dbg !76

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4, !dbg !77
  %21 = load i32, i32* @urip_rlen, align 4, !dbg !79
  %22 = icmp sgt i32 %20, %21, !dbg !80
  br i1 %22, label %23, label %25, !dbg !81

23:                                               ; preds = %19
  %24 = load i32, i32* @urip_rlen, align 4, !dbg !82
  store i32 %24, i32* %7, align 4, !dbg !83
  br label %25, !dbg !84

25:                                               ; preds = %23, %19
  %26 = load i32, i32* %7, align 4, !dbg !85
  %27 = icmp sle i32 %26, 1024, !dbg !85
  br i1 %27, label %28, label %30, !dbg !85

28:                                               ; preds = %25
  br i1 true, label %29, label %30, !dbg !85

29:                                               ; preds = %28
  br label %32, !dbg !85

30:                                               ; preds = %28, %25
  %31 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.5, i64 0, i64 0), i32 noundef 25, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.uripRead, i64 0, i64 0)), !dbg !85
  br label %32, !dbg !85

32:                                               ; preds = %30, %29
  %33 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.5, i64 0, i64 0), i32 noundef 28, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.uripRead, i64 0, i64 0)), !dbg !86
  %34 = load i8*, i8** %6, align 8, !dbg !87
  %35 = load i8*, i8** %8, align 8, !dbg !88
  %36 = load i32, i32* %7, align 4, !dbg !89
  %37 = sext i32 %36 to i64, !dbg !89
  %38 = call i8* @memcpy(i8* %34, i8* %35, i64 %37), !dbg !90
  %39 = load i32, i32* %7, align 4, !dbg !91
  %40 = load i32, i32* @urip_rlen, align 4, !dbg !92
  %41 = sub nsw i32 %40, %39, !dbg !92
  store i32 %41, i32* @urip_rlen, align 4, !dbg !92
  %42 = load i32, i32* %7, align 4, !dbg !93
  store i32 %42, i32* %4, align 4, !dbg !94
  br label %43, !dbg !94

43:                                               ; preds = %32, %18
  %44 = load i32, i32* %4, align 4, !dbg !95
  ret i32 %44, !dbg !95
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #5 !dbg !96 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !105, metadata !DIExpression()), !dbg !106
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !107, metadata !DIExpression()), !dbg !108
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !109, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.declare(metadata i8** %7, metadata !111, metadata !DIExpression()), !dbg !112
  %9 = load i8*, i8** %4, align 8, !dbg !113
  store i8* %9, i8** %7, align 8, !dbg !112
  call void @llvm.dbg.declare(metadata i8** %8, metadata !114, metadata !DIExpression()), !dbg !115
  %10 = load i8*, i8** %5, align 8, !dbg !116
  store i8* %10, i8** %8, align 8, !dbg !115
  br label %11, !dbg !117

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !118
  %13 = add i64 %12, -1, !dbg !118
  store i64 %13, i64* %6, align 8, !dbg !118
  %14 = icmp ugt i64 %12, 0, !dbg !119
  br i1 %14, label %15, label %21, !dbg !117

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !120
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !120
  store i8* %17, i8** %8, align 8, !dbg !120
  %18 = load i8, i8* %16, align 1, !dbg !121
  %19 = load i8*, i8** %7, align 8, !dbg !122
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !122
  store i8* %20, i8** %7, align 8, !dbg !122
  store i8 %18, i8* %19, align 1, !dbg !123
  br label %11, !dbg !117, !llvm.loop !124

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !126
  ret i8* %22, !dbg !127
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!2, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20, !20}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "urip_rlen", scope: !2, file: !3, line: 10, type: !10, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !9, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/108_runtest.c_3305_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "3ab251106cb9613f6ad6ee97e9d1a4df")
!4 = !{!5, !8}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !{!0}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = distinct !DICompileUnit(language: DW_LANG_C99, file: !12, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!12 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!13 = !{i32 7, !"Dwarf Version", i32 5}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = !{i32 7, !"PIC Level", i32 2}
!17 = !{i32 7, !"PIE Level", i32 2}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"Ubuntu clang version 14.0.6"}
!21 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 35, type: !22, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !24)
!22 = !DISubroutineType(types: !23)
!23 = !{!10}
!24 = !{}
!25 = !DILocalVariable(name: "context_buffer", scope: !21, file: !3, line: 37, type: !26)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8192, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 1024)
!29 = !DILocation(line: 37, column: 10, scope: !21)
!30 = !DILocalVariable(name: "buffer", scope: !21, file: !3, line: 38, type: !31)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!32 = !DILocation(line: 38, column: 11, scope: !21)
!33 = !DILocalVariable(name: "len", scope: !21, file: !3, line: 39, type: !10)
!34 = !DILocation(line: 39, column: 9, scope: !21)
!35 = !DILocation(line: 42, column: 15, scope: !21)
!36 = !DILocation(line: 45, column: 24, scope: !21)
!37 = !DILocation(line: 45, column: 5, scope: !21)
!38 = !DILocation(line: 46, column: 24, scope: !21)
!39 = !DILocation(line: 46, column: 5, scope: !21)
!40 = !DILocation(line: 47, column: 24, scope: !21)
!41 = !DILocation(line: 47, column: 5, scope: !21)
!42 = !DILocalVariable(name: "local_buffer", scope: !21, file: !3, line: 50, type: !26)
!43 = !DILocation(line: 50, column: 10, scope: !21)
!44 = !DILocation(line: 51, column: 14, scope: !21)
!45 = !DILocation(line: 51, column: 12, scope: !21)
!46 = !DILocation(line: 54, column: 17, scope: !21)
!47 = !DILocation(line: 54, column: 21, scope: !21)
!48 = !DILocation(line: 54, column: 5, scope: !21)
!49 = !DILocation(line: 57, column: 14, scope: !21)
!50 = !DILocation(line: 57, column: 30, scope: !21)
!51 = !DILocation(line: 57, column: 38, scope: !21)
!52 = !DILocation(line: 57, column: 5, scope: !21)
!53 = !DILocation(line: 59, column: 5, scope: !21)
!54 = distinct !DISubprogram(name: "uripRead", scope: !3, file: !3, line: 16, type: !55, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !24)
!55 = !DISubroutineType(types: !56)
!56 = !{!10, !8, !31, !10}
!57 = !DILocalVariable(name: "context", arg: 1, scope: !54, file: !3, line: 16, type: !8)
!58 = !DILocation(line: 16, column: 27, scope: !54)
!59 = !DILocalVariable(name: "buffer", arg: 2, scope: !54, file: !3, line: 16, type: !31)
!60 = !DILocation(line: 16, column: 42, scope: !54)
!61 = !DILocalVariable(name: "len", arg: 3, scope: !54, file: !3, line: 16, type: !10)
!62 = !DILocation(line: 16, column: 54, scope: !54)
!63 = !DILocalVariable(name: "ptr", scope: !54, file: !3, line: 17, type: !5)
!64 = !DILocation(line: 17, column: 17, scope: !54)
!65 = !DILocation(line: 17, column: 38, scope: !54)
!66 = !DILocation(line: 19, column: 10, scope: !67)
!67 = distinct !DILexicalBlock(scope: !54, file: !3, line: 19, column: 9)
!68 = !DILocation(line: 19, column: 18, scope: !67)
!69 = !DILocation(line: 19, column: 27, scope: !67)
!70 = !DILocation(line: 19, column: 31, scope: !67)
!71 = !DILocation(line: 19, column: 38, scope: !67)
!72 = !DILocation(line: 19, column: 47, scope: !67)
!73 = !DILocation(line: 19, column: 51, scope: !67)
!74 = !DILocation(line: 19, column: 55, scope: !67)
!75 = !DILocation(line: 19, column: 9, scope: !54)
!76 = !DILocation(line: 20, column: 9, scope: !67)
!77 = !DILocation(line: 22, column: 9, scope: !78)
!78 = distinct !DILexicalBlock(scope: !54, file: !3, line: 22, column: 9)
!79 = !DILocation(line: 22, column: 15, scope: !78)
!80 = !DILocation(line: 22, column: 13, scope: !78)
!81 = !DILocation(line: 22, column: 9, scope: !54)
!82 = !DILocation(line: 22, column: 32, scope: !78)
!83 = !DILocation(line: 22, column: 30, scope: !78)
!84 = !DILocation(line: 22, column: 26, scope: !78)
!85 = !DILocation(line: 25, column: 5, scope: !54)
!86 = !DILocation(line: 28, column: 5, scope: !54)
!87 = !DILocation(line: 30, column: 12, scope: !54)
!88 = !DILocation(line: 30, column: 20, scope: !54)
!89 = !DILocation(line: 30, column: 25, scope: !54)
!90 = !DILocation(line: 30, column: 5, scope: !54)
!91 = !DILocation(line: 31, column: 18, scope: !54)
!92 = !DILocation(line: 31, column: 15, scope: !54)
!93 = !DILocation(line: 32, column: 12, scope: !54)
!94 = !DILocation(line: 32, column: 5, scope: !54)
!95 = !DILocation(line: 33, column: 1, scope: !54)
!96 = distinct !DISubprogram(name: "memcpy", scope: !97, file: !97, line: 12, type: !98, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !24)
!97 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!98 = !DISubroutineType(types: !99)
!99 = !{!8, !8, !100, !102}
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !103, line: 46, baseType: !104)
!103 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!104 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!105 = !DILocalVariable(name: "destaddr", arg: 1, scope: !96, file: !97, line: 12, type: !8)
!106 = !DILocation(line: 12, column: 20, scope: !96)
!107 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !96, file: !97, line: 12, type: !100)
!108 = !DILocation(line: 12, column: 42, scope: !96)
!109 = !DILocalVariable(name: "len", arg: 3, scope: !96, file: !97, line: 12, type: !102)
!110 = !DILocation(line: 12, column: 58, scope: !96)
!111 = !DILocalVariable(name: "dest", scope: !96, file: !97, line: 13, type: !31)
!112 = !DILocation(line: 13, column: 9, scope: !96)
!113 = !DILocation(line: 13, column: 16, scope: !96)
!114 = !DILocalVariable(name: "src", scope: !96, file: !97, line: 14, type: !5)
!115 = !DILocation(line: 14, column: 15, scope: !96)
!116 = !DILocation(line: 14, column: 21, scope: !96)
!117 = !DILocation(line: 16, column: 3, scope: !96)
!118 = !DILocation(line: 16, column: 13, scope: !96)
!119 = !DILocation(line: 16, column: 16, scope: !96)
!120 = !DILocation(line: 17, column: 19, scope: !96)
!121 = !DILocation(line: 17, column: 15, scope: !96)
!122 = !DILocation(line: 17, column: 10, scope: !96)
!123 = !DILocation(line: 17, column: 13, scope: !96)
!124 = distinct !{!124, !117, !120, !125}
!125 = !{!"llvm.loop.mustprogress"}
!126 = !DILocation(line: 18, column: 10, scope: !96)
!127 = !DILocation(line: 18, column: 3, scope: !96)

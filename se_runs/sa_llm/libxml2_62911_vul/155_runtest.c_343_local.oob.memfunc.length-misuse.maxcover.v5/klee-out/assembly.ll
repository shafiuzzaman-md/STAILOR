; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/155_runtest.c_343_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/155_runtest.c_343_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"(n <= sizeof(content)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_62911_vul/155_runtest.c_343_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.target_function = private unnamed_addr constant [42 x i8] c"void target_function(char *, int, void *)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"len\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chanl(i8* noundef %0, i8* noundef %1, i8* noundef %2) #0 !dbg !14 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !21, metadata !DIExpression()), !dbg !22
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !23, metadata !DIExpression()), !dbg !24
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !25, metadata !DIExpression()), !dbg !26
  ret void, !dbg !27
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @target_function(i8* noundef %0, i32 noundef %1, i8* noundef %2) #0 !dbg !28 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [1024 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !33, metadata !DIExpression()), !dbg !34
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !35, metadata !DIExpression()), !dbg !36
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !37, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata [1024 x i8]* %7, metadata !39, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.declare(metadata i32* %8, metadata !44, metadata !DIExpression()), !dbg !45
  store i32 0, i32* %8, align 4, !dbg !45
  call void @llvm.dbg.declare(metadata i32* %9, metadata !46, metadata !DIExpression()), !dbg !47
  store i32 0, i32* %9, align 4, !dbg !47
  call void @llvm.dbg.declare(metadata i8** %10, metadata !48, metadata !DIExpression()), !dbg !49
  %11 = load i8*, i8** %4, align 8, !dbg !50
  store i8* %11, i8** %10, align 8, !dbg !49
  br label %12, !dbg !51

12:                                               ; preds = %3, %22
  %13 = load i32, i32* %8, align 4, !dbg !52
  %14 = icmp slt i32 %13, 0, !dbg !55
  br i1 %14, label %21, label %15, !dbg !56

15:                                               ; preds = %12
  %16 = load i32, i32* %9, align 4, !dbg !57
  %17 = load i32, i32* %5, align 4, !dbg !58
  %18 = add nsw i32 %16, %17, !dbg !59
  %19 = sext i32 %18 to i64, !dbg !57
  %20 = icmp ugt i64 %19, 1023, !dbg !60
  br i1 %20, label %21, label %22, !dbg !61

21:                                               ; preds = %15, %12
  br label %30, !dbg !62

22:                                               ; preds = %15
  %23 = load i32, i32* %5, align 4, !dbg !63
  %24 = load i8*, i8** %10, align 8, !dbg !64
  %25 = sext i32 %23 to i64, !dbg !64
  %26 = getelementptr inbounds i8, i8* %24, i64 %25, !dbg !64
  store i8* %26, i8** %10, align 8, !dbg !64
  %27 = load i32, i32* %5, align 4, !dbg !65
  %28 = load i32, i32* %9, align 4, !dbg !66
  %29 = add nsw i32 %28, %27, !dbg !66
  store i32 %29, i32* %9, align 4, !dbg !66
  br label %12, !dbg !51, !llvm.loop !67

30:                                               ; preds = %21
  %31 = load i32, i32* %9, align 4, !dbg !69
  %32 = sext i32 %31 to i64, !dbg !69
  %33 = icmp ule i64 %32, 1024, !dbg !69
  br i1 %33, label %34, label %36, !dbg !69

34:                                               ; preds = %30
  br i1 true, label %35, label %36, !dbg !69

35:                                               ; preds = %34
  br label %38, !dbg !69

36:                                               ; preds = %34, %30
  %37 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.2, i64 0, i64 0), i32 noundef 30, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !69
  br label %38, !dbg !69

38:                                               ; preds = %36, %35
  %39 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.2, i64 0, i64 0), i32 noundef 33, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !70
  %40 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0, !dbg !71
  %41 = load i8*, i8** %4, align 8, !dbg !72
  %42 = load i32, i32* %9, align 4, !dbg !73
  %43 = sext i32 %42 to i64, !dbg !73
  %44 = call i8* @memcpy(i8* %40, i8* %41, i64 %43), !dbg !71
  %45 = load i32, i32* %9, align 4, !dbg !74
  %46 = sext i32 %45 to i64, !dbg !75
  %47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 %46, !dbg !75
  store i8 0, i8* %47, align 1, !dbg !76
  %48 = load i8*, i8** %6, align 8, !dbg !77
  %49 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0, !dbg !78
  call void @chanl(i8* noundef %48, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* noundef %49), !dbg !79
  ret void, !dbg !80
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !81 {
  %1 = alloca i32, align 4
  %2 = alloca [2048 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [2048 x i8]* %2, metadata !84, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.declare(metadata i32* %3, metadata !89, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.declare(metadata i8** %4, metadata !91, metadata !DIExpression()), !dbg !92
  store i8* null, i8** %4, align 8, !dbg !92
  %5 = getelementptr inbounds [2048 x i8], [2048 x i8]* %2, i64 0, i64 0, !dbg !93
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 2048, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)), !dbg !94
  %6 = bitcast i32* %3 to i8*, !dbg !95
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)), !dbg !96
  %7 = load i32, i32* %3, align 4, !dbg !97
  %8 = icmp sge i32 %7, 0, !dbg !98
  %9 = zext i1 %8 to i32, !dbg !98
  %10 = sext i32 %9 to i64, !dbg !97
  call void @klee_assume(i64 noundef %10), !dbg !99
  %11 = load i32, i32* %3, align 4, !dbg !100
  %12 = icmp slt i32 %11, 1024, !dbg !101
  %13 = zext i1 %12 to i32, !dbg !101
  %14 = sext i32 %13 to i64, !dbg !100
  call void @klee_assume(i64 noundef %14), !dbg !102
  %15 = getelementptr inbounds [2048 x i8], [2048 x i8]* %2, i64 0, i64 0, !dbg !103
  %16 = load i32, i32* %3, align 4, !dbg !104
  %17 = load i8*, i8** %4, align 8, !dbg !105
  call void @target_function(i8* noundef %15, i32 noundef %16, i8* noundef %17), !dbg !106
  ret i32 0, !dbg !107
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #5 !dbg !108 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !117, metadata !DIExpression()), !dbg !118
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !119, metadata !DIExpression()), !dbg !120
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !121, metadata !DIExpression()), !dbg !122
  call void @llvm.dbg.declare(metadata i8** %7, metadata !123, metadata !DIExpression()), !dbg !124
  %9 = load i8*, i8** %4, align 8, !dbg !125
  store i8* %9, i8** %7, align 8, !dbg !124
  call void @llvm.dbg.declare(metadata i8** %8, metadata !126, metadata !DIExpression()), !dbg !127
  %10 = load i8*, i8** %5, align 8, !dbg !128
  store i8* %10, i8** %8, align 8, !dbg !127
  br label %11, !dbg !129

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !130
  %13 = add i64 %12, -1, !dbg !130
  store i64 %13, i64* %6, align 8, !dbg !130
  %14 = icmp ugt i64 %12, 0, !dbg !131
  br i1 %14, label %15, label %21, !dbg !129

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !132
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !132
  store i8* %17, i8** %8, align 8, !dbg !132
  %18 = load i8, i8* %16, align 1, !dbg !133
  %19 = load i8*, i8** %7, align 8, !dbg !134
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !134
  store i8* %20, i8** %7, align 8, !dbg !134
  store i8 %18, i8* %19, align 1, !dbg !135
  br label %11, !dbg !129, !llvm.loop !136

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !138
  ret i8* %22, !dbg !139
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13, !13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/155_runtest.c_343_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "a792f51480b1ace1072c96c7ba0fc4df")
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
!14 = distinct !DISubprogram(name: "chanl", scope: !1, file: !1, line: 10, type: !15, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !3, !17, !17}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !{}
!21 = !DILocalVariable(name: "data", arg: 1, scope: !14, file: !1, line: 10, type: !3)
!22 = !DILocation(line: 10, column: 18, scope: !14)
!23 = !DILocalVariable(name: "fmt", arg: 2, scope: !14, file: !1, line: 10, type: !17)
!24 = !DILocation(line: 10, column: 36, scope: !14)
!25 = !DILocalVariable(name: "content", arg: 3, scope: !14, file: !1, line: 10, type: !17)
!26 = !DILocation(line: 10, column: 53, scope: !14)
!27 = !DILocation(line: 12, column: 1, scope: !14)
!28 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 15, type: !29, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!29 = !DISubroutineType(types: !30)
!30 = !{null, !31, !32, !3}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!32 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!33 = !DILocalVariable(name: "start", arg: 1, scope: !28, file: !1, line: 15, type: !31)
!34 = !DILocation(line: 15, column: 28, scope: !28)
!35 = !DILocalVariable(name: "len", arg: 2, scope: !28, file: !1, line: 15, type: !32)
!36 = !DILocation(line: 15, column: 39, scope: !28)
!37 = !DILocalVariable(name: "data", arg: 3, scope: !28, file: !1, line: 15, type: !3)
!38 = !DILocation(line: 15, column: 50, scope: !28)
!39 = !DILocalVariable(name: "content", scope: !28, file: !1, line: 16, type: !40)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 8192, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 1024)
!43 = !DILocation(line: 16, column: 10, scope: !28)
!44 = !DILocalVariable(name: "c", scope: !28, file: !1, line: 17, type: !32)
!45 = !DILocation(line: 17, column: 9, scope: !28)
!46 = !DILocalVariable(name: "n", scope: !28, file: !1, line: 18, type: !32)
!47 = !DILocation(line: 18, column: 9, scope: !28)
!48 = !DILocalVariable(name: "cur", scope: !28, file: !1, line: 19, type: !31)
!49 = !DILocation(line: 19, column: 11, scope: !28)
!50 = !DILocation(line: 19, column: 17, scope: !28)
!51 = !DILocation(line: 21, column: 5, scope: !28)
!52 = !DILocation(line: 22, column: 14, scope: !53)
!53 = distinct !DILexicalBlock(scope: !54, file: !1, line: 22, column: 13)
!54 = distinct !DILexicalBlock(scope: !28, file: !1, line: 21, column: 15)
!55 = !DILocation(line: 22, column: 16, scope: !53)
!56 = !DILocation(line: 22, column: 21, scope: !53)
!57 = !DILocation(line: 22, column: 25, scope: !53)
!58 = !DILocation(line: 22, column: 29, scope: !53)
!59 = !DILocation(line: 22, column: 27, scope: !53)
!60 = !DILocation(line: 22, column: 33, scope: !53)
!61 = !DILocation(line: 22, column: 13, scope: !54)
!62 = !DILocation(line: 23, column: 13, scope: !53)
!63 = !DILocation(line: 24, column: 16, scope: !54)
!64 = !DILocation(line: 24, column: 13, scope: !54)
!65 = !DILocation(line: 25, column: 14, scope: !54)
!66 = !DILocation(line: 25, column: 11, scope: !54)
!67 = distinct !{!67, !51, !68}
!68 = !DILocation(line: 26, column: 5, scope: !28)
!69 = !DILocation(line: 30, column: 5, scope: !28)
!70 = !DILocation(line: 33, column: 5, scope: !28)
!71 = !DILocation(line: 35, column: 5, scope: !28)
!72 = !DILocation(line: 35, column: 21, scope: !28)
!73 = !DILocation(line: 35, column: 28, scope: !28)
!74 = !DILocation(line: 36, column: 13, scope: !28)
!75 = !DILocation(line: 36, column: 5, scope: !28)
!76 = !DILocation(line: 36, column: 16, scope: !28)
!77 = !DILocation(line: 37, column: 11, scope: !28)
!78 = !DILocation(line: 37, column: 25, scope: !28)
!79 = !DILocation(line: 37, column: 5, scope: !28)
!80 = !DILocation(line: 38, column: 1, scope: !28)
!81 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 40, type: !82, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!82 = !DISubroutineType(types: !83)
!83 = !{!32}
!84 = !DILocalVariable(name: "start", scope: !81, file: !1, line: 42, type: !85)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 16384, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 2048)
!88 = !DILocation(line: 42, column: 10, scope: !81)
!89 = !DILocalVariable(name: "len", scope: !81, file: !1, line: 43, type: !32)
!90 = !DILocation(line: 43, column: 9, scope: !81)
!91 = !DILocalVariable(name: "data", scope: !81, file: !1, line: 44, type: !3)
!92 = !DILocation(line: 44, column: 11, scope: !81)
!93 = !DILocation(line: 47, column: 24, scope: !81)
!94 = !DILocation(line: 47, column: 5, scope: !81)
!95 = !DILocation(line: 48, column: 24, scope: !81)
!96 = !DILocation(line: 48, column: 5, scope: !81)
!97 = !DILocation(line: 51, column: 17, scope: !81)
!98 = !DILocation(line: 51, column: 21, scope: !81)
!99 = !DILocation(line: 51, column: 5, scope: !81)
!100 = !DILocation(line: 52, column: 17, scope: !81)
!101 = !DILocation(line: 52, column: 21, scope: !81)
!102 = !DILocation(line: 52, column: 5, scope: !81)
!103 = !DILocation(line: 55, column: 21, scope: !81)
!104 = !DILocation(line: 55, column: 28, scope: !81)
!105 = !DILocation(line: 55, column: 33, scope: !81)
!106 = !DILocation(line: 55, column: 5, scope: !81)
!107 = !DILocation(line: 57, column: 5, scope: !81)
!108 = distinct !DISubprogram(name: "memcpy", scope: !109, file: !109, line: 12, type: !110, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !20)
!109 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!110 = !DISubroutineType(types: !111)
!111 = !{!3, !3, !112, !114}
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !115, line: 46, baseType: !116)
!115 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!116 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!117 = !DILocalVariable(name: "destaddr", arg: 1, scope: !108, file: !109, line: 12, type: !3)
!118 = !DILocation(line: 12, column: 20, scope: !108)
!119 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !108, file: !109, line: 12, type: !112)
!120 = !DILocation(line: 12, column: 42, scope: !108)
!121 = !DILocalVariable(name: "len", arg: 3, scope: !108, file: !109, line: 12, type: !114)
!122 = !DILocation(line: 12, column: 58, scope: !108)
!123 = !DILocalVariable(name: "dest", scope: !108, file: !109, line: 13, type: !31)
!124 = !DILocation(line: 13, column: 9, scope: !108)
!125 = !DILocation(line: 13, column: 16, scope: !108)
!126 = !DILocalVariable(name: "src", scope: !108, file: !109, line: 14, type: !17)
!127 = !DILocation(line: 14, column: 15, scope: !108)
!128 = !DILocation(line: 14, column: 21, scope: !108)
!129 = !DILocation(line: 16, column: 3, scope: !108)
!130 = !DILocation(line: 16, column: 13, scope: !108)
!131 = !DILocation(line: 16, column: 16, scope: !108)
!132 = !DILocation(line: 17, column: 19, scope: !108)
!133 = !DILocation(line: 17, column: 15, scope: !108)
!134 = !DILocation(line: 17, column: 10, scope: !108)
!135 = !DILocation(line: 17, column: 13, scope: !108)
!136 = distinct !{!136, !129, !132, !137}
!137 = !{!"llvm.loop.mustprogress"}
!138 = !DILocation(line: 18, column: 10, scope: !108)
!139 = !DILocation(line: 18, column: 3, scope: !108)

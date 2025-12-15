; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/213_xmllint.c_765_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/213_xmllint.c_765_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"line_read\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"(len + 1 <= 500) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_55980_vul/213_xmllint.c_765_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.prompt = private unnamed_addr constant [21 x i8] c"char *prompt(char *)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@__const.main.dummy_prompt = private unnamed_addr constant [6 x i8] c"test>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @prompt(i8* noundef %0) #0 !dbg !16 {
  %2 = alloca i8*, align 8
  %3 = alloca [501 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata [501 x i8]* %3, metadata !22, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata i8** %4, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i64* %5, metadata !29, metadata !DIExpression()), !dbg !33
  %7 = getelementptr inbounds [501 x i8], [501 x i8]* %3, i64 0, i64 0, !dbg !34
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 501, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)), !dbg !35
  %8 = getelementptr inbounds [501 x i8], [501 x i8]* %3, i64 0, i64 500, !dbg !36
  store i8 0, i8* %8, align 4, !dbg !37
  call void @llvm.dbg.declare(metadata i32* %6, metadata !38, metadata !DIExpression()), !dbg !40
  store i32 0, i32* %6, align 4, !dbg !41
  br label %9, !dbg !43

9:                                                ; preds = %21, %1
  %10 = load i32, i32* %6, align 4, !dbg !44
  %11 = icmp slt i32 %10, 500, !dbg !46
  br i1 %11, label %12, label %24, !dbg !47

12:                                               ; preds = %9
  %13 = load i32, i32* %6, align 4, !dbg !48
  %14 = sext i32 %13 to i64, !dbg !51
  %15 = getelementptr inbounds [501 x i8], [501 x i8]* %3, i64 0, i64 %14, !dbg !51
  %16 = load i8, i8* %15, align 1, !dbg !51
  %17 = sext i8 %16 to i32, !dbg !51
  %18 = icmp eq i32 %17, 0, !dbg !52
  br i1 %18, label %19, label %20, !dbg !53

19:                                               ; preds = %12
  br label %24, !dbg !54

20:                                               ; preds = %12
  br label %21, !dbg !55

21:                                               ; preds = %20
  %22 = load i32, i32* %6, align 4, !dbg !56
  %23 = add nsw i32 %22, 1, !dbg !56
  store i32 %23, i32* %6, align 4, !dbg !56
  br label %9, !dbg !57, !llvm.loop !58

24:                                               ; preds = %19, %9
  %25 = load i32, i32* %6, align 4, !dbg !61
  %26 = icmp slt i32 %25, 500, !dbg !62
  %27 = zext i1 %26 to i32, !dbg !62
  %28 = sext i32 %27 to i64, !dbg !61
  call void @klee_assume(i64 noundef %28), !dbg !63
  %29 = getelementptr inbounds [501 x i8], [501 x i8]* %3, i64 0, i64 0, !dbg !64
  %30 = call i64 @strlen(i8* noundef %29) #8, !dbg !65
  store i64 %30, i64* %5, align 8, !dbg !66
  %31 = load i64, i64* %5, align 8, !dbg !67
  %32 = add i64 %31, 1, !dbg !68
  %33 = call noalias i8* @malloc(i64 noundef %32) #9, !dbg !69
  store i8* %33, i8** %4, align 8, !dbg !70
  %34 = load i8*, i8** %4, align 8, !dbg !71
  %35 = icmp ne i8* %34, null, !dbg !73
  br i1 %35, label %36, label %51, !dbg !74

36:                                               ; preds = %24
  %37 = load i64, i64* %5, align 8, !dbg !75
  %38 = add i64 %37, 1, !dbg !75
  %39 = icmp ule i64 %38, 500, !dbg !75
  br i1 %39, label %40, label %42, !dbg !75

40:                                               ; preds = %36
  br i1 true, label %41, label %42, !dbg !75

41:                                               ; preds = %40
  br label %44, !dbg !75

42:                                               ; preds = %40, %36
  %43 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.3, i64 0, i64 0), i32 noundef 49, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__PRETTY_FUNCTION__.prompt, i64 0, i64 0)), !dbg !75
  br label %44, !dbg !75

44:                                               ; preds = %42, %41
  %45 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.3, i64 0, i64 0), i32 noundef 52, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__PRETTY_FUNCTION__.prompt, i64 0, i64 0)), !dbg !77
  %46 = load i8*, i8** %4, align 8, !dbg !78
  %47 = getelementptr inbounds [501 x i8], [501 x i8]* %3, i64 0, i64 0, !dbg !79
  %48 = load i64, i64* %5, align 8, !dbg !80
  %49 = add i64 %48, 1, !dbg !81
  %50 = call i8* @memcpy(i8* %46, i8* %47, i64 %49), !dbg !79
  br label %51, !dbg !82

51:                                               ; preds = %44, %24
  %52 = load i8*, i8** %4, align 8, !dbg !83
  ret i8* %52, !dbg !84
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !85 {
  %1 = alloca i32, align 4
  %2 = alloca [6 x i8], align 1
  %3 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [6 x i8]* %2, metadata !88, metadata !DIExpression()), !dbg !92
  %4 = bitcast [6 x i8]* %2 to i8*, !dbg !92
  %5 = call i8* @memcpy(i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @__const.main.dummy_prompt, i32 0, i32 0), i64 6), !dbg !92
  call void @llvm.dbg.declare(metadata i8** %3, metadata !93, metadata !DIExpression()), !dbg !94
  %6 = getelementptr inbounds [6 x i8], [6 x i8]* %2, i64 0, i64 0, !dbg !95
  %7 = call i8* @prompt(i8* noundef %6), !dbg !96
  store i8* %7, i8** %3, align 8, !dbg !94
  %8 = load i8*, i8** %3, align 8, !dbg !97
  %9 = icmp ne i8* %8, null, !dbg !97
  br i1 %9, label %10, label %12, !dbg !99

10:                                               ; preds = %0
  %11 = load i8*, i8** %3, align 8, !dbg !100
  call void @free(i8* noundef %11) #9, !dbg !102
  br label %12, !dbg !103

12:                                               ; preds = %10, %0
  ret i32 0, !dbg !104
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !105 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !111, metadata !DIExpression()), !dbg !112
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !113, metadata !DIExpression()), !dbg !114
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !115, metadata !DIExpression()), !dbg !116
  call void @llvm.dbg.declare(metadata i8** %7, metadata !117, metadata !DIExpression()), !dbg !118
  %9 = load i8*, i8** %4, align 8, !dbg !119
  store i8* %9, i8** %7, align 8, !dbg !118
  call void @llvm.dbg.declare(metadata i8** %8, metadata !120, metadata !DIExpression()), !dbg !123
  %10 = load i8*, i8** %5, align 8, !dbg !124
  store i8* %10, i8** %8, align 8, !dbg !123
  br label %11, !dbg !125

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !126
  %13 = add i64 %12, -1, !dbg !126
  store i64 %13, i64* %6, align 8, !dbg !126
  %14 = icmp ugt i64 %12, 0, !dbg !127
  br i1 %14, label %15, label %21, !dbg !125

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !128
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !128
  store i8* %17, i8** %8, align 8, !dbg !128
  %18 = load i8, i8* %16, align 1, !dbg !129
  %19 = load i8*, i8** %7, align 8, !dbg !130
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !130
  store i8* %20, i8** %7, align 8, !dbg !130
  store i8 %18, i8* %19, align 1, !dbg !131
  br label %11, !dbg !125, !llvm.loop !132

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !133
  ret i8* %22, !dbg !134
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15, !15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/213_xmllint.c_765_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "8fbf7d4776670848226125383463aa12")
!2 = !{!3, !5}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = distinct !DICompileUnit(language: DW_LANG_C99, file: !7, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!7 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!8 = !{i32 7, !"Dwarf Version", i32 5}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{i32 7, !"PIC Level", i32 2}
!12 = !{i32 7, !"PIE Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"Ubuntu clang version 14.0.6"}
!16 = distinct !DISubprogram(name: "prompt", scope: !1, file: !1, line: 14, type: !17, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !19)
!17 = !DISubroutineType(types: !18)
!18 = !{!3, !3}
!19 = !{}
!20 = !DILocalVariable(name: "prompt_str", arg: 1, scope: !16, file: !1, line: 14, type: !3)
!21 = !DILocation(line: 14, column: 20, scope: !16)
!22 = !DILocalVariable(name: "line_read", scope: !16, file: !1, line: 15, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 4008, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 501)
!26 = !DILocation(line: 15, column: 10, scope: !16)
!27 = !DILocalVariable(name: "ret", scope: !16, file: !1, line: 16, type: !3)
!28 = !DILocation(line: 16, column: 11, scope: !16)
!29 = !DILocalVariable(name: "len", scope: !16, file: !1, line: 17, type: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !31, line: 46, baseType: !32)
!31 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!32 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!33 = !DILocation(line: 17, column: 12, scope: !16)
!34 = !DILocation(line: 20, column: 24, scope: !16)
!35 = !DILocation(line: 20, column: 5, scope: !16)
!36 = !DILocation(line: 23, column: 5, scope: !16)
!37 = !DILocation(line: 23, column: 20, scope: !16)
!38 = !DILocalVariable(name: "i", scope: !16, file: !1, line: 27, type: !39)
!39 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!40 = !DILocation(line: 27, column: 9, scope: !16)
!41 = !DILocation(line: 28, column: 12, scope: !42)
!42 = distinct !DILexicalBlock(scope: !16, file: !1, line: 28, column: 5)
!43 = !DILocation(line: 28, column: 10, scope: !42)
!44 = !DILocation(line: 28, column: 17, scope: !45)
!45 = distinct !DILexicalBlock(scope: !42, file: !1, line: 28, column: 5)
!46 = !DILocation(line: 28, column: 19, scope: !45)
!47 = !DILocation(line: 28, column: 5, scope: !42)
!48 = !DILocation(line: 29, column: 23, scope: !49)
!49 = distinct !DILexicalBlock(scope: !50, file: !1, line: 29, column: 13)
!50 = distinct !DILexicalBlock(scope: !45, file: !1, line: 28, column: 31)
!51 = !DILocation(line: 29, column: 13, scope: !49)
!52 = !DILocation(line: 29, column: 26, scope: !49)
!53 = !DILocation(line: 29, column: 13, scope: !50)
!54 = !DILocation(line: 29, column: 35, scope: !49)
!55 = !DILocation(line: 30, column: 5, scope: !50)
!56 = !DILocation(line: 28, column: 27, scope: !45)
!57 = !DILocation(line: 28, column: 5, scope: !45)
!58 = distinct !{!58, !47, !59, !60}
!59 = !DILocation(line: 30, column: 5, scope: !42)
!60 = !{!"llvm.loop.mustprogress"}
!61 = !DILocation(line: 32, column: 17, scope: !16)
!62 = !DILocation(line: 32, column: 19, scope: !16)
!63 = !DILocation(line: 32, column: 5, scope: !16)
!64 = !DILocation(line: 34, column: 18, scope: !16)
!65 = !DILocation(line: 34, column: 11, scope: !16)
!66 = !DILocation(line: 34, column: 9, scope: !16)
!67 = !DILocation(line: 43, column: 26, scope: !16)
!68 = !DILocation(line: 43, column: 30, scope: !16)
!69 = !DILocation(line: 43, column: 19, scope: !16)
!70 = !DILocation(line: 43, column: 9, scope: !16)
!71 = !DILocation(line: 44, column: 9, scope: !72)
!72 = distinct !DILexicalBlock(scope: !16, file: !1, line: 44, column: 9)
!73 = !DILocation(line: 44, column: 13, scope: !72)
!74 = !DILocation(line: 44, column: 9, scope: !16)
!75 = !DILocation(line: 49, column: 9, scope: !76)
!76 = distinct !DILexicalBlock(scope: !72, file: !1, line: 44, column: 22)
!77 = !DILocation(line: 52, column: 9, scope: !76)
!78 = !DILocation(line: 54, column: 16, scope: !76)
!79 = !DILocation(line: 54, column: 9, scope: !76)
!80 = !DILocation(line: 54, column: 32, scope: !76)
!81 = !DILocation(line: 54, column: 36, scope: !76)
!82 = !DILocation(line: 55, column: 5, scope: !76)
!83 = !DILocation(line: 56, column: 12, scope: !16)
!84 = !DILocation(line: 56, column: 5, scope: !16)
!85 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 59, type: !86, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !19)
!86 = !DISubroutineType(types: !87)
!87 = !{!39}
!88 = !DILocalVariable(name: "dummy_prompt", scope: !85, file: !1, line: 60, type: !89)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 6)
!92 = !DILocation(line: 60, column: 10, scope: !85)
!93 = !DILocalVariable(name: "result", scope: !85, file: !1, line: 63, type: !3)
!94 = !DILocation(line: 63, column: 11, scope: !85)
!95 = !DILocation(line: 63, column: 27, scope: !85)
!96 = !DILocation(line: 63, column: 20, scope: !85)
!97 = !DILocation(line: 65, column: 9, scope: !98)
!98 = distinct !DILexicalBlock(scope: !85, file: !1, line: 65, column: 9)
!99 = !DILocation(line: 65, column: 9, scope: !85)
!100 = !DILocation(line: 66, column: 14, scope: !101)
!101 = distinct !DILexicalBlock(scope: !98, file: !1, line: 65, column: 17)
!102 = !DILocation(line: 66, column: 9, scope: !101)
!103 = !DILocation(line: 67, column: 5, scope: !101)
!104 = !DILocation(line: 69, column: 5, scope: !85)
!105 = distinct !DISubprogram(name: "memcpy", scope: !106, file: !106, line: 12, type: !107, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !19)
!106 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!107 = !DISubroutineType(types: !108)
!108 = !{!5, !5, !109, !30}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!111 = !DILocalVariable(name: "destaddr", arg: 1, scope: !105, file: !106, line: 12, type: !5)
!112 = !DILocation(line: 12, column: 20, scope: !105)
!113 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !105, file: !106, line: 12, type: !109)
!114 = !DILocation(line: 12, column: 42, scope: !105)
!115 = !DILocalVariable(name: "len", arg: 3, scope: !105, file: !106, line: 12, type: !30)
!116 = !DILocation(line: 12, column: 58, scope: !105)
!117 = !DILocalVariable(name: "dest", scope: !105, file: !106, line: 13, type: !3)
!118 = !DILocation(line: 13, column: 9, scope: !105)
!119 = !DILocation(line: 13, column: 16, scope: !105)
!120 = !DILocalVariable(name: "src", scope: !105, file: !106, line: 14, type: !121)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!123 = !DILocation(line: 14, column: 15, scope: !105)
!124 = !DILocation(line: 14, column: 21, scope: !105)
!125 = !DILocation(line: 16, column: 3, scope: !105)
!126 = !DILocation(line: 16, column: 13, scope: !105)
!127 = !DILocation(line: 16, column: 16, scope: !105)
!128 = !DILocation(line: 17, column: 19, scope: !105)
!129 = !DILocation(line: 17, column: 15, scope: !105)
!130 = !DILocation(line: 17, column: 10, scope: !105)
!131 = !DILocation(line: 17, column: 13, scope: !105)
!132 = distinct !{!132, !125, !128, !60}
!133 = !DILocation(line: 18, column: 10, scope: !105)
!134 = !DILocation(line: 18, column: 3, scope: !105)

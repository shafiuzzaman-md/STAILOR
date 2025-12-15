; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/203_xmlIO.c_3708_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/203_xmlIO.c_3708_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"(strlen(filename) < 1024) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_55980_vul/203_xmlIO.c_3708_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@__xmlDirname.result = internal global [1024 x i8] zeroinitializer, align 16, !dbg !0

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !26 {
  %1 = alloca i32, align 4
  %2 = alloca [1025 x i8], align 16
  %3 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [1025 x i8]* %2, metadata !30, metadata !DIExpression()), !dbg !34
  %4 = getelementptr inbounds [1025 x i8], [1025 x i8]* %2, i64 0, i64 0, !dbg !35
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 1025, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !dbg !36
  %5 = getelementptr inbounds [1025 x i8], [1025 x i8]* %2, i64 0, i64 1024, !dbg !37
  store i8 0, i8* %5, align 16, !dbg !38
  %6 = getelementptr inbounds [1025 x i8], [1025 x i8]* %2, i64 0, i64 0, !dbg !39
  %7 = icmp ne i8* %6, null, !dbg !40
  %8 = zext i1 %7 to i32, !dbg !40
  %9 = sext i32 %8 to i64, !dbg !39
  call void @klee_assume(i64 noundef %9), !dbg !41
  call void @llvm.dbg.declare(metadata i8** %3, metadata !42, metadata !DIExpression()), !dbg !43
  %10 = getelementptr inbounds [1025 x i8], [1025 x i8]* %2, i64 0, i64 0, !dbg !44
  %11 = call i8* @__xmlDirname(i8* noundef %10), !dbg !45
  store i8* %11, i8** %3, align 8, !dbg !43
  %12 = getelementptr inbounds [1025 x i8], [1025 x i8]* %2, i64 0, i64 0, !dbg !46
  %13 = call i64 @strlen(i8* noundef %12) #6, !dbg !46
  %14 = icmp ult i64 %13, 1024, !dbg !46
  br i1 %14, label %15, label %17, !dbg !46

15:                                               ; preds = %0
  br i1 true, label %16, label %17, !dbg !46

16:                                               ; preds = %15
  br label %19, !dbg !46

17:                                               ; preds = %15, %0
  %18 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.3, i64 0, i64 0), i32 noundef 65, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !46
  br label %19, !dbg !46

19:                                               ; preds = %17, %16
  %20 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.3, i64 0, i64 0), i32 noundef 68, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !47
  %21 = load i8*, i8** %3, align 8, !dbg !48
  ret i32 0, !dbg !49
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @__xmlDirname(i8* noundef %0) #0 !dbg !2 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [1024 x i8], align 16
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !50, metadata !DIExpression()), !dbg !51
  %6 = load i8*, i8** %3, align 8, !dbg !52
  %7 = icmp eq i8* %6, null, !dbg !54
  br i1 %7, label %8, label %9, !dbg !55

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !56
  br label %55, !dbg !56

9:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata [1024 x i8]* %4, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata i8** %5, metadata !59, metadata !DIExpression()), !dbg !60
  %10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0, !dbg !61
  %11 = load i8*, i8** %3, align 8, !dbg !62
  %12 = call i8* @strncpy(i8* noundef %10, i8* noundef %11, i64 noundef 1023) #7, !dbg !63
  %13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 1023, !dbg !64
  store i8 0, i8* %13, align 1, !dbg !65
  %14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0, !dbg !66
  %15 = call i64 @strlen(i8* noundef %14) #6, !dbg !67
  %16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 %15, !dbg !68
  store i8* %16, i8** %5, align 8, !dbg !69
  br label %17, !dbg !70

17:                                               ; preds = %32, %9
  %18 = load i8*, i8** %5, align 8, !dbg !71
  %19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0, !dbg !72
  %20 = icmp ugt i8* %18, %19, !dbg !73
  br i1 %20, label %21, label %35, !dbg !70

21:                                               ; preds = %17
  %22 = load i8*, i8** %5, align 8, !dbg !74
  %23 = load i8, i8* %22, align 1, !dbg !77
  %24 = sext i8 %23 to i32, !dbg !77
  %25 = icmp eq i32 %24, 47, !dbg !78
  br i1 %25, label %31, label %26, !dbg !79

26:                                               ; preds = %21
  %27 = load i8*, i8** %5, align 8, !dbg !80
  %28 = load i8, i8* %27, align 1, !dbg !81
  %29 = sext i8 %28 to i32, !dbg !81
  %30 = icmp eq i32 %29, 92, !dbg !82
  br i1 %30, label %31, label %32, !dbg !83

31:                                               ; preds = %26, %21
  br label %35, !dbg !84

32:                                               ; preds = %26
  %33 = load i8*, i8** %5, align 8, !dbg !85
  %34 = getelementptr inbounds i8, i8* %33, i32 -1, !dbg !85
  store i8* %34, i8** %5, align 8, !dbg !85
  br label %17, !dbg !70, !llvm.loop !86

35:                                               ; preds = %31, %17
  %36 = load i8*, i8** %5, align 8, !dbg !89
  %37 = load i8, i8* %36, align 1, !dbg !91
  %38 = sext i8 %37 to i32, !dbg !91
  %39 = icmp eq i32 %38, 47, !dbg !92
  br i1 %39, label %45, label %40, !dbg !93

40:                                               ; preds = %35
  %41 = load i8*, i8** %5, align 8, !dbg !94
  %42 = load i8, i8* %41, align 1, !dbg !95
  %43 = sext i8 %42 to i32, !dbg !95
  %44 = icmp eq i32 %43, 92, !dbg !96
  br i1 %44, label %45, label %52, !dbg !97

45:                                               ; preds = %40, %35
  %46 = load i8*, i8** %5, align 8, !dbg !98
  %47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0, !dbg !101
  %48 = icmp eq i8* %46, %47, !dbg !102
  br i1 %48, label %49, label %51, !dbg !103

49:                                               ; preds = %45
  %50 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 1, !dbg !104
  store i8 0, i8* %50, align 1, !dbg !105
  br label %51, !dbg !104

51:                                               ; preds = %49, %45
  br label %52, !dbg !106

52:                                               ; preds = %51, %40
  %53 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0, !dbg !107
  %54 = call i8* @strcpy(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @__xmlDirname.result, i64 0, i64 0), i8* noundef %53) #7, !dbg !108
  store i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @__xmlDirname.result, i64 0, i64 0), i8** %2, align 8, !dbg !109
  br label %55, !dbg !109

55:                                               ; preds = %52, %8
  %56 = load i8*, i8** %2, align 8, !dbg !110
  ret i8* %56, !dbg !110
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: nounwind
declare i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #5

; Function Attrs: nounwind
declare i8* @strcpy(i8* noundef, i8* noundef) #5

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!10}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "result", scope: !2, file: !3, line: 96, type: !15, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "__xmlDirname", scope: !3, file: !3, line: 77, type: !4, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !14)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/203_xmlIO.c_3708_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "0f458c62046e8711a132d4f13d99cbb6")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !8}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !11, globals: !13, splitDebugInlining: false, nameTableKind: None)
!11 = !{!12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !{!0}
!14 = !{}
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8192, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 1024)
!18 = !{i32 7, !"Dwarf Version", i32 5}
!19 = !{i32 2, !"Debug Info Version", i32 3}
!20 = !{i32 1, !"wchar_size", i32 4}
!21 = !{i32 7, !"PIC Level", i32 2}
!22 = !{i32 7, !"PIE Level", i32 2}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"Ubuntu clang version 14.0.6"}
!26 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 13, type: !27, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !14)
!27 = !DISubroutineType(types: !28)
!28 = !{!29}
!29 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!30 = !DILocalVariable(name: "filename", scope: !26, file: !3, line: 15, type: !31)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8200, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 1025)
!34 = !DILocation(line: 15, column: 10, scope: !26)
!35 = !DILocation(line: 16, column: 24, scope: !26)
!36 = !DILocation(line: 16, column: 5, scope: !26)
!37 = !DILocation(line: 19, column: 5, scope: !26)
!38 = !DILocation(line: 19, column: 20, scope: !26)
!39 = !DILocation(line: 22, column: 17, scope: !26)
!40 = !DILocation(line: 22, column: 26, scope: !26)
!41 = !DILocation(line: 22, column: 5, scope: !26)
!42 = !DILocalVariable(name: "result", scope: !26, file: !3, line: 25, type: !6)
!43 = !DILocation(line: 25, column: 11, scope: !26)
!44 = !DILocation(line: 25, column: 33, scope: !26)
!45 = !DILocation(line: 25, column: 20, scope: !26)
!46 = !DILocation(line: 65, column: 5, scope: !26)
!47 = !DILocation(line: 68, column: 5, scope: !26)
!48 = !DILocation(line: 71, column: 11, scope: !26)
!49 = !DILocation(line: 73, column: 5, scope: !26)
!50 = !DILocalVariable(name: "filename", arg: 1, scope: !2, file: !3, line: 77, type: !8)
!51 = !DILocation(line: 77, column: 32, scope: !2)
!52 = !DILocation(line: 78, column: 9, scope: !53)
!53 = distinct !DILexicalBlock(scope: !2, file: !3, line: 78, column: 9)
!54 = !DILocation(line: 78, column: 18, scope: !53)
!55 = !DILocation(line: 78, column: 9, scope: !2)
!56 = !DILocation(line: 78, column: 27, scope: !53)
!57 = !DILocalVariable(name: "dir", scope: !2, file: !3, line: 80, type: !15)
!58 = !DILocation(line: 80, column: 10, scope: !2)
!59 = !DILocalVariable(name: "cur", scope: !2, file: !3, line: 81, type: !6)
!60 = !DILocation(line: 81, column: 11, scope: !2)
!61 = !DILocation(line: 84, column: 13, scope: !2)
!62 = !DILocation(line: 84, column: 18, scope: !2)
!63 = !DILocation(line: 84, column: 5, scope: !2)
!64 = !DILocation(line: 85, column: 5, scope: !2)
!65 = !DILocation(line: 85, column: 15, scope: !2)
!66 = !DILocation(line: 86, column: 23, scope: !2)
!67 = !DILocation(line: 86, column: 16, scope: !2)
!68 = !DILocation(line: 86, column: 12, scope: !2)
!69 = !DILocation(line: 86, column: 9, scope: !2)
!70 = !DILocation(line: 87, column: 5, scope: !2)
!71 = !DILocation(line: 87, column: 12, scope: !2)
!72 = !DILocation(line: 87, column: 18, scope: !2)
!73 = !DILocation(line: 87, column: 16, scope: !2)
!74 = !DILocation(line: 88, column: 14, scope: !75)
!75 = distinct !DILexicalBlock(scope: !76, file: !3, line: 88, column: 13)
!76 = distinct !DILexicalBlock(scope: !2, file: !3, line: 87, column: 23)
!77 = !DILocation(line: 88, column: 13, scope: !75)
!78 = !DILocation(line: 88, column: 18, scope: !75)
!79 = !DILocation(line: 88, column: 25, scope: !75)
!80 = !DILocation(line: 88, column: 29, scope: !75)
!81 = !DILocation(line: 88, column: 28, scope: !75)
!82 = !DILocation(line: 88, column: 33, scope: !75)
!83 = !DILocation(line: 88, column: 13, scope: !76)
!84 = !DILocation(line: 88, column: 42, scope: !75)
!85 = !DILocation(line: 89, column: 12, scope: !76)
!86 = distinct !{!86, !70, !87, !88}
!87 = !DILocation(line: 90, column: 5, scope: !2)
!88 = !{!"llvm.loop.mustprogress"}
!89 = !DILocation(line: 91, column: 10, scope: !90)
!90 = distinct !DILexicalBlock(scope: !2, file: !3, line: 91, column: 9)
!91 = !DILocation(line: 91, column: 9, scope: !90)
!92 = !DILocation(line: 91, column: 14, scope: !90)
!93 = !DILocation(line: 91, column: 21, scope: !90)
!94 = !DILocation(line: 91, column: 25, scope: !90)
!95 = !DILocation(line: 91, column: 24, scope: !90)
!96 = !DILocation(line: 91, column: 29, scope: !90)
!97 = !DILocation(line: 91, column: 9, scope: !2)
!98 = !DILocation(line: 92, column: 13, scope: !99)
!99 = distinct !DILexicalBlock(scope: !100, file: !3, line: 92, column: 13)
!100 = distinct !DILexicalBlock(scope: !90, file: !3, line: 91, column: 38)
!101 = !DILocation(line: 92, column: 20, scope: !99)
!102 = !DILocation(line: 92, column: 17, scope: !99)
!103 = !DILocation(line: 92, column: 13, scope: !100)
!104 = !DILocation(line: 92, column: 25, scope: !99)
!105 = !DILocation(line: 92, column: 32, scope: !99)
!106 = !DILocation(line: 93, column: 5, scope: !100)
!107 = !DILocation(line: 97, column: 20, scope: !2)
!108 = !DILocation(line: 97, column: 5, scope: !2)
!109 = !DILocation(line: 98, column: 5, scope: !2)
!110 = !DILocation(line: 99, column: 1, scope: !2)

; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/129_xmlcatalog.c_87_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/129_xmlcatalog.c_87_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdout = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"line_read\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"(len + 1 <= 501) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [107 x i8] c"se_runs/sa_llm/libxml2_55980_vul/129_xmlcatalog.c_87_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlShellReadline = private unnamed_addr constant [37 x i8] c"char *xmlShellReadline(const char *)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"prompt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlShellReadline(i8* noundef %0) #0 !dbg !16 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [501 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata [501 x i8]* %4, metadata !24, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i8** %5, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i64* %6, metadata !31, metadata !DIExpression()), !dbg !35
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !36
  %8 = load i8*, i8** %3, align 8, !dbg !37
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* noundef %8), !dbg !38
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !39
  %11 = call i32 @fflush(%struct._IO_FILE* noundef %10), !dbg !40
  %12 = getelementptr inbounds [501 x i8], [501 x i8]* %4, i64 0, i64 0, !dbg !41
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 501, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)), !dbg !42
  %13 = getelementptr inbounds [501 x i8], [501 x i8]* %4, i64 0, i64 499, !dbg !43
  %14 = load i8, i8* %13, align 1, !dbg !43
  %15 = sext i8 %14 to i32, !dbg !43
  %16 = icmp eq i32 %15, 0, !dbg !44
  %17 = zext i1 %16 to i32, !dbg !44
  %18 = sext i32 %17 to i64, !dbg !43
  call void @klee_assume(i64 noundef %18), !dbg !45
  %19 = getelementptr inbounds [501 x i8], [501 x i8]* %4, i64 0, i64 0, !dbg !46
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !48
  %21 = call i8* @fgets(i8* noundef %19, i32 noundef 500, %struct._IO_FILE* noundef %20), !dbg !49
  %22 = icmp ne i8* %21, null, !dbg !49
  br i1 %22, label %24, label %23, !dbg !50

23:                                               ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !51
  br label %50, !dbg !51

24:                                               ; preds = %1
  %25 = getelementptr inbounds [501 x i8], [501 x i8]* %4, i64 0, i64 500, !dbg !53
  store i8 0, i8* %25, align 4, !dbg !54
  %26 = getelementptr inbounds [501 x i8], [501 x i8]* %4, i64 0, i64 0, !dbg !55
  %27 = call i64 @strlen(i8* noundef %26) #8, !dbg !56
  store i64 %27, i64* %6, align 8, !dbg !57
  %28 = load i64, i64* %6, align 8, !dbg !58
  %29 = add i64 %28, 1, !dbg !59
  %30 = call noalias i8* @malloc(i64 noundef %29) #9, !dbg !60
  store i8* %30, i8** %5, align 8, !dbg !61
  %31 = load i8*, i8** %5, align 8, !dbg !62
  %32 = icmp ne i8* %31, null, !dbg !64
  br i1 %32, label %33, label %48, !dbg !65

33:                                               ; preds = %24
  %34 = load i64, i64* %6, align 8, !dbg !66
  %35 = add i64 %34, 1, !dbg !66
  %36 = icmp ule i64 %35, 501, !dbg !66
  br i1 %36, label %37, label %39, !dbg !66

37:                                               ; preds = %33
  br i1 true, label %38, label %39, !dbg !66

38:                                               ; preds = %37
  br label %41, !dbg !66

39:                                               ; preds = %37, %33
  %40 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.4, i64 0, i64 0), i32 noundef 30, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.xmlShellReadline, i64 0, i64 0)), !dbg !66
  br label %41, !dbg !66

41:                                               ; preds = %39, %38
  %42 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.4, i64 0, i64 0), i32 noundef 31, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.xmlShellReadline, i64 0, i64 0)), !dbg !68
  %43 = load i8*, i8** %5, align 8, !dbg !69
  %44 = getelementptr inbounds [501 x i8], [501 x i8]* %4, i64 0, i64 0, !dbg !70
  %45 = load i64, i64* %6, align 8, !dbg !71
  %46 = add i64 %45, 1, !dbg !72
  %47 = call i8* @memcpy(i8* %43, i8* %44, i64 %46), !dbg !70
  br label %48, !dbg !73

48:                                               ; preds = %41, %24
  %49 = load i8*, i8** %5, align 8, !dbg !74
  store i8* %49, i8** %2, align 8, !dbg !75
  br label %50, !dbg !75

50:                                               ; preds = %48, %23
  %51 = load i8*, i8** %2, align 8, !dbg !76
  ret i8* %51, !dbg !76
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

declare i32 @fflush(%struct._IO_FILE* noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

declare i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !77 {
  %1 = alloca i32, align 4
  %2 = alloca [10 x i8], align 1
  %3 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [10 x i8]* %2, metadata !81, metadata !DIExpression()), !dbg !85
  %4 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0, !dbg !86
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 10, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)), !dbg !87
  %5 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 9, !dbg !88
  store i8 0, i8* %5, align 1, !dbg !89
  call void @llvm.dbg.declare(metadata i8** %3, metadata !90, metadata !DIExpression()), !dbg !91
  %6 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0, !dbg !92
  %7 = call i8* @xmlShellReadline(i8* noundef %6), !dbg !93
  store i8* %7, i8** %3, align 8, !dbg !91
  %8 = load i8*, i8** %3, align 8, !dbg !94
  %9 = icmp ne i8* %8, null, !dbg !96
  br i1 %9, label %10, label %12, !dbg !97

10:                                               ; preds = %0
  %11 = load i8*, i8** %3, align 8, !dbg !98
  call void @free(i8* noundef %11) #9, !dbg !100
  br label %12, !dbg !101

12:                                               ; preds = %10, %0
  ret i32 0, !dbg !102
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !103 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !109, metadata !DIExpression()), !dbg !110
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !111, metadata !DIExpression()), !dbg !112
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !113, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.declare(metadata i8** %7, metadata !115, metadata !DIExpression()), !dbg !116
  %9 = load i8*, i8** %4, align 8, !dbg !117
  store i8* %9, i8** %7, align 8, !dbg !116
  call void @llvm.dbg.declare(metadata i8** %8, metadata !118, metadata !DIExpression()), !dbg !119
  %10 = load i8*, i8** %5, align 8, !dbg !120
  store i8* %10, i8** %8, align 8, !dbg !119
  br label %11, !dbg !121

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !122
  %13 = add i64 %12, -1, !dbg !122
  store i64 %13, i64* %6, align 8, !dbg !122
  %14 = icmp ugt i64 %12, 0, !dbg !123
  br i1 %14, label %15, label %21, !dbg !121

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !124
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !124
  store i8* %17, i8** %8, align 8, !dbg !124
  %18 = load i8, i8* %16, align 1, !dbg !125
  %19 = load i8*, i8** %7, align 8, !dbg !126
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !126
  store i8* %20, i8** %7, align 8, !dbg !126
  store i8 %18, i8* %19, align 1, !dbg !127
  br label %11, !dbg !121, !llvm.loop !128

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !130
  ret i8* %22, !dbg !131
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
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/129_xmlcatalog.c_87_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "ef4ae5042419aa4248d11e56b7e8c90f")
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
!16 = distinct !DISubprogram(name: "xmlShellReadline", scope: !1, file: !1, line: 10, type: !17, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !21)
!17 = !DISubroutineType(types: !18)
!18 = !{!3, !19}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!21 = !{}
!22 = !DILocalVariable(name: "prompt", arg: 1, scope: !16, file: !1, line: 10, type: !19)
!23 = !DILocation(line: 10, column: 36, scope: !16)
!24 = !DILocalVariable(name: "line_read", scope: !16, file: !1, line: 11, type: !25)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 4008, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 501)
!28 = !DILocation(line: 11, column: 10, scope: !16)
!29 = !DILocalVariable(name: "ret", scope: !16, file: !1, line: 12, type: !3)
!30 = !DILocation(line: 12, column: 11, scope: !16)
!31 = !DILocalVariable(name: "len", scope: !16, file: !1, line: 13, type: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !33, line: 46, baseType: !34)
!33 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!34 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!35 = !DILocation(line: 13, column: 12, scope: !16)
!36 = !DILocation(line: 15, column: 13, scope: !16)
!37 = !DILocation(line: 15, column: 27, scope: !16)
!38 = !DILocation(line: 15, column: 5, scope: !16)
!39 = !DILocation(line: 16, column: 12, scope: !16)
!40 = !DILocation(line: 16, column: 5, scope: !16)
!41 = !DILocation(line: 18, column: 24, scope: !16)
!42 = !DILocation(line: 18, column: 5, scope: !16)
!43 = !DILocation(line: 19, column: 17, scope: !16)
!44 = !DILocation(line: 19, column: 32, scope: !16)
!45 = !DILocation(line: 19, column: 5, scope: !16)
!46 = !DILocation(line: 21, column: 16, scope: !47)
!47 = distinct !DILexicalBlock(scope: !16, file: !1, line: 21, column: 9)
!48 = !DILocation(line: 21, column: 32, scope: !47)
!49 = !DILocation(line: 21, column: 10, scope: !47)
!50 = !DILocation(line: 21, column: 9, scope: !16)
!51 = !DILocation(line: 22, column: 9, scope: !52)
!52 = distinct !DILexicalBlock(scope: !47, file: !1, line: 21, column: 40)
!53 = !DILocation(line: 25, column: 5, scope: !16)
!54 = !DILocation(line: 25, column: 20, scope: !16)
!55 = !DILocation(line: 26, column: 18, scope: !16)
!56 = !DILocation(line: 26, column: 11, scope: !16)
!57 = !DILocation(line: 26, column: 9, scope: !16)
!58 = !DILocation(line: 28, column: 27, scope: !16)
!59 = !DILocation(line: 28, column: 31, scope: !16)
!60 = !DILocation(line: 28, column: 20, scope: !16)
!61 = !DILocation(line: 28, column: 9, scope: !16)
!62 = !DILocation(line: 29, column: 9, scope: !63)
!63 = distinct !DILexicalBlock(scope: !16, file: !1, line: 29, column: 9)
!64 = !DILocation(line: 29, column: 13, scope: !63)
!65 = !DILocation(line: 29, column: 9, scope: !16)
!66 = !DILocation(line: 30, column: 9, scope: !67)
!67 = distinct !DILexicalBlock(scope: !63, file: !1, line: 29, column: 22)
!68 = !DILocation(line: 31, column: 9, scope: !67)
!69 = !DILocation(line: 32, column: 16, scope: !67)
!70 = !DILocation(line: 32, column: 9, scope: !67)
!71 = !DILocation(line: 32, column: 32, scope: !67)
!72 = !DILocation(line: 32, column: 36, scope: !67)
!73 = !DILocation(line: 33, column: 5, scope: !67)
!74 = !DILocation(line: 34, column: 12, scope: !16)
!75 = !DILocation(line: 34, column: 5, scope: !16)
!76 = !DILocation(line: 35, column: 1, scope: !16)
!77 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 37, type: !78, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !21)
!78 = !DISubroutineType(types: !79)
!79 = !{!80}
!80 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!81 = !DILocalVariable(name: "prompt", scope: !77, file: !1, line: 38, type: !82)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 10)
!85 = !DILocation(line: 38, column: 10, scope: !77)
!86 = !DILocation(line: 39, column: 24, scope: !77)
!87 = !DILocation(line: 39, column: 5, scope: !77)
!88 = !DILocation(line: 40, column: 5, scope: !77)
!89 = !DILocation(line: 40, column: 15, scope: !77)
!90 = !DILocalVariable(name: "result", scope: !77, file: !1, line: 42, type: !3)
!91 = !DILocation(line: 42, column: 11, scope: !77)
!92 = !DILocation(line: 42, column: 37, scope: !77)
!93 = !DILocation(line: 42, column: 20, scope: !77)
!94 = !DILocation(line: 43, column: 9, scope: !95)
!95 = distinct !DILexicalBlock(scope: !77, file: !1, line: 43, column: 9)
!96 = !DILocation(line: 43, column: 16, scope: !95)
!97 = !DILocation(line: 43, column: 9, scope: !77)
!98 = !DILocation(line: 44, column: 14, scope: !99)
!99 = distinct !DILexicalBlock(scope: !95, file: !1, line: 43, column: 25)
!100 = !DILocation(line: 44, column: 9, scope: !99)
!101 = !DILocation(line: 45, column: 5, scope: !99)
!102 = !DILocation(line: 47, column: 5, scope: !77)
!103 = distinct !DISubprogram(name: "memcpy", scope: !104, file: !104, line: 12, type: !105, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !21)
!104 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!105 = !DISubroutineType(types: !106)
!106 = !{!5, !5, !107, !32}
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!109 = !DILocalVariable(name: "destaddr", arg: 1, scope: !103, file: !104, line: 12, type: !5)
!110 = !DILocation(line: 12, column: 20, scope: !103)
!111 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !103, file: !104, line: 12, type: !107)
!112 = !DILocation(line: 12, column: 42, scope: !103)
!113 = !DILocalVariable(name: "len", arg: 3, scope: !103, file: !104, line: 12, type: !32)
!114 = !DILocation(line: 12, column: 58, scope: !103)
!115 = !DILocalVariable(name: "dest", scope: !103, file: !104, line: 13, type: !3)
!116 = !DILocation(line: 13, column: 9, scope: !103)
!117 = !DILocation(line: 13, column: 16, scope: !103)
!118 = !DILocalVariable(name: "src", scope: !103, file: !104, line: 14, type: !19)
!119 = !DILocation(line: 14, column: 15, scope: !103)
!120 = !DILocation(line: 14, column: 21, scope: !103)
!121 = !DILocation(line: 16, column: 3, scope: !103)
!122 = !DILocation(line: 16, column: 13, scope: !103)
!123 = !DILocation(line: 16, column: 16, scope: !103)
!124 = !DILocation(line: 17, column: 19, scope: !103)
!125 = !DILocation(line: 17, column: 15, scope: !103)
!126 = !DILocation(line: 17, column: 10, scope: !103)
!127 = !DILocation(line: 17, column: 13, scope: !103)
!128 = distinct !{!128, !121, !124, !129}
!129 = !{!"llvm.loop.mustprogress"}
!130 = !DILocation(line: 18, column: 10, scope: !103)
!131 = !DILocation(line: 18, column: 3, scope: !103)

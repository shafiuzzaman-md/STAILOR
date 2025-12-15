; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/095_testlimits.c_340_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/095_testlimits.c_340_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"instate\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"rlen\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"(len <= 1024) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_55980_vul/095_testlimits.c_340_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !10 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i64* %3, metadata !17, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i64* %4, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i8** %5, metadata !24, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata i8** %6, metadata !28, metadata !DIExpression()), !dbg !29
  %7 = bitcast i32* %2 to i8*, !dbg !30
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)), !dbg !31
  %8 = bitcast i64* %3 to i8*, !dbg !32
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !33
  %9 = bitcast i64* %4 to i8*, !dbg !34
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !dbg !35
  %10 = call noalias i8* @malloc(i64 noundef 1024) #5, !dbg !36
  store i8* %10, i8** %5, align 8, !dbg !37
  %11 = call noalias i8* @malloc(i64 noundef 1024) #5, !dbg !38
  store i8* %11, i8** %6, align 8, !dbg !39
  %12 = load i8*, i8** %5, align 8, !dbg !40
  %13 = icmp ne i8* %12, null, !dbg !40
  br i1 %13, label %14, label %17, !dbg !42

14:                                               ; preds = %0
  %15 = load i8*, i8** %6, align 8, !dbg !43
  %16 = icmp ne i8* %15, null, !dbg !43
  br i1 %16, label %28, label %17, !dbg !44

17:                                               ; preds = %14, %0
  %18 = load i8*, i8** %5, align 8, !dbg !45
  %19 = icmp ne i8* %18, null, !dbg !45
  br i1 %19, label %20, label %22, !dbg !48

20:                                               ; preds = %17
  %21 = load i8*, i8** %5, align 8, !dbg !49
  call void @free(i8* noundef %21) #5, !dbg !50
  br label %22, !dbg !50

22:                                               ; preds = %20, %17
  %23 = load i8*, i8** %6, align 8, !dbg !51
  %24 = icmp ne i8* %23, null, !dbg !51
  br i1 %24, label %25, label %27, !dbg !53

25:                                               ; preds = %22
  %26 = load i8*, i8** %6, align 8, !dbg !54
  call void @free(i8* noundef %26) #5, !dbg !55
  br label %27, !dbg !55

27:                                               ; preds = %25, %22
  store i32 1, i32* %1, align 4, !dbg !56
  br label %66, !dbg !56

28:                                               ; preds = %14
  %29 = load i8*, i8** %5, align 8, !dbg !57
  call void @klee_make_symbolic(i8* noundef %29, i64 noundef 1024, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)), !dbg !58
  %30 = load i8*, i8** %6, align 8, !dbg !59
  call void @klee_make_symbolic(i8* noundef %30, i64 noundef 1024, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)), !dbg !60
  %31 = load i32, i32* %2, align 4, !dbg !61
  %32 = icmp eq i32 %31, 0, !dbg !62
  %33 = zext i1 %32 to i32, !dbg !62
  %34 = sext i32 %33 to i64, !dbg !61
  call void @klee_assume(i64 noundef %34), !dbg !63
  %35 = load i64, i64* %3, align 8, !dbg !64
  %36 = load i64, i64* %4, align 8, !dbg !65
  %37 = icmp ult i64 %35, %36, !dbg !66
  %38 = zext i1 %37 to i32, !dbg !66
  %39 = sext i32 %38 to i64, !dbg !64
  call void @klee_assume(i64 noundef %39), !dbg !67
  %40 = load i64, i64* %4, align 8, !dbg !68
  %41 = icmp ugt i64 %40, 0, !dbg !69
  %42 = zext i1 %41 to i32, !dbg !69
  %43 = sext i32 %42 to i64, !dbg !68
  call void @klee_assume(i64 noundef %43), !dbg !70
  %44 = load i64, i64* %3, align 8, !dbg !71
  %45 = icmp ugt i64 %44, 0, !dbg !72
  %46 = zext i1 %45 to i32, !dbg !72
  %47 = sext i32 %46 to i64, !dbg !71
  call void @klee_assume(i64 noundef %47), !dbg !73
  %48 = load i64, i64* %4, align 8, !dbg !74
  %49 = icmp ule i64 %48, 1024, !dbg !75
  %50 = zext i1 %49 to i32, !dbg !75
  %51 = sext i32 %50 to i64, !dbg !74
  call void @klee_assume(i64 noundef %51), !dbg !76
  %52 = load i64, i64* %3, align 8, !dbg !77
  %53 = icmp ule i64 %52, 1024, !dbg !78
  %54 = zext i1 %53 to i32, !dbg !78
  %55 = sext i32 %54 to i64, !dbg !77
  call void @klee_assume(i64 noundef %55), !dbg !79
  %56 = load i64, i64* %3, align 8, !dbg !80
  %57 = icmp ule i64 %56, 1024, !dbg !80
  br i1 %57, label %58, label %60, !dbg !80

58:                                               ; preds = %28
  br i1 true, label %59, label %60, !dbg !80

59:                                               ; preds = %58
  br label %62, !dbg !80

60:                                               ; preds = %58, %28
  %61 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.7, i64 0, i64 0), i32 noundef 45, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !80
  br label %62, !dbg !80

62:                                               ; preds = %60, %59
  %63 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.7, i64 0, i64 0), i32 noundef 48, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !81
  %64 = load i8*, i8** %5, align 8, !dbg !82
  call void @free(i8* noundef %64) #5, !dbg !83
  %65 = load i8*, i8** %6, align 8, !dbg !84
  call void @free(i8* noundef %65) #5, !dbg !85
  store i32 0, i32* %1, align 4, !dbg !86
  br label %66, !dbg !86

66:                                               ; preds = %62, %27
  %67 = load i32, i32* %1, align 4, !dbg !87
  ret i32 %67, !dbg !87
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/095_testlimits.c_340_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "8747c53d894e716f303f83466ec48173")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.6"}
!10 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 10, type: !11, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "instate", scope: !10, file: !1, line: 12, type: !13)
!16 = !DILocation(line: 12, column: 9, scope: !10)
!17 = !DILocalVariable(name: "len", scope: !10, file: !1, line: 13, type: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !19, line: 46, baseType: !20)
!19 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!20 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!21 = !DILocation(line: 13, column: 12, scope: !10)
!22 = !DILocalVariable(name: "rlen", scope: !10, file: !1, line: 13, type: !18)
!23 = !DILocation(line: 13, column: 17, scope: !10)
!24 = !DILocalVariable(name: "buffer", scope: !10, file: !1, line: 14, type: !25)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!27 = !DILocation(line: 14, column: 11, scope: !10)
!28 = !DILocalVariable(name: "current", scope: !10, file: !1, line: 14, type: !25)
!29 = !DILocation(line: 14, column: 20, scope: !10)
!30 = !DILocation(line: 17, column: 24, scope: !10)
!31 = !DILocation(line: 17, column: 5, scope: !10)
!32 = !DILocation(line: 18, column: 24, scope: !10)
!33 = !DILocation(line: 18, column: 5, scope: !10)
!34 = !DILocation(line: 19, column: 24, scope: !10)
!35 = !DILocation(line: 19, column: 5, scope: !10)
!36 = !DILocation(line: 22, column: 14, scope: !10)
!37 = !DILocation(line: 22, column: 12, scope: !10)
!38 = !DILocation(line: 23, column: 15, scope: !10)
!39 = !DILocation(line: 23, column: 13, scope: !10)
!40 = !DILocation(line: 25, column: 10, scope: !41)
!41 = distinct !DILexicalBlock(scope: !10, file: !1, line: 25, column: 9)
!42 = !DILocation(line: 25, column: 17, scope: !41)
!43 = !DILocation(line: 25, column: 21, scope: !41)
!44 = !DILocation(line: 25, column: 9, scope: !10)
!45 = !DILocation(line: 26, column: 13, scope: !46)
!46 = distinct !DILexicalBlock(scope: !47, file: !1, line: 26, column: 13)
!47 = distinct !DILexicalBlock(scope: !41, file: !1, line: 25, column: 30)
!48 = !DILocation(line: 26, column: 13, scope: !47)
!49 = !DILocation(line: 26, column: 26, scope: !46)
!50 = !DILocation(line: 26, column: 21, scope: !46)
!51 = !DILocation(line: 27, column: 13, scope: !52)
!52 = distinct !DILexicalBlock(scope: !47, file: !1, line: 27, column: 13)
!53 = !DILocation(line: 27, column: 13, scope: !47)
!54 = !DILocation(line: 27, column: 27, scope: !52)
!55 = !DILocation(line: 27, column: 22, scope: !52)
!56 = !DILocation(line: 28, column: 9, scope: !47)
!57 = !DILocation(line: 31, column: 24, scope: !10)
!58 = !DILocation(line: 31, column: 5, scope: !10)
!59 = !DILocation(line: 32, column: 24, scope: !10)
!60 = !DILocation(line: 32, column: 5, scope: !10)
!61 = !DILocation(line: 35, column: 17, scope: !10)
!62 = !DILocation(line: 35, column: 25, scope: !10)
!63 = !DILocation(line: 35, column: 5, scope: !10)
!64 = !DILocation(line: 36, column: 17, scope: !10)
!65 = !DILocation(line: 36, column: 23, scope: !10)
!66 = !DILocation(line: 36, column: 21, scope: !10)
!67 = !DILocation(line: 36, column: 5, scope: !10)
!68 = !DILocation(line: 37, column: 17, scope: !10)
!69 = !DILocation(line: 37, column: 22, scope: !10)
!70 = !DILocation(line: 37, column: 5, scope: !10)
!71 = !DILocation(line: 38, column: 17, scope: !10)
!72 = !DILocation(line: 38, column: 21, scope: !10)
!73 = !DILocation(line: 38, column: 5, scope: !10)
!74 = !DILocation(line: 41, column: 17, scope: !10)
!75 = !DILocation(line: 41, column: 22, scope: !10)
!76 = !DILocation(line: 41, column: 5, scope: !10)
!77 = !DILocation(line: 42, column: 17, scope: !10)
!78 = !DILocation(line: 42, column: 21, scope: !10)
!79 = !DILocation(line: 42, column: 5, scope: !10)
!80 = !DILocation(line: 45, column: 5, scope: !10)
!81 = !DILocation(line: 48, column: 5, scope: !10)
!82 = !DILocation(line: 51, column: 10, scope: !10)
!83 = !DILocation(line: 51, column: 5, scope: !10)
!84 = !DILocation(line: 52, column: 10, scope: !10)
!85 = !DILocation(line: 52, column: 5, scope: !10)
!86 = !DILocation(line: 54, column: 5, scope: !10)
!87 = !DILocation(line: 55, column: 1, scope: !10)

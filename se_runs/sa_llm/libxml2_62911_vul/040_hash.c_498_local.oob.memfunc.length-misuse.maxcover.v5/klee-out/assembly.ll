; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/040_hash.c_498_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/040_hash.c_498_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"name2\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"name3\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"lengths_array\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"(lengths_array[1] + 1 <= 256) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.8 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_62911_vul/040_hash.c_498_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !10 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !18, metadata !DIExpression()), !dbg !19
  %3 = load i64, i64* %2, align 8, !dbg !20
  %4 = call noalias i8* @malloc(i64 noundef %3) #5, !dbg !21
  ret i8* %4, !dbg !22
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !23 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !26, metadata !DIExpression()), !dbg !27
  %3 = load i8*, i8** %2, align 8, !dbg !28
  call void @free(i8* noundef %3) #5, !dbg !29
  ret void, !dbg !30
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !31 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca [256 x i8], align 16
  %4 = alloca [256 x i8], align 16
  %5 = alloca [256 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [3 x i32], align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !37, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata [256 x i8]* %4, metadata !43, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.declare(metadata [256 x i8]* %5, metadata !45, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.declare(metadata i8** %6, metadata !47, metadata !DIExpression()), !dbg !48
  %9 = bitcast i8** %2 to i8*, !dbg !49
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 8, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)), !dbg !50
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !51
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 256, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !52
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !53
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 256, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)), !dbg !54
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !55
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 256, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)), !dbg !56
  %13 = bitcast i8** %6 to i8*, !dbg !57
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 8, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)), !dbg !58
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !59
  %15 = load i8, i8* %14, align 16, !dbg !59
  %16 = sext i8 %15 to i32, !dbg !59
  %17 = icmp ne i32 %16, 0, !dbg !60
  %18 = zext i1 %17 to i32, !dbg !60
  %19 = sext i32 %18 to i64, !dbg !59
  call void @klee_assume(i64 noundef %19), !dbg !61
  call void @llvm.dbg.declare(metadata i32* %7, metadata !62, metadata !DIExpression()), !dbg !63
  %20 = load i8*, i8** %2, align 8, !dbg !64
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !65
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !66
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !67
  %24 = load i8*, i8** %6, align 8, !dbg !68
  %25 = call i32 @xmlHashRemoveEntry3(i8* noundef %20, i8* noundef %21, i8* noundef %22, i8* noundef %23, i8* noundef %24), !dbg !69
  store i32 %25, i32* %7, align 4, !dbg !63
  call void @llvm.dbg.declare(metadata [3 x i32]* %8, metadata !70, metadata !DIExpression()), !dbg !74
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0, !dbg !75
  %27 = bitcast i32* %26 to i8*, !dbg !75
  call void @klee_make_symbolic(i8* noundef %27, i64 noundef 12, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0)), !dbg !76
  %28 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1, !dbg !77
  %29 = load i32, i32* %28, align 4, !dbg !77
  %30 = icmp sge i32 %29, 0, !dbg !78
  %31 = zext i1 %30 to i32, !dbg !78
  %32 = sext i32 %31 to i64, !dbg !77
  call void @klee_assume(i64 noundef %32), !dbg !79
  %33 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1, !dbg !80
  %34 = load i32, i32* %33, align 4, !dbg !80
  %35 = add nsw i32 %34, 1, !dbg !80
  %36 = icmp sle i32 %35, 256, !dbg !80
  br i1 %36, label %37, label %39, !dbg !80

37:                                               ; preds = %0
  br i1 true, label %38, label %39, !dbg !80

38:                                               ; preds = %37
  br label %41, !dbg !80

39:                                               ; preds = %37, %0
  %40 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.8, i64 0, i64 0), i32 noundef 57, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !80
  br label %41, !dbg !80

41:                                               ; preds = %39, %38
  %42 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.8, i64 0, i64 0), i32 noundef 60, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !81
  ret i32 0, !dbg !82
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

declare i32 @xmlHashRemoveEntry3(i8* noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/040_hash.c_498_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "0c5e77a6bfe7cb716f0298c85ac3580c")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.6"}
!10 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 10, type: !11, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !17)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !15, line: 46, baseType: !16)
!15 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!16 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!17 = !{}
!18 = !DILocalVariable(name: "size", arg: 1, scope: !10, file: !1, line: 10, type: !14)
!19 = !DILocation(line: 10, column: 24, scope: !10)
!20 = !DILocation(line: 11, column: 19, scope: !10)
!21 = !DILocation(line: 11, column: 12, scope: !10)
!22 = !DILocation(line: 11, column: 5, scope: !10)
!23 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 14, type: !24, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !17)
!24 = !DISubroutineType(types: !25)
!25 = !{null, !13}
!26 = !DILocalVariable(name: "ptr", arg: 1, scope: !23, file: !1, line: 14, type: !13)
!27 = !DILocation(line: 14, column: 20, scope: !23)
!28 = !DILocation(line: 15, column: 10, scope: !23)
!29 = !DILocation(line: 15, column: 5, scope: !23)
!30 = !DILocation(line: 16, column: 1, scope: !23)
!31 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 22, type: !32, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !17)
!32 = !DISubroutineType(types: !33)
!33 = !{!34}
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DILocalVariable(name: "table", scope: !31, file: !1, line: 24, type: !13)
!36 = !DILocation(line: 24, column: 11, scope: !31)
!37 = !DILocalVariable(name: "name", scope: !31, file: !1, line: 25, type: !38)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 2048, elements: !40)
!39 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!40 = !{!41}
!41 = !DISubrange(count: 256)
!42 = !DILocation(line: 25, column: 10, scope: !31)
!43 = !DILocalVariable(name: "name2", scope: !31, file: !1, line: 26, type: !38)
!44 = !DILocation(line: 26, column: 10, scope: !31)
!45 = !DILocalVariable(name: "name3", scope: !31, file: !1, line: 27, type: !38)
!46 = !DILocation(line: 27, column: 10, scope: !31)
!47 = !DILocalVariable(name: "f", scope: !31, file: !1, line: 28, type: !13)
!48 = !DILocation(line: 28, column: 11, scope: !31)
!49 = !DILocation(line: 31, column: 24, scope: !31)
!50 = !DILocation(line: 31, column: 5, scope: !31)
!51 = !DILocation(line: 32, column: 24, scope: !31)
!52 = !DILocation(line: 32, column: 5, scope: !31)
!53 = !DILocation(line: 33, column: 24, scope: !31)
!54 = !DILocation(line: 33, column: 5, scope: !31)
!55 = !DILocation(line: 34, column: 24, scope: !31)
!56 = !DILocation(line: 34, column: 5, scope: !31)
!57 = !DILocation(line: 35, column: 24, scope: !31)
!58 = !DILocation(line: 35, column: 5, scope: !31)
!59 = !DILocation(line: 38, column: 17, scope: !31)
!60 = !DILocation(line: 38, column: 26, scope: !31)
!61 = !DILocation(line: 38, column: 5, scope: !31)
!62 = !DILocalVariable(name: "result", scope: !31, file: !1, line: 41, type: !34)
!63 = !DILocation(line: 41, column: 9, scope: !31)
!64 = !DILocation(line: 41, column: 38, scope: !31)
!65 = !DILocation(line: 41, column: 45, scope: !31)
!66 = !DILocation(line: 41, column: 51, scope: !31)
!67 = !DILocation(line: 41, column: 58, scope: !31)
!68 = !DILocation(line: 41, column: 65, scope: !31)
!69 = !DILocation(line: 41, column: 18, scope: !31)
!70 = !DILocalVariable(name: "lengths_array", scope: !31, file: !1, line: 50, type: !71)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 96, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 3)
!74 = !DILocation(line: 50, column: 9, scope: !31)
!75 = !DILocation(line: 51, column: 24, scope: !31)
!76 = !DILocation(line: 51, column: 5, scope: !31)
!77 = !DILocation(line: 54, column: 17, scope: !31)
!78 = !DILocation(line: 54, column: 34, scope: !31)
!79 = !DILocation(line: 54, column: 5, scope: !31)
!80 = !DILocation(line: 57, column: 5, scope: !31)
!81 = !DILocation(line: 60, column: 5, scope: !31)
!82 = !DILocation(line: 62, column: 5, scope: !31)

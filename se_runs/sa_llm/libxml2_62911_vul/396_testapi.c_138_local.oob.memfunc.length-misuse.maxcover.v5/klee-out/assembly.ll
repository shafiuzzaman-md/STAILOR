; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/396_testapi.c_138_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/396_testapi.c_138_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"chartab_size\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"memset_len\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"(memset_len <= chartab_size) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_62911_vul/396_testapi.c_138_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlInitParser() #0 !dbg !15 {
  ret void, !dbg !19
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlInitializeCatalog() #0 !dbg !20 {
  ret void, !dbg !21
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !22 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i64* %2, metadata !26, metadata !DIExpression()), !dbg !30
  %5 = bitcast i64* %2 to i8*, !dbg !31
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 8, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0)), !dbg !32
  %6 = load i64, i64* %2, align 8, !dbg !33
  %7 = icmp ugt i64 %6, 0, !dbg !34
  br i1 %7, label %8, label %11, !dbg !35

8:                                                ; preds = %0
  %9 = load i64, i64* %2, align 8, !dbg !36
  %10 = icmp ule i64 %9, 1024, !dbg !37
  br label %11

11:                                               ; preds = %8, %0
  %12 = phi i1 [ false, %0 ], [ %10, %8 ], !dbg !38
  %13 = zext i1 %12 to i32, !dbg !35
  %14 = sext i32 %13 to i64, !dbg !33
  call void @klee_assume(i64 noundef %14), !dbg !39
  call void @llvm.dbg.declare(metadata i8** %3, metadata !40, metadata !DIExpression()), !dbg !41
  %15 = load i64, i64* %2, align 8, !dbg !42
  %16 = call noalias i8* @malloc(i64 noundef %15) #7, !dbg !43
  store i8* %16, i8** %3, align 8, !dbg !41
  %17 = load i8*, i8** %3, align 8, !dbg !44
  %18 = icmp ne i8* %17, null, !dbg !44
  br i1 %18, label %20, label %19, !dbg !46

19:                                               ; preds = %11
  store i32 0, i32* %1, align 4, !dbg !47
  br label %44, !dbg !47

20:                                               ; preds = %11
  call void @llvm.dbg.declare(metadata i64* %4, metadata !49, metadata !DIExpression()), !dbg !50
  %21 = bitcast i64* %4 to i8*, !dbg !51
  call void @klee_make_symbolic(i8* noundef %21, i64 noundef 8, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)), !dbg !52
  %22 = load i64, i64* %4, align 8, !dbg !53
  %23 = icmp ugt i64 %22, 0, !dbg !54
  br i1 %23, label %24, label %27, !dbg !55

24:                                               ; preds = %20
  %25 = load i64, i64* %4, align 8, !dbg !56
  %26 = icmp ule i64 %25, 2048, !dbg !57
  br label %27

27:                                               ; preds = %24, %20
  %28 = phi i1 [ false, %20 ], [ %26, %24 ], !dbg !38
  %29 = zext i1 %28 to i32, !dbg !55
  %30 = sext i32 %29 to i64, !dbg !53
  call void @klee_assume(i64 noundef %30), !dbg !58
  %31 = load i64, i64* %4, align 8, !dbg !59
  %32 = load i64, i64* %2, align 8, !dbg !59
  %33 = icmp ule i64 %31, %32, !dbg !59
  br i1 %33, label %34, label %36, !dbg !59

34:                                               ; preds = %27
  br i1 true, label %35, label %36, !dbg !59

35:                                               ; preds = %34
  br label %38, !dbg !59

36:                                               ; preds = %34, %27
  %37 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.4, i64 0, i64 0), i32 noundef 65, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !59
  br label %38, !dbg !59

38:                                               ; preds = %36, %35
  %39 = load i8*, i8** %3, align 8, !dbg !60
  %40 = load i64, i64* %4, align 8, !dbg !61
  %41 = call i8* @memset(i8* %39, i32 0, i64 %40), !dbg !62
  %42 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.4, i64 0, i64 0), i32 noundef 71, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !63
  %43 = load i8*, i8** %3, align 8, !dbg !64
  call void @free(i8* noundef %43) #7, !dbg !65
  store i32 0, i32* %1, align 4, !dbg !66
  br label %44, !dbg !66

44:                                               ; preds = %38, %19
  %45 = load i32, i32* %1, align 4, !dbg !67
  ret i32 %45, !dbg !67
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !68 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !73, metadata !DIExpression()), !dbg !74
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !75, metadata !DIExpression()), !dbg !76
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !77, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.declare(metadata i8** %7, metadata !79, metadata !DIExpression()), !dbg !82
  %8 = load i8*, i8** %4, align 8, !dbg !83
  store i8* %8, i8** %7, align 8, !dbg !82
  br label %9, !dbg !84

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !85
  %11 = add i64 %10, -1, !dbg !85
  store i64 %11, i64* %6, align 8, !dbg !85
  %12 = icmp ugt i64 %10, 0, !dbg !86
  br i1 %12, label %13, label %18, !dbg !84

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !87
  %15 = trunc i32 %14 to i8, !dbg !87
  %16 = load i8*, i8** %7, align 8, !dbg !88
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !88
  store i8* %17, i8** %7, align 8, !dbg !88
  store i8 %15, i8* %16, align 1, !dbg !89
  br label %9, !dbg !84, !llvm.loop !90

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !92
  ret i8* %19, !dbg !93
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !5}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14, !14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/396_testapi.c_138_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "3b8a93f5fed68cf74c2af8ebeb40e7e7")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = distinct !DICompileUnit(language: DW_LANG_C99, file: !6, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!6 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!7 = !{i32 7, !"Dwarf Version", i32 5}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{i32 7, !"PIC Level", i32 2}
!11 = !{i32 7, !"PIE Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"Ubuntu clang version 14.0.6"}
!15 = distinct !DISubprogram(name: "xmlInitParser", scope: !1, file: !1, line: 10, type: !16, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!16 = !DISubroutineType(types: !17)
!17 = !{null}
!18 = !{}
!19 = !DILocation(line: 12, column: 1, scope: !15)
!20 = distinct !DISubprogram(name: "xmlInitializeCatalog", scope: !1, file: !1, line: 15, type: !16, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!21 = !DILocation(line: 17, column: 1, scope: !20)
!22 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 19, type: !23, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!23 = !DISubroutineType(types: !24)
!24 = !{!25}
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DILocalVariable(name: "chartab_size", scope: !22, file: !1, line: 44, type: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !28, line: 46, baseType: !29)
!28 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!29 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!30 = !DILocation(line: 44, column: 12, scope: !22)
!31 = !DILocation(line: 45, column: 24, scope: !22)
!32 = !DILocation(line: 45, column: 5, scope: !22)
!33 = !DILocation(line: 47, column: 17, scope: !22)
!34 = !DILocation(line: 47, column: 30, scope: !22)
!35 = !DILocation(line: 47, column: 34, scope: !22)
!36 = !DILocation(line: 47, column: 37, scope: !22)
!37 = !DILocation(line: 47, column: 50, scope: !22)
!38 = !DILocation(line: 0, scope: !22)
!39 = !DILocation(line: 47, column: 5, scope: !22)
!40 = !DILocalVariable(name: "chartab", scope: !22, file: !1, line: 50, type: !3)
!41 = !DILocation(line: 50, column: 20, scope: !22)
!42 = !DILocation(line: 50, column: 54, scope: !22)
!43 = !DILocation(line: 50, column: 47, scope: !22)
!44 = !DILocation(line: 51, column: 10, scope: !45)
!45 = distinct !DILexicalBlock(scope: !22, file: !1, line: 51, column: 9)
!46 = !DILocation(line: 51, column: 9, scope: !22)
!47 = !DILocation(line: 52, column: 9, scope: !48)
!48 = distinct !DILexicalBlock(scope: !45, file: !1, line: 51, column: 19)
!49 = !DILocalVariable(name: "memset_len", scope: !22, file: !1, line: 59, type: !27)
!50 = !DILocation(line: 59, column: 12, scope: !22)
!51 = !DILocation(line: 60, column: 24, scope: !22)
!52 = !DILocation(line: 60, column: 5, scope: !22)
!53 = !DILocation(line: 62, column: 17, scope: !22)
!54 = !DILocation(line: 62, column: 28, scope: !22)
!55 = !DILocation(line: 62, column: 32, scope: !22)
!56 = !DILocation(line: 62, column: 35, scope: !22)
!57 = !DILocation(line: 62, column: 46, scope: !22)
!58 = !DILocation(line: 62, column: 5, scope: !22)
!59 = !DILocation(line: 65, column: 5, scope: !22)
!60 = !DILocation(line: 68, column: 12, scope: !22)
!61 = !DILocation(line: 68, column: 24, scope: !22)
!62 = !DILocation(line: 68, column: 5, scope: !22)
!63 = !DILocation(line: 71, column: 5, scope: !22)
!64 = !DILocation(line: 74, column: 10, scope: !22)
!65 = !DILocation(line: 74, column: 5, scope: !22)
!66 = !DILocation(line: 76, column: 5, scope: !22)
!67 = !DILocation(line: 77, column: 1, scope: !22)
!68 = distinct !DISubprogram(name: "memset", scope: !69, file: !69, line: 12, type: !70, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !18)
!69 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!70 = !DISubroutineType(types: !71)
!71 = !{!72, !72, !25, !27}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!73 = !DILocalVariable(name: "dst", arg: 1, scope: !68, file: !69, line: 12, type: !72)
!74 = !DILocation(line: 12, column: 20, scope: !68)
!75 = !DILocalVariable(name: "s", arg: 2, scope: !68, file: !69, line: 12, type: !25)
!76 = !DILocation(line: 12, column: 29, scope: !68)
!77 = !DILocalVariable(name: "count", arg: 3, scope: !68, file: !69, line: 12, type: !27)
!78 = !DILocation(line: 12, column: 39, scope: !68)
!79 = !DILocalVariable(name: "a", scope: !68, file: !69, line: 13, type: !80)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!82 = !DILocation(line: 13, column: 9, scope: !68)
!83 = !DILocation(line: 13, column: 13, scope: !68)
!84 = !DILocation(line: 14, column: 3, scope: !68)
!85 = !DILocation(line: 14, column: 15, scope: !68)
!86 = !DILocation(line: 14, column: 18, scope: !68)
!87 = !DILocation(line: 15, column: 12, scope: !68)
!88 = !DILocation(line: 15, column: 7, scope: !68)
!89 = !DILocation(line: 15, column: 10, scope: !68)
!90 = distinct !{!90, !84, !87, !91}
!91 = !{!"llvm.loop.mustprogress"}
!92 = !DILocation(line: 16, column: 10, scope: !68)
!93 = !DILocation(line: 16, column: 3, scope: !68)

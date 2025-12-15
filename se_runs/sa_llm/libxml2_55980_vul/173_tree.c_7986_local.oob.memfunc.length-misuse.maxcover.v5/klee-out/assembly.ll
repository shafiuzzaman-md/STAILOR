; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/173_tree.c_7986_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/173_tree.c_7986_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.xmlNsMap = type { i8* }

@.str = private unnamed_addr constant [6 x i8] c"nsmap\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"allocating namespace map\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_55980_vul/173_tree.c_7986_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.target_function = private unnamed_addr constant [43 x i8] c"xmlNsMapPtr target_function(xmlNsMapPtr *)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlTreeErrMemory(i8* noundef %0) #0 !dbg !19 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !26, metadata !DIExpression()), !dbg !27
  ret void, !dbg !28
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !29 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !35, metadata !DIExpression()), !dbg !36
  %3 = load i64, i64* %2, align 8, !dbg !37
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !38
  ret i8* %4, !dbg !39
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !40 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.xmlNsMap*, align 8
  %3 = alloca %struct.xmlNsMap*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.xmlNsMap** %2, metadata !44, metadata !DIExpression()), !dbg !45
  store %struct.xmlNsMap* null, %struct.xmlNsMap** %2, align 8, !dbg !45
  call void @llvm.dbg.declare(metadata %struct.xmlNsMap** %3, metadata !46, metadata !DIExpression()), !dbg !47
  %4 = bitcast %struct.xmlNsMap** %2 to i8*, !dbg !48
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 8, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)), !dbg !49
  %5 = load %struct.xmlNsMap*, %struct.xmlNsMap** %2, align 8, !dbg !50
  %6 = icmp ne %struct.xmlNsMap* %5, null, !dbg !51
  %7 = zext i1 %6 to i32, !dbg !51
  %8 = sext i32 %7 to i64, !dbg !50
  call void @klee_assume(i64 noundef %8), !dbg !52
  %9 = call %struct.xmlNsMap* @target_function(%struct.xmlNsMap** noundef %2), !dbg !53
  store %struct.xmlNsMap* %9, %struct.xmlNsMap** %3, align 8, !dbg !54
  %10 = load %struct.xmlNsMap*, %struct.xmlNsMap** %3, align 8, !dbg !55
  %11 = icmp ne %struct.xmlNsMap* %10, null, !dbg !57
  br i1 %11, label %12, label %15, !dbg !58

12:                                               ; preds = %0
  %13 = load %struct.xmlNsMap*, %struct.xmlNsMap** %3, align 8, !dbg !59
  %14 = bitcast %struct.xmlNsMap* %13 to i8*, !dbg !59
  call void @free(i8* noundef %14) #7, !dbg !61
  br label %15, !dbg !62

15:                                               ; preds = %12, %0
  ret i32 0, !dbg !63
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xmlNsMap* @target_function(%struct.xmlNsMap** noundef %0) #0 !dbg !64 {
  %2 = alloca %struct.xmlNsMap*, align 8
  %3 = alloca %struct.xmlNsMap**, align 8
  %4 = alloca %struct.xmlNsMap*, align 8
  store %struct.xmlNsMap** %0, %struct.xmlNsMap*** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.xmlNsMap*** %3, metadata !68, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata %struct.xmlNsMap** %4, metadata !70, metadata !DIExpression()), !dbg !71
  %5 = call i8* @xmlMalloc(i64 noundef 8), !dbg !72
  %6 = bitcast i8* %5 to %struct.xmlNsMap*, !dbg !73
  store %struct.xmlNsMap* %6, %struct.xmlNsMap** %4, align 8, !dbg !74
  %7 = load %struct.xmlNsMap*, %struct.xmlNsMap** %4, align 8, !dbg !75
  %8 = icmp eq %struct.xmlNsMap* %7, null, !dbg !77
  br i1 %8, label %9, label %10, !dbg !78

9:                                                ; preds = %1
  call void @xmlTreeErrMemory(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0)), !dbg !79
  store %struct.xmlNsMap* null, %struct.xmlNsMap** %2, align 8, !dbg !81
  br label %18, !dbg !81

10:                                               ; preds = %1
  %11 = load %struct.xmlNsMap*, %struct.xmlNsMap** %4, align 8, !dbg !82
  %12 = bitcast %struct.xmlNsMap* %11 to i8*, !dbg !83
  %13 = call i8* @memset(i8* %12, i32 0, i64 8), !dbg !83
  %14 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.3, i64 0, i64 0), i32 noundef 44, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !84
  %15 = load %struct.xmlNsMap*, %struct.xmlNsMap** %4, align 8, !dbg !85
  %16 = load %struct.xmlNsMap**, %struct.xmlNsMap*** %3, align 8, !dbg !86
  store %struct.xmlNsMap* %15, %struct.xmlNsMap** %16, align 8, !dbg !87
  %17 = load %struct.xmlNsMap*, %struct.xmlNsMap** %4, align 8, !dbg !88
  store %struct.xmlNsMap* %17, %struct.xmlNsMap** %2, align 8, !dbg !89
  br label %18, !dbg !89

18:                                               ; preds = %10, %9
  %19 = load %struct.xmlNsMap*, %struct.xmlNsMap** %2, align 8, !dbg !90
  ret %struct.xmlNsMap* %19, !dbg !90
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !91 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !95, metadata !DIExpression()), !dbg !96
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !97, metadata !DIExpression()), !dbg !98
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !99, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.declare(metadata i8** %7, metadata !101, metadata !DIExpression()), !dbg !103
  %8 = load i8*, i8** %4, align 8, !dbg !104
  store i8* %8, i8** %7, align 8, !dbg !103
  br label %9, !dbg !105

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !106
  %11 = add i64 %10, -1, !dbg !106
  store i64 %11, i64* %6, align 8, !dbg !106
  %12 = icmp ugt i64 %10, 0, !dbg !107
  br i1 %12, label %13, label %18, !dbg !105

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !108
  %15 = trunc i32 %14 to i8, !dbg !108
  %16 = load i8*, i8** %7, align 8, !dbg !109
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !109
  store i8* %17, i8** %7, align 8, !dbg !109
  store i8 %15, i8* %16, align 1, !dbg !110
  br label %9, !dbg !105, !llvm.loop !111

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !113
  ret i8* %19, !dbg !114
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18, !18}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/173_tree.c_7986_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "074a51ac335f1517b29992e148bb21e7")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsMapPtr", file: !1, line: 13, baseType: !5)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xmlNsMap", file: !1, line: 10, size: 64, elements: !7)
!7 = !{!8}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !6, file: !1, line: 11, baseType: !3, size: 64)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!11 = !{i32 7, !"Dwarf Version", i32 5}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{i32 7, !"PIC Level", i32 2}
!15 = !{i32 7, !"PIE Level", i32 2}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"Ubuntu clang version 14.0.6"}
!19 = distinct !DISubprogram(name: "xmlTreeErrMemory", scope: !1, file: !1, line: 16, type: !20, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!20 = !DISubroutineType(types: !21)
!21 = !{null, !22}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!24 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!25 = !{}
!26 = !DILocalVariable(name: "msg", arg: 1, scope: !19, file: !1, line: 16, type: !22)
!27 = !DILocation(line: 16, column: 35, scope: !19)
!28 = !DILocation(line: 18, column: 1, scope: !19)
!29 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 20, type: !30, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!30 = !DISubroutineType(types: !31)
!31 = !{!3, !32}
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !33, line: 46, baseType: !34)
!33 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!34 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!35 = !DILocalVariable(name: "size", arg: 1, scope: !29, file: !1, line: 20, type: !32)
!36 = !DILocation(line: 20, column: 24, scope: !29)
!37 = !DILocation(line: 21, column: 19, scope: !29)
!38 = !DILocation(line: 21, column: 12, scope: !29)
!39 = !DILocation(line: 21, column: 5, scope: !29)
!40 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 50, type: !41, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!41 = !DISubroutineType(types: !42)
!42 = !{!43}
!43 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!44 = !DILocalVariable(name: "nsmap", scope: !40, file: !1, line: 51, type: !4)
!45 = !DILocation(line: 51, column: 17, scope: !40)
!46 = !DILocalVariable(name: "result", scope: !40, file: !1, line: 52, type: !4)
!47 = !DILocation(line: 52, column: 17, scope: !40)
!48 = !DILocation(line: 55, column: 24, scope: !40)
!49 = !DILocation(line: 55, column: 5, scope: !40)
!50 = !DILocation(line: 58, column: 17, scope: !40)
!51 = !DILocation(line: 58, column: 23, scope: !40)
!52 = !DILocation(line: 58, column: 5, scope: !40)
!53 = !DILocation(line: 61, column: 14, scope: !40)
!54 = !DILocation(line: 61, column: 12, scope: !40)
!55 = !DILocation(line: 64, column: 9, scope: !56)
!56 = distinct !DILexicalBlock(scope: !40, file: !1, line: 64, column: 9)
!57 = !DILocation(line: 64, column: 16, scope: !56)
!58 = !DILocation(line: 64, column: 9, scope: !40)
!59 = !DILocation(line: 65, column: 14, scope: !60)
!60 = distinct !DILexicalBlock(scope: !56, file: !1, line: 64, column: 25)
!61 = !DILocation(line: 65, column: 9, scope: !60)
!62 = !DILocation(line: 66, column: 5, scope: !60)
!63 = !DILocation(line: 68, column: 5, scope: !40)
!64 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 25, type: !65, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !25)
!65 = !DISubroutineType(types: !66)
!66 = !{!4, !67}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!68 = !DILocalVariable(name: "nsmap", arg: 1, scope: !64, file: !1, line: 25, type: !67)
!69 = !DILocation(line: 25, column: 49, scope: !64)
!70 = !DILocalVariable(name: "map", scope: !64, file: !1, line: 26, type: !4)
!71 = !DILocation(line: 26, column: 17, scope: !64)
!72 = !DILocation(line: 31, column: 25, scope: !64)
!73 = !DILocation(line: 31, column: 11, scope: !64)
!74 = !DILocation(line: 31, column: 9, scope: !64)
!75 = !DILocation(line: 32, column: 9, scope: !76)
!76 = distinct !DILexicalBlock(scope: !64, file: !1, line: 32, column: 9)
!77 = !DILocation(line: 32, column: 13, scope: !76)
!78 = !DILocation(line: 32, column: 9, scope: !64)
!79 = !DILocation(line: 33, column: 9, scope: !80)
!80 = distinct !DILexicalBlock(scope: !76, file: !1, line: 32, column: 22)
!81 = !DILocation(line: 34, column: 9, scope: !80)
!82 = !DILocation(line: 38, column: 12, scope: !64)
!83 = !DILocation(line: 38, column: 5, scope: !64)
!84 = !DILocation(line: 44, column: 5, scope: !64)
!85 = !DILocation(line: 46, column: 14, scope: !64)
!86 = !DILocation(line: 46, column: 6, scope: !64)
!87 = !DILocation(line: 46, column: 12, scope: !64)
!88 = !DILocation(line: 47, column: 12, scope: !64)
!89 = !DILocation(line: 47, column: 5, scope: !64)
!90 = !DILocation(line: 48, column: 1, scope: !64)
!91 = distinct !DISubprogram(name: "memset", scope: !92, file: !92, line: 12, type: !93, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !25)
!92 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!93 = !DISubroutineType(types: !94)
!94 = !{!3, !3, !43, !32}
!95 = !DILocalVariable(name: "dst", arg: 1, scope: !91, file: !92, line: 12, type: !3)
!96 = !DILocation(line: 12, column: 20, scope: !91)
!97 = !DILocalVariable(name: "s", arg: 2, scope: !91, file: !92, line: 12, type: !43)
!98 = !DILocation(line: 12, column: 29, scope: !91)
!99 = !DILocalVariable(name: "count", arg: 3, scope: !91, file: !92, line: 12, type: !32)
!100 = !DILocation(line: 12, column: 39, scope: !91)
!101 = !DILocalVariable(name: "a", scope: !91, file: !92, line: 13, type: !102)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!103 = !DILocation(line: 13, column: 9, scope: !91)
!104 = !DILocation(line: 13, column: 13, scope: !91)
!105 = !DILocation(line: 14, column: 3, scope: !91)
!106 = !DILocation(line: 14, column: 15, scope: !91)
!107 = !DILocation(line: 14, column: 18, scope: !91)
!108 = !DILocation(line: 15, column: 12, scope: !91)
!109 = !DILocation(line: 15, column: 7, scope: !91)
!110 = !DILocation(line: 15, column: 10, scope: !91)
!111 = distinct !{!111, !105, !108, !112}
!112 = !{!"llvm.loop.mustprogress"}
!113 = !DILocation(line: 16, column: 10, scope: !91)
!114 = !DILocation(line: 16, column: 3, scope: !91)

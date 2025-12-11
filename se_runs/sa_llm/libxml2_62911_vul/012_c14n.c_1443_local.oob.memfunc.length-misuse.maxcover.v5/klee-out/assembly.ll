; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/012_c14n.c_1443_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/012_c14n.c_1443_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlC14NVisibleNsStackState = type { i32 }
%struct._xmlC14NCtxt = type { i8*, i32 }

@.str = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.1 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/012_c14n.c_1443_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlC14NProcessAttrsAxis = private unnamed_addr constant [49 x i8] c"void xmlC14NProcessAttrsAxis(xmlC14NCtxt *, int)\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"parent_is_doc\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"visible\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlC14NVisibleNsStackSave(i8* noundef %0, %struct._xmlC14NVisibleNsStackState* noundef %1) #0 !dbg !14 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._xmlC14NVisibleNsStackState*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !24, metadata !DIExpression()), !dbg !25
  store %struct._xmlC14NVisibleNsStackState* %1, %struct._xmlC14NVisibleNsStackState** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlC14NVisibleNsStackState** %4, metadata !26, metadata !DIExpression()), !dbg !27
  ret void, !dbg !28
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlC14NProcessAttrsAxis(%struct._xmlC14NCtxt* noundef %0, i32 noundef %1) #0 !dbg !29 {
  %3 = alloca %struct._xmlC14NCtxt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._xmlC14NVisibleNsStackState, align 4
  store %struct._xmlC14NCtxt* %0, %struct._xmlC14NCtxt** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlC14NCtxt** %3, metadata !38, metadata !DIExpression()), !dbg !39
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !40, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata %struct._xmlC14NVisibleNsStackState* %5, metadata !42, metadata !DIExpression()), !dbg !43
  %6 = bitcast %struct._xmlC14NVisibleNsStackState* %5 to i8*, !dbg !44
  %7 = call i8* @memset(i8* %6, i32 0, i64 4), !dbg !44
  %8 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.1, i64 0, i64 0), i32 noundef 38, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.xmlC14NProcessAttrsAxis, i64 0, i64 0)), !dbg !45
  %9 = load %struct._xmlC14NCtxt*, %struct._xmlC14NCtxt** %3, align 8, !dbg !46
  %10 = getelementptr inbounds %struct._xmlC14NCtxt, %struct._xmlC14NCtxt* %9, i32 0, i32 0, !dbg !47
  %11 = load i8*, i8** %10, align 8, !dbg !47
  call void @xmlC14NVisibleNsStackSave(i8* noundef %11, %struct._xmlC14NVisibleNsStackState* noundef %5), !dbg !48
  %12 = load i32, i32* %4, align 4, !dbg !49
  %13 = icmp ne i32 %12, 0, !dbg !49
  br i1 %13, label %14, label %21, !dbg !51

14:                                               ; preds = %2
  %15 = load %struct._xmlC14NCtxt*, %struct._xmlC14NCtxt** %3, align 8, !dbg !52
  %16 = getelementptr inbounds %struct._xmlC14NCtxt, %struct._xmlC14NCtxt* %15, i32 0, i32 1, !dbg !55
  %17 = load i32, i32* %16, align 8, !dbg !55
  %18 = icmp ne i32 %17, 0, !dbg !52
  br i1 %18, label %19, label %20, !dbg !56

19:                                               ; preds = %14
  br label %20, !dbg !57

20:                                               ; preds = %19, %14
  br label %21, !dbg !59

21:                                               ; preds = %20, %2
  ret void, !dbg !60
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !61 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlC14NCtxt, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlC14NCtxt* %2, metadata !64, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.declare(metadata i32* %3, metadata !66, metadata !DIExpression()), !dbg !67
  %4 = getelementptr inbounds %struct._xmlC14NCtxt, %struct._xmlC14NCtxt* %2, i32 0, i32 1, !dbg !68
  %5 = bitcast i32* %4 to i8*, !dbg !69
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)), !dbg !70
  %6 = bitcast i32* %3 to i8*, !dbg !71
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)), !dbg !72
  %7 = call noalias i8* @malloc(i64 noundef 1024) #7, !dbg !73
  %8 = getelementptr inbounds %struct._xmlC14NCtxt, %struct._xmlC14NCtxt* %2, i32 0, i32 0, !dbg !74
  store i8* %7, i8** %8, align 8, !dbg !75
  %9 = getelementptr inbounds %struct._xmlC14NCtxt, %struct._xmlC14NCtxt* %2, i32 0, i32 0, !dbg !76
  %10 = load i8*, i8** %9, align 8, !dbg !76
  %11 = icmp ne i8* %10, null, !dbg !77
  %12 = zext i1 %11 to i32, !dbg !77
  %13 = sext i32 %12 to i64, !dbg !78
  call void @klee_assume(i64 noundef %13), !dbg !79
  %14 = load i32, i32* %3, align 4, !dbg !80
  call void @xmlC14NProcessAttrsAxis(%struct._xmlC14NCtxt* noundef %2, i32 noundef %14), !dbg !81
  %15 = getelementptr inbounds %struct._xmlC14NCtxt, %struct._xmlC14NCtxt* %2, i32 0, i32 0, !dbg !82
  %16 = load i8*, i8** %15, align 8, !dbg !82
  call void @free(i8* noundef %16) #7, !dbg !83
  ret i32 0, !dbg !84
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #5

declare void @klee_assume(i64 noundef) #4

; Function Attrs: nounwind
declare void @free(i8* noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !85 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !92, metadata !DIExpression()), !dbg !93
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !94, metadata !DIExpression()), !dbg !95
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.declare(metadata i8** %7, metadata !98, metadata !DIExpression()), !dbg !101
  %8 = load i8*, i8** %4, align 8, !dbg !102
  store i8* %8, i8** %7, align 8, !dbg !101
  br label %9, !dbg !103

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !104
  %11 = add i64 %10, -1, !dbg !104
  store i64 %11, i64* %6, align 8, !dbg !104
  %12 = icmp ugt i64 %10, 0, !dbg !105
  br i1 %12, label %13, label %18, !dbg !103

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !106
  %15 = trunc i32 %14 to i8, !dbg !106
  %16 = load i8*, i8** %7, align 8, !dbg !107
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !107
  store i8* %17, i8** %7, align 8, !dbg !107
  store i8 %15, i8* %16, align 1, !dbg !108
  br label %9, !dbg !103, !llvm.loop !109

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !111
  ret i8* %19, !dbg !112
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13, !13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/012_c14n.c_1443_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "129308a32586fec9dccb48fec9348943")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = distinct !DICompileUnit(language: DW_LANG_C99, file: !5, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!5 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 7, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"Ubuntu clang version 14.0.6"}
!14 = distinct !DISubprogram(name: "xmlC14NVisibleNsStackSave", scope: !1, file: !1, line: 23, type: !15, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !3, !17}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlC14NVisibleNsStackState", file: !1, line: 11, baseType: !19)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlC14NVisibleNsStackState", file: !1, line: 18, size: 32, elements: !20)
!20 = !{!21}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !19, file: !1, line: 19, baseType: !22, size: 32)
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !{}
!24 = !DILocalVariable(name: "ns_rendered", arg: 1, scope: !14, file: !1, line: 23, type: !3)
!25 = !DILocation(line: 23, column: 38, scope: !14)
!26 = !DILocalVariable(name: "state", arg: 2, scope: !14, file: !1, line: 23, type: !17)
!27 = !DILocation(line: 23, column: 79, scope: !14)
!28 = !DILocation(line: 25, column: 1, scope: !14)
!29 = distinct !DISubprogram(name: "xmlC14NProcessAttrsAxis", scope: !1, file: !1, line: 28, type: !30, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !32, !22}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlC14NCtxt", file: !1, line: 10, baseType: !34)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlC14NCtxt", file: !1, line: 13, size: 128, elements: !35)
!35 = !{!36, !37}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "ns_rendered", scope: !34, file: !1, line: 14, baseType: !3, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "parent_is_doc", scope: !34, file: !1, line: 15, baseType: !22, size: 32, offset: 64)
!38 = !DILocalVariable(name: "ctx", arg: 1, scope: !29, file: !1, line: 28, type: !32)
!39 = !DILocation(line: 28, column: 43, scope: !29)
!40 = !DILocalVariable(name: "visible", arg: 2, scope: !29, file: !1, line: 28, type: !22)
!41 = !DILocation(line: 28, column: 52, scope: !29)
!42 = !DILocalVariable(name: "state", scope: !29, file: !1, line: 29, type: !18)
!43 = !DILocation(line: 29, column: 32, scope: !29)
!44 = !DILocation(line: 32, column: 5, scope: !29)
!45 = !DILocation(line: 38, column: 5, scope: !29)
!46 = !DILocation(line: 40, column: 31, scope: !29)
!47 = !DILocation(line: 40, column: 36, scope: !29)
!48 = !DILocation(line: 40, column: 5, scope: !29)
!49 = !DILocation(line: 42, column: 9, scope: !50)
!50 = distinct !DILexicalBlock(scope: !29, file: !1, line: 42, column: 9)
!51 = !DILocation(line: 42, column: 9, scope: !29)
!52 = !DILocation(line: 43, column: 13, scope: !53)
!53 = distinct !DILexicalBlock(scope: !54, file: !1, line: 43, column: 13)
!54 = distinct !DILexicalBlock(scope: !50, file: !1, line: 42, column: 18)
!55 = !DILocation(line: 43, column: 18, scope: !53)
!56 = !DILocation(line: 43, column: 13, scope: !54)
!57 = !DILocation(line: 45, column: 9, scope: !58)
!58 = distinct !DILexicalBlock(scope: !53, file: !1, line: 43, column: 33)
!59 = !DILocation(line: 46, column: 5, scope: !54)
!60 = !DILocation(line: 47, column: 1, scope: !29)
!61 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 49, type: !62, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!62 = !DISubroutineType(types: !63)
!63 = !{!22}
!64 = !DILocalVariable(name: "ctx", scope: !61, file: !1, line: 51, type: !33)
!65 = !DILocation(line: 51, column: 17, scope: !61)
!66 = !DILocalVariable(name: "visible", scope: !61, file: !1, line: 52, type: !22)
!67 = !DILocation(line: 52, column: 9, scope: !61)
!68 = !DILocation(line: 55, column: 29, scope: !61)
!69 = !DILocation(line: 55, column: 24, scope: !61)
!70 = !DILocation(line: 55, column: 5, scope: !61)
!71 = !DILocation(line: 56, column: 24, scope: !61)
!72 = !DILocation(line: 56, column: 5, scope: !61)
!73 = !DILocation(line: 59, column: 23, scope: !61)
!74 = !DILocation(line: 59, column: 9, scope: !61)
!75 = !DILocation(line: 59, column: 21, scope: !61)
!76 = !DILocation(line: 60, column: 21, scope: !61)
!77 = !DILocation(line: 60, column: 33, scope: !61)
!78 = !DILocation(line: 60, column: 17, scope: !61)
!79 = !DILocation(line: 60, column: 5, scope: !61)
!80 = !DILocation(line: 63, column: 35, scope: !61)
!81 = !DILocation(line: 63, column: 5, scope: !61)
!82 = !DILocation(line: 66, column: 14, scope: !61)
!83 = !DILocation(line: 66, column: 5, scope: !61)
!84 = !DILocation(line: 68, column: 5, scope: !61)
!85 = distinct !DISubprogram(name: "memset", scope: !86, file: !86, line: 12, type: !87, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !23)
!86 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!87 = !DISubroutineType(types: !88)
!88 = !{!3, !3, !22, !89}
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !90, line: 46, baseType: !91)
!90 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!91 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!92 = !DILocalVariable(name: "dst", arg: 1, scope: !85, file: !86, line: 12, type: !3)
!93 = !DILocation(line: 12, column: 20, scope: !85)
!94 = !DILocalVariable(name: "s", arg: 2, scope: !85, file: !86, line: 12, type: !22)
!95 = !DILocation(line: 12, column: 29, scope: !85)
!96 = !DILocalVariable(name: "count", arg: 3, scope: !85, file: !86, line: 12, type: !89)
!97 = !DILocation(line: 12, column: 39, scope: !85)
!98 = !DILocalVariable(name: "a", scope: !85, file: !86, line: 13, type: !99)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!101 = !DILocation(line: 13, column: 9, scope: !85)
!102 = !DILocation(line: 13, column: 13, scope: !85)
!103 = !DILocation(line: 14, column: 3, scope: !85)
!104 = !DILocation(line: 14, column: 15, scope: !85)
!105 = !DILocation(line: 14, column: 18, scope: !85)
!106 = !DILocation(line: 15, column: 12, scope: !85)
!107 = !DILocation(line: 15, column: 7, scope: !85)
!108 = !DILocation(line: 15, column: 10, scope: !85)
!109 = distinct !{!109, !103, !106, !110}
!110 = !{!"llvm.loop.mustprogress"}
!111 = !DILocation(line: 16, column: 10, scope: !85)
!112 = !DILocation(line: 16, column: 3, scope: !85)

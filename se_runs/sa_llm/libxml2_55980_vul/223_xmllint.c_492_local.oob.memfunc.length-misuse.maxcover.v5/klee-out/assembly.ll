; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/223_xmllint.c_492_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/223_xmllint.c_492_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"xml_encode_result\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_55980_vul/223_xmllint.c_492_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlHTMLEncodeSend = private unnamed_addr constant [29 x i8] c"void xmlHTMLEncodeSend(void)\00", align 1
@buffer = internal global [1024 x i8] zeroinitializer, align 16, !dbg !0
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"buffer_contents\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlEncodeEntitiesReentrant(i8* noundef %0, i8* noundef %1) #0 !dbg !25 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !29, metadata !DIExpression()), !dbg !30
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i8** %5, metadata !33, metadata !DIExpression()), !dbg !34
  %6 = bitcast i8** %5 to i8*, !dbg !35
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 8, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0)), !dbg !36
  %7 = load i8*, i8** %5, align 8, !dbg !37
  %8 = icmp eq i8* %7, null, !dbg !38
  br i1 %8, label %12, label %9, !dbg !39

9:                                                ; preds = %2
  %10 = load i8*, i8** %5, align 8, !dbg !40
  %11 = icmp ne i8* %10, null, !dbg !41
  br label %12, !dbg !39

12:                                               ; preds = %9, %2
  %13 = phi i1 [ true, %2 ], [ %11, %9 ]
  %14 = zext i1 %13 to i32, !dbg !39
  %15 = sext i32 %14 to i64, !dbg !37
  call void @klee_assume(i64 noundef %15), !dbg !42
  %16 = load i8*, i8** %5, align 8, !dbg !43
  ret i8* %16, !dbg !44
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlGenericError(i8* noundef %0, i8* noundef %1, ...) #0 !dbg !45 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !50, metadata !DIExpression()), !dbg !51
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !52, metadata !DIExpression()), !dbg !53
  ret void, !dbg !54
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !55 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !58, metadata !DIExpression()), !dbg !59
  ret void, !dbg !60
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlHTMLEncodeSend() #0 !dbg !61 {
  %1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !64, metadata !DIExpression()), !dbg !65
  %2 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.2, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.xmlHTMLEncodeSend, i64 0, i64 0)), !dbg !66
  %3 = call i8* @memset(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 1020), i32 0, i64 4), !dbg !67
  %4 = call i8* @xmlEncodeEntitiesReentrant(i8* noundef null, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0)), !dbg !68
  store i8* %4, i8** %1, align 8, !dbg !69
  %5 = load i8*, i8** %1, align 8, !dbg !70
  %6 = icmp ne i8* %5, null, !dbg !70
  br i1 %6, label %7, label %10, !dbg !72

7:                                                ; preds = %0
  %8 = load i8*, i8** %1, align 8, !dbg !73
  call void (i8*, i8*, ...) @xmlGenericError(i8* noundef null, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef %8), !dbg !75
  %9 = load i8*, i8** %1, align 8, !dbg !76
  call void @xmlFree(i8* noundef %9), !dbg !77
  br label %10, !dbg !78

10:                                               ; preds = %7, %0
  store i8 0, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0), align 16, !dbg !79
  ret void, !dbg !80
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !81 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @klee_make_symbolic(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0), i64 noundef 1024, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0)), !dbg !85
  call void @xmlHTMLEncodeSend(), !dbg !86
  ret i32 0, !dbg !87
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #5 !dbg !88 {
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
  call void @llvm.dbg.declare(metadata i8** %7, metadata !101, metadata !DIExpression()), !dbg !102
  %8 = load i8*, i8** %4, align 8, !dbg !103
  store i8* %8, i8** %7, align 8, !dbg !102
  br label %9, !dbg !104

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !105
  %11 = add i64 %10, -1, !dbg !105
  store i64 %11, i64* %6, align 8, !dbg !105
  %12 = icmp ugt i64 %10, 0, !dbg !106
  br i1 %12, label %13, label %18, !dbg !104

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !107
  %15 = trunc i32 %14 to i8, !dbg !107
  %16 = load i8*, i8** %7, align 8, !dbg !108
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !108
  store i8* %17, i8** %7, align 8, !dbg !108
  store i8 %15, i8* %16, align 1, !dbg !109
  br label %9, !dbg !104, !llvm.loop !110

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !112
  ret i8* %19, !dbg !113
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!2, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24, !24}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "buffer", scope: !2, file: !3, line: 36, type: !12, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !11, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/223_xmllint.c_492_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "a4ad8299e64df270750bc0a421b2d9ea")
!4 = !{!5, !6, !8}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !3, line: 10, baseType: !10)
!10 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!11 = !{!0}
!12 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8192, elements: !13)
!13 = !{!14}
!14 = !DISubrange(count: 1024)
!15 = distinct !DICompileUnit(language: DW_LANG_C99, file: !16, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!16 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!17 = !{i32 7, !"Dwarf Version", i32 5}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 4}
!20 = !{i32 7, !"PIC Level", i32 2}
!21 = !{i32 7, !"PIE Level", i32 2}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"Ubuntu clang version 14.0.6"}
!25 = distinct !DISubprogram(name: "xmlEncodeEntitiesReentrant", scope: !3, file: !3, line: 14, type: !26, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!26 = !DISubroutineType(types: !27)
!27 = !{!5, !5, !8}
!28 = !{}
!29 = !DILocalVariable(name: "doc", arg: 1, scope: !25, file: !3, line: 14, type: !5)
!30 = !DILocation(line: 14, column: 40, scope: !25)
!31 = !DILocalVariable(name: "buffer", arg: 2, scope: !25, file: !3, line: 14, type: !8)
!32 = !DILocation(line: 14, column: 54, scope: !25)
!33 = !DILocalVariable(name: "result", scope: !25, file: !3, line: 16, type: !5)
!34 = !DILocation(line: 16, column: 11, scope: !25)
!35 = !DILocation(line: 17, column: 24, scope: !25)
!36 = !DILocation(line: 17, column: 5, scope: !25)
!37 = !DILocation(line: 18, column: 17, scope: !25)
!38 = !DILocation(line: 18, column: 24, scope: !25)
!39 = !DILocation(line: 18, column: 32, scope: !25)
!40 = !DILocation(line: 18, column: 35, scope: !25)
!41 = !DILocation(line: 18, column: 42, scope: !25)
!42 = !DILocation(line: 18, column: 5, scope: !25)
!43 = !DILocation(line: 19, column: 12, scope: !25)
!44 = !DILocation(line: 19, column: 5, scope: !25)
!45 = distinct !DISubprogram(name: "xmlGenericError", scope: !3, file: !3, line: 23, type: !46, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !5, !48, null}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!50 = !DILocalVariable(name: "ctx", arg: 1, scope: !45, file: !3, line: 23, type: !5)
!51 = !DILocation(line: 23, column: 28, scope: !45)
!52 = !DILocalVariable(name: "msg", arg: 2, scope: !45, file: !3, line: 23, type: !48)
!53 = !DILocation(line: 23, column: 45, scope: !45)
!54 = !DILocation(line: 25, column: 1, scope: !45)
!55 = distinct !DISubprogram(name: "xmlFree", scope: !3, file: !3, line: 28, type: !56, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!56 = !DISubroutineType(types: !57)
!57 = !{null, !5}
!58 = !DILocalVariable(name: "ptr", arg: 1, scope: !55, file: !3, line: 28, type: !5)
!59 = !DILocation(line: 28, column: 20, scope: !55)
!60 = !DILocation(line: 30, column: 1, scope: !55)
!61 = distinct !DISubprogram(name: "xmlHTMLEncodeSend", scope: !3, file: !3, line: 39, type: !62, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!62 = !DISubroutineType(types: !63)
!63 = !{null}
!64 = !DILocalVariable(name: "result", scope: !61, file: !3, line: 40, type: !6)
!65 = !DILocation(line: 40, column: 11, scope: !61)
!66 = !DILocation(line: 55, column: 5, scope: !61)
!67 = !DILocation(line: 57, column: 5, scope: !61)
!68 = !DILocation(line: 58, column: 23, scope: !61)
!69 = !DILocation(line: 58, column: 12, scope: !61)
!70 = !DILocation(line: 59, column: 9, scope: !71)
!71 = distinct !DILexicalBlock(scope: !61, file: !3, line: 59, column: 9)
!72 = !DILocation(line: 59, column: 9, scope: !61)
!73 = !DILocation(line: 60, column: 37, scope: !74)
!74 = distinct !DILexicalBlock(scope: !71, file: !3, line: 59, column: 17)
!75 = !DILocation(line: 60, column: 9, scope: !74)
!76 = !DILocation(line: 61, column: 17, scope: !74)
!77 = !DILocation(line: 61, column: 9, scope: !74)
!78 = !DILocation(line: 62, column: 5, scope: !74)
!79 = !DILocation(line: 63, column: 15, scope: !61)
!80 = !DILocation(line: 64, column: 1, scope: !61)
!81 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 67, type: !82, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!82 = !DISubroutineType(types: !83)
!83 = !{!84}
!84 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!85 = !DILocation(line: 69, column: 5, scope: !81)
!86 = !DILocation(line: 72, column: 5, scope: !81)
!87 = !DILocation(line: 74, column: 5, scope: !81)
!88 = distinct !DISubprogram(name: "memset", scope: !89, file: !89, line: 12, type: !90, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !28)
!89 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!90 = !DISubroutineType(types: !91)
!91 = !{!5, !5, !84, !92}
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !93, line: 46, baseType: !94)
!93 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!94 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!95 = !DILocalVariable(name: "dst", arg: 1, scope: !88, file: !89, line: 12, type: !5)
!96 = !DILocation(line: 12, column: 20, scope: !88)
!97 = !DILocalVariable(name: "s", arg: 2, scope: !88, file: !89, line: 12, type: !84)
!98 = !DILocation(line: 12, column: 29, scope: !88)
!99 = !DILocalVariable(name: "count", arg: 3, scope: !88, file: !89, line: 12, type: !92)
!100 = !DILocation(line: 12, column: 39, scope: !88)
!101 = !DILocalVariable(name: "a", scope: !88, file: !89, line: 13, type: !6)
!102 = !DILocation(line: 13, column: 9, scope: !88)
!103 = !DILocation(line: 13, column: 13, scope: !88)
!104 = !DILocation(line: 14, column: 3, scope: !88)
!105 = !DILocation(line: 14, column: 15, scope: !88)
!106 = !DILocation(line: 14, column: 18, scope: !88)
!107 = !DILocation(line: 15, column: 12, scope: !88)
!108 = !DILocation(line: 15, column: 7, scope: !88)
!109 = !DILocation(line: 15, column: 10, scope: !88)
!110 = distinct !{!110, !104, !107, !111}
!111 = !{!"llvm.loop.mustprogress"}
!112 = !DILocation(line: 16, column: 10, scope: !88)
!113 = !DILocation(line: 16, column: 3, scope: !88)

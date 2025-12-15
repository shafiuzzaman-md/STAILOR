; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/376_xmlschemas.c_5300_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/376_xmlschemas.c_5300_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaParserCtxt = type opaque
%struct._xmlNode = type opaque
%struct._xmlSchemaAttributeUse = type { i32, %struct._xmlNode* }

@.str = private unnamed_addr constant [6 x i8] c"pctxt\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"node\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"allocating attribute\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [109 x i8] c"se_runs/sa_llm/libxml2_55980_vul/376_xmlschemas.c_5300_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlSchemaNewAttributeUse = private unnamed_addr constant [86 x i8] c"xmlSchemaAttributeUsePtr xmlSchemaNewAttributeUse(xmlSchemaParserCtxtPtr, xmlNodePtr)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchemaPErrMemory(%struct._xmlSchemaParserCtxt* noundef %0, i8* noundef %1, i8* noundef %2) #0 !dbg !26 {
  %4 = alloca %struct._xmlSchemaParserCtxt*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._xmlSchemaParserCtxt* %0, %struct._xmlSchemaParserCtxt** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaParserCtxt** %4, metadata !37, metadata !DIExpression()), !dbg !38
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !39, metadata !DIExpression()), !dbg !40
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !41, metadata !DIExpression()), !dbg !42
  ret void, !dbg !43
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !44 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !50, metadata !DIExpression()), !dbg !51
  %3 = load i64, i64* %2, align 8, !dbg !52
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !53
  ret i8* %4, !dbg !54
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !55 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlSchemaParserCtxt*, align 8
  %3 = alloca %struct._xmlNode*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaParserCtxt** %2, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %3, metadata !60, metadata !DIExpression()), !dbg !61
  %4 = bitcast %struct._xmlSchemaParserCtxt** %2 to i8*, !dbg !62
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 8, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)), !dbg !63
  %5 = bitcast %struct._xmlNode** %3 to i8*, !dbg !64
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !65
  %6 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !66
  %7 = icmp ne %struct._xmlSchemaParserCtxt* %6, null, !dbg !67
  %8 = zext i1 %7 to i32, !dbg !67
  %9 = sext i32 %8 to i64, !dbg !66
  call void @klee_assume(i64 noundef %9), !dbg !68
  %10 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !69
  %11 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !70
  %12 = call %struct._xmlSchemaAttributeUse* @xmlSchemaNewAttributeUse(%struct._xmlSchemaParserCtxt* noundef %10, %struct._xmlNode* noundef %11), !dbg !71
  ret i32 0, !dbg !72
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct._xmlSchemaAttributeUse* @xmlSchemaNewAttributeUse(%struct._xmlSchemaParserCtxt* noundef %0, %struct._xmlNode* noundef %1) #0 !dbg !73 {
  %3 = alloca %struct._xmlSchemaAttributeUse*, align 8
  %4 = alloca %struct._xmlSchemaParserCtxt*, align 8
  %5 = alloca %struct._xmlNode*, align 8
  %6 = alloca %struct._xmlSchemaAttributeUse*, align 8
  store %struct._xmlSchemaParserCtxt* %0, %struct._xmlSchemaParserCtxt** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaParserCtxt** %4, metadata !76, metadata !DIExpression()), !dbg !77
  store %struct._xmlNode* %1, %struct._xmlNode** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %5, metadata !78, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaAttributeUse** %6, metadata !80, metadata !DIExpression()), !dbg !81
  %7 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %4, align 8, !dbg !82
  %8 = icmp eq %struct._xmlSchemaParserCtxt* %7, null, !dbg !84
  br i1 %8, label %9, label %10, !dbg !85

9:                                                ; preds = %2
  store %struct._xmlSchemaAttributeUse* null, %struct._xmlSchemaAttributeUse** %3, align 8, !dbg !86
  br label %28, !dbg !86

10:                                               ; preds = %2
  %11 = call i8* @xmlMalloc(i64 noundef 16), !dbg !87
  %12 = bitcast i8* %11 to %struct._xmlSchemaAttributeUse*, !dbg !88
  store %struct._xmlSchemaAttributeUse* %12, %struct._xmlSchemaAttributeUse** %6, align 8, !dbg !89
  %13 = load %struct._xmlSchemaAttributeUse*, %struct._xmlSchemaAttributeUse** %6, align 8, !dbg !90
  %14 = icmp eq %struct._xmlSchemaAttributeUse* %13, null, !dbg !92
  br i1 %14, label %15, label %17, !dbg !93

15:                                               ; preds = %10
  %16 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %4, align 8, !dbg !94
  call void @xmlSchemaPErrMemory(%struct._xmlSchemaParserCtxt* noundef %16, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* noundef null), !dbg !96
  store %struct._xmlSchemaAttributeUse* null, %struct._xmlSchemaAttributeUse** %3, align 8, !dbg !97
  br label %28, !dbg !97

17:                                               ; preds = %10
  %18 = load %struct._xmlSchemaAttributeUse*, %struct._xmlSchemaAttributeUse** %6, align 8, !dbg !98
  %19 = bitcast %struct._xmlSchemaAttributeUse* %18 to i8*, !dbg !99
  %20 = call i8* @memset(i8* %19, i32 0, i64 16), !dbg !99
  %21 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.4, i64 0, i64 0), i32 noundef 62, i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @__PRETTY_FUNCTION__.xmlSchemaNewAttributeUse, i64 0, i64 0)), !dbg !100
  %22 = load %struct._xmlSchemaAttributeUse*, %struct._xmlSchemaAttributeUse** %6, align 8, !dbg !101
  %23 = getelementptr inbounds %struct._xmlSchemaAttributeUse, %struct._xmlSchemaAttributeUse* %22, i32 0, i32 0, !dbg !102
  store i32 1, i32* %23, align 8, !dbg !103
  %24 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !104
  %25 = load %struct._xmlSchemaAttributeUse*, %struct._xmlSchemaAttributeUse** %6, align 8, !dbg !105
  %26 = getelementptr inbounds %struct._xmlSchemaAttributeUse, %struct._xmlSchemaAttributeUse* %25, i32 0, i32 1, !dbg !106
  store %struct._xmlNode* %24, %struct._xmlNode** %26, align 8, !dbg !107
  %27 = load %struct._xmlSchemaAttributeUse*, %struct._xmlSchemaAttributeUse** %6, align 8, !dbg !108
  store %struct._xmlSchemaAttributeUse* %27, %struct._xmlSchemaAttributeUse** %3, align 8, !dbg !109
  br label %28, !dbg !109

28:                                               ; preds = %17, %15, %9
  %29 = load %struct._xmlSchemaAttributeUse*, %struct._xmlSchemaAttributeUse** %3, align 8, !dbg !110
  ret %struct._xmlSchemaAttributeUse* %29, !dbg !110
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !111 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !115, metadata !DIExpression()), !dbg !116
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !117, metadata !DIExpression()), !dbg !118
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !119, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.declare(metadata i8** %7, metadata !121, metadata !DIExpression()), !dbg !123
  %8 = load i8*, i8** %4, align 8, !dbg !124
  store i8* %8, i8** %7, align 8, !dbg !123
  br label %9, !dbg !125

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !126
  %11 = add i64 %10, -1, !dbg !126
  store i64 %11, i64* %6, align 8, !dbg !126
  %12 = icmp ugt i64 %10, 0, !dbg !127
  br i1 %12, label %13, label %18, !dbg !125

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !128
  %15 = trunc i32 %14 to i8, !dbg !128
  %16 = load i8*, i8** %7, align 8, !dbg !129
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !129
  store i8* %17, i8** %7, align 8, !dbg !129
  store i8 %15, i8* %16, align 1, !dbg !130
  br label %9, !dbg !125, !llvm.loop !131

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !133
  ret i8* %19, !dbg !134
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25, !25}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/376_xmlschemas.c_5300_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "22bae96fdaf5bfea304a7d97aa4cdf63")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaAttributeUsePtr", file: !1, line: 14, baseType: !5)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaAttributeUse", file: !1, line: 13, baseType: !7)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaAttributeUse", file: !1, line: 32, size: 128, elements: !8)
!8 = !{!9, !11}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !7, file: !1, line: 33, baseType: !10, size: 32)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !7, file: !1, line: 34, baseType: !12, size: 64, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !1, line: 17, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 16, baseType: !15)
!15 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 16, flags: DIFlagFwdDecl)
!16 = distinct !DICompileUnit(language: DW_LANG_C99, file: !17, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!17 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!18 = !{i32 7, !"Dwarf Version", i32 5}
!19 = !{i32 2, !"Debug Info Version", i32 3}
!20 = !{i32 1, !"wchar_size", i32 4}
!21 = !{i32 7, !"PIC Level", i32 2}
!22 = !{i32 7, !"PIE Level", i32 2}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"Ubuntu clang version 14.0.6"}
!26 = distinct !DISubprogram(name: "xmlSchemaPErrMemory", scope: !1, file: !1, line: 23, type: !27, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !36)
!27 = !DISubroutineType(types: !28)
!28 = !{null, !29, !33, !33}
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaParserCtxtPtr", file: !1, line: 11, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaParserCtxt", file: !1, line: 10, baseType: !32)
!32 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaParserCtxt", file: !1, line: 10, flags: DIFlagFwdDecl)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!36 = !{}
!37 = !DILocalVariable(name: "ctxt", arg: 1, scope: !26, file: !1, line: 23, type: !29)
!38 = !DILocation(line: 23, column: 49, scope: !26)
!39 = !DILocalVariable(name: "msg", arg: 2, scope: !26, file: !1, line: 23, type: !33)
!40 = !DILocation(line: 23, column: 67, scope: !26)
!41 = !DILocalVariable(name: "extra", arg: 3, scope: !26, file: !1, line: 23, type: !33)
!42 = !DILocation(line: 23, column: 84, scope: !26)
!43 = !DILocation(line: 25, column: 1, scope: !26)
!44 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 27, type: !45, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !36)
!45 = !DISubroutineType(types: !46)
!46 = !{!3, !47}
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !48, line: 46, baseType: !49)
!48 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!49 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!50 = !DILocalVariable(name: "size", arg: 1, scope: !44, file: !1, line: 27, type: !47)
!51 = !DILocation(line: 27, column: 24, scope: !44)
!52 = !DILocation(line: 28, column: 19, scope: !44)
!53 = !DILocation(line: 28, column: 12, scope: !44)
!54 = !DILocation(line: 28, column: 5, scope: !44)
!55 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 72, type: !56, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !36)
!56 = !DISubroutineType(types: !57)
!57 = !{!10}
!58 = !DILocalVariable(name: "pctxt", scope: !55, file: !1, line: 73, type: !29)
!59 = !DILocation(line: 73, column: 28, scope: !55)
!60 = !DILocalVariable(name: "node", scope: !55, file: !1, line: 74, type: !12)
!61 = !DILocation(line: 74, column: 16, scope: !55)
!62 = !DILocation(line: 77, column: 24, scope: !55)
!63 = !DILocation(line: 77, column: 5, scope: !55)
!64 = !DILocation(line: 78, column: 24, scope: !55)
!65 = !DILocation(line: 78, column: 5, scope: !55)
!66 = !DILocation(line: 81, column: 17, scope: !55)
!67 = !DILocation(line: 81, column: 23, scope: !55)
!68 = !DILocation(line: 81, column: 5, scope: !55)
!69 = !DILocation(line: 84, column: 30, scope: !55)
!70 = !DILocation(line: 84, column: 37, scope: !55)
!71 = !DILocation(line: 84, column: 5, scope: !55)
!72 = !DILocation(line: 86, column: 5, scope: !55)
!73 = distinct !DISubprogram(name: "xmlSchemaNewAttributeUse", scope: !1, file: !1, line: 43, type: !74, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !36)
!74 = !DISubroutineType(types: !75)
!75 = !{!4, !29, !12}
!76 = !DILocalVariable(name: "pctxt", arg: 1, scope: !73, file: !1, line: 43, type: !29)
!77 = !DILocation(line: 43, column: 49, scope: !73)
!78 = !DILocalVariable(name: "node", arg: 2, scope: !73, file: !1, line: 43, type: !12)
!79 = !DILocation(line: 43, column: 67, scope: !73)
!80 = !DILocalVariable(name: "ret", scope: !73, file: !1, line: 44, type: !4)
!81 = !DILocation(line: 44, column: 30, scope: !73)
!82 = !DILocation(line: 46, column: 9, scope: !83)
!83 = distinct !DILexicalBlock(scope: !73, file: !1, line: 46, column: 9)
!84 = !DILocation(line: 46, column: 15, scope: !83)
!85 = !DILocation(line: 46, column: 9, scope: !73)
!86 = !DILocation(line: 47, column: 9, scope: !83)
!87 = !DILocation(line: 49, column: 38, scope: !73)
!88 = !DILocation(line: 49, column: 11, scope: !73)
!89 = !DILocation(line: 49, column: 9, scope: !73)
!90 = !DILocation(line: 50, column: 9, scope: !91)
!91 = distinct !DILexicalBlock(scope: !73, file: !1, line: 50, column: 9)
!92 = !DILocation(line: 50, column: 13, scope: !91)
!93 = !DILocation(line: 50, column: 9, scope: !73)
!94 = !DILocation(line: 51, column: 29, scope: !95)
!95 = distinct !DILexicalBlock(scope: !91, file: !1, line: 50, column: 22)
!96 = !DILocation(line: 51, column: 9, scope: !95)
!97 = !DILocation(line: 52, column: 9, scope: !95)
!98 = !DILocation(line: 56, column: 12, scope: !73)
!99 = !DILocation(line: 56, column: 5, scope: !73)
!100 = !DILocation(line: 62, column: 5, scope: !73)
!101 = !DILocation(line: 64, column: 5, scope: !73)
!102 = !DILocation(line: 64, column: 10, scope: !73)
!103 = !DILocation(line: 64, column: 15, scope: !73)
!104 = !DILocation(line: 65, column: 17, scope: !73)
!105 = !DILocation(line: 65, column: 5, scope: !73)
!106 = !DILocation(line: 65, column: 10, scope: !73)
!107 = !DILocation(line: 65, column: 15, scope: !73)
!108 = !DILocation(line: 68, column: 13, scope: !73)
!109 = !DILocation(line: 68, column: 5, scope: !73)
!110 = !DILocation(line: 69, column: 1, scope: !73)
!111 = distinct !DISubprogram(name: "memset", scope: !112, file: !112, line: 12, type: !113, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !36)
!112 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!113 = !DISubroutineType(types: !114)
!114 = !{!3, !3, !10, !47}
!115 = !DILocalVariable(name: "dst", arg: 1, scope: !111, file: !112, line: 12, type: !3)
!116 = !DILocation(line: 12, column: 20, scope: !111)
!117 = !DILocalVariable(name: "s", arg: 2, scope: !111, file: !112, line: 12, type: !10)
!118 = !DILocation(line: 12, column: 29, scope: !111)
!119 = !DILocalVariable(name: "count", arg: 3, scope: !111, file: !112, line: 12, type: !47)
!120 = !DILocation(line: 12, column: 39, scope: !111)
!121 = !DILocalVariable(name: "a", scope: !111, file: !112, line: 13, type: !122)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!123 = !DILocation(line: 13, column: 9, scope: !111)
!124 = !DILocation(line: 13, column: 13, scope: !111)
!125 = !DILocation(line: 14, column: 3, scope: !111)
!126 = !DILocation(line: 14, column: 15, scope: !111)
!127 = !DILocation(line: 14, column: 18, scope: !111)
!128 = !DILocation(line: 15, column: 12, scope: !111)
!129 = !DILocation(line: 15, column: 7, scope: !111)
!130 = !DILocation(line: 15, column: 10, scope: !111)
!131 = distinct !{!131, !125, !128, !132}
!132 = !{!"llvm.loop.mustprogress"}
!133 = !DILocation(line: 16, column: 10, scope: !111)
!134 = !DILocation(line: 16, column: 3, scope: !111)

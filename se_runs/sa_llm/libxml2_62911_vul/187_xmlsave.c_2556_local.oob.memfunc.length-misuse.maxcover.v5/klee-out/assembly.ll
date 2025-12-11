; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/187_xmlsave.c_2556_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/187_xmlsave.c_2556_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlOutputBuffer = type { i8* }
%struct._xmlSaveCtxt = type { %struct._xmlOutputBuffer*, i32, i32, i8*, [256 x i8] }
%struct._xmlNode = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.1 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/187_xmlsave.c_2556_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlNodeDumpOutputInternal = private unnamed_addr constant [84 x i8] c"int xmlNodeDumpOutputInternal(xmlOutputBuffer *, xmlNode *, int, int, const char *)\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"node_type\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlOutputBufferClose(%struct._xmlOutputBuffer* noundef %0) #0 !dbg !14 {
  %2 = alloca %struct._xmlOutputBuffer*, align 8
  store %struct._xmlOutputBuffer* %0, %struct._xmlOutputBuffer** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlOutputBuffer** %2, metadata !23, metadata !DIExpression()), !dbg !24
  ret void, !dbg !25
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSaveCtxtInit(%struct._xmlSaveCtxt* noundef %0) #0 !dbg !26 {
  %2 = alloca %struct._xmlSaveCtxt*, align 8
  store %struct._xmlSaveCtxt* %0, %struct._xmlSaveCtxt** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSaveCtxt** %2, metadata !45, metadata !DIExpression()), !dbg !46
  ret void, !dbg !47
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlNodeDumpOutputInternal(%struct._xmlOutputBuffer* noundef %0, %struct._xmlNode* noundef %1, i32 noundef %2, i32 noundef %3, i8* noundef %4) #0 !dbg !48 {
  %6 = alloca i32, align 4
  %7 = alloca %struct._xmlOutputBuffer*, align 8
  %8 = alloca %struct._xmlNode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct._xmlSaveCtxt, align 8
  store %struct._xmlOutputBuffer* %0, %struct._xmlOutputBuffer** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlOutputBuffer** %7, metadata !56, metadata !DIExpression()), !dbg !57
  store %struct._xmlNode* %1, %struct._xmlNode** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %8, metadata !58, metadata !DIExpression()), !dbg !59
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !60, metadata !DIExpression()), !dbg !61
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !62, metadata !DIExpression()), !dbg !63
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !64, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.declare(metadata %struct._xmlSaveCtxt* %12, metadata !66, metadata !DIExpression()), !dbg !67
  %13 = load %struct._xmlNode*, %struct._xmlNode** %8, align 8, !dbg !68
  %14 = icmp eq %struct._xmlNode* %13, null, !dbg !70
  br i1 %14, label %25, label %15, !dbg !71

15:                                               ; preds = %5
  %16 = load %struct._xmlNode*, %struct._xmlNode** %8, align 8, !dbg !72
  %17 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %16, i32 0, i32 0, !dbg !73
  %18 = load i32, i32* %17, align 4, !dbg !73
  %19 = icmp ne i32 %18, 13, !dbg !74
  br i1 %19, label %20, label %27, !dbg !75

20:                                               ; preds = %15
  %21 = load %struct._xmlNode*, %struct._xmlNode** %8, align 8, !dbg !76
  %22 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %21, i32 0, i32 0, !dbg !77
  %23 = load i32, i32* %22, align 4, !dbg !77
  %24 = icmp ne i32 %23, 14, !dbg !78
  br i1 %24, label %25, label %27, !dbg !79

25:                                               ; preds = %20, %5
  %26 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %7, align 8, !dbg !80
  call void @xmlOutputBufferClose(%struct._xmlOutputBuffer* noundef %26), !dbg !82
  store i32 -1, i32* %6, align 4, !dbg !83
  br label %42, !dbg !83

27:                                               ; preds = %20, %15
  %28 = bitcast %struct._xmlSaveCtxt* %12 to i8*, !dbg !84
  %29 = call i8* @memset(i8* %28, i32 0, i64 280), !dbg !84
  %30 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.1, i64 0, i64 0), i32 noundef 65, i8* noundef getelementptr inbounds ([84 x i8], [84 x i8]* @__PRETTY_FUNCTION__.xmlNodeDumpOutputInternal, i64 0, i64 0)), !dbg !85
  %31 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %7, align 8, !dbg !86
  %32 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %12, i32 0, i32 0, !dbg !87
  store %struct._xmlOutputBuffer* %31, %struct._xmlOutputBuffer** %32, align 8, !dbg !88
  %33 = load i32, i32* %9, align 4, !dbg !89
  %34 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %12, i32 0, i32 1, !dbg !90
  store i32 %33, i32* %34, align 8, !dbg !91
  %35 = load i32, i32* %10, align 4, !dbg !92
  %36 = icmp ne i32 %35, 0, !dbg !92
  %37 = zext i1 %36 to i64, !dbg !92
  %38 = select i1 %36, i32 1, i32 0, !dbg !92
  %39 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %12, i32 0, i32 2, !dbg !93
  store i32 %38, i32* %39, align 4, !dbg !94
  %40 = load i8*, i8** %11, align 8, !dbg !95
  %41 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %12, i32 0, i32 3, !dbg !96
  store i8* %40, i8** %41, align 8, !dbg !97
  call void @xmlSaveCtxtInit(%struct._xmlSaveCtxt* noundef %12), !dbg !98
  store i32 0, i32* %6, align 4, !dbg !99
  br label %42, !dbg !99

42:                                               ; preds = %27, %25
  %43 = load i32, i32* %6, align 4, !dbg !100
  ret i32 %43, !dbg !100
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !101 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlNode, align 4
  %3 = alloca %struct._xmlOutputBuffer, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlNode* %2, metadata !104, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata %struct._xmlOutputBuffer* %3, metadata !106, metadata !DIExpression()), !dbg !107
  %4 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %2, i32 0, i32 0, !dbg !108
  %5 = bitcast i32* %4 to i8*, !dbg !109
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)), !dbg !110
  %6 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %2, i32 0, i32 0, !dbg !111
  %7 = load i32, i32* %6, align 4, !dbg !111
  %8 = icmp ne i32 %7, 13, !dbg !112
  %9 = zext i1 %8 to i32, !dbg !112
  %10 = sext i32 %9 to i64, !dbg !113
  call void @klee_assume(i64 noundef %10), !dbg !114
  %11 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %2, i32 0, i32 0, !dbg !115
  %12 = load i32, i32* %11, align 4, !dbg !115
  %13 = icmp ne i32 %12, 14, !dbg !116
  %14 = zext i1 %13 to i32, !dbg !116
  %15 = sext i32 %14 to i64, !dbg !117
  call void @klee_assume(i64 noundef %15), !dbg !118
  %16 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %2, i32 0, i32 0, !dbg !119
  %17 = load i32, i32* %16, align 4, !dbg !119
  %18 = icmp sge i32 %17, 0, !dbg !120
  %19 = zext i1 %18 to i32, !dbg !120
  %20 = sext i32 %19 to i64, !dbg !121
  call void @klee_assume(i64 noundef %20), !dbg !122
  %21 = call i32 @xmlNodeDumpOutputInternal(%struct._xmlOutputBuffer* noundef %3, %struct._xmlNode* noundef %2, i32 noundef 0, i32 noundef 0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)), !dbg !123
  ret i32 0, !dbg !124
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #5 !dbg !125 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !132, metadata !DIExpression()), !dbg !133
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !134, metadata !DIExpression()), !dbg !135
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !136, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.declare(metadata i8** %7, metadata !138, metadata !DIExpression()), !dbg !140
  %8 = load i8*, i8** %4, align 8, !dbg !141
  store i8* %8, i8** %7, align 8, !dbg !140
  br label %9, !dbg !142

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !143
  %11 = add i64 %10, -1, !dbg !143
  store i64 %11, i64* %6, align 8, !dbg !143
  %12 = icmp ugt i64 %10, 0, !dbg !144
  br i1 %12, label %13, label %18, !dbg !142

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !145
  %15 = trunc i32 %14 to i8, !dbg !145
  %16 = load i8*, i8** %7, align 8, !dbg !146
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !146
  store i8* %17, i8** %7, align 8, !dbg !146
  store i8 %15, i8* %16, align 1, !dbg !147
  br label %9, !dbg !142, !llvm.loop !148

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !150
  ret i8* %19, !dbg !151
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13, !13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/187_xmlsave.c_2556_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "efcb41b03bff08479ae65b90842862c8")
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
!14 = distinct !DISubprogram(name: "xmlOutputBufferClose", scope: !1, file: !1, line: 38, type: !15, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlOutputBuffer", file: !1, line: 11, baseType: !19)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlOutputBuffer", file: !1, line: 23, size: 64, elements: !20)
!20 = !{!21}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !19, file: !1, line: 25, baseType: !3, size: 64)
!22 = !{}
!23 = !DILocalVariable(name: "buf", arg: 1, scope: !14, file: !1, line: 38, type: !17)
!24 = !DILocation(line: 38, column: 44, scope: !14)
!25 = !DILocation(line: 40, column: 1, scope: !14)
!26 = distinct !DISubprogram(name: "xmlSaveCtxtInit", scope: !1, file: !1, line: 42, type: !27, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!27 = !DISubroutineType(types: !28)
!28 = !{null, !29}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSaveCtxt", file: !1, line: 12, baseType: !31)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSaveCtxt", file: !1, line: 28, size: 2240, elements: !32)
!32 = !{!33, !34, !36, !37, !41}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !31, file: !1, line: 29, baseType: !17, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !31, file: !1, line: 30, baseType: !35, size: 32, offset: 64)
!35 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !31, file: !1, line: 31, baseType: !35, size: 32, offset: 96)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !31, file: !1, line: 32, baseType: !38, size: 64, offset: 128)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!40 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "internal_data", scope: !31, file: !1, line: 34, baseType: !42, size: 2048, offset: 192)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 2048, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 256)
!45 = !DILocalVariable(name: "ctxt", arg: 1, scope: !26, file: !1, line: 42, type: !29)
!46 = !DILocation(line: 42, column: 35, scope: !26)
!47 = !DILocation(line: 44, column: 1, scope: !26)
!48 = distinct !DISubprogram(name: "xmlNodeDumpOutputInternal", scope: !1, file: !1, line: 47, type: !49, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!49 = !DISubroutineType(types: !50)
!50 = !{!35, !17, !51, !35, !35, !38}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 10, baseType: !53)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 19, size: 32, elements: !54)
!54 = !{!55}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !53, file: !1, line: 20, baseType: !35, size: 32)
!56 = !DILocalVariable(name: "buf", arg: 1, scope: !48, file: !1, line: 47, type: !17)
!57 = !DILocation(line: 47, column: 48, scope: !48)
!58 = !DILocalVariable(name: "cur", arg: 2, scope: !48, file: !1, line: 47, type: !51)
!59 = !DILocation(line: 47, column: 62, scope: !48)
!60 = !DILocalVariable(name: "level", arg: 3, scope: !48, file: !1, line: 47, type: !35)
!61 = !DILocation(line: 47, column: 71, scope: !48)
!62 = !DILocalVariable(name: "format", arg: 4, scope: !48, file: !1, line: 47, type: !35)
!63 = !DILocation(line: 47, column: 82, scope: !48)
!64 = !DILocalVariable(name: "encoding", arg: 5, scope: !48, file: !1, line: 47, type: !38)
!65 = !DILocation(line: 47, column: 102, scope: !48)
!66 = !DILocalVariable(name: "ctxt", scope: !48, file: !1, line: 48, type: !30)
!67 = !DILocation(line: 48, column: 17, scope: !48)
!68 = !DILocation(line: 51, column: 9, scope: !69)
!69 = distinct !DILexicalBlock(scope: !48, file: !1, line: 51, column: 9)
!70 = !DILocation(line: 51, column: 13, scope: !69)
!71 = !DILocation(line: 51, column: 21, scope: !69)
!72 = !DILocation(line: 52, column: 11, scope: !69)
!73 = !DILocation(line: 52, column: 16, scope: !69)
!74 = !DILocation(line: 52, column: 21, scope: !69)
!75 = !DILocation(line: 52, column: 43, scope: !69)
!76 = !DILocation(line: 53, column: 11, scope: !69)
!77 = !DILocation(line: 53, column: 16, scope: !69)
!78 = !DILocation(line: 53, column: 21, scope: !69)
!79 = !DILocation(line: 51, column: 9, scope: !48)
!80 = !DILocation(line: 54, column: 30, scope: !81)
!81 = distinct !DILexicalBlock(scope: !69, file: !1, line: 53, column: 50)
!82 = !DILocation(line: 54, column: 9, scope: !81)
!83 = !DILocation(line: 55, column: 9, scope: !81)
!84 = !DILocation(line: 59, column: 5, scope: !48)
!85 = !DILocation(line: 65, column: 5, scope: !48)
!86 = !DILocation(line: 67, column: 16, scope: !48)
!87 = !DILocation(line: 67, column: 10, scope: !48)
!88 = !DILocation(line: 67, column: 14, scope: !48)
!89 = !DILocation(line: 68, column: 18, scope: !48)
!90 = !DILocation(line: 68, column: 10, scope: !48)
!91 = !DILocation(line: 68, column: 16, scope: !48)
!92 = !DILocation(line: 69, column: 19, scope: !48)
!93 = !DILocation(line: 69, column: 10, scope: !48)
!94 = !DILocation(line: 69, column: 17, scope: !48)
!95 = !DILocation(line: 70, column: 21, scope: !48)
!96 = !DILocation(line: 70, column: 10, scope: !48)
!97 = !DILocation(line: 70, column: 19, scope: !48)
!98 = !DILocation(line: 71, column: 5, scope: !48)
!99 = !DILocation(line: 73, column: 5, scope: !48)
!100 = !DILocation(line: 74, column: 1, scope: !48)
!101 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 76, type: !102, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!102 = !DISubroutineType(types: !103)
!103 = !{!35}
!104 = !DILocalVariable(name: "node", scope: !101, file: !1, line: 78, type: !52)
!105 = !DILocation(line: 78, column: 13, scope: !101)
!106 = !DILocalVariable(name: "buffer", scope: !101, file: !1, line: 79, type: !18)
!107 = !DILocation(line: 79, column: 21, scope: !101)
!108 = !DILocation(line: 82, column: 30, scope: !101)
!109 = !DILocation(line: 82, column: 24, scope: !101)
!110 = !DILocation(line: 82, column: 5, scope: !101)
!111 = !DILocation(line: 86, column: 22, scope: !101)
!112 = !DILocation(line: 86, column: 27, scope: !101)
!113 = !DILocation(line: 86, column: 17, scope: !101)
!114 = !DILocation(line: 86, column: 5, scope: !101)
!115 = !DILocation(line: 87, column: 22, scope: !101)
!116 = !DILocation(line: 87, column: 27, scope: !101)
!117 = !DILocation(line: 87, column: 17, scope: !101)
!118 = !DILocation(line: 87, column: 5, scope: !101)
!119 = !DILocation(line: 90, column: 22, scope: !101)
!120 = !DILocation(line: 90, column: 27, scope: !101)
!121 = !DILocation(line: 90, column: 17, scope: !101)
!122 = !DILocation(line: 90, column: 5, scope: !101)
!123 = !DILocation(line: 93, column: 5, scope: !101)
!124 = !DILocation(line: 95, column: 5, scope: !101)
!125 = distinct !DISubprogram(name: "memset", scope: !126, file: !126, line: 12, type: !127, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !22)
!126 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!127 = !DISubroutineType(types: !128)
!128 = !{!3, !3, !35, !129}
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !130, line: 46, baseType: !131)
!130 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!131 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!132 = !DILocalVariable(name: "dst", arg: 1, scope: !125, file: !126, line: 12, type: !3)
!133 = !DILocation(line: 12, column: 20, scope: !125)
!134 = !DILocalVariable(name: "s", arg: 2, scope: !125, file: !126, line: 12, type: !35)
!135 = !DILocation(line: 12, column: 29, scope: !125)
!136 = !DILocalVariable(name: "count", arg: 3, scope: !125, file: !126, line: 12, type: !129)
!137 = !DILocation(line: 12, column: 39, scope: !125)
!138 = !DILocalVariable(name: "a", scope: !125, file: !126, line: 13, type: !139)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!140 = !DILocation(line: 13, column: 9, scope: !125)
!141 = !DILocation(line: 13, column: 13, scope: !125)
!142 = !DILocation(line: 14, column: 3, scope: !125)
!143 = !DILocation(line: 14, column: 15, scope: !125)
!144 = !DILocation(line: 14, column: 18, scope: !125)
!145 = !DILocation(line: 15, column: 12, scope: !125)
!146 = !DILocation(line: 15, column: 7, scope: !125)
!147 = !DILocation(line: 15, column: 10, scope: !125)
!148 = distinct !{!148, !142, !145, !149}
!149 = !{!"llvm.loop.mustprogress"}
!150 = !DILocation(line: 16, column: 10, scope: !125)
!151 = !DILocation(line: 16, column: 3, scope: !125)

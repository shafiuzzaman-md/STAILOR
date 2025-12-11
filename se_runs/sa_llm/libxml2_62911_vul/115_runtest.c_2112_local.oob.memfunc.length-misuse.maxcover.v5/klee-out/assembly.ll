; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/115_runtest.c_2112_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/115_runtest.c_2112_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSAXHandler = type { i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@nb_tests = dso_local global i32 0, align 4, !dbg !0
@options = dso_local global i32 0, align 4, !dbg !5
@.str = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.1 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/115_runtest.c_2112_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.test_target_function = private unnamed_addr constant [32 x i8] c"void test_target_function(void)\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"options\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSAX2InitHtmlDefaultSAXHandler(%struct._xmlSAXHandler* noundef %0) #0 !dbg !18 {
  %2 = alloca %struct._xmlSAXHandler*, align 8
  store %struct._xmlSAXHandler* %0, %struct._xmlSAXHandler** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSAXHandler** %2, metadata !109, metadata !DIExpression()), !dbg !110
  %3 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %2, align 8, !dbg !111
  %4 = icmp ne %struct._xmlSAXHandler* %3, null, !dbg !111
  br i1 %4, label %5, label %10, !dbg !113

5:                                                ; preds = %1
  %6 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %2, align 8, !dbg !114
  %7 = getelementptr inbounds %struct._xmlSAXHandler, %struct._xmlSAXHandler* %6, i32 0, i32 16, !dbg !116
  store i32 1, i32* %7, align 8, !dbg !117
  %8 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %2, align 8, !dbg !118
  %9 = getelementptr inbounds %struct._xmlSAXHandler, %struct._xmlSAXHandler* %8, i32 0, i32 1, !dbg !119
  store i32 1, i32* %9, align 8, !dbg !120
  br label %10, !dbg !121

10:                                               ; preds = %5, %1
  ret void, !dbg !122
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @startElementBnd(i8* noundef %0, i8* noundef %1, i8** noundef %2) #0 !dbg !123 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !130, metadata !DIExpression()), !dbg !131
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !132, metadata !DIExpression()), !dbg !133
  store i8** %2, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !134, metadata !DIExpression()), !dbg !135
  ret void, !dbg !136
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @endElementBnd(i8* noundef %0, i8* noundef %1) #0 !dbg !137 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !140, metadata !DIExpression()), !dbg !141
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !142, metadata !DIExpression()), !dbg !143
  ret void, !dbg !144
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_target_function() #0 !dbg !145 {
  %1 = alloca %struct._xmlSAXHandler, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSAXHandler* %1, metadata !148, metadata !DIExpression()), !dbg !149
  %2 = load i32, i32* @nb_tests, align 4, !dbg !150
  %3 = add nsw i32 %2, 1, !dbg !150
  store i32 %3, i32* @nb_tests, align 4, !dbg !150
  %4 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.1, i64 0, i64 0), i32 noundef 124, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.test_target_function, i64 0, i64 0)), !dbg !151
  %5 = bitcast %struct._xmlSAXHandler* %1 to i8*, !dbg !152
  %6 = call i8* @memset(i8* %5, i32 0, i64 648), !dbg !152
  ret void, !dbg !153
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !154 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @klee_make_symbolic(i8* noundef bitcast (i32* @options to i8*), i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)), !dbg !157
  %2 = load i32, i32* @options, align 4, !dbg !158
  %3 = icmp sge i32 %2, 0, !dbg !159
  %4 = zext i1 %3 to i32, !dbg !159
  %5 = sext i32 %4 to i64, !dbg !158
  call void @klee_assume(i64 noundef %5), !dbg !160
  %6 = load i32, i32* @options, align 4, !dbg !161
  %7 = icmp sle i32 %6, 255, !dbg !162
  %8 = zext i1 %7 to i32, !dbg !162
  %9 = sext i32 %8 to i64, !dbg !161
  call void @klee_assume(i64 noundef %9), !dbg !163
  store i32 0, i32* @nb_tests, align 4, !dbg !164
  call void @test_target_function(), !dbg !165
  ret i32 0, !dbg !166
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #5 !dbg !167 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !174, metadata !DIExpression()), !dbg !175
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !176, metadata !DIExpression()), !dbg !177
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !178, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.declare(metadata i8** %7, metadata !180, metadata !DIExpression()), !dbg !182
  %8 = load i8*, i8** %4, align 8, !dbg !183
  store i8* %8, i8** %7, align 8, !dbg !182
  br label %9, !dbg !184

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !185
  %11 = add i64 %10, -1, !dbg !185
  store i64 %11, i64* %6, align 8, !dbg !185
  %12 = icmp ugt i64 %10, 0, !dbg !186
  br i1 %12, label %13, label %18, !dbg !184

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !187
  %15 = trunc i32 %14 to i8, !dbg !187
  %16 = load i8*, i8** %7, align 8, !dbg !188
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !188
  store i8* %17, i8** %7, align 8, !dbg !188
  store i8 %15, i8* %16, align 1, !dbg !189
  br label %9, !dbg !184, !llvm.loop !190

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !192
  ret i8* %19, !dbg !193
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!2, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17, !17}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "nb_tests", scope: !2, file: !3, line: 109, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/115_runtest.c_2112_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "d08ebdaed48e6dd4edc7b99193244e97")
!4 = !{!0, !5}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "options", scope: !2, file: !3, line: 110, type: !7, isLocal: false, isDefinition: true)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = distinct !DICompileUnit(language: DW_LANG_C99, file: !9, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!9 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!10 = !{i32 7, !"Dwarf Version", i32 5}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{i32 7, !"PIC Level", i32 2}
!14 = !{i32 7, !"PIE Level", i32 2}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"Ubuntu clang version 14.0.6"}
!18 = distinct !DISubprogram(name: "xmlSAX2InitHtmlDefaultSAXHandler", scope: !3, file: !3, line: 96, type: !19, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !108)
!19 = !DISubroutineType(types: !20)
!20 = !{null, !21}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSAXHandler", file: !3, line: 10, baseType: !23)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSAXHandler", file: !3, line: 11, size: 5184, elements: !24)
!24 = !{!25, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "internalSubset", scope: !23, file: !3, line: 12, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "isHtml", scope: !23, file: !3, line: 13, baseType: !7, size: 32, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "startElement", scope: !23, file: !3, line: 14, baseType: !26, size: 64, offset: 128)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "endElement", scope: !23, file: !3, line: 15, baseType: !26, size: 64, offset: 192)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "startElementNs", scope: !23, file: !3, line: 16, baseType: !26, size: 64, offset: 256)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "endElementNs", scope: !23, file: !3, line: 17, baseType: !26, size: 64, offset: 320)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "characters", scope: !23, file: !3, line: 18, baseType: !26, size: 64, offset: 384)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "cdataBlock", scope: !23, file: !3, line: 19, baseType: !26, size: 64, offset: 448)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !23, file: !3, line: 20, baseType: !26, size: 64, offset: 512)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "ignorableWhitespace", scope: !23, file: !3, line: 21, baseType: !26, size: 64, offset: 576)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !23, file: !3, line: 22, baseType: !26, size: 64, offset: 640)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "warning", scope: !23, file: !3, line: 23, baseType: !26, size: 64, offset: 704)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !23, file: !3, line: 24, baseType: !26, size: 64, offset: 768)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "fatalError", scope: !23, file: !3, line: 25, baseType: !26, size: 64, offset: 832)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "getParameterEntity", scope: !23, file: !3, line: 26, baseType: !26, size: 64, offset: 896)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "externalSubset", scope: !23, file: !3, line: 27, baseType: !26, size: 64, offset: 960)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !23, file: !3, line: 28, baseType: !43, size: 32, offset: 1024)
!43 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !23, file: !3, line: 29, baseType: !26, size: 64, offset: 1088)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "startDocument", scope: !23, file: !3, line: 30, baseType: !26, size: 64, offset: 1152)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "endDocument", scope: !23, file: !3, line: 31, baseType: !26, size: 64, offset: 1216)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !23, file: !3, line: 32, baseType: !26, size: 64, offset: 1280)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "elementDecl", scope: !23, file: !3, line: 33, baseType: !26, size: 64, offset: 1344)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "notationDecl", scope: !23, file: !3, line: 34, baseType: !26, size: 64, offset: 1408)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "unparsedEntityDecl", scope: !23, file: !3, line: 35, baseType: !26, size: 64, offset: 1472)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "setDocumentLocator", scope: !23, file: !3, line: 36, baseType: !26, size: 64, offset: 1536)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "getEntity", scope: !23, file: !3, line: 37, baseType: !26, size: 64, offset: 1600)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "entityDecl", scope: !23, file: !3, line: 38, baseType: !26, size: 64, offset: 1664)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "processingInstruction", scope: !23, file: !3, line: 39, baseType: !26, size: 64, offset: 1728)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "globalNamespace", scope: !23, file: !3, line: 40, baseType: !26, size: 64, offset: 1792)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "setNamespace", scope: !23, file: !3, line: 41, baseType: !26, size: 64, offset: 1856)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "getNamespace", scope: !23, file: !3, line: 42, baseType: !26, size: 64, offset: 1920)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "checkNamespace", scope: !23, file: !3, line: 43, baseType: !26, size: 64, offset: 1984)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "namespaceDecl", scope: !23, file: !3, line: 44, baseType: !26, size: 64, offset: 2048)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "xmlDecl", scope: !23, file: !3, line: 45, baseType: !26, size: 64, offset: 2112)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "startElementDoc", scope: !23, file: !3, line: 46, baseType: !26, size: 64, offset: 2176)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "endElementDoc", scope: !23, file: !3, line: 47, baseType: !26, size: 64, offset: 2240)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "attributeDecl", scope: !23, file: !3, line: 48, baseType: !26, size: 64, offset: 2304)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "elementDeclNs", scope: !23, file: !3, line: 49, baseType: !26, size: 64, offset: 2368)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "attributeDeclNs", scope: !23, file: !3, line: 50, baseType: !26, size: 64, offset: 2432)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "notationDeclNs", scope: !23, file: !3, line: 51, baseType: !26, size: 64, offset: 2496)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "entityDeclNs", scope: !23, file: !3, line: 52, baseType: !26, size: 64, offset: 2560)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "internalSubsetNs", scope: !23, file: !3, line: 53, baseType: !26, size: 64, offset: 2624)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "externalSubsetNs", scope: !23, file: !3, line: 54, baseType: !26, size: 64, offset: 2688)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "resolveEntity", scope: !23, file: !3, line: 55, baseType: !26, size: 64, offset: 2752)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "getSystemId", scope: !23, file: !3, line: 56, baseType: !26, size: 64, offset: 2816)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "getPublicId", scope: !23, file: !3, line: 57, baseType: !26, size: 64, offset: 2880)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "getLineNumber", scope: !23, file: !3, line: 58, baseType: !26, size: 64, offset: 2944)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "getColumnNumber", scope: !23, file: !3, line: 59, baseType: !26, size: 64, offset: 3008)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "isStandalone", scope: !23, file: !3, line: 60, baseType: !26, size: 64, offset: 3072)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "hasInternalSubset", scope: !23, file: !3, line: 61, baseType: !26, size: 64, offset: 3136)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "hasExternalSubset", scope: !23, file: !3, line: 62, baseType: !26, size: 64, offset: 3200)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "hasAttribute", scope: !23, file: !3, line: 63, baseType: !26, size: 64, offset: 3264)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "hasElement", scope: !23, file: !3, line: 64, baseType: !26, size: 64, offset: 3328)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "hasNotation", scope: !23, file: !3, line: 65, baseType: !26, size: 64, offset: 3392)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "hasEntity", scope: !23, file: !3, line: 66, baseType: !26, size: 64, offset: 3456)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "hasNamespace", scope: !23, file: !3, line: 67, baseType: !26, size: 64, offset: 3520)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "hasPrefix", scope: !23, file: !3, line: 68, baseType: !26, size: 64, offset: 3584)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "hasBase", scope: !23, file: !3, line: 69, baseType: !26, size: 64, offset: 3648)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "hasLang", scope: !23, file: !3, line: 70, baseType: !26, size: 64, offset: 3712)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "hasSpace", scope: !23, file: !3, line: 71, baseType: !26, size: 64, offset: 3776)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "hasId", scope: !23, file: !3, line: 72, baseType: !26, size: 64, offset: 3840)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "hasAttr", scope: !23, file: !3, line: 73, baseType: !26, size: 64, offset: 3904)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "hasElem", scope: !23, file: !3, line: 74, baseType: !26, size: 64, offset: 3968)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "hasNot", scope: !23, file: !3, line: 75, baseType: !26, size: 64, offset: 4032)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "hasEnt", scope: !23, file: !3, line: 76, baseType: !26, size: 64, offset: 4096)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "hasNs", scope: !23, file: !3, line: 77, baseType: !26, size: 64, offset: 4160)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "hasPref", scope: !23, file: !3, line: 78, baseType: !26, size: 64, offset: 4224)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "hasBas", scope: !23, file: !3, line: 79, baseType: !26, size: 64, offset: 4288)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "hasLan", scope: !23, file: !3, line: 80, baseType: !26, size: 64, offset: 4352)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "hasSpa", scope: !23, file: !3, line: 81, baseType: !26, size: 64, offset: 4416)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "hasI", scope: !23, file: !3, line: 82, baseType: !26, size: 64, offset: 4480)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "hasA", scope: !23, file: !3, line: 83, baseType: !26, size: 64, offset: 4544)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "hasE", scope: !23, file: !3, line: 84, baseType: !26, size: 64, offset: 4608)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "hasN", scope: !23, file: !3, line: 85, baseType: !26, size: 64, offset: 4672)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "hasEn", scope: !23, file: !3, line: 86, baseType: !26, size: 64, offset: 4736)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "hasNsp", scope: !23, file: !3, line: 87, baseType: !26, size: 64, offset: 4800)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "hasPr", scope: !23, file: !3, line: 88, baseType: !26, size: 64, offset: 4864)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "hasBa", scope: !23, file: !3, line: 89, baseType: !26, size: 64, offset: 4928)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "hasLa", scope: !23, file: !3, line: 90, baseType: !26, size: 64, offset: 4992)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "hasSp", scope: !23, file: !3, line: 91, baseType: !26, size: 64, offset: 5056)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "has", scope: !23, file: !3, line: 92, baseType: !26, size: 64, offset: 5120)
!108 = !{}
!109 = !DILocalVariable(name: "hdl", arg: 1, scope: !18, file: !3, line: 96, type: !21)
!110 = !DILocation(line: 96, column: 54, scope: !18)
!111 = !DILocation(line: 98, column: 9, scope: !112)
!112 = distinct !DILexicalBlock(scope: !18, file: !3, line: 98, column: 9)
!113 = !DILocation(line: 98, column: 9, scope: !18)
!114 = !DILocation(line: 99, column: 9, scope: !115)
!115 = distinct !DILexicalBlock(scope: !112, file: !3, line: 98, column: 14)
!116 = !DILocation(line: 99, column: 14, scope: !115)
!117 = !DILocation(line: 99, column: 26, scope: !115)
!118 = !DILocation(line: 100, column: 9, scope: !115)
!119 = !DILocation(line: 100, column: 14, scope: !115)
!120 = !DILocation(line: 100, column: 21, scope: !115)
!121 = !DILocation(line: 101, column: 5, scope: !115)
!122 = !DILocation(line: 102, column: 1, scope: !18)
!123 = distinct !DISubprogram(name: "startElementBnd", scope: !3, file: !3, line: 105, type: !124, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !108)
!124 = !DISubroutineType(types: !125)
!125 = !{null, !26, !126, !129}
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!128 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!130 = !DILocalVariable(name: "ctx", arg: 1, scope: !123, file: !3, line: 105, type: !26)
!131 = !DILocation(line: 105, column: 28, scope: !123)
!132 = !DILocalVariable(name: "name", arg: 2, scope: !123, file: !3, line: 105, type: !126)
!133 = !DILocation(line: 105, column: 45, scope: !123)
!134 = !DILocalVariable(name: "atts", arg: 3, scope: !123, file: !3, line: 105, type: !129)
!135 = !DILocation(line: 105, column: 64, scope: !123)
!136 = !DILocation(line: 105, column: 71, scope: !123)
!137 = distinct !DISubprogram(name: "endElementBnd", scope: !3, file: !3, line: 106, type: !138, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !108)
!138 = !DISubroutineType(types: !139)
!139 = !{null, !26, !126}
!140 = !DILocalVariable(name: "ctx", arg: 1, scope: !137, file: !3, line: 106, type: !26)
!141 = !DILocation(line: 106, column: 26, scope: !137)
!142 = !DILocalVariable(name: "name", arg: 2, scope: !137, file: !3, line: 106, type: !126)
!143 = !DILocation(line: 106, column: 43, scope: !137)
!144 = !DILocation(line: 106, column: 50, scope: !137)
!145 = distinct !DISubprogram(name: "test_target_function", scope: !3, file: !3, line: 113, type: !146, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !108)
!146 = !DISubroutineType(types: !147)
!147 = !{null}
!148 = !DILocalVariable(name: "bndSAX", scope: !145, file: !3, line: 114, type: !22)
!149 = !DILocation(line: 114, column: 19, scope: !145)
!150 = !DILocation(line: 116, column: 13, scope: !145)
!151 = !DILocation(line: 124, column: 5, scope: !145)
!152 = !DILocation(line: 126, column: 5, scope: !145)
!153 = !DILocation(line: 135, column: 1, scope: !145)
!154 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 138, type: !155, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !108)
!155 = !DISubroutineType(types: !156)
!156 = !{!7}
!157 = !DILocation(line: 140, column: 5, scope: !154)
!158 = !DILocation(line: 143, column: 17, scope: !154)
!159 = !DILocation(line: 143, column: 25, scope: !154)
!160 = !DILocation(line: 143, column: 5, scope: !154)
!161 = !DILocation(line: 144, column: 17, scope: !154)
!162 = !DILocation(line: 144, column: 25, scope: !154)
!163 = !DILocation(line: 144, column: 5, scope: !154)
!164 = !DILocation(line: 147, column: 14, scope: !154)
!165 = !DILocation(line: 150, column: 5, scope: !154)
!166 = !DILocation(line: 152, column: 5, scope: !154)
!167 = distinct !DISubprogram(name: "memset", scope: !168, file: !168, line: 12, type: !169, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !108)
!168 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!169 = !DISubroutineType(types: !170)
!170 = !{!26, !26, !7, !171}
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !172, line: 46, baseType: !173)
!172 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!173 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!174 = !DILocalVariable(name: "dst", arg: 1, scope: !167, file: !168, line: 12, type: !26)
!175 = !DILocation(line: 12, column: 20, scope: !167)
!176 = !DILocalVariable(name: "s", arg: 2, scope: !167, file: !168, line: 12, type: !7)
!177 = !DILocation(line: 12, column: 29, scope: !167)
!178 = !DILocalVariable(name: "count", arg: 3, scope: !167, file: !168, line: 12, type: !171)
!179 = !DILocation(line: 12, column: 39, scope: !167)
!180 = !DILocalVariable(name: "a", scope: !167, file: !168, line: 13, type: !181)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!182 = !DILocation(line: 13, column: 9, scope: !167)
!183 = !DILocation(line: 13, column: 13, scope: !167)
!184 = !DILocation(line: 14, column: 3, scope: !167)
!185 = !DILocation(line: 14, column: 15, scope: !167)
!186 = !DILocation(line: 14, column: 18, scope: !167)
!187 = !DILocation(line: 15, column: 12, scope: !167)
!188 = !DILocation(line: 15, column: 7, scope: !167)
!189 = !DILocation(line: 15, column: 10, scope: !167)
!190 = distinct !{!190, !184, !187, !191}
!191 = !{!"llvm.loop.mustprogress"}
!192 = !DILocation(line: 16, column: 10, scope: !167)
!193 = !DILocation(line: 16, column: 3, scope: !167)

; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/142_tree.c_9331_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/142_tree.c_9331_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc* }
%struct._xmlDoc = type opaque

@.str = private unnamed_addr constant [41 x i8] c"xmlDOMWrapCloneNode(): allocating a node\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"(sizeof(xmlNode) <= malloc_usable_size(clone)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/142_tree.c_9331_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlDOMWrapCloneNode = private unnamed_addr constant [67 x i8] c"xmlNodePtr xmlDOMWrapCloneNode(xmlNodePtr, xmlNodePtr, xmlNodePtr)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"node\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"parentClone\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"resultClone\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !35 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !42, metadata !DIExpression()), !dbg !43
  %3 = load i64, i64* %2, align 8, !dbg !44
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !45
  ret i8* %4, !dbg !46
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlTreeErrMemory(i8* noundef %0) #0 !dbg !47 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !50, metadata !DIExpression()), !dbg !51
  ret void, !dbg !52
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlNode* @xmlDOMWrapCloneNode(%struct._xmlNode* noundef %0, %struct._xmlNode* noundef %1, %struct._xmlNode* noundef %2) #0 !dbg !53 {
  %4 = alloca %struct._xmlNode*, align 8
  %5 = alloca %struct._xmlNode*, align 8
  %6 = alloca %struct._xmlNode*, align 8
  %7 = alloca %struct._xmlNode*, align 8
  %8 = alloca %struct._xmlNode*, align 8
  store %struct._xmlNode* %0, %struct._xmlNode** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %5, metadata !56, metadata !DIExpression()), !dbg !57
  store %struct._xmlNode* %1, %struct._xmlNode** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %6, metadata !58, metadata !DIExpression()), !dbg !59
  store %struct._xmlNode* %2, %struct._xmlNode** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %7, metadata !60, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %8, metadata !62, metadata !DIExpression()), !dbg !63
  %9 = call i8* @xmlMalloc(i64 noundef 72), !dbg !64
  %10 = bitcast i8* %9 to %struct._xmlNode*, !dbg !65
  store %struct._xmlNode* %10, %struct._xmlNode** %8, align 8, !dbg !66
  %11 = load %struct._xmlNode*, %struct._xmlNode** %8, align 8, !dbg !67
  %12 = icmp eq %struct._xmlNode* %11, null, !dbg !69
  br i1 %12, label %13, label %14, !dbg !70

13:                                               ; preds = %3
  call void @xmlTreeErrMemory(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0)), !dbg !71
  br label %36, !dbg !73

14:                                               ; preds = %3
  %15 = load %struct._xmlNode*, %struct._xmlNode** %8, align 8, !dbg !74
  %16 = call i32 (%struct._xmlNode*, ...) bitcast (i32 (...)* @malloc_usable_size to i32 (%struct._xmlNode*, ...)*)(%struct._xmlNode* noundef %15), !dbg !74
  %17 = sext i32 %16 to i64, !dbg !74
  %18 = icmp ule i64 72, %17, !dbg !74
  br i1 %18, label %19, label %21, !dbg !74

19:                                               ; preds = %14
  br i1 true, label %20, label %21, !dbg !74

20:                                               ; preds = %19
  br label %23, !dbg !74

21:                                               ; preds = %19, %14
  %22 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.3, i64 0, i64 0), i32 noundef 49, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.xmlDOMWrapCloneNode, i64 0, i64 0)), !dbg !74
  br label %23, !dbg !74

23:                                               ; preds = %21, %20
  %24 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.3, i64 0, i64 0), i32 noundef 52, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.xmlDOMWrapCloneNode, i64 0, i64 0)), !dbg !75
  %25 = load %struct._xmlNode*, %struct._xmlNode** %8, align 8, !dbg !76
  %26 = bitcast %struct._xmlNode* %25 to i8*, !dbg !77
  %27 = call i8* @memset(i8* %26, i32 0, i64 72), !dbg !77
  %28 = load %struct._xmlNode*, %struct._xmlNode** %7, align 8, !dbg !78
  %29 = icmp ne %struct._xmlNode* %28, null, !dbg !80
  br i1 %29, label %30, label %34, !dbg !81

30:                                               ; preds = %23
  %31 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !82
  %32 = load %struct._xmlNode*, %struct._xmlNode** %8, align 8, !dbg !84
  %33 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %32, i32 0, i32 5, !dbg !85
  store %struct._xmlNode* %31, %struct._xmlNode** %33, align 8, !dbg !86
  br label %34, !dbg !87

34:                                               ; preds = %30, %23
  %35 = load %struct._xmlNode*, %struct._xmlNode** %8, align 8, !dbg !88
  store %struct._xmlNode* %35, %struct._xmlNode** %4, align 8, !dbg !89
  br label %37, !dbg !89

36:                                               ; preds = %13
  call void @llvm.dbg.label(metadata !90), !dbg !91
  store %struct._xmlNode* null, %struct._xmlNode** %4, align 8, !dbg !92
  br label %37, !dbg !92

37:                                               ; preds = %36, %34
  %38 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !93
  ret %struct._xmlNode* %38, !dbg !93
}

declare i32 @malloc_usable_size(...) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlNode* @xmlStringGetNodeList() #0 !dbg !94 {
  ret %struct._xmlNode* null, !dbg !97
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !98 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlNode*, align 8
  %3 = alloca %struct._xmlNode*, align 8
  %4 = alloca %struct._xmlNode*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %2, metadata !101, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %3, metadata !103, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %4, metadata !105, metadata !DIExpression()), !dbg !106
  %5 = bitcast %struct._xmlNode** %2 to i8*, !dbg !107
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)), !dbg !108
  %6 = bitcast %struct._xmlNode** %3 to i8*, !dbg !109
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 8, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0)), !dbg !110
  %7 = bitcast %struct._xmlNode** %4 to i8*, !dbg !111
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 8, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0)), !dbg !112
  %8 = load %struct._xmlNode*, %struct._xmlNode** %2, align 8, !dbg !113
  %9 = icmp ne %struct._xmlNode* %8, null, !dbg !114
  %10 = zext i1 %9 to i32, !dbg !114
  %11 = sext i32 %10 to i64, !dbg !113
  call void @klee_assume(i64 noundef %11), !dbg !115
  %12 = load %struct._xmlNode*, %struct._xmlNode** %2, align 8, !dbg !116
  %13 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !117
  %14 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !118
  %15 = call %struct._xmlNode* @xmlDOMWrapCloneNode(%struct._xmlNode* noundef %12, %struct._xmlNode* noundef %13, %struct._xmlNode* noundef %14), !dbg !119
  ret i32 0, !dbg !120
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !121 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !125, metadata !DIExpression()), !dbg !126
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !127, metadata !DIExpression()), !dbg !128
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !129, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.declare(metadata i8** %7, metadata !131, metadata !DIExpression()), !dbg !133
  %8 = load i8*, i8** %4, align 8, !dbg !134
  store i8* %8, i8** %7, align 8, !dbg !133
  br label %9, !dbg !135

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !136
  %11 = add i64 %10, -1, !dbg !136
  store i64 %11, i64* %6, align 8, !dbg !136
  %12 = icmp ugt i64 %10, 0, !dbg !137
  br i1 %12, label %13, label %18, !dbg !135

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !138
  %15 = trunc i32 %14 to i8, !dbg !138
  %16 = load i8*, i8** %7, align 8, !dbg !139
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !139
  store i8* %17, i8** %7, align 8, !dbg !139
  store i8 %15, i8* %16, align 1, !dbg !140
  br label %9, !dbg !135, !llvm.loop !141

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !143
  ret i8* %19, !dbg !144
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34, !34}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/142_tree.c_9331_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "313337dd093afee6db8f29ed70d5e822")
!2 = !{!3, !9}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !1, line: 11, baseType: !4)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 10, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 13, size: 576, elements: !7)
!7 = !{!8, !10, !12, !16, !18, !19, !20, !21, !22}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !6, file: !1, line: 14, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6, file: !1, line: 15, baseType: !11, size: 32, offset: 64)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6, file: !1, line: 16, baseType: !13, size: 64, offset: 128)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !6, file: !1, line: 17, baseType: !17, size: 64, offset: 192)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !6, file: !1, line: 18, baseType: !17, size: 64, offset: 256)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !6, file: !1, line: 19, baseType: !17, size: 64, offset: 320)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6, file: !1, line: 20, baseType: !17, size: 64, offset: 384)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !6, file: !1, line: 21, baseType: !17, size: 64, offset: 448)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !6, file: !1, line: 22, baseType: !23, size: 64, offset: 512)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !1, line: 22, flags: DIFlagFwdDecl)
!25 = distinct !DICompileUnit(language: DW_LANG_C99, file: !26, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!26 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!27 = !{i32 7, !"Dwarf Version", i32 5}
!28 = !{i32 2, !"Debug Info Version", i32 3}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"Ubuntu clang version 14.0.6"}
!35 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 27, type: !36, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !41)
!36 = !DISubroutineType(types: !37)
!37 = !{!9, !38}
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !39, line: 46, baseType: !40)
!39 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!40 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!41 = !{}
!42 = !DILocalVariable(name: "size", arg: 1, scope: !35, file: !1, line: 27, type: !38)
!43 = !DILocation(line: 27, column: 24, scope: !35)
!44 = !DILocation(line: 28, column: 19, scope: !35)
!45 = !DILocation(line: 28, column: 12, scope: !35)
!46 = !DILocation(line: 28, column: 5, scope: !35)
!47 = distinct !DISubprogram(name: "xmlTreeErrMemory", scope: !1, file: !1, line: 32, type: !48, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !41)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !13}
!50 = !DILocalVariable(name: "msg", arg: 1, scope: !47, file: !1, line: 32, type: !13)
!51 = !DILocation(line: 32, column: 35, scope: !47)
!52 = !DILocation(line: 34, column: 1, scope: !47)
!53 = distinct !DISubprogram(name: "xmlDOMWrapCloneNode", scope: !1, file: !1, line: 37, type: !54, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !41)
!54 = !DISubroutineType(types: !55)
!55 = !{!3, !3, !3, !3}
!56 = !DILocalVariable(name: "node", arg: 1, scope: !53, file: !1, line: 37, type: !3)
!57 = !DILocation(line: 37, column: 43, scope: !53)
!58 = !DILocalVariable(name: "parentClone", arg: 2, scope: !53, file: !1, line: 37, type: !3)
!59 = !DILocation(line: 37, column: 60, scope: !53)
!60 = !DILocalVariable(name: "resultClone", arg: 3, scope: !53, file: !1, line: 37, type: !3)
!61 = !DILocation(line: 37, column: 84, scope: !53)
!62 = !DILocalVariable(name: "clone", scope: !53, file: !1, line: 38, type: !3)
!63 = !DILocation(line: 38, column: 16, scope: !53)
!64 = !DILocation(line: 41, column: 26, scope: !53)
!65 = !DILocation(line: 41, column: 13, scope: !53)
!66 = !DILocation(line: 41, column: 11, scope: !53)
!67 = !DILocation(line: 42, column: 9, scope: !68)
!68 = distinct !DILexicalBlock(scope: !53, file: !1, line: 42, column: 9)
!69 = !DILocation(line: 42, column: 15, scope: !68)
!70 = !DILocation(line: 42, column: 9, scope: !53)
!71 = !DILocation(line: 43, column: 9, scope: !72)
!72 = distinct !DILexicalBlock(scope: !68, file: !1, line: 42, column: 24)
!73 = !DILocation(line: 44, column: 9, scope: !72)
!74 = !DILocation(line: 49, column: 5, scope: !53)
!75 = !DILocation(line: 52, column: 5, scope: !53)
!76 = !DILocation(line: 54, column: 12, scope: !53)
!77 = !DILocation(line: 54, column: 5, scope: !53)
!78 = !DILocation(line: 57, column: 9, scope: !79)
!79 = distinct !DILexicalBlock(scope: !53, file: !1, line: 57, column: 9)
!80 = !DILocation(line: 57, column: 21, scope: !79)
!81 = !DILocation(line: 57, column: 9, scope: !53)
!82 = !DILocation(line: 58, column: 25, scope: !83)
!83 = distinct !DILexicalBlock(scope: !79, file: !1, line: 57, column: 30)
!84 = !DILocation(line: 58, column: 9, scope: !83)
!85 = !DILocation(line: 58, column: 16, scope: !83)
!86 = !DILocation(line: 58, column: 23, scope: !83)
!87 = !DILocation(line: 59, column: 5, scope: !83)
!88 = !DILocation(line: 61, column: 12, scope: !53)
!89 = !DILocation(line: 61, column: 5, scope: !53)
!90 = !DILabel(scope: !53, name: "internal_error", file: !1, line: 63)
!91 = !DILocation(line: 63, column: 1, scope: !53)
!92 = !DILocation(line: 64, column: 5, scope: !53)
!93 = !DILocation(line: 65, column: 1, scope: !53)
!94 = distinct !DISubprogram(name: "xmlStringGetNodeList", scope: !1, file: !1, line: 68, type: !95, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !41)
!95 = !DISubroutineType(types: !96)
!96 = !{!3}
!97 = !DILocation(line: 71, column: 5, scope: !94)
!98 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 74, type: !99, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !41)
!99 = !DISubroutineType(types: !100)
!100 = !{!11}
!101 = !DILocalVariable(name: "node", scope: !98, file: !1, line: 75, type: !3)
!102 = !DILocation(line: 75, column: 16, scope: !98)
!103 = !DILocalVariable(name: "parentClone", scope: !98, file: !1, line: 75, type: !3)
!104 = !DILocation(line: 75, column: 22, scope: !98)
!105 = !DILocalVariable(name: "resultClone", scope: !98, file: !1, line: 75, type: !3)
!106 = !DILocation(line: 75, column: 35, scope: !98)
!107 = !DILocation(line: 78, column: 24, scope: !98)
!108 = !DILocation(line: 78, column: 5, scope: !98)
!109 = !DILocation(line: 79, column: 24, scope: !98)
!110 = !DILocation(line: 79, column: 5, scope: !98)
!111 = !DILocation(line: 80, column: 24, scope: !98)
!112 = !DILocation(line: 80, column: 5, scope: !98)
!113 = !DILocation(line: 83, column: 17, scope: !98)
!114 = !DILocation(line: 83, column: 22, scope: !98)
!115 = !DILocation(line: 83, column: 5, scope: !98)
!116 = !DILocation(line: 86, column: 25, scope: !98)
!117 = !DILocation(line: 86, column: 31, scope: !98)
!118 = !DILocation(line: 86, column: 44, scope: !98)
!119 = !DILocation(line: 86, column: 5, scope: !98)
!120 = !DILocation(line: 88, column: 5, scope: !98)
!121 = distinct !DISubprogram(name: "memset", scope: !122, file: !122, line: 12, type: !123, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !41)
!122 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!123 = !DISubroutineType(types: !124)
!124 = !{!9, !9, !11, !38}
!125 = !DILocalVariable(name: "dst", arg: 1, scope: !121, file: !122, line: 12, type: !9)
!126 = !DILocation(line: 12, column: 20, scope: !121)
!127 = !DILocalVariable(name: "s", arg: 2, scope: !121, file: !122, line: 12, type: !11)
!128 = !DILocation(line: 12, column: 29, scope: !121)
!129 = !DILocalVariable(name: "count", arg: 3, scope: !121, file: !122, line: 12, type: !38)
!130 = !DILocation(line: 12, column: 39, scope: !121)
!131 = !DILocalVariable(name: "a", scope: !121, file: !122, line: 13, type: !132)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!133 = !DILocation(line: 13, column: 9, scope: !121)
!134 = !DILocation(line: 13, column: 13, scope: !121)
!135 = !DILocation(line: 14, column: 3, scope: !121)
!136 = !DILocation(line: 14, column: 15, scope: !121)
!137 = !DILocation(line: 14, column: 18, scope: !121)
!138 = !DILocation(line: 15, column: 12, scope: !121)
!139 = !DILocation(line: 15, column: 7, scope: !121)
!140 = !DILocation(line: 15, column: 10, scope: !121)
!141 = distinct !{!141, !135, !138, !142}
!142 = !{!"llvm.loop.mustprogress"}
!143 = !DILocation(line: 16, column: 10, scope: !121)
!144 = !DILocation(line: 16, column: 3, scope: !121)

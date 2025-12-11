; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/029_c14n.c_260_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/029_c14n.c_260_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlNode = type { i32, i8* }
%struct._xmlNs = type { %struct._xmlNs* }

@.str = private unnamed_addr constant [24 x i8] c"nodeset_contains_result\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"(node != ((void*)0)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_62911_vul/029_c14n.c_260_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlC14NIsNodeInNodeset = private unnamed_addr constant [59 x i8] c"int xmlC14NIsNodeInNodeset(xmlNodePtr, void *, xmlNodePtr)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"node\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"parent_node\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"nodes\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"parent_is_null\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlXPathNodeSetContains(i8* noundef %0, %struct._xmlNode* noundef %1) #0 !dbg !20 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._xmlNode*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !32, metadata !DIExpression()), !dbg !33
  store %struct._xmlNode* %1, %struct._xmlNode** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %4, metadata !34, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.declare(metadata i32* %5, metadata !36, metadata !DIExpression()), !dbg !37
  %6 = bitcast i32* %5 to i8*, !dbg !38
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0)), !dbg !39
  %7 = load i32, i32* %5, align 4, !dbg !40
  %8 = icmp eq i32 %7, 0, !dbg !41
  br i1 %8, label %12, label %9, !dbg !42

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4, !dbg !43
  %11 = icmp eq i32 %10, 1, !dbg !44
  br label %12, !dbg !42

12:                                               ; preds = %9, %2
  %13 = phi i1 [ true, %2 ], [ %11, %9 ]
  %14 = zext i1 %13 to i32, !dbg !42
  %15 = sext i32 %14 to i64, !dbg !40
  call void @klee_assume(i64 noundef %15), !dbg !45
  %16 = load i32, i32* %5, align 4, !dbg !46
  ret i32 %16, !dbg !47
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlC14NIsNodeInNodeset(%struct._xmlNode* noundef %0, i8* noundef %1, %struct._xmlNode* noundef %2) #0 !dbg !48 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._xmlNode*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._xmlNode*, align 8
  %8 = alloca %struct._xmlNs, align 8
  store %struct._xmlNode* %0, %struct._xmlNode** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %5, metadata !51, metadata !DIExpression()), !dbg !52
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !53, metadata !DIExpression()), !dbg !54
  store %struct._xmlNode* %2, %struct._xmlNode** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %7, metadata !55, metadata !DIExpression()), !dbg !56
  %9 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !57
  %10 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %9, i32 0, i32 0, !dbg !59
  %11 = load i32, i32* %10, align 8, !dbg !59
  %12 = icmp ne i32 %11, 3, !dbg !60
  br i1 %12, label %13, label %17, !dbg !61

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8, !dbg !62
  %15 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !64
  %16 = call i32 @xmlXPathNodeSetContains(i8* noundef %14, %struct._xmlNode* noundef %15), !dbg !65
  store i32 %16, i32* %4, align 4, !dbg !66
  br label %46, !dbg !66

17:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata %struct._xmlNs* %8, metadata !67, metadata !DIExpression()), !dbg !69
  %18 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !70
  %19 = icmp ne %struct._xmlNode* %18, null, !dbg !70
  br i1 %19, label %20, label %22, !dbg !70

20:                                               ; preds = %17
  br i1 true, label %21, label %22, !dbg !70

21:                                               ; preds = %20
  br label %24, !dbg !70

22:                                               ; preds = %20, %17
  %23 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.3, i64 0, i64 0), i32 noundef 42, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.xmlC14NIsNodeInNodeset, i64 0, i64 0)), !dbg !70
  br label %24, !dbg !70

24:                                               ; preds = %22, %21
  %25 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.3, i64 0, i64 0), i32 noundef 45, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.xmlC14NIsNodeInNodeset, i64 0, i64 0)), !dbg !71
  %26 = bitcast %struct._xmlNs* %8 to i8*, !dbg !72
  %27 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !73
  %28 = bitcast %struct._xmlNode* %27 to i8*, !dbg !72
  %29 = call i8* @memcpy(i8* %26, i8* %28, i64 8), !dbg !72
  %30 = load %struct._xmlNode*, %struct._xmlNode** %7, align 8, !dbg !74
  %31 = icmp ne %struct._xmlNode* %30, null, !dbg !76
  br i1 %31, label %32, label %43, !dbg !77

32:                                               ; preds = %24
  %33 = load %struct._xmlNode*, %struct._xmlNode** %7, align 8, !dbg !78
  %34 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %33, i32 0, i32 0, !dbg !79
  %35 = load i32, i32* %34, align 8, !dbg !79
  %36 = icmp eq i32 %35, 2, !dbg !80
  br i1 %36, label %37, label %43, !dbg !81

37:                                               ; preds = %32
  %38 = load %struct._xmlNode*, %struct._xmlNode** %7, align 8, !dbg !82
  %39 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %38, i32 0, i32 1, !dbg !84
  %40 = load i8*, i8** %39, align 8, !dbg !84
  %41 = bitcast i8* %40 to %struct._xmlNs*, !dbg !85
  %42 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %8, i32 0, i32 0, !dbg !86
  store %struct._xmlNs* %41, %struct._xmlNs** %42, align 8, !dbg !87
  br label %45, !dbg !88

43:                                               ; preds = %32, %24
  %44 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %8, i32 0, i32 0, !dbg !89
  store %struct._xmlNs* null, %struct._xmlNs** %44, align 8, !dbg !91
  br label %45

45:                                               ; preds = %43, %37
  store i32 0, i32* %4, align 4, !dbg !92
  br label %46, !dbg !92

46:                                               ; preds = %45, %13
  %47 = load i32, i32* %4, align 4, !dbg !93
  ret i32 %47, !dbg !93
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !94 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlNode, align 8
  %3 = alloca %struct._xmlNode, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._xmlNode*, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlNode* %2, metadata !97, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.declare(metadata %struct._xmlNode* %3, metadata !99, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.declare(metadata i8** %4, metadata !101, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %5, metadata !103, metadata !DIExpression()), !dbg !104
  %7 = bitcast %struct._xmlNode* %2 to i8*, !dbg !105
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 16, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)), !dbg !106
  %8 = bitcast %struct._xmlNode* %3 to i8*, !dbg !107
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 16, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0)), !dbg !108
  %9 = bitcast i8** %4 to i8*, !dbg !109
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 8, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)), !dbg !110
  call void @llvm.dbg.declare(metadata i32* %6, metadata !111, metadata !DIExpression()), !dbg !112
  %10 = bitcast i32* %6 to i8*, !dbg !113
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0)), !dbg !114
  %11 = load i32, i32* %6, align 4, !dbg !115
  %12 = icmp eq i32 %11, 0, !dbg !116
  br i1 %12, label %16, label %13, !dbg !117

13:                                               ; preds = %0
  %14 = load i32, i32* %6, align 4, !dbg !118
  %15 = icmp eq i32 %14, 1, !dbg !119
  br label %16, !dbg !117

16:                                               ; preds = %13, %0
  %17 = phi i1 [ true, %0 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32, !dbg !117
  %19 = sext i32 %18 to i64, !dbg !115
  call void @klee_assume(i64 noundef %19), !dbg !120
  %20 = load i32, i32* %6, align 4, !dbg !121
  %21 = icmp ne i32 %20, 0, !dbg !121
  br i1 %21, label %22, label %23, !dbg !123

22:                                               ; preds = %16
  store %struct._xmlNode* null, %struct._xmlNode** %5, align 8, !dbg !124
  br label %24, !dbg !126

23:                                               ; preds = %16
  store %struct._xmlNode* %3, %struct._xmlNode** %5, align 8, !dbg !127
  br label %24

24:                                               ; preds = %23, %22
  %25 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %2, i32 0, i32 0, !dbg !129
  %26 = load i32, i32* %25, align 8, !dbg !129
  %27 = icmp eq i32 %26, 3, !dbg !130
  %28 = zext i1 %27 to i32, !dbg !130
  %29 = sext i32 %28 to i64, !dbg !131
  call void @klee_assume(i64 noundef %29), !dbg !132
  %30 = load i8*, i8** %4, align 8, !dbg !133
  %31 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !134
  %32 = call i32 @xmlC14NIsNodeInNodeset(%struct._xmlNode* noundef %2, i8* noundef %30, %struct._xmlNode* noundef %31), !dbg !135
  ret i32 0, !dbg !136
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #5 !dbg !137 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !146, metadata !DIExpression()), !dbg !147
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !148, metadata !DIExpression()), !dbg !149
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !150, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.declare(metadata i8** %7, metadata !152, metadata !DIExpression()), !dbg !155
  %9 = load i8*, i8** %4, align 8, !dbg !156
  store i8* %9, i8** %7, align 8, !dbg !155
  call void @llvm.dbg.declare(metadata i8** %8, metadata !157, metadata !DIExpression()), !dbg !160
  %10 = load i8*, i8** %5, align 8, !dbg !161
  store i8* %10, i8** %8, align 8, !dbg !160
  br label %11, !dbg !162

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !163
  %13 = add i64 %12, -1, !dbg !163
  store i64 %13, i64* %6, align 8, !dbg !163
  %14 = icmp ugt i64 %12, 0, !dbg !164
  br i1 %14, label %15, label %21, !dbg !162

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !165
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !165
  store i8* %17, i8** %8, align 8, !dbg !165
  %18 = load i8, i8* %16, align 1, !dbg !166
  %19 = load i8*, i8** %7, align 8, !dbg !167
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !167
  store i8* %20, i8** %7, align 8, !dbg !167
  store i8 %18, i8* %19, align 1, !dbg !168
  br label %11, !dbg !162, !llvm.loop !169

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !171
  ret i8* %22, !dbg !172
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19, !19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/029_c14n.c_260_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "75ebe5aa32e5f2edbf0f388b29368a4f")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsPtr", file: !1, line: 13, baseType: !5)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !1, line: 12, baseType: !7)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !1, line: 20, size: 64, elements: !8)
!8 = !{!9}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !7, file: !1, line: 21, baseType: !4, size: 64)
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !11, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!11 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!12 = !{i32 7, !"Dwarf Version", i32 5}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{i32 7, !"PIC Level", i32 2}
!16 = !{i32 7, !"PIE Level", i32 2}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"Ubuntu clang version 14.0.6"}
!20 = distinct !DISubprogram(name: "xmlXPathNodeSetContains", scope: !1, file: !1, line: 25, type: !21, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!21 = !DISubroutineType(types: !22)
!22 = !{!23, !3, !24}
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !1, line: 11, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 10, baseType: !27)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 15, size: 128, elements: !28)
!28 = !{!29, !30}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !27, file: !1, line: 16, baseType: !23, size: 32)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !27, file: !1, line: 17, baseType: !3, size: 64, offset: 64)
!31 = !{}
!32 = !DILocalVariable(name: "nodes", arg: 1, scope: !20, file: !1, line: 25, type: !3)
!33 = !DILocation(line: 25, column: 35, scope: !20)
!34 = !DILocalVariable(name: "node", arg: 2, scope: !20, file: !1, line: 25, type: !24)
!35 = !DILocation(line: 25, column: 53, scope: !20)
!36 = !DILocalVariable(name: "result", scope: !20, file: !1, line: 27, type: !23)
!37 = !DILocation(line: 27, column: 9, scope: !20)
!38 = !DILocation(line: 28, column: 24, scope: !20)
!39 = !DILocation(line: 28, column: 5, scope: !20)
!40 = !DILocation(line: 29, column: 17, scope: !20)
!41 = !DILocation(line: 29, column: 24, scope: !20)
!42 = !DILocation(line: 29, column: 29, scope: !20)
!43 = !DILocation(line: 29, column: 32, scope: !20)
!44 = !DILocation(line: 29, column: 39, scope: !20)
!45 = !DILocation(line: 29, column: 5, scope: !20)
!46 = !DILocation(line: 30, column: 12, scope: !20)
!47 = !DILocation(line: 30, column: 5, scope: !20)
!48 = distinct !DISubprogram(name: "xmlC14NIsNodeInNodeset", scope: !1, file: !1, line: 34, type: !49, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!49 = !DISubroutineType(types: !50)
!50 = !{!23, !24, !3, !24}
!51 = !DILocalVariable(name: "node", arg: 1, scope: !48, file: !1, line: 34, type: !24)
!52 = !DILocation(line: 34, column: 39, scope: !48)
!53 = !DILocalVariable(name: "nodes", arg: 2, scope: !48, file: !1, line: 34, type: !3)
!54 = !DILocation(line: 34, column: 51, scope: !48)
!55 = !DILocalVariable(name: "parent", arg: 3, scope: !48, file: !1, line: 34, type: !24)
!56 = !DILocation(line: 34, column: 69, scope: !48)
!57 = !DILocation(line: 35, column: 9, scope: !58)
!58 = distinct !DILexicalBlock(scope: !48, file: !1, line: 35, column: 9)
!59 = !DILocation(line: 35, column: 15, scope: !58)
!60 = !DILocation(line: 35, column: 20, scope: !58)
!61 = !DILocation(line: 35, column: 9, scope: !48)
!62 = !DILocation(line: 36, column: 40, scope: !63)
!63 = distinct !DILexicalBlock(scope: !58, file: !1, line: 35, column: 26)
!64 = !DILocation(line: 36, column: 47, scope: !63)
!65 = !DILocation(line: 36, column: 16, scope: !63)
!66 = !DILocation(line: 36, column: 9, scope: !63)
!67 = !DILocalVariable(name: "ns", scope: !68, file: !1, line: 38, type: !6)
!68 = distinct !DILexicalBlock(scope: !58, file: !1, line: 37, column: 12)
!69 = !DILocation(line: 38, column: 15, scope: !68)
!70 = !DILocation(line: 42, column: 9, scope: !68)
!71 = !DILocation(line: 45, column: 9, scope: !68)
!72 = !DILocation(line: 47, column: 9, scope: !68)
!73 = !DILocation(line: 47, column: 21, scope: !68)
!74 = !DILocation(line: 50, column: 14, scope: !75)
!75 = distinct !DILexicalBlock(scope: !68, file: !1, line: 50, column: 13)
!76 = !DILocation(line: 50, column: 21, scope: !75)
!77 = !DILocation(line: 50, column: 30, scope: !75)
!78 = !DILocation(line: 50, column: 34, scope: !75)
!79 = !DILocation(line: 50, column: 42, scope: !75)
!80 = !DILocation(line: 50, column: 47, scope: !75)
!81 = !DILocation(line: 50, column: 13, scope: !68)
!82 = !DILocation(line: 51, column: 33, scope: !83)
!83 = distinct !DILexicalBlock(scope: !75, file: !1, line: 50, column: 54)
!84 = !DILocation(line: 51, column: 41, scope: !83)
!85 = !DILocation(line: 51, column: 23, scope: !83)
!86 = !DILocation(line: 51, column: 16, scope: !83)
!87 = !DILocation(line: 51, column: 21, scope: !83)
!88 = !DILocation(line: 52, column: 9, scope: !83)
!89 = !DILocation(line: 53, column: 16, scope: !90)
!90 = distinct !DILexicalBlock(scope: !75, file: !1, line: 52, column: 16)
!91 = !DILocation(line: 53, column: 21, scope: !90)
!92 = !DILocation(line: 55, column: 9, scope: !68)
!93 = !DILocation(line: 57, column: 1, scope: !48)
!94 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 60, type: !95, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!95 = !DISubroutineType(types: !96)
!96 = !{!23}
!97 = !DILocalVariable(name: "node", scope: !94, file: !1, line: 62, type: !26)
!98 = !DILocation(line: 62, column: 13, scope: !94)
!99 = !DILocalVariable(name: "parent_node", scope: !94, file: !1, line: 63, type: !26)
!100 = !DILocation(line: 63, column: 13, scope: !94)
!101 = !DILocalVariable(name: "nodes", scope: !94, file: !1, line: 64, type: !3)
!102 = !DILocation(line: 64, column: 11, scope: !94)
!103 = !DILocalVariable(name: "parent_ptr", scope: !94, file: !1, line: 65, type: !24)
!104 = !DILocation(line: 65, column: 16, scope: !94)
!105 = !DILocation(line: 68, column: 24, scope: !94)
!106 = !DILocation(line: 68, column: 5, scope: !94)
!107 = !DILocation(line: 69, column: 24, scope: !94)
!108 = !DILocation(line: 69, column: 5, scope: !94)
!109 = !DILocation(line: 70, column: 24, scope: !94)
!110 = !DILocation(line: 70, column: 5, scope: !94)
!111 = !DILocalVariable(name: "parent_is_null", scope: !94, file: !1, line: 73, type: !23)
!112 = !DILocation(line: 73, column: 9, scope: !94)
!113 = !DILocation(line: 74, column: 24, scope: !94)
!114 = !DILocation(line: 74, column: 5, scope: !94)
!115 = !DILocation(line: 75, column: 17, scope: !94)
!116 = !DILocation(line: 75, column: 32, scope: !94)
!117 = !DILocation(line: 75, column: 37, scope: !94)
!118 = !DILocation(line: 75, column: 40, scope: !94)
!119 = !DILocation(line: 75, column: 55, scope: !94)
!120 = !DILocation(line: 75, column: 5, scope: !94)
!121 = !DILocation(line: 77, column: 9, scope: !122)
!122 = distinct !DILexicalBlock(scope: !94, file: !1, line: 77, column: 9)
!123 = !DILocation(line: 77, column: 9, scope: !94)
!124 = !DILocation(line: 78, column: 20, scope: !125)
!125 = distinct !DILexicalBlock(scope: !122, file: !1, line: 77, column: 25)
!126 = !DILocation(line: 79, column: 5, scope: !125)
!127 = !DILocation(line: 80, column: 20, scope: !128)
!128 = distinct !DILexicalBlock(scope: !122, file: !1, line: 79, column: 12)
!129 = !DILocation(line: 84, column: 22, scope: !94)
!130 = !DILocation(line: 84, column: 27, scope: !94)
!131 = !DILocation(line: 84, column: 17, scope: !94)
!132 = !DILocation(line: 84, column: 5, scope: !94)
!133 = !DILocation(line: 87, column: 35, scope: !94)
!134 = !DILocation(line: 87, column: 42, scope: !94)
!135 = !DILocation(line: 87, column: 5, scope: !94)
!136 = !DILocation(line: 89, column: 5, scope: !94)
!137 = distinct !DISubprogram(name: "memcpy", scope: !138, file: !138, line: 12, type: !139, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !31)
!138 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!139 = !DISubroutineType(types: !140)
!140 = !{!3, !3, !141, !143}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !144, line: 46, baseType: !145)
!144 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!145 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!146 = !DILocalVariable(name: "destaddr", arg: 1, scope: !137, file: !138, line: 12, type: !3)
!147 = !DILocation(line: 12, column: 20, scope: !137)
!148 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !137, file: !138, line: 12, type: !141)
!149 = !DILocation(line: 12, column: 42, scope: !137)
!150 = !DILocalVariable(name: "len", arg: 3, scope: !137, file: !138, line: 12, type: !143)
!151 = !DILocation(line: 12, column: 58, scope: !137)
!152 = !DILocalVariable(name: "dest", scope: !137, file: !138, line: 13, type: !153)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!155 = !DILocation(line: 13, column: 9, scope: !137)
!156 = !DILocation(line: 13, column: 16, scope: !137)
!157 = !DILocalVariable(name: "src", scope: !137, file: !138, line: 14, type: !158)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!160 = !DILocation(line: 14, column: 15, scope: !137)
!161 = !DILocation(line: 14, column: 21, scope: !137)
!162 = !DILocation(line: 16, column: 3, scope: !137)
!163 = !DILocation(line: 16, column: 13, scope: !137)
!164 = !DILocation(line: 16, column: 16, scope: !137)
!165 = !DILocation(line: 17, column: 19, scope: !137)
!166 = !DILocation(line: 17, column: 15, scope: !137)
!167 = !DILocation(line: 17, column: 10, scope: !137)
!168 = !DILocation(line: 17, column: 13, scope: !137)
!169 = distinct !{!169, !162, !165, !170}
!170 = !{!"llvm.loop.mustprogress"}
!171 = !DILocation(line: 18, column: 10, scope: !137)
!172 = !DILocation(line: 18, column: 3, scope: !137)

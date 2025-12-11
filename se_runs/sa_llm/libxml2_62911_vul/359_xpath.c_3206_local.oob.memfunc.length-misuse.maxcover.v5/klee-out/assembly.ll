; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/359_xpath.c_3206_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/359_xpath.c_3206_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlNode = type opaque
%struct._xmlXPathNodeSet = type { i32, i32, %struct._xmlNode** }

@.str = private unnamed_addr constant [11 x i8] c"return_val\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"growing nodeset\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"(cur.nodeMax > 0 && cur.nodeMax <= 10) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_62911_vul/359_xpath.c_3206_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlXPathCmpNodesExt = private unnamed_addr constant [48 x i8] c"int xmlXPathCmpNodesExt(xmlNodePtr, xmlNodePtr)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"node1\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"node2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlXPathErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !19 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !26, metadata !DIExpression()), !dbg !27
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !28, metadata !DIExpression()), !dbg !29
  ret void, !dbg !30
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlXPathCmpNodesExt(%struct._xmlNode* noundef %0, %struct._xmlNode* noundef %1) #0 !dbg !31 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlNode*, align 8
  %5 = alloca %struct._xmlNode*, align 8
  %6 = alloca %struct._xmlXPathNodeSet, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._xmlNode**, align 8
  store %struct._xmlNode* %0, %struct._xmlNode** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %4, metadata !35, metadata !DIExpression()), !dbg !36
  store %struct._xmlNode* %1, %struct._xmlNode** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %5, metadata !37, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata %struct._xmlXPathNodeSet* %6, metadata !39, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.declare(metadata i32* %7, metadata !47, metadata !DIExpression()), !dbg !48
  %9 = bitcast i32* %7 to i8*, !dbg !49
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0)), !dbg !50
  %10 = load i32, i32* %7, align 4, !dbg !51
  %11 = icmp sge i32 %10, 0, !dbg !52
  %12 = zext i1 %11 to i32, !dbg !52
  %13 = sext i32 %12 to i64, !dbg !51
  call void @klee_assume(i64 noundef %13), !dbg !53
  %14 = load i32, i32* %7, align 4, !dbg !54
  %15 = getelementptr inbounds %struct._xmlXPathNodeSet, %struct._xmlXPathNodeSet* %6, i32 0, i32 0, !dbg !55
  store i32 %14, i32* %15, align 8, !dbg !56
  %16 = getelementptr inbounds %struct._xmlXPathNodeSet, %struct._xmlXPathNodeSet* %6, i32 0, i32 1, !dbg !57
  store i32 0, i32* %16, align 4, !dbg !58
  %17 = getelementptr inbounds %struct._xmlXPathNodeSet, %struct._xmlXPathNodeSet* %6, i32 0, i32 2, !dbg !59
  store %struct._xmlNode** null, %struct._xmlNode*** %17, align 8, !dbg !60
  %18 = getelementptr inbounds %struct._xmlXPathNodeSet, %struct._xmlXPathNodeSet* %6, i32 0, i32 2, !dbg !61
  %19 = load %struct._xmlNode**, %struct._xmlNode*** %18, align 8, !dbg !61
  %20 = icmp eq %struct._xmlNode** %19, null, !dbg !63
  br i1 %20, label %21, label %35, !dbg !64

21:                                               ; preds = %2
  %22 = call noalias i8* @malloc(i64 noundef 80) #7, !dbg !65
  %23 = bitcast i8* %22 to %struct._xmlNode**, !dbg !67
  %24 = getelementptr inbounds %struct._xmlXPathNodeSet, %struct._xmlXPathNodeSet* %6, i32 0, i32 2, !dbg !68
  store %struct._xmlNode** %23, %struct._xmlNode*** %24, align 8, !dbg !69
  %25 = getelementptr inbounds %struct._xmlXPathNodeSet, %struct._xmlXPathNodeSet* %6, i32 0, i32 2, !dbg !70
  %26 = load %struct._xmlNode**, %struct._xmlNode*** %25, align 8, !dbg !70
  %27 = icmp eq %struct._xmlNode** %26, null, !dbg !72
  br i1 %27, label %28, label %29, !dbg !73

28:                                               ; preds = %21
  call void @xmlXPathErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0)), !dbg !74
  store i32 -1, i32* %3, align 4, !dbg !76
  br label %65, !dbg !76

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct._xmlXPathNodeSet, %struct._xmlXPathNodeSet* %6, i32 0, i32 2, !dbg !77
  %31 = load %struct._xmlNode**, %struct._xmlNode*** %30, align 8, !dbg !77
  %32 = bitcast %struct._xmlNode** %31 to i8*, !dbg !78
  %33 = call i8* @memset(i8* %32, i32 0, i64 80), !dbg !78
  %34 = getelementptr inbounds %struct._xmlXPathNodeSet, %struct._xmlXPathNodeSet* %6, i32 0, i32 1, !dbg !79
  store i32 10, i32* %34, align 4, !dbg !80
  br label %56, !dbg !81

35:                                               ; preds = %2
  %36 = getelementptr inbounds %struct._xmlXPathNodeSet, %struct._xmlXPathNodeSet* %6, i32 0, i32 0, !dbg !82
  %37 = load i32, i32* %36, align 8, !dbg !82
  %38 = getelementptr inbounds %struct._xmlXPathNodeSet, %struct._xmlXPathNodeSet* %6, i32 0, i32 1, !dbg !84
  %39 = load i32, i32* %38, align 4, !dbg !84
  %40 = icmp eq i32 %37, %39, !dbg !85
  br i1 %40, label %41, label %55, !dbg !86

41:                                               ; preds = %35
  call void @llvm.dbg.declare(metadata %struct._xmlNode*** %8, metadata !87, metadata !DIExpression()), !dbg !89
  %42 = getelementptr inbounds %struct._xmlXPathNodeSet, %struct._xmlXPathNodeSet* %6, i32 0, i32 1, !dbg !90
  %43 = load i32, i32* %42, align 4, !dbg !90
  %44 = icmp sgt i32 %43, 0, !dbg !90
  br i1 %44, label %45, label %51, !dbg !90

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct._xmlXPathNodeSet, %struct._xmlXPathNodeSet* %6, i32 0, i32 1, !dbg !90
  %47 = load i32, i32* %46, align 4, !dbg !90
  %48 = icmp sle i32 %47, 10, !dbg !90
  br i1 %48, label %49, label %51, !dbg !90

49:                                               ; preds = %45
  br i1 true, label %50, label %51, !dbg !90

50:                                               ; preds = %49
  br label %53, !dbg !90

51:                                               ; preds = %49, %45, %41
  %52 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.4, i64 0, i64 0), i32 noundef 52, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.xmlXPathCmpNodesExt, i64 0, i64 0)), !dbg !90
  br label %53, !dbg !90

53:                                               ; preds = %51, %50
  %54 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.4, i64 0, i64 0), i32 noundef 53, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.xmlXPathCmpNodesExt, i64 0, i64 0)), !dbg !91
  br label %55, !dbg !92

55:                                               ; preds = %53, %35
  br label %56

56:                                               ; preds = %55, %29
  %57 = getelementptr inbounds %struct._xmlXPathNodeSet, %struct._xmlXPathNodeSet* %6, i32 0, i32 2, !dbg !93
  %58 = load %struct._xmlNode**, %struct._xmlNode*** %57, align 8, !dbg !93
  %59 = icmp ne %struct._xmlNode** %58, null, !dbg !95
  br i1 %59, label %60, label %64, !dbg !96

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct._xmlXPathNodeSet, %struct._xmlXPathNodeSet* %6, i32 0, i32 2, !dbg !97
  %62 = load %struct._xmlNode**, %struct._xmlNode*** %61, align 8, !dbg !97
  %63 = bitcast %struct._xmlNode** %62 to i8*, !dbg !98
  call void @free(i8* noundef %63) #7, !dbg !99
  br label %64, !dbg !99

64:                                               ; preds = %60, %56
  store i32 0, i32* %3, align 4, !dbg !100
  br label %65, !dbg !100

65:                                               ; preds = %64, %28
  %66 = load i32, i32* %3, align 4, !dbg !101
  ret i32 %66, !dbg !101
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !102 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlNode*, align 8
  %3 = alloca %struct._xmlNode*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %2, metadata !105, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %3, metadata !107, metadata !DIExpression()), !dbg !108
  %4 = bitcast %struct._xmlNode** %2 to i8*, !dbg !109
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 8, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)), !dbg !110
  %5 = bitcast %struct._xmlNode** %3 to i8*, !dbg !111
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 8, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)), !dbg !112
  %6 = load %struct._xmlNode*, %struct._xmlNode** %2, align 8, !dbg !113
  %7 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !114
  %8 = call i32 @xmlXPathCmpNodesExt(%struct._xmlNode* noundef %6, %struct._xmlNode* noundef %7), !dbg !115
  ret i32 0, !dbg !116
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !117 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !124, metadata !DIExpression()), !dbg !125
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !126, metadata !DIExpression()), !dbg !127
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !128, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.declare(metadata i8** %7, metadata !130, metadata !DIExpression()), !dbg !132
  %8 = load i8*, i8** %4, align 8, !dbg !133
  store i8* %8, i8** %7, align 8, !dbg !132
  br label %9, !dbg !134

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !135
  %11 = add i64 %10, -1, !dbg !135
  store i64 %11, i64* %6, align 8, !dbg !135
  %12 = icmp ugt i64 %10, 0, !dbg !136
  br i1 %12, label %13, label %18, !dbg !134

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !137
  %15 = trunc i32 %14 to i8, !dbg !137
  %16 = load i8*, i8** %7, align 8, !dbg !138
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !138
  store i8* %17, i8** %7, align 8, !dbg !138
  store i8 %15, i8* %16, align 1, !dbg !139
  br label %9, !dbg !134, !llvm.loop !140

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !142
  ret i8* %19, !dbg !143
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18, !18}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/359_xpath.c_3206_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "9c17d5fa080a79873de6d3ac481c8f8f")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !1, line: 10, baseType: !6)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 9, baseType: !8)
!8 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 9, flags: DIFlagFwdDecl)
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
!19 = distinct !DISubprogram(name: "xmlXPathErrMemory", scope: !1, file: !1, line: 28, type: !20, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!20 = !DISubroutineType(types: !21)
!21 = !{null, !3, !22}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!24 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!25 = !{}
!26 = !DILocalVariable(name: "ctxt", arg: 1, scope: !19, file: !1, line: 28, type: !3)
!27 = !DILocation(line: 28, column: 30, scope: !19)
!28 = !DILocalVariable(name: "msg", arg: 2, scope: !19, file: !1, line: 28, type: !22)
!29 = !DILocation(line: 28, column: 48, scope: !19)
!30 = !DILocation(line: 29, column: 1, scope: !19)
!31 = distinct !DISubprogram(name: "xmlXPathCmpNodesExt", scope: !1, file: !1, line: 31, type: !32, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!32 = !DISubroutineType(types: !33)
!33 = !{!34, !5, !5}
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DILocalVariable(name: "node1", arg: 1, scope: !31, file: !1, line: 31, type: !5)
!36 = !DILocation(line: 31, column: 36, scope: !31)
!37 = !DILocalVariable(name: "node2", arg: 2, scope: !31, file: !1, line: 31, type: !5)
!38 = !DILocation(line: 31, column: 54, scope: !31)
!39 = !DILocalVariable(name: "cur", scope: !31, file: !1, line: 32, type: !40)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathNodeSet", file: !1, line: 24, baseType: !41)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathNodeSet", file: !1, line: 20, size: 128, elements: !42)
!42 = !{!43, !44, !45}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "nodeNr", scope: !41, file: !1, line: 21, baseType: !34, size: 32)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "nodeMax", scope: !41, file: !1, line: 22, baseType: !34, size: 32, offset: 32)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !41, file: !1, line: 23, baseType: !4, size: 64, offset: 64)
!46 = !DILocation(line: 32, column: 21, scope: !31)
!47 = !DILocalVariable(name: "return_val", scope: !31, file: !1, line: 33, type: !34)
!48 = !DILocation(line: 33, column: 9, scope: !31)
!49 = !DILocation(line: 35, column: 24, scope: !31)
!50 = !DILocation(line: 35, column: 5, scope: !31)
!51 = !DILocation(line: 36, column: 17, scope: !31)
!52 = !DILocation(line: 36, column: 28, scope: !31)
!53 = !DILocation(line: 36, column: 5, scope: !31)
!54 = !DILocation(line: 38, column: 18, scope: !31)
!55 = !DILocation(line: 38, column: 9, scope: !31)
!56 = !DILocation(line: 38, column: 16, scope: !31)
!57 = !DILocation(line: 39, column: 9, scope: !31)
!58 = !DILocation(line: 39, column: 17, scope: !31)
!59 = !DILocation(line: 40, column: 9, scope: !31)
!60 = !DILocation(line: 40, column: 17, scope: !31)
!61 = !DILocation(line: 42, column: 13, scope: !62)
!62 = distinct !DILexicalBlock(scope: !31, file: !1, line: 42, column: 9)
!63 = !DILocation(line: 42, column: 21, scope: !62)
!64 = !DILocation(line: 42, column: 9, scope: !31)
!65 = !DILocation(line: 43, column: 37, scope: !66)
!66 = distinct !DILexicalBlock(scope: !62, file: !1, line: 42, column: 30)
!67 = !DILocation(line: 43, column: 23, scope: !66)
!68 = !DILocation(line: 43, column: 13, scope: !66)
!69 = !DILocation(line: 43, column: 21, scope: !66)
!70 = !DILocation(line: 44, column: 17, scope: !71)
!71 = distinct !DILexicalBlock(scope: !66, file: !1, line: 44, column: 13)
!72 = !DILocation(line: 44, column: 25, scope: !71)
!73 = !DILocation(line: 44, column: 13, scope: !66)
!74 = !DILocation(line: 45, column: 13, scope: !75)
!75 = distinct !DILexicalBlock(scope: !71, file: !1, line: 44, column: 34)
!76 = !DILocation(line: 46, column: 13, scope: !75)
!77 = !DILocation(line: 48, column: 20, scope: !66)
!78 = !DILocation(line: 48, column: 9, scope: !66)
!79 = !DILocation(line: 49, column: 13, scope: !66)
!80 = !DILocation(line: 49, column: 21, scope: !66)
!81 = !DILocation(line: 50, column: 5, scope: !66)
!82 = !DILocation(line: 50, column: 20, scope: !83)
!83 = distinct !DILexicalBlock(scope: !62, file: !1, line: 50, column: 16)
!84 = !DILocation(line: 50, column: 34, scope: !83)
!85 = !DILocation(line: 50, column: 27, scope: !83)
!86 = !DILocation(line: 50, column: 16, scope: !62)
!87 = !DILocalVariable(name: "temp", scope: !88, file: !1, line: 51, type: !4)
!88 = distinct !DILexicalBlock(scope: !83, file: !1, line: 50, column: 43)
!89 = !DILocation(line: 51, column: 21, scope: !88)
!90 = !DILocation(line: 52, column: 9, scope: !88)
!91 = !DILocation(line: 53, column: 9, scope: !88)
!92 = !DILocation(line: 54, column: 5, scope: !88)
!93 = !DILocation(line: 56, column: 13, scope: !94)
!94 = distinct !DILexicalBlock(scope: !31, file: !1, line: 56, column: 9)
!95 = !DILocation(line: 56, column: 9, scope: !94)
!96 = !DILocation(line: 56, column: 9, scope: !31)
!97 = !DILocation(line: 56, column: 31, scope: !94)
!98 = !DILocation(line: 56, column: 27, scope: !94)
!99 = !DILocation(line: 56, column: 22, scope: !94)
!100 = !DILocation(line: 57, column: 5, scope: !31)
!101 = !DILocation(line: 58, column: 1, scope: !31)
!102 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 60, type: !103, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!103 = !DISubroutineType(types: !104)
!104 = !{!34}
!105 = !DILocalVariable(name: "node1", scope: !102, file: !1, line: 61, type: !5)
!106 = !DILocation(line: 61, column: 16, scope: !102)
!107 = !DILocalVariable(name: "node2", scope: !102, file: !1, line: 61, type: !5)
!108 = !DILocation(line: 61, column: 23, scope: !102)
!109 = !DILocation(line: 63, column: 24, scope: !102)
!110 = !DILocation(line: 63, column: 5, scope: !102)
!111 = !DILocation(line: 64, column: 24, scope: !102)
!112 = !DILocation(line: 64, column: 5, scope: !102)
!113 = !DILocation(line: 66, column: 25, scope: !102)
!114 = !DILocation(line: 66, column: 32, scope: !102)
!115 = !DILocation(line: 66, column: 5, scope: !102)
!116 = !DILocation(line: 67, column: 5, scope: !102)
!117 = distinct !DISubprogram(name: "memset", scope: !118, file: !118, line: 12, type: !119, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !25)
!118 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!119 = !DISubroutineType(types: !120)
!120 = !{!3, !3, !34, !121}
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !122, line: 46, baseType: !123)
!122 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!123 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!124 = !DILocalVariable(name: "dst", arg: 1, scope: !117, file: !118, line: 12, type: !3)
!125 = !DILocation(line: 12, column: 20, scope: !117)
!126 = !DILocalVariable(name: "s", arg: 2, scope: !117, file: !118, line: 12, type: !34)
!127 = !DILocation(line: 12, column: 29, scope: !117)
!128 = !DILocalVariable(name: "count", arg: 3, scope: !117, file: !118, line: 12, type: !121)
!129 = !DILocation(line: 12, column: 39, scope: !117)
!130 = !DILocalVariable(name: "a", scope: !117, file: !118, line: 13, type: !131)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!132 = !DILocation(line: 13, column: 9, scope: !117)
!133 = !DILocation(line: 13, column: 13, scope: !117)
!134 = !DILocation(line: 14, column: 3, scope: !117)
!135 = !DILocation(line: 14, column: 15, scope: !117)
!136 = !DILocation(line: 14, column: 18, scope: !117)
!137 = !DILocation(line: 15, column: 12, scope: !117)
!138 = !DILocation(line: 15, column: 7, scope: !117)
!139 = !DILocation(line: 15, column: 10, scope: !117)
!140 = distinct !{!140, !134, !137, !141}
!141 = !{!"llvm.loop.mustprogress"}
!142 = !DILocation(line: 16, column: 10, scope: !117)
!143 = !DILocation(line: 16, column: 3, scope: !117)

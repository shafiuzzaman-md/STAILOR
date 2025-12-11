; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/361_xpath.c_3092_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/361_xpath.c_3092_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlXPathContext = type opaque
%struct._xmlNode = type opaque
%struct._xmlXPathNodeSet = type { i32, i32, %struct._xmlNode** }

@.str = private unnamed_addr constant [17 x i8] c"growing nodeset\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_62911_vul/361_xpath.c_3092_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlXPathCmpNodesExt = private unnamed_addr constant [68 x i8] c"int xmlXPathCmpNodesExt(xmlXPathContextPtr, xmlNodePtr, xmlNodePtr)\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"ctxt\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"node1\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"node2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlXPathErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !27 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !34, metadata !DIExpression()), !dbg !35
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !36, metadata !DIExpression()), !dbg !37
  ret void, !dbg !38
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlXPathCmpNodesExt(%struct._xmlXPathContext* noundef %0, %struct._xmlNode* noundef %1, %struct._xmlNode* noundef %2) #0 !dbg !39 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._xmlXPathContext*, align 8
  %6 = alloca %struct._xmlNode*, align 8
  %7 = alloca %struct._xmlNode*, align 8
  %8 = alloca %struct._xmlXPathNodeSet*, align 8
  store %struct._xmlXPathContext* %0, %struct._xmlXPathContext** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlXPathContext** %5, metadata !46, metadata !DIExpression()), !dbg !47
  store %struct._xmlNode* %1, %struct._xmlNode** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %6, metadata !48, metadata !DIExpression()), !dbg !49
  store %struct._xmlNode* %2, %struct._xmlNode** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %7, metadata !50, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.declare(metadata %struct._xmlXPathNodeSet** %8, metadata !52, metadata !DIExpression()), !dbg !53
  %9 = call noalias i8* @malloc(i64 noundef 16) #7, !dbg !54
  %10 = bitcast i8* %9 to %struct._xmlXPathNodeSet*, !dbg !55
  store %struct._xmlXPathNodeSet* %10, %struct._xmlXPathNodeSet** %8, align 8, !dbg !53
  %11 = load %struct._xmlXPathNodeSet*, %struct._xmlXPathNodeSet** %8, align 8, !dbg !56
  %12 = icmp ne %struct._xmlXPathNodeSet* %11, null, !dbg !56
  br i1 %12, label %14, label %13, !dbg !58

13:                                               ; preds = %3
  store i32 -1, i32* %4, align 4, !dbg !59
  br label %53, !dbg !59

14:                                               ; preds = %3
  %15 = load %struct._xmlXPathNodeSet*, %struct._xmlXPathNodeSet** %8, align 8, !dbg !60
  %16 = getelementptr inbounds %struct._xmlXPathNodeSet, %struct._xmlXPathNodeSet* %15, i32 0, i32 0, !dbg !61
  store i32 0, i32* %16, align 8, !dbg !62
  %17 = load %struct._xmlXPathNodeSet*, %struct._xmlXPathNodeSet** %8, align 8, !dbg !63
  %18 = getelementptr inbounds %struct._xmlXPathNodeSet, %struct._xmlXPathNodeSet* %17, i32 0, i32 1, !dbg !64
  store i32 0, i32* %18, align 4, !dbg !65
  %19 = load %struct._xmlXPathNodeSet*, %struct._xmlXPathNodeSet** %8, align 8, !dbg !66
  %20 = getelementptr inbounds %struct._xmlXPathNodeSet, %struct._xmlXPathNodeSet* %19, i32 0, i32 2, !dbg !67
  store %struct._xmlNode** null, %struct._xmlNode*** %20, align 8, !dbg !68
  %21 = load %struct._xmlXPathNodeSet*, %struct._xmlXPathNodeSet** %8, align 8, !dbg !69
  %22 = getelementptr inbounds %struct._xmlXPathNodeSet, %struct._xmlXPathNodeSet* %21, i32 0, i32 2, !dbg !71
  %23 = load %struct._xmlNode**, %struct._xmlNode*** %22, align 8, !dbg !71
  %24 = icmp eq %struct._xmlNode** %23, null, !dbg !72
  br i1 %24, label %25, label %46, !dbg !73

25:                                               ; preds = %14
  %26 = call noalias i8* @malloc(i64 noundef 80) #7, !dbg !74
  %27 = bitcast i8* %26 to %struct._xmlNode**, !dbg !76
  %28 = load %struct._xmlXPathNodeSet*, %struct._xmlXPathNodeSet** %8, align 8, !dbg !77
  %29 = getelementptr inbounds %struct._xmlXPathNodeSet, %struct._xmlXPathNodeSet* %28, i32 0, i32 2, !dbg !78
  store %struct._xmlNode** %27, %struct._xmlNode*** %29, align 8, !dbg !79
  %30 = load %struct._xmlXPathNodeSet*, %struct._xmlXPathNodeSet** %8, align 8, !dbg !80
  %31 = getelementptr inbounds %struct._xmlXPathNodeSet, %struct._xmlXPathNodeSet* %30, i32 0, i32 2, !dbg !82
  %32 = load %struct._xmlNode**, %struct._xmlNode*** %31, align 8, !dbg !82
  %33 = icmp eq %struct._xmlNode** %32, null, !dbg !83
  br i1 %33, label %34, label %37, !dbg !84

34:                                               ; preds = %25
  call void @xmlXPathErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)), !dbg !85
  %35 = load %struct._xmlXPathNodeSet*, %struct._xmlXPathNodeSet** %8, align 8, !dbg !87
  %36 = bitcast %struct._xmlXPathNodeSet* %35 to i8*, !dbg !87
  call void @free(i8* noundef %36) #7, !dbg !88
  store i32 -1, i32* %4, align 4, !dbg !89
  br label %53, !dbg !89

37:                                               ; preds = %25
  %38 = load %struct._xmlXPathNodeSet*, %struct._xmlXPathNodeSet** %8, align 8, !dbg !90
  %39 = getelementptr inbounds %struct._xmlXPathNodeSet, %struct._xmlXPathNodeSet* %38, i32 0, i32 2, !dbg !91
  %40 = load %struct._xmlNode**, %struct._xmlNode*** %39, align 8, !dbg !91
  %41 = bitcast %struct._xmlNode** %40 to i8*, !dbg !92
  %42 = call i8* @memset(i8* %41, i32 0, i64 80), !dbg !92
  %43 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.2, i64 0, i64 0), i32 noundef 62, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @__PRETTY_FUNCTION__.xmlXPathCmpNodesExt, i64 0, i64 0)), !dbg !93
  %44 = load %struct._xmlXPathNodeSet*, %struct._xmlXPathNodeSet** %8, align 8, !dbg !94
  %45 = getelementptr inbounds %struct._xmlXPathNodeSet, %struct._xmlXPathNodeSet* %44, i32 0, i32 1, !dbg !95
  store i32 10, i32* %45, align 4, !dbg !96
  br label %46, !dbg !97

46:                                               ; preds = %37, %14
  %47 = load %struct._xmlXPathNodeSet*, %struct._xmlXPathNodeSet** %8, align 8, !dbg !98
  %48 = getelementptr inbounds %struct._xmlXPathNodeSet, %struct._xmlXPathNodeSet* %47, i32 0, i32 2, !dbg !99
  %49 = load %struct._xmlNode**, %struct._xmlNode*** %48, align 8, !dbg !99
  %50 = bitcast %struct._xmlNode** %49 to i8*, !dbg !98
  call void @free(i8* noundef %50) #7, !dbg !100
  %51 = load %struct._xmlXPathNodeSet*, %struct._xmlXPathNodeSet** %8, align 8, !dbg !101
  %52 = bitcast %struct._xmlXPathNodeSet* %51 to i8*, !dbg !101
  call void @free(i8* noundef %52) #7, !dbg !102
  store i32 0, i32* %4, align 4, !dbg !103
  br label %53, !dbg !103

53:                                               ; preds = %46, %34, %13
  %54 = load i32, i32* %4, align 4, !dbg !104
  ret i32 %54, !dbg !104
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !105 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlXPathContext*, align 8
  %3 = alloca %struct._xmlNode*, align 8
  %4 = alloca %struct._xmlNode*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlXPathContext** %2, metadata !108, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %3, metadata !110, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %4, metadata !112, metadata !DIExpression()), !dbg !113
  %5 = bitcast %struct._xmlXPathContext** %2 to i8*, !dbg !114
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)), !dbg !115
  %6 = bitcast %struct._xmlNode** %3 to i8*, !dbg !116
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 8, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)), !dbg !117
  %7 = bitcast %struct._xmlNode** %4 to i8*, !dbg !118
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 8, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)), !dbg !119
  %8 = load %struct._xmlXPathContext*, %struct._xmlXPathContext** %2, align 8, !dbg !120
  %9 = icmp ne %struct._xmlXPathContext* %8, null, !dbg !121
  %10 = zext i1 %9 to i32, !dbg !121
  %11 = sext i32 %10 to i64, !dbg !120
  call void @klee_assume(i64 noundef %11), !dbg !122
  %12 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !123
  %13 = icmp ne %struct._xmlNode* %12, null, !dbg !124
  %14 = zext i1 %13 to i32, !dbg !124
  %15 = sext i32 %14 to i64, !dbg !123
  call void @klee_assume(i64 noundef %15), !dbg !125
  %16 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !126
  %17 = icmp ne %struct._xmlNode* %16, null, !dbg !127
  %18 = zext i1 %17 to i32, !dbg !127
  %19 = sext i32 %18 to i64, !dbg !126
  call void @klee_assume(i64 noundef %19), !dbg !128
  %20 = load %struct._xmlXPathContext*, %struct._xmlXPathContext** %2, align 8, !dbg !129
  %21 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !130
  %22 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !131
  %23 = call i32 @xmlXPathCmpNodesExt(%struct._xmlXPathContext* noundef %20, %struct._xmlNode* noundef %21, %struct._xmlNode* noundef %22), !dbg !132
  ret i32 0, !dbg !133
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !134 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !141, metadata !DIExpression()), !dbg !142
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !143, metadata !DIExpression()), !dbg !144
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !145, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.declare(metadata i8** %7, metadata !147, metadata !DIExpression()), !dbg !149
  %8 = load i8*, i8** %4, align 8, !dbg !150
  store i8* %8, i8** %7, align 8, !dbg !149
  br label %9, !dbg !151

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !152
  %11 = add i64 %10, -1, !dbg !152
  store i64 %11, i64* %6, align 8, !dbg !152
  %12 = icmp ugt i64 %10, 0, !dbg !153
  br i1 %12, label %13, label %18, !dbg !151

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !154
  %15 = trunc i32 %14 to i8, !dbg !154
  %16 = load i8*, i8** %7, align 8, !dbg !155
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !155
  store i8* %17, i8** %7, align 8, !dbg !155
  store i8 %15, i8* %16, align 1, !dbg !156
  br label %9, !dbg !151, !llvm.loop !157

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !159
  ret i8* %19, !dbg !160
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26, !26}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/361_xpath.c_3092_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "edbaadd7dd1bd152095351bbe98bcc92")
!2 = !{!3, !16, !11}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathNodeSet", file: !1, line: 24, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathNodeSet", file: !1, line: 20, size: 128, elements: !6)
!6 = !{!7, !9, !10}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "nodeNr", scope: !5, file: !1, line: 21, baseType: !8, size: 32)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_member, name: "nodeMax", scope: !5, file: !1, line: 22, baseType: !8, size: 32, offset: 32)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !5, file: !1, line: 23, baseType: !11, size: 64, offset: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !1, line: 11, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 10, baseType: !15)
!15 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 10, flags: DIFlagFwdDecl)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!17 = distinct !DICompileUnit(language: DW_LANG_C99, file: !18, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!19 = !{i32 7, !"Dwarf Version", i32 5}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{i32 1, !"wchar_size", i32 4}
!22 = !{i32 7, !"PIC Level", i32 2}
!23 = !{i32 7, !"PIE Level", i32 2}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"Ubuntu clang version 14.0.6"}
!27 = distinct !DISubprogram(name: "xmlXPathErrMemory", scope: !1, file: !1, line: 30, type: !28, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !16, !30}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!32 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!33 = !{}
!34 = !DILocalVariable(name: "ctxt", arg: 1, scope: !27, file: !1, line: 30, type: !16)
!35 = !DILocation(line: 30, column: 30, scope: !27)
!36 = !DILocalVariable(name: "msg", arg: 2, scope: !27, file: !1, line: 30, type: !30)
!37 = !DILocation(line: 30, column: 48, scope: !27)
!38 = !DILocation(line: 32, column: 1, scope: !27)
!39 = distinct !DISubprogram(name: "xmlXPathCmpNodesExt", scope: !1, file: !1, line: 35, type: !40, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!40 = !DISubroutineType(types: !41)
!41 = !{!8, !42, !12, !12}
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathContextPtr", file: !1, line: 17, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathContext", file: !1, line: 16, baseType: !45)
!45 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathContext", file: !1, line: 16, flags: DIFlagFwdDecl)
!46 = !DILocalVariable(name: "ctxt", arg: 1, scope: !39, file: !1, line: 35, type: !42)
!47 = !DILocation(line: 35, column: 44, scope: !39)
!48 = !DILocalVariable(name: "node1", arg: 2, scope: !39, file: !1, line: 35, type: !12)
!49 = !DILocation(line: 35, column: 61, scope: !39)
!50 = !DILocalVariable(name: "node2", arg: 3, scope: !39, file: !1, line: 35, type: !12)
!51 = !DILocation(line: 35, column: 79, scope: !39)
!52 = !DILocalVariable(name: "cur", scope: !39, file: !1, line: 37, type: !3)
!53 = !DILocation(line: 37, column: 22, scope: !39)
!54 = !DILocation(line: 37, column: 47, scope: !39)
!55 = !DILocation(line: 37, column: 28, scope: !39)
!56 = !DILocation(line: 38, column: 10, scope: !57)
!57 = distinct !DILexicalBlock(scope: !39, file: !1, line: 38, column: 9)
!58 = !DILocation(line: 38, column: 9, scope: !39)
!59 = !DILocation(line: 38, column: 15, scope: !57)
!60 = !DILocation(line: 41, column: 5, scope: !39)
!61 = !DILocation(line: 41, column: 10, scope: !39)
!62 = !DILocation(line: 41, column: 17, scope: !39)
!63 = !DILocation(line: 42, column: 5, scope: !39)
!64 = !DILocation(line: 42, column: 10, scope: !39)
!65 = !DILocation(line: 42, column: 18, scope: !39)
!66 = !DILocation(line: 43, column: 5, scope: !39)
!67 = !DILocation(line: 43, column: 10, scope: !39)
!68 = !DILocation(line: 43, column: 18, scope: !39)
!69 = !DILocation(line: 46, column: 9, scope: !70)
!70 = distinct !DILexicalBlock(scope: !39, file: !1, line: 46, column: 9)
!71 = !DILocation(line: 46, column: 14, scope: !70)
!72 = !DILocation(line: 46, column: 22, scope: !70)
!73 = !DILocation(line: 46, column: 9, scope: !39)
!74 = !DILocation(line: 47, column: 38, scope: !75)
!75 = distinct !DILexicalBlock(scope: !70, file: !1, line: 46, column: 31)
!76 = !DILocation(line: 47, column: 24, scope: !75)
!77 = !DILocation(line: 47, column: 9, scope: !75)
!78 = !DILocation(line: 47, column: 14, scope: !75)
!79 = !DILocation(line: 47, column: 22, scope: !75)
!80 = !DILocation(line: 48, column: 13, scope: !81)
!81 = distinct !DILexicalBlock(scope: !75, file: !1, line: 48, column: 13)
!82 = !DILocation(line: 48, column: 18, scope: !81)
!83 = !DILocation(line: 48, column: 26, scope: !81)
!84 = !DILocation(line: 48, column: 13, scope: !75)
!85 = !DILocation(line: 49, column: 13, scope: !86)
!86 = distinct !DILexicalBlock(scope: !81, file: !1, line: 48, column: 35)
!87 = !DILocation(line: 50, column: 18, scope: !86)
!88 = !DILocation(line: 50, column: 13, scope: !86)
!89 = !DILocation(line: 51, column: 13, scope: !86)
!90 = !DILocation(line: 56, column: 16, scope: !75)
!91 = !DILocation(line: 56, column: 21, scope: !75)
!92 = !DILocation(line: 56, column: 9, scope: !75)
!93 = !DILocation(line: 62, column: 9, scope: !75)
!94 = !DILocation(line: 64, column: 9, scope: !75)
!95 = !DILocation(line: 64, column: 14, scope: !75)
!96 = !DILocation(line: 64, column: 22, scope: !75)
!97 = !DILocation(line: 65, column: 5, scope: !75)
!98 = !DILocation(line: 68, column: 10, scope: !39)
!99 = !DILocation(line: 68, column: 15, scope: !39)
!100 = !DILocation(line: 68, column: 5, scope: !39)
!101 = !DILocation(line: 69, column: 10, scope: !39)
!102 = !DILocation(line: 69, column: 5, scope: !39)
!103 = !DILocation(line: 70, column: 5, scope: !39)
!104 = !DILocation(line: 71, column: 1, scope: !39)
!105 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 74, type: !106, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!106 = !DISubroutineType(types: !107)
!107 = !{!8}
!108 = !DILocalVariable(name: "ctxt", scope: !105, file: !1, line: 76, type: !42)
!109 = !DILocation(line: 76, column: 24, scope: !105)
!110 = !DILocalVariable(name: "node1", scope: !105, file: !1, line: 77, type: !12)
!111 = !DILocation(line: 77, column: 16, scope: !105)
!112 = !DILocalVariable(name: "node2", scope: !105, file: !1, line: 77, type: !12)
!113 = !DILocation(line: 77, column: 23, scope: !105)
!114 = !DILocation(line: 80, column: 24, scope: !105)
!115 = !DILocation(line: 80, column: 5, scope: !105)
!116 = !DILocation(line: 81, column: 24, scope: !105)
!117 = !DILocation(line: 81, column: 5, scope: !105)
!118 = !DILocation(line: 82, column: 24, scope: !105)
!119 = !DILocation(line: 82, column: 5, scope: !105)
!120 = !DILocation(line: 85, column: 17, scope: !105)
!121 = !DILocation(line: 85, column: 22, scope: !105)
!122 = !DILocation(line: 85, column: 5, scope: !105)
!123 = !DILocation(line: 86, column: 17, scope: !105)
!124 = !DILocation(line: 86, column: 23, scope: !105)
!125 = !DILocation(line: 86, column: 5, scope: !105)
!126 = !DILocation(line: 87, column: 17, scope: !105)
!127 = !DILocation(line: 87, column: 23, scope: !105)
!128 = !DILocation(line: 87, column: 5, scope: !105)
!129 = !DILocation(line: 90, column: 25, scope: !105)
!130 = !DILocation(line: 90, column: 31, scope: !105)
!131 = !DILocation(line: 90, column: 38, scope: !105)
!132 = !DILocation(line: 90, column: 5, scope: !105)
!133 = !DILocation(line: 92, column: 5, scope: !105)
!134 = distinct !DISubprogram(name: "memset", scope: !135, file: !135, line: 12, type: !136, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !33)
!135 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!136 = !DISubroutineType(types: !137)
!137 = !{!16, !16, !8, !138}
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !139, line: 46, baseType: !140)
!139 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!140 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!141 = !DILocalVariable(name: "dst", arg: 1, scope: !134, file: !135, line: 12, type: !16)
!142 = !DILocation(line: 12, column: 20, scope: !134)
!143 = !DILocalVariable(name: "s", arg: 2, scope: !134, file: !135, line: 12, type: !8)
!144 = !DILocation(line: 12, column: 29, scope: !134)
!145 = !DILocalVariable(name: "count", arg: 3, scope: !134, file: !135, line: 12, type: !138)
!146 = !DILocation(line: 12, column: 39, scope: !134)
!147 = !DILocalVariable(name: "a", scope: !134, file: !135, line: 13, type: !148)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!149 = !DILocation(line: 13, column: 9, scope: !134)
!150 = !DILocation(line: 13, column: 13, scope: !134)
!151 = !DILocation(line: 14, column: 3, scope: !134)
!152 = !DILocation(line: 14, column: 15, scope: !134)
!153 = !DILocation(line: 14, column: 18, scope: !134)
!154 = !DILocation(line: 15, column: 12, scope: !134)
!155 = !DILocation(line: 15, column: 7, scope: !134)
!156 = !DILocation(line: 15, column: 10, scope: !134)
!157 = distinct !{!157, !151, !154, !158}
!158 = !{!"llvm.loop.mustprogress"}
!159 = !DILocation(line: 16, column: 10, scope: !134)
!160 = !DILocation(line: 16, column: 3, scope: !134)

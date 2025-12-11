; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/016_c14n.c_828_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/016_c14n.c_828_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlNs = type { i8* }
%struct._xmlExcC14NVisibleNsStack = type { i8* }
%struct._xmlC14NCtx = type { %struct._xmlExcC14NVisibleNsStack*, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"visible_ns_find_result\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_62911_vul/016_c14n.c_828_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlC14NPrintNamespaces = private unnamed_addr constant [51 x i8] c"void xmlC14NPrintNamespaces(xmlNs *, xmlC14NCtx *)\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"visible\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"has_visibly_utilized_empty_ns\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"has_empty_ns\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"has_empty_ns_in_inclusive_list\00", align 1
@xmlC14NProcessAttrsAxis.ns_default = internal global %struct._xmlNs zeroinitializer, align 8, !dbg !0

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlExcC14NVisibleNsStackFind(%struct._xmlExcC14NVisibleNsStack* noundef %0, %struct._xmlNs* noundef %1, %struct._xmlC14NCtx* noundef %2) #0 !dbg !38 {
  %4 = alloca %struct._xmlExcC14NVisibleNsStack*, align 8
  %5 = alloca %struct._xmlNs*, align 8
  %6 = alloca %struct._xmlC14NCtx*, align 8
  %7 = alloca i32, align 4
  store %struct._xmlExcC14NVisibleNsStack* %0, %struct._xmlExcC14NVisibleNsStack** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlExcC14NVisibleNsStack** %4, metadata !42, metadata !DIExpression()), !dbg !43
  store %struct._xmlNs* %1, %struct._xmlNs** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNs** %5, metadata !44, metadata !DIExpression()), !dbg !45
  store %struct._xmlC14NCtx* %2, %struct._xmlC14NCtx** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlC14NCtx** %6, metadata !46, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.declare(metadata i32* %7, metadata !48, metadata !DIExpression()), !dbg !49
  %8 = bitcast i32* %7 to i8*, !dbg !50
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0)), !dbg !51
  %9 = load i32, i32* %7, align 4, !dbg !52
  %10 = icmp eq i32 %9, 0, !dbg !53
  br i1 %10, label %14, label %11, !dbg !54

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4, !dbg !55
  %13 = icmp eq i32 %12, 1, !dbg !56
  br label %14, !dbg !54

14:                                               ; preds = %11, %3
  %15 = phi i1 [ true, %3 ], [ %13, %11 ]
  %16 = zext i1 %15 to i32, !dbg !54
  %17 = sext i32 %16 to i64, !dbg !52
  call void @klee_assume(i64 noundef %17), !dbg !57
  %18 = load i32, i32* %7, align 4, !dbg !58
  ret i32 %18, !dbg !59
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlC14NPrintNamespaces(%struct._xmlNs* noundef %0, %struct._xmlC14NCtx* noundef %1) #0 !dbg !60 {
  %3 = alloca %struct._xmlNs*, align 8
  %4 = alloca %struct._xmlC14NCtx*, align 8
  store %struct._xmlNs* %0, %struct._xmlNs** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNs** %3, metadata !63, metadata !DIExpression()), !dbg !64
  store %struct._xmlC14NCtx* %1, %struct._xmlC14NCtx** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlC14NCtx** %4, metadata !65, metadata !DIExpression()), !dbg !66
  %5 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.2, i64 0, i64 0), i32 noundef 45, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.xmlC14NPrintNamespaces, i64 0, i64 0)), !dbg !67
  ret void, !dbg !68
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlC14NProcessAttrsAxis(%struct._xmlC14NCtx* noundef %0) #0 !dbg !2 {
  %2 = alloca %struct._xmlC14NCtx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct._xmlC14NCtx* %0, %struct._xmlC14NCtx** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlC14NCtx** %2, metadata !69, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.declare(metadata i32* %3, metadata !71, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.declare(metadata i32* %4, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.declare(metadata i32* %5, metadata !75, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.declare(metadata i32* %6, metadata !77, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.declare(metadata i32* %7, metadata !79, metadata !DIExpression()), !dbg !80
  %8 = bitcast i32* %3 to i8*, !dbg !81
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)), !dbg !82
  %9 = bitcast i32* %4 to i8*, !dbg !83
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0)), !dbg !84
  %10 = bitcast i32* %5 to i8*, !dbg !85
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0)), !dbg !86
  %11 = bitcast i32* %6 to i8*, !dbg !87
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 4, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0)), !dbg !88
  %12 = load i32, i32* %3, align 4, !dbg !89
  %13 = icmp ne i32 %12, 0, !dbg !90
  %14 = zext i1 %13 to i32, !dbg !90
  %15 = sext i32 %14 to i64, !dbg !89
  call void @klee_assume(i64 noundef %15), !dbg !91
  %16 = load i32, i32* %4, align 4, !dbg !92
  %17 = icmp ne i32 %16, 0, !dbg !93
  %18 = zext i1 %17 to i32, !dbg !93
  %19 = sext i32 %18 to i64, !dbg !92
  call void @klee_assume(i64 noundef %19), !dbg !94
  %20 = load i32, i32* %5, align 4, !dbg !95
  %21 = icmp eq i32 %20, 0, !dbg !96
  %22 = zext i1 %21 to i32, !dbg !96
  %23 = sext i32 %22 to i64, !dbg !95
  call void @klee_assume(i64 noundef %23), !dbg !97
  %24 = load i32, i32* %6, align 4, !dbg !98
  %25 = icmp eq i32 %24, 0, !dbg !99
  %26 = zext i1 %25 to i32, !dbg !99
  %27 = sext i32 %26 to i64, !dbg !98
  call void @klee_assume(i64 noundef %27), !dbg !100
  %28 = load i32, i32* %3, align 4, !dbg !101
  %29 = icmp ne i32 %28, 0, !dbg !101
  br i1 %29, label %30, label %51, !dbg !103

30:                                               ; preds = %1
  %31 = load i32, i32* %4, align 4, !dbg !104
  %32 = icmp ne i32 %31, 0, !dbg !104
  br i1 %32, label %33, label %51, !dbg !105

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4, !dbg !106
  %35 = icmp ne i32 %34, 0, !dbg !106
  br i1 %35, label %51, label %36, !dbg !107

36:                                               ; preds = %33
  %37 = load i32, i32* %6, align 4, !dbg !108
  %38 = icmp ne i32 %37, 0, !dbg !108
  br i1 %38, label %51, label %39, !dbg !109

39:                                               ; preds = %36
  %40 = call i8* @memset(i8* bitcast (%struct._xmlNs* @xmlC14NProcessAttrsAxis.ns_default to i8*), i32 0, i64 8), !dbg !110
  %41 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %2, align 8, !dbg !112
  %42 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %41, i32 0, i32 0, !dbg !113
  %43 = load %struct._xmlExcC14NVisibleNsStack*, %struct._xmlExcC14NVisibleNsStack** %42, align 8, !dbg !113
  %44 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %2, align 8, !dbg !114
  %45 = call i32 @xmlExcC14NVisibleNsStackFind(%struct._xmlExcC14NVisibleNsStack* noundef %43, %struct._xmlNs* noundef @xmlC14NProcessAttrsAxis.ns_default, %struct._xmlC14NCtx* noundef %44), !dbg !115
  store i32 %45, i32* %7, align 4, !dbg !116
  %46 = load i32, i32* %7, align 4, !dbg !117
  %47 = icmp ne i32 %46, 0, !dbg !117
  br i1 %47, label %50, label %48, !dbg !119

48:                                               ; preds = %39
  %49 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %2, align 8, !dbg !120
  call void @xmlC14NPrintNamespaces(%struct._xmlNs* noundef @xmlC14NProcessAttrsAxis.ns_default, %struct._xmlC14NCtx* noundef %49), !dbg !122
  br label %50, !dbg !123

50:                                               ; preds = %48, %39
  br label %51, !dbg !124

51:                                               ; preds = %50, %36, %33, %30, %1
  ret void, !dbg !125
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !126 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlC14NCtx*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlC14NCtx** %2, metadata !129, metadata !DIExpression()), !dbg !130
  %3 = call noalias i8* @malloc(i64 noundef 16) #7, !dbg !131
  %4 = bitcast i8* %3 to %struct._xmlC14NCtx*, !dbg !132
  store %struct._xmlC14NCtx* %4, %struct._xmlC14NCtx** %2, align 8, !dbg !130
  %5 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %2, align 8, !dbg !133
  %6 = icmp ne %struct._xmlC14NCtx* %5, null, !dbg !133
  br i1 %6, label %8, label %7, !dbg !135

7:                                                ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !136
  br label %20, !dbg !136

8:                                                ; preds = %0
  %9 = call noalias i8* @malloc(i64 noundef 8) #7, !dbg !137
  %10 = bitcast i8* %9 to %struct._xmlExcC14NVisibleNsStack*, !dbg !138
  %11 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %2, align 8, !dbg !139
  %12 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %11, i32 0, i32 0, !dbg !140
  store %struct._xmlExcC14NVisibleNsStack* %10, %struct._xmlExcC14NVisibleNsStack** %12, align 8, !dbg !141
  %13 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %2, align 8, !dbg !142
  call void @xmlC14NProcessAttrsAxis(%struct._xmlC14NCtx* noundef %13), !dbg !143
  %14 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %2, align 8, !dbg !144
  %15 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %14, i32 0, i32 0, !dbg !145
  %16 = load %struct._xmlExcC14NVisibleNsStack*, %struct._xmlExcC14NVisibleNsStack** %15, align 8, !dbg !145
  %17 = bitcast %struct._xmlExcC14NVisibleNsStack* %16 to i8*, !dbg !144
  call void @free(i8* noundef %17) #7, !dbg !146
  %18 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %2, align 8, !dbg !147
  %19 = bitcast %struct._xmlC14NCtx* %18 to i8*, !dbg !147
  call void @free(i8* noundef %19) #7, !dbg !148
  store i32 0, i32* %1, align 4, !dbg !149
  br label %20, !dbg !149

20:                                               ; preds = %8, %7
  %21 = load i32, i32* %1, align 4, !dbg !150
  ret i32 %21, !dbg !150
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !151 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !158, metadata !DIExpression()), !dbg !159
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !160, metadata !DIExpression()), !dbg !161
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !162, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.declare(metadata i8** %7, metadata !164, metadata !DIExpression()), !dbg !167
  %8 = load i8*, i8** %4, align 8, !dbg !168
  store i8* %8, i8** %7, align 8, !dbg !167
  br label %9, !dbg !169

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !170
  %11 = add i64 %10, -1, !dbg !170
  store i64 %11, i64* %6, align 8, !dbg !170
  %12 = icmp ugt i64 %10, 0, !dbg !171
  br i1 %12, label %13, label %18, !dbg !169

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !172
  %15 = trunc i32 %14 to i8, !dbg !172
  %16 = load i8*, i8** %7, align 8, !dbg !173
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !173
  store i8* %17, i8** %7, align 8, !dbg !173
  store i8 %15, i8* %16, align 1, !dbg !174
  br label %9, !dbg !169, !llvm.loop !175

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !177
  ret i8* %19, !dbg !178
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!20, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37, !37}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ns_default", scope: !2, file: !3, line: 72, type: !24, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "xmlC14NProcessAttrsAxis", scope: !3, file: !3, line: 49, type: !4, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !20, retainedNodes: !23)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/016_c14n.c_828_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "888f8332565e09fec2bc763140aa3baf")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlC14NCtx", file: !3, line: 10, baseType: !8)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlC14NCtx", file: !3, line: 23, size: 128, elements: !9)
!9 = !{!10, !17, !19}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "ns_rendered", scope: !8, file: !3, line: 24, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlExcC14NVisibleNsStack", file: !3, line: 12, baseType: !13)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlExcC14NVisibleNsStack", file: !3, line: 19, size: 64, elements: !14)
!14 = !{!15}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "placeholder", scope: !13, file: !3, line: 20, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "placeholder1", scope: !8, file: !3, line: 25, baseType: !18, size: 32, offset: 64)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "placeholder2", scope: !8, file: !3, line: 26, baseType: !18, size: 32, offset: 96)
!20 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !21, globals: !22, splitDebugInlining: false, nameTableKind: None)
!21 = !{!6, !11}
!22 = !{!0}
!23 = !{}
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !3, line: 11, baseType: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !3, line: 15, size: 64, elements: !26)
!26 = !{!27}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "placeholder", scope: !25, file: !3, line: 16, baseType: !16, size: 64)
!28 = distinct !DICompileUnit(language: DW_LANG_C99, file: !29, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!29 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!30 = !{i32 7, !"Dwarf Version", i32 5}
!31 = !{i32 2, !"Debug Info Version", i32 3}
!32 = !{i32 1, !"wchar_size", i32 4}
!33 = !{i32 7, !"PIC Level", i32 2}
!34 = !{i32 7, !"PIE Level", i32 2}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"Ubuntu clang version 14.0.6"}
!38 = distinct !DISubprogram(name: "xmlExcC14NVisibleNsStackFind", scope: !3, file: !3, line: 30, type: !39, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !20, retainedNodes: !23)
!39 = !DISubroutineType(types: !40)
!40 = !{!18, !11, !41, !6}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!42 = !DILocalVariable(name: "stack", arg: 1, scope: !38, file: !3, line: 30, type: !11)
!43 = !DILocation(line: 30, column: 60, scope: !38)
!44 = !DILocalVariable(name: "ns", arg: 2, scope: !38, file: !3, line: 30, type: !41)
!45 = !DILocation(line: 30, column: 74, scope: !38)
!46 = !DILocalVariable(name: "ctx", arg: 3, scope: !38, file: !3, line: 30, type: !6)
!47 = !DILocation(line: 30, column: 90, scope: !38)
!48 = !DILocalVariable(name: "result", scope: !38, file: !3, line: 32, type: !18)
!49 = !DILocation(line: 32, column: 9, scope: !38)
!50 = !DILocation(line: 33, column: 24, scope: !38)
!51 = !DILocation(line: 33, column: 5, scope: !38)
!52 = !DILocation(line: 34, column: 17, scope: !38)
!53 = !DILocation(line: 34, column: 24, scope: !38)
!54 = !DILocation(line: 34, column: 29, scope: !38)
!55 = !DILocation(line: 34, column: 32, scope: !38)
!56 = !DILocation(line: 34, column: 39, scope: !38)
!57 = !DILocation(line: 34, column: 5, scope: !38)
!58 = !DILocation(line: 35, column: 12, scope: !38)
!59 = !DILocation(line: 35, column: 5, scope: !38)
!60 = distinct !DISubprogram(name: "xmlC14NPrintNamespaces", scope: !3, file: !3, line: 38, type: !61, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !20, retainedNodes: !23)
!61 = !DISubroutineType(types: !62)
!62 = !{null, !41, !6}
!63 = !DILocalVariable(name: "ns", arg: 1, scope: !60, file: !3, line: 38, type: !41)
!64 = !DILocation(line: 38, column: 36, scope: !60)
!65 = !DILocalVariable(name: "ctx", arg: 2, scope: !60, file: !3, line: 38, type: !6)
!66 = !DILocation(line: 38, column: 52, scope: !60)
!67 = !DILocation(line: 45, column: 5, scope: !60)
!68 = !DILocation(line: 46, column: 1, scope: !60)
!69 = !DILocalVariable(name: "ctx", arg: 1, scope: !2, file: !3, line: 49, type: !6)
!70 = !DILocation(line: 49, column: 42, scope: !2)
!71 = !DILocalVariable(name: "visible", scope: !2, file: !3, line: 51, type: !18)
!72 = !DILocation(line: 51, column: 9, scope: !2)
!73 = !DILocalVariable(name: "has_visibly_utilized_empty_ns", scope: !2, file: !3, line: 52, type: !18)
!74 = !DILocation(line: 52, column: 9, scope: !2)
!75 = !DILocalVariable(name: "has_empty_ns", scope: !2, file: !3, line: 53, type: !18)
!76 = !DILocation(line: 53, column: 9, scope: !2)
!77 = !DILocalVariable(name: "has_empty_ns_in_inclusive_list", scope: !2, file: !3, line: 54, type: !18)
!78 = !DILocation(line: 54, column: 9, scope: !2)
!79 = !DILocalVariable(name: "already_rendered", scope: !2, file: !3, line: 55, type: !18)
!80 = !DILocation(line: 55, column: 9, scope: !2)
!81 = !DILocation(line: 58, column: 24, scope: !2)
!82 = !DILocation(line: 58, column: 5, scope: !2)
!83 = !DILocation(line: 59, column: 24, scope: !2)
!84 = !DILocation(line: 59, column: 5, scope: !2)
!85 = !DILocation(line: 60, column: 24, scope: !2)
!86 = !DILocation(line: 60, column: 5, scope: !2)
!87 = !DILocation(line: 61, column: 24, scope: !2)
!88 = !DILocation(line: 61, column: 5, scope: !2)
!89 = !DILocation(line: 64, column: 17, scope: !2)
!90 = !DILocation(line: 64, column: 25, scope: !2)
!91 = !DILocation(line: 64, column: 5, scope: !2)
!92 = !DILocation(line: 65, column: 17, scope: !2)
!93 = !DILocation(line: 65, column: 47, scope: !2)
!94 = !DILocation(line: 65, column: 5, scope: !2)
!95 = !DILocation(line: 66, column: 17, scope: !2)
!96 = !DILocation(line: 66, column: 30, scope: !2)
!97 = !DILocation(line: 66, column: 5, scope: !2)
!98 = !DILocation(line: 67, column: 17, scope: !2)
!99 = !DILocation(line: 67, column: 48, scope: !2)
!100 = !DILocation(line: 67, column: 5, scope: !2)
!101 = !DILocation(line: 70, column: 8, scope: !102)
!102 = distinct !DILexicalBlock(scope: !2, file: !3, line: 70, column: 8)
!103 = !DILocation(line: 70, column: 16, scope: !102)
!104 = !DILocation(line: 70, column: 19, scope: !102)
!105 = !DILocation(line: 70, column: 49, scope: !102)
!106 = !DILocation(line: 71, column: 10, scope: !102)
!107 = !DILocation(line: 71, column: 23, scope: !102)
!108 = !DILocation(line: 71, column: 27, scope: !102)
!109 = !DILocation(line: 70, column: 8, scope: !2)
!110 = !DILocation(line: 75, column: 9, scope: !111)
!111 = distinct !DILexicalBlock(scope: !102, file: !3, line: 71, column: 59)
!112 = !DILocation(line: 77, column: 57, scope: !111)
!113 = !DILocation(line: 77, column: 62, scope: !111)
!114 = !DILocation(line: 77, column: 88, scope: !111)
!115 = !DILocation(line: 77, column: 28, scope: !111)
!116 = !DILocation(line: 77, column: 26, scope: !111)
!117 = !DILocation(line: 78, column: 13, scope: !118)
!118 = distinct !DILexicalBlock(scope: !111, file: !3, line: 78, column: 12)
!119 = !DILocation(line: 78, column: 12, scope: !111)
!120 = !DILocation(line: 80, column: 49, scope: !121)
!121 = distinct !DILexicalBlock(scope: !118, file: !3, line: 78, column: 31)
!122 = !DILocation(line: 80, column: 13, scope: !121)
!123 = !DILocation(line: 81, column: 9, scope: !121)
!124 = !DILocation(line: 82, column: 5, scope: !111)
!125 = !DILocation(line: 83, column: 1, scope: !2)
!126 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 85, type: !127, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !20, retainedNodes: !23)
!127 = !DISubroutineType(types: !128)
!128 = !{!18}
!129 = !DILocalVariable(name: "ctx", scope: !126, file: !3, line: 87, type: !6)
!130 = !DILocation(line: 87, column: 17, scope: !126)
!131 = !DILocation(line: 87, column: 36, scope: !126)
!132 = !DILocation(line: 87, column: 23, scope: !126)
!133 = !DILocation(line: 88, column: 10, scope: !134)
!134 = distinct !DILexicalBlock(scope: !126, file: !3, line: 88, column: 9)
!135 = !DILocation(line: 88, column: 9, scope: !126)
!136 = !DILocation(line: 88, column: 15, scope: !134)
!137 = !DILocation(line: 91, column: 51, scope: !126)
!138 = !DILocation(line: 91, column: 24, scope: !126)
!139 = !DILocation(line: 91, column: 5, scope: !126)
!140 = !DILocation(line: 91, column: 10, scope: !126)
!141 = !DILocation(line: 91, column: 22, scope: !126)
!142 = !DILocation(line: 94, column: 29, scope: !126)
!143 = !DILocation(line: 94, column: 5, scope: !126)
!144 = !DILocation(line: 97, column: 10, scope: !126)
!145 = !DILocation(line: 97, column: 15, scope: !126)
!146 = !DILocation(line: 97, column: 5, scope: !126)
!147 = !DILocation(line: 98, column: 10, scope: !126)
!148 = !DILocation(line: 98, column: 5, scope: !126)
!149 = !DILocation(line: 100, column: 5, scope: !126)
!150 = !DILocation(line: 101, column: 1, scope: !126)
!151 = distinct !DISubprogram(name: "memset", scope: !152, file: !152, line: 12, type: !153, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !23)
!152 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!153 = !DISubroutineType(types: !154)
!154 = !{!16, !16, !18, !155}
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !156, line: 46, baseType: !157)
!156 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!157 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!158 = !DILocalVariable(name: "dst", arg: 1, scope: !151, file: !152, line: 12, type: !16)
!159 = !DILocation(line: 12, column: 20, scope: !151)
!160 = !DILocalVariable(name: "s", arg: 2, scope: !151, file: !152, line: 12, type: !18)
!161 = !DILocation(line: 12, column: 29, scope: !151)
!162 = !DILocalVariable(name: "count", arg: 3, scope: !151, file: !152, line: 12, type: !155)
!163 = !DILocation(line: 12, column: 39, scope: !151)
!164 = !DILocalVariable(name: "a", scope: !151, file: !152, line: 13, type: !165)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!167 = !DILocation(line: 13, column: 9, scope: !151)
!168 = !DILocation(line: 13, column: 13, scope: !151)
!169 = !DILocation(line: 14, column: 3, scope: !151)
!170 = !DILocation(line: 14, column: 15, scope: !151)
!171 = !DILocation(line: 14, column: 18, scope: !151)
!172 = !DILocation(line: 15, column: 12, scope: !151)
!173 = !DILocation(line: 15, column: 7, scope: !151)
!174 = !DILocation(line: 15, column: 10, scope: !151)
!175 = distinct !{!175, !169, !172, !176}
!176 = !{!"llvm.loop.mustprogress"}
!177 = !DILocation(line: 16, column: 10, scope: !151)
!178 = !DILocation(line: 16, column: 3, scope: !151)

; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/026_c14n.c_838_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/026_c14n.c_838_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlNs = type { i8*, i8*, i8*, %struct._xmlNs* }
%struct._xmlC14NVisibleNsStack = type { i32 }
%struct._xmlC14NCtx = type { %struct._xmlC14NVisibleNsStack*, [10 x i32] }

@.str = private unnamed_addr constant [12 x i8] c"find_result\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"find_result2\00", align 1
@target_function.ns_default = internal global %struct._xmlNs zeroinitializer, align 8, !dbg !0
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_55980_vul/026_c14n.c_838_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.target_function = private unnamed_addr constant [50 x i8] c"void target_function(xmlC14NCtx *, int, int, int)\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"visible\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"has_empty_ns\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"has_empty_ns_in_inclusive_list\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlExcC14NVisibleNsStackFind(%struct._xmlC14NVisibleNsStack* noundef %0, %struct._xmlNs* noundef %1, %struct._xmlC14NCtx* noundef %2) #0 !dbg !46 {
  %4 = alloca %struct._xmlC14NVisibleNsStack*, align 8
  %5 = alloca %struct._xmlNs*, align 8
  %6 = alloca %struct._xmlC14NCtx*, align 8
  %7 = alloca i32, align 4
  store %struct._xmlC14NVisibleNsStack* %0, %struct._xmlC14NVisibleNsStack** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlC14NVisibleNsStack** %4, metadata !50, metadata !DIExpression()), !dbg !51
  store %struct._xmlNs* %1, %struct._xmlNs** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNs** %5, metadata !52, metadata !DIExpression()), !dbg !53
  store %struct._xmlC14NCtx* %2, %struct._xmlC14NCtx** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlC14NCtx** %6, metadata !54, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata i32* %7, metadata !56, metadata !DIExpression()), !dbg !57
  %8 = bitcast i32* %7 to i8*, !dbg !58
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0)), !dbg !59
  %9 = load i32, i32* %7, align 4, !dbg !60
  %10 = icmp eq i32 %9, 0, !dbg !61
  br i1 %10, label %14, label %11, !dbg !62

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4, !dbg !63
  %13 = icmp eq i32 %12, 1, !dbg !64
  br label %14, !dbg !62

14:                                               ; preds = %11, %3
  %15 = phi i1 [ true, %3 ], [ %13, %11 ]
  %16 = zext i1 %15 to i32, !dbg !62
  %17 = sext i32 %16 to i64, !dbg !60
  call void @klee_assume(i64 noundef %17), !dbg !65
  %18 = load i32, i32* %7, align 4, !dbg !66
  ret i32 %18, !dbg !67
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlC14NVisibleNsStackFind(%struct._xmlC14NVisibleNsStack* noundef %0, %struct._xmlNs* noundef %1) #0 !dbg !68 {
  %3 = alloca %struct._xmlC14NVisibleNsStack*, align 8
  %4 = alloca %struct._xmlNs*, align 8
  %5 = alloca i32, align 4
  store %struct._xmlC14NVisibleNsStack* %0, %struct._xmlC14NVisibleNsStack** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlC14NVisibleNsStack** %3, metadata !71, metadata !DIExpression()), !dbg !72
  store %struct._xmlNs* %1, %struct._xmlNs** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNs** %4, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.declare(metadata i32* %5, metadata !75, metadata !DIExpression()), !dbg !76
  %6 = bitcast i32* %5 to i8*, !dbg !77
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0)), !dbg !78
  %7 = load i32, i32* %5, align 4, !dbg !79
  %8 = icmp eq i32 %7, 0, !dbg !80
  br i1 %8, label %12, label %9, !dbg !81

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4, !dbg !82
  %11 = icmp eq i32 %10, 1, !dbg !83
  br label %12, !dbg !81

12:                                               ; preds = %9, %2
  %13 = phi i1 [ true, %2 ], [ %11, %9 ]
  %14 = zext i1 %13 to i32, !dbg !81
  %15 = sext i32 %14 to i64, !dbg !79
  call void @klee_assume(i64 noundef %15), !dbg !84
  %16 = load i32, i32* %5, align 4, !dbg !85
  ret i32 %16, !dbg !86
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlC14NPrintNamespaces(%struct._xmlNs* noundef %0, %struct._xmlC14NCtx* noundef %1) #0 !dbg !87 {
  %3 = alloca %struct._xmlNs*, align 8
  %4 = alloca %struct._xmlC14NCtx*, align 8
  store %struct._xmlNs* %0, %struct._xmlNs** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNs** %3, metadata !90, metadata !DIExpression()), !dbg !91
  store %struct._xmlC14NCtx* %1, %struct._xmlC14NCtx** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlC14NCtx** %4, metadata !92, metadata !DIExpression()), !dbg !93
  ret void, !dbg !94
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @target_function(%struct._xmlC14NCtx* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !2 {
  %5 = alloca %struct._xmlC14NCtx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct._xmlC14NCtx* %0, %struct._xmlC14NCtx** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlC14NCtx** %5, metadata !95, metadata !DIExpression()), !dbg !96
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !97, metadata !DIExpression()), !dbg !98
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !99, metadata !DIExpression()), !dbg !100
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !101, metadata !DIExpression()), !dbg !102
  %9 = load i32, i32* %6, align 4, !dbg !103
  %10 = icmp ne i32 %9, 0, !dbg !103
  br i1 %10, label %11, label %28, !dbg !105

11:                                               ; preds = %4
  %12 = load i32, i32* %7, align 4, !dbg !106
  %13 = icmp ne i32 %12, 0, !dbg !106
  br i1 %13, label %28, label %14, !dbg !107

14:                                               ; preds = %11
  %15 = load i32, i32* %8, align 4, !dbg !108
  %16 = icmp ne i32 %15, 0, !dbg !108
  br i1 %16, label %17, label %28, !dbg !109

17:                                               ; preds = %14
  %18 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.3, i64 0, i64 0), i32 noundef 66, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !110
  %19 = call i8* @memset(i8* bitcast (%struct._xmlNs* @target_function.ns_default to i8*), i32 0, i64 32), !dbg !112
  %20 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %5, align 8, !dbg !113
  %21 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %20, i32 0, i32 0, !dbg !115
  %22 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %21, align 8, !dbg !115
  %23 = call i32 @xmlC14NVisibleNsStackFind(%struct._xmlC14NVisibleNsStack* noundef %22, %struct._xmlNs* noundef @target_function.ns_default), !dbg !116
  %24 = icmp ne i32 %23, 0, !dbg !116
  br i1 %24, label %27, label %25, !dbg !117

25:                                               ; preds = %17
  %26 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %5, align 8, !dbg !118
  call void @xmlC14NPrintNamespaces(%struct._xmlNs* noundef @target_function.ns_default, %struct._xmlC14NCtx* noundef %26), !dbg !120
  br label %27, !dbg !121

27:                                               ; preds = %25, %17
  br label %28, !dbg !122

28:                                               ; preds = %27, %14, %11, %4
  ret void, !dbg !123
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !124 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlC14NCtx, align 8
  %3 = alloca %struct._xmlC14NVisibleNsStack, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlC14NCtx* %2, metadata !127, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.declare(metadata %struct._xmlC14NVisibleNsStack* %3, metadata !129, metadata !DIExpression()), !dbg !130
  %7 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %2, i32 0, i32 0, !dbg !131
  store %struct._xmlC14NVisibleNsStack* %3, %struct._xmlC14NVisibleNsStack** %7, align 8, !dbg !132
  call void @llvm.dbg.declare(metadata i32* %4, metadata !133, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.declare(metadata i32* %5, metadata !135, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.declare(metadata i32* %6, metadata !137, metadata !DIExpression()), !dbg !138
  %8 = bitcast i32* %4 to i8*, !dbg !139
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)), !dbg !140
  %9 = bitcast i32* %5 to i8*, !dbg !141
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0)), !dbg !142
  %10 = bitcast i32* %6 to i8*, !dbg !143
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0)), !dbg !144
  %11 = load i32, i32* %4, align 4, !dbg !145
  %12 = icmp ne i32 %11, 0, !dbg !146
  %13 = zext i1 %12 to i32, !dbg !146
  %14 = sext i32 %13 to i64, !dbg !145
  call void @klee_assume(i64 noundef %14), !dbg !147
  %15 = load i32, i32* %5, align 4, !dbg !148
  %16 = icmp eq i32 %15, 0, !dbg !149
  %17 = zext i1 %16 to i32, !dbg !149
  %18 = sext i32 %17 to i64, !dbg !148
  call void @klee_assume(i64 noundef %18), !dbg !150
  %19 = load i32, i32* %6, align 4, !dbg !151
  %20 = icmp ne i32 %19, 0, !dbg !152
  %21 = zext i1 %20 to i32, !dbg !152
  %22 = sext i32 %21 to i64, !dbg !151
  call void @klee_assume(i64 noundef %22), !dbg !153
  %23 = load i32, i32* %4, align 4, !dbg !154
  %24 = load i32, i32* %5, align 4, !dbg !155
  %25 = load i32, i32* %6, align 4, !dbg !156
  call void @target_function(%struct._xmlC14NCtx* noundef %2, i32 noundef %23, i32 noundef %24, i32 noundef %25), !dbg !157
  ret i32 0, !dbg !158
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #5 !dbg !159 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !166, metadata !DIExpression()), !dbg !167
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !168, metadata !DIExpression()), !dbg !169
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !170, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.declare(metadata i8** %7, metadata !172, metadata !DIExpression()), !dbg !175
  %8 = load i8*, i8** %4, align 8, !dbg !176
  store i8* %8, i8** %7, align 8, !dbg !175
  br label %9, !dbg !177

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !178
  %11 = add i64 %10, -1, !dbg !178
  store i64 %11, i64* %6, align 8, !dbg !178
  %12 = icmp ugt i64 %10, 0, !dbg !179
  br i1 %12, label %13, label %18, !dbg !177

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !180
  %15 = trunc i32 %14 to i8, !dbg !180
  %16 = load i8*, i8** %7, align 8, !dbg !181
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !181
  store i8* %17, i8** %7, align 8, !dbg !181
  store i8 %15, i8* %16, align 1, !dbg !182
  br label %9, !dbg !177, !llvm.loop !183

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !185
  ret i8* %19, !dbg !186
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!21, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45, !45}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ns_default", scope: !2, file: !3, line: 55, type: !24, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "target_function", scope: !3, file: !3, line: 52, type: !4, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !21, retainedNodes: !23)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/026_c14n.c_838_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "7192f2516691dc92bae810a679abb4ef")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, !16, !16, !16}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlC14NCtx", file: !3, line: 12, baseType: !8)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlC14NCtx", file: !3, line: 25, size: 384, elements: !9)
!9 = !{!10, !17}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "ns_rendered", scope: !8, file: !3, line: 26, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlC14NVisibleNsStack", file: !3, line: 11, baseType: !13)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlC14NVisibleNsStack", file: !3, line: 21, size: 32, elements: !14)
!14 = !{!15}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !13, file: !3, line: 22, baseType: !16, size: 32)
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "dummy_members", scope: !8, file: !3, line: 27, baseType: !18, size: 320, offset: 64)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 320, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 10)
!21 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !22, splitDebugInlining: false, nameTableKind: None)
!22 = !{!0}
!23 = !{}
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !3, line: 10, baseType: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !3, line: 14, size: 256, elements: !26)
!26 = !{!27, !31, !32, !34}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !25, file: !3, line: 15, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !25, file: !3, line: 16, baseType: !28, size: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !25, file: !3, line: 17, baseType: !33, size: 64, offset: 128)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !25, file: !3, line: 18, baseType: !35, size: 64, offset: 192)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!36 = distinct !DICompileUnit(language: DW_LANG_C99, file: !37, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!37 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!38 = !{i32 7, !"Dwarf Version", i32 5}
!39 = !{i32 2, !"Debug Info Version", i32 3}
!40 = !{i32 1, !"wchar_size", i32 4}
!41 = !{i32 7, !"PIC Level", i32 2}
!42 = !{i32 7, !"PIE Level", i32 2}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"Ubuntu clang version 14.0.6"}
!46 = distinct !DISubprogram(name: "xmlExcC14NVisibleNsStackFind", scope: !3, file: !3, line: 31, type: !47, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !21, retainedNodes: !23)
!47 = !DISubroutineType(types: !48)
!48 = !{!16, !11, !49, !6}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!50 = !DILocalVariable(name: "stack", arg: 1, scope: !46, file: !3, line: 31, type: !11)
!51 = !DILocation(line: 31, column: 57, scope: !46)
!52 = !DILocalVariable(name: "ns", arg: 2, scope: !46, file: !3, line: 31, type: !49)
!53 = !DILocation(line: 31, column: 71, scope: !46)
!54 = !DILocalVariable(name: "ctx", arg: 3, scope: !46, file: !3, line: 31, type: !6)
!55 = !DILocation(line: 31, column: 87, scope: !46)
!56 = !DILocalVariable(name: "result", scope: !46, file: !3, line: 33, type: !16)
!57 = !DILocation(line: 33, column: 9, scope: !46)
!58 = !DILocation(line: 34, column: 24, scope: !46)
!59 = !DILocation(line: 34, column: 5, scope: !46)
!60 = !DILocation(line: 35, column: 17, scope: !46)
!61 = !DILocation(line: 35, column: 24, scope: !46)
!62 = !DILocation(line: 35, column: 29, scope: !46)
!63 = !DILocation(line: 35, column: 32, scope: !46)
!64 = !DILocation(line: 35, column: 39, scope: !46)
!65 = !DILocation(line: 35, column: 5, scope: !46)
!66 = !DILocation(line: 36, column: 12, scope: !46)
!67 = !DILocation(line: 36, column: 5, scope: !46)
!68 = distinct !DISubprogram(name: "xmlC14NVisibleNsStackFind", scope: !3, file: !3, line: 39, type: !69, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !21, retainedNodes: !23)
!69 = !DISubroutineType(types: !70)
!70 = !{!16, !11, !49}
!71 = !DILocalVariable(name: "stack", arg: 1, scope: !68, file: !3, line: 39, type: !11)
!72 = !DILocation(line: 39, column: 54, scope: !68)
!73 = !DILocalVariable(name: "ns", arg: 2, scope: !68, file: !3, line: 39, type: !49)
!74 = !DILocation(line: 39, column: 68, scope: !68)
!75 = !DILocalVariable(name: "result", scope: !68, file: !3, line: 41, type: !16)
!76 = !DILocation(line: 41, column: 9, scope: !68)
!77 = !DILocation(line: 42, column: 24, scope: !68)
!78 = !DILocation(line: 42, column: 5, scope: !68)
!79 = !DILocation(line: 43, column: 17, scope: !68)
!80 = !DILocation(line: 43, column: 24, scope: !68)
!81 = !DILocation(line: 43, column: 29, scope: !68)
!82 = !DILocation(line: 43, column: 32, scope: !68)
!83 = !DILocation(line: 43, column: 39, scope: !68)
!84 = !DILocation(line: 43, column: 5, scope: !68)
!85 = !DILocation(line: 44, column: 12, scope: !68)
!86 = !DILocation(line: 44, column: 5, scope: !68)
!87 = distinct !DISubprogram(name: "xmlC14NPrintNamespaces", scope: !3, file: !3, line: 47, type: !88, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !21, retainedNodes: !23)
!88 = !DISubroutineType(types: !89)
!89 = !{null, !49, !6}
!90 = !DILocalVariable(name: "ns", arg: 1, scope: !87, file: !3, line: 47, type: !49)
!91 = !DILocation(line: 47, column: 36, scope: !87)
!92 = !DILocalVariable(name: "ctx", arg: 2, scope: !87, file: !3, line: 47, type: !6)
!93 = !DILocation(line: 47, column: 52, scope: !87)
!94 = !DILocation(line: 49, column: 1, scope: !87)
!95 = !DILocalVariable(name: "ctx", arg: 1, scope: !2, file: !3, line: 52, type: !6)
!96 = !DILocation(line: 52, column: 34, scope: !2)
!97 = !DILocalVariable(name: "visible", arg: 2, scope: !2, file: !3, line: 52, type: !16)
!98 = !DILocation(line: 52, column: 43, scope: !2)
!99 = !DILocalVariable(name: "has_empty_ns", arg: 3, scope: !2, file: !3, line: 52, type: !16)
!100 = !DILocation(line: 52, column: 56, scope: !2)
!101 = !DILocalVariable(name: "has_empty_ns_in_inclusive_list", arg: 4, scope: !2, file: !3, line: 52, type: !16)
!102 = !DILocation(line: 52, column: 74, scope: !2)
!103 = !DILocation(line: 54, column: 9, scope: !104)
!104 = distinct !DILexicalBlock(scope: !2, file: !3, line: 54, column: 9)
!105 = !DILocation(line: 54, column: 17, scope: !104)
!106 = !DILocation(line: 54, column: 21, scope: !104)
!107 = !DILocation(line: 54, column: 34, scope: !104)
!108 = !DILocation(line: 54, column: 37, scope: !104)
!109 = !DILocation(line: 54, column: 9, scope: !2)
!110 = !DILocation(line: 66, column: 9, scope: !111)
!111 = distinct !DILexicalBlock(scope: !104, file: !3, line: 54, column: 69)
!112 = !DILocation(line: 68, column: 9, scope: !111)
!113 = !DILocation(line: 70, column: 40, scope: !114)
!114 = distinct !DILexicalBlock(scope: !111, file: !3, line: 70, column: 13)
!115 = !DILocation(line: 70, column: 45, scope: !114)
!116 = !DILocation(line: 70, column: 14, scope: !114)
!117 = !DILocation(line: 70, column: 13, scope: !111)
!118 = !DILocation(line: 71, column: 49, scope: !119)
!119 = distinct !DILexicalBlock(scope: !114, file: !3, line: 70, column: 72)
!120 = !DILocation(line: 71, column: 13, scope: !119)
!121 = !DILocation(line: 72, column: 9, scope: !119)
!122 = !DILocation(line: 73, column: 5, scope: !111)
!123 = !DILocation(line: 74, column: 1, scope: !2)
!124 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 76, type: !125, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !21, retainedNodes: !23)
!125 = !DISubroutineType(types: !126)
!126 = !{!16}
!127 = !DILocalVariable(name: "ctx", scope: !124, file: !3, line: 78, type: !7)
!128 = !DILocation(line: 78, column: 16, scope: !124)
!129 = !DILocalVariable(name: "stack", scope: !124, file: !3, line: 79, type: !12)
!130 = !DILocation(line: 79, column: 27, scope: !124)
!131 = !DILocation(line: 82, column: 9, scope: !124)
!132 = !DILocation(line: 82, column: 21, scope: !124)
!133 = !DILocalVariable(name: "visible", scope: !124, file: !3, line: 85, type: !16)
!134 = !DILocation(line: 85, column: 9, scope: !124)
!135 = !DILocalVariable(name: "has_empty_ns", scope: !124, file: !3, line: 85, type: !16)
!136 = !DILocation(line: 85, column: 18, scope: !124)
!137 = !DILocalVariable(name: "has_empty_ns_in_inclusive_list", scope: !124, file: !3, line: 85, type: !16)
!138 = !DILocation(line: 85, column: 32, scope: !124)
!139 = !DILocation(line: 87, column: 24, scope: !124)
!140 = !DILocation(line: 87, column: 5, scope: !124)
!141 = !DILocation(line: 88, column: 24, scope: !124)
!142 = !DILocation(line: 88, column: 5, scope: !124)
!143 = !DILocation(line: 89, column: 24, scope: !124)
!144 = !DILocation(line: 89, column: 5, scope: !124)
!145 = !DILocation(line: 92, column: 17, scope: !124)
!146 = !DILocation(line: 92, column: 25, scope: !124)
!147 = !DILocation(line: 92, column: 5, scope: !124)
!148 = !DILocation(line: 93, column: 17, scope: !124)
!149 = !DILocation(line: 93, column: 30, scope: !124)
!150 = !DILocation(line: 93, column: 5, scope: !124)
!151 = !DILocation(line: 94, column: 17, scope: !124)
!152 = !DILocation(line: 94, column: 48, scope: !124)
!153 = !DILocation(line: 94, column: 5, scope: !124)
!154 = !DILocation(line: 97, column: 27, scope: !124)
!155 = !DILocation(line: 97, column: 36, scope: !124)
!156 = !DILocation(line: 97, column: 50, scope: !124)
!157 = !DILocation(line: 97, column: 5, scope: !124)
!158 = !DILocation(line: 99, column: 5, scope: !124)
!159 = distinct !DISubprogram(name: "memset", scope: !160, file: !160, line: 12, type: !161, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !36, retainedNodes: !23)
!160 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!161 = !DISubroutineType(types: !162)
!162 = !{!33, !33, !16, !163}
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !164, line: 46, baseType: !165)
!164 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!165 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!166 = !DILocalVariable(name: "dst", arg: 1, scope: !159, file: !160, line: 12, type: !33)
!167 = !DILocation(line: 12, column: 20, scope: !159)
!168 = !DILocalVariable(name: "s", arg: 2, scope: !159, file: !160, line: 12, type: !16)
!169 = !DILocation(line: 12, column: 29, scope: !159)
!170 = !DILocalVariable(name: "count", arg: 3, scope: !159, file: !160, line: 12, type: !163)
!171 = !DILocation(line: 12, column: 39, scope: !159)
!172 = !DILocalVariable(name: "a", scope: !159, file: !160, line: 13, type: !173)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!175 = !DILocation(line: 13, column: 9, scope: !159)
!176 = !DILocation(line: 13, column: 13, scope: !159)
!177 = !DILocation(line: 14, column: 3, scope: !159)
!178 = !DILocation(line: 14, column: 15, scope: !159)
!179 = !DILocation(line: 14, column: 18, scope: !159)
!180 = !DILocation(line: 15, column: 12, scope: !159)
!181 = !DILocation(line: 15, column: 7, scope: !159)
!182 = !DILocation(line: 15, column: 10, scope: !159)
!183 = distinct !{!183, !177, !180, !184}
!184 = !{!"llvm.loop.mustprogress"}
!185 = !DILocation(line: 16, column: 10, scope: !159)
!186 = !DILocation(line: 16, column: 3, scope: !159)

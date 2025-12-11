; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/017_c14n.c_837_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/017_c14n.c_837_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlNs = type { i8*, i32, i8*, i8*, %struct._xmlNs* }
%struct._xmlC14NVisibleNsStack = type { i32 }
%struct._xmlC14NCtx = type { %struct._xmlC14NVisibleNsStack*, [10 x i32] }

@.str = private unnamed_addr constant [23 x i8] c"visible_ns_find_result\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_62911_vul/017_c14n.c_837_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlC14NPrintNamespaces = private unnamed_addr constant [51 x i8] c"void xmlC14NPrintNamespaces(xmlNs *, xmlC14NCtx *)\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"visible\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"has_empty_ns\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"has_empty_ns_in_inclusive_list\00", align 1
@xmlC14NProcessAttrsAxis.ns_default = internal global %struct._xmlNs zeroinitializer, align 8, !dbg !0

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlC14NVisibleNsStackFind(%struct._xmlC14NVisibleNsStack* noundef %0, %struct._xmlNs* noundef %1) #0 !dbg !48 {
  %3 = alloca %struct._xmlC14NVisibleNsStack*, align 8
  %4 = alloca %struct._xmlNs*, align 8
  %5 = alloca i32, align 4
  store %struct._xmlC14NVisibleNsStack* %0, %struct._xmlC14NVisibleNsStack** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlC14NVisibleNsStack** %3, metadata !52, metadata !DIExpression()), !dbg !53
  store %struct._xmlNs* %1, %struct._xmlNs** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNs** %4, metadata !54, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata i32* %5, metadata !56, metadata !DIExpression()), !dbg !57
  %6 = bitcast i32* %5 to i8*, !dbg !58
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0)), !dbg !59
  %7 = load i32, i32* %5, align 4, !dbg !60
  %8 = icmp eq i32 %7, 0, !dbg !61
  br i1 %8, label %12, label %9, !dbg !62

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4, !dbg !63
  %11 = icmp eq i32 %10, 1, !dbg !64
  br label %12, !dbg !62

12:                                               ; preds = %9, %2
  %13 = phi i1 [ true, %2 ], [ %11, %9 ]
  %14 = zext i1 %13 to i32, !dbg !62
  %15 = sext i32 %14 to i64, !dbg !60
  call void @klee_assume(i64 noundef %15), !dbg !65
  %16 = load i32, i32* %5, align 4, !dbg !66
  ret i32 %16, !dbg !67
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlC14NPrintNamespaces(%struct._xmlNs* noundef %0, %struct._xmlC14NCtx* noundef %1) #0 !dbg !68 {
  %3 = alloca %struct._xmlNs*, align 8
  %4 = alloca %struct._xmlC14NCtx*, align 8
  store %struct._xmlNs* %0, %struct._xmlNs** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNs** %3, metadata !71, metadata !DIExpression()), !dbg !72
  store %struct._xmlC14NCtx* %1, %struct._xmlC14NCtx** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlC14NCtx** %4, metadata !73, metadata !DIExpression()), !dbg !74
  %5 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.2, i64 0, i64 0), i32 noundef 50, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.xmlC14NPrintNamespaces, i64 0, i64 0)), !dbg !75
  ret void, !dbg !76
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlC14NProcessAttrsAxis(%struct._xmlC14NCtx* noundef %0) #0 !dbg !2 {
  %2 = alloca %struct._xmlC14NCtx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct._xmlC14NCtx* %0, %struct._xmlC14NCtx** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlC14NCtx** %2, metadata !77, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.declare(metadata i32* %3, metadata !79, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.declare(metadata i32* %4, metadata !81, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.declare(metadata i32* %5, metadata !83, metadata !DIExpression()), !dbg !84
  %6 = bitcast i32* %3 to i8*, !dbg !85
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)), !dbg !86
  %7 = bitcast i32* %4 to i8*, !dbg !87
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0)), !dbg !88
  %8 = bitcast i32* %5 to i8*, !dbg !89
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0)), !dbg !90
  %9 = load i32, i32* %3, align 4, !dbg !91
  %10 = icmp eq i32 %9, 0, !dbg !92
  br i1 %10, label %14, label %11, !dbg !93

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4, !dbg !94
  %13 = icmp eq i32 %12, 1, !dbg !95
  br label %14, !dbg !93

14:                                               ; preds = %11, %1
  %15 = phi i1 [ true, %1 ], [ %13, %11 ]
  %16 = zext i1 %15 to i32, !dbg !93
  %17 = sext i32 %16 to i64, !dbg !91
  call void @klee_assume(i64 noundef %17), !dbg !96
  %18 = load i32, i32* %4, align 4, !dbg !97
  %19 = icmp eq i32 %18, 0, !dbg !98
  br i1 %19, label %23, label %20, !dbg !99

20:                                               ; preds = %14
  %21 = load i32, i32* %4, align 4, !dbg !100
  %22 = icmp eq i32 %21, 1, !dbg !101
  br label %23, !dbg !99

23:                                               ; preds = %20, %14
  %24 = phi i1 [ true, %14 ], [ %22, %20 ]
  %25 = zext i1 %24 to i32, !dbg !99
  %26 = sext i32 %25 to i64, !dbg !97
  call void @klee_assume(i64 noundef %26), !dbg !102
  %27 = load i32, i32* %5, align 4, !dbg !103
  %28 = icmp eq i32 %27, 0, !dbg !104
  br i1 %28, label %32, label %29, !dbg !105

29:                                               ; preds = %23
  %30 = load i32, i32* %5, align 4, !dbg !106
  %31 = icmp eq i32 %30, 1, !dbg !107
  br label %32, !dbg !105

32:                                               ; preds = %29, %23
  %33 = phi i1 [ true, %23 ], [ %31, %29 ]
  %34 = zext i1 %33 to i32, !dbg !105
  %35 = sext i32 %34 to i64, !dbg !103
  call void @klee_assume(i64 noundef %35), !dbg !108
  %36 = load i32, i32* %3, align 4, !dbg !109
  %37 = icmp ne i32 %36, 0, !dbg !109
  br i1 %37, label %38, label %54, !dbg !111

38:                                               ; preds = %32
  %39 = load i32, i32* %4, align 4, !dbg !112
  %40 = icmp ne i32 %39, 0, !dbg !112
  br i1 %40, label %54, label %41, !dbg !113

41:                                               ; preds = %38
  %42 = load i32, i32* %5, align 4, !dbg !114
  %43 = icmp ne i32 %42, 0, !dbg !114
  br i1 %43, label %44, label %54, !dbg !115

44:                                               ; preds = %41
  %45 = call i8* @memset(i8* bitcast (%struct._xmlNs* @xmlC14NProcessAttrsAxis.ns_default to i8*), i32 0, i64 40), !dbg !116
  %46 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %2, align 8, !dbg !118
  %47 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %46, i32 0, i32 0, !dbg !120
  %48 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %47, align 8, !dbg !120
  %49 = call i32 @xmlC14NVisibleNsStackFind(%struct._xmlC14NVisibleNsStack* noundef %48, %struct._xmlNs* noundef @xmlC14NProcessAttrsAxis.ns_default), !dbg !121
  %50 = icmp ne i32 %49, 0, !dbg !121
  br i1 %50, label %53, label %51, !dbg !122

51:                                               ; preds = %44
  %52 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %2, align 8, !dbg !123
  call void @xmlC14NPrintNamespaces(%struct._xmlNs* noundef @xmlC14NProcessAttrsAxis.ns_default, %struct._xmlC14NCtx* noundef %52), !dbg !125
  br label %53, !dbg !126

53:                                               ; preds = %51, %44
  br label %54, !dbg !127

54:                                               ; preds = %53, %41, %38, %32
  ret void, !dbg !128
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !129 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlC14NCtx*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlC14NCtx** %2, metadata !132, metadata !DIExpression()), !dbg !133
  %3 = call noalias i8* @malloc(i64 noundef 48) #7, !dbg !134
  %4 = bitcast i8* %3 to %struct._xmlC14NCtx*, !dbg !135
  store %struct._xmlC14NCtx* %4, %struct._xmlC14NCtx** %2, align 8, !dbg !133
  %5 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %2, align 8, !dbg !136
  %6 = icmp ne %struct._xmlC14NCtx* %5, null, !dbg !136
  br i1 %6, label %8, label %7, !dbg !138

7:                                                ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !139
  br label %33, !dbg !139

8:                                                ; preds = %0
  %9 = call noalias i8* @malloc(i64 noundef 4) #7, !dbg !140
  %10 = bitcast i8* %9 to %struct._xmlC14NVisibleNsStack*, !dbg !141
  %11 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %2, align 8, !dbg !142
  %12 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %11, i32 0, i32 0, !dbg !143
  store %struct._xmlC14NVisibleNsStack* %10, %struct._xmlC14NVisibleNsStack** %12, align 8, !dbg !144
  %13 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %2, align 8, !dbg !145
  %14 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %13, i32 0, i32 0, !dbg !147
  %15 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %14, align 8, !dbg !147
  %16 = icmp ne %struct._xmlC14NVisibleNsStack* %15, null, !dbg !145
  br i1 %16, label %20, label %17, !dbg !148

17:                                               ; preds = %8
  %18 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %2, align 8, !dbg !149
  %19 = bitcast %struct._xmlC14NCtx* %18 to i8*, !dbg !149
  call void @free(i8* noundef %19) #7, !dbg !151
  store i32 1, i32* %1, align 4, !dbg !152
  br label %33, !dbg !152

20:                                               ; preds = %8
  %21 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %2, align 8, !dbg !153
  %22 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %21, i32 0, i32 1, !dbg !154
  %23 = getelementptr inbounds [10 x i32], [10 x i32]* %22, i64 0, i64 0, !dbg !155
  %24 = bitcast i32* %23 to i8*, !dbg !155
  %25 = call i8* @memset(i8* %24, i32 0, i64 40), !dbg !155
  %26 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %2, align 8, !dbg !156
  call void @xmlC14NProcessAttrsAxis(%struct._xmlC14NCtx* noundef %26), !dbg !157
  %27 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %2, align 8, !dbg !158
  %28 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %27, i32 0, i32 0, !dbg !159
  %29 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %28, align 8, !dbg !159
  %30 = bitcast %struct._xmlC14NVisibleNsStack* %29 to i8*, !dbg !158
  call void @free(i8* noundef %30) #7, !dbg !160
  %31 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %2, align 8, !dbg !161
  %32 = bitcast %struct._xmlC14NCtx* %31 to i8*, !dbg !161
  call void @free(i8* noundef %32) #7, !dbg !162
  store i32 0, i32* %1, align 4, !dbg !163
  br label %33, !dbg !163

33:                                               ; preds = %20, %17, %7
  %34 = load i32, i32* %1, align 4, !dbg !164
  ret i32 %34, !dbg !164
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !165 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !172, metadata !DIExpression()), !dbg !173
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !174, metadata !DIExpression()), !dbg !175
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !176, metadata !DIExpression()), !dbg !177
  call void @llvm.dbg.declare(metadata i8** %7, metadata !178, metadata !DIExpression()), !dbg !181
  %8 = load i8*, i8** %4, align 8, !dbg !182
  store i8* %8, i8** %7, align 8, !dbg !181
  br label %9, !dbg !183

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !184
  %11 = add i64 %10, -1, !dbg !184
  store i64 %11, i64* %6, align 8, !dbg !184
  %12 = icmp ugt i64 %10, 0, !dbg !185
  br i1 %12, label %13, label %18, !dbg !183

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !186
  %15 = trunc i32 %14 to i8, !dbg !186
  %16 = load i8*, i8** %7, align 8, !dbg !187
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !187
  store i8* %17, i8** %7, align 8, !dbg !187
  store i8 %15, i8* %16, align 1, !dbg !188
  br label %9, !dbg !183, !llvm.loop !189

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !191
  ret i8* %19, !dbg !192
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!21, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47, !47}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ns_default", scope: !2, file: !3, line: 73, type: !25, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "xmlC14NProcessAttrsAxis", scope: !3, file: !3, line: 54, type: !4, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !21, retainedNodes: !24)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/017_c14n.c_837_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "203f168df12d942c75dad73e547aa2d4")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlC14NCtx", file: !3, line: 12, baseType: !8)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlC14NCtx", file: !3, line: 26, size: 384, elements: !9)
!9 = !{!10, !17}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "ns_rendered", scope: !8, file: !3, line: 27, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlC14NVisibleNsStack", file: !3, line: 11, baseType: !13)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlC14NVisibleNsStack", file: !3, line: 22, size: 32, elements: !14)
!14 = !{!15}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !13, file: !3, line: 23, baseType: !16, size: 32)
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "dummy_members", scope: !8, file: !3, line: 28, baseType: !18, size: 320, offset: 64)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 320, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 10)
!21 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !22, globals: !23, splitDebugInlining: false, nameTableKind: None)
!22 = !{!6, !11}
!23 = !{!0}
!24 = !{}
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !3, line: 10, baseType: !26)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !3, line: 14, size: 320, elements: !27)
!27 = !{!28, !30, !31, !35, !36}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !26, file: !3, line: 15, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !26, file: !3, line: 16, baseType: !16, size: 32, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !26, file: !3, line: 17, baseType: !32, size: 64, offset: 128)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !26, file: !3, line: 18, baseType: !32, size: 64, offset: 192)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !26, file: !3, line: 19, baseType: !37, size: 64, offset: 256)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!38 = distinct !DICompileUnit(language: DW_LANG_C99, file: !39, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!39 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!40 = !{i32 7, !"Dwarf Version", i32 5}
!41 = !{i32 2, !"Debug Info Version", i32 3}
!42 = !{i32 1, !"wchar_size", i32 4}
!43 = !{i32 7, !"PIC Level", i32 2}
!44 = !{i32 7, !"PIE Level", i32 2}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"Ubuntu clang version 14.0.6"}
!48 = distinct !DISubprogram(name: "xmlC14NVisibleNsStackFind", scope: !3, file: !3, line: 36, type: !49, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !21, retainedNodes: !24)
!49 = !DISubroutineType(types: !50)
!50 = !{!16, !11, !51}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!52 = !DILocalVariable(name: "stack", arg: 1, scope: !48, file: !3, line: 36, type: !11)
!53 = !DILocation(line: 36, column: 54, scope: !48)
!54 = !DILocalVariable(name: "ns", arg: 2, scope: !48, file: !3, line: 36, type: !51)
!55 = !DILocation(line: 36, column: 68, scope: !48)
!56 = !DILocalVariable(name: "result", scope: !48, file: !3, line: 38, type: !16)
!57 = !DILocation(line: 38, column: 9, scope: !48)
!58 = !DILocation(line: 39, column: 24, scope: !48)
!59 = !DILocation(line: 39, column: 5, scope: !48)
!60 = !DILocation(line: 40, column: 17, scope: !48)
!61 = !DILocation(line: 40, column: 24, scope: !48)
!62 = !DILocation(line: 40, column: 29, scope: !48)
!63 = !DILocation(line: 40, column: 32, scope: !48)
!64 = !DILocation(line: 40, column: 39, scope: !48)
!65 = !DILocation(line: 40, column: 5, scope: !48)
!66 = !DILocation(line: 41, column: 12, scope: !48)
!67 = !DILocation(line: 41, column: 5, scope: !48)
!68 = distinct !DISubprogram(name: "xmlC14NPrintNamespaces", scope: !3, file: !3, line: 44, type: !69, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !21, retainedNodes: !24)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !51, !6}
!71 = !DILocalVariable(name: "ns", arg: 1, scope: !68, file: !3, line: 44, type: !51)
!72 = !DILocation(line: 44, column: 36, scope: !68)
!73 = !DILocalVariable(name: "ctx", arg: 2, scope: !68, file: !3, line: 44, type: !6)
!74 = !DILocation(line: 44, column: 52, scope: !68)
!75 = !DILocation(line: 50, column: 5, scope: !68)
!76 = !DILocation(line: 51, column: 1, scope: !68)
!77 = !DILocalVariable(name: "ctx", arg: 1, scope: !2, file: !3, line: 54, type: !6)
!78 = !DILocation(line: 54, column: 42, scope: !2)
!79 = !DILocalVariable(name: "visible", scope: !2, file: !3, line: 56, type: !16)
!80 = !DILocation(line: 56, column: 9, scope: !2)
!81 = !DILocalVariable(name: "has_empty_ns", scope: !2, file: !3, line: 57, type: !16)
!82 = !DILocation(line: 57, column: 9, scope: !2)
!83 = !DILocalVariable(name: "has_empty_ns_in_inclusive_list", scope: !2, file: !3, line: 58, type: !16)
!84 = !DILocation(line: 58, column: 9, scope: !2)
!85 = !DILocation(line: 61, column: 24, scope: !2)
!86 = !DILocation(line: 61, column: 5, scope: !2)
!87 = !DILocation(line: 62, column: 24, scope: !2)
!88 = !DILocation(line: 62, column: 5, scope: !2)
!89 = !DILocation(line: 63, column: 24, scope: !2)
!90 = !DILocation(line: 63, column: 5, scope: !2)
!91 = !DILocation(line: 67, column: 17, scope: !2)
!92 = !DILocation(line: 67, column: 25, scope: !2)
!93 = !DILocation(line: 67, column: 30, scope: !2)
!94 = !DILocation(line: 67, column: 33, scope: !2)
!95 = !DILocation(line: 67, column: 41, scope: !2)
!96 = !DILocation(line: 67, column: 5, scope: !2)
!97 = !DILocation(line: 68, column: 17, scope: !2)
!98 = !DILocation(line: 68, column: 30, scope: !2)
!99 = !DILocation(line: 68, column: 35, scope: !2)
!100 = !DILocation(line: 68, column: 38, scope: !2)
!101 = !DILocation(line: 68, column: 51, scope: !2)
!102 = !DILocation(line: 68, column: 5, scope: !2)
!103 = !DILocation(line: 69, column: 17, scope: !2)
!104 = !DILocation(line: 69, column: 48, scope: !2)
!105 = !DILocation(line: 69, column: 53, scope: !2)
!106 = !DILocation(line: 69, column: 56, scope: !2)
!107 = !DILocation(line: 69, column: 87, scope: !2)
!108 = !DILocation(line: 69, column: 5, scope: !2)
!109 = !DILocation(line: 72, column: 9, scope: !110)
!110 = distinct !DILexicalBlock(scope: !2, file: !3, line: 72, column: 9)
!111 = !DILocation(line: 72, column: 17, scope: !110)
!112 = !DILocation(line: 72, column: 21, scope: !110)
!113 = !DILocation(line: 72, column: 34, scope: !110)
!114 = !DILocation(line: 72, column: 37, scope: !110)
!115 = !DILocation(line: 72, column: 9, scope: !2)
!116 = !DILocation(line: 76, column: 9, scope: !117)
!117 = distinct !DILexicalBlock(scope: !110, file: !3, line: 72, column: 69)
!118 = !DILocation(line: 79, column: 40, scope: !119)
!119 = distinct !DILexicalBlock(scope: !117, file: !3, line: 79, column: 13)
!120 = !DILocation(line: 79, column: 45, scope: !119)
!121 = !DILocation(line: 79, column: 14, scope: !119)
!122 = !DILocation(line: 79, column: 13, scope: !117)
!123 = !DILocation(line: 81, column: 49, scope: !124)
!124 = distinct !DILexicalBlock(scope: !119, file: !3, line: 79, column: 72)
!125 = !DILocation(line: 81, column: 13, scope: !124)
!126 = !DILocation(line: 82, column: 9, scope: !124)
!127 = !DILocation(line: 83, column: 5, scope: !117)
!128 = !DILocation(line: 84, column: 1, scope: !2)
!129 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 86, type: !130, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !21, retainedNodes: !24)
!130 = !DISubroutineType(types: !131)
!131 = !{!16}
!132 = !DILocalVariable(name: "ctx", scope: !129, file: !3, line: 88, type: !6)
!133 = !DILocation(line: 88, column: 17, scope: !129)
!134 = !DILocation(line: 88, column: 36, scope: !129)
!135 = !DILocation(line: 88, column: 23, scope: !129)
!136 = !DILocation(line: 89, column: 10, scope: !137)
!137 = distinct !DILexicalBlock(scope: !129, file: !3, line: 89, column: 9)
!138 = !DILocation(line: 89, column: 9, scope: !129)
!139 = !DILocation(line: 89, column: 15, scope: !137)
!140 = !DILocation(line: 92, column: 48, scope: !129)
!141 = !DILocation(line: 92, column: 24, scope: !129)
!142 = !DILocation(line: 92, column: 5, scope: !129)
!143 = !DILocation(line: 92, column: 10, scope: !129)
!144 = !DILocation(line: 92, column: 22, scope: !129)
!145 = !DILocation(line: 93, column: 10, scope: !146)
!146 = distinct !DILexicalBlock(scope: !129, file: !3, line: 93, column: 9)
!147 = !DILocation(line: 93, column: 15, scope: !146)
!148 = !DILocation(line: 93, column: 9, scope: !129)
!149 = !DILocation(line: 94, column: 14, scope: !150)
!150 = distinct !DILexicalBlock(scope: !146, file: !3, line: 93, column: 28)
!151 = !DILocation(line: 94, column: 9, scope: !150)
!152 = !DILocation(line: 95, column: 9, scope: !150)
!153 = !DILocation(line: 99, column: 12, scope: !129)
!154 = !DILocation(line: 99, column: 17, scope: !129)
!155 = !DILocation(line: 99, column: 5, scope: !129)
!156 = !DILocation(line: 102, column: 29, scope: !129)
!157 = !DILocation(line: 102, column: 5, scope: !129)
!158 = !DILocation(line: 105, column: 10, scope: !129)
!159 = !DILocation(line: 105, column: 15, scope: !129)
!160 = !DILocation(line: 105, column: 5, scope: !129)
!161 = !DILocation(line: 106, column: 10, scope: !129)
!162 = !DILocation(line: 106, column: 5, scope: !129)
!163 = !DILocation(line: 108, column: 5, scope: !129)
!164 = !DILocation(line: 109, column: 1, scope: !129)
!165 = distinct !DISubprogram(name: "memset", scope: !166, file: !166, line: 12, type: !167, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !38, retainedNodes: !24)
!166 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!167 = !DISubroutineType(types: !168)
!168 = !{!29, !29, !16, !169}
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !170, line: 46, baseType: !171)
!170 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!171 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!172 = !DILocalVariable(name: "dst", arg: 1, scope: !165, file: !166, line: 12, type: !29)
!173 = !DILocation(line: 12, column: 20, scope: !165)
!174 = !DILocalVariable(name: "s", arg: 2, scope: !165, file: !166, line: 12, type: !16)
!175 = !DILocation(line: 12, column: 29, scope: !165)
!176 = !DILocalVariable(name: "count", arg: 3, scope: !165, file: !166, line: 12, type: !169)
!177 = !DILocation(line: 12, column: 39, scope: !165)
!178 = !DILocalVariable(name: "a", scope: !165, file: !166, line: 13, type: !179)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!181 = !DILocation(line: 13, column: 9, scope: !165)
!182 = !DILocation(line: 13, column: 13, scope: !165)
!183 = !DILocation(line: 14, column: 3, scope: !165)
!184 = !DILocation(line: 14, column: 15, scope: !165)
!185 = !DILocation(line: 14, column: 18, scope: !165)
!186 = !DILocation(line: 15, column: 12, scope: !165)
!187 = !DILocation(line: 15, column: 7, scope: !165)
!188 = !DILocation(line: 15, column: 10, scope: !165)
!189 = distinct !{!189, !183, !186, !190}
!190 = !{!"llvm.loop.mustprogress"}
!191 = !DILocation(line: 16, column: 10, scope: !165)
!192 = !DILocation(line: 16, column: 3, scope: !165)

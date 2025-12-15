; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/025_c14n.c_829_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/025_c14n.c_829_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlNs = type { i8*, i8*, i8*, %struct._xmlNs* }
%struct._xmlC14NVisibleNsStack = type opaque
%struct._xmlC14NCtx = type { %struct._xmlC14NVisibleNsStack* }

@.str = private unnamed_addr constant [12 x i8] c"find_result\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"visible\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"has_visibly_utilized_empty_ns\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"has_empty_ns\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"has_empty_ns_in_inclusive_list\00", align 1
@target_function.ns_default = internal global %struct._xmlNs zeroinitializer, align 8, !dbg !0
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_55980_vul/025_c14n.c_829_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.target_function = private unnamed_addr constant [35 x i8] c"void target_function(xmlC14NCtx *)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlExcC14NVisibleNsStackFind(%struct._xmlC14NVisibleNsStack* noundef %0, %struct._xmlNs* noundef %1, %struct._xmlC14NCtx* noundef %2) #0 !dbg !40 {
  %4 = alloca %struct._xmlC14NVisibleNsStack*, align 8
  %5 = alloca %struct._xmlNs*, align 8
  %6 = alloca %struct._xmlC14NCtx*, align 8
  %7 = alloca i32, align 4
  store %struct._xmlC14NVisibleNsStack* %0, %struct._xmlC14NVisibleNsStack** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlC14NVisibleNsStack** %4, metadata !45, metadata !DIExpression()), !dbg !46
  store %struct._xmlNs* %1, %struct._xmlNs** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNs** %5, metadata !47, metadata !DIExpression()), !dbg !48
  store %struct._xmlC14NCtx* %2, %struct._xmlC14NCtx** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlC14NCtx** %6, metadata !49, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.declare(metadata i32* %7, metadata !51, metadata !DIExpression()), !dbg !52
  %8 = bitcast i32* %7 to i8*, !dbg !53
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0)), !dbg !54
  %9 = load i32, i32* %7, align 4, !dbg !55
  %10 = icmp eq i32 %9, 0, !dbg !56
  br i1 %10, label %14, label %11, !dbg !57

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4, !dbg !58
  %13 = icmp eq i32 %12, 1, !dbg !59
  br label %14, !dbg !57

14:                                               ; preds = %11, %3
  %15 = phi i1 [ true, %3 ], [ %13, %11 ]
  %16 = zext i1 %15 to i32, !dbg !57
  %17 = sext i32 %16 to i64, !dbg !55
  call void @klee_assume(i64 noundef %17), !dbg !60
  %18 = load i32, i32* %7, align 4, !dbg !61
  ret i32 %18, !dbg !62
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlC14NPrintNamespaces(%struct._xmlNs* noundef %0, %struct._xmlC14NCtx* noundef %1) #0 !dbg !63 {
  %3 = alloca %struct._xmlNs*, align 8
  %4 = alloca %struct._xmlC14NCtx*, align 8
  store %struct._xmlNs* %0, %struct._xmlNs** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNs** %3, metadata !66, metadata !DIExpression()), !dbg !67
  store %struct._xmlC14NCtx* %1, %struct._xmlC14NCtx** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlC14NCtx** %4, metadata !68, metadata !DIExpression()), !dbg !69
  ret void, !dbg !70
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @target_function(%struct._xmlC14NCtx* noundef %0) #0 !dbg !2 {
  %2 = alloca %struct._xmlC14NCtx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct._xmlC14NCtx* %0, %struct._xmlC14NCtx** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlC14NCtx** %2, metadata !71, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.declare(metadata i32* %3, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.declare(metadata i32* %4, metadata !75, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.declare(metadata i32* %5, metadata !77, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.declare(metadata i32* %6, metadata !79, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.declare(metadata i32* %7, metadata !81, metadata !DIExpression()), !dbg !82
  %8 = bitcast i32* %3 to i8*, !dbg !83
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)), !dbg !84
  %9 = bitcast i32* %4 to i8*, !dbg !85
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0)), !dbg !86
  %10 = bitcast i32* %5 to i8*, !dbg !87
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0)), !dbg !88
  %11 = bitcast i32* %6 to i8*, !dbg !89
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 4, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0)), !dbg !90
  %12 = load i32, i32* %3, align 4, !dbg !91
  %13 = icmp ne i32 %12, 0, !dbg !92
  %14 = zext i1 %13 to i32, !dbg !92
  %15 = sext i32 %14 to i64, !dbg !91
  call void @klee_assume(i64 noundef %15), !dbg !93
  %16 = load i32, i32* %4, align 4, !dbg !94
  %17 = icmp ne i32 %16, 0, !dbg !95
  %18 = zext i1 %17 to i32, !dbg !95
  %19 = sext i32 %18 to i64, !dbg !94
  call void @klee_assume(i64 noundef %19), !dbg !96
  %20 = load i32, i32* %5, align 4, !dbg !97
  %21 = icmp eq i32 %20, 0, !dbg !98
  %22 = zext i1 %21 to i32, !dbg !98
  %23 = sext i32 %22 to i64, !dbg !97
  call void @klee_assume(i64 noundef %23), !dbg !99
  %24 = load i32, i32* %6, align 4, !dbg !100
  %25 = icmp eq i32 %24, 0, !dbg !101
  %26 = zext i1 %25 to i32, !dbg !101
  %27 = sext i32 %26 to i64, !dbg !100
  call void @klee_assume(i64 noundef %27), !dbg !102
  %28 = load i32, i32* %3, align 4, !dbg !103
  %29 = icmp ne i32 %28, 0, !dbg !103
  br i1 %29, label %30, label %52, !dbg !105

30:                                               ; preds = %1
  %31 = load i32, i32* %4, align 4, !dbg !106
  %32 = icmp ne i32 %31, 0, !dbg !106
  br i1 %32, label %33, label %52, !dbg !107

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4, !dbg !108
  %35 = icmp ne i32 %34, 0, !dbg !108
  br i1 %35, label %52, label %36, !dbg !109

36:                                               ; preds = %33
  %37 = load i32, i32* %6, align 4, !dbg !110
  %38 = icmp ne i32 %37, 0, !dbg !110
  br i1 %38, label %52, label %39, !dbg !111

39:                                               ; preds = %36
  %40 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.6, i64 0, i64 0), i32 noundef 73, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !112
  %41 = call i8* @memset(i8* bitcast (%struct._xmlNs* @target_function.ns_default to i8*), i32 0, i64 32), !dbg !114
  %42 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %2, align 8, !dbg !115
  %43 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %42, i32 0, i32 0, !dbg !116
  %44 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %43, align 8, !dbg !116
  %45 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %2, align 8, !dbg !117
  %46 = call i32 @xmlExcC14NVisibleNsStackFind(%struct._xmlC14NVisibleNsStack* noundef %44, %struct._xmlNs* noundef @target_function.ns_default, %struct._xmlC14NCtx* noundef %45), !dbg !118
  store i32 %46, i32* %7, align 4, !dbg !119
  %47 = load i32, i32* %7, align 4, !dbg !120
  %48 = icmp ne i32 %47, 0, !dbg !120
  br i1 %48, label %51, label %49, !dbg !122

49:                                               ; preds = %39
  %50 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %2, align 8, !dbg !123
  call void @xmlC14NPrintNamespaces(%struct._xmlNs* noundef @target_function.ns_default, %struct._xmlC14NCtx* noundef %50), !dbg !125
  br label %51, !dbg !126

51:                                               ; preds = %49, %39
  br label %52, !dbg !127

52:                                               ; preds = %51, %36, %33, %30, %1
  ret void, !dbg !128
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !129 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlC14NCtx*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlC14NCtx** %2, metadata !132, metadata !DIExpression()), !dbg !133
  %3 = call noalias i8* @malloc(i64 noundef 8) #7, !dbg !134
  %4 = bitcast i8* %3 to %struct._xmlC14NCtx*, !dbg !135
  store %struct._xmlC14NCtx* %4, %struct._xmlC14NCtx** %2, align 8, !dbg !133
  %5 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %2, align 8, !dbg !136
  %6 = icmp ne %struct._xmlC14NCtx* %5, null, !dbg !136
  br i1 %6, label %8, label %7, !dbg !138

7:                                                ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !139
  br label %14, !dbg !139

8:                                                ; preds = %0
  %9 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %2, align 8, !dbg !140
  %10 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %9, i32 0, i32 0, !dbg !141
  store %struct._xmlC14NVisibleNsStack* null, %struct._xmlC14NVisibleNsStack** %10, align 8, !dbg !142
  %11 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %2, align 8, !dbg !143
  call void @target_function(%struct._xmlC14NCtx* noundef %11), !dbg !144
  %12 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %2, align 8, !dbg !145
  %13 = bitcast %struct._xmlC14NCtx* %12 to i8*, !dbg !145
  call void @free(i8* noundef %13) #7, !dbg !146
  store i32 0, i32* %1, align 4, !dbg !147
  br label %14, !dbg !147

14:                                               ; preds = %8, %7
  %15 = load i32, i32* %1, align 4, !dbg !148
  ret i32 %15, !dbg !148
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !149 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !156, metadata !DIExpression()), !dbg !157
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !158, metadata !DIExpression()), !dbg !159
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !160, metadata !DIExpression()), !dbg !161
  call void @llvm.dbg.declare(metadata i8** %7, metadata !162, metadata !DIExpression()), !dbg !165
  %8 = load i8*, i8** %4, align 8, !dbg !166
  store i8* %8, i8** %7, align 8, !dbg !165
  br label %9, !dbg !167

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !168
  %11 = add i64 %10, -1, !dbg !168
  store i64 %11, i64* %6, align 8, !dbg !168
  %12 = icmp ugt i64 %10, 0, !dbg !169
  br i1 %12, label %13, label %18, !dbg !167

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !170
  %15 = trunc i32 %14 to i8, !dbg !170
  %16 = load i8*, i8** %7, align 8, !dbg !171
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !171
  store i8* %17, i8** %7, align 8, !dbg !171
  store i8 %15, i8* %16, align 1, !dbg !172
  br label %9, !dbg !167, !llvm.loop !173

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !175
  ret i8* %19, !dbg !176
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!14, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39, !39}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ns_default", scope: !2, file: !3, line: 66, type: !18, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "target_function", scope: !3, file: !3, line: 41, type: !4, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !17)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/025_c14n.c_829_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "3cfd5f43056c1e7aaba3e45a2c645822")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlC14NCtx", file: !3, line: 12, baseType: !8)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlC14NCtx", file: !3, line: 21, size: 64, elements: !9)
!9 = !{!10}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "ns_rendered", scope: !8, file: !3, line: 22, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlC14NVisibleNsStack", file: !3, line: 11, baseType: !13)
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlC14NVisibleNsStack", file: !3, line: 11, flags: DIFlagFwdDecl)
!14 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !15, globals: !16, splitDebugInlining: false, nameTableKind: None)
!15 = !{!6}
!16 = !{!0}
!17 = !{}
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !3, line: 10, baseType: !19)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !3, line: 14, size: 256, elements: !20)
!20 = !{!21, !25, !26, !28}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !19, file: !3, line: 15, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!24 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !19, file: !3, line: 16, baseType: !22, size: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !19, file: !3, line: 17, baseType: !27, size: 64, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !19, file: !3, line: 18, baseType: !29, size: 64, offset: 192)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!30 = distinct !DICompileUnit(language: DW_LANG_C99, file: !31, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!31 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!32 = !{i32 7, !"Dwarf Version", i32 5}
!33 = !{i32 2, !"Debug Info Version", i32 3}
!34 = !{i32 1, !"wchar_size", i32 4}
!35 = !{i32 7, !"PIC Level", i32 2}
!36 = !{i32 7, !"PIE Level", i32 2}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"Ubuntu clang version 14.0.6"}
!40 = distinct !DISubprogram(name: "xmlExcC14NVisibleNsStackFind", scope: !3, file: !3, line: 27, type: !41, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !17)
!41 = !DISubroutineType(types: !42)
!42 = !{!43, !11, !44, !6}
!43 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!45 = !DILocalVariable(name: "stack", arg: 1, scope: !40, file: !3, line: 27, type: !11)
!46 = !DILocation(line: 27, column: 57, scope: !40)
!47 = !DILocalVariable(name: "ns", arg: 2, scope: !40, file: !3, line: 27, type: !44)
!48 = !DILocation(line: 27, column: 71, scope: !40)
!49 = !DILocalVariable(name: "ctx", arg: 3, scope: !40, file: !3, line: 27, type: !6)
!50 = !DILocation(line: 27, column: 87, scope: !40)
!51 = !DILocalVariable(name: "result", scope: !40, file: !3, line: 29, type: !43)
!52 = !DILocation(line: 29, column: 9, scope: !40)
!53 = !DILocation(line: 30, column: 24, scope: !40)
!54 = !DILocation(line: 30, column: 5, scope: !40)
!55 = !DILocation(line: 31, column: 17, scope: !40)
!56 = !DILocation(line: 31, column: 24, scope: !40)
!57 = !DILocation(line: 31, column: 29, scope: !40)
!58 = !DILocation(line: 31, column: 32, scope: !40)
!59 = !DILocation(line: 31, column: 39, scope: !40)
!60 = !DILocation(line: 31, column: 5, scope: !40)
!61 = !DILocation(line: 32, column: 12, scope: !40)
!62 = !DILocation(line: 32, column: 5, scope: !40)
!63 = distinct !DISubprogram(name: "xmlC14NPrintNamespaces", scope: !3, file: !3, line: 36, type: !64, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !17)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !44, !6}
!66 = !DILocalVariable(name: "ns", arg: 1, scope: !63, file: !3, line: 36, type: !44)
!67 = !DILocation(line: 36, column: 36, scope: !63)
!68 = !DILocalVariable(name: "ctx", arg: 2, scope: !63, file: !3, line: 36, type: !6)
!69 = !DILocation(line: 36, column: 52, scope: !63)
!70 = !DILocation(line: 38, column: 1, scope: !63)
!71 = !DILocalVariable(name: "ctx", arg: 1, scope: !2, file: !3, line: 41, type: !6)
!72 = !DILocation(line: 41, column: 34, scope: !2)
!73 = !DILocalVariable(name: "visible", scope: !2, file: !3, line: 43, type: !43)
!74 = !DILocation(line: 43, column: 9, scope: !2)
!75 = !DILocalVariable(name: "has_visibly_utilized_empty_ns", scope: !2, file: !3, line: 44, type: !43)
!76 = !DILocation(line: 44, column: 9, scope: !2)
!77 = !DILocalVariable(name: "has_empty_ns", scope: !2, file: !3, line: 45, type: !43)
!78 = !DILocation(line: 45, column: 9, scope: !2)
!79 = !DILocalVariable(name: "has_empty_ns_in_inclusive_list", scope: !2, file: !3, line: 46, type: !43)
!80 = !DILocation(line: 46, column: 9, scope: !2)
!81 = !DILocalVariable(name: "already_rendered", scope: !2, file: !3, line: 47, type: !43)
!82 = !DILocation(line: 47, column: 9, scope: !2)
!83 = !DILocation(line: 50, column: 24, scope: !2)
!84 = !DILocation(line: 50, column: 5, scope: !2)
!85 = !DILocation(line: 51, column: 24, scope: !2)
!86 = !DILocation(line: 51, column: 5, scope: !2)
!87 = !DILocation(line: 52, column: 24, scope: !2)
!88 = !DILocation(line: 52, column: 5, scope: !2)
!89 = !DILocation(line: 53, column: 24, scope: !2)
!90 = !DILocation(line: 53, column: 5, scope: !2)
!91 = !DILocation(line: 56, column: 17, scope: !2)
!92 = !DILocation(line: 56, column: 25, scope: !2)
!93 = !DILocation(line: 56, column: 5, scope: !2)
!94 = !DILocation(line: 57, column: 17, scope: !2)
!95 = !DILocation(line: 57, column: 47, scope: !2)
!96 = !DILocation(line: 57, column: 5, scope: !2)
!97 = !DILocation(line: 58, column: 17, scope: !2)
!98 = !DILocation(line: 58, column: 30, scope: !2)
!99 = !DILocation(line: 58, column: 5, scope: !2)
!100 = !DILocation(line: 59, column: 17, scope: !2)
!101 = !DILocation(line: 59, column: 48, scope: !2)
!102 = !DILocation(line: 59, column: 5, scope: !2)
!103 = !DILocation(line: 64, column: 8, scope: !104)
!104 = distinct !DILexicalBlock(scope: !2, file: !3, line: 64, column: 8)
!105 = !DILocation(line: 64, column: 16, scope: !104)
!106 = !DILocation(line: 64, column: 19, scope: !104)
!107 = !DILocation(line: 64, column: 49, scope: !104)
!108 = !DILocation(line: 65, column: 10, scope: !104)
!109 = !DILocation(line: 65, column: 23, scope: !104)
!110 = !DILocation(line: 65, column: 27, scope: !104)
!111 = !DILocation(line: 64, column: 8, scope: !2)
!112 = !DILocation(line: 73, column: 9, scope: !113)
!113 = distinct !DILexicalBlock(scope: !104, file: !3, line: 65, column: 59)
!114 = !DILocation(line: 75, column: 9, scope: !113)
!115 = !DILocation(line: 77, column: 57, scope: !113)
!116 = !DILocation(line: 77, column: 62, scope: !113)
!117 = !DILocation(line: 77, column: 88, scope: !113)
!118 = !DILocation(line: 77, column: 28, scope: !113)
!119 = !DILocation(line: 77, column: 26, scope: !113)
!120 = !DILocation(line: 78, column: 13, scope: !121)
!121 = distinct !DILexicalBlock(scope: !113, file: !3, line: 78, column: 12)
!122 = !DILocation(line: 78, column: 12, scope: !113)
!123 = !DILocation(line: 79, column: 49, scope: !124)
!124 = distinct !DILexicalBlock(scope: !121, file: !3, line: 78, column: 31)
!125 = !DILocation(line: 79, column: 13, scope: !124)
!126 = !DILocation(line: 80, column: 9, scope: !124)
!127 = !DILocation(line: 81, column: 5, scope: !113)
!128 = !DILocation(line: 82, column: 1, scope: !2)
!129 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 84, type: !130, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !17)
!130 = !DISubroutineType(types: !131)
!131 = !{!43}
!132 = !DILocalVariable(name: "ctx", scope: !129, file: !3, line: 86, type: !6)
!133 = !DILocation(line: 86, column: 17, scope: !129)
!134 = !DILocation(line: 86, column: 36, scope: !129)
!135 = !DILocation(line: 86, column: 23, scope: !129)
!136 = !DILocation(line: 87, column: 10, scope: !137)
!137 = distinct !DILexicalBlock(scope: !129, file: !3, line: 87, column: 9)
!138 = !DILocation(line: 87, column: 9, scope: !129)
!139 = !DILocation(line: 87, column: 15, scope: !137)
!140 = !DILocation(line: 90, column: 5, scope: !129)
!141 = !DILocation(line: 90, column: 10, scope: !129)
!142 = !DILocation(line: 90, column: 22, scope: !129)
!143 = !DILocation(line: 93, column: 21, scope: !129)
!144 = !DILocation(line: 93, column: 5, scope: !129)
!145 = !DILocation(line: 95, column: 10, scope: !129)
!146 = !DILocation(line: 95, column: 5, scope: !129)
!147 = !DILocation(line: 96, column: 5, scope: !129)
!148 = !DILocation(line: 97, column: 1, scope: !129)
!149 = distinct !DISubprogram(name: "memset", scope: !150, file: !150, line: 12, type: !151, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !30, retainedNodes: !17)
!150 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!151 = !DISubroutineType(types: !152)
!152 = !{!27, !27, !43, !153}
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !154, line: 46, baseType: !155)
!154 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!155 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!156 = !DILocalVariable(name: "dst", arg: 1, scope: !149, file: !150, line: 12, type: !27)
!157 = !DILocation(line: 12, column: 20, scope: !149)
!158 = !DILocalVariable(name: "s", arg: 2, scope: !149, file: !150, line: 12, type: !43)
!159 = !DILocation(line: 12, column: 29, scope: !149)
!160 = !DILocalVariable(name: "count", arg: 3, scope: !149, file: !150, line: 12, type: !153)
!161 = !DILocation(line: 12, column: 39, scope: !149)
!162 = !DILocalVariable(name: "a", scope: !149, file: !150, line: 13, type: !163)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!165 = !DILocation(line: 13, column: 9, scope: !149)
!166 = !DILocation(line: 13, column: 13, scope: !149)
!167 = !DILocation(line: 14, column: 3, scope: !149)
!168 = !DILocation(line: 14, column: 15, scope: !149)
!169 = !DILocation(line: 14, column: 18, scope: !149)
!170 = !DILocation(line: 15, column: 12, scope: !149)
!171 = !DILocation(line: 15, column: 7, scope: !149)
!172 = !DILocation(line: 15, column: 10, scope: !149)
!173 = distinct !{!173, !167, !170, !174}
!174 = !{!"llvm.loop.mustprogress"}
!175 = !DILocation(line: 16, column: 10, scope: !149)
!176 = !DILocation(line: 16, column: 3, scope: !149)

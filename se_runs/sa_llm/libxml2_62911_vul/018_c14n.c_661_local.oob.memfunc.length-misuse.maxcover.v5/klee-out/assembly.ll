; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/018_c14n.c_661_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/018_c14n.c_661_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlNs = type { i8*, i8*, i8* }
%struct._xmlC14NCtx = type { i8*, i32 }

@.str = private unnamed_addr constant [23 x i8] c"visible_ns_find_result\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_62911_vul/018_c14n.c_661_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlC14NPrintNamespaces = private unnamed_addr constant [51 x i8] c"void xmlC14NPrintNamespaces(xmlNs *, xmlC14NCtx *)\00", align 1
@xmlC14NProcessAttrsAxis.ns_default = internal global %struct._xmlNs zeroinitializer, align 8, !dbg !0
@.str.3 = private unnamed_addr constant [8 x i8] c"visible\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"has_empty_ns\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlC14NVisibleNsStackFind(i8* noundef %0, %struct._xmlNs* noundef %1) #0 !dbg !36 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._xmlNs*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !40, metadata !DIExpression()), !dbg !41
  store %struct._xmlNs* %1, %struct._xmlNs** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNs** %4, metadata !42, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.declare(metadata i32* %5, metadata !44, metadata !DIExpression()), !dbg !45
  %6 = bitcast i32* %5 to i8*, !dbg !46
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0)), !dbg !47
  %7 = load i32, i32* %5, align 4, !dbg !48
  %8 = icmp eq i32 %7, 0, !dbg !49
  br i1 %8, label %12, label %9, !dbg !50

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4, !dbg !51
  %11 = icmp eq i32 %10, 1, !dbg !52
  br label %12, !dbg !50

12:                                               ; preds = %9, %2
  %13 = phi i1 [ true, %2 ], [ %11, %9 ]
  %14 = zext i1 %13 to i32, !dbg !50
  %15 = sext i32 %14 to i64, !dbg !48
  call void @klee_assume(i64 noundef %15), !dbg !53
  %16 = load i32, i32* %5, align 4, !dbg !54
  ret i32 %16, !dbg !55
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlC14NPrintNamespaces(%struct._xmlNs* noundef %0, %struct._xmlC14NCtx* noundef %1) #0 !dbg !56 {
  %3 = alloca %struct._xmlNs*, align 8
  %4 = alloca %struct._xmlC14NCtx*, align 8
  store %struct._xmlNs* %0, %struct._xmlNs** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNs** %3, metadata !59, metadata !DIExpression()), !dbg !60
  store %struct._xmlC14NCtx* %1, %struct._xmlC14NCtx** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlC14NCtx** %4, metadata !61, metadata !DIExpression()), !dbg !62
  %5 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.2, i64 0, i64 0), i32 noundef 46, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.xmlC14NPrintNamespaces, i64 0, i64 0)), !dbg !63
  ret void, !dbg !64
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlC14NProcessAttrsAxis(%struct._xmlC14NCtx* noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !2 {
  %4 = alloca %struct._xmlC14NCtx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._xmlC14NCtx* %0, %struct._xmlC14NCtx** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlC14NCtx** %4, metadata !65, metadata !DIExpression()), !dbg !66
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !67, metadata !DIExpression()), !dbg !68
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !69, metadata !DIExpression()), !dbg !70
  %7 = load i32, i32* %5, align 4, !dbg !71
  %8 = icmp ne i32 %7, 0, !dbg !71
  br i1 %8, label %9, label %22, !dbg !73

9:                                                ; preds = %3
  %10 = load i32, i32* %6, align 4, !dbg !74
  %11 = icmp ne i32 %10, 0, !dbg !74
  br i1 %11, label %22, label %12, !dbg !75

12:                                               ; preds = %9
  %13 = call i8* @memset(i8* bitcast (%struct._xmlNs* @xmlC14NProcessAttrsAxis.ns_default to i8*), i32 0, i64 24), !dbg !76
  %14 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %4, align 8, !dbg !78
  %15 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %14, i32 0, i32 0, !dbg !80
  %16 = load i8*, i8** %15, align 8, !dbg !80
  %17 = call i32 @xmlC14NVisibleNsStackFind(i8* noundef %16, %struct._xmlNs* noundef @xmlC14NProcessAttrsAxis.ns_default), !dbg !81
  %18 = icmp ne i32 %17, 0, !dbg !81
  br i1 %18, label %21, label %19, !dbg !82

19:                                               ; preds = %12
  %20 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %4, align 8, !dbg !83
  call void @xmlC14NPrintNamespaces(%struct._xmlNs* noundef @xmlC14NProcessAttrsAxis.ns_default, %struct._xmlC14NCtx* noundef %20), !dbg !85
  br label %21, !dbg !86

21:                                               ; preds = %19, %12
  br label %22, !dbg !87

22:                                               ; preds = %21, %9, %3
  ret void, !dbg !88
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !89 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlC14NCtx, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlC14NCtx* %2, metadata !92, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.declare(metadata i32* %3, metadata !94, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.declare(metadata i32* %4, metadata !96, metadata !DIExpression()), !dbg !97
  %5 = call noalias i8* @malloc(i64 noundef 16) #7, !dbg !98
  %6 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %2, i32 0, i32 0, !dbg !99
  store i8* %5, i8** %6, align 8, !dbg !100
  %7 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %2, i32 0, i32 1, !dbg !101
  store i32 0, i32* %7, align 8, !dbg !102
  %8 = bitcast i32* %3 to i8*, !dbg !103
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)), !dbg !104
  %9 = bitcast i32* %4 to i8*, !dbg !105
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0)), !dbg !106
  %10 = load i32, i32* %3, align 4, !dbg !107
  %11 = icmp ne i32 %10, 0, !dbg !108
  %12 = zext i1 %11 to i32, !dbg !108
  %13 = sext i32 %12 to i64, !dbg !107
  call void @klee_assume(i64 noundef %13), !dbg !109
  %14 = load i32, i32* %4, align 4, !dbg !110
  %15 = icmp eq i32 %14, 0, !dbg !111
  %16 = zext i1 %15 to i32, !dbg !111
  %17 = sext i32 %16 to i64, !dbg !110
  call void @klee_assume(i64 noundef %17), !dbg !112
  %18 = load i32, i32* %3, align 4, !dbg !113
  %19 = load i32, i32* %4, align 4, !dbg !114
  call void @xmlC14NProcessAttrsAxis(%struct._xmlC14NCtx* noundef %2, i32 noundef %18, i32 noundef %19), !dbg !115
  %20 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %2, i32 0, i32 0, !dbg !116
  %21 = load i8*, i8** %20, align 8, !dbg !116
  call void @free(i8* noundef %21) #7, !dbg !117
  ret i32 0, !dbg !118
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !119 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !126, metadata !DIExpression()), !dbg !127
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !128, metadata !DIExpression()), !dbg !129
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !130, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.declare(metadata i8** %7, metadata !132, metadata !DIExpression()), !dbg !135
  %8 = load i8*, i8** %4, align 8, !dbg !136
  store i8* %8, i8** %7, align 8, !dbg !135
  br label %9, !dbg !137

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !138
  %11 = add i64 %10, -1, !dbg !138
  store i64 %11, i64* %6, align 8, !dbg !138
  %12 = icmp ugt i64 %10, 0, !dbg !139
  br i1 %12, label %13, label %18, !dbg !137

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !140
  %15 = trunc i32 %14 to i8, !dbg !140
  %16 = load i8*, i8** %7, align 8, !dbg !141
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !141
  store i8* %17, i8** %7, align 8, !dbg !141
  store i8 %15, i8* %16, align 1, !dbg !142
  br label %9, !dbg !137, !llvm.loop !143

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !145
  ret i8* %19, !dbg !146
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!14, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35, !35}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ns_default", scope: !2, file: !3, line: 53, type: !17, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "xmlC14NProcessAttrsAxis", scope: !3, file: !3, line: 50, type: !4, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !16)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/018_c14n.c_661_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "b522798a41623823f88582ac7541d241")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, !13, !13}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlC14NCtx", file: !3, line: 17, baseType: !8)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlC14NCtx", file: !3, line: 18, size: 128, elements: !9)
!9 = !{!10, !12}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "ns_rendered", scope: !8, file: !3, line: 19, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "other_fields", scope: !8, file: !3, line: 20, baseType: !13, size: 32, offset: 64)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !15, splitDebugInlining: false, nameTableKind: None)
!15 = !{!0}
!16 = !{}
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !3, line: 10, baseType: !18)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !3, line: 11, size: 192, elements: !19)
!19 = !{!20, !21, !25}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !18, file: !3, line: 12, baseType: !11, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !18, file: !3, line: 13, baseType: !22, size: 64, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!24 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !18, file: !3, line: 14, baseType: !22, size: 64, offset: 128)
!26 = distinct !DICompileUnit(language: DW_LANG_C99, file: !27, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!27 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!28 = !{i32 7, !"Dwarf Version", i32 5}
!29 = !{i32 2, !"Debug Info Version", i32 3}
!30 = !{i32 1, !"wchar_size", i32 4}
!31 = !{i32 7, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"Ubuntu clang version 14.0.6"}
!36 = distinct !DISubprogram(name: "xmlC14NVisibleNsStackFind", scope: !3, file: !3, line: 24, type: !37, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !16)
!37 = !DISubroutineType(types: !38)
!38 = !{!13, !11, !39}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!40 = !DILocalVariable(name: "ns_rendered", arg: 1, scope: !36, file: !3, line: 24, type: !11)
!41 = !DILocation(line: 24, column: 37, scope: !36)
!42 = !DILocalVariable(name: "ns", arg: 2, scope: !36, file: !3, line: 24, type: !39)
!43 = !DILocation(line: 24, column: 57, scope: !36)
!44 = !DILocalVariable(name: "result", scope: !36, file: !3, line: 26, type: !13)
!45 = !DILocation(line: 26, column: 9, scope: !36)
!46 = !DILocation(line: 27, column: 24, scope: !36)
!47 = !DILocation(line: 27, column: 5, scope: !36)
!48 = !DILocation(line: 28, column: 17, scope: !36)
!49 = !DILocation(line: 28, column: 24, scope: !36)
!50 = !DILocation(line: 28, column: 29, scope: !36)
!51 = !DILocation(line: 28, column: 32, scope: !36)
!52 = !DILocation(line: 28, column: 39, scope: !36)
!53 = !DILocation(line: 28, column: 5, scope: !36)
!54 = !DILocation(line: 29, column: 12, scope: !36)
!55 = !DILocation(line: 29, column: 5, scope: !36)
!56 = distinct !DISubprogram(name: "xmlC14NPrintNamespaces", scope: !3, file: !3, line: 32, type: !57, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !16)
!57 = !DISubroutineType(types: !58)
!58 = !{null, !39, !6}
!59 = !DILocalVariable(name: "ns", arg: 1, scope: !56, file: !3, line: 32, type: !39)
!60 = !DILocation(line: 32, column: 36, scope: !56)
!61 = !DILocalVariable(name: "ctx", arg: 2, scope: !56, file: !3, line: 32, type: !6)
!62 = !DILocation(line: 32, column: 52, scope: !56)
!63 = !DILocation(line: 46, column: 5, scope: !56)
!64 = !DILocation(line: 47, column: 1, scope: !56)
!65 = !DILocalVariable(name: "ctx", arg: 1, scope: !2, file: !3, line: 50, type: !6)
!66 = !DILocation(line: 50, column: 42, scope: !2)
!67 = !DILocalVariable(name: "visible", arg: 2, scope: !2, file: !3, line: 50, type: !13)
!68 = !DILocation(line: 50, column: 51, scope: !2)
!69 = !DILocalVariable(name: "has_empty_ns", arg: 3, scope: !2, file: !3, line: 50, type: !13)
!70 = !DILocation(line: 50, column: 64, scope: !2)
!71 = !DILocation(line: 52, column: 8, scope: !72)
!72 = distinct !DILexicalBlock(scope: !2, file: !3, line: 52, column: 8)
!73 = !DILocation(line: 52, column: 16, scope: !72)
!74 = !DILocation(line: 52, column: 20, scope: !72)
!75 = !DILocation(line: 52, column: 8, scope: !2)
!76 = !DILocation(line: 55, column: 9, scope: !77)
!77 = distinct !DILexicalBlock(scope: !72, file: !3, line: 52, column: 34)
!78 = !DILocation(line: 56, column: 39, scope: !79)
!79 = distinct !DILexicalBlock(scope: !77, file: !3, line: 56, column: 12)
!80 = !DILocation(line: 56, column: 44, scope: !79)
!81 = !DILocation(line: 56, column: 13, scope: !79)
!82 = !DILocation(line: 56, column: 12, scope: !77)
!83 = !DILocation(line: 57, column: 49, scope: !84)
!84 = distinct !DILexicalBlock(scope: !79, file: !3, line: 56, column: 71)
!85 = !DILocation(line: 57, column: 13, scope: !84)
!86 = !DILocation(line: 58, column: 9, scope: !84)
!87 = !DILocation(line: 59, column: 5, scope: !77)
!88 = !DILocation(line: 60, column: 1, scope: !2)
!89 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 62, type: !90, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !16)
!90 = !DISubroutineType(types: !91)
!91 = !{!13}
!92 = !DILocalVariable(name: "ctx", scope: !89, file: !3, line: 64, type: !7)
!93 = !DILocation(line: 64, column: 16, scope: !89)
!94 = !DILocalVariable(name: "visible", scope: !89, file: !3, line: 65, type: !13)
!95 = !DILocation(line: 65, column: 9, scope: !89)
!96 = !DILocalVariable(name: "has_empty_ns", scope: !89, file: !3, line: 65, type: !13)
!97 = !DILocation(line: 65, column: 18, scope: !89)
!98 = !DILocation(line: 68, column: 23, scope: !89)
!99 = !DILocation(line: 68, column: 9, scope: !89)
!100 = !DILocation(line: 68, column: 21, scope: !89)
!101 = !DILocation(line: 69, column: 9, scope: !89)
!102 = !DILocation(line: 69, column: 22, scope: !89)
!103 = !DILocation(line: 72, column: 24, scope: !89)
!104 = !DILocation(line: 72, column: 5, scope: !89)
!105 = !DILocation(line: 73, column: 24, scope: !89)
!106 = !DILocation(line: 73, column: 5, scope: !89)
!107 = !DILocation(line: 76, column: 17, scope: !89)
!108 = !DILocation(line: 76, column: 25, scope: !89)
!109 = !DILocation(line: 76, column: 5, scope: !89)
!110 = !DILocation(line: 77, column: 17, scope: !89)
!111 = !DILocation(line: 77, column: 30, scope: !89)
!112 = !DILocation(line: 77, column: 5, scope: !89)
!113 = !DILocation(line: 80, column: 35, scope: !89)
!114 = !DILocation(line: 80, column: 44, scope: !89)
!115 = !DILocation(line: 80, column: 5, scope: !89)
!116 = !DILocation(line: 83, column: 14, scope: !89)
!117 = !DILocation(line: 83, column: 5, scope: !89)
!118 = !DILocation(line: 85, column: 5, scope: !89)
!119 = distinct !DISubprogram(name: "memset", scope: !120, file: !120, line: 12, type: !121, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !16)
!120 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!121 = !DISubroutineType(types: !122)
!122 = !{!11, !11, !13, !123}
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !124, line: 46, baseType: !125)
!124 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!125 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!126 = !DILocalVariable(name: "dst", arg: 1, scope: !119, file: !120, line: 12, type: !11)
!127 = !DILocation(line: 12, column: 20, scope: !119)
!128 = !DILocalVariable(name: "s", arg: 2, scope: !119, file: !120, line: 12, type: !13)
!129 = !DILocation(line: 12, column: 29, scope: !119)
!130 = !DILocalVariable(name: "count", arg: 3, scope: !119, file: !120, line: 12, type: !123)
!131 = !DILocation(line: 12, column: 39, scope: !119)
!132 = !DILocalVariable(name: "a", scope: !119, file: !120, line: 13, type: !133)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!135 = !DILocation(line: 13, column: 9, scope: !119)
!136 = !DILocation(line: 13, column: 13, scope: !119)
!137 = !DILocation(line: 14, column: 3, scope: !119)
!138 = !DILocation(line: 14, column: 15, scope: !119)
!139 = !DILocation(line: 14, column: 18, scope: !119)
!140 = !DILocation(line: 15, column: 12, scope: !119)
!141 = !DILocation(line: 15, column: 7, scope: !119)
!142 = !DILocation(line: 15, column: 10, scope: !119)
!143 = distinct !{!143, !137, !140, !144}
!144 = !{!"llvm.loop.mustprogress"}
!145 = !DILocation(line: 16, column: 10, scope: !119)
!146 = !DILocation(line: 16, column: 3, scope: !119)

; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/006_c14n.c_1444_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/006_c14n.c_1444_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlC14NVisibleNsStackState = type { i32 }
%struct._xmlC14NCtx = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"checking for relative namespaces\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_55980_vul/006_c14n.c_1444_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.target_function = private unnamed_addr constant [39 x i8] c"int target_function(xmlC14NCtx *, int)\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"ns_rendered\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"parent_is_doc\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"pos\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"visible\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlC14NErrInternal(i8* noundef %0) #0 !dbg !14 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !21, metadata !DIExpression()), !dbg !22
  ret void, !dbg !23
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlC14NVisibleNsStackSave(i8* noundef %0, %struct._xmlC14NVisibleNsStackState* noundef %1) #0 !dbg !24 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._xmlC14NVisibleNsStackState*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !33, metadata !DIExpression()), !dbg !34
  store %struct._xmlC14NVisibleNsStackState* %1, %struct._xmlC14NVisibleNsStackState** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlC14NVisibleNsStackState** %4, metadata !35, metadata !DIExpression()), !dbg !36
  ret i32 0, !dbg !37
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_function(%struct._xmlC14NCtx* noundef %0, i32 noundef %1) #0 !dbg !38 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlC14NCtx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._xmlC14NVisibleNsStackState, align 4
  %7 = alloca i32, align 4
  store %struct._xmlC14NCtx* %0, %struct._xmlC14NCtx** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlC14NCtx** %4, metadata !48, metadata !DIExpression()), !dbg !49
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !50, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.declare(metadata %struct._xmlC14NVisibleNsStackState* %6, metadata !52, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.declare(metadata i32* %7, metadata !54, metadata !DIExpression()), !dbg !55
  %8 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %4, align 8, !dbg !56
  %9 = icmp eq %struct._xmlC14NCtx* %8, null, !dbg !58
  br i1 %9, label %10, label %11, !dbg !59

10:                                               ; preds = %2
  call void @xmlC14NErrInternal(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0)), !dbg !60
  store i32 -1, i32* %3, align 4, !dbg !62
  br label %36, !dbg !62

11:                                               ; preds = %2
  %12 = bitcast %struct._xmlC14NVisibleNsStackState* %6 to i8*, !dbg !63
  %13 = call i8* @memset(i8* %12, i32 0, i64 4), !dbg !63
  %14 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.2, i64 0, i64 0), i32 noundef 51, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !64
  %15 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %4, align 8, !dbg !65
  %16 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %15, i32 0, i32 0, !dbg !66
  %17 = load i8*, i8** %16, align 8, !dbg !66
  %18 = call i32 @xmlC14NVisibleNsStackSave(i8* noundef %17, %struct._xmlC14NVisibleNsStackState* noundef %6), !dbg !67
  %19 = load i32, i32* %5, align 4, !dbg !68
  %20 = icmp ne i32 %19, 0, !dbg !68
  br i1 %20, label %21, label %35, !dbg !70

21:                                               ; preds = %11
  %22 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %4, align 8, !dbg !71
  %23 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %22, i32 0, i32 1, !dbg !74
  %24 = load i32, i32* %23, align 8, !dbg !74
  %25 = icmp ne i32 %24, 0, !dbg !71
  br i1 %25, label %26, label %34, !dbg !75

26:                                               ; preds = %21
  %27 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %4, align 8, !dbg !76
  %28 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %27, i32 0, i32 1, !dbg !78
  %29 = load i32, i32* %28, align 8, !dbg !78
  store i32 %29, i32* %7, align 4, !dbg !79
  %30 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %4, align 8, !dbg !80
  %31 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %30, i32 0, i32 1, !dbg !81
  store i32 0, i32* %31, align 8, !dbg !82
  %32 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %4, align 8, !dbg !83
  %33 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %32, i32 0, i32 2, !dbg !84
  store i32 1, i32* %33, align 4, !dbg !85
  br label %34, !dbg !86

34:                                               ; preds = %26, %21
  br label %35, !dbg !87

35:                                               ; preds = %34, %11
  store i32 0, i32* %3, align 4, !dbg !88
  br label %36, !dbg !88

36:                                               ; preds = %35, %10
  %37 = load i32, i32* %3, align 4, !dbg !89
  ret i32 %37, !dbg !89
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !90 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlC14NCtx, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlC14NCtx* %2, metadata !93, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.declare(metadata i32* %3, metadata !95, metadata !DIExpression()), !dbg !96
  %4 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %2, i32 0, i32 0, !dbg !97
  %5 = bitcast i8** %4 to i8*, !dbg !98
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 8, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)), !dbg !99
  %6 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %2, i32 0, i32 1, !dbg !100
  %7 = bitcast i32* %6 to i8*, !dbg !101
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0)), !dbg !102
  %8 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %2, i32 0, i32 2, !dbg !103
  %9 = bitcast i32* %8 to i8*, !dbg !104
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)), !dbg !105
  %10 = bitcast i32* %3 to i8*, !dbg !106
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)), !dbg !107
  %11 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %2, i32 0, i32 0, !dbg !108
  %12 = load i8*, i8** %11, align 8, !dbg !108
  %13 = icmp ne i8* %12, null, !dbg !109
  %14 = zext i1 %13 to i32, !dbg !109
  %15 = sext i32 %14 to i64, !dbg !110
  call void @klee_assume(i64 noundef %15), !dbg !111
  %16 = load i32, i32* %3, align 4, !dbg !112
  %17 = icmp eq i32 %16, 0, !dbg !113
  br i1 %17, label %21, label %18, !dbg !114

18:                                               ; preds = %0
  %19 = load i32, i32* %3, align 4, !dbg !115
  %20 = icmp eq i32 %19, 1, !dbg !116
  br label %21, !dbg !114

21:                                               ; preds = %18, %0
  %22 = phi i1 [ true, %0 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32, !dbg !114
  %24 = sext i32 %23 to i64, !dbg !112
  call void @klee_assume(i64 noundef %24), !dbg !117
  %25 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %2, i32 0, i32 1, !dbg !118
  %26 = load i32, i32* %25, align 8, !dbg !118
  %27 = icmp eq i32 %26, 0, !dbg !119
  br i1 %27, label %32, label %28, !dbg !120

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %2, i32 0, i32 1, !dbg !121
  %30 = load i32, i32* %29, align 8, !dbg !121
  %31 = icmp eq i32 %30, 1, !dbg !122
  br label %32, !dbg !120

32:                                               ; preds = %28, %21
  %33 = phi i1 [ true, %21 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32, !dbg !120
  %35 = sext i32 %34 to i64, !dbg !123
  call void @klee_assume(i64 noundef %35), !dbg !124
  %36 = load i32, i32* %3, align 4, !dbg !125
  %37 = call i32 @target_function(%struct._xmlC14NCtx* noundef %2, i32 noundef %36), !dbg !126
  ret i32 0, !dbg !127
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #5 !dbg !128 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !135, metadata !DIExpression()), !dbg !136
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !137, metadata !DIExpression()), !dbg !138
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !139, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.declare(metadata i8** %7, metadata !141, metadata !DIExpression()), !dbg !143
  %8 = load i8*, i8** %4, align 8, !dbg !144
  store i8* %8, i8** %7, align 8, !dbg !143
  br label %9, !dbg !145

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !146
  %11 = add i64 %10, -1, !dbg !146
  store i64 %11, i64* %6, align 8, !dbg !146
  %12 = icmp ugt i64 %10, 0, !dbg !147
  br i1 %12, label %13, label %18, !dbg !145

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !148
  %15 = trunc i32 %14 to i8, !dbg !148
  %16 = load i8*, i8** %7, align 8, !dbg !149
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !149
  store i8* %17, i8** %7, align 8, !dbg !149
  store i8 %15, i8* %16, align 1, !dbg !150
  br label %9, !dbg !145, !llvm.loop !151

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !153
  ret i8* %19, !dbg !154
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13, !13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/006_c14n.c_1444_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "0e67e85b4d9d8f5e72d3acf7c316bd95")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = distinct !DICompileUnit(language: DW_LANG_C99, file: !5, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!5 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 7, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"Ubuntu clang version 14.0.6"}
!14 = distinct !DISubprogram(name: "xmlC14NErrInternal", scope: !1, file: !1, line: 25, type: !15, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !{}
!21 = !DILocalVariable(name: "msg", arg: 1, scope: !14, file: !1, line: 25, type: !17)
!22 = !DILocation(line: 25, column: 37, scope: !14)
!23 = !DILocation(line: 27, column: 1, scope: !14)
!24 = distinct !DISubprogram(name: "xmlC14NVisibleNsStackSave", scope: !1, file: !1, line: 29, type: !25, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!25 = !DISubroutineType(types: !26)
!26 = !{!27, !3, !28}
!27 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlC14NVisibleNsStackState", file: !1, line: 11, baseType: !30)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlC14NVisibleNsStackState", file: !1, line: 13, size: 32, elements: !31)
!31 = !{!32}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !30, file: !1, line: 14, baseType: !27, size: 32)
!33 = !DILocalVariable(name: "stack", arg: 1, scope: !24, file: !1, line: 29, type: !3)
!34 = !DILocation(line: 29, column: 37, scope: !24)
!35 = !DILocalVariable(name: "state", arg: 2, scope: !24, file: !1, line: 29, type: !28)
!36 = !DILocation(line: 29, column: 72, scope: !24)
!37 = !DILocation(line: 31, column: 5, scope: !24)
!38 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 35, type: !39, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!39 = !DISubroutineType(types: !40)
!40 = !{!27, !41, !27}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlC14NCtx", file: !1, line: 10, baseType: !43)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlC14NCtx", file: !1, line: 17, size: 128, elements: !44)
!44 = !{!45, !46, !47}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "ns_rendered", scope: !43, file: !1, line: 18, baseType: !3, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "parent_is_doc", scope: !43, file: !1, line: 19, baseType: !27, size: 32, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !43, file: !1, line: 20, baseType: !27, size: 32, offset: 96)
!48 = !DILocalVariable(name: "ctx", arg: 1, scope: !38, file: !1, line: 35, type: !41)
!49 = !DILocation(line: 35, column: 33, scope: !38)
!50 = !DILocalVariable(name: "visible", arg: 2, scope: !38, file: !1, line: 35, type: !27)
!51 = !DILocation(line: 35, column: 42, scope: !38)
!52 = !DILocalVariable(name: "state", scope: !38, file: !1, line: 36, type: !29)
!53 = !DILocation(line: 36, column: 32, scope: !38)
!54 = !DILocalVariable(name: "parent_is_doc", scope: !38, file: !1, line: 37, type: !27)
!55 = !DILocation(line: 37, column: 9, scope: !38)
!56 = !DILocation(line: 39, column: 9, scope: !57)
!57 = distinct !DILexicalBlock(scope: !38, file: !1, line: 39, column: 9)
!58 = !DILocation(line: 39, column: 13, scope: !57)
!59 = !DILocation(line: 39, column: 9, scope: !38)
!60 = !DILocation(line: 40, column: 9, scope: !61)
!61 = distinct !DILexicalBlock(scope: !57, file: !1, line: 39, column: 22)
!62 = !DILocation(line: 41, column: 9, scope: !61)
!63 = !DILocation(line: 47, column: 5, scope: !38)
!64 = !DILocation(line: 51, column: 5, scope: !38)
!65 = !DILocation(line: 53, column: 31, scope: !38)
!66 = !DILocation(line: 53, column: 36, scope: !38)
!67 = !DILocation(line: 53, column: 5, scope: !38)
!68 = !DILocation(line: 55, column: 9, scope: !69)
!69 = distinct !DILexicalBlock(scope: !38, file: !1, line: 55, column: 9)
!70 = !DILocation(line: 55, column: 9, scope: !38)
!71 = !DILocation(line: 56, column: 13, scope: !72)
!72 = distinct !DILexicalBlock(scope: !73, file: !1, line: 56, column: 13)
!73 = distinct !DILexicalBlock(scope: !69, file: !1, line: 55, column: 18)
!74 = !DILocation(line: 56, column: 18, scope: !72)
!75 = !DILocation(line: 56, column: 13, scope: !73)
!76 = !DILocation(line: 58, column: 29, scope: !77)
!77 = distinct !DILexicalBlock(scope: !72, file: !1, line: 56, column: 33)
!78 = !DILocation(line: 58, column: 34, scope: !77)
!79 = !DILocation(line: 58, column: 27, scope: !77)
!80 = !DILocation(line: 59, column: 13, scope: !77)
!81 = !DILocation(line: 59, column: 18, scope: !77)
!82 = !DILocation(line: 59, column: 32, scope: !77)
!83 = !DILocation(line: 60, column: 13, scope: !77)
!84 = !DILocation(line: 60, column: 18, scope: !77)
!85 = !DILocation(line: 60, column: 22, scope: !77)
!86 = !DILocation(line: 61, column: 9, scope: !77)
!87 = !DILocation(line: 62, column: 5, scope: !73)
!88 = !DILocation(line: 63, column: 5, scope: !38)
!89 = !DILocation(line: 64, column: 1, scope: !38)
!90 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 66, type: !91, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!91 = !DISubroutineType(types: !92)
!92 = !{!27}
!93 = !DILocalVariable(name: "ctx", scope: !90, file: !1, line: 68, type: !42)
!94 = !DILocation(line: 68, column: 16, scope: !90)
!95 = !DILocalVariable(name: "visible", scope: !90, file: !1, line: 69, type: !27)
!96 = !DILocation(line: 69, column: 9, scope: !90)
!97 = !DILocation(line: 72, column: 29, scope: !90)
!98 = !DILocation(line: 72, column: 24, scope: !90)
!99 = !DILocation(line: 72, column: 5, scope: !90)
!100 = !DILocation(line: 73, column: 29, scope: !90)
!101 = !DILocation(line: 73, column: 24, scope: !90)
!102 = !DILocation(line: 73, column: 5, scope: !90)
!103 = !DILocation(line: 74, column: 29, scope: !90)
!104 = !DILocation(line: 74, column: 24, scope: !90)
!105 = !DILocation(line: 74, column: 5, scope: !90)
!106 = !DILocation(line: 75, column: 24, scope: !90)
!107 = !DILocation(line: 75, column: 5, scope: !90)
!108 = !DILocation(line: 78, column: 21, scope: !90)
!109 = !DILocation(line: 78, column: 33, scope: !90)
!110 = !DILocation(line: 78, column: 17, scope: !90)
!111 = !DILocation(line: 78, column: 5, scope: !90)
!112 = !DILocation(line: 79, column: 17, scope: !90)
!113 = !DILocation(line: 79, column: 25, scope: !90)
!114 = !DILocation(line: 79, column: 30, scope: !90)
!115 = !DILocation(line: 79, column: 33, scope: !90)
!116 = !DILocation(line: 79, column: 41, scope: !90)
!117 = !DILocation(line: 79, column: 5, scope: !90)
!118 = !DILocation(line: 80, column: 21, scope: !90)
!119 = !DILocation(line: 80, column: 35, scope: !90)
!120 = !DILocation(line: 80, column: 40, scope: !90)
!121 = !DILocation(line: 80, column: 47, scope: !90)
!122 = !DILocation(line: 80, column: 61, scope: !90)
!123 = !DILocation(line: 80, column: 17, scope: !90)
!124 = !DILocation(line: 80, column: 5, scope: !90)
!125 = !DILocation(line: 83, column: 27, scope: !90)
!126 = !DILocation(line: 83, column: 5, scope: !90)
!127 = !DILocation(line: 85, column: 5, scope: !90)
!128 = distinct !DISubprogram(name: "memset", scope: !129, file: !129, line: 12, type: !130, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !20)
!129 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!130 = !DISubroutineType(types: !131)
!131 = !{!3, !3, !27, !132}
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !133, line: 46, baseType: !134)
!133 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!134 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!135 = !DILocalVariable(name: "dst", arg: 1, scope: !128, file: !129, line: 12, type: !3)
!136 = !DILocation(line: 12, column: 20, scope: !128)
!137 = !DILocalVariable(name: "s", arg: 2, scope: !128, file: !129, line: 12, type: !27)
!138 = !DILocation(line: 12, column: 29, scope: !128)
!139 = !DILocalVariable(name: "count", arg: 3, scope: !128, file: !129, line: 12, type: !132)
!140 = !DILocation(line: 12, column: 39, scope: !128)
!141 = !DILocalVariable(name: "a", scope: !128, file: !129, line: 13, type: !142)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!143 = !DILocation(line: 13, column: 9, scope: !128)
!144 = !DILocation(line: 13, column: 13, scope: !128)
!145 = !DILocation(line: 14, column: 3, scope: !128)
!146 = !DILocation(line: 14, column: 15, scope: !128)
!147 = !DILocation(line: 14, column: 18, scope: !128)
!148 = !DILocation(line: 15, column: 12, scope: !128)
!149 = !DILocation(line: 15, column: 7, scope: !128)
!150 = !DILocation(line: 15, column: 10, scope: !128)
!151 = distinct !{!151, !145, !148, !152}
!152 = !{!"llvm.loop.mustprogress"}
!153 = !DILocation(line: 16, column: 10, scope: !128)
!154 = !DILocation(line: 16, column: 3, scope: !128)

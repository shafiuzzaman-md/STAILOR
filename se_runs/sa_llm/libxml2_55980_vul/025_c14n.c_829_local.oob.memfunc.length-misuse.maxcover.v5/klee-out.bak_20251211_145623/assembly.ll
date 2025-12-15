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
@main.ns_default = internal global %struct._xmlNs zeroinitializer, align 8, !dbg !0
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_55980_vul/025_c14n.c_829_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlExcC14NVisibleNsStackFind(%struct._xmlC14NVisibleNsStack* noundef %0, %struct._xmlNs* noundef %1, %struct._xmlC14NCtx* noundef %2) #0 !dbg !32 {
  %4 = alloca %struct._xmlC14NVisibleNsStack*, align 8
  %5 = alloca %struct._xmlNs*, align 8
  %6 = alloca %struct._xmlC14NCtx*, align 8
  %7 = alloca i32, align 4
  store %struct._xmlC14NVisibleNsStack* %0, %struct._xmlC14NVisibleNsStack** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlC14NVisibleNsStack** %4, metadata !44, metadata !DIExpression()), !dbg !45
  store %struct._xmlNs* %1, %struct._xmlNs** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNs** %5, metadata !46, metadata !DIExpression()), !dbg !47
  store %struct._xmlC14NCtx* %2, %struct._xmlC14NCtx** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlC14NCtx** %6, metadata !48, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.declare(metadata i32* %7, metadata !50, metadata !DIExpression()), !dbg !51
  %8 = bitcast i32* %7 to i8*, !dbg !52
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0)), !dbg !53
  %9 = load i32, i32* %7, align 4, !dbg !54
  %10 = icmp eq i32 %9, 0, !dbg !55
  br i1 %10, label %14, label %11, !dbg !56

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4, !dbg !57
  %13 = icmp eq i32 %12, 1, !dbg !58
  br label %14, !dbg !56

14:                                               ; preds = %11, %3
  %15 = phi i1 [ true, %3 ], [ %13, %11 ]
  %16 = zext i1 %15 to i32, !dbg !56
  %17 = sext i32 %16 to i64, !dbg !54
  call void @klee_assume(i64 noundef %17), !dbg !59
  %18 = load i32, i32* %7, align 4, !dbg !60
  ret i32 %18, !dbg !61
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlC14NPrintNamespaces(%struct._xmlNs* noundef %0, %struct._xmlC14NCtx* noundef %1) #0 !dbg !62 {
  %3 = alloca %struct._xmlNs*, align 8
  %4 = alloca %struct._xmlC14NCtx*, align 8
  store %struct._xmlNs* %0, %struct._xmlNs** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNs** %3, metadata !65, metadata !DIExpression()), !dbg !66
  store %struct._xmlC14NCtx* %1, %struct._xmlC14NCtx** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlC14NCtx** %4, metadata !67, metadata !DIExpression()), !dbg !68
  ret void, !dbg !69
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !2 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct._xmlC14NCtx, align 8
  %8 = alloca %struct._xmlC14NCtx*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !70, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.declare(metadata i32* %3, metadata !72, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.declare(metadata i32* %4, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata i32* %5, metadata !76, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.declare(metadata i32* %6, metadata !78, metadata !DIExpression()), !dbg !79
  %9 = bitcast i32* %2 to i8*, !dbg !80
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)), !dbg !81
  %10 = bitcast i32* %3 to i8*, !dbg !82
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0)), !dbg !83
  %11 = bitcast i32* %4 to i8*, !dbg !84
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0)), !dbg !85
  %12 = bitcast i32* %5 to i8*, !dbg !86
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 4, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0)), !dbg !87
  %13 = load i32, i32* %2, align 4, !dbg !88
  %14 = icmp ne i32 %13, 0, !dbg !89
  %15 = zext i1 %14 to i32, !dbg !89
  %16 = sext i32 %15 to i64, !dbg !88
  call void @klee_assume(i64 noundef %16), !dbg !90
  %17 = load i32, i32* %3, align 4, !dbg !91
  %18 = icmp ne i32 %17, 0, !dbg !92
  %19 = zext i1 %18 to i32, !dbg !92
  %20 = sext i32 %19 to i64, !dbg !91
  call void @klee_assume(i64 noundef %20), !dbg !93
  %21 = load i32, i32* %4, align 4, !dbg !94
  %22 = icmp eq i32 %21, 0, !dbg !95
  %23 = zext i1 %22 to i32, !dbg !95
  %24 = sext i32 %23 to i64, !dbg !94
  call void @klee_assume(i64 noundef %24), !dbg !96
  %25 = load i32, i32* %5, align 4, !dbg !97
  %26 = icmp eq i32 %25, 0, !dbg !98
  %27 = zext i1 %26 to i32, !dbg !98
  %28 = sext i32 %27 to i64, !dbg !97
  call void @klee_assume(i64 noundef %28), !dbg !99
  call void @llvm.dbg.declare(metadata %struct._xmlC14NCtx* %7, metadata !100, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.declare(metadata %struct._xmlC14NCtx** %8, metadata !102, metadata !DIExpression()), !dbg !103
  store %struct._xmlC14NCtx* %7, %struct._xmlC14NCtx** %8, align 8, !dbg !103
  %29 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %8, align 8, !dbg !104
  %30 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %29, i32 0, i32 0, !dbg !105
  store %struct._xmlC14NVisibleNsStack* null, %struct._xmlC14NVisibleNsStack** %30, align 8, !dbg !106
  %31 = call i8* @memset(i8* bitcast (%struct._xmlNs* @main.ns_default to i8*), i32 0, i64 32), !dbg !107
  %32 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.6, i64 0, i64 0), i32 noundef 86, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !108
  %33 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %8, align 8, !dbg !109
  %34 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %33, i32 0, i32 0, !dbg !110
  %35 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %34, align 8, !dbg !110
  %36 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %8, align 8, !dbg !111
  %37 = call i32 @xmlExcC14NVisibleNsStackFind(%struct._xmlC14NVisibleNsStack* noundef %35, %struct._xmlNs* noundef @main.ns_default, %struct._xmlC14NCtx* noundef %36), !dbg !112
  store i32 %37, i32* %6, align 4, !dbg !113
  %38 = load i32, i32* %6, align 4, !dbg !114
  %39 = icmp ne i32 %38, 0, !dbg !114
  br i1 %39, label %42, label %40, !dbg !116

40:                                               ; preds = %0
  %41 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %8, align 8, !dbg !117
  call void @xmlC14NPrintNamespaces(%struct._xmlNs* noundef @main.ns_default, %struct._xmlC14NCtx* noundef %41), !dbg !119
  br label %42, !dbg !120

42:                                               ; preds = %40, %0
  ret i32 0, !dbg !121
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #5 !dbg !122 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !129, metadata !DIExpression()), !dbg !130
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !131, metadata !DIExpression()), !dbg !132
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !133, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.declare(metadata i8** %7, metadata !135, metadata !DIExpression()), !dbg !138
  %8 = load i8*, i8** %4, align 8, !dbg !139
  store i8* %8, i8** %7, align 8, !dbg !138
  br label %9, !dbg !140

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !141
  %11 = add i64 %10, -1, !dbg !141
  store i64 %11, i64* %6, align 8, !dbg !141
  %12 = icmp ugt i64 %10, 0, !dbg !142
  br i1 %12, label %13, label %18, !dbg !140

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !143
  %15 = trunc i32 %14 to i8, !dbg !143
  %16 = load i8*, i8** %7, align 8, !dbg !144
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !144
  store i8* %17, i8** %7, align 8, !dbg !144
  store i8 %15, i8* %16, align 1, !dbg !145
  br label %9, !dbg !140, !llvm.loop !146

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !148
  ret i8* %19, !dbg !149
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!7, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31, !31}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ns_default", scope: !2, file: !3, line: 75, type: !10, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 41, type: !4, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/025_c14n.c_829_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "7250cf1932abc246355f58b2096c5ce7")
!4 = !DISubroutineType(types: !5)
!5 = !{!6}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !8, splitDebugInlining: false, nameTableKind: None)
!8 = !{!0}
!9 = !{}
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !3, line: 10, baseType: !11)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !3, line: 14, size: 256, elements: !12)
!12 = !{!13, !17, !18, !20}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !11, file: !3, line: 15, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !11, file: !3, line: 16, baseType: !14, size: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !11, file: !3, line: 17, baseType: !19, size: 64, offset: 128)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !11, file: !3, line: 18, baseType: !21, size: 64, offset: 192)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!22 = distinct !DICompileUnit(language: DW_LANG_C99, file: !23, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!23 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!24 = !{i32 7, !"Dwarf Version", i32 5}
!25 = !{i32 2, !"Debug Info Version", i32 3}
!26 = !{i32 1, !"wchar_size", i32 4}
!27 = !{i32 7, !"PIC Level", i32 2}
!28 = !{i32 7, !"PIE Level", i32 2}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"Ubuntu clang version 14.0.6"}
!32 = distinct !DISubprogram(name: "xmlExcC14NVisibleNsStackFind", scope: !3, file: !3, line: 27, type: !33, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!33 = !DISubroutineType(types: !34)
!34 = !{!6, !35, !38, !39}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlC14NVisibleNsStack", file: !3, line: 11, baseType: !37)
!37 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlC14NVisibleNsStack", file: !3, line: 11, flags: DIFlagFwdDecl)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlC14NCtx", file: !3, line: 12, baseType: !41)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlC14NCtx", file: !3, line: 21, size: 64, elements: !42)
!42 = !{!43}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "ns_rendered", scope: !41, file: !3, line: 22, baseType: !35, size: 64)
!44 = !DILocalVariable(name: "stack", arg: 1, scope: !32, file: !3, line: 27, type: !35)
!45 = !DILocation(line: 27, column: 57, scope: !32)
!46 = !DILocalVariable(name: "ns", arg: 2, scope: !32, file: !3, line: 27, type: !38)
!47 = !DILocation(line: 27, column: 71, scope: !32)
!48 = !DILocalVariable(name: "ctx", arg: 3, scope: !32, file: !3, line: 27, type: !39)
!49 = !DILocation(line: 27, column: 87, scope: !32)
!50 = !DILocalVariable(name: "result", scope: !32, file: !3, line: 29, type: !6)
!51 = !DILocation(line: 29, column: 9, scope: !32)
!52 = !DILocation(line: 30, column: 24, scope: !32)
!53 = !DILocation(line: 30, column: 5, scope: !32)
!54 = !DILocation(line: 31, column: 17, scope: !32)
!55 = !DILocation(line: 31, column: 24, scope: !32)
!56 = !DILocation(line: 31, column: 29, scope: !32)
!57 = !DILocation(line: 31, column: 32, scope: !32)
!58 = !DILocation(line: 31, column: 39, scope: !32)
!59 = !DILocation(line: 31, column: 5, scope: !32)
!60 = !DILocation(line: 32, column: 12, scope: !32)
!61 = !DILocation(line: 32, column: 5, scope: !32)
!62 = distinct !DISubprogram(name: "xmlC14NPrintNamespaces", scope: !3, file: !3, line: 36, type: !63, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!63 = !DISubroutineType(types: !64)
!64 = !{null, !38, !39}
!65 = !DILocalVariable(name: "ns", arg: 1, scope: !62, file: !3, line: 36, type: !38)
!66 = !DILocation(line: 36, column: 36, scope: !62)
!67 = !DILocalVariable(name: "ctx", arg: 2, scope: !62, file: !3, line: 36, type: !39)
!68 = !DILocation(line: 36, column: 52, scope: !62)
!69 = !DILocation(line: 38, column: 1, scope: !62)
!70 = !DILocalVariable(name: "visible", scope: !2, file: !3, line: 43, type: !6)
!71 = !DILocation(line: 43, column: 9, scope: !2)
!72 = !DILocalVariable(name: "has_visibly_utilized_empty_ns", scope: !2, file: !3, line: 44, type: !6)
!73 = !DILocation(line: 44, column: 9, scope: !2)
!74 = !DILocalVariable(name: "has_empty_ns", scope: !2, file: !3, line: 45, type: !6)
!75 = !DILocation(line: 45, column: 9, scope: !2)
!76 = !DILocalVariable(name: "has_empty_ns_in_inclusive_list", scope: !2, file: !3, line: 46, type: !6)
!77 = !DILocation(line: 46, column: 9, scope: !2)
!78 = !DILocalVariable(name: "already_rendered", scope: !2, file: !3, line: 47, type: !6)
!79 = !DILocation(line: 47, column: 9, scope: !2)
!80 = !DILocation(line: 50, column: 24, scope: !2)
!81 = !DILocation(line: 50, column: 5, scope: !2)
!82 = !DILocation(line: 51, column: 24, scope: !2)
!83 = !DILocation(line: 51, column: 5, scope: !2)
!84 = !DILocation(line: 52, column: 24, scope: !2)
!85 = !DILocation(line: 52, column: 5, scope: !2)
!86 = !DILocation(line: 53, column: 24, scope: !2)
!87 = !DILocation(line: 53, column: 5, scope: !2)
!88 = !DILocation(line: 56, column: 17, scope: !2)
!89 = !DILocation(line: 56, column: 25, scope: !2)
!90 = !DILocation(line: 56, column: 5, scope: !2)
!91 = !DILocation(line: 57, column: 17, scope: !2)
!92 = !DILocation(line: 57, column: 47, scope: !2)
!93 = !DILocation(line: 57, column: 5, scope: !2)
!94 = !DILocation(line: 58, column: 17, scope: !2)
!95 = !DILocation(line: 58, column: 30, scope: !2)
!96 = !DILocation(line: 58, column: 5, scope: !2)
!97 = !DILocation(line: 59, column: 17, scope: !2)
!98 = !DILocation(line: 59, column: 48, scope: !2)
!99 = !DILocation(line: 59, column: 5, scope: !2)
!100 = !DILocalVariable(name: "ctx_instance", scope: !2, file: !3, line: 62, type: !40)
!101 = !DILocation(line: 62, column: 16, scope: !2)
!102 = !DILocalVariable(name: "ctx", scope: !2, file: !3, line: 63, type: !39)
!103 = !DILocation(line: 63, column: 17, scope: !2)
!104 = !DILocation(line: 64, column: 5, scope: !2)
!105 = !DILocation(line: 64, column: 10, scope: !2)
!106 = !DILocation(line: 64, column: 22, scope: !2)
!107 = !DILocation(line: 83, column: 5, scope: !2)
!108 = !DILocation(line: 86, column: 5, scope: !2)
!109 = !DILocation(line: 89, column: 53, scope: !2)
!110 = !DILocation(line: 89, column: 58, scope: !2)
!111 = !DILocation(line: 89, column: 84, scope: !2)
!112 = !DILocation(line: 89, column: 24, scope: !2)
!113 = !DILocation(line: 89, column: 22, scope: !2)
!114 = !DILocation(line: 90, column: 9, scope: !115)
!115 = distinct !DILexicalBlock(scope: !2, file: !3, line: 90, column: 8)
!116 = !DILocation(line: 90, column: 8, scope: !2)
!117 = !DILocation(line: 91, column: 45, scope: !118)
!118 = distinct !DILexicalBlock(scope: !115, file: !3, line: 90, column: 27)
!119 = !DILocation(line: 91, column: 9, scope: !118)
!120 = !DILocation(line: 92, column: 5, scope: !118)
!121 = !DILocation(line: 94, column: 5, scope: !2)
!122 = distinct !DISubprogram(name: "memset", scope: !123, file: !123, line: 12, type: !124, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !9)
!123 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!124 = !DISubroutineType(types: !125)
!125 = !{!19, !19, !6, !126}
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !127, line: 46, baseType: !128)
!127 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!128 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!129 = !DILocalVariable(name: "dst", arg: 1, scope: !122, file: !123, line: 12, type: !19)
!130 = !DILocation(line: 12, column: 20, scope: !122)
!131 = !DILocalVariable(name: "s", arg: 2, scope: !122, file: !123, line: 12, type: !6)
!132 = !DILocation(line: 12, column: 29, scope: !122)
!133 = !DILocalVariable(name: "count", arg: 3, scope: !122, file: !123, line: 12, type: !126)
!134 = !DILocation(line: 12, column: 39, scope: !122)
!135 = !DILocalVariable(name: "a", scope: !122, file: !123, line: 13, type: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!138 = !DILocation(line: 13, column: 9, scope: !122)
!139 = !DILocation(line: 13, column: 13, scope: !122)
!140 = !DILocation(line: 14, column: 3, scope: !122)
!141 = !DILocation(line: 14, column: 15, scope: !122)
!142 = !DILocation(line: 14, column: 18, scope: !122)
!143 = !DILocation(line: 15, column: 12, scope: !122)
!144 = !DILocation(line: 15, column: 7, scope: !122)
!145 = !DILocation(line: 15, column: 10, scope: !122)
!146 = distinct !{!146, !140, !143, !147}
!147 = !{!"llvm.loop.mustprogress"}
!148 = !DILocation(line: 16, column: 10, scope: !122)
!149 = !DILocation(line: 16, column: 3, scope: !122)

; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/323_xmlschemas.c_23245_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/323_xmlschemas.c_23245_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaValidationCtxt = type { i8* }
%struct._xmlSchemaPSVIIDCNode = type { [256 x i8] }
%struct._xmlSchemaIDC = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"allocating an IDC node-table item\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [82 x i8] c"(ntItem != ((void*)0) && sizeof(xmlSchemaPSVIIDCNode) > 0) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [110 x i8] c"se_runs/sa_llm/libxml2_55980_vul/323_xmlschemas.c_23245_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.target_function = private unnamed_addr constant [72 x i8] c"int target_function(xmlSchemaValidationCtxt *, xmlSchemaIDC *, void **)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"idc_type\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"keySeq\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchemaVErrMemory(i8* noundef %0, i8* noundef %1, i8* noundef %2) #0 !dbg !23 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !29, metadata !DIExpression()), !dbg !30
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !31, metadata !DIExpression()), !dbg !32
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !33, metadata !DIExpression()), !dbg !34
  ret void, !dbg !35
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !36 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !39, metadata !DIExpression()), !dbg !40
  ret void, !dbg !41
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlSchemaIDCStoreNodeTableItem(%struct._xmlSchemaValidationCtxt* noundef %0, %struct._xmlSchemaPSVIIDCNode* noundef %1) #0 !dbg !42 {
  %3 = alloca %struct._xmlSchemaValidationCtxt*, align 8
  %4 = alloca %struct._xmlSchemaPSVIIDCNode*, align 8
  store %struct._xmlSchemaValidationCtxt* %0, %struct._xmlSchemaValidationCtxt** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaValidationCtxt** %3, metadata !51, metadata !DIExpression()), !dbg !52
  store %struct._xmlSchemaPSVIIDCNode* %1, %struct._xmlSchemaPSVIIDCNode** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaPSVIIDCNode** %4, metadata !53, metadata !DIExpression()), !dbg !54
  ret i32 0, !dbg !55
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_function(%struct._xmlSchemaValidationCtxt* noundef %0, %struct._xmlSchemaIDC* noundef %1, i8** noundef %2) #0 !dbg !56 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._xmlSchemaValidationCtxt*, align 8
  %6 = alloca %struct._xmlSchemaIDC*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct._xmlSchemaPSVIIDCNode*, align 8
  store %struct._xmlSchemaValidationCtxt* %0, %struct._xmlSchemaValidationCtxt** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaValidationCtxt** %5, metadata !65, metadata !DIExpression()), !dbg !66
  store %struct._xmlSchemaIDC* %1, %struct._xmlSchemaIDC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaIDC** %6, metadata !67, metadata !DIExpression()), !dbg !68
  store i8** %2, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !69, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaPSVIIDCNode** %8, metadata !71, metadata !DIExpression()), !dbg !72
  %9 = call noalias i8* @malloc(i64 noundef 256) #7, !dbg !73
  %10 = bitcast i8* %9 to %struct._xmlSchemaPSVIIDCNode*, !dbg !74
  store %struct._xmlSchemaPSVIIDCNode* %10, %struct._xmlSchemaPSVIIDCNode** %8, align 8, !dbg !75
  %11 = load %struct._xmlSchemaPSVIIDCNode*, %struct._xmlSchemaPSVIIDCNode** %8, align 8, !dbg !76
  %12 = icmp eq %struct._xmlSchemaPSVIIDCNode* %11, null, !dbg !78
  br i1 %12, label %13, label %17, !dbg !79

13:                                               ; preds = %3
  call void @xmlSchemaVErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* noundef null), !dbg !80
  %14 = load i8**, i8*** %7, align 8, !dbg !82
  %15 = load i8*, i8** %14, align 8, !dbg !83
  call void @xmlFree(i8* noundef %15), !dbg !84
  %16 = load i8**, i8*** %7, align 8, !dbg !85
  store i8* null, i8** %16, align 8, !dbg !86
  store i32 -1, i32* %4, align 4, !dbg !87
  br label %47, !dbg !87

17:                                               ; preds = %3
  %18 = load %struct._xmlSchemaPSVIIDCNode*, %struct._xmlSchemaPSVIIDCNode** %8, align 8, !dbg !88
  %19 = icmp ne %struct._xmlSchemaPSVIIDCNode* %18, null, !dbg !88
  br i1 %19, label %20, label %22, !dbg !88

20:                                               ; preds = %17
  br i1 true, label %21, label %22, !dbg !88

21:                                               ; preds = %20
  br label %24, !dbg !88

22:                                               ; preds = %20, %17
  %23 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([110 x i8], [110 x i8]* @.str.3, i64 0, i64 0), i32 noundef 50, i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !88
  br label %24, !dbg !88

24:                                               ; preds = %22, %21
  %25 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([110 x i8], [110 x i8]* @.str.3, i64 0, i64 0), i32 noundef 53, i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !89
  %26 = load %struct._xmlSchemaPSVIIDCNode*, %struct._xmlSchemaPSVIIDCNode** %8, align 8, !dbg !90
  %27 = bitcast %struct._xmlSchemaPSVIIDCNode* %26 to i8*, !dbg !91
  %28 = call i8* @memset(i8* %27, i32 0, i64 256), !dbg !91
  %29 = load %struct._xmlSchemaIDC*, %struct._xmlSchemaIDC** %6, align 8, !dbg !92
  %30 = getelementptr inbounds %struct._xmlSchemaIDC, %struct._xmlSchemaIDC* %29, i32 0, i32 0, !dbg !94
  %31 = load i32, i32* %30, align 4, !dbg !94
  %32 = icmp ne i32 %31, 3, !dbg !95
  br i1 %32, label %33, label %44, !dbg !96

33:                                               ; preds = %24
  %34 = load %struct._xmlSchemaValidationCtxt*, %struct._xmlSchemaValidationCtxt** %5, align 8, !dbg !97
  %35 = load %struct._xmlSchemaPSVIIDCNode*, %struct._xmlSchemaPSVIIDCNode** %8, align 8, !dbg !100
  %36 = call i32 @xmlSchemaIDCStoreNodeTableItem(%struct._xmlSchemaValidationCtxt* noundef %34, %struct._xmlSchemaPSVIIDCNode* noundef %35), !dbg !101
  %37 = icmp eq i32 %36, -1, !dbg !102
  br i1 %37, label %38, label %43, !dbg !103

38:                                               ; preds = %33
  %39 = load %struct._xmlSchemaPSVIIDCNode*, %struct._xmlSchemaPSVIIDCNode** %8, align 8, !dbg !104
  %40 = bitcast %struct._xmlSchemaPSVIIDCNode* %39 to i8*, !dbg !104
  call void @xmlFree(i8* noundef %40), !dbg !106
  %41 = load i8**, i8*** %7, align 8, !dbg !107
  %42 = load i8*, i8** %41, align 8, !dbg !108
  call void @xmlFree(i8* noundef %42), !dbg !109
  store i32 -1, i32* %4, align 4, !dbg !110
  br label %47, !dbg !110

43:                                               ; preds = %33
  br label %44, !dbg !111

44:                                               ; preds = %43, %24
  %45 = load %struct._xmlSchemaPSVIIDCNode*, %struct._xmlSchemaPSVIIDCNode** %8, align 8, !dbg !112
  %46 = bitcast %struct._xmlSchemaPSVIIDCNode* %45 to i8*, !dbg !112
  call void @free(i8* noundef %46) #7, !dbg !113
  store i32 0, i32* %4, align 4, !dbg !114
  br label %47, !dbg !114

47:                                               ; preds = %44, %38, %13
  %48 = load i32, i32* %4, align 4, !dbg !115
  ret i32 %48, !dbg !115
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !116 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlSchemaValidationCtxt, align 8
  %3 = alloca %struct._xmlSchemaIDC, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaValidationCtxt* %2, metadata !119, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaIDC* %3, metadata !121, metadata !DIExpression()), !dbg !122
  call void @llvm.dbg.declare(metadata i8** %4, metadata !123, metadata !DIExpression()), !dbg !124
  %6 = getelementptr inbounds %struct._xmlSchemaIDC, %struct._xmlSchemaIDC* %3, i32 0, i32 0, !dbg !125
  %7 = bitcast i32* %6 to i8*, !dbg !126
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)), !dbg !127
  %8 = getelementptr inbounds %struct._xmlSchemaIDC, %struct._xmlSchemaIDC* %3, i32 0, i32 0, !dbg !128
  %9 = load i32, i32* %8, align 4, !dbg !128
  %10 = icmp sge i32 %9, 0, !dbg !129
  br i1 %10, label %11, label %15, !dbg !130

11:                                               ; preds = %0
  %12 = getelementptr inbounds %struct._xmlSchemaIDC, %struct._xmlSchemaIDC* %3, i32 0, i32 0, !dbg !131
  %13 = load i32, i32* %12, align 4, !dbg !131
  %14 = icmp sle i32 %13, 10, !dbg !132
  br label %15

15:                                               ; preds = %11, %0
  %16 = phi i1 [ false, %0 ], [ %14, %11 ], !dbg !133
  %17 = zext i1 %16 to i32, !dbg !130
  %18 = sext i32 %17 to i64, !dbg !134
  call void @klee_assume(i64 noundef %18), !dbg !135
  %19 = bitcast i8** %4 to i8*, !dbg !136
  call void @klee_make_symbolic(i8* noundef %19, i64 noundef 8, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)), !dbg !137
  call void @llvm.dbg.declare(metadata i32* %5, metadata !138, metadata !DIExpression()), !dbg !139
  %20 = call i32 @target_function(%struct._xmlSchemaValidationCtxt* noundef %2, %struct._xmlSchemaIDC* noundef %3, i8** noundef %4), !dbg !140
  store i32 %20, i32* %5, align 4, !dbg !139
  %21 = load i32, i32* %5, align 4, !dbg !141
  ret i32 %21, !dbg !142
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !143 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !150, metadata !DIExpression()), !dbg !151
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !152, metadata !DIExpression()), !dbg !153
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !154, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.declare(metadata i8** %7, metadata !156, metadata !DIExpression()), !dbg !158
  %8 = load i8*, i8** %4, align 8, !dbg !159
  store i8* %8, i8** %7, align 8, !dbg !158
  br label %9, !dbg !160

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !161
  %11 = add i64 %10, -1, !dbg !161
  store i64 %11, i64* %6, align 8, !dbg !161
  %12 = icmp ugt i64 %10, 0, !dbg !162
  br i1 %12, label %13, label %18, !dbg !160

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !163
  %15 = trunc i32 %14 to i8, !dbg !163
  %16 = load i8*, i8** %7, align 8, !dbg !164
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !164
  store i8* %17, i8** %7, align 8, !dbg !164
  store i8 %15, i8* %16, align 1, !dbg !165
  br label %9, !dbg !160, !llvm.loop !166

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !168
  ret i8* %19, !dbg !169
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22, !22}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/323_xmlschemas.c_23245_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "6c207c92296c7fac2d747b7d2b9b1cc3")
!2 = !{!3, !12}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaPSVIIDCNode", file: !1, line: 12, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaPSVIIDCNode", file: !1, line: 26, size: 2048, elements: !6)
!6 = !{!7}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5, file: !1, line: 27, baseType: !8, size: 2048)
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 2048, elements: !10)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!10 = !{!11}
!11 = !DISubrange(count: 256)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = distinct !DICompileUnit(language: DW_LANG_C99, file: !14, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!14 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!15 = !{i32 7, !"Dwarf Version", i32 5}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{i32 7, !"PIC Level", i32 2}
!19 = !{i32 7, !"PIE Level", i32 2}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"Ubuntu clang version 14.0.6"}
!23 = distinct !DISubprogram(name: "xmlSchemaVErrMemory", scope: !1, file: !1, line: 31, type: !24, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!24 = !DISubroutineType(types: !25)
!25 = !{null, !12, !26, !12}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!28 = !{}
!29 = !DILocalVariable(name: "a", arg: 1, scope: !23, file: !1, line: 31, type: !12)
!30 = !DILocation(line: 31, column: 32, scope: !23)
!31 = !DILocalVariable(name: "b", arg: 2, scope: !23, file: !1, line: 31, type: !26)
!32 = !DILocation(line: 31, column: 47, scope: !23)
!33 = !DILocalVariable(name: "c", arg: 3, scope: !23, file: !1, line: 31, type: !12)
!34 = !DILocation(line: 31, column: 56, scope: !23)
!35 = !DILocation(line: 31, column: 60, scope: !23)
!36 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 32, type: !37, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !12}
!39 = !DILocalVariable(name: "ptr", arg: 1, scope: !36, file: !1, line: 32, type: !12)
!40 = !DILocation(line: 32, column: 20, scope: !36)
!41 = !DILocation(line: 32, column: 26, scope: !36)
!42 = distinct !DISubprogram(name: "xmlSchemaIDCStoreNodeTableItem", scope: !1, file: !1, line: 33, type: !43, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!43 = !DISubroutineType(types: !44)
!44 = !{!45, !46, !3}
!45 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaValidationCtxt", file: !1, line: 11, baseType: !48)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaValidationCtxt", file: !1, line: 22, size: 64, elements: !49)
!49 = !{!50}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !48, file: !1, line: 23, baseType: !12, size: 64)
!51 = !DILocalVariable(name: "vctxt", arg: 1, scope: !42, file: !1, line: 33, type: !46)
!52 = !DILocation(line: 33, column: 61, scope: !42)
!53 = !DILocalVariable(name: "ntItem", arg: 2, scope: !42, file: !1, line: 33, type: !3)
!54 = !DILocation(line: 33, column: 90, scope: !42)
!55 = !DILocation(line: 33, column: 100, scope: !42)
!56 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 36, type: !57, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!57 = !DISubroutineType(types: !58)
!58 = !{!45, !46, !59, !64}
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaIDC", file: !1, line: 10, baseType: !61)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaIDC", file: !1, line: 18, size: 32, elements: !62)
!62 = !{!63}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !61, file: !1, line: 19, baseType: !45, size: 32)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!65 = !DILocalVariable(name: "vctxt", arg: 1, scope: !56, file: !1, line: 36, type: !46)
!66 = !DILocation(line: 36, column: 46, scope: !56)
!67 = !DILocalVariable(name: "idc", arg: 2, scope: !56, file: !1, line: 36, type: !59)
!68 = !DILocation(line: 36, column: 67, scope: !56)
!69 = !DILocalVariable(name: "keySeq", arg: 3, scope: !56, file: !1, line: 36, type: !64)
!70 = !DILocation(line: 36, column: 79, scope: !56)
!71 = !DILocalVariable(name: "ntItem", scope: !56, file: !1, line: 37, type: !3)
!72 = !DILocation(line: 37, column: 27, scope: !56)
!73 = !DILocation(line: 40, column: 38, scope: !56)
!74 = !DILocation(line: 40, column: 14, scope: !56)
!75 = !DILocation(line: 40, column: 12, scope: !56)
!76 = !DILocation(line: 41, column: 9, scope: !77)
!77 = distinct !DILexicalBlock(scope: !56, file: !1, line: 41, column: 9)
!78 = !DILocation(line: 41, column: 16, scope: !77)
!79 = !DILocation(line: 41, column: 9, scope: !56)
!80 = !DILocation(line: 42, column: 9, scope: !81)
!81 = distinct !DILexicalBlock(scope: !77, file: !1, line: 41, column: 25)
!82 = !DILocation(line: 43, column: 18, scope: !81)
!83 = !DILocation(line: 43, column: 17, scope: !81)
!84 = !DILocation(line: 43, column: 9, scope: !81)
!85 = !DILocation(line: 44, column: 10, scope: !81)
!86 = !DILocation(line: 44, column: 17, scope: !81)
!87 = !DILocation(line: 45, column: 9, scope: !81)
!88 = !DILocation(line: 50, column: 5, scope: !56)
!89 = !DILocation(line: 53, column: 5, scope: !56)
!90 = !DILocation(line: 55, column: 12, scope: !56)
!91 = !DILocation(line: 55, column: 5, scope: !56)
!92 = !DILocation(line: 57, column: 9, scope: !93)
!93 = distinct !DILexicalBlock(scope: !56, file: !1, line: 57, column: 9)
!94 = !DILocation(line: 57, column: 14, scope: !93)
!95 = !DILocation(line: 57, column: 19, scope: !93)
!96 = !DILocation(line: 57, column: 9, scope: !56)
!97 = !DILocation(line: 58, column: 44, scope: !98)
!98 = distinct !DILexicalBlock(scope: !99, file: !1, line: 58, column: 13)
!99 = distinct !DILexicalBlock(scope: !93, file: !1, line: 57, column: 50)
!100 = !DILocation(line: 58, column: 51, scope: !98)
!101 = !DILocation(line: 58, column: 13, scope: !98)
!102 = !DILocation(line: 58, column: 59, scope: !98)
!103 = !DILocation(line: 58, column: 13, scope: !99)
!104 = !DILocation(line: 59, column: 21, scope: !105)
!105 = distinct !DILexicalBlock(scope: !98, file: !1, line: 58, column: 66)
!106 = !DILocation(line: 59, column: 13, scope: !105)
!107 = !DILocation(line: 60, column: 22, scope: !105)
!108 = !DILocation(line: 60, column: 21, scope: !105)
!109 = !DILocation(line: 60, column: 13, scope: !105)
!110 = !DILocation(line: 61, column: 13, scope: !105)
!111 = !DILocation(line: 63, column: 5, scope: !99)
!112 = !DILocation(line: 65, column: 10, scope: !56)
!113 = !DILocation(line: 65, column: 5, scope: !56)
!114 = !DILocation(line: 66, column: 5, scope: !56)
!115 = !DILocation(line: 67, column: 1, scope: !56)
!116 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 69, type: !117, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!117 = !DISubroutineType(types: !118)
!118 = !{!45}
!119 = !DILocalVariable(name: "vctxt", scope: !116, file: !1, line: 71, type: !47)
!120 = !DILocation(line: 71, column: 29, scope: !116)
!121 = !DILocalVariable(name: "idc", scope: !116, file: !1, line: 72, type: !60)
!122 = !DILocation(line: 72, column: 18, scope: !116)
!123 = !DILocalVariable(name: "keySeq", scope: !116, file: !1, line: 73, type: !12)
!124 = !DILocation(line: 73, column: 11, scope: !116)
!125 = !DILocation(line: 76, column: 29, scope: !116)
!126 = !DILocation(line: 76, column: 24, scope: !116)
!127 = !DILocation(line: 76, column: 5, scope: !116)
!128 = !DILocation(line: 77, column: 21, scope: !116)
!129 = !DILocation(line: 77, column: 26, scope: !116)
!130 = !DILocation(line: 77, column: 31, scope: !116)
!131 = !DILocation(line: 77, column: 38, scope: !116)
!132 = !DILocation(line: 77, column: 43, scope: !116)
!133 = !DILocation(line: 0, scope: !116)
!134 = !DILocation(line: 77, column: 17, scope: !116)
!135 = !DILocation(line: 77, column: 5, scope: !116)
!136 = !DILocation(line: 80, column: 24, scope: !116)
!137 = !DILocation(line: 80, column: 5, scope: !116)
!138 = !DILocalVariable(name: "result", scope: !116, file: !1, line: 83, type: !45)
!139 = !DILocation(line: 83, column: 9, scope: !116)
!140 = !DILocation(line: 83, column: 18, scope: !116)
!141 = !DILocation(line: 85, column: 12, scope: !116)
!142 = !DILocation(line: 85, column: 5, scope: !116)
!143 = distinct !DISubprogram(name: "memset", scope: !144, file: !144, line: 12, type: !145, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !28)
!144 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!145 = !DISubroutineType(types: !146)
!146 = !{!12, !12, !45, !147}
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !148, line: 46, baseType: !149)
!148 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!149 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!150 = !DILocalVariable(name: "dst", arg: 1, scope: !143, file: !144, line: 12, type: !12)
!151 = !DILocation(line: 12, column: 20, scope: !143)
!152 = !DILocalVariable(name: "s", arg: 2, scope: !143, file: !144, line: 12, type: !45)
!153 = !DILocation(line: 12, column: 29, scope: !143)
!154 = !DILocalVariable(name: "count", arg: 3, scope: !143, file: !144, line: 12, type: !147)
!155 = !DILocation(line: 12, column: 39, scope: !143)
!156 = !DILocalVariable(name: "a", scope: !143, file: !144, line: 13, type: !157)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!158 = !DILocation(line: 13, column: 9, scope: !143)
!159 = !DILocation(line: 13, column: 13, scope: !143)
!160 = !DILocation(line: 14, column: 3, scope: !143)
!161 = !DILocation(line: 14, column: 15, scope: !143)
!162 = !DILocation(line: 14, column: 18, scope: !143)
!163 = !DILocation(line: 15, column: 12, scope: !143)
!164 = !DILocation(line: 15, column: 7, scope: !143)
!165 = !DILocation(line: 15, column: 10, scope: !143)
!166 = distinct !{!166, !160, !163, !167}
!167 = !{!"llvm.loop.mustprogress"}
!168 = !DILocation(line: 16, column: 10, scope: !143)
!169 = !DILocation(line: 16, column: 3, scope: !143)

; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/374_xmlschemas.c_8213_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/374_xmlschemas.c_8213_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaParserCtxt = type { i32 }
%struct._xmlSchemaIDCSelect = type { [256 x i8] }
%struct._xmlNode = type { i32, i8*, %struct._xmlNode* }

@.str = private unnamed_addr constant [61 x i8] c"allocating a 'selector' of an identity-constraint definition\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [80 x i8] c"(sizeof(xmlSchemaIDCSelect) <= malloc_usable_size(item)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [109 x i8] c"se_runs/sa_llm/libxml2_62911_vul/374_xmlschemas.c_8213_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlSchemaNewIDCSelect = private unnamed_addr constant [76 x i8] c"xmlSchemaIDCSelect *xmlSchemaNewIDCSelect(xmlSchemaParserCtxt *, xmlNode *)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"prop_node\00", align 1
@xmlSchemaFormatQName.buffer = internal global [256 x i8] zeroinitializer, align 16, !dbg !0
@.str.6 = private unnamed_addr constant [16 x i8] c"formatted_qname\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"parser_context\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"xml_node\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchemaPErrMemory(%struct._xmlSchemaParserCtxt* noundef %0, i8* noundef %1, i8* noundef %2) #0 !dbg !47 {
  %4 = alloca %struct._xmlSchemaParserCtxt*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._xmlSchemaParserCtxt* %0, %struct._xmlSchemaParserCtxt** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaParserCtxt** %4, metadata !50, metadata !DIExpression()), !dbg !51
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !52, metadata !DIExpression()), !dbg !53
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !54, metadata !DIExpression()), !dbg !55
  ret void, !dbg !56
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlSchemaIDCSelect* @xmlSchemaNewIDCSelect(%struct._xmlSchemaParserCtxt* noundef %0, %struct._xmlNode* noundef %1) #0 !dbg !57 {
  %3 = alloca %struct._xmlSchemaIDCSelect*, align 8
  %4 = alloca %struct._xmlSchemaParserCtxt*, align 8
  %5 = alloca %struct._xmlNode*, align 8
  %6 = alloca %struct._xmlSchemaIDCSelect*, align 8
  store %struct._xmlSchemaParserCtxt* %0, %struct._xmlSchemaParserCtxt** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaParserCtxt** %4, metadata !60, metadata !DIExpression()), !dbg !61
  store %struct._xmlNode* %1, %struct._xmlNode** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %5, metadata !62, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaIDCSelect** %6, metadata !64, metadata !DIExpression()), !dbg !65
  %7 = call noalias i8* @malloc(i64 noundef 256) #7, !dbg !66
  %8 = bitcast i8* %7 to %struct._xmlSchemaIDCSelect*, !dbg !67
  store %struct._xmlSchemaIDCSelect* %8, %struct._xmlSchemaIDCSelect** %6, align 8, !dbg !65
  %9 = load %struct._xmlSchemaIDCSelect*, %struct._xmlSchemaIDCSelect** %6, align 8, !dbg !68
  %10 = icmp eq %struct._xmlSchemaIDCSelect* %9, null, !dbg !70
  br i1 %10, label %11, label %13, !dbg !71

11:                                               ; preds = %2
  %12 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %4, align 8, !dbg !72
  call void @xmlSchemaPErrMemory(%struct._xmlSchemaParserCtxt* noundef %12, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i8* noundef null), !dbg !74
  store %struct._xmlSchemaIDCSelect* null, %struct._xmlSchemaIDCSelect** %3, align 8, !dbg !75
  br label %28, !dbg !75

13:                                               ; preds = %2
  %14 = load %struct._xmlSchemaIDCSelect*, %struct._xmlSchemaIDCSelect** %6, align 8, !dbg !76
  %15 = call i32 (%struct._xmlSchemaIDCSelect*, ...) bitcast (i32 (...)* @malloc_usable_size to i32 (%struct._xmlSchemaIDCSelect*, ...)*)(%struct._xmlSchemaIDCSelect* noundef %14), !dbg !76
  %16 = sext i32 %15 to i64, !dbg !76
  %17 = icmp ule i64 256, %16, !dbg !76
  br i1 %17, label %18, label %20, !dbg !76

18:                                               ; preds = %13
  br i1 true, label %19, label %20, !dbg !76

19:                                               ; preds = %18
  br label %22, !dbg !76

20:                                               ; preds = %18, %13
  %21 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.3, i64 0, i64 0), i32 noundef 49, i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.xmlSchemaNewIDCSelect, i64 0, i64 0)), !dbg !76
  br label %22, !dbg !76

22:                                               ; preds = %20, %19
  %23 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.3, i64 0, i64 0), i32 noundef 52, i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.xmlSchemaNewIDCSelect, i64 0, i64 0)), !dbg !77
  %24 = load %struct._xmlSchemaIDCSelect*, %struct._xmlSchemaIDCSelect** %6, align 8, !dbg !78
  %25 = bitcast %struct._xmlSchemaIDCSelect* %24 to i8*, !dbg !79
  %26 = call i8* @memset(i8* %25, i32 0, i64 256), !dbg !79
  %27 = load %struct._xmlSchemaIDCSelect*, %struct._xmlSchemaIDCSelect** %6, align 8, !dbg !80
  store %struct._xmlSchemaIDCSelect* %27, %struct._xmlSchemaIDCSelect** %3, align 8, !dbg !81
  br label %28, !dbg !81

28:                                               ; preds = %22, %11
  %29 = load %struct._xmlSchemaIDCSelect*, %struct._xmlSchemaIDCSelect** %3, align 8, !dbg !82
  ret %struct._xmlSchemaIDCSelect* %29, !dbg !82
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare i32 @malloc_usable_size(...) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlNode* @xmlSchemaGetPropNode(%struct._xmlNode* noundef %0, i8* noundef %1) #0 !dbg !83 {
  %3 = alloca %struct._xmlNode*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._xmlNode*, align 8
  store %struct._xmlNode* %0, %struct._xmlNode** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %3, metadata !86, metadata !DIExpression()), !dbg !87
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !88, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %5, metadata !90, metadata !DIExpression()), !dbg !91
  %6 = bitcast %struct._xmlNode** %5 to i8*, !dbg !92
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 8, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)), !dbg !93
  %7 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !94
  %8 = icmp eq %struct._xmlNode* %7, null, !dbg !95
  br i1 %8, label %12, label %9, !dbg !96

9:                                                ; preds = %2
  %10 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !97
  %11 = icmp ne %struct._xmlNode* %10, null, !dbg !98
  br label %12, !dbg !96

12:                                               ; preds = %9, %2
  %13 = phi i1 [ true, %2 ], [ %11, %9 ]
  %14 = zext i1 %13 to i32, !dbg !96
  %15 = sext i32 %14 to i64, !dbg !94
  call void @klee_assume(i64 noundef %15), !dbg !99
  %16 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !100
  ret %struct._xmlNode* %16, !dbg !101
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlSchemaFormatQName(i8* noundef %0, i8* noundef %1) #0 !dbg !2 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !102, metadata !DIExpression()), !dbg !103
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !104, metadata !DIExpression()), !dbg !105
  call void @klee_make_symbolic(i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @xmlSchemaFormatQName.buffer, i64 0, i64 0), i64 noundef 256, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0)), !dbg !106
  ret i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xmlSchemaFormatQName.buffer, i64 0, i64 0), !dbg !107
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !108 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlSchemaParserCtxt*, align 8
  %3 = alloca %struct._xmlNode*, align 8
  %4 = alloca %struct._xmlSchemaIDCSelect*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaParserCtxt** %2, metadata !111, metadata !DIExpression()), !dbg !112
  %5 = call noalias i8* @malloc(i64 noundef 4) #7, !dbg !113
  %6 = bitcast i8* %5 to %struct._xmlSchemaParserCtxt*, !dbg !114
  store %struct._xmlSchemaParserCtxt* %6, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !112
  %7 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !115
  %8 = bitcast %struct._xmlSchemaParserCtxt* %7 to i8*, !dbg !115
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0)), !dbg !116
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %3, metadata !117, metadata !DIExpression()), !dbg !118
  %9 = call noalias i8* @malloc(i64 noundef 24) #7, !dbg !119
  %10 = bitcast i8* %9 to %struct._xmlNode*, !dbg !120
  store %struct._xmlNode* %10, %struct._xmlNode** %3, align 8, !dbg !118
  %11 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !121
  %12 = bitcast %struct._xmlNode* %11 to i8*, !dbg !121
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 24, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)), !dbg !122
  %13 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !123
  %14 = icmp ne %struct._xmlNode* %13, null, !dbg !124
  %15 = zext i1 %14 to i32, !dbg !124
  %16 = sext i32 %15 to i64, !dbg !123
  call void @klee_assume(i64 noundef %16), !dbg !125
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaIDCSelect** %4, metadata !126, metadata !DIExpression()), !dbg !127
  %17 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !128
  %18 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !129
  %19 = call %struct._xmlSchemaIDCSelect* @xmlSchemaNewIDCSelect(%struct._xmlSchemaParserCtxt* noundef %17, %struct._xmlNode* noundef %18), !dbg !130
  store %struct._xmlSchemaIDCSelect* %19, %struct._xmlSchemaIDCSelect** %4, align 8, !dbg !127
  %20 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !131
  %21 = bitcast %struct._xmlSchemaParserCtxt* %20 to i8*, !dbg !131
  call void @free(i8* noundef %21) #7, !dbg !132
  %22 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !133
  %23 = bitcast %struct._xmlNode* %22 to i8*, !dbg !133
  call void @free(i8* noundef %23) #7, !dbg !134
  %24 = load %struct._xmlSchemaIDCSelect*, %struct._xmlSchemaIDCSelect** %4, align 8, !dbg !135
  %25 = icmp ne %struct._xmlSchemaIDCSelect* %24, null, !dbg !137
  br i1 %25, label %26, label %29, !dbg !138

26:                                               ; preds = %0
  %27 = load %struct._xmlSchemaIDCSelect*, %struct._xmlSchemaIDCSelect** %4, align 8, !dbg !139
  %28 = bitcast %struct._xmlSchemaIDCSelect* %27 to i8*, !dbg !139
  call void @free(i8* noundef %28) #7, !dbg !141
  br label %29, !dbg !142

29:                                               ; preds = %26, %0
  ret i32 0, !dbg !143
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !144 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !151, metadata !DIExpression()), !dbg !152
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !153, metadata !DIExpression()), !dbg !154
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !155, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.declare(metadata i8** %7, metadata !157, metadata !DIExpression()), !dbg !158
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
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!10, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46, !46}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "buffer", scope: !2, file: !3, line: 71, type: !17, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "xmlSchemaFormatQName", scope: !3, file: !3, line: 69, type: !4, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !36)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/374_xmlschemas.c_8213_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "51c8be1a7db3bb690dacc5fd6d5c22bf")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !8, !8}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !11, globals: !35, splitDebugInlining: false, nameTableKind: None)
!11 = !{!12, !20, !21, !27}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaIDCSelect", file: !3, line: 11, baseType: !14)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaIDCSelect", file: !3, line: 19, size: 2048, elements: !15)
!15 = !{!16}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !14, file: !3, line: 20, baseType: !17, size: 2048)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !18)
!18 = !{!19}
!19 = !DISubrange(count: 256)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaParserCtxt", file: !3, line: 10, baseType: !23)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaParserCtxt", file: !3, line: 15, size: 32, elements: !24)
!24 = !{!25}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !23, file: !3, line: 16, baseType: !26, size: 32)
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !3, line: 12, baseType: !29)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !3, line: 23, size: 192, elements: !30)
!30 = !{!31, !32, !33}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !29, file: !3, line: 24, baseType: !26, size: 32)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !29, file: !3, line: 25, baseType: !6, size: 64, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !29, file: !3, line: 26, baseType: !34, size: 64, offset: 128)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!35 = !{!0}
!36 = !{}
!37 = distinct !DICompileUnit(language: DW_LANG_C99, file: !38, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!38 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!39 = !{i32 7, !"Dwarf Version", i32 5}
!40 = !{i32 2, !"Debug Info Version", i32 3}
!41 = !{i32 1, !"wchar_size", i32 4}
!42 = !{i32 7, !"PIC Level", i32 2}
!43 = !{i32 7, !"PIE Level", i32 2}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"Ubuntu clang version 14.0.6"}
!47 = distinct !DISubprogram(name: "xmlSchemaPErrMemory", scope: !3, file: !3, line: 30, type: !48, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !36)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !21, !8, !8}
!50 = !DILocalVariable(name: "ctxt", arg: 1, scope: !47, file: !3, line: 30, type: !21)
!51 = !DILocation(line: 30, column: 47, scope: !47)
!52 = !DILocalVariable(name: "msg", arg: 2, scope: !47, file: !3, line: 30, type: !8)
!53 = !DILocation(line: 30, column: 65, scope: !47)
!54 = !DILocalVariable(name: "extra", arg: 3, scope: !47, file: !3, line: 30, type: !8)
!55 = !DILocation(line: 30, column: 82, scope: !47)
!56 = !DILocation(line: 32, column: 1, scope: !47)
!57 = distinct !DISubprogram(name: "xmlSchemaNewIDCSelect", scope: !3, file: !3, line: 34, type: !58, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !36)
!58 = !DISubroutineType(types: !59)
!59 = !{!12, !21, !27}
!60 = !DILocalVariable(name: "ctxt", arg: 1, scope: !57, file: !3, line: 34, type: !21)
!61 = !DILocation(line: 34, column: 64, scope: !57)
!62 = !DILocalVariable(name: "node", arg: 2, scope: !57, file: !3, line: 34, type: !27)
!63 = !DILocation(line: 34, column: 79, scope: !57)
!64 = !DILocalVariable(name: "item", scope: !57, file: !3, line: 36, type: !12)
!65 = !DILocation(line: 36, column: 25, scope: !57)
!66 = !DILocation(line: 36, column: 53, scope: !57)
!67 = !DILocation(line: 36, column: 32, scope: !57)
!68 = !DILocation(line: 37, column: 9, scope: !69)
!69 = distinct !DILexicalBlock(scope: !57, file: !3, line: 37, column: 9)
!70 = !DILocation(line: 37, column: 14, scope: !69)
!71 = !DILocation(line: 37, column: 9, scope: !57)
!72 = !DILocation(line: 38, column: 29, scope: !73)
!73 = distinct !DILexicalBlock(scope: !69, file: !3, line: 37, column: 23)
!74 = !DILocation(line: 38, column: 9, scope: !73)
!75 = !DILocation(line: 41, column: 9, scope: !73)
!76 = !DILocation(line: 49, column: 5, scope: !57)
!77 = !DILocation(line: 52, column: 5, scope: !57)
!78 = !DILocation(line: 54, column: 12, scope: !57)
!79 = !DILocation(line: 54, column: 5, scope: !57)
!80 = !DILocation(line: 57, column: 12, scope: !57)
!81 = !DILocation(line: 57, column: 5, scope: !57)
!82 = !DILocation(line: 58, column: 1, scope: !57)
!83 = distinct !DISubprogram(name: "xmlSchemaGetPropNode", scope: !3, file: !3, line: 60, type: !84, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !36)
!84 = !DISubroutineType(types: !85)
!85 = !{!27, !27, !8}
!86 = !DILocalVariable(name: "node", arg: 1, scope: !83, file: !3, line: 60, type: !27)
!87 = !DILocation(line: 60, column: 40, scope: !83)
!88 = !DILocalVariable(name: "name", arg: 2, scope: !83, file: !3, line: 60, type: !8)
!89 = !DILocation(line: 60, column: 58, scope: !83)
!90 = !DILocalVariable(name: "result", scope: !83, file: !3, line: 62, type: !27)
!91 = !DILocation(line: 62, column: 14, scope: !83)
!92 = !DILocation(line: 63, column: 24, scope: !83)
!93 = !DILocation(line: 63, column: 5, scope: !83)
!94 = !DILocation(line: 64, column: 17, scope: !83)
!95 = !DILocation(line: 64, column: 24, scope: !83)
!96 = !DILocation(line: 64, column: 32, scope: !83)
!97 = !DILocation(line: 64, column: 35, scope: !83)
!98 = !DILocation(line: 64, column: 42, scope: !83)
!99 = !DILocation(line: 64, column: 5, scope: !83)
!100 = !DILocation(line: 65, column: 12, scope: !83)
!101 = !DILocation(line: 65, column: 5, scope: !83)
!102 = !DILocalVariable(name: "prefix", arg: 1, scope: !2, file: !3, line: 69, type: !8)
!103 = !DILocation(line: 69, column: 40, scope: !2)
!104 = !DILocalVariable(name: "name", arg: 2, scope: !2, file: !3, line: 69, type: !8)
!105 = !DILocation(line: 69, column: 60, scope: !2)
!106 = !DILocation(line: 72, column: 5, scope: !2)
!107 = !DILocation(line: 73, column: 5, scope: !2)
!108 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 76, type: !109, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !36)
!109 = !DISubroutineType(types: !110)
!110 = !{!26}
!111 = !DILocalVariable(name: "ctxt", scope: !108, file: !3, line: 78, type: !21)
!112 = !DILocation(line: 78, column: 26, scope: !108)
!113 = !DILocation(line: 78, column: 55, scope: !108)
!114 = !DILocation(line: 78, column: 33, scope: !108)
!115 = !DILocation(line: 79, column: 24, scope: !108)
!116 = !DILocation(line: 79, column: 5, scope: !108)
!117 = !DILocalVariable(name: "node", scope: !108, file: !3, line: 82, type: !27)
!118 = !DILocation(line: 82, column: 14, scope: !108)
!119 = !DILocation(line: 82, column: 31, scope: !108)
!120 = !DILocation(line: 82, column: 21, scope: !108)
!121 = !DILocation(line: 83, column: 24, scope: !108)
!122 = !DILocation(line: 83, column: 5, scope: !108)
!123 = !DILocation(line: 86, column: 17, scope: !108)
!124 = !DILocation(line: 86, column: 22, scope: !108)
!125 = !DILocation(line: 86, column: 5, scope: !108)
!126 = !DILocalVariable(name: "result", scope: !108, file: !3, line: 89, type: !12)
!127 = !DILocation(line: 89, column: 25, scope: !108)
!128 = !DILocation(line: 89, column: 56, scope: !108)
!129 = !DILocation(line: 89, column: 62, scope: !108)
!130 = !DILocation(line: 89, column: 34, scope: !108)
!131 = !DILocation(line: 92, column: 10, scope: !108)
!132 = !DILocation(line: 92, column: 5, scope: !108)
!133 = !DILocation(line: 93, column: 10, scope: !108)
!134 = !DILocation(line: 93, column: 5, scope: !108)
!135 = !DILocation(line: 94, column: 9, scope: !136)
!136 = distinct !DILexicalBlock(scope: !108, file: !3, line: 94, column: 9)
!137 = !DILocation(line: 94, column: 16, scope: !136)
!138 = !DILocation(line: 94, column: 9, scope: !108)
!139 = !DILocation(line: 95, column: 14, scope: !140)
!140 = distinct !DILexicalBlock(scope: !136, file: !3, line: 94, column: 25)
!141 = !DILocation(line: 95, column: 9, scope: !140)
!142 = !DILocation(line: 96, column: 5, scope: !140)
!143 = !DILocation(line: 98, column: 5, scope: !108)
!144 = distinct !DISubprogram(name: "memset", scope: !145, file: !145, line: 12, type: !146, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !37, retainedNodes: !36)
!145 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!146 = !DISubroutineType(types: !147)
!147 = !{!20, !20, !26, !148}
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !149, line: 46, baseType: !150)
!149 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!150 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!151 = !DILocalVariable(name: "dst", arg: 1, scope: !144, file: !145, line: 12, type: !20)
!152 = !DILocation(line: 12, column: 20, scope: !144)
!153 = !DILocalVariable(name: "s", arg: 2, scope: !144, file: !145, line: 12, type: !26)
!154 = !DILocation(line: 12, column: 29, scope: !144)
!155 = !DILocalVariable(name: "count", arg: 3, scope: !144, file: !145, line: 12, type: !148)
!156 = !DILocation(line: 12, column: 39, scope: !144)
!157 = !DILocalVariable(name: "a", scope: !144, file: !145, line: 13, type: !6)
!158 = !DILocation(line: 13, column: 9, scope: !144)
!159 = !DILocation(line: 13, column: 13, scope: !144)
!160 = !DILocation(line: 14, column: 3, scope: !144)
!161 = !DILocation(line: 14, column: 15, scope: !144)
!162 = !DILocation(line: 14, column: 18, scope: !144)
!163 = !DILocation(line: 15, column: 12, scope: !144)
!164 = !DILocation(line: 15, column: 7, scope: !144)
!165 = !DILocation(line: 15, column: 10, scope: !144)
!166 = distinct !{!166, !160, !163, !167}
!167 = !{!"llvm.loop.mustprogress"}
!168 = !DILocation(line: 16, column: 10, scope: !144)
!169 = !DILocation(line: 16, column: 3, scope: !144)

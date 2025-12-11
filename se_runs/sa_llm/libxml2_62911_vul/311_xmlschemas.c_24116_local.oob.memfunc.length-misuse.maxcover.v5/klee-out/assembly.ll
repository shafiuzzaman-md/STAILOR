; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/311_xmlschemas.c_24116_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/311_xmlschemas.c_24116_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaNodeInfo = type { i32, i32 }
%struct._xmlSchemaParserCtxt = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"been_cleared\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"xmlSchemaGetFreshElemInfo\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"elem info has not been cleared\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.4 = private unnamed_addr constant [79 x i8] c"(sizeof(xmlSchemaNodeInfo) <= malloc_usable_size(info)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [110 x i8] c"se_runs/sa_llm/libxml2_62911_vul/311_xmlschemas.c_24116_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlSchemaGetFreshElemInfo = private unnamed_addr constant [68 x i8] c"xmlSchemaNodeInfo *xmlSchemaGetFreshElemInfo(xmlSchemaParserCtxt *)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"depth\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VERROR_INT(i8* noundef %0, i8* noundef %1) #0 !dbg !31 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !38, metadata !DIExpression()), !dbg !39
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !40, metadata !DIExpression()), !dbg !41
  ret void, !dbg !42
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlSchemaNodeInfo* @xmlSchemaGetFreshElemInfo(%struct._xmlSchemaParserCtxt* noundef %0) #0 !dbg !43 {
  %2 = alloca %struct._xmlSchemaNodeInfo*, align 8
  %3 = alloca %struct._xmlSchemaParserCtxt*, align 8
  %4 = alloca %struct._xmlSchemaNodeInfo*, align 8
  %5 = alloca i32, align 4
  store %struct._xmlSchemaParserCtxt* %0, %struct._xmlSchemaParserCtxt** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaParserCtxt** %3, metadata !45, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaNodeInfo** %4, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.declare(metadata i32* %5, metadata !49, metadata !DIExpression()), !dbg !50
  %6 = bitcast i32* %5 to i8*, !dbg !51
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0)), !dbg !52
  %7 = load i32, i32* %5, align 4, !dbg !53
  %8 = icmp eq i32 %7, 0, !dbg !54
  br i1 %8, label %12, label %9, !dbg !55

9:                                                ; preds = %1
  %10 = load i32, i32* %5, align 4, !dbg !56
  %11 = icmp eq i32 %10, 1, !dbg !57
  br label %12, !dbg !55

12:                                               ; preds = %9, %1
  %13 = phi i1 [ true, %1 ], [ %11, %9 ]
  %14 = zext i1 %13 to i32, !dbg !55
  %15 = sext i32 %14 to i64, !dbg !53
  call void @klee_assume(i64 noundef %15), !dbg !58
  %16 = load i32, i32* %5, align 4, !dbg !59
  %17 = icmp ne i32 %16, 0, !dbg !59
  br i1 %17, label %19, label %18, !dbg !61

18:                                               ; preds = %12
  call void @VERROR_INT(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0)), !dbg !62
  store %struct._xmlSchemaNodeInfo* null, %struct._xmlSchemaNodeInfo** %2, align 8, !dbg !64
  br label %47, !dbg !64

19:                                               ; preds = %12
  %20 = call noalias i8* @malloc(i64 noundef 8) #7, !dbg !65
  %21 = bitcast i8* %20 to %struct._xmlSchemaNodeInfo*, !dbg !66
  store %struct._xmlSchemaNodeInfo* %21, %struct._xmlSchemaNodeInfo** %4, align 8, !dbg !67
  %22 = load %struct._xmlSchemaNodeInfo*, %struct._xmlSchemaNodeInfo** %4, align 8, !dbg !68
  %23 = icmp ne %struct._xmlSchemaNodeInfo* %22, null, !dbg !68
  br i1 %23, label %25, label %24, !dbg !70

24:                                               ; preds = %19
  store %struct._xmlSchemaNodeInfo* null, %struct._xmlSchemaNodeInfo** %2, align 8, !dbg !71
  br label %47, !dbg !71

25:                                               ; preds = %19
  %26 = load %struct._xmlSchemaNodeInfo*, %struct._xmlSchemaNodeInfo** %4, align 8, !dbg !72
  %27 = call i32 (%struct._xmlSchemaNodeInfo*, ...) bitcast (i32 (...)* @malloc_usable_size to i32 (%struct._xmlSchemaNodeInfo*, ...)*)(%struct._xmlSchemaNodeInfo* noundef %26), !dbg !72
  %28 = sext i32 %27 to i64, !dbg !72
  %29 = icmp ule i64 8, %28, !dbg !72
  br i1 %29, label %30, label %32, !dbg !72

30:                                               ; preds = %25
  br i1 true, label %31, label %32, !dbg !72

31:                                               ; preds = %30
  br label %34, !dbg !72

32:                                               ; preds = %30, %25
  %33 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([110 x i8], [110 x i8]* @.str.5, i64 0, i64 0), i32 noundef 59, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @__PRETTY_FUNCTION__.xmlSchemaGetFreshElemInfo, i64 0, i64 0)), !dbg !72
  br label %34, !dbg !72

34:                                               ; preds = %32, %31
  %35 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([110 x i8], [110 x i8]* @.str.5, i64 0, i64 0), i32 noundef 62, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @__PRETTY_FUNCTION__.xmlSchemaGetFreshElemInfo, i64 0, i64 0)), !dbg !73
  %36 = load %struct._xmlSchemaNodeInfo*, %struct._xmlSchemaNodeInfo** %4, align 8, !dbg !74
  %37 = bitcast %struct._xmlSchemaNodeInfo* %36 to i8*, !dbg !75
  %38 = call i8* @memset(i8* %37, i32 0, i64 8), !dbg !75
  %39 = load %struct._xmlSchemaNodeInfo*, %struct._xmlSchemaNodeInfo** %4, align 8, !dbg !76
  %40 = getelementptr inbounds %struct._xmlSchemaNodeInfo, %struct._xmlSchemaNodeInfo* %39, i32 0, i32 0, !dbg !77
  store i32 1, i32* %40, align 4, !dbg !78
  %41 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %3, align 8, !dbg !79
  %42 = getelementptr inbounds %struct._xmlSchemaParserCtxt, %struct._xmlSchemaParserCtxt* %41, i32 0, i32 0, !dbg !80
  %43 = load i32, i32* %42, align 4, !dbg !80
  %44 = load %struct._xmlSchemaNodeInfo*, %struct._xmlSchemaNodeInfo** %4, align 8, !dbg !81
  %45 = getelementptr inbounds %struct._xmlSchemaNodeInfo, %struct._xmlSchemaNodeInfo* %44, i32 0, i32 1, !dbg !82
  store i32 %43, i32* %45, align 4, !dbg !83
  %46 = load %struct._xmlSchemaNodeInfo*, %struct._xmlSchemaNodeInfo** %4, align 8, !dbg !84
  store %struct._xmlSchemaNodeInfo* %46, %struct._xmlSchemaNodeInfo** %2, align 8, !dbg !85
  br label %47, !dbg !85

47:                                               ; preds = %34, %24, %18
  %48 = load %struct._xmlSchemaNodeInfo*, %struct._xmlSchemaNodeInfo** %2, align 8, !dbg !86
  ret %struct._xmlSchemaNodeInfo* %48, !dbg !86
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

declare i32 @malloc_usable_size(...) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchemaFormatQName(%struct._xmlSchemaParserCtxt* noundef %0) #0 !dbg !87 {
  %2 = alloca %struct._xmlSchemaParserCtxt*, align 8
  %3 = alloca %struct._xmlSchemaNodeInfo*, align 8
  store %struct._xmlSchemaParserCtxt* %0, %struct._xmlSchemaParserCtxt** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaParserCtxt** %2, metadata !90, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaNodeInfo** %3, metadata !92, metadata !DIExpression()), !dbg !93
  %4 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !94
  %5 = call %struct._xmlSchemaNodeInfo* @xmlSchemaGetFreshElemInfo(%struct._xmlSchemaParserCtxt* noundef %4), !dbg !95
  store %struct._xmlSchemaNodeInfo* %5, %struct._xmlSchemaNodeInfo** %3, align 8, !dbg !93
  %6 = load %struct._xmlSchemaNodeInfo*, %struct._xmlSchemaNodeInfo** %3, align 8, !dbg !96
  %7 = icmp ne %struct._xmlSchemaNodeInfo* %6, null, !dbg !96
  br i1 %7, label %8, label %11, !dbg !98

8:                                                ; preds = %1
  %9 = load %struct._xmlSchemaNodeInfo*, %struct._xmlSchemaNodeInfo** %3, align 8, !dbg !99
  %10 = bitcast %struct._xmlSchemaNodeInfo* %9 to i8*, !dbg !99
  call void @free(i8* noundef %10) #7, !dbg !101
  br label %11, !dbg !102

11:                                               ; preds = %8, %1
  ret void, !dbg !103
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !104 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlSchemaParserCtxt*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaParserCtxt** %2, metadata !107, metadata !DIExpression()), !dbg !108
  %3 = call noalias i8* @malloc(i64 noundef 4) #7, !dbg !109
  %4 = bitcast i8* %3 to %struct._xmlSchemaParserCtxt*, !dbg !110
  store %struct._xmlSchemaParserCtxt* %4, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !108
  %5 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !111
  %6 = icmp ne %struct._xmlSchemaParserCtxt* %5, null, !dbg !111
  br i1 %6, label %8, label %7, !dbg !113

7:                                                ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !114
  br label %15, !dbg !114

8:                                                ; preds = %0
  %9 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !115
  %10 = getelementptr inbounds %struct._xmlSchemaParserCtxt, %struct._xmlSchemaParserCtxt* %9, i32 0, i32 0, !dbg !116
  %11 = bitcast i32* %10 to i8*, !dbg !117
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)), !dbg !118
  %12 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !119
  call void @xmlSchemaFormatQName(%struct._xmlSchemaParserCtxt* noundef %12), !dbg !120
  %13 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !121
  %14 = bitcast %struct._xmlSchemaParserCtxt* %13 to i8*, !dbg !121
  call void @free(i8* noundef %14) #7, !dbg !122
  store i32 0, i32* %1, align 4, !dbg !123
  br label %15, !dbg !123

15:                                               ; preds = %8, %7
  %16 = load i32, i32* %1, align 4, !dbg !124
  ret i32 %16, !dbg !124
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !125 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !133, metadata !DIExpression()), !dbg !134
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !135, metadata !DIExpression()), !dbg !136
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !137, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.declare(metadata i8** %7, metadata !139, metadata !DIExpression()), !dbg !141
  %8 = load i8*, i8** %4, align 8, !dbg !142
  store i8* %8, i8** %7, align 8, !dbg !141
  br label %9, !dbg !143

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !144
  %11 = add i64 %10, -1, !dbg !144
  store i64 %11, i64* %6, align 8, !dbg !144
  %12 = icmp ugt i64 %10, 0, !dbg !145
  br i1 %12, label %13, label %18, !dbg !143

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !146
  %15 = trunc i32 %14 to i8, !dbg !146
  %16 = load i8*, i8** %7, align 8, !dbg !147
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !147
  store i8* %17, i8** %7, align 8, !dbg !147
  store i8 %15, i8* %16, align 1, !dbg !148
  br label %9, !dbg !143, !llvm.loop !149

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !151
  ret i8* %19, !dbg !152
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30, !30}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !7, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/311_xmlschemas.c_24116_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "2f5843a4aef0de4ab1dc1b8c08889117")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 12, baseType: !4, size: 32, elements: !5)
!4 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!5 = !{!6}
!6 = !DIEnumerator(name: "XML_ELEMENT_NODE", value: 1)
!7 = !{!8, !16}
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaNodeInfo", file: !1, line: 11, baseType: !10)
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaNodeInfo", file: !1, line: 17, size: 64, elements: !11)
!11 = !{!12, !14}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "nodeType", scope: !10, file: !1, line: 18, baseType: !13, size: 32)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !1, line: 14, baseType: !3)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !10, file: !1, line: 19, baseType: !15, size: 32, offset: 32)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaParserCtxt", file: !1, line: 10, baseType: !18)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaParserCtxt", file: !1, line: 23, size: 32, elements: !19)
!19 = !{!20}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !18, file: !1, line: 24, baseType: !15, size: 32)
!21 = distinct !DICompileUnit(language: DW_LANG_C99, file: !22, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!22 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!23 = !{i32 7, !"Dwarf Version", i32 5}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{i32 1, !"wchar_size", i32 4}
!26 = !{i32 7, !"PIC Level", i32 2}
!27 = !{i32 7, !"PIE Level", i32 2}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"Ubuntu clang version 14.0.6"}
!31 = distinct !DISubprogram(name: "VERROR_INT", scope: !1, file: !1, line: 33, type: !32, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!32 = !DISubroutineType(types: !33)
!33 = !{null, !34, !34}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!36 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!37 = !{}
!38 = !DILocalVariable(name: "func", arg: 1, scope: !31, file: !1, line: 33, type: !34)
!39 = !DILocation(line: 33, column: 29, scope: !31)
!40 = !DILocalVariable(name: "msg", arg: 2, scope: !31, file: !1, line: 33, type: !34)
!41 = !DILocation(line: 33, column: 47, scope: !31)
!42 = !DILocation(line: 35, column: 1, scope: !31)
!43 = distinct !DISubprogram(name: "xmlSchemaGetFreshElemInfo", scope: !1, file: !1, line: 37, type: !44, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!44 = !DISubroutineType(types: !7)
!45 = !DILocalVariable(name: "vctxt", arg: 1, scope: !43, file: !1, line: 37, type: !16)
!46 = !DILocation(line: 37, column: 67, scope: !43)
!47 = !DILocalVariable(name: "info", scope: !43, file: !1, line: 38, type: !8)
!48 = !DILocation(line: 38, column: 24, scope: !43)
!49 = !DILocalVariable(name: "been_cleared", scope: !43, file: !1, line: 41, type: !15)
!50 = !DILocation(line: 41, column: 9, scope: !43)
!51 = !DILocation(line: 42, column: 24, scope: !43)
!52 = !DILocation(line: 42, column: 5, scope: !43)
!53 = !DILocation(line: 45, column: 17, scope: !43)
!54 = !DILocation(line: 45, column: 30, scope: !43)
!55 = !DILocation(line: 45, column: 35, scope: !43)
!56 = !DILocation(line: 45, column: 38, scope: !43)
!57 = !DILocation(line: 45, column: 51, scope: !43)
!58 = !DILocation(line: 45, column: 5, scope: !43)
!59 = !DILocation(line: 47, column: 10, scope: !60)
!60 = distinct !DILexicalBlock(scope: !43, file: !1, line: 47, column: 9)
!61 = !DILocation(line: 47, column: 9, scope: !43)
!62 = !DILocation(line: 48, column: 9, scope: !63)
!63 = distinct !DILexicalBlock(scope: !60, file: !1, line: 47, column: 24)
!64 = !DILocation(line: 49, column: 9, scope: !63)
!65 = !DILocation(line: 53, column: 32, scope: !43)
!66 = !DILocation(line: 53, column: 12, scope: !43)
!67 = !DILocation(line: 53, column: 10, scope: !43)
!68 = !DILocation(line: 54, column: 10, scope: !69)
!69 = distinct !DILexicalBlock(scope: !43, file: !1, line: 54, column: 9)
!70 = !DILocation(line: 54, column: 9, scope: !43)
!71 = !DILocation(line: 54, column: 16, scope: !69)
!72 = !DILocation(line: 59, column: 5, scope: !43)
!73 = !DILocation(line: 62, column: 5, scope: !43)
!74 = !DILocation(line: 65, column: 12, scope: !43)
!75 = !DILocation(line: 65, column: 5, scope: !43)
!76 = !DILocation(line: 67, column: 5, scope: !43)
!77 = !DILocation(line: 67, column: 11, scope: !43)
!78 = !DILocation(line: 67, column: 20, scope: !43)
!79 = !DILocation(line: 68, column: 19, scope: !43)
!80 = !DILocation(line: 68, column: 26, scope: !43)
!81 = !DILocation(line: 68, column: 5, scope: !43)
!82 = !DILocation(line: 68, column: 11, scope: !43)
!83 = !DILocation(line: 68, column: 17, scope: !43)
!84 = !DILocation(line: 70, column: 12, scope: !43)
!85 = !DILocation(line: 70, column: 5, scope: !43)
!86 = !DILocation(line: 71, column: 1, scope: !43)
!87 = distinct !DISubprogram(name: "xmlSchemaFormatQName", scope: !1, file: !1, line: 74, type: !88, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!88 = !DISubroutineType(types: !89)
!89 = !{null, !16}
!90 = !DILocalVariable(name: "ctxt", arg: 1, scope: !87, file: !1, line: 74, type: !16)
!91 = !DILocation(line: 74, column: 48, scope: !87)
!92 = !DILocalVariable(name: "info", scope: !87, file: !1, line: 76, type: !8)
!93 = !DILocation(line: 76, column: 24, scope: !87)
!94 = !DILocation(line: 76, column: 57, scope: !87)
!95 = !DILocation(line: 76, column: 31, scope: !87)
!96 = !DILocation(line: 77, column: 9, scope: !97)
!97 = distinct !DILexicalBlock(scope: !87, file: !1, line: 77, column: 9)
!98 = !DILocation(line: 77, column: 9, scope: !87)
!99 = !DILocation(line: 78, column: 14, scope: !100)
!100 = distinct !DILexicalBlock(scope: !97, file: !1, line: 77, column: 15)
!101 = !DILocation(line: 78, column: 9, scope: !100)
!102 = !DILocation(line: 79, column: 5, scope: !100)
!103 = !DILocation(line: 80, column: 1, scope: !87)
!104 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 82, type: !105, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!105 = !DISubroutineType(types: !106)
!106 = !{!15}
!107 = !DILocalVariable(name: "vctxt", scope: !104, file: !1, line: 84, type: !16)
!108 = !DILocation(line: 84, column: 26, scope: !104)
!109 = !DILocation(line: 84, column: 56, scope: !104)
!110 = !DILocation(line: 84, column: 34, scope: !104)
!111 = !DILocation(line: 85, column: 10, scope: !112)
!112 = distinct !DILexicalBlock(scope: !104, file: !1, line: 85, column: 9)
!113 = !DILocation(line: 85, column: 9, scope: !104)
!114 = !DILocation(line: 85, column: 17, scope: !112)
!115 = !DILocation(line: 88, column: 25, scope: !104)
!116 = !DILocation(line: 88, column: 32, scope: !104)
!117 = !DILocation(line: 88, column: 24, scope: !104)
!118 = !DILocation(line: 88, column: 5, scope: !104)
!119 = !DILocation(line: 91, column: 26, scope: !104)
!120 = !DILocation(line: 91, column: 5, scope: !104)
!121 = !DILocation(line: 93, column: 10, scope: !104)
!122 = !DILocation(line: 93, column: 5, scope: !104)
!123 = !DILocation(line: 94, column: 5, scope: !104)
!124 = !DILocation(line: 95, column: 1, scope: !104)
!125 = distinct !DISubprogram(name: "memset", scope: !126, file: !126, line: 12, type: !127, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !21, retainedNodes: !37)
!126 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!127 = !DISubroutineType(types: !128)
!128 = !{!129, !129, !15, !130}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !131, line: 46, baseType: !132)
!131 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!132 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!133 = !DILocalVariable(name: "dst", arg: 1, scope: !125, file: !126, line: 12, type: !129)
!134 = !DILocation(line: 12, column: 20, scope: !125)
!135 = !DILocalVariable(name: "s", arg: 2, scope: !125, file: !126, line: 12, type: !15)
!136 = !DILocation(line: 12, column: 29, scope: !125)
!137 = !DILocalVariable(name: "count", arg: 3, scope: !125, file: !126, line: 12, type: !130)
!138 = !DILocation(line: 12, column: 39, scope: !125)
!139 = !DILocalVariable(name: "a", scope: !125, file: !126, line: 13, type: !140)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!141 = !DILocation(line: 13, column: 9, scope: !125)
!142 = !DILocation(line: 13, column: 13, scope: !125)
!143 = !DILocation(line: 14, column: 3, scope: !125)
!144 = !DILocation(line: 14, column: 15, scope: !125)
!145 = !DILocation(line: 14, column: 18, scope: !125)
!146 = !DILocation(line: 15, column: 12, scope: !125)
!147 = !DILocation(line: 15, column: 7, scope: !125)
!148 = !DILocation(line: 15, column: 10, scope: !125)
!149 = distinct !{!149, !143, !146, !150}
!150 = !{!"llvm.loop.mustprogress"}
!151 = !DILocation(line: 16, column: 10, scope: !125)
!152 = !DILocation(line: 16, column: 3, scope: !125)

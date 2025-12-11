; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/367_xmlschemas.c_9927_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/367_xmlschemas.c_9927_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaItemList = type {}
%struct._xmlSchemaParserCtxt = type { i32, %struct._xmlSchemaItemList* }

@.str = private unnamed_addr constant [12 x i8] c"should_fail\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"allocating schema parser context\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [80 x i8] c"(sizeof(xmlSchemaParserCtxt) <= malloc_usable_size(ret)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [109 x i8] c"se_runs/sa_llm/libxml2_62911_vul/367_xmlschemas.c_9927_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlSchemaParseRedefine = private unnamed_addr constant [50 x i8] c"xmlSchemaParserCtxt *xmlSchemaParseRedefine(void)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"malloc_success\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchemaPErrMemory(i8* noundef %0, i8* noundef %1, i8* noundef %2) #0 !dbg !14 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !21, metadata !DIExpression()), !dbg !22
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !23, metadata !DIExpression()), !dbg !24
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !25, metadata !DIExpression()), !dbg !26
  ret void, !dbg !27
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlSchemaItemList* @xmlSchemaItemListCreate() #0 !dbg !28 {
  %1 = alloca %struct._xmlSchemaItemList*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct._xmlSchemaItemList*, align 8
  call void @llvm.dbg.declare(metadata i32* %2, metadata !34, metadata !DIExpression()), !dbg !36
  %4 = bitcast i32* %2 to i8*, !dbg !37
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0)), !dbg !38
  %5 = load i32, i32* %2, align 4, !dbg !39
  %6 = icmp ne i32 %5, 0, !dbg !39
  br i1 %6, label %7, label %8, !dbg !41

7:                                                ; preds = %0
  store %struct._xmlSchemaItemList* null, %struct._xmlSchemaItemList** %1, align 8, !dbg !42
  br label %12, !dbg !42

8:                                                ; preds = %0
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaItemList** %3, metadata !44, metadata !DIExpression()), !dbg !45
  %9 = call noalias i8* @malloc(i64 noundef 0) #7, !dbg !46
  %10 = bitcast i8* %9 to %struct._xmlSchemaItemList*, !dbg !46
  store %struct._xmlSchemaItemList* %10, %struct._xmlSchemaItemList** %3, align 8, !dbg !45
  %11 = load %struct._xmlSchemaItemList*, %struct._xmlSchemaItemList** %3, align 8, !dbg !47
  store %struct._xmlSchemaItemList* %11, %struct._xmlSchemaItemList** %1, align 8, !dbg !48
  br label %12, !dbg !48

12:                                               ; preds = %8, %7
  %13 = load %struct._xmlSchemaItemList*, %struct._xmlSchemaItemList** %1, align 8, !dbg !49
  ret %struct._xmlSchemaItemList* %13, !dbg !49
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !50 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !53, metadata !DIExpression()), !dbg !54
  %3 = load i8*, i8** %2, align 8, !dbg !55
  call void @free(i8* noundef %3) #7, !dbg !56
  ret void, !dbg !57
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlSchemaParserCtxt* @xmlSchemaParseRedefine() #0 !dbg !58 {
  %1 = alloca %struct._xmlSchemaParserCtxt*, align 8
  %2 = alloca %struct._xmlSchemaParserCtxt*, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaParserCtxt** %2, metadata !67, metadata !DIExpression()), !dbg !68
  %3 = call noalias i8* @malloc(i64 noundef 16) #7, !dbg !69
  %4 = bitcast i8* %3 to %struct._xmlSchemaParserCtxt*, !dbg !69
  store %struct._xmlSchemaParserCtxt* %4, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !68
  %5 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !70
  %6 = icmp eq %struct._xmlSchemaParserCtxt* %5, null, !dbg !72
  br i1 %6, label %7, label %8, !dbg !73

7:                                                ; preds = %0
  call void @xmlSchemaPErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* noundef null), !dbg !74
  store %struct._xmlSchemaParserCtxt* null, %struct._xmlSchemaParserCtxt** %1, align 8, !dbg !76
  br label %36, !dbg !76

8:                                                ; preds = %0
  %9 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !77
  %10 = call i32 (%struct._xmlSchemaParserCtxt*, ...) bitcast (i32 (...)* @malloc_usable_size to i32 (%struct._xmlSchemaParserCtxt*, ...)*)(%struct._xmlSchemaParserCtxt* noundef %9), !dbg !77
  %11 = sext i32 %10 to i64, !dbg !77
  %12 = icmp ule i64 16, %11, !dbg !77
  br i1 %12, label %13, label %15, !dbg !77

13:                                               ; preds = %8
  br i1 true, label %14, label %15, !dbg !77

14:                                               ; preds = %13
  br label %17, !dbg !77

15:                                               ; preds = %13, %8
  %16 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.4, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.xmlSchemaParseRedefine, i64 0, i64 0)), !dbg !77
  br label %17, !dbg !77

17:                                               ; preds = %15, %14
  %18 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.4, i64 0, i64 0), i32 noundef 59, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.xmlSchemaParseRedefine, i64 0, i64 0)), !dbg !78
  %19 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !79
  %20 = bitcast %struct._xmlSchemaParserCtxt* %19 to i8*, !dbg !80
  %21 = call i8* @memset(i8* %20, i32 0, i64 16), !dbg !80
  %22 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !81
  %23 = getelementptr inbounds %struct._xmlSchemaParserCtxt, %struct._xmlSchemaParserCtxt* %22, i32 0, i32 0, !dbg !82
  store i32 1, i32* %23, align 8, !dbg !83
  %24 = call %struct._xmlSchemaItemList* @xmlSchemaItemListCreate(), !dbg !84
  %25 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !85
  %26 = getelementptr inbounds %struct._xmlSchemaParserCtxt, %struct._xmlSchemaParserCtxt* %25, i32 0, i32 1, !dbg !86
  store %struct._xmlSchemaItemList* %24, %struct._xmlSchemaItemList** %26, align 8, !dbg !87
  %27 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !88
  %28 = getelementptr inbounds %struct._xmlSchemaParserCtxt, %struct._xmlSchemaParserCtxt* %27, i32 0, i32 1, !dbg !90
  %29 = load %struct._xmlSchemaItemList*, %struct._xmlSchemaItemList** %28, align 8, !dbg !90
  %30 = icmp eq %struct._xmlSchemaItemList* %29, null, !dbg !91
  br i1 %30, label %31, label %34, !dbg !92

31:                                               ; preds = %17
  %32 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !93
  %33 = bitcast %struct._xmlSchemaParserCtxt* %32 to i8*, !dbg !93
  call void @xmlFree(i8* noundef %33), !dbg !95
  store %struct._xmlSchemaParserCtxt* null, %struct._xmlSchemaParserCtxt** %1, align 8, !dbg !96
  br label %36, !dbg !96

34:                                               ; preds = %17
  %35 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !97
  store %struct._xmlSchemaParserCtxt* %35, %struct._xmlSchemaParserCtxt** %1, align 8, !dbg !98
  br label %36, !dbg !98

36:                                               ; preds = %34, %31, %7
  %37 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %1, align 8, !dbg !99
  ret %struct._xmlSchemaParserCtxt* %37, !dbg !99
}

declare i32 @malloc_usable_size(...) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !100 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct._xmlSchemaParserCtxt*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !103, metadata !DIExpression()), !dbg !104
  %4 = bitcast i32* %2 to i8*, !dbg !105
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0)), !dbg !106
  %5 = load i32, i32* %2, align 4, !dbg !107
  %6 = icmp ne i32 %5, 0, !dbg !108
  %7 = zext i1 %6 to i32, !dbg !108
  %8 = sext i32 %7 to i64, !dbg !107
  call void @klee_assume(i64 noundef %8), !dbg !109
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaParserCtxt** %3, metadata !110, metadata !DIExpression()), !dbg !111
  %9 = call %struct._xmlSchemaParserCtxt* @xmlSchemaParseRedefine(), !dbg !112
  store %struct._xmlSchemaParserCtxt* %9, %struct._xmlSchemaParserCtxt** %3, align 8, !dbg !111
  %10 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %3, align 8, !dbg !113
  %11 = icmp ne %struct._xmlSchemaParserCtxt* %10, null, !dbg !113
  br i1 %11, label %12, label %25, !dbg !115

12:                                               ; preds = %0
  %13 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %3, align 8, !dbg !116
  %14 = getelementptr inbounds %struct._xmlSchemaParserCtxt, %struct._xmlSchemaParserCtxt* %13, i32 0, i32 1, !dbg !119
  %15 = load %struct._xmlSchemaItemList*, %struct._xmlSchemaItemList** %14, align 8, !dbg !119
  %16 = icmp ne %struct._xmlSchemaItemList* %15, null, !dbg !116
  br i1 %16, label %17, label %22, !dbg !120

17:                                               ; preds = %12
  %18 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %3, align 8, !dbg !121
  %19 = getelementptr inbounds %struct._xmlSchemaParserCtxt, %struct._xmlSchemaParserCtxt* %18, i32 0, i32 1, !dbg !123
  %20 = load %struct._xmlSchemaItemList*, %struct._xmlSchemaItemList** %19, align 8, !dbg !123
  %21 = bitcast %struct._xmlSchemaItemList* %20 to i8*, !dbg !121
  call void @free(i8* noundef %21) #7, !dbg !124
  br label %22, !dbg !125

22:                                               ; preds = %17, %12
  %23 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %3, align 8, !dbg !126
  %24 = bitcast %struct._xmlSchemaParserCtxt* %23 to i8*, !dbg !126
  call void @free(i8* noundef %24) #7, !dbg !127
  br label %25, !dbg !128

25:                                               ; preds = %22, %0
  ret i32 0, !dbg !129
}

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !130 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !137, metadata !DIExpression()), !dbg !138
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !139, metadata !DIExpression()), !dbg !140
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !141, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.declare(metadata i8** %7, metadata !143, metadata !DIExpression()), !dbg !145
  %8 = load i8*, i8** %4, align 8, !dbg !146
  store i8* %8, i8** %7, align 8, !dbg !145
  br label %9, !dbg !147

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !148
  %11 = add i64 %10, -1, !dbg !148
  store i64 %11, i64* %6, align 8, !dbg !148
  %12 = icmp ugt i64 %10, 0, !dbg !149
  br i1 %12, label %13, label %18, !dbg !147

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !150
  %15 = trunc i32 %14 to i8, !dbg !150
  %16 = load i8*, i8** %7, align 8, !dbg !151
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !151
  store i8* %17, i8** %7, align 8, !dbg !151
  store i8 %15, i8* %16, align 1, !dbg !152
  br label %9, !dbg !147, !llvm.loop !153

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !155
  ret i8* %19, !dbg !156
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13, !13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/367_xmlschemas.c_9927_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "98dd5bd037bee389c51dc217d511bf74")
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
!14 = distinct !DISubprogram(name: "xmlSchemaPErrMemory", scope: !1, file: !1, line: 24, type: !15, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !3, !17, !17}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !{}
!21 = !DILocalVariable(name: "ctxt", arg: 1, scope: !14, file: !1, line: 24, type: !3)
!22 = !DILocation(line: 24, column: 32, scope: !14)
!23 = !DILocalVariable(name: "msg", arg: 2, scope: !14, file: !1, line: 24, type: !17)
!24 = !DILocation(line: 24, column: 50, scope: !14)
!25 = !DILocalVariable(name: "extra", arg: 3, scope: !14, file: !1, line: 24, type: !17)
!26 = !DILocation(line: 24, column: 67, scope: !14)
!27 = !DILocation(line: 26, column: 1, scope: !14)
!28 = distinct !DISubprogram(name: "xmlSchemaItemListCreate", scope: !1, file: !1, line: 28, type: !29, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!29 = !DISubroutineType(types: !30)
!30 = !{!31}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaItemList", file: !1, line: 11, baseType: !33)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaItemList", file: !1, line: 19, elements: !20)
!34 = !DILocalVariable(name: "should_fail", scope: !28, file: !1, line: 30, type: !35)
!35 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!36 = !DILocation(line: 30, column: 9, scope: !28)
!37 = !DILocation(line: 31, column: 24, scope: !28)
!38 = !DILocation(line: 31, column: 5, scope: !28)
!39 = !DILocation(line: 32, column: 9, scope: !40)
!40 = distinct !DILexicalBlock(scope: !28, file: !1, line: 32, column: 9)
!41 = !DILocation(line: 32, column: 9, scope: !28)
!42 = !DILocation(line: 33, column: 9, scope: !43)
!43 = distinct !DILexicalBlock(scope: !40, file: !1, line: 32, column: 22)
!44 = !DILocalVariable(name: "list", scope: !28, file: !1, line: 37, type: !31)
!45 = !DILocation(line: 37, column: 24, scope: !28)
!46 = !DILocation(line: 37, column: 31, scope: !28)
!47 = !DILocation(line: 38, column: 12, scope: !28)
!48 = !DILocation(line: 38, column: 5, scope: !28)
!49 = !DILocation(line: 39, column: 1, scope: !28)
!50 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 41, type: !51, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!51 = !DISubroutineType(types: !52)
!52 = !{null, !3}
!53 = !DILocalVariable(name: "ptr", arg: 1, scope: !50, file: !1, line: 41, type: !3)
!54 = !DILocation(line: 41, column: 20, scope: !50)
!55 = !DILocation(line: 42, column: 10, scope: !50)
!56 = !DILocation(line: 42, column: 5, scope: !50)
!57 = !DILocation(line: 43, column: 1, scope: !50)
!58 = distinct !DISubprogram(name: "xmlSchemaParseRedefine", scope: !1, file: !1, line: 46, type: !59, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!59 = !DISubroutineType(types: !60)
!60 = !{!61}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaParserCtxt", file: !1, line: 10, baseType: !63)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaParserCtxt", file: !1, line: 14, size: 128, elements: !64)
!64 = !{!65, !66}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !63, file: !1, line: 15, baseType: !35, size: 32)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "attrProhibs", scope: !63, file: !1, line: 16, baseType: !31, size: 64, offset: 64)
!67 = !DILocalVariable(name: "ret", scope: !58, file: !1, line: 47, type: !61)
!68 = !DILocation(line: 47, column: 26, scope: !58)
!69 = !DILocation(line: 47, column: 32, scope: !58)
!70 = !DILocation(line: 49, column: 9, scope: !71)
!71 = distinct !DILexicalBlock(scope: !58, file: !1, line: 49, column: 9)
!72 = !DILocation(line: 49, column: 13, scope: !71)
!73 = !DILocation(line: 49, column: 9, scope: !58)
!74 = !DILocation(line: 50, column: 9, scope: !75)
!75 = distinct !DILexicalBlock(scope: !71, file: !1, line: 49, column: 22)
!76 = !DILocation(line: 51, column: 9, scope: !75)
!77 = !DILocation(line: 56, column: 5, scope: !58)
!78 = !DILocation(line: 59, column: 5, scope: !58)
!79 = !DILocation(line: 61, column: 12, scope: !58)
!80 = !DILocation(line: 61, column: 5, scope: !58)
!81 = !DILocation(line: 62, column: 5, scope: !58)
!82 = !DILocation(line: 62, column: 10, scope: !58)
!83 = !DILocation(line: 62, column: 15, scope: !58)
!84 = !DILocation(line: 63, column: 24, scope: !58)
!85 = !DILocation(line: 63, column: 5, scope: !58)
!86 = !DILocation(line: 63, column: 10, scope: !58)
!87 = !DILocation(line: 63, column: 22, scope: !58)
!88 = !DILocation(line: 65, column: 9, scope: !89)
!89 = distinct !DILexicalBlock(scope: !58, file: !1, line: 65, column: 9)
!90 = !DILocation(line: 65, column: 14, scope: !89)
!91 = !DILocation(line: 65, column: 26, scope: !89)
!92 = !DILocation(line: 65, column: 9, scope: !58)
!93 = !DILocation(line: 66, column: 17, scope: !94)
!94 = distinct !DILexicalBlock(scope: !89, file: !1, line: 65, column: 35)
!95 = !DILocation(line: 66, column: 9, scope: !94)
!96 = !DILocation(line: 67, column: 9, scope: !94)
!97 = !DILocation(line: 70, column: 12, scope: !58)
!98 = !DILocation(line: 70, column: 5, scope: !58)
!99 = !DILocation(line: 71, column: 1, scope: !58)
!100 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 73, type: !101, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!101 = !DISubroutineType(types: !102)
!102 = !{!35}
!103 = !DILocalVariable(name: "malloc_success", scope: !100, file: !1, line: 75, type: !35)
!104 = !DILocation(line: 75, column: 9, scope: !100)
!105 = !DILocation(line: 76, column: 24, scope: !100)
!106 = !DILocation(line: 76, column: 5, scope: !100)
!107 = !DILocation(line: 79, column: 17, scope: !100)
!108 = !DILocation(line: 79, column: 32, scope: !100)
!109 = !DILocation(line: 79, column: 5, scope: !100)
!110 = !DILocalVariable(name: "result", scope: !100, file: !1, line: 82, type: !61)
!111 = !DILocation(line: 82, column: 26, scope: !100)
!112 = !DILocation(line: 82, column: 35, scope: !100)
!113 = !DILocation(line: 85, column: 9, scope: !114)
!114 = distinct !DILexicalBlock(scope: !100, file: !1, line: 85, column: 9)
!115 = !DILocation(line: 85, column: 9, scope: !100)
!116 = !DILocation(line: 86, column: 13, scope: !117)
!117 = distinct !DILexicalBlock(scope: !118, file: !1, line: 86, column: 13)
!118 = distinct !DILexicalBlock(scope: !114, file: !1, line: 85, column: 17)
!119 = !DILocation(line: 86, column: 21, scope: !117)
!120 = !DILocation(line: 86, column: 13, scope: !118)
!121 = !DILocation(line: 87, column: 18, scope: !122)
!122 = distinct !DILexicalBlock(scope: !117, file: !1, line: 86, column: 34)
!123 = !DILocation(line: 87, column: 26, scope: !122)
!124 = !DILocation(line: 87, column: 13, scope: !122)
!125 = !DILocation(line: 88, column: 9, scope: !122)
!126 = !DILocation(line: 89, column: 14, scope: !118)
!127 = !DILocation(line: 89, column: 9, scope: !118)
!128 = !DILocation(line: 90, column: 5, scope: !118)
!129 = !DILocation(line: 92, column: 5, scope: !100)
!130 = distinct !DISubprogram(name: "memset", scope: !131, file: !131, line: 12, type: !132, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !20)
!131 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!132 = !DISubroutineType(types: !133)
!133 = !{!3, !3, !35, !134}
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !135, line: 46, baseType: !136)
!135 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!136 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!137 = !DILocalVariable(name: "dst", arg: 1, scope: !130, file: !131, line: 12, type: !3)
!138 = !DILocation(line: 12, column: 20, scope: !130)
!139 = !DILocalVariable(name: "s", arg: 2, scope: !130, file: !131, line: 12, type: !35)
!140 = !DILocation(line: 12, column: 29, scope: !130)
!141 = !DILocalVariable(name: "count", arg: 3, scope: !130, file: !131, line: 12, type: !134)
!142 = !DILocation(line: 12, column: 39, scope: !130)
!143 = !DILocalVariable(name: "a", scope: !130, file: !131, line: 13, type: !144)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!145 = !DILocation(line: 13, column: 9, scope: !130)
!146 = !DILocation(line: 13, column: 13, scope: !130)
!147 = !DILocation(line: 14, column: 3, scope: !130)
!148 = !DILocation(line: 14, column: 15, scope: !130)
!149 = !DILocation(line: 14, column: 18, scope: !130)
!150 = !DILocation(line: 15, column: 12, scope: !130)
!151 = !DILocation(line: 15, column: 7, scope: !130)
!152 = !DILocation(line: 15, column: 10, scope: !130)
!153 = distinct !{!153, !147, !150, !154}
!154 = !{!"llvm.loop.mustprogress"}
!155 = !DILocation(line: 16, column: 10, scope: !130)
!156 = !DILocation(line: 16, column: 3, scope: !130)

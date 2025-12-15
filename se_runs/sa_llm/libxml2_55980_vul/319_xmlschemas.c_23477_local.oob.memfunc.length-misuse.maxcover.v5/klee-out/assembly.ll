; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/319_xmlschemas.c_23477_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/319_xmlschemas.c_23477_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.xmlSchemaParserCtxt = type { %struct.anon* }
%struct.anon = type { %struct.xmlSchemaIDCMatcher* }
%struct.xmlSchemaIDCMatcher = type { i32, %struct.xmlSchemaIDCMatcher* }

@.str = private unnamed_addr constant [26 x i8] c"allocating an IDC matcher\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"(matcher != ((void*)0)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [110 x i8] c"se_runs/sa_llm/libxml2_55980_vul/319_xmlschemas.c_23477_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.target_function = private unnamed_addr constant [67 x i8] c"int target_function(xmlSchemaParserCtxt *, xmlSchemaIDCMatcherPtr)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"vctxt_inode\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !29 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !36, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.declare(metadata i8** %3, metadata !38, metadata !DIExpression()), !dbg !39
  %4 = load i64, i64* %2, align 8, !dbg !40
  %5 = call noalias i8* @malloc(i64 noundef %4) #7, !dbg !41
  store i8* %5, i8** %3, align 8, !dbg !39
  %6 = load i8*, i8** %3, align 8, !dbg !42
  ret i8* %6, !dbg !43
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchemaVErrMemory(i8* noundef %0, i8* noundef %1, i8* noundef %2) #0 !dbg !44 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !50, metadata !DIExpression()), !dbg !51
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !52, metadata !DIExpression()), !dbg !53
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !54, metadata !DIExpression()), !dbg !55
  ret void, !dbg !56
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_function(%struct.xmlSchemaParserCtxt* noundef %0, %struct.xmlSchemaIDCMatcher* noundef %1) #0 !dbg !57 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xmlSchemaParserCtxt*, align 8
  %5 = alloca %struct.xmlSchemaIDCMatcher*, align 8
  %6 = alloca %struct.xmlSchemaIDCMatcher*, align 8
  store %struct.xmlSchemaParserCtxt* %0, %struct.xmlSchemaParserCtxt** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.xmlSchemaParserCtxt** %4, metadata !62, metadata !DIExpression()), !dbg !63
  store %struct.xmlSchemaIDCMatcher* %1, %struct.xmlSchemaIDCMatcher** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.xmlSchemaIDCMatcher** %5, metadata !64, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.declare(metadata %struct.xmlSchemaIDCMatcher** %6, metadata !66, metadata !DIExpression()), !dbg !67
  %7 = call i8* @xmlMalloc(i64 noundef 16), !dbg !68
  %8 = bitcast i8* %7 to %struct.xmlSchemaIDCMatcher*, !dbg !71
  store %struct.xmlSchemaIDCMatcher* %8, %struct.xmlSchemaIDCMatcher** %6, align 8, !dbg !72
  %9 = load %struct.xmlSchemaIDCMatcher*, %struct.xmlSchemaIDCMatcher** %6, align 8, !dbg !73
  %10 = icmp eq %struct.xmlSchemaIDCMatcher* %9, null, !dbg !75
  br i1 %10, label %11, label %14, !dbg !76

11:                                               ; preds = %2
  %12 = load %struct.xmlSchemaParserCtxt*, %struct.xmlSchemaParserCtxt** %4, align 8, !dbg !77
  %13 = bitcast %struct.xmlSchemaParserCtxt* %12 to i8*, !dbg !77
  call void @xmlSchemaVErrMemory(i8* noundef %13, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* noundef null), !dbg !79
  store i32 -1, i32* %3, align 4, !dbg !80
  br label %41, !dbg !80

14:                                               ; preds = %2
  %15 = load %struct.xmlSchemaIDCMatcher*, %struct.xmlSchemaIDCMatcher** %6, align 8, !dbg !81
  %16 = bitcast %struct.xmlSchemaIDCMatcher* %15 to i8*, !dbg !82
  %17 = call i8* @memset(i8* %16, i32 0, i64 16), !dbg !82
  %18 = load %struct.xmlSchemaIDCMatcher*, %struct.xmlSchemaIDCMatcher** %6, align 8, !dbg !83
  %19 = icmp ne %struct.xmlSchemaIDCMatcher* %18, null, !dbg !83
  br i1 %19, label %20, label %22, !dbg !83

20:                                               ; preds = %14
  br i1 true, label %21, label %22, !dbg !83

21:                                               ; preds = %20
  br label %24, !dbg !83

22:                                               ; preds = %20, %14
  %23 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([110 x i8], [110 x i8]* @.str.3, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !83
  br label %24, !dbg !83

24:                                               ; preds = %22, %21
  %25 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([110 x i8], [110 x i8]* @.str.3, i64 0, i64 0), i32 noundef 58, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !84
  %26 = load %struct.xmlSchemaIDCMatcher*, %struct.xmlSchemaIDCMatcher** %5, align 8, !dbg !85
  %27 = icmp eq %struct.xmlSchemaIDCMatcher* %26, null, !dbg !87
  br i1 %27, label %28, label %34, !dbg !88

28:                                               ; preds = %24
  %29 = load %struct.xmlSchemaIDCMatcher*, %struct.xmlSchemaIDCMatcher** %6, align 8, !dbg !89
  %30 = load %struct.xmlSchemaParserCtxt*, %struct.xmlSchemaParserCtxt** %4, align 8, !dbg !90
  %31 = getelementptr inbounds %struct.xmlSchemaParserCtxt, %struct.xmlSchemaParserCtxt* %30, i32 0, i32 0, !dbg !91
  %32 = load %struct.anon*, %struct.anon** %31, align 8, !dbg !91
  %33 = getelementptr inbounds %struct.anon, %struct.anon* %32, i32 0, i32 0, !dbg !92
  store %struct.xmlSchemaIDCMatcher* %29, %struct.xmlSchemaIDCMatcher** %33, align 8, !dbg !93
  br label %38, !dbg !90

34:                                               ; preds = %24
  %35 = load %struct.xmlSchemaIDCMatcher*, %struct.xmlSchemaIDCMatcher** %6, align 8, !dbg !94
  %36 = load %struct.xmlSchemaIDCMatcher*, %struct.xmlSchemaIDCMatcher** %5, align 8, !dbg !95
  %37 = getelementptr inbounds %struct.xmlSchemaIDCMatcher, %struct.xmlSchemaIDCMatcher* %36, i32 0, i32 1, !dbg !96
  store %struct.xmlSchemaIDCMatcher* %35, %struct.xmlSchemaIDCMatcher** %37, align 8, !dbg !97
  br label %38

38:                                               ; preds = %34, %28
  %39 = load %struct.xmlSchemaIDCMatcher*, %struct.xmlSchemaIDCMatcher** %6, align 8, !dbg !98
  %40 = getelementptr inbounds %struct.xmlSchemaIDCMatcher, %struct.xmlSchemaIDCMatcher* %39, i32 0, i32 0, !dbg !99
  store i32 1, i32* %40, align 8, !dbg !100
  store i32 0, i32* %3, align 4, !dbg !101
  br label %41, !dbg !101

41:                                               ; preds = %38, %11
  %42 = load i32, i32* %3, align 4, !dbg !102
  ret i32 %42, !dbg !102
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !103 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.xmlSchemaParserCtxt, align 8
  %3 = alloca %struct.xmlSchemaIDCMatcher*, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.xmlSchemaParserCtxt* %2, metadata !106, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.declare(metadata %struct.xmlSchemaIDCMatcher** %3, metadata !108, metadata !DIExpression()), !dbg !109
  store %struct.xmlSchemaIDCMatcher* null, %struct.xmlSchemaIDCMatcher** %3, align 8, !dbg !109
  %5 = call noalias i8* @malloc(i64 noundef 8) #7, !dbg !110
  %6 = bitcast i8* %5 to %struct.anon*, !dbg !111
  %7 = getelementptr inbounds %struct.xmlSchemaParserCtxt, %struct.xmlSchemaParserCtxt* %2, i32 0, i32 0, !dbg !112
  store %struct.anon* %6, %struct.anon** %7, align 8, !dbg !113
  %8 = getelementptr inbounds %struct.xmlSchemaParserCtxt, %struct.xmlSchemaParserCtxt* %2, i32 0, i32 0, !dbg !114
  %9 = load %struct.anon*, %struct.anon** %8, align 8, !dbg !114
  %10 = bitcast %struct.anon* %9 to i8*, !dbg !115
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 8, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0)), !dbg !116
  %11 = getelementptr inbounds %struct.xmlSchemaParserCtxt, %struct.xmlSchemaParserCtxt* %2, i32 0, i32 0, !dbg !117
  %12 = load %struct.anon*, %struct.anon** %11, align 8, !dbg !117
  %13 = icmp ne %struct.anon* %12, null, !dbg !118
  %14 = zext i1 %13 to i32, !dbg !118
  %15 = sext i32 %14 to i64, !dbg !119
  call void @klee_assume(i64 noundef %15), !dbg !120
  %16 = getelementptr inbounds %struct.xmlSchemaParserCtxt, %struct.xmlSchemaParserCtxt* %2, i32 0, i32 0, !dbg !121
  %17 = load %struct.anon*, %struct.anon** %16, align 8, !dbg !121
  %18 = getelementptr inbounds %struct.anon, %struct.anon* %17, i32 0, i32 0, !dbg !122
  store %struct.xmlSchemaIDCMatcher* null, %struct.xmlSchemaIDCMatcher** %18, align 8, !dbg !123
  call void @llvm.dbg.declare(metadata i32* %4, metadata !124, metadata !DIExpression()), !dbg !125
  %19 = load %struct.xmlSchemaIDCMatcher*, %struct.xmlSchemaIDCMatcher** %3, align 8, !dbg !126
  %20 = call i32 @target_function(%struct.xmlSchemaParserCtxt* noundef %2, %struct.xmlSchemaIDCMatcher* noundef %19), !dbg !127
  store i32 %20, i32* %4, align 4, !dbg !125
  %21 = getelementptr inbounds %struct.xmlSchemaParserCtxt, %struct.xmlSchemaParserCtxt* %2, i32 0, i32 0, !dbg !128
  %22 = load %struct.anon*, %struct.anon** %21, align 8, !dbg !128
  %23 = bitcast %struct.anon* %22 to i8*, !dbg !129
  call void @free(i8* noundef %23) #7, !dbg !130
  ret i32 0, !dbg !131
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !132 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !136, metadata !DIExpression()), !dbg !137
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !138, metadata !DIExpression()), !dbg !139
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !140, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.declare(metadata i8** %7, metadata !142, metadata !DIExpression()), !dbg !144
  %8 = load i8*, i8** %4, align 8, !dbg !145
  store i8* %8, i8** %7, align 8, !dbg !144
  br label %9, !dbg !146

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !147
  %11 = add i64 %10, -1, !dbg !147
  store i64 %11, i64* %6, align 8, !dbg !147
  %12 = icmp ugt i64 %10, 0, !dbg !148
  br i1 %12, label %13, label %18, !dbg !146

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !149
  %15 = trunc i32 %14 to i8, !dbg !149
  %16 = load i8*, i8** %7, align 8, !dbg !150
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !150
  store i8* %17, i8** %7, align 8, !dbg !150
  store i8 %15, i8* %16, align 1, !dbg !151
  br label %9, !dbg !146, !llvm.loop !152

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !154
  ret i8* %19, !dbg !155
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28, !28}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/319_xmlschemas.c_23477_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "4ffc89056c3dcce07830a4c15a198185")
!2 = !{!3, !11, !12}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaIDCMatcherPtr", file: !1, line: 12, baseType: !4)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaIDCMatcher", file: !1, line: 11, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xmlSchemaIDCMatcher", file: !1, line: 14, size: 128, elements: !7)
!7 = !{!8, !10}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6, file: !1, line: 15, baseType: !9, size: 32)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6, file: !1, line: 16, baseType: !3, size: 64, offset: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !14, file: !1, line: 20, size: 64, elements: !17)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xmlSchemaParserCtxt", file: !1, line: 19, size: 64, elements: !15)
!15 = !{!16}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "inode", scope: !14, file: !1, line: 22, baseType: !12, size: 64)
!17 = !{!18}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "idcMatchers", scope: !13, file: !1, line: 21, baseType: !3, size: 64)
!19 = distinct !DICompileUnit(language: DW_LANG_C99, file: !20, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!20 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!21 = !{i32 7, !"Dwarf Version", i32 5}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 1, !"wchar_size", i32 4}
!24 = !{i32 7, !"PIC Level", i32 2}
!25 = !{i32 7, !"PIE Level", i32 2}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"Ubuntu clang version 14.0.6"}
!29 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 26, type: !30, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!30 = !DISubroutineType(types: !31)
!31 = !{!11, !32}
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !33, line: 46, baseType: !34)
!33 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!34 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!35 = !{}
!36 = !DILocalVariable(name: "size", arg: 1, scope: !29, file: !1, line: 26, type: !32)
!37 = !DILocation(line: 26, column: 24, scope: !29)
!38 = !DILocalVariable(name: "ptr", scope: !29, file: !1, line: 27, type: !11)
!39 = !DILocation(line: 27, column: 11, scope: !29)
!40 = !DILocation(line: 27, column: 24, scope: !29)
!41 = !DILocation(line: 27, column: 17, scope: !29)
!42 = !DILocation(line: 28, column: 12, scope: !29)
!43 = !DILocation(line: 28, column: 5, scope: !29)
!44 = distinct !DISubprogram(name: "xmlSchemaVErrMemory", scope: !1, file: !1, line: 32, type: !45, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !11, !47, !11}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!49 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!50 = !DILocalVariable(name: "vctxt", arg: 1, scope: !44, file: !1, line: 32, type: !11)
!51 = !DILocation(line: 32, column: 32, scope: !44)
!52 = !DILocalVariable(name: "msg", arg: 2, scope: !44, file: !1, line: 32, type: !47)
!53 = !DILocation(line: 32, column: 51, scope: !44)
!54 = !DILocalVariable(name: "unused", arg: 3, scope: !44, file: !1, line: 32, type: !11)
!55 = !DILocation(line: 32, column: 62, scope: !44)
!56 = !DILocation(line: 34, column: 1, scope: !44)
!57 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 37, type: !58, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!58 = !DISubroutineType(types: !59)
!59 = !{!9, !60, !3}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaParserCtxt", file: !1, line: 10, baseType: !14)
!62 = !DILocalVariable(name: "vctxt", arg: 1, scope: !57, file: !1, line: 37, type: !60)
!63 = !DILocation(line: 37, column: 42, scope: !57)
!64 = !DILocalVariable(name: "last", arg: 2, scope: !57, file: !1, line: 37, type: !3)
!65 = !DILocation(line: 37, column: 72, scope: !57)
!66 = !DILocalVariable(name: "matcher", scope: !57, file: !1, line: 38, type: !3)
!67 = !DILocation(line: 38, column: 28, scope: !57)
!68 = !DILocation(line: 44, column: 43, scope: !69)
!69 = distinct !DILexicalBlock(scope: !70, file: !1, line: 43, column: 12)
!70 = distinct !DILexicalBlock(scope: !57, file: !1, line: 40, column: 9)
!71 = !DILocation(line: 44, column: 19, scope: !69)
!72 = !DILocation(line: 44, column: 17, scope: !69)
!73 = !DILocation(line: 45, column: 13, scope: !74)
!74 = distinct !DILexicalBlock(scope: !69, file: !1, line: 45, column: 13)
!75 = !DILocation(line: 45, column: 21, scope: !74)
!76 = !DILocation(line: 45, column: 13, scope: !69)
!77 = !DILocation(line: 46, column: 33, scope: !78)
!78 = distinct !DILexicalBlock(scope: !74, file: !1, line: 45, column: 30)
!79 = !DILocation(line: 46, column: 13, scope: !78)
!80 = !DILocation(line: 47, column: 13, scope: !78)
!81 = !DILocation(line: 51, column: 16, scope: !69)
!82 = !DILocation(line: 51, column: 9, scope: !69)
!83 = !DILocation(line: 55, column: 9, scope: !69)
!84 = !DILocation(line: 58, column: 9, scope: !69)
!85 = !DILocation(line: 61, column: 9, scope: !86)
!86 = distinct !DILexicalBlock(scope: !57, file: !1, line: 61, column: 9)
!87 = !DILocation(line: 61, column: 14, scope: !86)
!88 = !DILocation(line: 61, column: 9, scope: !57)
!89 = !DILocation(line: 62, column: 37, scope: !86)
!90 = !DILocation(line: 62, column: 9, scope: !86)
!91 = !DILocation(line: 62, column: 16, scope: !86)
!92 = !DILocation(line: 62, column: 23, scope: !86)
!93 = !DILocation(line: 62, column: 35, scope: !86)
!94 = !DILocation(line: 64, column: 22, scope: !86)
!95 = !DILocation(line: 64, column: 9, scope: !86)
!96 = !DILocation(line: 64, column: 15, scope: !86)
!97 = !DILocation(line: 64, column: 20, scope: !86)
!98 = !DILocation(line: 66, column: 5, scope: !57)
!99 = !DILocation(line: 66, column: 14, scope: !57)
!100 = !DILocation(line: 66, column: 19, scope: !57)
!101 = !DILocation(line: 68, column: 5, scope: !57)
!102 = !DILocation(line: 69, column: 1, scope: !57)
!103 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 71, type: !104, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!104 = !DISubroutineType(types: !105)
!105 = !{!9}
!106 = !DILocalVariable(name: "vctxt", scope: !103, file: !1, line: 73, type: !61)
!107 = !DILocation(line: 73, column: 25, scope: !103)
!108 = !DILocalVariable(name: "last", scope: !103, file: !1, line: 74, type: !3)
!109 = !DILocation(line: 74, column: 28, scope: !103)
!110 = !DILocation(line: 77, column: 40, scope: !103)
!111 = !DILocation(line: 77, column: 19, scope: !103)
!112 = !DILocation(line: 77, column: 11, scope: !103)
!113 = !DILocation(line: 77, column: 17, scope: !103)
!114 = !DILocation(line: 80, column: 30, scope: !103)
!115 = !DILocation(line: 80, column: 24, scope: !103)
!116 = !DILocation(line: 80, column: 5, scope: !103)
!117 = !DILocation(line: 83, column: 23, scope: !103)
!118 = !DILocation(line: 83, column: 29, scope: !103)
!119 = !DILocation(line: 83, column: 17, scope: !103)
!120 = !DILocation(line: 83, column: 5, scope: !103)
!121 = !DILocation(line: 86, column: 11, scope: !103)
!122 = !DILocation(line: 86, column: 18, scope: !103)
!123 = !DILocation(line: 86, column: 30, scope: !103)
!124 = !DILocalVariable(name: "result", scope: !103, file: !1, line: 89, type: !9)
!125 = !DILocation(line: 89, column: 9, scope: !103)
!126 = !DILocation(line: 89, column: 42, scope: !103)
!127 = !DILocation(line: 89, column: 18, scope: !103)
!128 = !DILocation(line: 92, column: 16, scope: !103)
!129 = !DILocation(line: 92, column: 10, scope: !103)
!130 = !DILocation(line: 92, column: 5, scope: !103)
!131 = !DILocation(line: 94, column: 5, scope: !103)
!132 = distinct !DISubprogram(name: "memset", scope: !133, file: !133, line: 12, type: !134, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !35)
!133 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!134 = !DISubroutineType(types: !135)
!135 = !{!11, !11, !9, !32}
!136 = !DILocalVariable(name: "dst", arg: 1, scope: !132, file: !133, line: 12, type: !11)
!137 = !DILocation(line: 12, column: 20, scope: !132)
!138 = !DILocalVariable(name: "s", arg: 2, scope: !132, file: !133, line: 12, type: !9)
!139 = !DILocation(line: 12, column: 29, scope: !132)
!140 = !DILocalVariable(name: "count", arg: 3, scope: !132, file: !133, line: 12, type: !32)
!141 = !DILocation(line: 12, column: 39, scope: !132)
!142 = !DILocalVariable(name: "a", scope: !132, file: !133, line: 13, type: !143)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!144 = !DILocation(line: 13, column: 9, scope: !132)
!145 = !DILocation(line: 13, column: 13, scope: !132)
!146 = !DILocation(line: 14, column: 3, scope: !132)
!147 = !DILocation(line: 14, column: 15, scope: !132)
!148 = !DILocation(line: 14, column: 18, scope: !132)
!149 = !DILocation(line: 15, column: 12, scope: !132)
!150 = !DILocation(line: 15, column: 7, scope: !132)
!151 = !DILocation(line: 15, column: 10, scope: !132)
!152 = distinct !{!152, !146, !149, !153}
!153 = !{!"llvm.loop.mustprogress"}
!154 = !DILocation(line: 16, column: 10, scope: !132)
!155 = !DILocation(line: 16, column: 3, scope: !132)

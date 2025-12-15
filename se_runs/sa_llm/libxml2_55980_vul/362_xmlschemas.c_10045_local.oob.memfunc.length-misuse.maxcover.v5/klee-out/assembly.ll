; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/362_xmlschemas.c_10045_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/362_xmlschemas.c_10045_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaParserCtxt = type { i32, i8* }

@.str = private unnamed_addr constant [14 x i8] c"item_list_ptr\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"allocating schema parser context\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"(ret != ((void*)0)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [110 x i8] c"se_runs/sa_llm/libxml2_55980_vul/362_xmlschemas.c_10045_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlSchemaNewParserCtxt = private unnamed_addr constant [52 x i8] c"xmlSchemaParserCtxtPtr xmlSchemaNewParserCtxt(void)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !22 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i8** %3, metadata !31, metadata !DIExpression()), !dbg !32
  %4 = load i64, i64* %2, align 8, !dbg !33
  %5 = call noalias i8* @malloc(i64 noundef %4) #7, !dbg !34
  store i8* %5, i8** %3, align 8, !dbg !32
  %6 = load i8*, i8** %3, align 8, !dbg !35
  ret i8* %6, !dbg !36
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !37 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !40, metadata !DIExpression()), !dbg !41
  %3 = load i8*, i8** %2, align 8, !dbg !42
  call void @free(i8* noundef %3) #7, !dbg !43
  ret void, !dbg !44
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchemaPErrMemory(i8* noundef %0, i8* noundef %1, i8* noundef %2) #0 !dbg !45 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !51, metadata !DIExpression()), !dbg !52
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !53, metadata !DIExpression()), !dbg !54
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !55, metadata !DIExpression()), !dbg !56
  ret void, !dbg !57
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlSchemaItemListCreate() #0 !dbg !58 {
  %1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !61, metadata !DIExpression()), !dbg !62
  %2 = bitcast i8** %1 to i8*, !dbg !63
  call void @klee_make_symbolic(i8* noundef %2, i64 noundef 8, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)), !dbg !64
  %3 = load i8*, i8** %1, align 8, !dbg !65
  %4 = icmp eq i8* %3, null, !dbg !66
  br i1 %4, label %8, label %5, !dbg !67

5:                                                ; preds = %0
  %6 = load i8*, i8** %1, align 8, !dbg !68
  %7 = icmp ne i8* %6, null, !dbg !69
  br label %8, !dbg !67

8:                                                ; preds = %5, %0
  %9 = phi i1 [ true, %0 ], [ %7, %5 ]
  %10 = zext i1 %9 to i32, !dbg !67
  %11 = sext i32 %10 to i64, !dbg !65
  call void @klee_assume(i64 noundef %11), !dbg !70
  %12 = load i8*, i8** %1, align 8, !dbg !71
  ret i8* %12, !dbg !72
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlSchemaParserCtxt* @xmlSchemaNewParserCtxt() #0 !dbg !73 {
  %1 = alloca %struct._xmlSchemaParserCtxt*, align 8
  %2 = alloca %struct._xmlSchemaParserCtxt*, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaParserCtxt** %2, metadata !76, metadata !DIExpression()), !dbg !77
  %3 = call i8* @xmlMalloc(i64 noundef 16), !dbg !78
  %4 = bitcast i8* %3 to %struct._xmlSchemaParserCtxt*, !dbg !79
  store %struct._xmlSchemaParserCtxt* %4, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !80
  %5 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !81
  %6 = icmp eq %struct._xmlSchemaParserCtxt* %5, null, !dbg !83
  br i1 %6, label %7, label %8, !dbg !84

7:                                                ; preds = %0
  call void @xmlSchemaPErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* noundef null), !dbg !85
  store %struct._xmlSchemaParserCtxt* null, %struct._xmlSchemaParserCtxt** %1, align 8, !dbg !87
  br label %34, !dbg !87

8:                                                ; preds = %0
  %9 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !88
  %10 = icmp ne %struct._xmlSchemaParserCtxt* %9, null, !dbg !88
  br i1 %10, label %11, label %13, !dbg !88

11:                                               ; preds = %8
  br i1 true, label %12, label %13, !dbg !88

12:                                               ; preds = %11
  br label %15, !dbg !88

13:                                               ; preds = %11, %8
  %14 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([110 x i8], [110 x i8]* @.str.4, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.xmlSchemaNewParserCtxt, i64 0, i64 0)), !dbg !88
  br label %15, !dbg !88

15:                                               ; preds = %13, %12
  %16 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([110 x i8], [110 x i8]* @.str.4, i64 0, i64 0), i32 noundef 58, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.xmlSchemaNewParserCtxt, i64 0, i64 0)), !dbg !89
  %17 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !90
  %18 = bitcast %struct._xmlSchemaParserCtxt* %17 to i8*, !dbg !91
  %19 = call i8* @memset(i8* %18, i32 0, i64 16), !dbg !91
  %20 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !92
  %21 = getelementptr inbounds %struct._xmlSchemaParserCtxt, %struct._xmlSchemaParserCtxt* %20, i32 0, i32 0, !dbg !93
  store i32 1, i32* %21, align 8, !dbg !94
  %22 = call i8* @xmlSchemaItemListCreate(), !dbg !95
  %23 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !96
  %24 = getelementptr inbounds %struct._xmlSchemaParserCtxt, %struct._xmlSchemaParserCtxt* %23, i32 0, i32 1, !dbg !97
  store i8* %22, i8** %24, align 8, !dbg !98
  %25 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !99
  %26 = getelementptr inbounds %struct._xmlSchemaParserCtxt, %struct._xmlSchemaParserCtxt* %25, i32 0, i32 1, !dbg !101
  %27 = load i8*, i8** %26, align 8, !dbg !101
  %28 = icmp eq i8* %27, null, !dbg !102
  br i1 %28, label %29, label %32, !dbg !103

29:                                               ; preds = %15
  %30 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !104
  %31 = bitcast %struct._xmlSchemaParserCtxt* %30 to i8*, !dbg !104
  call void @xmlFree(i8* noundef %31), !dbg !106
  store %struct._xmlSchemaParserCtxt* null, %struct._xmlSchemaParserCtxt** %1, align 8, !dbg !107
  br label %34, !dbg !107

32:                                               ; preds = %15
  %33 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !108
  store %struct._xmlSchemaParserCtxt* %33, %struct._xmlSchemaParserCtxt** %1, align 8, !dbg !109
  br label %34, !dbg !109

34:                                               ; preds = %32, %29, %7
  %35 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %1, align 8, !dbg !110
  ret %struct._xmlSchemaParserCtxt* %35, !dbg !110
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !111 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlSchemaParserCtxt*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaParserCtxt** %2, metadata !114, metadata !DIExpression()), !dbg !115
  %3 = call %struct._xmlSchemaParserCtxt* @xmlSchemaNewParserCtxt(), !dbg !116
  store %struct._xmlSchemaParserCtxt* %3, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !117
  %4 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !118
  %5 = icmp ne %struct._xmlSchemaParserCtxt* %4, null, !dbg !120
  br i1 %5, label %6, label %18, !dbg !121

6:                                                ; preds = %0
  %7 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !122
  %8 = getelementptr inbounds %struct._xmlSchemaParserCtxt, %struct._xmlSchemaParserCtxt* %7, i32 0, i32 1, !dbg !125
  %9 = load i8*, i8** %8, align 8, !dbg !125
  %10 = icmp ne i8* %9, null, !dbg !126
  br i1 %10, label %11, label %15, !dbg !127

11:                                               ; preds = %6
  %12 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !128
  %13 = getelementptr inbounds %struct._xmlSchemaParserCtxt, %struct._xmlSchemaParserCtxt* %12, i32 0, i32 1, !dbg !130
  %14 = load i8*, i8** %13, align 8, !dbg !130
  call void @free(i8* noundef %14) #7, !dbg !131
  br label %15, !dbg !132

15:                                               ; preds = %11, %6
  %16 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !133
  %17 = bitcast %struct._xmlSchemaParserCtxt* %16 to i8*, !dbg !133
  call void @xmlFree(i8* noundef %17), !dbg !134
  br label %18, !dbg !135

18:                                               ; preds = %15, %0
  ret i32 0, !dbg !136
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !137 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !141, metadata !DIExpression()), !dbg !142
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !143, metadata !DIExpression()), !dbg !144
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !145, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.declare(metadata i8** %7, metadata !147, metadata !DIExpression()), !dbg !149
  %8 = load i8*, i8** %4, align 8, !dbg !150
  store i8* %8, i8** %7, align 8, !dbg !149
  br label %9, !dbg !151

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !152
  %11 = add i64 %10, -1, !dbg !152
  store i64 %11, i64* %6, align 8, !dbg !152
  %12 = icmp ugt i64 %10, 0, !dbg !153
  br i1 %12, label %13, label %18, !dbg !151

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !154
  %15 = trunc i32 %14 to i8, !dbg !154
  %16 = load i8*, i8** %7, align 8, !dbg !155
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !155
  store i8* %17, i8** %7, align 8, !dbg !155
  store i8 %15, i8* %16, align 1, !dbg !156
  br label %9, !dbg !151, !llvm.loop !157

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !159
  ret i8* %19, !dbg !160
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21, !21}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/362_xmlschemas.c_10045_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "a5c3118d769135b24d38e0adedccaa9f")
!2 = !{!3, !11}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaParserCtxtPtr", file: !1, line: 11, baseType: !4)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaParserCtxt", file: !1, line: 10, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaParserCtxt", file: !1, line: 13, size: 128, elements: !7)
!7 = !{!8, !10}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6, file: !1, line: 14, baseType: !9, size: 32)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "attrProhibs", scope: !6, file: !1, line: 15, baseType: !11, size: 64, offset: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = distinct !DICompileUnit(language: DW_LANG_C99, file: !13, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!13 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!14 = !{i32 7, !"Dwarf Version", i32 5}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{i32 7, !"PIC Level", i32 2}
!18 = !{i32 7, !"PIE Level", i32 2}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"Ubuntu clang version 14.0.6"}
!22 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 19, type: !23, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!23 = !DISubroutineType(types: !24)
!24 = !{!11, !25}
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !26, line: 46, baseType: !27)
!26 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!27 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!28 = !{}
!29 = !DILocalVariable(name: "size", arg: 1, scope: !22, file: !1, line: 19, type: !25)
!30 = !DILocation(line: 19, column: 24, scope: !22)
!31 = !DILocalVariable(name: "ptr", scope: !22, file: !1, line: 20, type: !11)
!32 = !DILocation(line: 20, column: 11, scope: !22)
!33 = !DILocation(line: 20, column: 24, scope: !22)
!34 = !DILocation(line: 20, column: 17, scope: !22)
!35 = !DILocation(line: 21, column: 12, scope: !22)
!36 = !DILocation(line: 21, column: 5, scope: !22)
!37 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 25, type: !38, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!38 = !DISubroutineType(types: !39)
!39 = !{null, !11}
!40 = !DILocalVariable(name: "ptr", arg: 1, scope: !37, file: !1, line: 25, type: !11)
!41 = !DILocation(line: 25, column: 20, scope: !37)
!42 = !DILocation(line: 26, column: 10, scope: !37)
!43 = !DILocation(line: 26, column: 5, scope: !37)
!44 = !DILocation(line: 27, column: 1, scope: !37)
!45 = distinct !DISubprogram(name: "xmlSchemaPErrMemory", scope: !1, file: !1, line: 30, type: !46, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !11, !48, !48}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!50 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!51 = !DILocalVariable(name: "ctxt", arg: 1, scope: !45, file: !1, line: 30, type: !11)
!52 = !DILocation(line: 30, column: 32, scope: !45)
!53 = !DILocalVariable(name: "msg", arg: 2, scope: !45, file: !1, line: 30, type: !48)
!54 = !DILocation(line: 30, column: 50, scope: !45)
!55 = !DILocalVariable(name: "extra", arg: 3, scope: !45, file: !1, line: 30, type: !48)
!56 = !DILocation(line: 30, column: 67, scope: !45)
!57 = !DILocation(line: 32, column: 1, scope: !45)
!58 = distinct !DISubprogram(name: "xmlSchemaItemListCreate", scope: !1, file: !1, line: 35, type: !59, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!59 = !DISubroutineType(types: !60)
!60 = !{!11}
!61 = !DILocalVariable(name: "ptr", scope: !58, file: !1, line: 37, type: !11)
!62 = !DILocation(line: 37, column: 11, scope: !58)
!63 = !DILocation(line: 38, column: 24, scope: !58)
!64 = !DILocation(line: 38, column: 5, scope: !58)
!65 = !DILocation(line: 39, column: 17, scope: !58)
!66 = !DILocation(line: 39, column: 21, scope: !58)
!67 = !DILocation(line: 39, column: 26, scope: !58)
!68 = !DILocation(line: 39, column: 29, scope: !58)
!69 = !DILocation(line: 39, column: 33, scope: !58)
!70 = !DILocation(line: 39, column: 5, scope: !58)
!71 = !DILocation(line: 40, column: 12, scope: !58)
!72 = !DILocation(line: 40, column: 5, scope: !58)
!73 = distinct !DISubprogram(name: "xmlSchemaNewParserCtxt", scope: !1, file: !1, line: 44, type: !74, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!74 = !DISubroutineType(types: !75)
!75 = !{!3}
!76 = !DILocalVariable(name: "ret", scope: !73, file: !1, line: 45, type: !3)
!77 = !DILocation(line: 45, column: 28, scope: !73)
!78 = !DILocation(line: 47, column: 36, scope: !73)
!79 = !DILocation(line: 47, column: 11, scope: !73)
!80 = !DILocation(line: 47, column: 9, scope: !73)
!81 = !DILocation(line: 48, column: 9, scope: !82)
!82 = distinct !DILexicalBlock(scope: !73, file: !1, line: 48, column: 9)
!83 = !DILocation(line: 48, column: 13, scope: !82)
!84 = !DILocation(line: 48, column: 9, scope: !73)
!85 = !DILocation(line: 49, column: 9, scope: !86)
!86 = distinct !DILexicalBlock(scope: !82, file: !1, line: 48, column: 22)
!87 = !DILocation(line: 50, column: 9, scope: !86)
!88 = !DILocation(line: 55, column: 5, scope: !73)
!89 = !DILocation(line: 58, column: 5, scope: !73)
!90 = !DILocation(line: 60, column: 12, scope: !73)
!91 = !DILocation(line: 60, column: 5, scope: !73)
!92 = !DILocation(line: 61, column: 5, scope: !73)
!93 = !DILocation(line: 61, column: 10, scope: !73)
!94 = !DILocation(line: 61, column: 15, scope: !73)
!95 = !DILocation(line: 62, column: 24, scope: !73)
!96 = !DILocation(line: 62, column: 5, scope: !73)
!97 = !DILocation(line: 62, column: 10, scope: !73)
!98 = !DILocation(line: 62, column: 22, scope: !73)
!99 = !DILocation(line: 63, column: 9, scope: !100)
!100 = distinct !DILexicalBlock(scope: !73, file: !1, line: 63, column: 9)
!101 = !DILocation(line: 63, column: 14, scope: !100)
!102 = !DILocation(line: 63, column: 26, scope: !100)
!103 = !DILocation(line: 63, column: 9, scope: !73)
!104 = !DILocation(line: 64, column: 17, scope: !105)
!105 = distinct !DILexicalBlock(scope: !100, file: !1, line: 63, column: 35)
!106 = !DILocation(line: 64, column: 9, scope: !105)
!107 = !DILocation(line: 65, column: 9, scope: !105)
!108 = !DILocation(line: 67, column: 12, scope: !73)
!109 = !DILocation(line: 67, column: 5, scope: !73)
!110 = !DILocation(line: 68, column: 1, scope: !73)
!111 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 71, type: !112, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!112 = !DISubroutineType(types: !113)
!113 = !{!9}
!114 = !DILocalVariable(name: "ctxt", scope: !111, file: !1, line: 72, type: !3)
!115 = !DILocation(line: 72, column: 28, scope: !111)
!116 = !DILocation(line: 75, column: 12, scope: !111)
!117 = !DILocation(line: 75, column: 10, scope: !111)
!118 = !DILocation(line: 78, column: 9, scope: !119)
!119 = distinct !DILexicalBlock(scope: !111, file: !1, line: 78, column: 9)
!120 = !DILocation(line: 78, column: 14, scope: !119)
!121 = !DILocation(line: 78, column: 9, scope: !111)
!122 = !DILocation(line: 79, column: 13, scope: !123)
!123 = distinct !DILexicalBlock(scope: !124, file: !1, line: 79, column: 13)
!124 = distinct !DILexicalBlock(scope: !119, file: !1, line: 78, column: 23)
!125 = !DILocation(line: 79, column: 19, scope: !123)
!126 = !DILocation(line: 79, column: 31, scope: !123)
!127 = !DILocation(line: 79, column: 13, scope: !124)
!128 = !DILocation(line: 81, column: 18, scope: !129)
!129 = distinct !DILexicalBlock(scope: !123, file: !1, line: 79, column: 40)
!130 = !DILocation(line: 81, column: 24, scope: !129)
!131 = !DILocation(line: 81, column: 13, scope: !129)
!132 = !DILocation(line: 82, column: 9, scope: !129)
!133 = !DILocation(line: 83, column: 17, scope: !124)
!134 = !DILocation(line: 83, column: 9, scope: !124)
!135 = !DILocation(line: 84, column: 5, scope: !124)
!136 = !DILocation(line: 86, column: 5, scope: !111)
!137 = distinct !DISubprogram(name: "memset", scope: !138, file: !138, line: 12, type: !139, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !28)
!138 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!139 = !DISubroutineType(types: !140)
!140 = !{!11, !11, !9, !25}
!141 = !DILocalVariable(name: "dst", arg: 1, scope: !137, file: !138, line: 12, type: !11)
!142 = !DILocation(line: 12, column: 20, scope: !137)
!143 = !DILocalVariable(name: "s", arg: 2, scope: !137, file: !138, line: 12, type: !9)
!144 = !DILocation(line: 12, column: 29, scope: !137)
!145 = !DILocalVariable(name: "count", arg: 3, scope: !137, file: !138, line: 12, type: !25)
!146 = !DILocation(line: 12, column: 39, scope: !137)
!147 = !DILocalVariable(name: "a", scope: !137, file: !138, line: 13, type: !148)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!149 = !DILocation(line: 13, column: 9, scope: !137)
!150 = !DILocation(line: 13, column: 13, scope: !137)
!151 = !DILocation(line: 14, column: 3, scope: !137)
!152 = !DILocation(line: 14, column: 15, scope: !137)
!153 = !DILocation(line: 14, column: 18, scope: !137)
!154 = !DILocation(line: 15, column: 12, scope: !137)
!155 = !DILocation(line: 15, column: 7, scope: !137)
!156 = !DILocation(line: 15, column: 10, scope: !137)
!157 = distinct !{!157, !151, !154, !158}
!158 = !{!"llvm.loop.mustprogress"}
!159 = !DILocation(line: 16, column: 10, scope: !137)
!160 = !DILocation(line: 16, column: 3, scope: !137)

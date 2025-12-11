; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/330_xmlschemas.c_22372_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/330_xmlschemas.c_22372_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaValidCtxt = type { i8* }
%struct._xmlSchemaIDCStateObj = type { [256 x i8] }

@.str = private unnamed_addr constant [31 x i8] c"allocating an IDC state object\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [81 x i8] c"(sizeof(xmlSchemaIDCStateObj) <= malloc_usable_size(sto)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [110 x i8] c"se_runs/sa_llm/libxml2_62911_vul/330_xmlschemas.c_22372_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlSchemaFormatQName = private unnamed_addr constant [57 x i8] c"int xmlSchemaFormatQName(xmlSchemaValidCtxt *, int, int)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"vctxt\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"an\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"ret\00", align 1

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
define dso_local i32 @xmlSchemaFormatQName(%struct._xmlSchemaValidCtxt* noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !36 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._xmlSchemaValidCtxt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._xmlSchemaIDCStateObj*, align 8
  store %struct._xmlSchemaValidCtxt* %0, %struct._xmlSchemaValidCtxt** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaValidCtxt** %5, metadata !45, metadata !DIExpression()), !dbg !46
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !47, metadata !DIExpression()), !dbg !48
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !49, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaIDCStateObj** %8, metadata !51, metadata !DIExpression()), !dbg !52
  %9 = call noalias i8* @malloc(i64 noundef 256) #7, !dbg !53
  %10 = bitcast i8* %9 to %struct._xmlSchemaIDCStateObj*, !dbg !54
  store %struct._xmlSchemaIDCStateObj* %10, %struct._xmlSchemaIDCStateObj** %8, align 8, !dbg !55
  %11 = load %struct._xmlSchemaIDCStateObj*, %struct._xmlSchemaIDCStateObj** %8, align 8, !dbg !56
  %12 = icmp eq %struct._xmlSchemaIDCStateObj* %11, null, !dbg !58
  br i1 %12, label %13, label %14, !dbg !59

13:                                               ; preds = %3
  call void @xmlSchemaVErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* noundef null), !dbg !60
  store i32 -1, i32* %4, align 4, !dbg !62
  br label %36, !dbg !62

14:                                               ; preds = %3
  %15 = load %struct._xmlSchemaIDCStateObj*, %struct._xmlSchemaIDCStateObj** %8, align 8, !dbg !63
  %16 = call i32 (%struct._xmlSchemaIDCStateObj*, ...) bitcast (i32 (...)* @malloc_usable_size to i32 (%struct._xmlSchemaIDCStateObj*, ...)*)(%struct._xmlSchemaIDCStateObj* noundef %15), !dbg !63
  %17 = sext i32 %16 to i64, !dbg !63
  %18 = icmp ule i64 256, %17, !dbg !63
  br i1 %18, label %19, label %21, !dbg !63

19:                                               ; preds = %14
  br i1 true, label %20, label %21, !dbg !63

20:                                               ; preds = %19
  br label %23, !dbg !63

21:                                               ; preds = %19, %14
  %22 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([110 x i8], [110 x i8]* @.str.3, i64 0, i64 0), i32 noundef 41, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.xmlSchemaFormatQName, i64 0, i64 0)), !dbg !63
  br label %23, !dbg !63

23:                                               ; preds = %21, %20
  %24 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([110 x i8], [110 x i8]* @.str.3, i64 0, i64 0), i32 noundef 44, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.xmlSchemaFormatQName, i64 0, i64 0)), !dbg !64
  %25 = load %struct._xmlSchemaIDCStateObj*, %struct._xmlSchemaIDCStateObj** %8, align 8, !dbg !65
  %26 = bitcast %struct._xmlSchemaIDCStateObj* %25 to i8*, !dbg !66
  %27 = call i8* @memset(i8* %26, i32 0, i64 256), !dbg !66
  %28 = load %struct._xmlSchemaValidCtxt*, %struct._xmlSchemaValidCtxt** %5, align 8, !dbg !67
  %29 = getelementptr inbounds %struct._xmlSchemaValidCtxt, %struct._xmlSchemaValidCtxt* %28, i32 0, i32 0, !dbg !69
  %30 = load i8*, i8** %29, align 8, !dbg !69
  %31 = icmp ne i8* %30, null, !dbg !70
  br i1 %31, label %32, label %33, !dbg !71

32:                                               ; preds = %23
  br label %33, !dbg !72

33:                                               ; preds = %32, %23
  %34 = load %struct._xmlSchemaIDCStateObj*, %struct._xmlSchemaIDCStateObj** %8, align 8, !dbg !74
  %35 = bitcast %struct._xmlSchemaIDCStateObj* %34 to i8*, !dbg !74
  call void @free(i8* noundef %35) #7, !dbg !75
  store i32 0, i32* %4, align 4, !dbg !76
  br label %36, !dbg !76

36:                                               ; preds = %33, %13
  %37 = load i32, i32* %4, align 4, !dbg !77
  ret i32 %37, !dbg !77
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare i32 @malloc_usable_size(...) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !78 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlSchemaValidCtxt, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaValidCtxt* %2, metadata !81, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.declare(metadata i32* %3, metadata !83, metadata !DIExpression()), !dbg !84
  call void @llvm.dbg.declare(metadata i32* %4, metadata !85, metadata !DIExpression()), !dbg !86
  %5 = bitcast %struct._xmlSchemaValidCtxt* %2 to i8*, !dbg !87
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 8, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)), !dbg !88
  %6 = bitcast i32* %3 to i8*, !dbg !89
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)), !dbg !90
  %7 = bitcast i32* %4 to i8*, !dbg !91
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)), !dbg !92
  %8 = load i32, i32* %3, align 4, !dbg !93
  %9 = icmp sge i32 %8, 0, !dbg !94
  %10 = zext i1 %9 to i32, !dbg !94
  %11 = sext i32 %10 to i64, !dbg !93
  call void @klee_assume(i64 noundef %11), !dbg !95
  %12 = load i32, i32* %4, align 4, !dbg !96
  %13 = icmp sge i32 %12, 0, !dbg !97
  %14 = zext i1 %13 to i32, !dbg !97
  %15 = sext i32 %14 to i64, !dbg !96
  call void @klee_assume(i64 noundef %15), !dbg !98
  %16 = load i32, i32* %3, align 4, !dbg !99
  %17 = load i32, i32* %4, align 4, !dbg !100
  %18 = call i32 @xmlSchemaFormatQName(%struct._xmlSchemaValidCtxt* noundef %2, i32 noundef %16, i32 noundef %17), !dbg !101
  ret i32 0, !dbg !102
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !103 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !110, metadata !DIExpression()), !dbg !111
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !112, metadata !DIExpression()), !dbg !113
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !114, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.declare(metadata i8** %7, metadata !116, metadata !DIExpression()), !dbg !118
  %8 = load i8*, i8** %4, align 8, !dbg !119
  store i8* %8, i8** %7, align 8, !dbg !118
  br label %9, !dbg !120

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !121
  %11 = add i64 %10, -1, !dbg !121
  store i64 %11, i64* %6, align 8, !dbg !121
  %12 = icmp ugt i64 %10, 0, !dbg !122
  br i1 %12, label %13, label %18, !dbg !120

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !123
  %15 = trunc i32 %14 to i8, !dbg !123
  %16 = load i8*, i8** %7, align 8, !dbg !124
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !124
  store i8* %17, i8** %7, align 8, !dbg !124
  store i8 %15, i8* %16, align 1, !dbg !125
  br label %9, !dbg !120, !llvm.loop !126

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !128
  ret i8* %19, !dbg !129
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22, !22}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/330_xmlschemas.c_22372_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "baeab91c15c956eee9c076ebd25bf3e5")
!2 = !{!3, !12}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaIDCStateObj", file: !1, line: 10, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaIDCStateObj", file: !1, line: 14, size: 2048, elements: !6)
!6 = !{!7}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !5, file: !1, line: 15, baseType: !8, size: 2048)
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
!23 = distinct !DISubprogram(name: "xmlSchemaVErrMemory", scope: !1, file: !1, line: 23, type: !24, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!24 = !DISubroutineType(types: !25)
!25 = !{null, !12, !26, !26}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!28 = !{}
!29 = !DILocalVariable(name: "ctxt", arg: 1, scope: !23, file: !1, line: 23, type: !12)
!30 = !DILocation(line: 23, column: 32, scope: !23)
!31 = !DILocalVariable(name: "msg", arg: 2, scope: !23, file: !1, line: 23, type: !26)
!32 = !DILocation(line: 23, column: 50, scope: !23)
!33 = !DILocalVariable(name: "extra", arg: 3, scope: !23, file: !1, line: 23, type: !26)
!34 = !DILocation(line: 23, column: 67, scope: !23)
!35 = !DILocation(line: 25, column: 1, scope: !23)
!36 = distinct !DISubprogram(name: "xmlSchemaFormatQName", scope: !1, file: !1, line: 28, type: !37, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!37 = !DISubroutineType(types: !38)
!38 = !{!39, !40, !39, !39}
!39 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaValidCtxt", file: !1, line: 11, baseType: !42)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaValidCtxt", file: !1, line: 18, size: 64, elements: !43)
!43 = !{!44}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "xpathStates", scope: !42, file: !1, line: 19, baseType: !12, size: 64)
!45 = !DILocalVariable(name: "vctxt", arg: 1, scope: !36, file: !1, line: 28, type: !40)
!46 = !DILocation(line: 28, column: 46, scope: !36)
!47 = !DILocalVariable(name: "an", arg: 2, scope: !36, file: !1, line: 28, type: !39)
!48 = !DILocation(line: 28, column: 57, scope: !36)
!49 = !DILocalVariable(name: "ret", arg: 3, scope: !36, file: !1, line: 28, type: !39)
!50 = !DILocation(line: 28, column: 65, scope: !36)
!51 = !DILocalVariable(name: "sto", scope: !36, file: !1, line: 29, type: !3)
!52 = !DILocation(line: 29, column: 27, scope: !36)
!53 = !DILocation(line: 32, column: 34, scope: !36)
!54 = !DILocation(line: 32, column: 11, scope: !36)
!55 = !DILocation(line: 32, column: 9, scope: !36)
!56 = !DILocation(line: 33, column: 9, scope: !57)
!57 = distinct !DILexicalBlock(scope: !36, file: !1, line: 33, column: 9)
!58 = !DILocation(line: 33, column: 13, scope: !57)
!59 = !DILocation(line: 33, column: 9, scope: !36)
!60 = !DILocation(line: 34, column: 9, scope: !61)
!61 = distinct !DILexicalBlock(scope: !57, file: !1, line: 33, column: 22)
!62 = !DILocation(line: 35, column: 9, scope: !61)
!63 = !DILocation(line: 41, column: 5, scope: !36)
!64 = !DILocation(line: 44, column: 5, scope: !36)
!65 = !DILocation(line: 46, column: 12, scope: !36)
!66 = !DILocation(line: 46, column: 5, scope: !36)
!67 = !DILocation(line: 49, column: 9, scope: !68)
!68 = distinct !DILexicalBlock(scope: !36, file: !1, line: 49, column: 9)
!69 = !DILocation(line: 49, column: 16, scope: !68)
!70 = !DILocation(line: 49, column: 28, scope: !68)
!71 = !DILocation(line: 49, column: 9, scope: !36)
!72 = !DILocation(line: 51, column: 5, scope: !73)
!73 = distinct !DILexicalBlock(scope: !68, file: !1, line: 49, column: 37)
!74 = !DILocation(line: 53, column: 10, scope: !36)
!75 = !DILocation(line: 53, column: 5, scope: !36)
!76 = !DILocation(line: 54, column: 5, scope: !36)
!77 = !DILocation(line: 55, column: 1, scope: !36)
!78 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 57, type: !79, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!79 = !DISubroutineType(types: !80)
!80 = !{!39}
!81 = !DILocalVariable(name: "vctxt", scope: !78, file: !1, line: 59, type: !41)
!82 = !DILocation(line: 59, column: 24, scope: !78)
!83 = !DILocalVariable(name: "an", scope: !78, file: !1, line: 60, type: !39)
!84 = !DILocation(line: 60, column: 9, scope: !78)
!85 = !DILocalVariable(name: "ret", scope: !78, file: !1, line: 60, type: !39)
!86 = !DILocation(line: 60, column: 13, scope: !78)
!87 = !DILocation(line: 63, column: 24, scope: !78)
!88 = !DILocation(line: 63, column: 5, scope: !78)
!89 = !DILocation(line: 64, column: 24, scope: !78)
!90 = !DILocation(line: 64, column: 5, scope: !78)
!91 = !DILocation(line: 65, column: 24, scope: !78)
!92 = !DILocation(line: 65, column: 5, scope: !78)
!93 = !DILocation(line: 68, column: 17, scope: !78)
!94 = !DILocation(line: 68, column: 20, scope: !78)
!95 = !DILocation(line: 68, column: 5, scope: !78)
!96 = !DILocation(line: 69, column: 17, scope: !78)
!97 = !DILocation(line: 69, column: 21, scope: !78)
!98 = !DILocation(line: 69, column: 5, scope: !78)
!99 = !DILocation(line: 75, column: 34, scope: !78)
!100 = !DILocation(line: 75, column: 38, scope: !78)
!101 = !DILocation(line: 75, column: 5, scope: !78)
!102 = !DILocation(line: 77, column: 5, scope: !78)
!103 = distinct !DISubprogram(name: "memset", scope: !104, file: !104, line: 12, type: !105, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !28)
!104 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!105 = !DISubroutineType(types: !106)
!106 = !{!12, !12, !39, !107}
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !108, line: 46, baseType: !109)
!108 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!109 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!110 = !DILocalVariable(name: "dst", arg: 1, scope: !103, file: !104, line: 12, type: !12)
!111 = !DILocation(line: 12, column: 20, scope: !103)
!112 = !DILocalVariable(name: "s", arg: 2, scope: !103, file: !104, line: 12, type: !39)
!113 = !DILocation(line: 12, column: 29, scope: !103)
!114 = !DILocalVariable(name: "count", arg: 3, scope: !103, file: !104, line: 12, type: !107)
!115 = !DILocation(line: 12, column: 39, scope: !103)
!116 = !DILocalVariable(name: "a", scope: !103, file: !104, line: 13, type: !117)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!118 = !DILocation(line: 13, column: 9, scope: !103)
!119 = !DILocation(line: 13, column: 13, scope: !103)
!120 = !DILocation(line: 14, column: 3, scope: !103)
!121 = !DILocation(line: 14, column: 15, scope: !103)
!122 = !DILocation(line: 14, column: 18, scope: !103)
!123 = !DILocation(line: 15, column: 12, scope: !103)
!124 = !DILocation(line: 15, column: 7, scope: !103)
!125 = !DILocation(line: 15, column: 10, scope: !103)
!126 = distinct !{!126, !120, !123, !127}
!127 = !{!"llvm.loop.mustprogress"}
!128 = !DILocation(line: 16, column: 10, scope: !103)
!129 = !DILocation(line: 16, column: 3, scope: !103)

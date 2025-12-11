; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/369_xmlschemas.c_9837_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/369_xmlschemas.c_9837_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaSchemaRelation = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"symbolic_flag\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"allocating schema relation\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Allocation succeeded\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.4 = private unnamed_addr constant [69 x i8] c"(ret != ((void*)0) && \22Allocation succeeded\22) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [109 x i8] c"se_runs/sa_llm/libxml2_62911_vul/369_xmlschemas.c_9837_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlSchemaNewSchemaRelation = private unnamed_addr constant [58 x i8] c"xmlSchemaSchemaRelation *xmlSchemaNewSchemaRelation(void)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchemaPErrMemory(i8* noundef %0, i8* noundef %1, i8* noundef %2) #0 !dbg !20 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !27, metadata !DIExpression()), !dbg !28
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !29, metadata !DIExpression()), !dbg !30
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !31, metadata !DIExpression()), !dbg !32
  ret void, !dbg !33
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchemaFormatQName() #0 !dbg !34 {
  %1 = call %struct._xmlSchemaSchemaRelation* @xmlSchemaNewSchemaRelation(), !dbg !37
  ret void, !dbg !38
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct._xmlSchemaSchemaRelation* @xmlSchemaNewSchemaRelation() #0 !dbg !39 {
  %1 = alloca %struct._xmlSchemaSchemaRelation*, align 8
  %2 = alloca %struct._xmlSchemaSchemaRelation*, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaSchemaRelation** %2, metadata !42, metadata !DIExpression()), !dbg !43
  %3 = call noalias i8* @malloc(i64 noundef 4) #7, !dbg !44
  %4 = bitcast i8* %3 to %struct._xmlSchemaSchemaRelation*, !dbg !45
  store %struct._xmlSchemaSchemaRelation* %4, %struct._xmlSchemaSchemaRelation** %2, align 8, !dbg !46
  %5 = load %struct._xmlSchemaSchemaRelation*, %struct._xmlSchemaSchemaRelation** %2, align 8, !dbg !47
  %6 = icmp eq %struct._xmlSchemaSchemaRelation* %5, null, !dbg !49
  br i1 %6, label %7, label %8, !dbg !50

7:                                                ; preds = %0
  call void @xmlSchemaPErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* noundef null), !dbg !51
  store %struct._xmlSchemaSchemaRelation* null, %struct._xmlSchemaSchemaRelation** %1, align 8, !dbg !53
  br label %22, !dbg !53

8:                                                ; preds = %0
  %9 = load %struct._xmlSchemaSchemaRelation*, %struct._xmlSchemaSchemaRelation** %2, align 8, !dbg !54
  %10 = icmp ne %struct._xmlSchemaSchemaRelation* %9, null, !dbg !54
  br i1 %10, label %11, label %14, !dbg !54

11:                                               ; preds = %8
  br i1 true, label %12, label %14, !dbg !54

12:                                               ; preds = %11
  br i1 true, label %13, label %14, !dbg !54

13:                                               ; preds = %12
  br label %16, !dbg !54

14:                                               ; preds = %12, %11, %8
  %15 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.5, i64 0, i64 0), i32 noundef 38, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.xmlSchemaNewSchemaRelation, i64 0, i64 0)), !dbg !54
  br label %16, !dbg !54

16:                                               ; preds = %14, %13
  %17 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.5, i64 0, i64 0), i32 noundef 41, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.xmlSchemaNewSchemaRelation, i64 0, i64 0)), !dbg !55
  %18 = load %struct._xmlSchemaSchemaRelation*, %struct._xmlSchemaSchemaRelation** %2, align 8, !dbg !56
  %19 = bitcast %struct._xmlSchemaSchemaRelation* %18 to i8*, !dbg !57
  %20 = call i8* @memset(i8* %19, i32 0, i64 4), !dbg !57
  %21 = load %struct._xmlSchemaSchemaRelation*, %struct._xmlSchemaSchemaRelation** %2, align 8, !dbg !58
  store %struct._xmlSchemaSchemaRelation* %21, %struct._xmlSchemaSchemaRelation** %1, align 8, !dbg !59
  br label %22, !dbg !59

22:                                               ; preds = %16, %7
  %23 = load %struct._xmlSchemaSchemaRelation*, %struct._xmlSchemaSchemaRelation** %1, align 8, !dbg !60
  ret %struct._xmlSchemaSchemaRelation* %23, !dbg !60
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !61 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !64, metadata !DIExpression()), !dbg !65
  %3 = bitcast i32* %2 to i8*, !dbg !66
  call void @klee_make_symbolic(i8* noundef %3, i64 noundef 4, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)), !dbg !67
  %4 = load i32, i32* %2, align 4, !dbg !68
  %5 = icmp sgt i32 %4, 0, !dbg !69
  %6 = zext i1 %5 to i32, !dbg !69
  %7 = sext i32 %6 to i64, !dbg !68
  call void @klee_assume(i64 noundef %7), !dbg !70
  call void @xmlSchemaFormatQName(), !dbg !71
  ret i32 0, !dbg !72
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !73 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !80, metadata !DIExpression()), !dbg !81
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !82, metadata !DIExpression()), !dbg !83
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !84, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.declare(metadata i8** %7, metadata !86, metadata !DIExpression()), !dbg !88
  %8 = load i8*, i8** %4, align 8, !dbg !89
  store i8* %8, i8** %7, align 8, !dbg !88
  br label %9, !dbg !90

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !91
  %11 = add i64 %10, -1, !dbg !91
  store i64 %11, i64* %6, align 8, !dbg !91
  %12 = icmp ugt i64 %10, 0, !dbg !92
  br i1 %12, label %13, label %18, !dbg !90

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !93
  %15 = trunc i32 %14 to i8, !dbg !93
  %16 = load i8*, i8** %7, align 8, !dbg !94
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !94
  store i8* %17, i8** %7, align 8, !dbg !94
  store i8 %15, i8* %16, align 1, !dbg !95
  br label %9, !dbg !90, !llvm.loop !96

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !98
  ret i8* %19, !dbg !99
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19, !19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/369_xmlschemas.c_9837_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "a6f734449fe2e75c38770384b3ae61ad")
!2 = !{!3, !9}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaSchemaRelation", file: !1, line: 10, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaSchemaRelation", file: !1, line: 11, size: 32, elements: !6)
!6 = !{!7}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !5, file: !1, line: 13, baseType: !8, size: 32)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !11, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!11 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!12 = !{i32 7, !"Dwarf Version", i32 5}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{i32 7, !"PIC Level", i32 2}
!16 = !{i32 7, !"PIE Level", i32 2}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"Ubuntu clang version 14.0.6"}
!20 = distinct !DISubprogram(name: "xmlSchemaPErrMemory", scope: !1, file: !1, line: 17, type: !21, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!21 = !DISubroutineType(types: !22)
!22 = !{null, !9, !23, !23}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!25 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!26 = !{}
!27 = !DILocalVariable(name: "ctxt", arg: 1, scope: !20, file: !1, line: 17, type: !9)
!28 = !DILocation(line: 17, column: 32, scope: !20)
!29 = !DILocalVariable(name: "msg", arg: 2, scope: !20, file: !1, line: 17, type: !23)
!30 = !DILocation(line: 17, column: 50, scope: !20)
!31 = !DILocalVariable(name: "extra", arg: 3, scope: !20, file: !1, line: 17, type: !23)
!32 = !DILocation(line: 17, column: 67, scope: !20)
!33 = !DILocation(line: 19, column: 1, scope: !20)
!34 = distinct !DISubprogram(name: "xmlSchemaFormatQName", scope: !1, file: !1, line: 48, type: !35, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!35 = !DISubroutineType(types: !36)
!36 = !{null}
!37 = !DILocation(line: 50, column: 5, scope: !34)
!38 = !DILocation(line: 51, column: 1, scope: !34)
!39 = distinct !DISubprogram(name: "xmlSchemaNewSchemaRelation", scope: !1, file: !1, line: 22, type: !40, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !26)
!40 = !DISubroutineType(types: !41)
!41 = !{!3}
!42 = !DILocalVariable(name: "ret", scope: !39, file: !1, line: 23, type: !3)
!43 = !DILocation(line: 23, column: 30, scope: !39)
!44 = !DILocation(line: 26, column: 37, scope: !39)
!45 = !DILocation(line: 26, column: 11, scope: !39)
!46 = !DILocation(line: 26, column: 9, scope: !39)
!47 = !DILocation(line: 27, column: 9, scope: !48)
!48 = distinct !DILexicalBlock(scope: !39, file: !1, line: 27, column: 9)
!49 = !DILocation(line: 27, column: 13, scope: !48)
!50 = !DILocation(line: 27, column: 9, scope: !39)
!51 = !DILocation(line: 28, column: 9, scope: !52)
!52 = distinct !DILexicalBlock(scope: !48, file: !1, line: 27, column: 22)
!53 = !DILocation(line: 29, column: 9, scope: !52)
!54 = !DILocation(line: 38, column: 5, scope: !39)
!55 = !DILocation(line: 41, column: 5, scope: !39)
!56 = !DILocation(line: 43, column: 12, scope: !39)
!57 = !DILocation(line: 43, column: 5, scope: !39)
!58 = !DILocation(line: 44, column: 12, scope: !39)
!59 = !DILocation(line: 44, column: 5, scope: !39)
!60 = !DILocation(line: 45, column: 1, scope: !39)
!61 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 53, type: !62, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!62 = !DISubroutineType(types: !63)
!63 = !{!8}
!64 = !DILocalVariable(name: "symbolic_flag", scope: !61, file: !1, line: 55, type: !8)
!65 = !DILocation(line: 55, column: 9, scope: !61)
!66 = !DILocation(line: 56, column: 24, scope: !61)
!67 = !DILocation(line: 56, column: 5, scope: !61)
!68 = !DILocation(line: 59, column: 17, scope: !61)
!69 = !DILocation(line: 59, column: 31, scope: !61)
!70 = !DILocation(line: 59, column: 5, scope: !61)
!71 = !DILocation(line: 62, column: 5, scope: !61)
!72 = !DILocation(line: 64, column: 5, scope: !61)
!73 = distinct !DISubprogram(name: "memset", scope: !74, file: !74, line: 12, type: !75, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !26)
!74 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!75 = !DISubroutineType(types: !76)
!76 = !{!9, !9, !8, !77}
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !78, line: 46, baseType: !79)
!78 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!79 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!80 = !DILocalVariable(name: "dst", arg: 1, scope: !73, file: !74, line: 12, type: !9)
!81 = !DILocation(line: 12, column: 20, scope: !73)
!82 = !DILocalVariable(name: "s", arg: 2, scope: !73, file: !74, line: 12, type: !8)
!83 = !DILocation(line: 12, column: 29, scope: !73)
!84 = !DILocalVariable(name: "count", arg: 3, scope: !73, file: !74, line: 12, type: !77)
!85 = !DILocation(line: 12, column: 39, scope: !73)
!86 = !DILocalVariable(name: "a", scope: !73, file: !74, line: 13, type: !87)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!88 = !DILocation(line: 13, column: 9, scope: !73)
!89 = !DILocation(line: 13, column: 13, scope: !73)
!90 = !DILocation(line: 14, column: 3, scope: !73)
!91 = !DILocation(line: 14, column: 15, scope: !73)
!92 = !DILocation(line: 14, column: 18, scope: !73)
!93 = !DILocation(line: 15, column: 12, scope: !73)
!94 = !DILocation(line: 15, column: 7, scope: !73)
!95 = !DILocation(line: 15, column: 10, scope: !73)
!96 = distinct !{!96, !90, !93, !97}
!97 = !{!"llvm.loop.mustprogress"}
!98 = !DILocation(line: 16, column: 10, scope: !73)
!99 = !DILocation(line: 16, column: 3, scope: !73)

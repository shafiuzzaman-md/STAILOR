; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/351_xpath.c_3746_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/351_xpath.c_3746_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlXPathObject = type { i32, i32, i32, %struct._xmlNode** }
%struct._xmlNode = type opaque

@.str = private unnamed_addr constant [17 x i8] c"growing nodeset\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [106 x i8] c"(cur->nodeTab != ((void*)0) && 10 * sizeof(xmlNodePtr) <= 10 * sizeof(xmlNodePtr)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_55980_vul/351_xpath.c_3746_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.target_function = private unnamed_addr constant [39 x i8] c"int target_function(xmlXPathObjectPtr)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"obj\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlXPathErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !18 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !25, metadata !DIExpression()), !dbg !26
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !27, metadata !DIExpression()), !dbg !28
  ret void, !dbg !29
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !30 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !36, metadata !DIExpression()), !dbg !37
  %3 = load i64, i64* %2, align 8, !dbg !38
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !39
  ret i8* %4, !dbg !40
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_function(%struct._xmlXPathObject* noundef %0) #0 !dbg !41 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._xmlXPathObject*, align 8
  store %struct._xmlXPathObject* %0, %struct._xmlXPathObject** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlXPathObject** %3, metadata !54, metadata !DIExpression()), !dbg !55
  %4 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %3, align 8, !dbg !56
  %5 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %4, i32 0, i32 2, !dbg !58
  %6 = load i32, i32* %5, align 8, !dbg !58
  %7 = icmp eq i32 %6, 0, !dbg !59
  br i1 %7, label %8, label %36, !dbg !60

8:                                                ; preds = %1
  %9 = call i8* @xmlMalloc(i64 noundef 80), !dbg !61
  %10 = bitcast i8* %9 to %struct._xmlNode**, !dbg !63
  %11 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %3, align 8, !dbg !64
  %12 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %11, i32 0, i32 3, !dbg !65
  store %struct._xmlNode** %10, %struct._xmlNode*** %12, align 8, !dbg !66
  %13 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %3, align 8, !dbg !67
  %14 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %13, i32 0, i32 3, !dbg !69
  %15 = load %struct._xmlNode**, %struct._xmlNode*** %14, align 8, !dbg !69
  %16 = icmp eq %struct._xmlNode** %15, null, !dbg !70
  br i1 %16, label %17, label %18, !dbg !71

17:                                               ; preds = %8
  call void @xmlXPathErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)), !dbg !72
  store i32 -1, i32* %2, align 4, !dbg !74
  br label %47, !dbg !74

18:                                               ; preds = %8
  %19 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %3, align 8, !dbg !75
  %20 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %19, i32 0, i32 3, !dbg !76
  %21 = load %struct._xmlNode**, %struct._xmlNode*** %20, align 8, !dbg !76
  %22 = bitcast %struct._xmlNode** %21 to i8*, !dbg !77
  %23 = call i8* @memset(i8* %22, i32 0, i64 80), !dbg !77
  %24 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %3, align 8, !dbg !78
  %25 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %24, i32 0, i32 3, !dbg !78
  %26 = load %struct._xmlNode**, %struct._xmlNode*** %25, align 8, !dbg !78
  %27 = icmp ne %struct._xmlNode** %26, null, !dbg !78
  br i1 %27, label %28, label %30, !dbg !78

28:                                               ; preds = %18
  br i1 true, label %29, label %30, !dbg !78

29:                                               ; preds = %28
  br label %32, !dbg !78

30:                                               ; preds = %28, %18
  %31 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.3, i64 0, i64 0), i32 noundef 51, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !78
  br label %32, !dbg !78

32:                                               ; preds = %30, %29
  %33 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.3, i64 0, i64 0), i32 noundef 54, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !79
  %34 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %3, align 8, !dbg !80
  %35 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %34, i32 0, i32 2, !dbg !81
  store i32 10, i32* %35, align 8, !dbg !82
  store i32 0, i32* %2, align 4, !dbg !83
  br label %47, !dbg !83

36:                                               ; preds = %1
  %37 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %3, align 8, !dbg !84
  %38 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %37, i32 0, i32 1, !dbg !86
  %39 = load i32, i32* %38, align 4, !dbg !86
  %40 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %3, align 8, !dbg !87
  %41 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %40, i32 0, i32 2, !dbg !88
  %42 = load i32, i32* %41, align 8, !dbg !88
  %43 = icmp eq i32 %39, %42, !dbg !89
  br i1 %43, label %44, label %45, !dbg !90

44:                                               ; preds = %36
  store i32 -1, i32* %2, align 4, !dbg !91
  br label %47, !dbg !91

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45
  store i32 0, i32* %2, align 4, !dbg !93
  br label %47, !dbg !93

47:                                               ; preds = %46, %44, %32, %17
  %48 = load i32, i32* %2, align 4, !dbg !94
  ret i32 %48, !dbg !94
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !95 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlXPathObject, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlXPathObject* %2, metadata !98, metadata !DIExpression()), !dbg !99
  %3 = bitcast %struct._xmlXPathObject* %2 to i8*, !dbg !100
  call void @klee_make_symbolic(i8* noundef %3, i64 noundef 24, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)), !dbg !101
  %4 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %2, i32 0, i32 2, !dbg !102
  %5 = load i32, i32* %4, align 8, !dbg !102
  %6 = icmp eq i32 %5, 0, !dbg !103
  %7 = zext i1 %6 to i32, !dbg !103
  %8 = sext i32 %7 to i64, !dbg !104
  call void @klee_assume(i64 noundef %8), !dbg !105
  %9 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %2, i32 0, i32 3, !dbg !106
  store %struct._xmlNode** null, %struct._xmlNode*** %9, align 8, !dbg !107
  %10 = call i32 @target_function(%struct._xmlXPathObject* noundef %2), !dbg !108
  %11 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %2, i32 0, i32 3, !dbg !109
  %12 = load %struct._xmlNode**, %struct._xmlNode*** %11, align 8, !dbg !109
  %13 = icmp ne %struct._xmlNode** %12, null, !dbg !111
  br i1 %13, label %14, label %18, !dbg !112

14:                                               ; preds = %0
  %15 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %2, i32 0, i32 3, !dbg !113
  %16 = load %struct._xmlNode**, %struct._xmlNode*** %15, align 8, !dbg !113
  %17 = bitcast %struct._xmlNode** %16 to i8*, !dbg !115
  call void @free(i8* noundef %17) #7, !dbg !116
  br label %18, !dbg !117

18:                                               ; preds = %14, %0
  ret i32 0, !dbg !118
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !119 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !123, metadata !DIExpression()), !dbg !124
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !125, metadata !DIExpression()), !dbg !126
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !127, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.declare(metadata i8** %7, metadata !129, metadata !DIExpression()), !dbg !131
  %8 = load i8*, i8** %4, align 8, !dbg !132
  store i8* %8, i8** %7, align 8, !dbg !131
  br label %9, !dbg !133

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !134
  %11 = add i64 %10, -1, !dbg !134
  store i64 %11, i64* %6, align 8, !dbg !134
  %12 = icmp ugt i64 %10, 0, !dbg !135
  br i1 %12, label %13, label %18, !dbg !133

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !136
  %15 = trunc i32 %14 to i8, !dbg !136
  %16 = load i8*, i8** %7, align 8, !dbg !137
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !137
  store i8* %17, i8** %7, align 8, !dbg !137
  store i8 %15, i8* %16, align 1, !dbg !138
  br label %9, !dbg !133, !llvm.loop !139

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !141
  ret i8* %19, !dbg !142
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17, !17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/351_xpath.c_3746_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "514626bbf25b2eacca746b82a156c456")
!2 = !{!3, !7}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !1, line: 10, baseType: !5)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 10, flags: DIFlagFwdDecl)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = distinct !DICompileUnit(language: DW_LANG_C99, file: !9, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!9 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!10 = !{i32 7, !"Dwarf Version", i32 5}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{i32 7, !"PIC Level", i32 2}
!14 = !{i32 7, !"PIE Level", i32 2}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"Ubuntu clang version 14.0.6"}
!18 = distinct !DISubprogram(name: "xmlXPathErrMemory", scope: !1, file: !1, line: 27, type: !19, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!19 = !DISubroutineType(types: !20)
!20 = !{null, !7, !21}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!24 = !{}
!25 = !DILocalVariable(name: "ctxt", arg: 1, scope: !18, file: !1, line: 27, type: !7)
!26 = !DILocation(line: 27, column: 30, scope: !18)
!27 = !DILocalVariable(name: "msg", arg: 2, scope: !18, file: !1, line: 27, type: !21)
!28 = !DILocation(line: 27, column: 48, scope: !18)
!29 = !DILocation(line: 29, column: 1, scope: !18)
!30 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 31, type: !31, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!31 = !DISubroutineType(types: !32)
!32 = !{!7, !33}
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !34, line: 46, baseType: !35)
!34 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!35 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!36 = !DILocalVariable(name: "size", arg: 1, scope: !30, file: !1, line: 31, type: !33)
!37 = !DILocation(line: 31, column: 24, scope: !30)
!38 = !DILocation(line: 32, column: 19, scope: !30)
!39 = !DILocation(line: 32, column: 12, scope: !30)
!40 = !DILocation(line: 32, column: 5, scope: !30)
!41 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 36, type: !42, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !45}
!44 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObjectPtr", file: !1, line: 12, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObject", file: !1, line: 11, baseType: !48)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathObject", file: !1, line: 19, size: 192, elements: !49)
!49 = !{!50, !51, !52, !53}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !48, file: !1, line: 20, baseType: !44, size: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "nodeNr", scope: !48, file: !1, line: 21, baseType: !44, size: 32, offset: 32)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "nodeMax", scope: !48, file: !1, line: 22, baseType: !44, size: 32, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !48, file: !1, line: 23, baseType: !3, size: 64, offset: 128)
!54 = !DILocalVariable(name: "cur", arg: 1, scope: !41, file: !1, line: 36, type: !45)
!55 = !DILocation(line: 36, column: 39, scope: !41)
!56 = !DILocation(line: 37, column: 9, scope: !57)
!57 = distinct !DILexicalBlock(scope: !41, file: !1, line: 37, column: 9)
!58 = !DILocation(line: 37, column: 14, scope: !57)
!59 = !DILocation(line: 37, column: 22, scope: !57)
!60 = !DILocation(line: 37, column: 9, scope: !41)
!61 = !DILocation(line: 38, column: 39, scope: !62)
!62 = distinct !DILexicalBlock(scope: !57, file: !1, line: 37, column: 28)
!63 = !DILocation(line: 38, column: 24, scope: !62)
!64 = !DILocation(line: 38, column: 9, scope: !62)
!65 = !DILocation(line: 38, column: 14, scope: !62)
!66 = !DILocation(line: 38, column: 22, scope: !62)
!67 = !DILocation(line: 40, column: 13, scope: !68)
!68 = distinct !DILexicalBlock(scope: !62, file: !1, line: 40, column: 13)
!69 = !DILocation(line: 40, column: 18, scope: !68)
!70 = !DILocation(line: 40, column: 26, scope: !68)
!71 = !DILocation(line: 40, column: 13, scope: !62)
!72 = !DILocation(line: 41, column: 13, scope: !73)
!73 = distinct !DILexicalBlock(scope: !68, file: !1, line: 40, column: 35)
!74 = !DILocation(line: 42, column: 13, scope: !73)
!75 = !DILocation(line: 45, column: 16, scope: !62)
!76 = !DILocation(line: 45, column: 21, scope: !62)
!77 = !DILocation(line: 45, column: 9, scope: !62)
!78 = !DILocation(line: 49, column: 9, scope: !62)
!79 = !DILocation(line: 54, column: 9, scope: !62)
!80 = !DILocation(line: 56, column: 9, scope: !62)
!81 = !DILocation(line: 56, column: 14, scope: !62)
!82 = !DILocation(line: 56, column: 22, scope: !62)
!83 = !DILocation(line: 57, column: 9, scope: !62)
!84 = !DILocation(line: 58, column: 16, scope: !85)
!85 = distinct !DILexicalBlock(scope: !57, file: !1, line: 58, column: 16)
!86 = !DILocation(line: 58, column: 21, scope: !85)
!87 = !DILocation(line: 58, column: 31, scope: !85)
!88 = !DILocation(line: 58, column: 36, scope: !85)
!89 = !DILocation(line: 58, column: 28, scope: !85)
!90 = !DILocation(line: 58, column: 16, scope: !57)
!91 = !DILocation(line: 60, column: 9, scope: !92)
!92 = distinct !DILexicalBlock(scope: !85, file: !1, line: 58, column: 45)
!93 = !DILocation(line: 62, column: 5, scope: !41)
!94 = !DILocation(line: 63, column: 1, scope: !41)
!95 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 66, type: !96, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!96 = !DISubroutineType(types: !97)
!97 = !{!44}
!98 = !DILocalVariable(name: "obj", scope: !95, file: !1, line: 67, type: !47)
!99 = !DILocation(line: 67, column: 20, scope: !95)
!100 = !DILocation(line: 70, column: 24, scope: !95)
!101 = !DILocation(line: 70, column: 5, scope: !95)
!102 = !DILocation(line: 73, column: 21, scope: !95)
!103 = !DILocation(line: 73, column: 29, scope: !95)
!104 = !DILocation(line: 73, column: 17, scope: !95)
!105 = !DILocation(line: 73, column: 5, scope: !95)
!106 = !DILocation(line: 76, column: 9, scope: !95)
!107 = !DILocation(line: 76, column: 17, scope: !95)
!108 = !DILocation(line: 79, column: 5, scope: !95)
!109 = !DILocation(line: 82, column: 13, scope: !110)
!110 = distinct !DILexicalBlock(scope: !95, file: !1, line: 82, column: 9)
!111 = !DILocation(line: 82, column: 21, scope: !110)
!112 = !DILocation(line: 82, column: 9, scope: !95)
!113 = !DILocation(line: 83, column: 18, scope: !114)
!114 = distinct !DILexicalBlock(scope: !110, file: !1, line: 82, column: 30)
!115 = !DILocation(line: 83, column: 14, scope: !114)
!116 = !DILocation(line: 83, column: 9, scope: !114)
!117 = !DILocation(line: 84, column: 5, scope: !114)
!118 = !DILocation(line: 86, column: 5, scope: !95)
!119 = distinct !DISubprogram(name: "memset", scope: !120, file: !120, line: 12, type: !121, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !24)
!120 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!121 = !DISubroutineType(types: !122)
!122 = !{!7, !7, !44, !33}
!123 = !DILocalVariable(name: "dst", arg: 1, scope: !119, file: !120, line: 12, type: !7)
!124 = !DILocation(line: 12, column: 20, scope: !119)
!125 = !DILocalVariable(name: "s", arg: 2, scope: !119, file: !120, line: 12, type: !44)
!126 = !DILocation(line: 12, column: 29, scope: !119)
!127 = !DILocalVariable(name: "count", arg: 3, scope: !119, file: !120, line: 12, type: !33)
!128 = !DILocation(line: 12, column: 39, scope: !119)
!129 = !DILocalVariable(name: "a", scope: !119, file: !120, line: 13, type: !130)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!131 = !DILocation(line: 13, column: 9, scope: !119)
!132 = !DILocation(line: 13, column: 13, scope: !119)
!133 = !DILocation(line: 14, column: 3, scope: !119)
!134 = !DILocation(line: 14, column: 15, scope: !119)
!135 = !DILocation(line: 14, column: 18, scope: !119)
!136 = !DILocation(line: 15, column: 12, scope: !119)
!137 = !DILocation(line: 15, column: 7, scope: !119)
!138 = !DILocation(line: 15, column: 10, scope: !119)
!139 = distinct !{!139, !133, !136, !140}
!140 = !{!"llvm.loop.mustprogress"}
!141 = !DILocation(line: 16, column: 10, scope: !119)
!142 = !DILocation(line: 16, column: 3, scope: !119)

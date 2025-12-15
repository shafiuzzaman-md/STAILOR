; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/283_libxml.c_1809_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/283_libxml.c_1809_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlParserCtxt = type { i8* }
%struct._xmlParserCtxtPyCtxt = type { i8* }

@libxml_intWrap.result = internal global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [81 x i8] c"(pyCtxt != ((void*)0) && sizeof(xmlParserCtxtPyCtxt) > 0) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_55980_vul/283_libxml.c_1809_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.target_function = private unnamed_addr constant [38 x i8] c"void *target_function(void *, void *)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"pyobj_ctxt\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"pyobj_f\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"ctxt_struct\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @PyparserCtxt_Get(i8* noundef %0) #0 !dbg !34 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !37, metadata !DIExpression()), !dbg !38
  %3 = load i8*, i8** %2, align 8, !dbg !39
  ret i8* %3, !dbg !40
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !41 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !47, metadata !DIExpression()), !dbg !48
  %3 = load i64, i64* %2, align 8, !dbg !49
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !50
  ret i8* %4, !dbg !51
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @libxml_intWrap(i32 noundef %0) #0 !dbg !2 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !52, metadata !DIExpression()), !dbg !53
  %3 = load i32, i32* %2, align 4, !dbg !54
  store i32 %3, i32* @libxml_intWrap.result, align 4, !dbg !55
  ret i8* bitcast (i32* @libxml_intWrap.result to i8*), !dbg !56
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Py_XDECREF(i8* noundef %0) #0 !dbg !57 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !60, metadata !DIExpression()), !dbg !61
  ret void, !dbg !62
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Py_XINCREF(i8* noundef %0) #0 !dbg !63 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !64, metadata !DIExpression()), !dbg !65
  ret void, !dbg !66
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @target_function(i8* noundef %0, i8* noundef %1) #0 !dbg !67 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._xmlParserCtxt*, align 8
  %7 = alloca %struct._xmlParserCtxtPyCtxt*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !70, metadata !DIExpression()), !dbg !71
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !72, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %6, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxtPyCtxt** %7, metadata !76, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.declare(metadata i8** %8, metadata !78, metadata !DIExpression()), !dbg !79
  %9 = load i8*, i8** %4, align 8, !dbg !80
  %10 = call i8* @PyparserCtxt_Get(i8* noundef %9), !dbg !81
  %11 = bitcast i8* %10 to %struct._xmlParserCtxt*, !dbg !82
  store %struct._xmlParserCtxt* %11, %struct._xmlParserCtxt** %6, align 8, !dbg !83
  %12 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %6, align 8, !dbg !84
  %13 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %12, i32 0, i32 0, !dbg !86
  %14 = load i8*, i8** %13, align 8, !dbg !86
  %15 = icmp eq i8* %14, null, !dbg !87
  br i1 %15, label %16, label %40, !dbg !88

16:                                               ; preds = %2
  %17 = call i8* @xmlMalloc(i64 noundef 8), !dbg !89
  %18 = bitcast i8* %17 to %struct._xmlParserCtxtPyCtxt*, !dbg !89
  store %struct._xmlParserCtxtPyCtxt* %18, %struct._xmlParserCtxtPyCtxt** %7, align 8, !dbg !91
  %19 = load %struct._xmlParserCtxtPyCtxt*, %struct._xmlParserCtxtPyCtxt** %7, align 8, !dbg !92
  %20 = icmp eq %struct._xmlParserCtxtPyCtxt* %19, null, !dbg !94
  br i1 %20, label %21, label %24, !dbg !95

21:                                               ; preds = %16
  %22 = call i8* @libxml_intWrap(i32 noundef -1), !dbg !96
  store i8* %22, i8** %8, align 8, !dbg !98
  %23 = load i8*, i8** %8, align 8, !dbg !99
  store i8* %23, i8** %3, align 8, !dbg !100
  br label %50, !dbg !100

24:                                               ; preds = %16
  %25 = load %struct._xmlParserCtxtPyCtxt*, %struct._xmlParserCtxtPyCtxt** %7, align 8, !dbg !101
  %26 = bitcast %struct._xmlParserCtxtPyCtxt* %25 to i8*, !dbg !102
  %27 = call i8* @memset(i8* %26, i32 0, i64 8), !dbg !102
  %28 = load %struct._xmlParserCtxtPyCtxt*, %struct._xmlParserCtxtPyCtxt** %7, align 8, !dbg !103
  %29 = icmp ne %struct._xmlParserCtxtPyCtxt* %28, null, !dbg !103
  br i1 %29, label %30, label %32, !dbg !103

30:                                               ; preds = %24
  br i1 true, label %31, label %32, !dbg !103

31:                                               ; preds = %30
  br label %34, !dbg !103

32:                                               ; preds = %30, %24
  %33 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.2, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !103
  br label %34, !dbg !103

34:                                               ; preds = %32, %31
  %35 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.2, i64 0, i64 0), i32 noundef 67, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !104
  %36 = load %struct._xmlParserCtxtPyCtxt*, %struct._xmlParserCtxtPyCtxt** %7, align 8, !dbg !105
  %37 = bitcast %struct._xmlParserCtxtPyCtxt* %36 to i8*, !dbg !105
  %38 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %6, align 8, !dbg !106
  %39 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %38, i32 0, i32 0, !dbg !107
  store i8* %37, i8** %39, align 8, !dbg !108
  br label %45, !dbg !109

40:                                               ; preds = %2
  %41 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %6, align 8, !dbg !110
  %42 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %41, i32 0, i32 0, !dbg !112
  %43 = load i8*, i8** %42, align 8, !dbg !112
  %44 = bitcast i8* %43 to %struct._xmlParserCtxtPyCtxt*, !dbg !113
  store %struct._xmlParserCtxtPyCtxt* %44, %struct._xmlParserCtxtPyCtxt** %7, align 8, !dbg !114
  br label %45

45:                                               ; preds = %40, %34
  %46 = load %struct._xmlParserCtxtPyCtxt*, %struct._xmlParserCtxtPyCtxt** %7, align 8, !dbg !115
  %47 = getelementptr inbounds %struct._xmlParserCtxtPyCtxt, %struct._xmlParserCtxtPyCtxt* %46, i32 0, i32 0, !dbg !116
  %48 = load i8*, i8** %47, align 8, !dbg !116
  call void @Py_XDECREF(i8* noundef %48), !dbg !117
  %49 = load i8*, i8** %5, align 8, !dbg !118
  call void @Py_XINCREF(i8* noundef %49), !dbg !119
  store i8* null, i8** %3, align 8, !dbg !120
  br label %50, !dbg !120

50:                                               ; preds = %45, %21
  %51 = load i8*, i8** %3, align 8, !dbg !121
  ret i8* %51, !dbg !121
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !122 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._xmlParserCtxt, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !125, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.declare(metadata i8** %3, metadata !127, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt* %4, metadata !129, metadata !DIExpression()), !dbg !130
  %5 = bitcast i8** %2 to i8*, !dbg !131
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 8, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)), !dbg !132
  %6 = bitcast i8** %3 to i8*, !dbg !133
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)), !dbg !134
  %7 = bitcast %struct._xmlParserCtxt* %4 to i8*, !dbg !135
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 8, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0)), !dbg !136
  %8 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %4, i32 0, i32 0, !dbg !137
  %9 = load i8*, i8** %8, align 8, !dbg !137
  %10 = icmp eq i8* %9, null, !dbg !138
  %11 = zext i1 %10 to i32, !dbg !138
  %12 = sext i32 %11 to i64, !dbg !139
  call void @klee_assume(i64 noundef %12), !dbg !140
  %13 = bitcast %struct._xmlParserCtxt* %4 to i8*, !dbg !141
  %14 = load i8*, i8** %3, align 8, !dbg !142
  %15 = call i8* @target_function(i8* noundef %13, i8* noundef %14), !dbg !143
  ret i32 0, !dbg !144
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !145 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !149, metadata !DIExpression()), !dbg !150
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !151, metadata !DIExpression()), !dbg !152
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !153, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.declare(metadata i8** %7, metadata !155, metadata !DIExpression()), !dbg !158
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
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!8, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33, !33}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "result", scope: !2, file: !3, line: 32, type: !7, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "libxml_intWrap", scope: !3, file: !3, line: 31, type: !4, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !23)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/283_libxml.c_1809_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "5d4232587280cb06fcba1fb72c6bb489")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !7}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !9, globals: !22, splitDebugInlining: false, nameTableKind: None)
!9 = !{!10, !6, !16}
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxtPtr", file: !3, line: 18, baseType: !11)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxt", file: !3, line: 17, baseType: !13)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserCtxt", file: !3, line: 15, size: 64, elements: !14)
!14 = !{!15}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !13, file: !3, line: 16, baseType: !6, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxtPyCtxtPtr", file: !3, line: 13, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxtPyCtxt", file: !3, line: 12, baseType: !19)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserCtxtPyCtxt", file: !3, line: 10, size: 64, elements: !20)
!20 = !{!21}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !19, file: !3, line: 11, baseType: !6, size: 64)
!22 = !{!0}
!23 = !{}
!24 = distinct !DICompileUnit(language: DW_LANG_C99, file: !25, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!25 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!26 = !{i32 7, !"Dwarf Version", i32 5}
!27 = !{i32 2, !"Debug Info Version", i32 3}
!28 = !{i32 1, !"wchar_size", i32 4}
!29 = !{i32 7, !"PIC Level", i32 2}
!30 = !{i32 7, !"PIE Level", i32 2}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"Ubuntu clang version 14.0.6"}
!34 = distinct !DISubprogram(name: "PyparserCtxt_Get", scope: !3, file: !3, line: 21, type: !35, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !23)
!35 = !DISubroutineType(types: !36)
!36 = !{!6, !6}
!37 = !DILocalVariable(name: "pyobj", arg: 1, scope: !34, file: !3, line: 21, type: !6)
!38 = !DILocation(line: 21, column: 30, scope: !34)
!39 = !DILocation(line: 22, column: 12, scope: !34)
!40 = !DILocation(line: 22, column: 5, scope: !34)
!41 = distinct !DISubprogram(name: "xmlMalloc", scope: !3, file: !3, line: 26, type: !42, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !23)
!42 = !DISubroutineType(types: !43)
!43 = !{!6, !44}
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !45, line: 46, baseType: !46)
!45 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!46 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!47 = !DILocalVariable(name: "size", arg: 1, scope: !41, file: !3, line: 26, type: !44)
!48 = !DILocation(line: 26, column: 24, scope: !41)
!49 = !DILocation(line: 27, column: 19, scope: !41)
!50 = !DILocation(line: 27, column: 12, scope: !41)
!51 = !DILocation(line: 27, column: 5, scope: !41)
!52 = !DILocalVariable(name: "val", arg: 1, scope: !2, file: !3, line: 31, type: !7)
!53 = !DILocation(line: 31, column: 26, scope: !2)
!54 = !DILocation(line: 33, column: 14, scope: !2)
!55 = !DILocation(line: 33, column: 12, scope: !2)
!56 = !DILocation(line: 34, column: 5, scope: !2)
!57 = distinct !DISubprogram(name: "Py_XDECREF", scope: !3, file: !3, line: 38, type: !58, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !23)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !6}
!60 = !DILocalVariable(name: "obj", arg: 1, scope: !57, file: !3, line: 38, type: !6)
!61 = !DILocation(line: 38, column: 23, scope: !57)
!62 = !DILocation(line: 40, column: 1, scope: !57)
!63 = distinct !DISubprogram(name: "Py_XINCREF", scope: !3, file: !3, line: 43, type: !58, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !23)
!64 = !DILocalVariable(name: "obj", arg: 1, scope: !63, file: !3, line: 43, type: !6)
!65 = !DILocation(line: 43, column: 23, scope: !63)
!66 = !DILocation(line: 45, column: 1, scope: !63)
!67 = distinct !DISubprogram(name: "target_function", scope: !3, file: !3, line: 48, type: !68, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !23)
!68 = !DISubroutineType(types: !69)
!69 = !{!6, !6, !6}
!70 = !DILocalVariable(name: "pyobj_ctxt", arg: 1, scope: !67, file: !3, line: 48, type: !6)
!71 = !DILocation(line: 48, column: 29, scope: !67)
!72 = !DILocalVariable(name: "pyobj_f", arg: 2, scope: !67, file: !3, line: 48, type: !6)
!73 = !DILocation(line: 48, column: 47, scope: !67)
!74 = !DILocalVariable(name: "ctxt", scope: !67, file: !3, line: 49, type: !10)
!75 = !DILocation(line: 49, column: 22, scope: !67)
!76 = !DILocalVariable(name: "pyCtxt", scope: !67, file: !3, line: 50, type: !16)
!77 = !DILocation(line: 50, column: 28, scope: !67)
!78 = !DILocalVariable(name: "py_retval", scope: !67, file: !3, line: 51, type: !6)
!79 = !DILocation(line: 51, column: 11, scope: !67)
!80 = !DILocation(line: 53, column: 48, scope: !67)
!81 = !DILocation(line: 53, column: 31, scope: !67)
!82 = !DILocation(line: 53, column: 12, scope: !67)
!83 = !DILocation(line: 53, column: 10, scope: !67)
!84 = !DILocation(line: 54, column: 9, scope: !85)
!85 = distinct !DILexicalBlock(scope: !67, file: !3, line: 54, column: 9)
!86 = !DILocation(line: 54, column: 15, scope: !85)
!87 = !DILocation(line: 54, column: 24, scope: !85)
!88 = !DILocation(line: 54, column: 9, scope: !67)
!89 = !DILocation(line: 55, column: 18, scope: !90)
!90 = distinct !DILexicalBlock(scope: !85, file: !3, line: 54, column: 33)
!91 = !DILocation(line: 55, column: 16, scope: !90)
!92 = !DILocation(line: 56, column: 13, scope: !93)
!93 = distinct !DILexicalBlock(scope: !90, file: !3, line: 56, column: 13)
!94 = !DILocation(line: 56, column: 20, scope: !93)
!95 = !DILocation(line: 56, column: 13, scope: !90)
!96 = !DILocation(line: 57, column: 25, scope: !97)
!97 = distinct !DILexicalBlock(scope: !93, file: !3, line: 56, column: 29)
!98 = !DILocation(line: 57, column: 23, scope: !97)
!99 = !DILocation(line: 58, column: 20, scope: !97)
!100 = !DILocation(line: 58, column: 13, scope: !97)
!101 = !DILocation(line: 61, column: 16, scope: !90)
!102 = !DILocation(line: 61, column: 9, scope: !90)
!103 = !DILocation(line: 64, column: 9, scope: !90)
!104 = !DILocation(line: 67, column: 9, scope: !90)
!105 = !DILocation(line: 69, column: 26, scope: !90)
!106 = !DILocation(line: 69, column: 9, scope: !90)
!107 = !DILocation(line: 69, column: 15, scope: !90)
!108 = !DILocation(line: 69, column: 24, scope: !90)
!109 = !DILocation(line: 70, column: 5, scope: !90)
!110 = !DILocation(line: 71, column: 42, scope: !111)
!111 = distinct !DILexicalBlock(scope: !85, file: !3, line: 70, column: 12)
!112 = !DILocation(line: 71, column: 48, scope: !111)
!113 = !DILocation(line: 71, column: 18, scope: !111)
!114 = !DILocation(line: 71, column: 16, scope: !111)
!115 = !DILocation(line: 74, column: 16, scope: !67)
!116 = !DILocation(line: 74, column: 24, scope: !67)
!117 = !DILocation(line: 74, column: 5, scope: !67)
!118 = !DILocation(line: 75, column: 16, scope: !67)
!119 = !DILocation(line: 75, column: 5, scope: !67)
!120 = !DILocation(line: 77, column: 5, scope: !67)
!121 = !DILocation(line: 78, column: 1, scope: !67)
!122 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 80, type: !123, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !23)
!123 = !DISubroutineType(types: !124)
!124 = !{!7}
!125 = !DILocalVariable(name: "pyobj_ctxt", scope: !122, file: !3, line: 82, type: !6)
!126 = !DILocation(line: 82, column: 11, scope: !122)
!127 = !DILocalVariable(name: "pyobj_f", scope: !122, file: !3, line: 83, type: !6)
!128 = !DILocation(line: 83, column: 11, scope: !122)
!129 = !DILocalVariable(name: "ctxt_struct", scope: !122, file: !3, line: 84, type: !12)
!130 = !DILocation(line: 84, column: 19, scope: !122)
!131 = !DILocation(line: 87, column: 24, scope: !122)
!132 = !DILocation(line: 87, column: 5, scope: !122)
!133 = !DILocation(line: 88, column: 24, scope: !122)
!134 = !DILocation(line: 88, column: 5, scope: !122)
!135 = !DILocation(line: 89, column: 24, scope: !122)
!136 = !DILocation(line: 89, column: 5, scope: !122)
!137 = !DILocation(line: 92, column: 29, scope: !122)
!138 = !DILocation(line: 92, column: 38, scope: !122)
!139 = !DILocation(line: 92, column: 17, scope: !122)
!140 = !DILocation(line: 92, column: 5, scope: !122)
!141 = !DILocation(line: 95, column: 21, scope: !122)
!142 = !DILocation(line: 95, column: 35, scope: !122)
!143 = !DILocation(line: 95, column: 5, scope: !122)
!144 = !DILocation(line: 97, column: 5, scope: !122)
!145 = distinct !DISubprogram(name: "memset", scope: !146, file: !146, line: 12, type: !147, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !23)
!146 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!147 = !DISubroutineType(types: !148)
!148 = !{!6, !6, !7, !44}
!149 = !DILocalVariable(name: "dst", arg: 1, scope: !145, file: !146, line: 12, type: !6)
!150 = !DILocation(line: 12, column: 20, scope: !145)
!151 = !DILocalVariable(name: "s", arg: 2, scope: !145, file: !146, line: 12, type: !7)
!152 = !DILocation(line: 12, column: 29, scope: !145)
!153 = !DILocalVariable(name: "count", arg: 3, scope: !145, file: !146, line: 12, type: !44)
!154 = !DILocation(line: 12, column: 39, scope: !145)
!155 = !DILocalVariable(name: "a", scope: !145, file: !146, line: 13, type: !156)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!158 = !DILocation(line: 13, column: 9, scope: !145)
!159 = !DILocation(line: 13, column: 13, scope: !145)
!160 = !DILocation(line: 14, column: 3, scope: !145)
!161 = !DILocation(line: 14, column: 15, scope: !145)
!162 = !DILocation(line: 14, column: 18, scope: !145)
!163 = !DILocation(line: 15, column: 12, scope: !145)
!164 = !DILocation(line: 15, column: 7, scope: !145)
!165 = !DILocation(line: 15, column: 10, scope: !145)
!166 = distinct !{!166, !160, !163, !167}
!167 = !{!"llvm.loop.mustprogress"}
!168 = !DILocation(line: 16, column: 10, scope: !145)
!169 = !DILocation(line: 16, column: 3, scope: !145)

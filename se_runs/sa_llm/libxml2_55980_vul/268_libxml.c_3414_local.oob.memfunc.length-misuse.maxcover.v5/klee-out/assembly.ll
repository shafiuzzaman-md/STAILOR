; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/268_libxml.c_3414_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/268_libxml.c_3414_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.xmlSchemaValidCtxtPyCtxt = type { %struct._object*, %struct._object* }
%struct._object = type opaque

@.str = private unnamed_addr constant [14 x i8] c"xmlMalloc_ptr\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"pyobj_error\00", align 1
@target_function.pyCtxt = internal global %struct.xmlSchemaValidCtxtPyCtxt* null, align 8, !dbg !0
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_55980_vul/268_libxml.c_3414_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.target_function = private unnamed_addr constant [38 x i8] c"PyObject *target_function(PyObject *)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !30 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !36, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.declare(metadata i8** %3, metadata !38, metadata !DIExpression()), !dbg !39
  %4 = load i64, i64* %2, align 8, !dbg !40
  %5 = call noalias i8* @malloc(i64 noundef %4) #7, !dbg !41
  store i8* %5, i8** %3, align 8, !dbg !39
  %6 = bitcast i8** %3 to i8*, !dbg !42
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 8, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)), !dbg !43
  %7 = load i8*, i8** %3, align 8, !dbg !44
  ret i8* %7, !dbg !45
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libxml_intWrap(i32 noundef %0) #0 !dbg !46 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !50, metadata !DIExpression()), !dbg !51
  %3 = load i32, i32* %2, align 4, !dbg !52
  ret i32 %3, !dbg !53
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Py_XDECREF(%struct._object* noundef %0) #0 !dbg !54 {
  %2 = alloca %struct._object*, align 8
  store %struct._object* %0, %struct._object** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._object** %2, metadata !57, metadata !DIExpression()), !dbg !58
  ret void, !dbg !59
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Py_XINCREF(%struct._object* noundef %0) #0 !dbg !60 {
  %2 = alloca %struct._object*, align 8
  store %struct._object* %0, %struct._object** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._object** %2, metadata !61, metadata !DIExpression()), !dbg !62
  ret void, !dbg !63
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !64 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._object*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._object** %2, metadata !67, metadata !DIExpression()), !dbg !68
  %3 = bitcast %struct._object** %2 to i8*, !dbg !69
  call void @klee_make_symbolic(i8* noundef %3, i64 noundef 8, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)), !dbg !70
  %4 = load %struct._object*, %struct._object** %2, align 8, !dbg !71
  %5 = call %struct._object* @target_function(%struct._object* noundef %4), !dbg !72
  ret i32 0, !dbg !73
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct._object* @target_function(%struct._object* noundef %0) #0 !dbg !2 {
  %2 = alloca %struct._object*, align 8
  %3 = alloca %struct._object*, align 8
  %4 = alloca %struct._object*, align 8
  store %struct._object* %0, %struct._object** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._object** %3, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata %struct._object** %4, metadata !76, metadata !DIExpression()), !dbg !77
  %5 = load %struct.xmlSchemaValidCtxtPyCtxt*, %struct.xmlSchemaValidCtxtPyCtxt** @target_function.pyCtxt, align 8, !dbg !78
  %6 = icmp eq %struct.xmlSchemaValidCtxtPyCtxt* %5, null, !dbg !80
  br i1 %6, label %7, label %22, !dbg !81

7:                                                ; preds = %1
  %8 = call i8* @xmlMalloc(i64 noundef 16), !dbg !82
  %9 = bitcast i8* %8 to %struct.xmlSchemaValidCtxtPyCtxt*, !dbg !82
  store %struct.xmlSchemaValidCtxtPyCtxt* %9, %struct.xmlSchemaValidCtxtPyCtxt** @target_function.pyCtxt, align 8, !dbg !84
  %10 = load %struct.xmlSchemaValidCtxtPyCtxt*, %struct.xmlSchemaValidCtxtPyCtxt** @target_function.pyCtxt, align 8, !dbg !85
  %11 = icmp eq %struct.xmlSchemaValidCtxtPyCtxt* %10, null, !dbg !87
  br i1 %11, label %12, label %17, !dbg !88

12:                                               ; preds = %7
  %13 = call i32 @libxml_intWrap(i32 noundef -1), !dbg !89
  %14 = sext i32 %13 to i64, !dbg !91
  %15 = inttoptr i64 %14 to %struct._object*, !dbg !91
  store %struct._object* %15, %struct._object** %4, align 8, !dbg !92
  %16 = load %struct._object*, %struct._object** %4, align 8, !dbg !93
  store %struct._object* %16, %struct._object** %2, align 8, !dbg !94
  br label %33, !dbg !94

17:                                               ; preds = %7
  %18 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.3, i64 0, i64 0), i32 noundef 54, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !95
  %19 = load %struct.xmlSchemaValidCtxtPyCtxt*, %struct.xmlSchemaValidCtxtPyCtxt** @target_function.pyCtxt, align 8, !dbg !96
  %20 = bitcast %struct.xmlSchemaValidCtxtPyCtxt* %19 to i8*, !dbg !97
  %21 = call i8* @memset(i8* %20, i32 0, i64 16), !dbg !97
  br label %22, !dbg !98

22:                                               ; preds = %17, %1
  %23 = load %struct.xmlSchemaValidCtxtPyCtxt*, %struct.xmlSchemaValidCtxtPyCtxt** @target_function.pyCtxt, align 8, !dbg !99
  %24 = getelementptr inbounds %struct.xmlSchemaValidCtxtPyCtxt, %struct.xmlSchemaValidCtxtPyCtxt* %23, i32 0, i32 0, !dbg !100
  %25 = load %struct._object*, %struct._object** %24, align 8, !dbg !100
  call void @Py_XDECREF(%struct._object* noundef %25), !dbg !101
  %26 = load %struct._object*, %struct._object** %3, align 8, !dbg !102
  call void @Py_XINCREF(%struct._object* noundef %26), !dbg !103
  %27 = load %struct._object*, %struct._object** %3, align 8, !dbg !104
  %28 = load %struct.xmlSchemaValidCtxtPyCtxt*, %struct.xmlSchemaValidCtxtPyCtxt** @target_function.pyCtxt, align 8, !dbg !105
  %29 = getelementptr inbounds %struct.xmlSchemaValidCtxtPyCtxt, %struct.xmlSchemaValidCtxtPyCtxt* %28, i32 0, i32 0, !dbg !106
  store %struct._object* %27, %struct._object** %29, align 8, !dbg !107
  %30 = load %struct.xmlSchemaValidCtxtPyCtxt*, %struct.xmlSchemaValidCtxtPyCtxt** @target_function.pyCtxt, align 8, !dbg !108
  %31 = getelementptr inbounds %struct.xmlSchemaValidCtxtPyCtxt, %struct.xmlSchemaValidCtxtPyCtxt* %30, i32 0, i32 1, !dbg !109
  %32 = load %struct._object*, %struct._object** %31, align 8, !dbg !109
  call void @Py_XDECREF(%struct._object* noundef %32), !dbg !110
  store %struct._object* null, %struct._object** %2, align 8, !dbg !111
  br label %33, !dbg !111

33:                                               ; preds = %22, %12
  %34 = load %struct._object*, %struct._object** %2, align 8, !dbg !112
  ret %struct._object* %34, !dbg !112
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !113 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !117, metadata !DIExpression()), !dbg !118
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !119, metadata !DIExpression()), !dbg !120
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !121, metadata !DIExpression()), !dbg !122
  call void @llvm.dbg.declare(metadata i8** %7, metadata !123, metadata !DIExpression()), !dbg !126
  %8 = load i8*, i8** %4, align 8, !dbg !127
  store i8* %8, i8** %7, align 8, !dbg !126
  br label %9, !dbg !128

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !129
  %11 = add i64 %10, -1, !dbg !129
  store i64 %11, i64* %6, align 8, !dbg !129
  %12 = icmp ugt i64 %10, 0, !dbg !130
  br i1 %12, label %13, label %18, !dbg !128

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !131
  %15 = trunc i32 %14 to i8, !dbg !131
  %16 = load i8*, i8** %7, align 8, !dbg !132
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !132
  store i8* %17, i8** %7, align 8, !dbg !132
  store i8 %15, i8* %16, align 1, !dbg !133
  br label %9, !dbg !128, !llvm.loop !134

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !136
  ret i8* %19, !dbg !137
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!9, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29, !29}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pyCtxt", scope: !2, file: !3, line: 38, type: !14, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "target_function", scope: !3, file: !3, line: 37, type: !4, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !13)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/268_libxml.c_3414_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "cee0465c108177df91f9e550c623a074")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !3, line: 10, baseType: !8)
!8 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !3, line: 10, flags: DIFlagFwdDecl)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !10, globals: !12, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !6}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = !{!0}
!13 = !{}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaValidCtxtPyCtxt", file: !3, line: 14, baseType: !16)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xmlSchemaValidCtxtPyCtxt", file: !3, line: 11, size: 128, elements: !17)
!17 = !{!18, !19}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !16, file: !3, line: 12, baseType: !6, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "warn", scope: !16, file: !3, line: 13, baseType: !6, size: 64, offset: 64)
!20 = distinct !DICompileUnit(language: DW_LANG_C99, file: !21, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!21 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!22 = !{i32 7, !"Dwarf Version", i32 5}
!23 = !{i32 2, !"Debug Info Version", i32 3}
!24 = !{i32 1, !"wchar_size", i32 4}
!25 = !{i32 7, !"PIC Level", i32 2}
!26 = !{i32 7, !"PIE Level", i32 2}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"Ubuntu clang version 14.0.6"}
!30 = distinct !DISubprogram(name: "xmlMalloc", scope: !3, file: !3, line: 17, type: !31, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !13)
!31 = !DISubroutineType(types: !32)
!32 = !{!11, !33}
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !34, line: 46, baseType: !35)
!34 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!35 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!36 = !DILocalVariable(name: "size", arg: 1, scope: !30, file: !3, line: 17, type: !33)
!37 = !DILocation(line: 17, column: 24, scope: !30)
!38 = !DILocalVariable(name: "ptr", scope: !30, file: !3, line: 18, type: !11)
!39 = !DILocation(line: 18, column: 11, scope: !30)
!40 = !DILocation(line: 18, column: 24, scope: !30)
!41 = !DILocation(line: 18, column: 17, scope: !30)
!42 = !DILocation(line: 19, column: 24, scope: !30)
!43 = !DILocation(line: 19, column: 5, scope: !30)
!44 = !DILocation(line: 20, column: 12, scope: !30)
!45 = !DILocation(line: 20, column: 5, scope: !30)
!46 = distinct !DISubprogram(name: "libxml_intWrap", scope: !3, file: !3, line: 23, type: !47, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !13)
!47 = !DISubroutineType(types: !48)
!48 = !{!49, !49}
!49 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!50 = !DILocalVariable(name: "val", arg: 1, scope: !46, file: !3, line: 23, type: !49)
!51 = !DILocation(line: 23, column: 24, scope: !46)
!52 = !DILocation(line: 24, column: 12, scope: !46)
!53 = !DILocation(line: 24, column: 5, scope: !46)
!54 = distinct !DISubprogram(name: "Py_XDECREF", scope: !3, file: !3, line: 28, type: !55, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !13)
!55 = !DISubroutineType(types: !56)
!56 = !{null, !6}
!57 = !DILocalVariable(name: "obj", arg: 1, scope: !54, file: !3, line: 28, type: !6)
!58 = !DILocation(line: 28, column: 27, scope: !54)
!59 = !DILocation(line: 30, column: 1, scope: !54)
!60 = distinct !DISubprogram(name: "Py_XINCREF", scope: !3, file: !3, line: 32, type: !55, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !13)
!61 = !DILocalVariable(name: "obj", arg: 1, scope: !60, file: !3, line: 32, type: !6)
!62 = !DILocation(line: 32, column: 27, scope: !60)
!63 = !DILocation(line: 34, column: 1, scope: !60)
!64 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 70, type: !65, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !13)
!65 = !DISubroutineType(types: !66)
!66 = !{!49}
!67 = !DILocalVariable(name: "pyobj_error", scope: !64, file: !3, line: 71, type: !6)
!68 = !DILocation(line: 71, column: 15, scope: !64)
!69 = !DILocation(line: 74, column: 24, scope: !64)
!70 = !DILocation(line: 74, column: 5, scope: !64)
!71 = !DILocation(line: 77, column: 21, scope: !64)
!72 = !DILocation(line: 77, column: 5, scope: !64)
!73 = !DILocation(line: 79, column: 5, scope: !64)
!74 = !DILocalVariable(name: "pyobj_error", arg: 1, scope: !2, file: !3, line: 37, type: !6)
!75 = !DILocation(line: 37, column: 44, scope: !2)
!76 = !DILocalVariable(name: "py_retval", scope: !2, file: !3, line: 39, type: !6)
!77 = !DILocation(line: 39, column: 15, scope: !2)
!78 = !DILocation(line: 41, column: 9, scope: !79)
!79 = distinct !DILexicalBlock(scope: !2, file: !3, line: 41, column: 9)
!80 = !DILocation(line: 41, column: 16, scope: !79)
!81 = !DILocation(line: 41, column: 9, scope: !2)
!82 = !DILocation(line: 43, column: 18, scope: !83)
!83 = distinct !DILexicalBlock(scope: !79, file: !3, line: 41, column: 25)
!84 = !DILocation(line: 43, column: 16, scope: !83)
!85 = !DILocation(line: 44, column: 13, scope: !86)
!86 = distinct !DILexicalBlock(scope: !83, file: !3, line: 44, column: 13)
!87 = !DILocation(line: 44, column: 20, scope: !86)
!88 = !DILocation(line: 44, column: 13, scope: !83)
!89 = !DILocation(line: 45, column: 36, scope: !90)
!90 = distinct !DILexicalBlock(scope: !86, file: !3, line: 44, column: 29)
!91 = !DILocation(line: 45, column: 25, scope: !90)
!92 = !DILocation(line: 45, column: 23, scope: !90)
!93 = !DILocation(line: 46, column: 20, scope: !90)
!94 = !DILocation(line: 46, column: 13, scope: !90)
!95 = !DILocation(line: 54, column: 9, scope: !83)
!96 = !DILocation(line: 56, column: 16, scope: !83)
!97 = !DILocation(line: 56, column: 9, scope: !83)
!98 = !DILocation(line: 57, column: 5, scope: !83)
!99 = !DILocation(line: 60, column: 16, scope: !2)
!100 = !DILocation(line: 60, column: 24, scope: !2)
!101 = !DILocation(line: 60, column: 5, scope: !2)
!102 = !DILocation(line: 61, column: 16, scope: !2)
!103 = !DILocation(line: 61, column: 5, scope: !2)
!104 = !DILocation(line: 62, column: 21, scope: !2)
!105 = !DILocation(line: 62, column: 5, scope: !2)
!106 = !DILocation(line: 62, column: 13, scope: !2)
!107 = !DILocation(line: 62, column: 19, scope: !2)
!108 = !DILocation(line: 64, column: 16, scope: !2)
!109 = !DILocation(line: 64, column: 24, scope: !2)
!110 = !DILocation(line: 64, column: 5, scope: !2)
!111 = !DILocation(line: 66, column: 5, scope: !2)
!112 = !DILocation(line: 67, column: 1, scope: !2)
!113 = distinct !DISubprogram(name: "memset", scope: !114, file: !114, line: 12, type: !115, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !20, retainedNodes: !13)
!114 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!115 = !DISubroutineType(types: !116)
!116 = !{!11, !11, !49, !33}
!117 = !DILocalVariable(name: "dst", arg: 1, scope: !113, file: !114, line: 12, type: !11)
!118 = !DILocation(line: 12, column: 20, scope: !113)
!119 = !DILocalVariable(name: "s", arg: 2, scope: !113, file: !114, line: 12, type: !49)
!120 = !DILocation(line: 12, column: 29, scope: !113)
!121 = !DILocalVariable(name: "count", arg: 3, scope: !113, file: !114, line: 12, type: !33)
!122 = !DILocation(line: 12, column: 39, scope: !113)
!123 = !DILocalVariable(name: "a", scope: !113, file: !114, line: 13, type: !124)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!126 = !DILocation(line: 13, column: 9, scope: !113)
!127 = !DILocation(line: 13, column: 13, scope: !113)
!128 = !DILocation(line: 14, column: 3, scope: !113)
!129 = !DILocation(line: 14, column: 15, scope: !113)
!130 = !DILocation(line: 14, column: 18, scope: !113)
!131 = !DILocation(line: 15, column: 12, scope: !113)
!132 = !DILocation(line: 15, column: 7, scope: !113)
!133 = !DILocation(line: 15, column: 10, scope: !113)
!134 = distinct !{!134, !128, !131, !135}
!135 = !{!"llvm.loop.mustprogress"}
!136 = !DILocation(line: 16, column: 10, scope: !113)
!137 = !DILocation(line: 16, column: 3, scope: !113)

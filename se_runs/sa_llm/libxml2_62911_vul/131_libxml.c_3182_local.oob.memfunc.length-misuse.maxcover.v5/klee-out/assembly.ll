; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/131_libxml.c_3182_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/131_libxml.c_3182_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.xmlSchemaValidCtxtPyCtxt = type { i8*, i8*, i8*, i8* }

@libxml_intWrap.dummy = internal global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.1 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_62911_vul/131_libxml.c_3182_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.libxml_xmlCreatePushParser = private unnamed_addr constant [65 x i8] c"void *libxml_xmlCreatePushParser(void *, void *, void *, void *)\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"pyobj_error\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"pyobj_warn\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"pyobj_function\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"pyobj_return\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !22 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata i8** %3, metadata !30, metadata !DIExpression()), !dbg !31
  %4 = load i64, i64* %2, align 8, !dbg !32
  %5 = call noalias i8* @malloc(i64 noundef %4) #7, !dbg !33
  store i8* %5, i8** %3, align 8, !dbg !31
  %6 = load i8*, i8** %3, align 8, !dbg !34
  %7 = icmp ne i8* %6, null, !dbg !35
  %8 = zext i1 %7 to i32, !dbg !35
  %9 = sext i32 %8 to i64, !dbg !34
  call void @klee_assume(i64 noundef %9), !dbg !36
  %10 = load i8*, i8** %3, align 8, !dbg !37
  ret i8* %10, !dbg !38
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @libxml_intWrap(i32 noundef %0) #0 !dbg !2 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !39, metadata !DIExpression()), !dbg !40
  ret i8* bitcast (i32* @libxml_intWrap.dummy to i8*), !dbg !41
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Py_XDECREF(i8* noundef %0) #0 !dbg !42 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !45, metadata !DIExpression()), !dbg !46
  %3 = load i8*, i8** %2, align 8, !dbg !47
  ret void, !dbg !48
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Py_XINCREF(i8* noundef %0) #0 !dbg !49 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !50, metadata !DIExpression()), !dbg !51
  %3 = load i8*, i8** %2, align 8, !dbg !52
  ret void, !dbg !53
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @libxml_xmlCreatePushParser(i8* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #0 !dbg !54 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.xmlSchemaValidCtxtPyCtxt*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !57, metadata !DIExpression()), !dbg !58
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !59, metadata !DIExpression()), !dbg !60
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !61, metadata !DIExpression()), !dbg !62
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !63, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata %struct.xmlSchemaValidCtxtPyCtxt** %10, metadata !65, metadata !DIExpression()), !dbg !74
  store %struct.xmlSchemaValidCtxtPyCtxt* null, %struct.xmlSchemaValidCtxtPyCtxt** %10, align 8, !dbg !74
  call void @llvm.dbg.declare(metadata i8** %11, metadata !75, metadata !DIExpression()), !dbg !76
  %12 = call i8* @xmlMalloc(i64 noundef 32), !dbg !77
  %13 = bitcast i8* %12 to %struct.xmlSchemaValidCtxtPyCtxt*, !dbg !77
  store %struct.xmlSchemaValidCtxtPyCtxt* %13, %struct.xmlSchemaValidCtxtPyCtxt** %10, align 8, !dbg !78
  %14 = load %struct.xmlSchemaValidCtxtPyCtxt*, %struct.xmlSchemaValidCtxtPyCtxt** %10, align 8, !dbg !79
  %15 = icmp eq %struct.xmlSchemaValidCtxtPyCtxt* %14, null, !dbg !81
  br i1 %15, label %16, label %19, !dbg !82

16:                                               ; preds = %4
  %17 = call i8* @libxml_intWrap(i32 noundef -1), !dbg !83
  store i8* %17, i8** %11, align 8, !dbg !85
  %18 = load i8*, i8** %11, align 8, !dbg !86
  store i8* %18, i8** %5, align 8, !dbg !87
  br label %30, !dbg !87

19:                                               ; preds = %4
  %20 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.1, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.libxml_xmlCreatePushParser, i64 0, i64 0)), !dbg !88
  %21 = load %struct.xmlSchemaValidCtxtPyCtxt*, %struct.xmlSchemaValidCtxtPyCtxt** %10, align 8, !dbg !89
  %22 = bitcast %struct.xmlSchemaValidCtxtPyCtxt* %21 to i8*, !dbg !90
  %23 = call i8* @memset(i8* %22, i32 0, i64 32), !dbg !90
  %24 = load %struct.xmlSchemaValidCtxtPyCtxt*, %struct.xmlSchemaValidCtxtPyCtxt** %10, align 8, !dbg !91
  %25 = getelementptr inbounds %struct.xmlSchemaValidCtxtPyCtxt, %struct.xmlSchemaValidCtxtPyCtxt* %24, i32 0, i32 0, !dbg !92
  %26 = load i8*, i8** %25, align 8, !dbg !92
  call void @Py_XDECREF(i8* noundef %26), !dbg !93
  %27 = load i8*, i8** %6, align 8, !dbg !94
  call void @Py_XINCREF(i8* noundef %27), !dbg !95
  %28 = load %struct.xmlSchemaValidCtxtPyCtxt*, %struct.xmlSchemaValidCtxtPyCtxt** %10, align 8, !dbg !96
  %29 = bitcast %struct.xmlSchemaValidCtxtPyCtxt* %28 to i8*, !dbg !96
  store i8* %29, i8** %5, align 8, !dbg !97
  br label %30, !dbg !97

30:                                               ; preds = %19, %16
  %31 = load i8*, i8** %5, align 8, !dbg !98
  ret i8* %31, !dbg !98
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !99 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !102, metadata !DIExpression()), !dbg !103
  call void @llvm.dbg.declare(metadata i8** %3, metadata !104, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata i8** %4, metadata !106, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.declare(metadata i8** %5, metadata !108, metadata !DIExpression()), !dbg !109
  %6 = bitcast i8** %2 to i8*, !dbg !110
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 8, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0)), !dbg !111
  %7 = bitcast i8** %3 to i8*, !dbg !112
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 8, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0)), !dbg !113
  %8 = bitcast i8** %4 to i8*, !dbg !114
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 8, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)), !dbg !115
  %9 = bitcast i8** %5 to i8*, !dbg !116
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 8, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0)), !dbg !117
  %10 = load i8*, i8** %2, align 8, !dbg !118
  %11 = load i8*, i8** %3, align 8, !dbg !119
  %12 = load i8*, i8** %4, align 8, !dbg !120
  %13 = load i8*, i8** %5, align 8, !dbg !121
  %14 = call i8* @libxml_xmlCreatePushParser(i8* noundef %10, i8* noundef %11, i8* noundef %12, i8* noundef %13), !dbg !122
  ret i32 0, !dbg !123
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !124 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !128, metadata !DIExpression()), !dbg !129
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !130, metadata !DIExpression()), !dbg !131
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !132, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.declare(metadata i8** %7, metadata !134, metadata !DIExpression()), !dbg !137
  %8 = load i8*, i8** %4, align 8, !dbg !138
  store i8* %8, i8** %7, align 8, !dbg !137
  br label %9, !dbg !139

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !140
  %11 = add i64 %10, -1, !dbg !140
  store i64 %11, i64* %6, align 8, !dbg !140
  %12 = icmp ugt i64 %10, 0, !dbg !141
  br i1 %12, label %13, label %18, !dbg !139

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !142
  %15 = trunc i32 %14 to i8, !dbg !142
  %16 = load i8*, i8** %7, align 8, !dbg !143
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !143
  store i8* %17, i8** %7, align 8, !dbg !143
  store i8 %15, i8* %16, align 1, !dbg !144
  br label %9, !dbg !139, !llvm.loop !145

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !147
  ret i8* %19, !dbg !148
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!8, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21, !21}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "dummy", scope: !2, file: !3, line: 24, type: !7, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "libxml_intWrap", scope: !3, file: !3, line: 22, type: !4, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !11)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/131_libxml.c_3182_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "f5da61afd5d1dc74cfb7b7af060b0f97")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !7}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !9, globals: !10, splitDebugInlining: false, nameTableKind: None)
!9 = !{!6}
!10 = !{!0}
!11 = !{}
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
!22 = distinct !DISubprogram(name: "xmlMalloc", scope: !3, file: !3, line: 16, type: !23, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !11)
!23 = !DISubroutineType(types: !24)
!24 = !{!6, !25}
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !26, line: 46, baseType: !27)
!26 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!27 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!28 = !DILocalVariable(name: "size", arg: 1, scope: !22, file: !3, line: 16, type: !25)
!29 = !DILocation(line: 16, column: 24, scope: !22)
!30 = !DILocalVariable(name: "ptr", scope: !22, file: !3, line: 17, type: !6)
!31 = !DILocation(line: 17, column: 11, scope: !22)
!32 = !DILocation(line: 17, column: 24, scope: !22)
!33 = !DILocation(line: 17, column: 17, scope: !22)
!34 = !DILocation(line: 18, column: 17, scope: !22)
!35 = !DILocation(line: 18, column: 21, scope: !22)
!36 = !DILocation(line: 18, column: 5, scope: !22)
!37 = !DILocation(line: 19, column: 12, scope: !22)
!38 = !DILocation(line: 19, column: 5, scope: !22)
!39 = !DILocalVariable(name: "value", arg: 1, scope: !2, file: !3, line: 22, type: !7)
!40 = !DILocation(line: 22, column: 26, scope: !2)
!41 = !DILocation(line: 25, column: 5, scope: !2)
!42 = distinct !DISubprogram(name: "Py_XDECREF", scope: !3, file: !3, line: 28, type: !43, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !11)
!43 = !DISubroutineType(types: !44)
!44 = !{null, !6}
!45 = !DILocalVariable(name: "obj", arg: 1, scope: !42, file: !3, line: 28, type: !6)
!46 = !DILocation(line: 28, column: 23, scope: !42)
!47 = !DILocation(line: 30, column: 11, scope: !42)
!48 = !DILocation(line: 31, column: 1, scope: !42)
!49 = distinct !DISubprogram(name: "Py_XINCREF", scope: !3, file: !3, line: 33, type: !43, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !11)
!50 = !DILocalVariable(name: "obj", arg: 1, scope: !49, file: !3, line: 33, type: !6)
!51 = !DILocation(line: 33, column: 23, scope: !49)
!52 = !DILocation(line: 35, column: 11, scope: !49)
!53 = !DILocation(line: 36, column: 1, scope: !49)
!54 = distinct !DISubprogram(name: "libxml_xmlCreatePushParser", scope: !3, file: !3, line: 47, type: !55, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !11)
!55 = !DISubroutineType(types: !56)
!56 = !{!6, !6, !6, !6, !6}
!57 = !DILocalVariable(name: "pyobj_error", arg: 1, scope: !54, file: !3, line: 47, type: !6)
!58 = !DILocation(line: 47, column: 40, scope: !54)
!59 = !DILocalVariable(name: "pyobj_warn", arg: 2, scope: !54, file: !3, line: 47, type: !6)
!60 = !DILocation(line: 47, column: 59, scope: !54)
!61 = !DILocalVariable(name: "pyobj_function", arg: 3, scope: !54, file: !3, line: 47, type: !6)
!62 = !DILocation(line: 47, column: 77, scope: !54)
!63 = !DILocalVariable(name: "pyobj_return", arg: 4, scope: !54, file: !3, line: 47, type: !6)
!64 = !DILocation(line: 47, column: 99, scope: !54)
!65 = !DILocalVariable(name: "pyCtxt", scope: !54, file: !3, line: 48, type: !66)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaValidCtxtPyCtxt", file: !3, line: 44, baseType: !68)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 39, size: 256, elements: !69)
!69 = !{!70, !71, !72, !73}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !68, file: !3, line: 40, baseType: !6, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "warn", scope: !68, file: !3, line: 41, baseType: !6, size: 64, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !68, file: !3, line: 42, baseType: !6, size: 64, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !68, file: !3, line: 43, baseType: !6, size: 64, offset: 192)
!74 = !DILocation(line: 48, column: 31, scope: !54)
!75 = !DILocalVariable(name: "py_retval", scope: !54, file: !3, line: 49, type: !6)
!76 = !DILocation(line: 49, column: 11, scope: !54)
!77 = !DILocation(line: 52, column: 14, scope: !54)
!78 = !DILocation(line: 52, column: 12, scope: !54)
!79 = !DILocation(line: 53, column: 9, scope: !80)
!80 = distinct !DILexicalBlock(scope: !54, file: !3, line: 53, column: 9)
!81 = !DILocation(line: 53, column: 16, scope: !80)
!82 = !DILocation(line: 53, column: 9, scope: !54)
!83 = !DILocation(line: 54, column: 21, scope: !84)
!84 = distinct !DILexicalBlock(scope: !80, file: !3, line: 53, column: 25)
!85 = !DILocation(line: 54, column: 19, scope: !84)
!86 = !DILocation(line: 55, column: 16, scope: !84)
!87 = !DILocation(line: 55, column: 9, scope: !84)
!88 = !DILocation(line: 64, column: 5, scope: !54)
!89 = !DILocation(line: 66, column: 12, scope: !54)
!90 = !DILocation(line: 66, column: 5, scope: !54)
!91 = !DILocation(line: 69, column: 16, scope: !54)
!92 = !DILocation(line: 69, column: 24, scope: !54)
!93 = !DILocation(line: 69, column: 5, scope: !54)
!94 = !DILocation(line: 70, column: 16, scope: !54)
!95 = !DILocation(line: 70, column: 5, scope: !54)
!96 = !DILocation(line: 72, column: 12, scope: !54)
!97 = !DILocation(line: 72, column: 5, scope: !54)
!98 = !DILocation(line: 73, column: 1, scope: !54)
!99 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 75, type: !100, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !11)
!100 = !DISubroutineType(types: !101)
!101 = !{!7}
!102 = !DILocalVariable(name: "pyobj_error", scope: !99, file: !3, line: 77, type: !6)
!103 = !DILocation(line: 77, column: 11, scope: !99)
!104 = !DILocalVariable(name: "pyobj_warn", scope: !99, file: !3, line: 78, type: !6)
!105 = !DILocation(line: 78, column: 11, scope: !99)
!106 = !DILocalVariable(name: "pyobj_function", scope: !99, file: !3, line: 79, type: !6)
!107 = !DILocation(line: 79, column: 11, scope: !99)
!108 = !DILocalVariable(name: "pyobj_return", scope: !99, file: !3, line: 80, type: !6)
!109 = !DILocation(line: 80, column: 11, scope: !99)
!110 = !DILocation(line: 82, column: 24, scope: !99)
!111 = !DILocation(line: 82, column: 5, scope: !99)
!112 = !DILocation(line: 83, column: 24, scope: !99)
!113 = !DILocation(line: 83, column: 5, scope: !99)
!114 = !DILocation(line: 84, column: 24, scope: !99)
!115 = !DILocation(line: 84, column: 5, scope: !99)
!116 = !DILocation(line: 85, column: 24, scope: !99)
!117 = !DILocation(line: 85, column: 5, scope: !99)
!118 = !DILocation(line: 88, column: 32, scope: !99)
!119 = !DILocation(line: 88, column: 45, scope: !99)
!120 = !DILocation(line: 88, column: 57, scope: !99)
!121 = !DILocation(line: 88, column: 73, scope: !99)
!122 = !DILocation(line: 88, column: 5, scope: !99)
!123 = !DILocation(line: 90, column: 5, scope: !99)
!124 = distinct !DISubprogram(name: "memset", scope: !125, file: !125, line: 12, type: !126, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !11)
!125 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!126 = !DISubroutineType(types: !127)
!127 = !{!6, !6, !7, !25}
!128 = !DILocalVariable(name: "dst", arg: 1, scope: !124, file: !125, line: 12, type: !6)
!129 = !DILocation(line: 12, column: 20, scope: !124)
!130 = !DILocalVariable(name: "s", arg: 2, scope: !124, file: !125, line: 12, type: !7)
!131 = !DILocation(line: 12, column: 29, scope: !124)
!132 = !DILocalVariable(name: "count", arg: 3, scope: !124, file: !125, line: 12, type: !25)
!133 = !DILocation(line: 12, column: 39, scope: !124)
!134 = !DILocalVariable(name: "a", scope: !124, file: !125, line: 13, type: !135)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!137 = !DILocation(line: 13, column: 9, scope: !124)
!138 = !DILocation(line: 13, column: 13, scope: !124)
!139 = !DILocation(line: 14, column: 3, scope: !124)
!140 = !DILocation(line: 14, column: 15, scope: !124)
!141 = !DILocation(line: 14, column: 18, scope: !124)
!142 = !DILocation(line: 15, column: 12, scope: !124)
!143 = !DILocation(line: 15, column: 7, scope: !124)
!144 = !DILocation(line: 15, column: 10, scope: !124)
!145 = distinct !{!145, !139, !142, !146}
!146 = !{!"llvm.loop.mustprogress"}
!147 = !DILocation(line: 16, column: 10, scope: !124)
!148 = !DILocation(line: 16, column: 3, scope: !124)

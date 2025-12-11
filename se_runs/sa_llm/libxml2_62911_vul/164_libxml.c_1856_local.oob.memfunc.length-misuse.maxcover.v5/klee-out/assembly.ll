; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/164_libxml.c_1856_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/164_libxml.c_1856_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._object = type opaque
%struct.xmlValidCtxtPyCtxt = type { %struct._object*, %struct._object*, %struct._object*, %struct._object* }

@.str = private unnamed_addr constant [12 x i8] c"pyobj_error\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"pyobj_warn\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"pyobj_function\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"pyobj_return\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_62911_vul/164_libxml.c_1856_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.libxml_xmlCreatePushParser = private unnamed_addr constant [73 x i8] c"PyObject *libxml_xmlCreatePushParser(PyObject *, PyObject *, PyObject *)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !18 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata i8** %3, metadata !27, metadata !DIExpression()), !dbg !28
  %4 = load i64, i64* %2, align 8, !dbg !29
  %5 = call noalias i8* @malloc(i64 noundef %4) #7, !dbg !30
  store i8* %5, i8** %3, align 8, !dbg !28
  %6 = load i8*, i8** %3, align 8, !dbg !31
  %7 = icmp ne i8* %6, null, !dbg !32
  %8 = zext i1 %7 to i32, !dbg !32
  %9 = sext i32 %8 to i64, !dbg !31
  call void @klee_assume(i64 noundef %9), !dbg !33
  %10 = load i8*, i8** %3, align 8, !dbg !34
  ret i8* %10, !dbg !35
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Py_XDECREF(%struct._object* noundef %0) #0 !dbg !36 {
  %2 = alloca %struct._object*, align 8
  store %struct._object* %0, %struct._object** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._object** %2, metadata !39, metadata !DIExpression()), !dbg !40
  %3 = load %struct._object*, %struct._object** %2, align 8, !dbg !41
  ret void, !dbg !42
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Py_XINCREF(%struct._object* noundef %0) #0 !dbg !43 {
  %2 = alloca %struct._object*, align 8
  store %struct._object* %0, %struct._object** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._object** %2, metadata !44, metadata !DIExpression()), !dbg !45
  %3 = load %struct._object*, %struct._object** %2, align 8, !dbg !46
  ret void, !dbg !47
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._object* @libxml_intWrap(i32 noundef %0) #0 !dbg !48 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !52, metadata !DIExpression()), !dbg !53
  %3 = load i32, i32* %2, align 4, !dbg !54
  %4 = sext i32 %3 to i64, !dbg !55
  %5 = inttoptr i64 %4 to %struct._object*, !dbg !56
  ret %struct._object* %5, !dbg !57
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._object* @libxml_xmlCreatePushParser(%struct._object* noundef %0, %struct._object* noundef %1, %struct._object* noundef %2) #0 !dbg !58 {
  %4 = alloca %struct._object*, align 8
  %5 = alloca %struct._object*, align 8
  %6 = alloca %struct._object*, align 8
  %7 = alloca %struct._object*, align 8
  %8 = alloca %struct.xmlValidCtxtPyCtxt*, align 8
  %9 = alloca %struct._object*, align 8
  %10 = alloca %struct._object*, align 8
  %11 = alloca %struct._object*, align 8
  %12 = alloca %struct._object*, align 8
  %13 = alloca %struct._object*, align 8
  store %struct._object* %0, %struct._object** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._object** %5, metadata !61, metadata !DIExpression()), !dbg !62
  store %struct._object* %1, %struct._object** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._object** %6, metadata !63, metadata !DIExpression()), !dbg !64
  store %struct._object* %2, %struct._object** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._object** %7, metadata !65, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.declare(metadata %struct.xmlValidCtxtPyCtxt** %8, metadata !67, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.declare(metadata %struct._object** %9, metadata !77, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.declare(metadata %struct._object** %10, metadata !79, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.declare(metadata %struct._object** %11, metadata !81, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.declare(metadata %struct._object** %12, metadata !83, metadata !DIExpression()), !dbg !84
  call void @llvm.dbg.declare(metadata %struct._object** %13, metadata !85, metadata !DIExpression()), !dbg !86
  %14 = bitcast %struct._object** %9 to i8*, !dbg !87
  call void @klee_make_symbolic(i8* noundef %14, i64 noundef 8, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0)), !dbg !88
  %15 = bitcast %struct._object** %10 to i8*, !dbg !89
  call void @klee_make_symbolic(i8* noundef %15, i64 noundef 8, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)), !dbg !90
  %16 = bitcast %struct._object** %11 to i8*, !dbg !91
  call void @klee_make_symbolic(i8* noundef %16, i64 noundef 8, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !92
  %17 = bitcast %struct._object** %12 to i8*, !dbg !93
  call void @klee_make_symbolic(i8* noundef %17, i64 noundef 8, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0)), !dbg !94
  %18 = call i8* @xmlMalloc(i64 noundef 32), !dbg !95
  %19 = bitcast i8* %18 to %struct.xmlValidCtxtPyCtxt*, !dbg !95
  store %struct.xmlValidCtxtPyCtxt* %19, %struct.xmlValidCtxtPyCtxt** %8, align 8, !dbg !96
  %20 = load %struct.xmlValidCtxtPyCtxt*, %struct.xmlValidCtxtPyCtxt** %8, align 8, !dbg !97
  %21 = icmp eq %struct.xmlValidCtxtPyCtxt* %20, null, !dbg !99
  br i1 %21, label %22, label %25, !dbg !100

22:                                               ; preds = %3
  %23 = call %struct._object* @libxml_intWrap(i32 noundef -1), !dbg !101
  store %struct._object* %23, %struct._object** %13, align 8, !dbg !103
  %24 = load %struct._object*, %struct._object** %13, align 8, !dbg !104
  store %struct._object* %24, %struct._object** %4, align 8, !dbg !105
  br label %37, !dbg !105

25:                                               ; preds = %3
  %26 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.5, i64 0, i64 0), i32 noundef 72, i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.libxml_xmlCreatePushParser, i64 0, i64 0)), !dbg !106
  %27 = load %struct.xmlValidCtxtPyCtxt*, %struct.xmlValidCtxtPyCtxt** %8, align 8, !dbg !107
  %28 = bitcast %struct.xmlValidCtxtPyCtxt* %27 to i8*, !dbg !108
  %29 = call i8* @memset(i8* %28, i32 0, i64 32), !dbg !108
  %30 = load %struct.xmlValidCtxtPyCtxt*, %struct.xmlValidCtxtPyCtxt** %8, align 8, !dbg !109
  %31 = getelementptr inbounds %struct.xmlValidCtxtPyCtxt, %struct.xmlValidCtxtPyCtxt* %30, i32 0, i32 0, !dbg !110
  %32 = load %struct._object*, %struct._object** %31, align 8, !dbg !110
  call void @Py_XDECREF(%struct._object* noundef %32), !dbg !111
  %33 = load %struct._object*, %struct._object** %9, align 8, !dbg !112
  call void @Py_XINCREF(%struct._object* noundef %33), !dbg !113
  %34 = load %struct.xmlValidCtxtPyCtxt*, %struct.xmlValidCtxtPyCtxt** %8, align 8, !dbg !114
  %35 = bitcast %struct.xmlValidCtxtPyCtxt* %34 to i8*, !dbg !114
  call void @free(i8* noundef %35) #7, !dbg !115
  %36 = call %struct._object* @libxml_intWrap(i32 noundef 0), !dbg !116
  store %struct._object* %36, %struct._object** %4, align 8, !dbg !117
  br label %37, !dbg !117

37:                                               ; preds = %25, %22
  %38 = load %struct._object*, %struct._object** %4, align 8, !dbg !118
  ret %struct._object* %38, !dbg !118
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !119 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._object*, align 8
  %3 = alloca %struct._object*, align 8
  %4 = alloca %struct._object*, align 8
  %5 = alloca %struct._object*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._object** %2, metadata !122, metadata !DIExpression()), !dbg !123
  store %struct._object* inttoptr (i64 1 to %struct._object*), %struct._object** %2, align 8, !dbg !123
  call void @llvm.dbg.declare(metadata %struct._object** %3, metadata !124, metadata !DIExpression()), !dbg !125
  store %struct._object* inttoptr (i64 2 to %struct._object*), %struct._object** %3, align 8, !dbg !125
  call void @llvm.dbg.declare(metadata %struct._object** %4, metadata !126, metadata !DIExpression()), !dbg !127
  store %struct._object* inttoptr (i64 3 to %struct._object*), %struct._object** %4, align 8, !dbg !127
  call void @llvm.dbg.declare(metadata %struct._object** %5, metadata !128, metadata !DIExpression()), !dbg !129
  %6 = load %struct._object*, %struct._object** %2, align 8, !dbg !130
  %7 = load %struct._object*, %struct._object** %3, align 8, !dbg !131
  %8 = load %struct._object*, %struct._object** %4, align 8, !dbg !132
  %9 = call %struct._object* @libxml_xmlCreatePushParser(%struct._object* noundef %6, %struct._object* noundef %7, %struct._object* noundef %8), !dbg !133
  store %struct._object* %9, %struct._object** %5, align 8, !dbg !134
  %10 = load %struct._object*, %struct._object** %5, align 8, !dbg !135
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
  call void @llvm.dbg.declare(metadata i8** %7, metadata !147, metadata !DIExpression()), !dbg !150
  %8 = load i8*, i8** %4, align 8, !dbg !151
  store i8* %8, i8** %7, align 8, !dbg !150
  br label %9, !dbg !152

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !153
  %11 = add i64 %10, -1, !dbg !153
  store i64 %11, i64* %6, align 8, !dbg !153
  %12 = icmp ugt i64 %10, 0, !dbg !154
  br i1 %12, label %13, label %18, !dbg !152

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !155
  %15 = trunc i32 %14 to i8, !dbg !155
  %16 = load i8*, i8** %7, align 8, !dbg !156
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !156
  store i8* %17, i8** %7, align 8, !dbg !156
  store i8 %15, i8* %16, align 1, !dbg !157
  br label %9, !dbg !152, !llvm.loop !158

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !160
  ret i8* %19, !dbg !161
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17, !17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/164_libxml.c_1856_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "db69fec64e92314231080f2e66656894")
!2 = !{!3, !4, !7}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !1, line: 10, baseType: !6)
!6 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !1, line: 10, flags: DIFlagFwdDecl)
!7 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
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
!18 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 19, type: !19, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!19 = !DISubroutineType(types: !20)
!20 = !{!3, !21}
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !22, line: 46, baseType: !23)
!22 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!23 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!24 = !{}
!25 = !DILocalVariable(name: "size", arg: 1, scope: !18, file: !1, line: 19, type: !21)
!26 = !DILocation(line: 19, column: 24, scope: !18)
!27 = !DILocalVariable(name: "ptr", scope: !18, file: !1, line: 20, type: !3)
!28 = !DILocation(line: 20, column: 11, scope: !18)
!29 = !DILocation(line: 20, column: 24, scope: !18)
!30 = !DILocation(line: 20, column: 17, scope: !18)
!31 = !DILocation(line: 21, column: 17, scope: !18)
!32 = !DILocation(line: 21, column: 21, scope: !18)
!33 = !DILocation(line: 21, column: 5, scope: !18)
!34 = !DILocation(line: 22, column: 12, scope: !18)
!35 = !DILocation(line: 22, column: 5, scope: !18)
!36 = distinct !DISubprogram(name: "Py_XDECREF", scope: !1, file: !1, line: 25, type: !37, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !4}
!39 = !DILocalVariable(name: "obj", arg: 1, scope: !36, file: !1, line: 25, type: !4)
!40 = !DILocation(line: 25, column: 27, scope: !36)
!41 = !DILocation(line: 27, column: 11, scope: !36)
!42 = !DILocation(line: 28, column: 1, scope: !36)
!43 = distinct !DISubprogram(name: "Py_XINCREF", scope: !1, file: !1, line: 30, type: !37, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!44 = !DILocalVariable(name: "obj", arg: 1, scope: !43, file: !1, line: 30, type: !4)
!45 = !DILocation(line: 30, column: 27, scope: !43)
!46 = !DILocation(line: 32, column: 11, scope: !43)
!47 = !DILocation(line: 33, column: 1, scope: !43)
!48 = distinct !DISubprogram(name: "libxml_intWrap", scope: !1, file: !1, line: 35, type: !49, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!49 = !DISubroutineType(types: !50)
!50 = !{!4, !51}
!51 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!52 = !DILocalVariable(name: "val", arg: 1, scope: !48, file: !1, line: 35, type: !51)
!53 = !DILocation(line: 35, column: 30, scope: !48)
!54 = !DILocation(line: 37, column: 30, scope: !48)
!55 = !DILocation(line: 37, column: 24, scope: !48)
!56 = !DILocation(line: 37, column: 12, scope: !48)
!57 = !DILocation(line: 37, column: 5, scope: !48)
!58 = distinct !DISubprogram(name: "libxml_xmlCreatePushParser", scope: !1, file: !1, line: 41, type: !59, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!59 = !DISubroutineType(types: !60)
!60 = !{!4, !4, !4, !4}
!61 = !DILocalVariable(name: "self", arg: 1, scope: !58, file: !1, line: 42, type: !4)
!62 = !DILocation(line: 42, column: 15, scope: !58)
!63 = !DILocalVariable(name: "args", arg: 2, scope: !58, file: !1, line: 43, type: !4)
!64 = !DILocation(line: 43, column: 15, scope: !58)
!65 = !DILocalVariable(name: "kwargs", arg: 3, scope: !58, file: !1, line: 44, type: !4)
!66 = !DILocation(line: 44, column: 15, scope: !58)
!67 = !DILocalVariable(name: "pyCtxt", scope: !58, file: !1, line: 46, type: !68)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlValidCtxtPyCtxt", file: !1, line: 16, baseType: !70)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xmlValidCtxtPyCtxt", file: !1, line: 11, size: 256, elements: !71)
!71 = !{!72, !73, !74, !75}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !70, file: !1, line: 12, baseType: !4, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "warn", scope: !70, file: !1, line: 13, baseType: !4, size: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !70, file: !1, line: 14, baseType: !4, size: 64, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !70, file: !1, line: 15, baseType: !4, size: 64, offset: 192)
!76 = !DILocation(line: 46, column: 25, scope: !58)
!77 = !DILocalVariable(name: "pyobj_error", scope: !58, file: !1, line: 47, type: !4)
!78 = !DILocation(line: 47, column: 15, scope: !58)
!79 = !DILocalVariable(name: "pyobj_warn", scope: !58, file: !1, line: 48, type: !4)
!80 = !DILocation(line: 48, column: 15, scope: !58)
!81 = !DILocalVariable(name: "pyobj_function", scope: !58, file: !1, line: 49, type: !4)
!82 = !DILocation(line: 49, column: 15, scope: !58)
!83 = !DILocalVariable(name: "pyobj_return", scope: !58, file: !1, line: 50, type: !4)
!84 = !DILocation(line: 50, column: 15, scope: !58)
!85 = !DILocalVariable(name: "py_retval", scope: !58, file: !1, line: 51, type: !4)
!86 = !DILocation(line: 51, column: 15, scope: !58)
!87 = !DILocation(line: 54, column: 24, scope: !58)
!88 = !DILocation(line: 54, column: 5, scope: !58)
!89 = !DILocation(line: 55, column: 24, scope: !58)
!90 = !DILocation(line: 55, column: 5, scope: !58)
!91 = !DILocation(line: 56, column: 24, scope: !58)
!92 = !DILocation(line: 56, column: 5, scope: !58)
!93 = !DILocation(line: 57, column: 24, scope: !58)
!94 = !DILocation(line: 57, column: 5, scope: !58)
!95 = !DILocation(line: 60, column: 14, scope: !58)
!96 = !DILocation(line: 60, column: 12, scope: !58)
!97 = !DILocation(line: 61, column: 9, scope: !98)
!98 = distinct !DILexicalBlock(scope: !58, file: !1, line: 61, column: 9)
!99 = !DILocation(line: 61, column: 16, scope: !98)
!100 = !DILocation(line: 61, column: 9, scope: !58)
!101 = !DILocation(line: 62, column: 21, scope: !102)
!102 = distinct !DILexicalBlock(scope: !98, file: !1, line: 61, column: 25)
!103 = !DILocation(line: 62, column: 19, scope: !102)
!104 = !DILocation(line: 63, column: 16, scope: !102)
!105 = !DILocation(line: 63, column: 9, scope: !102)
!106 = !DILocation(line: 72, column: 5, scope: !58)
!107 = !DILocation(line: 74, column: 12, scope: !58)
!108 = !DILocation(line: 74, column: 5, scope: !58)
!109 = !DILocation(line: 77, column: 16, scope: !58)
!110 = !DILocation(line: 77, column: 24, scope: !58)
!111 = !DILocation(line: 77, column: 5, scope: !58)
!112 = !DILocation(line: 78, column: 16, scope: !58)
!113 = !DILocation(line: 78, column: 5, scope: !58)
!114 = !DILocation(line: 81, column: 10, scope: !58)
!115 = !DILocation(line: 81, column: 5, scope: !58)
!116 = !DILocation(line: 82, column: 12, scope: !58)
!117 = !DILocation(line: 82, column: 5, scope: !58)
!118 = !DILocation(line: 83, column: 1, scope: !58)
!119 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 85, type: !120, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!120 = !DISubroutineType(types: !121)
!121 = !{!51}
!122 = !DILocalVariable(name: "dummy_self", scope: !119, file: !1, line: 86, type: !4)
!123 = !DILocation(line: 86, column: 15, scope: !119)
!124 = !DILocalVariable(name: "dummy_args", scope: !119, file: !1, line: 87, type: !4)
!125 = !DILocation(line: 87, column: 15, scope: !119)
!126 = !DILocalVariable(name: "dummy_kwargs", scope: !119, file: !1, line: 88, type: !4)
!127 = !DILocation(line: 88, column: 15, scope: !119)
!128 = !DILocalVariable(name: "result", scope: !119, file: !1, line: 89, type: !4)
!129 = !DILocation(line: 89, column: 15, scope: !119)
!130 = !DILocation(line: 92, column: 41, scope: !119)
!131 = !DILocation(line: 92, column: 53, scope: !119)
!132 = !DILocation(line: 92, column: 65, scope: !119)
!133 = !DILocation(line: 92, column: 14, scope: !119)
!134 = !DILocation(line: 92, column: 12, scope: !119)
!135 = !DILocation(line: 94, column: 11, scope: !119)
!136 = !DILocation(line: 95, column: 5, scope: !119)
!137 = distinct !DISubprogram(name: "memset", scope: !138, file: !138, line: 12, type: !139, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !24)
!138 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!139 = !DISubroutineType(types: !140)
!140 = !{!3, !3, !51, !21}
!141 = !DILocalVariable(name: "dst", arg: 1, scope: !137, file: !138, line: 12, type: !3)
!142 = !DILocation(line: 12, column: 20, scope: !137)
!143 = !DILocalVariable(name: "s", arg: 2, scope: !137, file: !138, line: 12, type: !51)
!144 = !DILocation(line: 12, column: 29, scope: !137)
!145 = !DILocalVariable(name: "count", arg: 3, scope: !137, file: !138, line: 12, type: !21)
!146 = !DILocation(line: 12, column: 39, scope: !137)
!147 = !DILocalVariable(name: "a", scope: !137, file: !138, line: 13, type: !148)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!150 = !DILocation(line: 13, column: 9, scope: !137)
!151 = !DILocation(line: 13, column: 13, scope: !137)
!152 = !DILocation(line: 14, column: 3, scope: !137)
!153 = !DILocation(line: 14, column: 15, scope: !137)
!154 = !DILocation(line: 14, column: 18, scope: !137)
!155 = !DILocation(line: 15, column: 12, scope: !137)
!156 = !DILocation(line: 15, column: 7, scope: !137)
!157 = !DILocation(line: 15, column: 10, scope: !137)
!158 = distinct !{!158, !152, !155, !159}
!159 = !{!"llvm.loop.mustprogress"}
!160 = !DILocation(line: 16, column: 10, scope: !137)
!161 = !DILocation(line: 16, column: 3, scope: !137)

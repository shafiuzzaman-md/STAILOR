; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/269_libxml.c_3250_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/269_libxml.c_3250_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.xmlRelaxNGValidCtxtPyCtxt = type { %struct._object*, %struct._object* }
%struct._object = type opaque

@.str = private unnamed_addr constant [16 x i8] c"malloc_succeeds\00", align 1
@pyCtxt = internal global %struct.xmlRelaxNGValidCtxtPyCtxt* null, align 8, !dbg !0
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_55980_vul/269_libxml.c_3250_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.target_function = private unnamed_addr constant [50 x i8] c"PyObject *target_function(PyObject *, PyObject *)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !27 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !34, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.declare(metadata i8** %3, metadata !36, metadata !DIExpression()), !dbg !37
  %4 = load i64, i64* %2, align 8, !dbg !38
  %5 = call noalias i8* @malloc(i64 noundef %4) #7, !dbg !39
  store i8* %5, i8** %3, align 8, !dbg !37
  %6 = load i8*, i8** %3, align 8, !dbg !40
  ret i8* %6, !dbg !41
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._object* @libxml_intWrap(i32 noundef %0) #0 !dbg !42 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !46, metadata !DIExpression()), !dbg !47
  %3 = load i32, i32* %2, align 4, !dbg !48
  %4 = sext i32 %3 to i64, !dbg !49
  %5 = inttoptr i64 %4 to %struct._object*, !dbg !50
  ret %struct._object* %5, !dbg !51
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !52 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct._object*, align 8
  %4 = alloca %struct._object*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !55, metadata !DIExpression()), !dbg !56
  %5 = bitcast i32* %2 to i8*, !dbg !57
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !58
  %6 = load i32, i32* %2, align 4, !dbg !59
  %7 = icmp ne i32 %6, 0, !dbg !59
  br i1 %7, label %8, label %13, !dbg !61

8:                                                ; preds = %0
  %9 = load i32, i32* %2, align 4, !dbg !62
  %10 = icmp ne i32 %9, 0, !dbg !64
  %11 = zext i1 %10 to i32, !dbg !64
  %12 = sext i32 %11 to i64, !dbg !62
  call void @klee_assume(i64 noundef %12), !dbg !65
  br label %18, !dbg !66

13:                                               ; preds = %0
  %14 = load i32, i32* %2, align 4, !dbg !67
  %15 = icmp eq i32 %14, 0, !dbg !69
  %16 = zext i1 %15 to i32, !dbg !69
  %17 = sext i32 %16 to i64, !dbg !67
  call void @klee_assume(i64 noundef %17), !dbg !70
  br label %18

18:                                               ; preds = %13, %8
  call void @llvm.dbg.declare(metadata %struct._object** %3, metadata !71, metadata !DIExpression()), !dbg !72
  store %struct._object* inttoptr (i64 1 to %struct._object*), %struct._object** %3, align 8, !dbg !72
  call void @llvm.dbg.declare(metadata %struct._object** %4, metadata !73, metadata !DIExpression()), !dbg !74
  store %struct._object* inttoptr (i64 2 to %struct._object*), %struct._object** %4, align 8, !dbg !74
  store %struct.xmlRelaxNGValidCtxtPyCtxt* null, %struct.xmlRelaxNGValidCtxtPyCtxt** @pyCtxt, align 8, !dbg !75
  %19 = load %struct._object*, %struct._object** %3, align 8, !dbg !76
  %20 = load %struct._object*, %struct._object** %4, align 8, !dbg !77
  %21 = call %struct._object* @target_function(%struct._object* noundef %19, %struct._object* noundef %20), !dbg !78
  %22 = load %struct.xmlRelaxNGValidCtxtPyCtxt*, %struct.xmlRelaxNGValidCtxtPyCtxt** @pyCtxt, align 8, !dbg !79
  %23 = icmp ne %struct.xmlRelaxNGValidCtxtPyCtxt* %22, null, !dbg !81
  br i1 %23, label %24, label %27, !dbg !82

24:                                               ; preds = %18
  %25 = load %struct.xmlRelaxNGValidCtxtPyCtxt*, %struct.xmlRelaxNGValidCtxtPyCtxt** @pyCtxt, align 8, !dbg !83
  %26 = bitcast %struct.xmlRelaxNGValidCtxtPyCtxt* %25 to i8*, !dbg !83
  call void @free(i8* noundef %26) #7, !dbg !85
  store %struct.xmlRelaxNGValidCtxtPyCtxt* null, %struct.xmlRelaxNGValidCtxtPyCtxt** @pyCtxt, align 8, !dbg !86
  br label %27, !dbg !87

27:                                               ; preds = %24, %18
  ret i32 0, !dbg !88
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct._object* @target_function(%struct._object* noundef %0, %struct._object* noundef %1) #0 !dbg !89 {
  %3 = alloca %struct._object*, align 8
  %4 = alloca %struct._object*, align 8
  %5 = alloca %struct._object*, align 8
  %6 = alloca %struct._object*, align 8
  store %struct._object* %0, %struct._object** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._object** %4, metadata !92, metadata !DIExpression()), !dbg !93
  store %struct._object* %1, %struct._object** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._object** %5, metadata !94, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.declare(metadata %struct._object** %6, metadata !96, metadata !DIExpression()), !dbg !97
  %7 = load %struct.xmlRelaxNGValidCtxtPyCtxt*, %struct.xmlRelaxNGValidCtxtPyCtxt** @pyCtxt, align 8, !dbg !98
  %8 = icmp eq %struct.xmlRelaxNGValidCtxtPyCtxt* %7, null, !dbg !100
  br i1 %8, label %9, label %22, !dbg !101

9:                                                ; preds = %2
  %10 = call i8* @xmlMalloc(i64 noundef 16), !dbg !102
  %11 = bitcast i8* %10 to %struct.xmlRelaxNGValidCtxtPyCtxt*, !dbg !102
  store %struct.xmlRelaxNGValidCtxtPyCtxt* %11, %struct.xmlRelaxNGValidCtxtPyCtxt** @pyCtxt, align 8, !dbg !104
  %12 = load %struct.xmlRelaxNGValidCtxtPyCtxt*, %struct.xmlRelaxNGValidCtxtPyCtxt** @pyCtxt, align 8, !dbg !105
  %13 = icmp eq %struct.xmlRelaxNGValidCtxtPyCtxt* %12, null, !dbg !107
  br i1 %13, label %14, label %17, !dbg !108

14:                                               ; preds = %9
  %15 = call %struct._object* @libxml_intWrap(i32 noundef -1), !dbg !109
  store %struct._object* %15, %struct._object** %6, align 8, !dbg !111
  %16 = load %struct._object*, %struct._object** %6, align 8, !dbg !112
  store %struct._object* %16, %struct._object** %3, align 8, !dbg !113
  br label %58, !dbg !113

17:                                               ; preds = %9
  %18 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.2, i64 0, i64 0), i32 noundef 44, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !114
  %19 = load %struct.xmlRelaxNGValidCtxtPyCtxt*, %struct.xmlRelaxNGValidCtxtPyCtxt** @pyCtxt, align 8, !dbg !115
  %20 = bitcast %struct.xmlRelaxNGValidCtxtPyCtxt* %19 to i8*, !dbg !116
  %21 = call i8* @memset(i8* %20, i32 0, i64 16), !dbg !116
  br label %22, !dbg !117

22:                                               ; preds = %17, %2
  br label %23, !dbg !118

23:                                               ; preds = %22
  %24 = load %struct.xmlRelaxNGValidCtxtPyCtxt*, %struct.xmlRelaxNGValidCtxtPyCtxt** @pyCtxt, align 8, !dbg !119
  %25 = getelementptr inbounds %struct.xmlRelaxNGValidCtxtPyCtxt, %struct.xmlRelaxNGValidCtxtPyCtxt* %24, i32 0, i32 0, !dbg !119
  %26 = load %struct._object*, %struct._object** %25, align 8, !dbg !119
  %27 = icmp ne %struct._object* %26, null, !dbg !119
  br i1 %27, label %28, label %29, !dbg !122

28:                                               ; preds = %23
  br label %29, !dbg !123

29:                                               ; preds = %28, %23
  br label %30, !dbg !122

30:                                               ; preds = %29
  br label %31, !dbg !125

31:                                               ; preds = %30
  %32 = load %struct._object*, %struct._object** %4, align 8, !dbg !126
  %33 = icmp ne %struct._object* %32, null, !dbg !126
  br i1 %33, label %34, label %35, !dbg !129

34:                                               ; preds = %31
  br label %35, !dbg !130

35:                                               ; preds = %34, %31
  br label %36, !dbg !129

36:                                               ; preds = %35
  %37 = load %struct._object*, %struct._object** %4, align 8, !dbg !132
  %38 = load %struct.xmlRelaxNGValidCtxtPyCtxt*, %struct.xmlRelaxNGValidCtxtPyCtxt** @pyCtxt, align 8, !dbg !133
  %39 = getelementptr inbounds %struct.xmlRelaxNGValidCtxtPyCtxt, %struct.xmlRelaxNGValidCtxtPyCtxt* %38, i32 0, i32 0, !dbg !134
  store %struct._object* %37, %struct._object** %39, align 8, !dbg !135
  br label %40, !dbg !136

40:                                               ; preds = %36
  %41 = load %struct.xmlRelaxNGValidCtxtPyCtxt*, %struct.xmlRelaxNGValidCtxtPyCtxt** @pyCtxt, align 8, !dbg !137
  %42 = getelementptr inbounds %struct.xmlRelaxNGValidCtxtPyCtxt, %struct.xmlRelaxNGValidCtxtPyCtxt* %41, i32 0, i32 1, !dbg !137
  %43 = load %struct._object*, %struct._object** %42, align 8, !dbg !137
  %44 = icmp ne %struct._object* %43, null, !dbg !137
  br i1 %44, label %45, label %46, !dbg !140

45:                                               ; preds = %40
  br label %46, !dbg !141

46:                                               ; preds = %45, %40
  br label %47, !dbg !140

47:                                               ; preds = %46
  br label %48, !dbg !143

48:                                               ; preds = %47
  %49 = load %struct._object*, %struct._object** %5, align 8, !dbg !144
  %50 = icmp ne %struct._object* %49, null, !dbg !144
  br i1 %50, label %51, label %52, !dbg !147

51:                                               ; preds = %48
  br label %52, !dbg !148

52:                                               ; preds = %51, %48
  br label %53, !dbg !147

53:                                               ; preds = %52
  %54 = load %struct._object*, %struct._object** %5, align 8, !dbg !150
  %55 = load %struct.xmlRelaxNGValidCtxtPyCtxt*, %struct.xmlRelaxNGValidCtxtPyCtxt** @pyCtxt, align 8, !dbg !151
  %56 = getelementptr inbounds %struct.xmlRelaxNGValidCtxtPyCtxt, %struct.xmlRelaxNGValidCtxtPyCtxt* %55, i32 0, i32 1, !dbg !152
  store %struct._object* %54, %struct._object** %56, align 8, !dbg !153
  %57 = call %struct._object* @libxml_intWrap(i32 noundef 0), !dbg !154
  store %struct._object* %57, %struct._object** %3, align 8, !dbg !155
  br label %58, !dbg !155

58:                                               ; preds = %53, %14
  %59 = load %struct._object*, %struct._object** %3, align 8, !dbg !156
  ret %struct._object* %59, !dbg !156
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !157 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !161, metadata !DIExpression()), !dbg !162
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !163, metadata !DIExpression()), !dbg !164
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !165, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.declare(metadata i8** %7, metadata !167, metadata !DIExpression()), !dbg !170
  %8 = load i8*, i8** %4, align 8, !dbg !171
  store i8* %8, i8** %7, align 8, !dbg !170
  br label %9, !dbg !172

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !173
  %11 = add i64 %10, -1, !dbg !173
  store i64 %11, i64* %6, align 8, !dbg !173
  %12 = icmp ugt i64 %10, 0, !dbg !174
  br i1 %12, label %13, label %18, !dbg !172

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !175
  %15 = trunc i32 %14 to i8, !dbg !175
  %16 = load i8*, i8** %7, align 8, !dbg !176
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !176
  store i8* %17, i8** %7, align 8, !dbg !176
  store i8 %15, i8* %16, align 1, !dbg !177
  br label %9, !dbg !172, !llvm.loop !178

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !180
  ret i8* %19, !dbg !181
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26, !26}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pyCtxt", scope: !2, file: !3, line: 25, type: !11, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !10, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/269_libxml.c_3250_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "ee3b912b9a0a70c53bcd2a6175ceeb34")
!4 = !{!5, !8, !9}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !3, line: 10, baseType: !7)
!7 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !3, line: 10, flags: DIFlagFwdDecl)
!8 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!10 = !{!0}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGValidCtxtPyCtxt", file: !3, line: 22, baseType: !13)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 19, size: 128, elements: !14)
!14 = !{!15, !16}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !13, file: !3, line: 20, baseType: !5, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "warn", scope: !13, file: !3, line: 21, baseType: !5, size: 64, offset: 64)
!17 = distinct !DICompileUnit(language: DW_LANG_C99, file: !18, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!19 = !{i32 7, !"Dwarf Version", i32 5}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{i32 1, !"wchar_size", i32 4}
!22 = !{i32 7, !"PIC Level", i32 2}
!23 = !{i32 7, !"PIE Level", i32 2}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"Ubuntu clang version 14.0.6"}
!27 = distinct !DISubprogram(name: "xmlMalloc", scope: !3, file: !3, line: 62, type: !28, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !33)
!28 = !DISubroutineType(types: !29)
!29 = !{!9, !30}
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !31, line: 46, baseType: !32)
!31 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!32 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!33 = !{}
!34 = !DILocalVariable(name: "size", arg: 1, scope: !27, file: !3, line: 62, type: !30)
!35 = !DILocation(line: 62, column: 24, scope: !27)
!36 = !DILocalVariable(name: "ptr", scope: !27, file: !3, line: 63, type: !9)
!37 = !DILocation(line: 63, column: 11, scope: !27)
!38 = !DILocation(line: 63, column: 24, scope: !27)
!39 = !DILocation(line: 63, column: 17, scope: !27)
!40 = !DILocation(line: 64, column: 12, scope: !27)
!41 = !DILocation(line: 64, column: 5, scope: !27)
!42 = distinct !DISubprogram(name: "libxml_intWrap", scope: !3, file: !3, line: 67, type: !43, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !33)
!43 = !DISubroutineType(types: !44)
!44 = !{!5, !45}
!45 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!46 = !DILocalVariable(name: "value", arg: 1, scope: !42, file: !3, line: 67, type: !45)
!47 = !DILocation(line: 67, column: 30, scope: !42)
!48 = !DILocation(line: 69, column: 30, scope: !42)
!49 = !DILocation(line: 69, column: 24, scope: !42)
!50 = !DILocation(line: 69, column: 12, scope: !42)
!51 = !DILocation(line: 69, column: 5, scope: !42)
!52 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 72, type: !53, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !33)
!53 = !DISubroutineType(types: !54)
!54 = !{!45}
!55 = !DILocalVariable(name: "malloc_succeeds", scope: !52, file: !3, line: 74, type: !45)
!56 = !DILocation(line: 74, column: 9, scope: !52)
!57 = !DILocation(line: 75, column: 24, scope: !52)
!58 = !DILocation(line: 75, column: 5, scope: !52)
!59 = !DILocation(line: 78, column: 9, scope: !60)
!60 = distinct !DILexicalBlock(scope: !52, file: !3, line: 78, column: 9)
!61 = !DILocation(line: 78, column: 9, scope: !52)
!62 = !DILocation(line: 80, column: 21, scope: !63)
!63 = distinct !DILexicalBlock(scope: !60, file: !3, line: 78, column: 26)
!64 = !DILocation(line: 80, column: 37, scope: !63)
!65 = !DILocation(line: 80, column: 9, scope: !63)
!66 = !DILocation(line: 81, column: 5, scope: !63)
!67 = !DILocation(line: 83, column: 21, scope: !68)
!68 = distinct !DILexicalBlock(scope: !60, file: !3, line: 81, column: 12)
!69 = !DILocation(line: 83, column: 37, scope: !68)
!70 = !DILocation(line: 83, column: 9, scope: !68)
!71 = !DILocalVariable(name: "error_obj", scope: !52, file: !3, line: 87, type: !5)
!72 = !DILocation(line: 87, column: 15, scope: !52)
!73 = !DILocalVariable(name: "warn_obj", scope: !52, file: !3, line: 88, type: !5)
!74 = !DILocation(line: 88, column: 15, scope: !52)
!75 = !DILocation(line: 91, column: 12, scope: !52)
!76 = !DILocation(line: 94, column: 21, scope: !52)
!77 = !DILocation(line: 94, column: 32, scope: !52)
!78 = !DILocation(line: 94, column: 5, scope: !52)
!79 = !DILocation(line: 97, column: 9, scope: !80)
!80 = distinct !DILexicalBlock(scope: !52, file: !3, line: 97, column: 9)
!81 = !DILocation(line: 97, column: 16, scope: !80)
!82 = !DILocation(line: 97, column: 9, scope: !52)
!83 = !DILocation(line: 98, column: 14, scope: !84)
!84 = distinct !DILexicalBlock(scope: !80, file: !3, line: 97, column: 25)
!85 = !DILocation(line: 98, column: 9, scope: !84)
!86 = !DILocation(line: 99, column: 16, scope: !84)
!87 = !DILocation(line: 100, column: 5, scope: !84)
!88 = !DILocation(line: 102, column: 5, scope: !52)
!89 = distinct !DISubprogram(name: "target_function", scope: !3, file: !3, line: 28, type: !90, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !33)
!90 = !DISubroutineType(types: !91)
!91 = !{!5, !5, !5}
!92 = !DILocalVariable(name: "pyobj_error", arg: 1, scope: !89, file: !3, line: 28, type: !5)
!93 = !DILocation(line: 28, column: 44, scope: !89)
!94 = !DILocalVariable(name: "pyobj_warn", arg: 2, scope: !89, file: !3, line: 28, type: !5)
!95 = !DILocation(line: 28, column: 67, scope: !89)
!96 = !DILocalVariable(name: "py_retval", scope: !89, file: !3, line: 29, type: !5)
!97 = !DILocation(line: 29, column: 15, scope: !89)
!98 = !DILocation(line: 31, column: 9, scope: !99)
!99 = distinct !DILexicalBlock(scope: !89, file: !3, line: 31, column: 9)
!100 = !DILocation(line: 31, column: 16, scope: !99)
!101 = !DILocation(line: 31, column: 9, scope: !89)
!102 = !DILocation(line: 33, column: 18, scope: !103)
!103 = distinct !DILexicalBlock(scope: !99, file: !3, line: 31, column: 25)
!104 = !DILocation(line: 33, column: 16, scope: !103)
!105 = !DILocation(line: 34, column: 13, scope: !106)
!106 = distinct !DILexicalBlock(scope: !103, file: !3, line: 34, column: 13)
!107 = !DILocation(line: 34, column: 20, scope: !106)
!108 = !DILocation(line: 34, column: 13, scope: !103)
!109 = !DILocation(line: 35, column: 25, scope: !110)
!110 = distinct !DILexicalBlock(scope: !106, file: !3, line: 34, column: 29)
!111 = !DILocation(line: 35, column: 23, scope: !110)
!112 = !DILocation(line: 36, column: 20, scope: !110)
!113 = !DILocation(line: 36, column: 13, scope: !110)
!114 = !DILocation(line: 44, column: 9, scope: !103)
!115 = !DILocation(line: 46, column: 16, scope: !103)
!116 = !DILocation(line: 46, column: 9, scope: !103)
!117 = !DILocation(line: 47, column: 5, scope: !103)
!118 = !DILocation(line: 50, column: 5, scope: !89)
!119 = !DILocation(line: 50, column: 5, scope: !120)
!120 = distinct !DILexicalBlock(scope: !121, file: !3, line: 50, column: 5)
!121 = distinct !DILexicalBlock(scope: !89, file: !3, line: 50, column: 5)
!122 = !DILocation(line: 50, column: 5, scope: !121)
!123 = !DILocation(line: 50, column: 5, scope: !124)
!124 = distinct !DILexicalBlock(scope: !120, file: !3, line: 50, column: 5)
!125 = !DILocation(line: 51, column: 5, scope: !89)
!126 = !DILocation(line: 51, column: 5, scope: !127)
!127 = distinct !DILexicalBlock(scope: !128, file: !3, line: 51, column: 5)
!128 = distinct !DILexicalBlock(scope: !89, file: !3, line: 51, column: 5)
!129 = !DILocation(line: 51, column: 5, scope: !128)
!130 = !DILocation(line: 51, column: 5, scope: !131)
!131 = distinct !DILexicalBlock(scope: !127, file: !3, line: 51, column: 5)
!132 = !DILocation(line: 52, column: 21, scope: !89)
!133 = !DILocation(line: 52, column: 5, scope: !89)
!134 = !DILocation(line: 52, column: 13, scope: !89)
!135 = !DILocation(line: 52, column: 19, scope: !89)
!136 = !DILocation(line: 54, column: 5, scope: !89)
!137 = !DILocation(line: 54, column: 5, scope: !138)
!138 = distinct !DILexicalBlock(scope: !139, file: !3, line: 54, column: 5)
!139 = distinct !DILexicalBlock(scope: !89, file: !3, line: 54, column: 5)
!140 = !DILocation(line: 54, column: 5, scope: !139)
!141 = !DILocation(line: 54, column: 5, scope: !142)
!142 = distinct !DILexicalBlock(scope: !138, file: !3, line: 54, column: 5)
!143 = !DILocation(line: 55, column: 5, scope: !89)
!144 = !DILocation(line: 55, column: 5, scope: !145)
!145 = distinct !DILexicalBlock(scope: !146, file: !3, line: 55, column: 5)
!146 = distinct !DILexicalBlock(scope: !89, file: !3, line: 55, column: 5)
!147 = !DILocation(line: 55, column: 5, scope: !146)
!148 = !DILocation(line: 55, column: 5, scope: !149)
!149 = distinct !DILexicalBlock(scope: !145, file: !3, line: 55, column: 5)
!150 = !DILocation(line: 56, column: 20, scope: !89)
!151 = !DILocation(line: 56, column: 5, scope: !89)
!152 = !DILocation(line: 56, column: 13, scope: !89)
!153 = !DILocation(line: 56, column: 18, scope: !89)
!154 = !DILocation(line: 58, column: 12, scope: !89)
!155 = !DILocation(line: 58, column: 5, scope: !89)
!156 = !DILocation(line: 59, column: 1, scope: !89)
!157 = distinct !DISubprogram(name: "memset", scope: !158, file: !158, line: 12, type: !159, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !33)
!158 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!159 = !DISubroutineType(types: !160)
!160 = !{!9, !9, !45, !30}
!161 = !DILocalVariable(name: "dst", arg: 1, scope: !157, file: !158, line: 12, type: !9)
!162 = !DILocation(line: 12, column: 20, scope: !157)
!163 = !DILocalVariable(name: "s", arg: 2, scope: !157, file: !158, line: 12, type: !45)
!164 = !DILocation(line: 12, column: 29, scope: !157)
!165 = !DILocalVariable(name: "count", arg: 3, scope: !157, file: !158, line: 12, type: !30)
!166 = !DILocation(line: 12, column: 39, scope: !157)
!167 = !DILocalVariable(name: "a", scope: !157, file: !158, line: 13, type: !168)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!170 = !DILocation(line: 13, column: 9, scope: !157)
!171 = !DILocation(line: 13, column: 13, scope: !157)
!172 = !DILocation(line: 14, column: 3, scope: !157)
!173 = !DILocation(line: 14, column: 15, scope: !157)
!174 = !DILocation(line: 14, column: 18, scope: !157)
!175 = !DILocation(line: 15, column: 12, scope: !157)
!176 = !DILocation(line: 15, column: 7, scope: !157)
!177 = !DILocation(line: 15, column: 10, scope: !157)
!178 = distinct !{!178, !172, !175, !179}
!179 = !{!"llvm.loop.mustprogress"}
!180 = !DILocation(line: 16, column: 10, scope: !157)
!181 = !DILocation(line: 16, column: 3, scope: !157)

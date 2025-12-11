; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/211_libxml.c_289_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/211_libxml.c_289_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._object = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"lenread\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"len\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Py_DECREF(%struct._object* noundef %0) #0 !dbg !22 {
  %2 = alloca %struct._object*, align 8
  store %struct._object* %0, %struct._object** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._object** %2, metadata !26, metadata !DIExpression()), !dbg !27
  %3 = load %struct._object*, %struct._object** %2, align 8, !dbg !28
  %4 = icmp ne %struct._object* %3, null, !dbg !28
  br i1 %4, label %5, label %10, !dbg !30

5:                                                ; preds = %1
  %6 = load %struct._object*, %struct._object** %2, align 8, !dbg !31
  %7 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0, !dbg !33
  %8 = load i32, i32* %7, align 4, !dbg !34
  %9 = add nsw i32 %8, -1, !dbg !34
  store i32 %9, i32* %7, align 4, !dbg !34
  br label %10, !dbg !35

10:                                               ; preds = %5, %1
  ret void, !dbg !36
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PyObject_GetBuffer(%struct._object* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !37 {
  %4 = alloca %struct._object*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct._object* %0, %struct._object** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._object** %4, metadata !40, metadata !DIExpression()), !dbg !41
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !42, metadata !DIExpression()), !dbg !43
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !44, metadata !DIExpression()), !dbg !45
  ret i32 0, !dbg !46
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PyBuffer_Release(i8* noundef %0) #0 !dbg !47 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !50, metadata !DIExpression()), !dbg !51
  ret void, !dbg !52
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_function(%struct._object* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !53 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._object*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct._object* %0, %struct._object** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._object** %5, metadata !56, metadata !DIExpression()), !dbg !57
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !58, metadata !DIExpression()), !dbg !59
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !60, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata i8** %8, metadata !62, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.declare(metadata i32* %9, metadata !64, metadata !DIExpression()), !dbg !65
  %10 = call noalias i8* @malloc(i64 noundef 1024) #6, !dbg !66
  store i8* %10, i8** %8, align 8, !dbg !67
  %11 = load i8*, i8** %8, align 8, !dbg !68
  %12 = icmp ne i8* %11, null, !dbg !68
  br i1 %12, label %14, label %13, !dbg !70

13:                                               ; preds = %3
  store i32 -1, i32* %4, align 4, !dbg !71
  br label %39, !dbg !71

14:                                               ; preds = %3
  %15 = bitcast i32* %9 to i8*, !dbg !73
  call void @klee_make_symbolic(i8* noundef %15, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)), !dbg !74
  %16 = load i32, i32* %9, align 4, !dbg !75
  %17 = icmp sge i32 %16, 0, !dbg !76
  %18 = zext i1 %17 to i32, !dbg !76
  %19 = sext i32 %18 to i64, !dbg !75
  call void @klee_assume(i64 noundef %19), !dbg !77
  %20 = load i32, i32* %9, align 4, !dbg !78
  %21 = load i32, i32* %7, align 4, !dbg !80
  %22 = icmp sgt i32 %20, %21, !dbg !81
  br i1 %22, label %23, label %29, !dbg !82

23:                                               ; preds = %14
  %24 = load i8*, i8** %6, align 8, !dbg !83
  %25 = load i8*, i8** %8, align 8, !dbg !85
  %26 = load i32, i32* %7, align 4, !dbg !86
  %27 = sext i32 %26 to i64, !dbg !86
  %28 = call i8* @memcpy(i8* %24, i8* %25, i64 %27), !dbg !87
  br label %35, !dbg !88

29:                                               ; preds = %14
  %30 = load i8*, i8** %6, align 8, !dbg !89
  %31 = load i8*, i8** %8, align 8, !dbg !91
  %32 = load i32, i32* %9, align 4, !dbg !92
  %33 = sext i32 %32 to i64, !dbg !92
  %34 = call i8* @memcpy(i8* %30, i8* %31, i64 %33), !dbg !93
  br label %35

35:                                               ; preds = %29, %23
  %36 = load %struct._object*, %struct._object** %5, align 8, !dbg !94
  call void @Py_DECREF(%struct._object* noundef %36), !dbg !95
  %37 = load i8*, i8** %8, align 8, !dbg !96
  call void @free(i8* noundef %37) #6, !dbg !97
  %38 = load i32, i32* %9, align 4, !dbg !98
  store i32 %38, i32* %4, align 4, !dbg !99
  br label %39, !dbg !99

39:                                               ; preds = %35, %13
  %40 = load i32, i32* %4, align 4, !dbg !100
  ret i32 %40, !dbg !100
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libxml_xmlCreatePushParser() #0 !dbg !101 {
  ret i32 0, !dbg !104
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !105 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._object*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._object** %2, metadata !106, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.declare(metadata i8** %3, metadata !108, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata i32* %4, metadata !110, metadata !DIExpression()), !dbg !111
  %6 = call noalias i8* @malloc(i64 noundef 4) #6, !dbg !112
  %7 = bitcast i8* %6 to %struct._object*, !dbg !113
  store %struct._object* %7, %struct._object** %2, align 8, !dbg !114
  %8 = load %struct._object*, %struct._object** %2, align 8, !dbg !115
  %9 = bitcast %struct._object* %8 to i8*, !dbg !115
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !116
  %10 = load %struct._object*, %struct._object** %2, align 8, !dbg !117
  %11 = icmp ne %struct._object* %10, null, !dbg !118
  %12 = zext i1 %11 to i32, !dbg !118
  %13 = sext i32 %12 to i64, !dbg !117
  call void @klee_assume(i64 noundef %13), !dbg !119
  %14 = call noalias i8* @malloc(i64 noundef 1024) #6, !dbg !120
  store i8* %14, i8** %3, align 8, !dbg !121
  %15 = load i8*, i8** %3, align 8, !dbg !122
  %16 = icmp ne i8* %15, null, !dbg !123
  %17 = zext i1 %16 to i32, !dbg !123
  %18 = sext i32 %17 to i64, !dbg !122
  call void @klee_assume(i64 noundef %18), !dbg !124
  %19 = bitcast i32* %4 to i8*, !dbg !125
  call void @klee_make_symbolic(i8* noundef %19, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)), !dbg !126
  %20 = load i32, i32* %4, align 4, !dbg !127
  %21 = icmp sge i32 %20, 0, !dbg !128
  %22 = zext i1 %21 to i32, !dbg !128
  %23 = sext i32 %22 to i64, !dbg !127
  call void @klee_assume(i64 noundef %23), !dbg !129
  %24 = load i32, i32* %4, align 4, !dbg !130
  %25 = icmp sle i32 %24, 1024, !dbg !131
  %26 = zext i1 %25 to i32, !dbg !131
  %27 = sext i32 %26 to i64, !dbg !130
  call void @klee_assume(i64 noundef %27), !dbg !132
  call void @llvm.dbg.declare(metadata i32* %5, metadata !133, metadata !DIExpression()), !dbg !134
  %28 = load %struct._object*, %struct._object** %2, align 8, !dbg !135
  %29 = load i8*, i8** %3, align 8, !dbg !136
  %30 = load i32, i32* %4, align 4, !dbg !137
  %31 = call i32 @target_function(%struct._object* noundef %28, i8* noundef %29, i32 noundef %30), !dbg !138
  store i32 %31, i32* %5, align 4, !dbg !134
  %32 = load i8*, i8** %3, align 8, !dbg !139
  call void @free(i8* noundef %32) #6, !dbg !140
  %33 = load %struct._object*, %struct._object** %2, align 8, !dbg !141
  %34 = bitcast %struct._object* %33 to i8*, !dbg !141
  call void @free(i8* noundef %34) #6, !dbg !142
  ret i32 0, !dbg !143
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #5 !dbg !144 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !153, metadata !DIExpression()), !dbg !154
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !155, metadata !DIExpression()), !dbg !156
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !157, metadata !DIExpression()), !dbg !158
  call void @llvm.dbg.declare(metadata i8** %7, metadata !159, metadata !DIExpression()), !dbg !160
  %9 = load i8*, i8** %4, align 8, !dbg !161
  store i8* %9, i8** %7, align 8, !dbg !160
  call void @llvm.dbg.declare(metadata i8** %8, metadata !162, metadata !DIExpression()), !dbg !165
  %10 = load i8*, i8** %5, align 8, !dbg !166
  store i8* %10, i8** %8, align 8, !dbg !165
  br label %11, !dbg !167

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !168
  %13 = add i64 %12, -1, !dbg !168
  store i64 %13, i64* %6, align 8, !dbg !168
  %14 = icmp ugt i64 %12, 0, !dbg !169
  br i1 %14, label %15, label %21, !dbg !167

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !170
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !170
  store i8* %17, i8** %8, align 8, !dbg !170
  %18 = load i8, i8* %16, align 1, !dbg !171
  %19 = load i8*, i8** %7, align 8, !dbg !172
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !172
  store i8* %20, i8** %7, align 8, !dbg !172
  store i8 %18, i8* %19, align 1, !dbg !173
  br label %11, !dbg !167, !llvm.loop !174

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !176
  ret i8* %22, !dbg !177
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21, !21}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/211_libxml.c_289_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "1d974c6b54f84750622c06dc6ffa01f3")
!2 = !{!3, !5, !11}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !1, line: 8, baseType: !7)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !1, line: 6, size: 32, elements: !8)
!8 = !{!9}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !7, file: !1, line: 7, baseType: !10, size: 32)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = distinct !DICompileUnit(language: DW_LANG_C99, file: !13, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!13 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!14 = !{i32 7, !"Dwarf Version", i32 5}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{i32 7, !"PIC Level", i32 2}
!18 = !{i32 7, !"PIE Level", i32 2}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"Ubuntu clang version 14.0.6"}
!22 = distinct !DISubprogram(name: "Py_DECREF", scope: !1, file: !1, line: 11, type: !23, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!23 = !DISubroutineType(types: !24)
!24 = !{null, !5}
!25 = !{}
!26 = !DILocalVariable(name: "obj", arg: 1, scope: !22, file: !1, line: 11, type: !5)
!27 = !DILocation(line: 11, column: 26, scope: !22)
!28 = !DILocation(line: 12, column: 9, scope: !29)
!29 = distinct !DILexicalBlock(scope: !22, file: !1, line: 12, column: 9)
!30 = !DILocation(line: 12, column: 9, scope: !22)
!31 = !DILocation(line: 13, column: 9, scope: !32)
!32 = distinct !DILexicalBlock(scope: !29, file: !1, line: 12, column: 14)
!33 = !DILocation(line: 13, column: 14, scope: !32)
!34 = !DILocation(line: 13, column: 23, scope: !32)
!35 = !DILocation(line: 14, column: 5, scope: !32)
!36 = !DILocation(line: 15, column: 1, scope: !22)
!37 = distinct !DISubprogram(name: "PyObject_GetBuffer", scope: !1, file: !1, line: 18, type: !38, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!38 = !DISubroutineType(types: !39)
!39 = !{!10, !5, !11, !10}
!40 = !DILocalVariable(name: "obj", arg: 1, scope: !37, file: !1, line: 18, type: !5)
!41 = !DILocation(line: 18, column: 34, scope: !37)
!42 = !DILocalVariable(name: "view", arg: 2, scope: !37, file: !1, line: 18, type: !11)
!43 = !DILocation(line: 18, column: 45, scope: !37)
!44 = !DILocalVariable(name: "flags", arg: 3, scope: !37, file: !1, line: 18, type: !10)
!45 = !DILocation(line: 18, column: 55, scope: !37)
!46 = !DILocation(line: 20, column: 5, scope: !37)
!47 = distinct !DISubprogram(name: "PyBuffer_Release", scope: !1, file: !1, line: 24, type: !48, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !11}
!50 = !DILocalVariable(name: "view", arg: 1, scope: !47, file: !1, line: 24, type: !11)
!51 = !DILocation(line: 24, column: 29, scope: !47)
!52 = !DILocation(line: 26, column: 1, scope: !47)
!53 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 29, type: !54, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!54 = !DISubroutineType(types: !55)
!55 = !{!10, !5, !3, !10}
!56 = !DILocalVariable(name: "ret", arg: 1, scope: !53, file: !1, line: 29, type: !5)
!57 = !DILocation(line: 29, column: 31, scope: !53)
!58 = !DILocalVariable(name: "buffer", arg: 2, scope: !53, file: !1, line: 29, type: !3)
!59 = !DILocation(line: 29, column: 42, scope: !53)
!60 = !DILocalVariable(name: "len", arg: 3, scope: !53, file: !1, line: 29, type: !10)
!61 = !DILocation(line: 29, column: 54, scope: !53)
!62 = !DILocalVariable(name: "data", scope: !53, file: !1, line: 30, type: !3)
!63 = !DILocation(line: 30, column: 11, scope: !53)
!64 = !DILocalVariable(name: "lenread", scope: !53, file: !1, line: 31, type: !10)
!65 = !DILocation(line: 31, column: 9, scope: !53)
!66 = !DILocation(line: 34, column: 20, scope: !53)
!67 = !DILocation(line: 34, column: 10, scope: !53)
!68 = !DILocation(line: 35, column: 10, scope: !69)
!69 = distinct !DILexicalBlock(scope: !53, file: !1, line: 35, column: 9)
!70 = !DILocation(line: 35, column: 9, scope: !53)
!71 = !DILocation(line: 36, column: 9, scope: !72)
!72 = distinct !DILexicalBlock(scope: !69, file: !1, line: 35, column: 16)
!73 = !DILocation(line: 40, column: 24, scope: !53)
!74 = !DILocation(line: 40, column: 5, scope: !53)
!75 = !DILocation(line: 43, column: 17, scope: !53)
!76 = !DILocation(line: 43, column: 25, scope: !53)
!77 = !DILocation(line: 43, column: 5, scope: !53)
!78 = !DILocation(line: 46, column: 9, scope: !79)
!79 = distinct !DILexicalBlock(scope: !53, file: !1, line: 46, column: 9)
!80 = !DILocation(line: 46, column: 19, scope: !79)
!81 = !DILocation(line: 46, column: 17, scope: !79)
!82 = !DILocation(line: 46, column: 9, scope: !53)
!83 = !DILocation(line: 47, column: 16, scope: !84)
!84 = distinct !DILexicalBlock(scope: !79, file: !1, line: 46, column: 24)
!85 = !DILocation(line: 47, column: 24, scope: !84)
!86 = !DILocation(line: 47, column: 30, scope: !84)
!87 = !DILocation(line: 47, column: 9, scope: !84)
!88 = !DILocation(line: 48, column: 5, scope: !84)
!89 = !DILocation(line: 49, column: 16, scope: !90)
!90 = distinct !DILexicalBlock(scope: !79, file: !1, line: 48, column: 12)
!91 = !DILocation(line: 49, column: 24, scope: !90)
!92 = !DILocation(line: 49, column: 30, scope: !90)
!93 = !DILocation(line: 49, column: 9, scope: !90)
!94 = !DILocation(line: 52, column: 15, scope: !53)
!95 = !DILocation(line: 52, column: 5, scope: !53)
!96 = !DILocation(line: 53, column: 10, scope: !53)
!97 = !DILocation(line: 53, column: 5, scope: !53)
!98 = !DILocation(line: 54, column: 12, scope: !53)
!99 = !DILocation(line: 54, column: 5, scope: !53)
!100 = !DILocation(line: 55, column: 1, scope: !53)
!101 = distinct !DISubprogram(name: "libxml_xmlCreatePushParser", scope: !1, file: !1, line: 58, type: !102, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!102 = !DISubroutineType(types: !103)
!103 = !{!10}
!104 = !DILocation(line: 60, column: 5, scope: !101)
!105 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 63, type: !102, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!106 = !DILocalVariable(name: "ret", scope: !105, file: !1, line: 64, type: !5)
!107 = !DILocation(line: 64, column: 15, scope: !105)
!108 = !DILocalVariable(name: "buffer", scope: !105, file: !1, line: 65, type: !3)
!109 = !DILocation(line: 65, column: 11, scope: !105)
!110 = !DILocalVariable(name: "len", scope: !105, file: !1, line: 66, type: !10)
!111 = !DILocation(line: 66, column: 9, scope: !105)
!112 = !DILocation(line: 69, column: 23, scope: !105)
!113 = !DILocation(line: 69, column: 11, scope: !105)
!114 = !DILocation(line: 69, column: 9, scope: !105)
!115 = !DILocation(line: 70, column: 24, scope: !105)
!116 = !DILocation(line: 70, column: 5, scope: !105)
!117 = !DILocation(line: 73, column: 17, scope: !105)
!118 = !DILocation(line: 73, column: 21, scope: !105)
!119 = !DILocation(line: 73, column: 5, scope: !105)
!120 = !DILocation(line: 76, column: 22, scope: !105)
!121 = !DILocation(line: 76, column: 12, scope: !105)
!122 = !DILocation(line: 77, column: 17, scope: !105)
!123 = !DILocation(line: 77, column: 24, scope: !105)
!124 = !DILocation(line: 77, column: 5, scope: !105)
!125 = !DILocation(line: 80, column: 24, scope: !105)
!126 = !DILocation(line: 80, column: 5, scope: !105)
!127 = !DILocation(line: 83, column: 17, scope: !105)
!128 = !DILocation(line: 83, column: 21, scope: !105)
!129 = !DILocation(line: 83, column: 5, scope: !105)
!130 = !DILocation(line: 86, column: 17, scope: !105)
!131 = !DILocation(line: 86, column: 21, scope: !105)
!132 = !DILocation(line: 86, column: 5, scope: !105)
!133 = !DILocalVariable(name: "result", scope: !105, file: !1, line: 89, type: !10)
!134 = !DILocation(line: 89, column: 9, scope: !105)
!135 = !DILocation(line: 89, column: 34, scope: !105)
!136 = !DILocation(line: 89, column: 39, scope: !105)
!137 = !DILocation(line: 89, column: 47, scope: !105)
!138 = !DILocation(line: 89, column: 18, scope: !105)
!139 = !DILocation(line: 104, column: 10, scope: !105)
!140 = !DILocation(line: 104, column: 5, scope: !105)
!141 = !DILocation(line: 105, column: 10, scope: !105)
!142 = !DILocation(line: 105, column: 5, scope: !105)
!143 = !DILocation(line: 107, column: 5, scope: !105)
!144 = distinct !DISubprogram(name: "memcpy", scope: !145, file: !145, line: 12, type: !146, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !25)
!145 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!146 = !DISubroutineType(types: !147)
!147 = !{!11, !11, !148, !150}
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !151, line: 46, baseType: !152)
!151 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!152 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!153 = !DILocalVariable(name: "destaddr", arg: 1, scope: !144, file: !145, line: 12, type: !11)
!154 = !DILocation(line: 12, column: 20, scope: !144)
!155 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !144, file: !145, line: 12, type: !148)
!156 = !DILocation(line: 12, column: 42, scope: !144)
!157 = !DILocalVariable(name: "len", arg: 3, scope: !144, file: !145, line: 12, type: !150)
!158 = !DILocation(line: 12, column: 58, scope: !144)
!159 = !DILocalVariable(name: "dest", scope: !144, file: !145, line: 13, type: !3)
!160 = !DILocation(line: 13, column: 9, scope: !144)
!161 = !DILocation(line: 13, column: 16, scope: !144)
!162 = !DILocalVariable(name: "src", scope: !144, file: !145, line: 14, type: !163)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!165 = !DILocation(line: 14, column: 15, scope: !144)
!166 = !DILocation(line: 14, column: 21, scope: !144)
!167 = !DILocation(line: 16, column: 3, scope: !144)
!168 = !DILocation(line: 16, column: 13, scope: !144)
!169 = !DILocation(line: 16, column: 16, scope: !144)
!170 = !DILocation(line: 17, column: 19, scope: !144)
!171 = !DILocation(line: 17, column: 15, scope: !144)
!172 = !DILocation(line: 17, column: 10, scope: !144)
!173 = !DILocation(line: 17, column: 13, scope: !144)
!174 = distinct !{!174, !167, !170, !175}
!175 = !{!"llvm.loop.mustprogress"}
!176 = !DILocation(line: 18, column: 10, scope: !144)
!177 = !DILocation(line: 18, column: 3, scope: !144)

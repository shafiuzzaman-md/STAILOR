; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/326_xmlschemas.c_22741_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/326_xmlschemas.c_22741_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaIDCMatcher = type { %struct._xmlSchemaPSVIIDCKey***, i32, i32 }
%struct._xmlSchemaPSVIIDCKey = type opaque

@.str = private unnamed_addr constant [37 x i8] c"allocating an array of key-sequences\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"(matcher->sizeKeySeqs >= 0) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [110 x i8] c"se_runs/sa_llm/libxml2_62911_vul/326_xmlschemas.c_22741_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlSchemaFormatQName = private unnamed_addr constant [53 x i8] c"int xmlSchemaFormatQName(xmlSchemaIDCMatcher *, int)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"sizeKeySeqs\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"nbKeySeqs\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"pos\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchemaVErrMemory(i8* noundef %0, i8* noundef %1, i8* noundef %2) #0 !dbg !14 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !21, metadata !DIExpression()), !dbg !22
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !23, metadata !DIExpression()), !dbg !24
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !25, metadata !DIExpression()), !dbg !26
  ret void, !dbg !27
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlSchemaFormatQName(%struct._xmlSchemaIDCMatcher* noundef %0, i32 noundef %1) #0 !dbg !28 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlSchemaIDCMatcher*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._xmlSchemaIDCMatcher* %0, %struct._xmlSchemaIDCMatcher** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaIDCMatcher** %4, metadata !45, metadata !DIExpression()), !dbg !46
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !47, metadata !DIExpression()), !dbg !48
  %7 = load %struct._xmlSchemaIDCMatcher*, %struct._xmlSchemaIDCMatcher** %4, align 8, !dbg !49
  %8 = getelementptr inbounds %struct._xmlSchemaIDCMatcher, %struct._xmlSchemaIDCMatcher* %7, i32 0, i32 0, !dbg !51
  %9 = load %struct._xmlSchemaPSVIIDCKey***, %struct._xmlSchemaPSVIIDCKey**** %8, align 8, !dbg !51
  %10 = icmp eq %struct._xmlSchemaPSVIIDCKey*** %9, null, !dbg !52
  br i1 %10, label %11, label %37, !dbg !53

11:                                               ; preds = %2
  %12 = load %struct._xmlSchemaIDCMatcher*, %struct._xmlSchemaIDCMatcher** %4, align 8, !dbg !54
  %13 = getelementptr inbounds %struct._xmlSchemaIDCMatcher, %struct._xmlSchemaIDCMatcher* %12, i32 0, i32 1, !dbg !56
  %14 = load i32, i32* %13, align 8, !dbg !56
  %15 = sext i32 %14 to i64, !dbg !54
  %16 = mul i64 %15, 8, !dbg !57
  %17 = call noalias i8* @malloc(i64 noundef %16) #7, !dbg !58
  %18 = bitcast i8* %17 to %struct._xmlSchemaPSVIIDCKey***, !dbg !58
  %19 = load %struct._xmlSchemaIDCMatcher*, %struct._xmlSchemaIDCMatcher** %4, align 8, !dbg !59
  %20 = getelementptr inbounds %struct._xmlSchemaIDCMatcher, %struct._xmlSchemaIDCMatcher* %19, i32 0, i32 0, !dbg !60
  store %struct._xmlSchemaPSVIIDCKey*** %18, %struct._xmlSchemaPSVIIDCKey**** %20, align 8, !dbg !61
  %21 = load %struct._xmlSchemaIDCMatcher*, %struct._xmlSchemaIDCMatcher** %4, align 8, !dbg !62
  %22 = getelementptr inbounds %struct._xmlSchemaIDCMatcher, %struct._xmlSchemaIDCMatcher* %21, i32 0, i32 0, !dbg !64
  %23 = load %struct._xmlSchemaPSVIIDCKey***, %struct._xmlSchemaPSVIIDCKey**** %22, align 8, !dbg !64
  %24 = icmp eq %struct._xmlSchemaPSVIIDCKey*** %23, null, !dbg !65
  br i1 %24, label %25, label %26, !dbg !66

25:                                               ; preds = %11
  call void @xmlSchemaVErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* noundef null), !dbg !67
  store i32 -1, i32* %3, align 4, !dbg !69
  br label %59, !dbg !69

26:                                               ; preds = %11
  %27 = load %struct._xmlSchemaIDCMatcher*, %struct._xmlSchemaIDCMatcher** %4, align 8, !dbg !70
  %28 = getelementptr inbounds %struct._xmlSchemaIDCMatcher, %struct._xmlSchemaIDCMatcher* %27, i32 0, i32 0, !dbg !71
  %29 = load %struct._xmlSchemaPSVIIDCKey***, %struct._xmlSchemaPSVIIDCKey**** %28, align 8, !dbg !71
  %30 = bitcast %struct._xmlSchemaPSVIIDCKey*** %29 to i8*, !dbg !72
  %31 = load %struct._xmlSchemaIDCMatcher*, %struct._xmlSchemaIDCMatcher** %4, align 8, !dbg !73
  %32 = getelementptr inbounds %struct._xmlSchemaIDCMatcher, %struct._xmlSchemaIDCMatcher* %31, i32 0, i32 1, !dbg !74
  %33 = load i32, i32* %32, align 8, !dbg !74
  %34 = sext i32 %33 to i64, !dbg !73
  %35 = mul i64 %34, 8, !dbg !75
  %36 = call i8* @memset(i8* %30, i32 0, i64 %35), !dbg !72
  br label %58, !dbg !76

37:                                               ; preds = %2
  %38 = load i32, i32* %5, align 4, !dbg !77
  %39 = load %struct._xmlSchemaIDCMatcher*, %struct._xmlSchemaIDCMatcher** %4, align 8, !dbg !79
  %40 = getelementptr inbounds %struct._xmlSchemaIDCMatcher, %struct._xmlSchemaIDCMatcher* %39, i32 0, i32 1, !dbg !80
  %41 = load i32, i32* %40, align 8, !dbg !80
  %42 = icmp sge i32 %38, %41, !dbg !81
  br i1 %42, label %43, label %57, !dbg !82

43:                                               ; preds = %37
  call void @llvm.dbg.declare(metadata i32* %6, metadata !83, metadata !DIExpression()), !dbg !85
  %44 = load %struct._xmlSchemaIDCMatcher*, %struct._xmlSchemaIDCMatcher** %4, align 8, !dbg !86
  %45 = getelementptr inbounds %struct._xmlSchemaIDCMatcher, %struct._xmlSchemaIDCMatcher* %44, i32 0, i32 1, !dbg !87
  %46 = load i32, i32* %45, align 8, !dbg !87
  store i32 %46, i32* %6, align 4, !dbg !85
  %47 = load %struct._xmlSchemaIDCMatcher*, %struct._xmlSchemaIDCMatcher** %4, align 8, !dbg !88
  %48 = getelementptr inbounds %struct._xmlSchemaIDCMatcher, %struct._xmlSchemaIDCMatcher* %47, i32 0, i32 1, !dbg !88
  %49 = load i32, i32* %48, align 8, !dbg !88
  %50 = icmp sge i32 %49, 0, !dbg !88
  br i1 %50, label %51, label %53, !dbg !88

51:                                               ; preds = %43
  br i1 true, label %52, label %53, !dbg !88

52:                                               ; preds = %51
  br label %55, !dbg !88

53:                                               ; preds = %51, %43
  %54 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([110 x i8], [110 x i8]* @.str.3, i64 0, i64 0), i32 noundef 40, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.xmlSchemaFormatQName, i64 0, i64 0)), !dbg !88
  br label %55, !dbg !88

55:                                               ; preds = %53, %52
  %56 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([110 x i8], [110 x i8]* @.str.3, i64 0, i64 0), i32 noundef 43, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.xmlSchemaFormatQName, i64 0, i64 0)), !dbg !89
  br label %57, !dbg !90

57:                                               ; preds = %55, %37
  br label %58

58:                                               ; preds = %57, %26
  store i32 0, i32* %3, align 4, !dbg !91
  br label %59, !dbg !91

59:                                               ; preds = %58, %25
  %60 = load i32, i32* %3, align 4, !dbg !92
  ret i32 %60, !dbg !92
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !93 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlSchemaIDCMatcher, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaIDCMatcher* %2, metadata !96, metadata !DIExpression()), !dbg !97
  %4 = getelementptr inbounds %struct._xmlSchemaIDCMatcher, %struct._xmlSchemaIDCMatcher* %2, i32 0, i32 1, !dbg !98
  %5 = bitcast i32* %4 to i8*, !dbg !99
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0)), !dbg !100
  %6 = getelementptr inbounds %struct._xmlSchemaIDCMatcher, %struct._xmlSchemaIDCMatcher* %2, i32 0, i32 2, !dbg !101
  %7 = bitcast i32* %6 to i8*, !dbg !102
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)), !dbg !103
  %8 = getelementptr inbounds %struct._xmlSchemaIDCMatcher, %struct._xmlSchemaIDCMatcher* %2, i32 0, i32 0, !dbg !104
  store %struct._xmlSchemaPSVIIDCKey*** null, %struct._xmlSchemaPSVIIDCKey**** %8, align 8, !dbg !105
  %9 = getelementptr inbounds %struct._xmlSchemaIDCMatcher, %struct._xmlSchemaIDCMatcher* %2, i32 0, i32 1, !dbg !106
  %10 = load i32, i32* %9, align 8, !dbg !106
  %11 = icmp sge i32 %10, 0, !dbg !107
  %12 = zext i1 %11 to i32, !dbg !107
  %13 = sext i32 %12 to i64, !dbg !108
  call void @klee_assume(i64 noundef %13), !dbg !109
  %14 = getelementptr inbounds %struct._xmlSchemaIDCMatcher, %struct._xmlSchemaIDCMatcher* %2, i32 0, i32 1, !dbg !110
  %15 = load i32, i32* %14, align 8, !dbg !110
  %16 = icmp sle i32 %15, 1024, !dbg !111
  %17 = zext i1 %16 to i32, !dbg !111
  %18 = sext i32 %17 to i64, !dbg !112
  call void @klee_assume(i64 noundef %18), !dbg !113
  call void @llvm.dbg.declare(metadata i32* %3, metadata !114, metadata !DIExpression()), !dbg !115
  %19 = bitcast i32* %3 to i8*, !dbg !116
  call void @klee_make_symbolic(i8* noundef %19, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)), !dbg !117
  %20 = load i32, i32* %3, align 4, !dbg !118
  %21 = getelementptr inbounds %struct._xmlSchemaIDCMatcher, %struct._xmlSchemaIDCMatcher* %2, i32 0, i32 1, !dbg !119
  %22 = load i32, i32* %21, align 8, !dbg !119
  %23 = icmp sge i32 %20, %22, !dbg !120
  %24 = zext i1 %23 to i32, !dbg !120
  %25 = sext i32 %24 to i64, !dbg !118
  call void @klee_assume(i64 noundef %25), !dbg !121
  %26 = load i32, i32* %3, align 4, !dbg !122
  %27 = call i32 @xmlSchemaFormatQName(%struct._xmlSchemaIDCMatcher* noundef %2, i32 noundef %26), !dbg !123
  %28 = getelementptr inbounds %struct._xmlSchemaIDCMatcher, %struct._xmlSchemaIDCMatcher* %2, i32 0, i32 0, !dbg !124
  %29 = load %struct._xmlSchemaPSVIIDCKey***, %struct._xmlSchemaPSVIIDCKey**** %28, align 8, !dbg !124
  %30 = icmp ne %struct._xmlSchemaPSVIIDCKey*** %29, null, !dbg !126
  br i1 %30, label %31, label %35, !dbg !127

31:                                               ; preds = %0
  %32 = getelementptr inbounds %struct._xmlSchemaIDCMatcher, %struct._xmlSchemaIDCMatcher* %2, i32 0, i32 0, !dbg !128
  %33 = load %struct._xmlSchemaPSVIIDCKey***, %struct._xmlSchemaPSVIIDCKey**** %32, align 8, !dbg !128
  %34 = bitcast %struct._xmlSchemaPSVIIDCKey*** %33 to i8*, !dbg !130
  call void @free(i8* noundef %34) #7, !dbg !131
  br label %35, !dbg !132

35:                                               ; preds = %31, %0
  ret i32 0, !dbg !133
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !134 {
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
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13, !13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/326_xmlschemas.c_22741_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "94a958969ba81226e6bbd52955d17575")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = distinct !DICompileUnit(language: DW_LANG_C99, file: !5, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!5 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 7, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"Ubuntu clang version 14.0.6"}
!14 = distinct !DISubprogram(name: "xmlSchemaVErrMemory", scope: !1, file: !1, line: 20, type: !15, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !3, !17, !17}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !{}
!21 = !DILocalVariable(name: "ctxt", arg: 1, scope: !14, file: !1, line: 20, type: !3)
!22 = !DILocation(line: 20, column: 32, scope: !14)
!23 = !DILocalVariable(name: "msg", arg: 2, scope: !14, file: !1, line: 20, type: !17)
!24 = !DILocation(line: 20, column: 50, scope: !14)
!25 = !DILocalVariable(name: "extra", arg: 3, scope: !14, file: !1, line: 20, type: !17)
!26 = !DILocation(line: 20, column: 67, scope: !14)
!27 = !DILocation(line: 22, column: 1, scope: !14)
!28 = distinct !DISubprogram(name: "xmlSchemaFormatQName", scope: !1, file: !1, line: 25, type: !29, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!29 = !DISubroutineType(types: !30)
!30 = !{!31, !32, !31}
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaIDCMatcher", file: !1, line: 17, baseType: !34)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaIDCMatcher", file: !1, line: 13, size: 128, elements: !35)
!35 = !{!36, !43, !44}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "keySeqs", scope: !34, file: !1, line: 14, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaPSVIIDCKeyPtr", file: !1, line: 11, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaPSVIIDCKey", file: !1, line: 10, baseType: !42)
!42 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaPSVIIDCKey", file: !1, line: 10, flags: DIFlagFwdDecl)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "sizeKeySeqs", scope: !34, file: !1, line: 15, baseType: !31, size: 32, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "nbKeySeqs", scope: !34, file: !1, line: 16, baseType: !31, size: 32, offset: 96)
!45 = !DILocalVariable(name: "matcher", arg: 1, scope: !28, file: !1, line: 25, type: !32)
!46 = !DILocation(line: 25, column: 47, scope: !28)
!47 = !DILocalVariable(name: "pos", arg: 2, scope: !28, file: !1, line: 25, type: !31)
!48 = !DILocation(line: 25, column: 60, scope: !28)
!49 = !DILocation(line: 26, column: 9, scope: !50)
!50 = distinct !DILexicalBlock(scope: !28, file: !1, line: 26, column: 9)
!51 = !DILocation(line: 26, column: 18, scope: !50)
!52 = !DILocation(line: 26, column: 26, scope: !50)
!53 = !DILocation(line: 26, column: 9, scope: !28)
!54 = !DILocation(line: 27, column: 35, scope: !55)
!55 = distinct !DILexicalBlock(scope: !50, file: !1, line: 26, column: 35)
!56 = !DILocation(line: 27, column: 44, scope: !55)
!57 = !DILocation(line: 27, column: 56, scope: !55)
!58 = !DILocation(line: 27, column: 28, scope: !55)
!59 = !DILocation(line: 27, column: 9, scope: !55)
!60 = !DILocation(line: 27, column: 18, scope: !55)
!61 = !DILocation(line: 27, column: 26, scope: !55)
!62 = !DILocation(line: 28, column: 13, scope: !63)
!63 = distinct !DILexicalBlock(scope: !55, file: !1, line: 28, column: 13)
!64 = !DILocation(line: 28, column: 22, scope: !63)
!65 = !DILocation(line: 28, column: 30, scope: !63)
!66 = !DILocation(line: 28, column: 13, scope: !55)
!67 = !DILocation(line: 29, column: 13, scope: !68)
!68 = distinct !DILexicalBlock(scope: !63, file: !1, line: 28, column: 39)
!69 = !DILocation(line: 30, column: 13, scope: !68)
!70 = !DILocation(line: 32, column: 16, scope: !55)
!71 = !DILocation(line: 32, column: 25, scope: !55)
!72 = !DILocation(line: 32, column: 9, scope: !55)
!73 = !DILocation(line: 33, column: 16, scope: !55)
!74 = !DILocation(line: 33, column: 25, scope: !55)
!75 = !DILocation(line: 33, column: 37, scope: !55)
!76 = !DILocation(line: 35, column: 5, scope: !55)
!77 = !DILocation(line: 35, column: 16, scope: !78)
!78 = distinct !DILexicalBlock(scope: !50, file: !1, line: 35, column: 16)
!79 = !DILocation(line: 35, column: 23, scope: !78)
!80 = !DILocation(line: 35, column: 32, scope: !78)
!81 = !DILocation(line: 35, column: 20, scope: !78)
!82 = !DILocation(line: 35, column: 16, scope: !50)
!83 = !DILocalVariable(name: "i", scope: !84, file: !1, line: 36, type: !31)
!84 = distinct !DILexicalBlock(scope: !78, file: !1, line: 35, column: 45)
!85 = !DILocation(line: 36, column: 13, scope: !84)
!86 = !DILocation(line: 36, column: 17, scope: !84)
!87 = !DILocation(line: 36, column: 26, scope: !84)
!88 = !DILocation(line: 40, column: 9, scope: !84)
!89 = !DILocation(line: 43, column: 9, scope: !84)
!90 = !DILocation(line: 44, column: 5, scope: !84)
!91 = !DILocation(line: 45, column: 5, scope: !28)
!92 = !DILocation(line: 46, column: 1, scope: !28)
!93 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 48, type: !94, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!94 = !DISubroutineType(types: !95)
!95 = !{!31}
!96 = !DILocalVariable(name: "matcher", scope: !93, file: !1, line: 49, type: !33)
!97 = !DILocation(line: 49, column: 25, scope: !93)
!98 = !DILocation(line: 52, column: 33, scope: !93)
!99 = !DILocation(line: 52, column: 24, scope: !93)
!100 = !DILocation(line: 52, column: 5, scope: !93)
!101 = !DILocation(line: 53, column: 33, scope: !93)
!102 = !DILocation(line: 53, column: 24, scope: !93)
!103 = !DILocation(line: 53, column: 5, scope: !93)
!104 = !DILocation(line: 56, column: 13, scope: !93)
!105 = !DILocation(line: 56, column: 21, scope: !93)
!106 = !DILocation(line: 59, column: 25, scope: !93)
!107 = !DILocation(line: 59, column: 37, scope: !93)
!108 = !DILocation(line: 59, column: 17, scope: !93)
!109 = !DILocation(line: 59, column: 5, scope: !93)
!110 = !DILocation(line: 62, column: 25, scope: !93)
!111 = !DILocation(line: 62, column: 37, scope: !93)
!112 = !DILocation(line: 62, column: 17, scope: !93)
!113 = !DILocation(line: 62, column: 5, scope: !93)
!114 = !DILocalVariable(name: "pos", scope: !93, file: !1, line: 65, type: !31)
!115 = !DILocation(line: 65, column: 9, scope: !93)
!116 = !DILocation(line: 66, column: 24, scope: !93)
!117 = !DILocation(line: 66, column: 5, scope: !93)
!118 = !DILocation(line: 69, column: 17, scope: !93)
!119 = !DILocation(line: 69, column: 32, scope: !93)
!120 = !DILocation(line: 69, column: 21, scope: !93)
!121 = !DILocation(line: 69, column: 5, scope: !93)
!122 = !DILocation(line: 72, column: 36, scope: !93)
!123 = !DILocation(line: 72, column: 5, scope: !93)
!124 = !DILocation(line: 75, column: 17, scope: !125)
!125 = distinct !DILexicalBlock(scope: !93, file: !1, line: 75, column: 9)
!126 = !DILocation(line: 75, column: 25, scope: !125)
!127 = !DILocation(line: 75, column: 9, scope: !93)
!128 = !DILocation(line: 76, column: 22, scope: !129)
!129 = distinct !DILexicalBlock(scope: !125, file: !1, line: 75, column: 34)
!130 = !DILocation(line: 76, column: 14, scope: !129)
!131 = !DILocation(line: 76, column: 9, scope: !129)
!132 = !DILocation(line: 77, column: 5, scope: !129)
!133 = !DILocation(line: 79, column: 5, scope: !93)
!134 = distinct !DISubprogram(name: "memset", scope: !135, file: !135, line: 12, type: !136, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !20)
!135 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!136 = !DISubroutineType(types: !137)
!137 = !{!3, !3, !31, !138}
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !139, line: 46, baseType: !140)
!139 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!140 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!141 = !DILocalVariable(name: "dst", arg: 1, scope: !134, file: !135, line: 12, type: !3)
!142 = !DILocation(line: 12, column: 20, scope: !134)
!143 = !DILocalVariable(name: "s", arg: 2, scope: !134, file: !135, line: 12, type: !31)
!144 = !DILocation(line: 12, column: 29, scope: !134)
!145 = !DILocalVariable(name: "count", arg: 3, scope: !134, file: !135, line: 12, type: !138)
!146 = !DILocation(line: 12, column: 39, scope: !134)
!147 = !DILocalVariable(name: "a", scope: !134, file: !135, line: 13, type: !148)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!149 = !DILocation(line: 13, column: 9, scope: !134)
!150 = !DILocation(line: 13, column: 13, scope: !134)
!151 = !DILocation(line: 14, column: 3, scope: !134)
!152 = !DILocation(line: 14, column: 15, scope: !134)
!153 = !DILocation(line: 14, column: 18, scope: !134)
!154 = !DILocation(line: 15, column: 12, scope: !134)
!155 = !DILocation(line: 15, column: 7, scope: !134)
!156 = !DILocation(line: 15, column: 10, scope: !134)
!157 = distinct !{!157, !151, !154, !158}
!158 = !{!"llvm.loop.mustprogress"}
!159 = !DILocation(line: 16, column: 10, scope: !134)
!160 = !DILocation(line: 16, column: 3, scope: !134)

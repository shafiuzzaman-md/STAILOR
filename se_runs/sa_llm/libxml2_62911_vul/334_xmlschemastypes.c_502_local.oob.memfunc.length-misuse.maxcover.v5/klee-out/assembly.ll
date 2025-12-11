; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/334_xmlschemastypes.c_502_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/334_xmlschemastypes.c_502_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaType = type { %struct._xmlSchemaWildcard* }
%struct._xmlSchemaWildcard = type { i32, i32 }

@xmlSchemaTypeAnyTypeDef = dso_local global %struct._xmlSchemaType* null, align 8, !dbg !0
@.str = private unnamed_addr constant [50 x i8] c"could not create an attribute wildcard on anyType\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"wild\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"an\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"(an <= size && on <= size) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [113 x i8] c"se_runs/sa_llm/libxml2_62911_vul/334_xmlschemastypes.c_502_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlSchemaInitTypes = private unnamed_addr constant [30 x i8] c"void xmlSchemaInitTypes(void)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"anySimpleType\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchemaTypeErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !29 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !36, metadata !DIExpression()), !dbg !37
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !38, metadata !DIExpression()), !dbg !39
  ret void, !dbg !40
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlSchemaWildcard* @xmlSchemaNewWildcard() #0 !dbg !41 {
  %1 = call noalias i8* @malloc(i64 noundef 8) #7, !dbg !44
  %2 = bitcast i8* %1 to %struct._xmlSchemaWildcard*, !dbg !45
  ret %struct._xmlSchemaWildcard* %2, !dbg !46
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlSchemaType* @xmlSchemaInitBasicType(i8* noundef %0) #0 !dbg !47 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !50, metadata !DIExpression()), !dbg !51
  %3 = call noalias i8* @malloc(i64 noundef 8) #7, !dbg !52
  %4 = bitcast i8* %3 to %struct._xmlSchemaType*, !dbg !53
  ret %struct._xmlSchemaType* %4, !dbg !54
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchemaInitTypes() #0 !dbg !55 {
  %1 = alloca %struct._xmlSchemaWildcard*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct._xmlSchemaType*, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaWildcard** %1, metadata !58, metadata !DIExpression()), !dbg !59
  store %struct._xmlSchemaWildcard* null, %struct._xmlSchemaWildcard** %1, align 8, !dbg !59
  %6 = call %struct._xmlSchemaWildcard* @xmlSchemaNewWildcard(), !dbg !60
  store %struct._xmlSchemaWildcard* %6, %struct._xmlSchemaWildcard** %1, align 8, !dbg !61
  %7 = load %struct._xmlSchemaWildcard*, %struct._xmlSchemaWildcard** %1, align 8, !dbg !62
  %8 = icmp eq %struct._xmlSchemaWildcard* %7, null, !dbg !64
  br i1 %8, label %9, label %10, !dbg !65

9:                                                ; preds = %0
  call void @xmlSchemaTypeErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0)), !dbg !66
  br label %61, !dbg !68

10:                                               ; preds = %0
  %11 = load %struct._xmlSchemaWildcard*, %struct._xmlSchemaWildcard** %1, align 8, !dbg !69
  %12 = bitcast %struct._xmlSchemaWildcard* %11 to i8*, !dbg !69
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !70
  %13 = load %struct._xmlSchemaWildcard*, %struct._xmlSchemaWildcard** %1, align 8, !dbg !71
  %14 = icmp ne %struct._xmlSchemaWildcard* %13, null, !dbg !72
  %15 = zext i1 %14 to i32, !dbg !72
  %16 = sext i32 %15 to i64, !dbg !71
  call void @klee_assume(i64 noundef %16), !dbg !73
  call void @llvm.dbg.declare(metadata i32* %2, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata i32* %3, metadata !76, metadata !DIExpression()), !dbg !77
  %17 = bitcast i32* %2 to i8*, !dbg !78
  call void @klee_make_symbolic(i8* noundef %17, i64 noundef 4, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)), !dbg !79
  %18 = bitcast i32* %3 to i8*, !dbg !80
  call void @klee_make_symbolic(i8* noundef %18, i64 noundef 4, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)), !dbg !81
  %19 = load i32, i32* %2, align 4, !dbg !82
  %20 = icmp sge i32 %19, 0, !dbg !83
  %21 = zext i1 %20 to i32, !dbg !83
  %22 = sext i32 %21 to i64, !dbg !82
  call void @klee_assume(i64 noundef %22), !dbg !84
  %23 = load i32, i32* %3, align 4, !dbg !85
  %24 = icmp sge i32 %23, 0, !dbg !86
  %25 = zext i1 %24 to i32, !dbg !86
  %26 = sext i32 %25 to i64, !dbg !85
  call void @klee_assume(i64 noundef %26), !dbg !87
  call void @llvm.dbg.declare(metadata i32* %4, metadata !88, metadata !DIExpression()), !dbg !89
  store i32 8, i32* %4, align 4, !dbg !89
  %27 = load i32, i32* %2, align 4, !dbg !90
  %28 = load i32, i32* %4, align 4, !dbg !90
  %29 = icmp sle i32 %27, %28, !dbg !90
  br i1 %29, label %30, label %36, !dbg !90

30:                                               ; preds = %10
  %31 = load i32, i32* %3, align 4, !dbg !90
  %32 = load i32, i32* %4, align 4, !dbg !90
  %33 = icmp sle i32 %31, %32, !dbg !90
  br i1 %33, label %34, label %36, !dbg !90

34:                                               ; preds = %30
  br i1 true, label %35, label %36, !dbg !90

35:                                               ; preds = %34
  br label %38, !dbg !90

36:                                               ; preds = %34, %30, %10
  %37 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([113 x i8], [113 x i8]* @.str.6, i64 0, i64 0), i32 noundef 48, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.xmlSchemaInitTypes, i64 0, i64 0)), !dbg !90
  br label %38, !dbg !90

38:                                               ; preds = %36, %35
  %39 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([113 x i8], [113 x i8]* @.str.6, i64 0, i64 0), i32 noundef 49, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.xmlSchemaInitTypes, i64 0, i64 0)), !dbg !91
  %40 = load %struct._xmlSchemaWildcard*, %struct._xmlSchemaWildcard** %1, align 8, !dbg !92
  %41 = bitcast %struct._xmlSchemaWildcard* %40 to i8*, !dbg !93
  %42 = call i8* @memset(i8* %41, i32 0, i64 8), !dbg !93
  %43 = load %struct._xmlSchemaWildcard*, %struct._xmlSchemaWildcard** %1, align 8, !dbg !94
  %44 = getelementptr inbounds %struct._xmlSchemaWildcard, %struct._xmlSchemaWildcard* %43, i32 0, i32 0, !dbg !95
  store i32 1, i32* %44, align 4, !dbg !96
  %45 = load %struct._xmlSchemaWildcard*, %struct._xmlSchemaWildcard** %1, align 8, !dbg !97
  %46 = getelementptr inbounds %struct._xmlSchemaWildcard, %struct._xmlSchemaWildcard* %45, i32 0, i32 1, !dbg !98
  store i32 1, i32* %46, align 4, !dbg !99
  %47 = load %struct._xmlSchemaType*, %struct._xmlSchemaType** @xmlSchemaTypeAnyTypeDef, align 8, !dbg !100
  %48 = icmp eq %struct._xmlSchemaType* %47, null, !dbg !102
  br i1 %48, label %49, label %56, !dbg !103

49:                                               ; preds = %38
  %50 = call noalias i8* @malloc(i64 noundef 8) #7, !dbg !104
  %51 = bitcast i8* %50 to %struct._xmlSchemaType*, !dbg !106
  store %struct._xmlSchemaType* %51, %struct._xmlSchemaType** @xmlSchemaTypeAnyTypeDef, align 8, !dbg !107
  %52 = load %struct._xmlSchemaType*, %struct._xmlSchemaType** @xmlSchemaTypeAnyTypeDef, align 8, !dbg !108
  %53 = icmp ne %struct._xmlSchemaType* %52, null, !dbg !109
  %54 = zext i1 %53 to i32, !dbg !109
  %55 = sext i32 %54 to i64, !dbg !108
  call void @klee_assume(i64 noundef %55), !dbg !110
  br label %56, !dbg !111

56:                                               ; preds = %49, %38
  %57 = load %struct._xmlSchemaWildcard*, %struct._xmlSchemaWildcard** %1, align 8, !dbg !112
  %58 = load %struct._xmlSchemaType*, %struct._xmlSchemaType** @xmlSchemaTypeAnyTypeDef, align 8, !dbg !113
  %59 = getelementptr inbounds %struct._xmlSchemaType, %struct._xmlSchemaType* %58, i32 0, i32 0, !dbg !114
  store %struct._xmlSchemaWildcard* %57, %struct._xmlSchemaWildcard** %59, align 8, !dbg !115
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaType** %5, metadata !116, metadata !DIExpression()), !dbg !117
  %60 = call %struct._xmlSchemaType* @xmlSchemaInitBasicType(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0)), !dbg !118
  store %struct._xmlSchemaType* %60, %struct._xmlSchemaType** %5, align 8, !dbg !117
  br label %61, !dbg !119

61:                                               ; preds = %56, %9
  ret void, !dbg !119
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !120 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store %struct._xmlSchemaType* null, %struct._xmlSchemaType** @xmlSchemaTypeAnyTypeDef, align 8, !dbg !123
  call void @xmlSchemaInitTypes(), !dbg !124
  ret i32 0, !dbg !125
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !126 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !133, metadata !DIExpression()), !dbg !134
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !135, metadata !DIExpression()), !dbg !136
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !137, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.declare(metadata i8** %7, metadata !139, metadata !DIExpression()), !dbg !141
  %8 = load i8*, i8** %4, align 8, !dbg !142
  store i8* %8, i8** %7, align 8, !dbg !141
  br label %9, !dbg !143

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !144
  %11 = add i64 %10, -1, !dbg !144
  store i64 %11, i64* %6, align 8, !dbg !144
  %12 = icmp ugt i64 %10, 0, !dbg !145
  br i1 %12, label %13, label %18, !dbg !143

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !146
  %15 = trunc i32 %14 to i8, !dbg !146
  %16 = load i8*, i8** %7, align 8, !dbg !147
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !147
  store i8* %17, i8** %7, align 8, !dbg !147
  store i8 %15, i8* %16, align 1, !dbg !148
  br label %9, !dbg !143, !llvm.loop !149

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !151
  ret i8* %19, !dbg !152
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28, !28}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "xmlSchemaTypeAnyTypeDef", scope: !2, file: !3, line: 20, type: !12, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !18, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/334_xmlschemastypes.c_502_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "362a2e31211cd910d7ff325b8fe2af48")
!4 = !{!5, !12, !17}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaWildcard", file: !3, line: 9, baseType: !7)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaWildcard", file: !3, line: 10, size: 64, elements: !8)
!8 = !{!9, !11}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "any", scope: !7, file: !3, line: 11, baseType: !10, size: 32)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "processContents", scope: !7, file: !3, line: 12, baseType: !10, size: 32, offset: 32)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaType", file: !3, line: 15, baseType: !14)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaType", file: !3, line: 16, size: 64, elements: !15)
!15 = !{!16}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "attributeWildcard", scope: !14, file: !3, line: 17, baseType: !5, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!18 = !{!0}
!19 = distinct !DICompileUnit(language: DW_LANG_C99, file: !20, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!20 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!21 = !{i32 7, !"Dwarf Version", i32 5}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 1, !"wchar_size", i32 4}
!24 = !{i32 7, !"PIC Level", i32 2}
!25 = !{i32 7, !"PIE Level", i32 2}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"Ubuntu clang version 14.0.6"}
!29 = distinct !DISubprogram(name: "xmlSchemaTypeErrMemory", scope: !3, file: !3, line: 22, type: !30, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !17, !32}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!35 = !{}
!36 = !DILocalVariable(name: "ctx", arg: 1, scope: !29, file: !3, line: 22, type: !17)
!37 = !DILocation(line: 22, column: 35, scope: !29)
!38 = !DILocalVariable(name: "msg", arg: 2, scope: !29, file: !3, line: 22, type: !32)
!39 = !DILocation(line: 22, column: 52, scope: !29)
!40 = !DILocation(line: 23, column: 1, scope: !29)
!41 = distinct !DISubprogram(name: "xmlSchemaNewWildcard", scope: !3, file: !3, line: 25, type: !42, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!42 = !DISubroutineType(types: !43)
!43 = !{!5}
!44 = !DILocation(line: 26, column: 32, scope: !41)
!45 = !DILocation(line: 26, column: 12, scope: !41)
!46 = !DILocation(line: 26, column: 5, scope: !41)
!47 = distinct !DISubprogram(name: "xmlSchemaInitBasicType", scope: !3, file: !3, line: 29, type: !48, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!48 = !DISubroutineType(types: !49)
!49 = !{!12, !32}
!50 = !DILocalVariable(name: "name", arg: 1, scope: !47, file: !3, line: 29, type: !32)
!51 = !DILocation(line: 29, column: 51, scope: !47)
!52 = !DILocation(line: 30, column: 28, scope: !47)
!53 = !DILocation(line: 30, column: 12, scope: !47)
!54 = !DILocation(line: 30, column: 5, scope: !47)
!55 = distinct !DISubprogram(name: "xmlSchemaInitTypes", scope: !3, file: !3, line: 33, type: !56, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!56 = !DISubroutineType(types: !57)
!57 = !{null}
!58 = !DILocalVariable(name: "wild", scope: !55, file: !3, line: 34, type: !5)
!59 = !DILocation(line: 34, column: 24, scope: !55)
!60 = !DILocation(line: 35, column: 12, scope: !55)
!61 = !DILocation(line: 35, column: 10, scope: !55)
!62 = !DILocation(line: 36, column: 9, scope: !63)
!63 = distinct !DILexicalBlock(scope: !55, file: !3, line: 36, column: 9)
!64 = !DILocation(line: 36, column: 14, scope: !63)
!65 = !DILocation(line: 36, column: 9, scope: !55)
!66 = !DILocation(line: 37, column: 9, scope: !67)
!67 = distinct !DILexicalBlock(scope: !63, file: !3, line: 36, column: 23)
!68 = !DILocation(line: 38, column: 9, scope: !67)
!69 = !DILocation(line: 40, column: 24, scope: !55)
!70 = !DILocation(line: 40, column: 5, scope: !55)
!71 = !DILocation(line: 41, column: 17, scope: !55)
!72 = !DILocation(line: 41, column: 22, scope: !55)
!73 = !DILocation(line: 41, column: 5, scope: !55)
!74 = !DILocalVariable(name: "an", scope: !55, file: !3, line: 42, type: !10)
!75 = !DILocation(line: 42, column: 9, scope: !55)
!76 = !DILocalVariable(name: "on", scope: !55, file: !3, line: 42, type: !10)
!77 = !DILocation(line: 42, column: 13, scope: !55)
!78 = !DILocation(line: 43, column: 24, scope: !55)
!79 = !DILocation(line: 43, column: 5, scope: !55)
!80 = !DILocation(line: 44, column: 24, scope: !55)
!81 = !DILocation(line: 44, column: 5, scope: !55)
!82 = !DILocation(line: 45, column: 17, scope: !55)
!83 = !DILocation(line: 45, column: 20, scope: !55)
!84 = !DILocation(line: 45, column: 5, scope: !55)
!85 = !DILocation(line: 46, column: 17, scope: !55)
!86 = !DILocation(line: 46, column: 20, scope: !55)
!87 = !DILocation(line: 46, column: 5, scope: !55)
!88 = !DILocalVariable(name: "size", scope: !55, file: !3, line: 47, type: !10)
!89 = !DILocation(line: 47, column: 9, scope: !55)
!90 = !DILocation(line: 48, column: 5, scope: !55)
!91 = !DILocation(line: 49, column: 5, scope: !55)
!92 = !DILocation(line: 50, column: 12, scope: !55)
!93 = !DILocation(line: 50, column: 5, scope: !55)
!94 = !DILocation(line: 51, column: 5, scope: !55)
!95 = !DILocation(line: 51, column: 11, scope: !55)
!96 = !DILocation(line: 51, column: 15, scope: !55)
!97 = !DILocation(line: 52, column: 5, scope: !55)
!98 = !DILocation(line: 52, column: 11, scope: !55)
!99 = !DILocation(line: 52, column: 27, scope: !55)
!100 = !DILocation(line: 53, column: 9, scope: !101)
!101 = distinct !DILexicalBlock(scope: !55, file: !3, line: 53, column: 9)
!102 = !DILocation(line: 53, column: 33, scope: !101)
!103 = !DILocation(line: 53, column: 9, scope: !55)
!104 = !DILocation(line: 54, column: 51, scope: !105)
!105 = distinct !DILexicalBlock(scope: !101, file: !3, line: 53, column: 42)
!106 = !DILocation(line: 54, column: 35, scope: !105)
!107 = !DILocation(line: 54, column: 33, scope: !105)
!108 = !DILocation(line: 55, column: 21, scope: !105)
!109 = !DILocation(line: 55, column: 45, scope: !105)
!110 = !DILocation(line: 55, column: 9, scope: !105)
!111 = !DILocation(line: 56, column: 5, scope: !105)
!112 = !DILocation(line: 57, column: 50, scope: !55)
!113 = !DILocation(line: 57, column: 5, scope: !55)
!114 = !DILocation(line: 57, column: 30, scope: !55)
!115 = !DILocation(line: 57, column: 48, scope: !55)
!116 = !DILocalVariable(name: "xmlSchemaTypeAnySimpleTypeDef", scope: !55, file: !3, line: 58, type: !12)
!117 = !DILocation(line: 58, column: 20, scope: !55)
!118 = !DILocation(line: 58, column: 52, scope: !55)
!119 = !DILocation(line: 59, column: 1, scope: !55)
!120 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 61, type: !121, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!121 = !DISubroutineType(types: !122)
!122 = !{!10}
!123 = !DILocation(line: 62, column: 29, scope: !120)
!124 = !DILocation(line: 63, column: 5, scope: !120)
!125 = !DILocation(line: 64, column: 5, scope: !120)
!126 = distinct !DISubprogram(name: "memset", scope: !127, file: !127, line: 12, type: !128, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !35)
!127 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!128 = !DISubroutineType(types: !129)
!129 = !{!17, !17, !10, !130}
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !131, line: 46, baseType: !132)
!131 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!132 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!133 = !DILocalVariable(name: "dst", arg: 1, scope: !126, file: !127, line: 12, type: !17)
!134 = !DILocation(line: 12, column: 20, scope: !126)
!135 = !DILocalVariable(name: "s", arg: 2, scope: !126, file: !127, line: 12, type: !10)
!136 = !DILocation(line: 12, column: 29, scope: !126)
!137 = !DILocalVariable(name: "count", arg: 3, scope: !126, file: !127, line: 12, type: !130)
!138 = !DILocation(line: 12, column: 39, scope: !126)
!139 = !DILocalVariable(name: "a", scope: !126, file: !127, line: 13, type: !140)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!141 = !DILocation(line: 13, column: 9, scope: !126)
!142 = !DILocation(line: 13, column: 13, scope: !126)
!143 = !DILocation(line: 14, column: 3, scope: !126)
!144 = !DILocation(line: 14, column: 15, scope: !126)
!145 = !DILocation(line: 14, column: 18, scope: !126)
!146 = !DILocation(line: 15, column: 12, scope: !126)
!147 = !DILocation(line: 15, column: 7, scope: !126)
!148 = !DILocation(line: 15, column: 10, scope: !126)
!149 = distinct !{!149, !143, !146, !150}
!150 = !{!"llvm.loop.mustprogress"}
!151 = !DILocation(line: 16, column: 10, scope: !126)
!152 = !DILocation(line: 16, column: 3, scope: !126)

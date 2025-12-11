; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/331_xmlschemas.c_21990_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/331_xmlschemas.c_21990_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaIDCDef = type { i32 }
%struct._xmlSchemaPSVIIDCBinding = type { %struct._xmlSchemaIDCDef* }

@.str = private unnamed_addr constant [7 x i8] c"idcDef\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [110 x i8] c"se_runs/sa_llm/libxml2_62911_vul/331_xmlschemas.c_21990_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"allocating a PSVI IDC binding item\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchemaVErrMemory(i8* noundef %0, i8* noundef %1, i8* noundef %2) #0 !dbg !25 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !32, metadata !DIExpression()), !dbg !33
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !34, metadata !DIExpression()), !dbg !35
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !36, metadata !DIExpression()), !dbg !37
  ret void, !dbg !38
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !39 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlSchemaIDCDef*, align 8
  %3 = alloca %struct._xmlSchemaPSVIIDCBinding*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaIDCDef** %2, metadata !42, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaPSVIIDCBinding** %3, metadata !44, metadata !DIExpression()), !dbg !45
  %4 = call noalias i8* @malloc(i64 noundef 4) #7, !dbg !46
  %5 = bitcast i8* %4 to %struct._xmlSchemaIDCDef*, !dbg !47
  store %struct._xmlSchemaIDCDef* %5, %struct._xmlSchemaIDCDef** %2, align 8, !dbg !48
  %6 = load %struct._xmlSchemaIDCDef*, %struct._xmlSchemaIDCDef** %2, align 8, !dbg !49
  %7 = icmp ne %struct._xmlSchemaIDCDef* %6, null, !dbg !49
  br i1 %7, label %9, label %8, !dbg !51

8:                                                ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !52
  br label %27, !dbg !52

9:                                                ; preds = %0
  %10 = load %struct._xmlSchemaIDCDef*, %struct._xmlSchemaIDCDef** %2, align 8, !dbg !53
  %11 = bitcast %struct._xmlSchemaIDCDef* %10 to i8*, !dbg !53
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)), !dbg !54
  %12 = load %struct._xmlSchemaIDCDef*, %struct._xmlSchemaIDCDef** %2, align 8, !dbg !55
  %13 = icmp ne %struct._xmlSchemaIDCDef* %12, null, !dbg !56
  %14 = zext i1 %13 to i32, !dbg !56
  %15 = sext i32 %14 to i64, !dbg !55
  call void @klee_assume(i64 noundef %15), !dbg !57
  %16 = load %struct._xmlSchemaIDCDef*, %struct._xmlSchemaIDCDef** %2, align 8, !dbg !58
  %17 = call %struct._xmlSchemaPSVIIDCBinding* @xmlSchemaPSVIIDCBindingCreate(%struct._xmlSchemaIDCDef* noundef %16), !dbg !59
  store %struct._xmlSchemaPSVIIDCBinding* %17, %struct._xmlSchemaPSVIIDCBinding** %3, align 8, !dbg !60
  %18 = load %struct._xmlSchemaPSVIIDCBinding*, %struct._xmlSchemaPSVIIDCBinding** %3, align 8, !dbg !61
  %19 = icmp ne %struct._xmlSchemaPSVIIDCBinding* %18, null, !dbg !63
  br i1 %19, label %20, label %24, !dbg !64

20:                                               ; preds = %9
  %21 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([110 x i8], [110 x i8]* @.str.2, i64 0, i64 0), i32 noundef 72, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !65
  %22 = load %struct._xmlSchemaPSVIIDCBinding*, %struct._xmlSchemaPSVIIDCBinding** %3, align 8, !dbg !67
  %23 = bitcast %struct._xmlSchemaPSVIIDCBinding* %22 to i8*, !dbg !67
  call void @free(i8* noundef %23) #7, !dbg !68
  br label %24, !dbg !69

24:                                               ; preds = %20, %9
  %25 = load %struct._xmlSchemaIDCDef*, %struct._xmlSchemaIDCDef** %2, align 8, !dbg !70
  %26 = bitcast %struct._xmlSchemaIDCDef* %25 to i8*, !dbg !70
  call void @free(i8* noundef %26) #7, !dbg !71
  store i32 0, i32* %1, align 4, !dbg !72
  br label %27, !dbg !72

27:                                               ; preds = %24, %8
  %28 = load i32, i32* %1, align 4, !dbg !73
  ret i32 %28, !dbg !73
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct._xmlSchemaPSVIIDCBinding* @xmlSchemaPSVIIDCBindingCreate(%struct._xmlSchemaIDCDef* noundef %0) #0 !dbg !74 {
  %2 = alloca %struct._xmlSchemaPSVIIDCBinding*, align 8
  %3 = alloca %struct._xmlSchemaIDCDef*, align 8
  %4 = alloca %struct._xmlSchemaPSVIIDCBinding*, align 8
  store %struct._xmlSchemaIDCDef* %0, %struct._xmlSchemaIDCDef** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaIDCDef** %3, metadata !77, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaPSVIIDCBinding** %4, metadata !79, metadata !DIExpression()), !dbg !80
  %5 = call noalias i8* @malloc(i64 noundef 8) #7, !dbg !81
  %6 = bitcast i8* %5 to %struct._xmlSchemaPSVIIDCBinding*, !dbg !82
  store %struct._xmlSchemaPSVIIDCBinding* %6, %struct._xmlSchemaPSVIIDCBinding** %4, align 8, !dbg !83
  %7 = load %struct._xmlSchemaPSVIIDCBinding*, %struct._xmlSchemaPSVIIDCBinding** %4, align 8, !dbg !84
  %8 = icmp eq %struct._xmlSchemaPSVIIDCBinding* %7, null, !dbg !86
  br i1 %8, label %9, label %10, !dbg !87

9:                                                ; preds = %1
  call void @xmlSchemaVErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* noundef null), !dbg !88
  store %struct._xmlSchemaPSVIIDCBinding* null, %struct._xmlSchemaPSVIIDCBinding** %2, align 8, !dbg !90
  br label %18, !dbg !90

10:                                               ; preds = %1
  %11 = load %struct._xmlSchemaPSVIIDCBinding*, %struct._xmlSchemaPSVIIDCBinding** %4, align 8, !dbg !91
  %12 = bitcast %struct._xmlSchemaPSVIIDCBinding* %11 to i8*, !dbg !92
  %13 = call i8* @memset(i8* %12, i32 0, i64 8), !dbg !92
  %14 = load %struct._xmlSchemaIDCDef*, %struct._xmlSchemaIDCDef** %3, align 8, !dbg !93
  %15 = load %struct._xmlSchemaPSVIIDCBinding*, %struct._xmlSchemaPSVIIDCBinding** %4, align 8, !dbg !94
  %16 = getelementptr inbounds %struct._xmlSchemaPSVIIDCBinding, %struct._xmlSchemaPSVIIDCBinding* %15, i32 0, i32 0, !dbg !95
  store %struct._xmlSchemaIDCDef* %14, %struct._xmlSchemaIDCDef** %16, align 8, !dbg !96
  %17 = load %struct._xmlSchemaPSVIIDCBinding*, %struct._xmlSchemaPSVIIDCBinding** %4, align 8, !dbg !97
  store %struct._xmlSchemaPSVIIDCBinding* %17, %struct._xmlSchemaPSVIIDCBinding** %2, align 8, !dbg !98
  br label %18, !dbg !98

18:                                               ; preds = %10, %9
  %19 = load %struct._xmlSchemaPSVIIDCBinding*, %struct._xmlSchemaPSVIIDCBinding** %2, align 8, !dbg !99
  ret %struct._xmlSchemaPSVIIDCBinding* %19, !dbg !99
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !100 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !107, metadata !DIExpression()), !dbg !108
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !109, metadata !DIExpression()), !dbg !110
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !111, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.declare(metadata i8** %7, metadata !113, metadata !DIExpression()), !dbg !115
  %8 = load i8*, i8** %4, align 8, !dbg !116
  store i8* %8, i8** %7, align 8, !dbg !115
  br label %9, !dbg !117

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !118
  %11 = add i64 %10, -1, !dbg !118
  store i64 %11, i64* %6, align 8, !dbg !118
  %12 = icmp ugt i64 %10, 0, !dbg !119
  br i1 %12, label %13, label %18, !dbg !117

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !120
  %15 = trunc i32 %14 to i8, !dbg !120
  %16 = load i8*, i8** %7, align 8, !dbg !121
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !121
  store i8* %17, i8** %7, align 8, !dbg !121
  store i8 %15, i8* %16, align 1, !dbg !122
  br label %9, !dbg !117, !llvm.loop !123

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !125
  ret i8* %19, !dbg !126
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24, !24}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/331_xmlschemas.c_21990_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "c2b4c15bc5889f8520d11bcdbf280e6c")
!2 = !{!3, !9, !10}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaIDCDef", file: !1, line: 11, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaIDCDef", file: !1, line: 18, size: 32, elements: !6)
!6 = !{!7}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !5, file: !1, line: 20, baseType: !8, size: 32)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaPSVIIDCBinding", file: !1, line: 10, baseType: !12)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaPSVIIDCBinding", file: !1, line: 13, size: 64, elements: !13)
!13 = !{!14}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "definition", scope: !12, file: !1, line: 14, baseType: !3, size: 64)
!15 = distinct !DICompileUnit(language: DW_LANG_C99, file: !16, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!16 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!17 = !{i32 7, !"Dwarf Version", i32 5}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 4}
!20 = !{i32 7, !"PIC Level", i32 2}
!21 = !{i32 7, !"PIE Level", i32 2}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"Ubuntu clang version 14.0.6"}
!25 = distinct !DISubprogram(name: "xmlSchemaVErrMemory", scope: !1, file: !1, line: 24, type: !26, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!26 = !DISubroutineType(types: !27)
!27 = !{null, !9, !28, !28}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!31 = !{}
!32 = !DILocalVariable(name: "ctxt", arg: 1, scope: !25, file: !1, line: 24, type: !9)
!33 = !DILocation(line: 24, column: 32, scope: !25)
!34 = !DILocalVariable(name: "msg", arg: 2, scope: !25, file: !1, line: 24, type: !28)
!35 = !DILocation(line: 24, column: 50, scope: !25)
!36 = !DILocalVariable(name: "extra", arg: 3, scope: !25, file: !1, line: 24, type: !28)
!37 = !DILocation(line: 24, column: 67, scope: !25)
!38 = !DILocation(line: 26, column: 1, scope: !25)
!39 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 47, type: !40, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!40 = !DISubroutineType(types: !41)
!41 = !{!8}
!42 = !DILocalVariable(name: "idcDef", scope: !39, file: !1, line: 48, type: !3)
!43 = !DILocation(line: 48, column: 22, scope: !39)
!44 = !DILocalVariable(name: "binding", scope: !39, file: !1, line: 49, type: !10)
!45 = !DILocation(line: 49, column: 30, scope: !39)
!46 = !DILocation(line: 52, column: 32, scope: !39)
!47 = !DILocation(line: 52, column: 14, scope: !39)
!48 = !DILocation(line: 52, column: 12, scope: !39)
!49 = !DILocation(line: 53, column: 10, scope: !50)
!50 = distinct !DILexicalBlock(scope: !39, file: !1, line: 53, column: 9)
!51 = !DILocation(line: 53, column: 9, scope: !39)
!52 = !DILocation(line: 53, column: 18, scope: !50)
!53 = !DILocation(line: 56, column: 24, scope: !39)
!54 = !DILocation(line: 56, column: 5, scope: !39)
!55 = !DILocation(line: 57, column: 17, scope: !39)
!56 = !DILocation(line: 57, column: 24, scope: !39)
!57 = !DILocation(line: 57, column: 5, scope: !39)
!58 = !DILocation(line: 60, column: 45, scope: !39)
!59 = !DILocation(line: 60, column: 15, scope: !39)
!60 = !DILocation(line: 60, column: 13, scope: !39)
!61 = !DILocation(line: 63, column: 9, scope: !62)
!62 = distinct !DILexicalBlock(scope: !39, file: !1, line: 63, column: 9)
!63 = !DILocation(line: 63, column: 17, scope: !62)
!64 = !DILocation(line: 63, column: 9, scope: !39)
!65 = !DILocation(line: 72, column: 9, scope: !66)
!66 = distinct !DILexicalBlock(scope: !62, file: !1, line: 63, column: 26)
!67 = !DILocation(line: 74, column: 14, scope: !66)
!68 = !DILocation(line: 74, column: 9, scope: !66)
!69 = !DILocation(line: 75, column: 5, scope: !66)
!70 = !DILocation(line: 77, column: 10, scope: !39)
!71 = !DILocation(line: 77, column: 5, scope: !39)
!72 = !DILocation(line: 78, column: 5, scope: !39)
!73 = !DILocation(line: 79, column: 1, scope: !39)
!74 = distinct !DISubprogram(name: "xmlSchemaPSVIIDCBindingCreate", scope: !1, file: !1, line: 29, type: !75, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !31)
!75 = !DISubroutineType(types: !76)
!76 = !{!10, !3}
!77 = !DILocalVariable(name: "idcDef", arg: 1, scope: !74, file: !1, line: 29, type: !3)
!78 = !DILocation(line: 29, column: 80, scope: !74)
!79 = !DILocalVariable(name: "ret", scope: !74, file: !1, line: 30, type: !10)
!80 = !DILocation(line: 30, column: 30, scope: !74)
!81 = !DILocation(line: 32, column: 37, scope: !74)
!82 = !DILocation(line: 32, column: 11, scope: !74)
!83 = !DILocation(line: 32, column: 9, scope: !74)
!84 = !DILocation(line: 33, column: 9, scope: !85)
!85 = distinct !DILexicalBlock(scope: !74, file: !1, line: 33, column: 9)
!86 = !DILocation(line: 33, column: 13, scope: !85)
!87 = !DILocation(line: 33, column: 9, scope: !74)
!88 = !DILocation(line: 34, column: 9, scope: !89)
!89 = distinct !DILexicalBlock(scope: !85, file: !1, line: 33, column: 22)
!90 = !DILocation(line: 36, column: 9, scope: !89)
!91 = !DILocation(line: 40, column: 12, scope: !74)
!92 = !DILocation(line: 40, column: 5, scope: !74)
!93 = !DILocation(line: 42, column: 23, scope: !74)
!94 = !DILocation(line: 42, column: 5, scope: !74)
!95 = !DILocation(line: 42, column: 10, scope: !74)
!96 = !DILocation(line: 42, column: 21, scope: !74)
!97 = !DILocation(line: 43, column: 13, scope: !74)
!98 = !DILocation(line: 43, column: 5, scope: !74)
!99 = !DILocation(line: 44, column: 1, scope: !74)
!100 = distinct !DISubprogram(name: "memset", scope: !101, file: !101, line: 12, type: !102, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !31)
!101 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!102 = !DISubroutineType(types: !103)
!103 = !{!9, !9, !8, !104}
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !105, line: 46, baseType: !106)
!105 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!106 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!107 = !DILocalVariable(name: "dst", arg: 1, scope: !100, file: !101, line: 12, type: !9)
!108 = !DILocation(line: 12, column: 20, scope: !100)
!109 = !DILocalVariable(name: "s", arg: 2, scope: !100, file: !101, line: 12, type: !8)
!110 = !DILocation(line: 12, column: 29, scope: !100)
!111 = !DILocalVariable(name: "count", arg: 3, scope: !100, file: !101, line: 12, type: !104)
!112 = !DILocation(line: 12, column: 39, scope: !100)
!113 = !DILocalVariable(name: "a", scope: !100, file: !101, line: 13, type: !114)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!115 = !DILocation(line: 13, column: 9, scope: !100)
!116 = !DILocation(line: 13, column: 13, scope: !100)
!117 = !DILocation(line: 14, column: 3, scope: !100)
!118 = !DILocation(line: 14, column: 15, scope: !100)
!119 = !DILocation(line: 14, column: 18, scope: !100)
!120 = !DILocation(line: 15, column: 12, scope: !100)
!121 = !DILocation(line: 15, column: 7, scope: !100)
!122 = !DILocation(line: 15, column: 10, scope: !100)
!123 = distinct !{!123, !117, !120, !124}
!124 = !{!"llvm.loop.mustprogress"}
!125 = !DILocation(line: 16, column: 10, scope: !100)
!126 = !DILocation(line: 16, column: 3, scope: !100)

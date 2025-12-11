; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/332_xmlschemastypes.c_472_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/332_xmlschemastypes.c_472_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaModelGroup = type { i32 }
%struct._xmlSchemaParticle = type { %struct._xmlSchemaTreeItem* }
%struct._xmlSchemaTreeItem = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"allocating model group component\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [113 x i8] c"se_runs/sa_llm/libxml2_62911_vul/332_xmlschemastypes.c_472_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlSchemaInitTypes = private unnamed_addr constant [30 x i8] c"void xmlSchemaInitTypes(void)\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"malloc_fail_first\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchemaTypeErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !31 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !38, metadata !DIExpression()), !dbg !39
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !40, metadata !DIExpression()), !dbg !41
  ret void, !dbg !42
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlSchemaModelGroup* @xmlMalloc(i64 noundef %0) #0 !dbg !43 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !49, metadata !DIExpression()), !dbg !50
  %3 = load i64, i64* %2, align 8, !dbg !51
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !52
  %5 = bitcast i8* %4 to %struct._xmlSchemaModelGroup*, !dbg !53
  ret %struct._xmlSchemaModelGroup* %5, !dbg !54
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlSchemaParticle* @xmlSchemaAddParticle() #0 !dbg !55 {
  %1 = alloca %struct._xmlSchemaParticle*, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaParticle** %1, metadata !58, metadata !DIExpression()), !dbg !59
  %2 = call noalias i8* @malloc(i64 noundef 8) #7, !dbg !60
  %3 = bitcast i8* %2 to %struct._xmlSchemaParticle*, !dbg !61
  store %struct._xmlSchemaParticle* %3, %struct._xmlSchemaParticle** %1, align 8, !dbg !59
  %4 = load %struct._xmlSchemaParticle*, %struct._xmlSchemaParticle** %1, align 8, !dbg !62
  %5 = icmp ne %struct._xmlSchemaParticle* %4, null, !dbg !62
  br i1 %5, label %6, label %9, !dbg !64

6:                                                ; preds = %0
  %7 = load %struct._xmlSchemaParticle*, %struct._xmlSchemaParticle** %1, align 8, !dbg !65
  %8 = getelementptr inbounds %struct._xmlSchemaParticle, %struct._xmlSchemaParticle* %7, i32 0, i32 0, !dbg !67
  store %struct._xmlSchemaTreeItem* null, %struct._xmlSchemaTreeItem** %8, align 8, !dbg !68
  br label %9, !dbg !69

9:                                                ; preds = %6, %0
  %10 = load %struct._xmlSchemaParticle*, %struct._xmlSchemaParticle** %1, align 8, !dbg !70
  ret %struct._xmlSchemaParticle* %10, !dbg !71
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchemaInitTypes() #0 !dbg !72 {
  %1 = alloca %struct._xmlSchemaModelGroup*, align 8
  %2 = alloca %struct._xmlSchemaParticle*, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaModelGroup** %1, metadata !75, metadata !DIExpression()), !dbg !76
  store %struct._xmlSchemaModelGroup* null, %struct._xmlSchemaModelGroup** %1, align 8, !dbg !76
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaParticle** %2, metadata !77, metadata !DIExpression()), !dbg !78
  store %struct._xmlSchemaParticle* null, %struct._xmlSchemaParticle** %2, align 8, !dbg !78
  %3 = call %struct._xmlSchemaModelGroup* @xmlMalloc(i64 noundef 4), !dbg !79
  store %struct._xmlSchemaModelGroup* %3, %struct._xmlSchemaModelGroup** %1, align 8, !dbg !80
  %4 = load %struct._xmlSchemaModelGroup*, %struct._xmlSchemaModelGroup** %1, align 8, !dbg !81
  %5 = icmp eq %struct._xmlSchemaModelGroup* %4, null, !dbg !83
  br i1 %5, label %6, label %7, !dbg !84

6:                                                ; preds = %0
  call void @xmlSchemaTypeErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0)), !dbg !85
  br label %19, !dbg !87

7:                                                ; preds = %0
  %8 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([113 x i8], [113 x i8]* @.str.2, i64 0, i64 0), i32 noundef 61, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.xmlSchemaInitTypes, i64 0, i64 0)), !dbg !88
  %9 = load %struct._xmlSchemaModelGroup*, %struct._xmlSchemaModelGroup** %1, align 8, !dbg !89
  %10 = bitcast %struct._xmlSchemaModelGroup* %9 to i8*, !dbg !90
  %11 = call i8* @memset(i8* %10, i32 0, i64 4), !dbg !90
  %12 = load %struct._xmlSchemaModelGroup*, %struct._xmlSchemaModelGroup** %1, align 8, !dbg !91
  %13 = getelementptr inbounds %struct._xmlSchemaModelGroup, %struct._xmlSchemaModelGroup* %12, i32 0, i32 0, !dbg !92
  store i32 1, i32* %13, align 4, !dbg !93
  %14 = call %struct._xmlSchemaParticle* @xmlSchemaAddParticle(), !dbg !94
  store %struct._xmlSchemaParticle* %14, %struct._xmlSchemaParticle** %2, align 8, !dbg !95
  %15 = load %struct._xmlSchemaParticle*, %struct._xmlSchemaParticle** %2, align 8, !dbg !96
  %16 = icmp eq %struct._xmlSchemaParticle* %15, null, !dbg !98
  br i1 %16, label %17, label %18, !dbg !99

17:                                               ; preds = %7
  br label %18, !dbg !100

18:                                               ; preds = %17, %7
  br label %19, !dbg !102

19:                                               ; preds = %18, %6
  call void @llvm.dbg.label(metadata !103), !dbg !104
  %20 = load %struct._xmlSchemaModelGroup*, %struct._xmlSchemaModelGroup** %1, align 8, !dbg !105
  %21 = icmp ne %struct._xmlSchemaModelGroup* %20, null, !dbg !105
  br i1 %21, label %22, label %25, !dbg !107

22:                                               ; preds = %19
  %23 = load %struct._xmlSchemaModelGroup*, %struct._xmlSchemaModelGroup** %1, align 8, !dbg !108
  %24 = bitcast %struct._xmlSchemaModelGroup* %23 to i8*, !dbg !108
  call void @free(i8* noundef %24) #7, !dbg !109
  br label %25, !dbg !109

25:                                               ; preds = %22, %19
  %26 = load %struct._xmlSchemaParticle*, %struct._xmlSchemaParticle** %2, align 8, !dbg !110
  %27 = icmp ne %struct._xmlSchemaParticle* %26, null, !dbg !110
  br i1 %27, label %28, label %31, !dbg !112

28:                                               ; preds = %25
  %29 = load %struct._xmlSchemaParticle*, %struct._xmlSchemaParticle** %2, align 8, !dbg !113
  %30 = bitcast %struct._xmlSchemaParticle* %29 to i8*, !dbg !113
  call void @free(i8* noundef %30) #7, !dbg !114
  br label %31, !dbg !114

31:                                               ; preds = %28, %25
  ret void, !dbg !115
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !116 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !119, metadata !DIExpression()), !dbg !120
  %3 = bitcast i32* %2 to i8*, !dbg !121
  call void @klee_make_symbolic(i8* noundef %3, i64 noundef 4, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0)), !dbg !122
  %4 = load i32, i32* %2, align 4, !dbg !123
  %5 = icmp ne i32 %4, 0, !dbg !123
  br i1 %5, label %6, label %11, !dbg !125

6:                                                ; preds = %0
  %7 = load i32, i32* %2, align 4, !dbg !126
  %8 = icmp eq i32 %7, 1, !dbg !128
  %9 = zext i1 %8 to i32, !dbg !128
  %10 = sext i32 %9 to i64, !dbg !126
  call void @klee_assume(i64 noundef %10), !dbg !129
  br label %16, !dbg !130

11:                                               ; preds = %0
  %12 = load i32, i32* %2, align 4, !dbg !131
  %13 = icmp eq i32 %12, 0, !dbg !133
  %14 = zext i1 %13 to i32, !dbg !133
  %15 = sext i32 %14 to i64, !dbg !131
  call void @klee_assume(i64 noundef %15), !dbg !134
  br label %16

16:                                               ; preds = %11, %6
  call void @xmlSchemaInitTypes(), !dbg !135
  ret i32 0, !dbg !136
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

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
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30, !30}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/332_xmlschemastypes.c_472_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "a9bfd45c0310f00757253c588d0fa904")
!2 = !{!3, !9, !20}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaModelGroup", file: !1, line: 10, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaModelGroup", file: !1, line: 15, size: 32, elements: !6)
!6 = !{!7}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5, file: !1, line: 16, baseType: !8, size: 32)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaParticle", file: !1, line: 11, baseType: !11)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaParticle", file: !1, line: 19, size: 64, elements: !12)
!12 = !{!13}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !11, file: !1, line: 20, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaTreeItemPtr", file: !1, line: 13, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaTreeItem", file: !1, line: 12, baseType: !17)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaTreeItem", file: !1, line: 23, size: 32, elements: !18)
!18 = !{!19}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !17, file: !1, line: 24, baseType: !8, size: 32)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = distinct !DICompileUnit(language: DW_LANG_C99, file: !22, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!22 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!23 = !{i32 7, !"Dwarf Version", i32 5}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{i32 1, !"wchar_size", i32 4}
!26 = !{i32 7, !"PIC Level", i32 2}
!27 = !{i32 7, !"PIE Level", i32 2}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"Ubuntu clang version 14.0.6"}
!31 = distinct !DISubprogram(name: "xmlSchemaTypeErrMemory", scope: !1, file: !1, line: 28, type: !32, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!32 = !DISubroutineType(types: !33)
!33 = !{null, !20, !34}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!36 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!37 = !{}
!38 = !DILocalVariable(name: "ctxt", arg: 1, scope: !31, file: !1, line: 28, type: !20)
!39 = !DILocation(line: 28, column: 35, scope: !31)
!40 = !DILocalVariable(name: "msg", arg: 2, scope: !31, file: !1, line: 28, type: !34)
!41 = !DILocation(line: 28, column: 53, scope: !31)
!42 = !DILocation(line: 30, column: 1, scope: !31)
!43 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 32, type: !44, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!44 = !DISubroutineType(types: !45)
!45 = !{!3, !46}
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !47, line: 46, baseType: !48)
!47 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!48 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!49 = !DILocalVariable(name: "size", arg: 1, scope: !43, file: !1, line: 32, type: !46)
!50 = !DILocation(line: 32, column: 39, scope: !43)
!51 = !DILocation(line: 33, column: 41, scope: !43)
!52 = !DILocation(line: 33, column: 34, scope: !43)
!53 = !DILocation(line: 33, column: 12, scope: !43)
!54 = !DILocation(line: 33, column: 5, scope: !43)
!55 = distinct !DISubprogram(name: "xmlSchemaAddParticle", scope: !1, file: !1, line: 36, type: !56, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!56 = !DISubroutineType(types: !57)
!57 = !{!9}
!58 = !DILocalVariable(name: "particle", scope: !55, file: !1, line: 37, type: !9)
!59 = !DILocation(line: 37, column: 24, scope: !55)
!60 = !DILocation(line: 37, column: 55, scope: !55)
!61 = !DILocation(line: 37, column: 35, scope: !55)
!62 = !DILocation(line: 38, column: 9, scope: !63)
!63 = distinct !DILexicalBlock(scope: !55, file: !1, line: 38, column: 9)
!64 = !DILocation(line: 38, column: 9, scope: !55)
!65 = !DILocation(line: 39, column: 9, scope: !66)
!66 = distinct !DILexicalBlock(scope: !63, file: !1, line: 38, column: 19)
!67 = !DILocation(line: 39, column: 19, scope: !66)
!68 = !DILocation(line: 39, column: 28, scope: !66)
!69 = !DILocation(line: 40, column: 5, scope: !66)
!70 = !DILocation(line: 41, column: 12, scope: !55)
!71 = !DILocation(line: 41, column: 5, scope: !55)
!72 = distinct !DISubprogram(name: "xmlSchemaInitTypes", scope: !1, file: !1, line: 45, type: !73, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!73 = !DISubroutineType(types: !74)
!74 = !{null}
!75 = !DILocalVariable(name: "sequence", scope: !72, file: !1, line: 46, type: !3)
!76 = !DILocation(line: 46, column: 26, scope: !72)
!77 = !DILocalVariable(name: "particle", scope: !72, file: !1, line: 47, type: !9)
!78 = !DILocation(line: 47, column: 24, scope: !72)
!79 = !DILocation(line: 50, column: 16, scope: !72)
!80 = !DILocation(line: 50, column: 14, scope: !72)
!81 = !DILocation(line: 51, column: 9, scope: !82)
!82 = distinct !DILexicalBlock(scope: !72, file: !1, line: 51, column: 9)
!83 = !DILocation(line: 51, column: 18, scope: !82)
!84 = !DILocation(line: 51, column: 9, scope: !72)
!85 = !DILocation(line: 52, column: 9, scope: !86)
!86 = distinct !DILexicalBlock(scope: !82, file: !1, line: 51, column: 27)
!87 = !DILocation(line: 53, column: 9, scope: !86)
!88 = !DILocation(line: 61, column: 5, scope: !72)
!89 = !DILocation(line: 63, column: 12, scope: !72)
!90 = !DILocation(line: 63, column: 5, scope: !72)
!91 = !DILocation(line: 64, column: 5, scope: !72)
!92 = !DILocation(line: 64, column: 15, scope: !72)
!93 = !DILocation(line: 64, column: 20, scope: !72)
!94 = !DILocation(line: 67, column: 16, scope: !72)
!95 = !DILocation(line: 67, column: 14, scope: !72)
!96 = !DILocation(line: 68, column: 9, scope: !97)
!97 = distinct !DILexicalBlock(scope: !72, file: !1, line: 68, column: 9)
!98 = !DILocation(line: 68, column: 18, scope: !97)
!99 = !DILocation(line: 68, column: 9, scope: !72)
!100 = !DILocation(line: 70, column: 5, scope: !101)
!101 = distinct !DILexicalBlock(scope: !97, file: !1, line: 68, column: 27)
!102 = !DILocation(line: 68, column: 21, scope: !97)
!103 = !DILabel(scope: !72, name: "error", file: !1, line: 72)
!104 = !DILocation(line: 72, column: 1, scope: !72)
!105 = !DILocation(line: 73, column: 9, scope: !106)
!106 = distinct !DILexicalBlock(scope: !72, file: !1, line: 73, column: 9)
!107 = !DILocation(line: 73, column: 9, scope: !72)
!108 = !DILocation(line: 73, column: 24, scope: !106)
!109 = !DILocation(line: 73, column: 19, scope: !106)
!110 = !DILocation(line: 74, column: 9, scope: !111)
!111 = distinct !DILexicalBlock(scope: !72, file: !1, line: 74, column: 9)
!112 = !DILocation(line: 74, column: 9, scope: !72)
!113 = !DILocation(line: 74, column: 24, scope: !111)
!114 = !DILocation(line: 74, column: 19, scope: !111)
!115 = !DILocation(line: 75, column: 1, scope: !72)
!116 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 77, type: !117, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!117 = !DISubroutineType(types: !118)
!118 = !{!8}
!119 = !DILocalVariable(name: "malloc_fail_first", scope: !116, file: !1, line: 79, type: !8)
!120 = !DILocation(line: 79, column: 9, scope: !116)
!121 = !DILocation(line: 80, column: 24, scope: !116)
!122 = !DILocation(line: 80, column: 5, scope: !116)
!123 = !DILocation(line: 83, column: 9, scope: !124)
!124 = distinct !DILexicalBlock(scope: !116, file: !1, line: 83, column: 9)
!125 = !DILocation(line: 83, column: 9, scope: !116)
!126 = !DILocation(line: 85, column: 21, scope: !127)
!127 = distinct !DILexicalBlock(scope: !124, file: !1, line: 83, column: 28)
!128 = !DILocation(line: 85, column: 39, scope: !127)
!129 = !DILocation(line: 85, column: 9, scope: !127)
!130 = !DILocation(line: 86, column: 5, scope: !127)
!131 = !DILocation(line: 88, column: 21, scope: !132)
!132 = distinct !DILexicalBlock(scope: !124, file: !1, line: 86, column: 12)
!133 = !DILocation(line: 88, column: 39, scope: !132)
!134 = !DILocation(line: 88, column: 9, scope: !132)
!135 = !DILocation(line: 92, column: 5, scope: !116)
!136 = !DILocation(line: 94, column: 5, scope: !116)
!137 = distinct !DISubprogram(name: "memset", scope: !138, file: !138, line: 12, type: !139, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !21, retainedNodes: !37)
!138 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!139 = !DISubroutineType(types: !140)
!140 = !{!20, !20, !8, !46}
!141 = !DILocalVariable(name: "dst", arg: 1, scope: !137, file: !138, line: 12, type: !20)
!142 = !DILocation(line: 12, column: 20, scope: !137)
!143 = !DILocalVariable(name: "s", arg: 2, scope: !137, file: !138, line: 12, type: !8)
!144 = !DILocation(line: 12, column: 29, scope: !137)
!145 = !DILocalVariable(name: "count", arg: 3, scope: !137, file: !138, line: 12, type: !46)
!146 = !DILocation(line: 12, column: 39, scope: !137)
!147 = !DILocalVariable(name: "a", scope: !137, file: !138, line: 13, type: !148)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!149 = !DILocation(line: 13, column: 9, scope: !137)
!150 = !DILocation(line: 13, column: 13, scope: !137)
!151 = !DILocation(line: 14, column: 3, scope: !137)
!152 = !DILocation(line: 14, column: 15, scope: !137)
!153 = !DILocation(line: 14, column: 18, scope: !137)
!154 = !DILocation(line: 15, column: 12, scope: !137)
!155 = !DILocation(line: 15, column: 7, scope: !137)
!156 = !DILocation(line: 15, column: 10, scope: !137)
!157 = distinct !{!157, !151, !154, !158}
!158 = !{!"llvm.loop.mustprogress"}
!159 = !DILocation(line: 16, column: 10, scope: !137)
!160 = !DILocation(line: 16, column: 3, scope: !137)

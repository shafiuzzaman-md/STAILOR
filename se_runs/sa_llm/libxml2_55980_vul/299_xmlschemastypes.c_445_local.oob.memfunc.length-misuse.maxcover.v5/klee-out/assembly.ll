; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/299_xmlschemastypes.c_445_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/299_xmlschemastypes.c_445_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaTreeItem = type { i32, %struct._xmlSchemaTreeItem* }
%struct._xmlSchemaWildcard = type { i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"allocating wildcard component\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [77 x i8] c"(wild != ((void*)0) && sizeof(xmlSchemaWildcard) > 0) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [113 x i8] c"se_runs/sa_llm/libxml2_55980_vul/299_xmlschemastypes.c_445_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.target_function = private unnamed_addr constant [43 x i8] c"void target_function(xmlSchemaTreeItemPtr)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"particle\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !28 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i8** %3, metadata !37, metadata !DIExpression()), !dbg !38
  %4 = load i64, i64* %2, align 8, !dbg !39
  %5 = call noalias i8* @malloc(i64 noundef %4) #5, !dbg !40
  store i8* %5, i8** %3, align 8, !dbg !38
  %6 = load i8*, i8** %3, align 8, !dbg !41
  %7 = icmp ne i8* %6, null, !dbg !42
  %8 = zext i1 %7 to i32, !dbg !42
  %9 = sext i32 %8 to i64, !dbg !41
  call void @klee_assume(i64 noundef %9), !dbg !43
  %10 = load i8*, i8** %3, align 8, !dbg !44
  ret i8* %10, !dbg !45
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchemaTypeErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !46 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !52, metadata !DIExpression()), !dbg !53
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !54, metadata !DIExpression()), !dbg !55
  ret void, !dbg !56
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @target_function(%struct._xmlSchemaTreeItem* noundef %0) #0 !dbg !57 {
  %2 = alloca %struct._xmlSchemaTreeItem*, align 8
  %3 = alloca %struct._xmlSchemaWildcard*, align 8
  store %struct._xmlSchemaTreeItem* %0, %struct._xmlSchemaTreeItem** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaTreeItem** %2, metadata !60, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaWildcard** %3, metadata !62, metadata !DIExpression()), !dbg !63
  %4 = load %struct._xmlSchemaTreeItem*, %struct._xmlSchemaTreeItem** %2, align 8, !dbg !64
  %5 = getelementptr inbounds %struct._xmlSchemaTreeItem, %struct._xmlSchemaTreeItem* %4, i32 0, i32 0, !dbg !65
  store i32 -1, i32* %5, align 8, !dbg !66
  %6 = call i8* @xmlMalloc(i64 noundef 12), !dbg !67
  %7 = bitcast i8* %6 to %struct._xmlSchemaWildcard*, !dbg !68
  store %struct._xmlSchemaWildcard* %7, %struct._xmlSchemaWildcard** %3, align 8, !dbg !69
  %8 = load %struct._xmlSchemaWildcard*, %struct._xmlSchemaWildcard** %3, align 8, !dbg !70
  %9 = icmp eq %struct._xmlSchemaWildcard* %8, null, !dbg !72
  br i1 %9, label %10, label %11, !dbg !73

10:                                               ; preds = %1
  call void @xmlSchemaTypeErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0)), !dbg !74
  br label %30, !dbg !76

11:                                               ; preds = %1
  %12 = load %struct._xmlSchemaWildcard*, %struct._xmlSchemaWildcard** %3, align 8, !dbg !77
  %13 = icmp ne %struct._xmlSchemaWildcard* %12, null, !dbg !77
  br i1 %13, label %14, label %16, !dbg !77

14:                                               ; preds = %11
  br i1 true, label %15, label %16, !dbg !77

15:                                               ; preds = %14
  br label %18, !dbg !77

16:                                               ; preds = %14, %11
  %17 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([113 x i8], [113 x i8]* @.str.3, i64 0, i64 0), i32 noundef 52, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !77
  br label %18, !dbg !77

18:                                               ; preds = %16, %15
  %19 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([113 x i8], [113 x i8]* @.str.3, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !78
  %20 = load %struct._xmlSchemaWildcard*, %struct._xmlSchemaWildcard** %3, align 8, !dbg !79
  %21 = getelementptr inbounds %struct._xmlSchemaWildcard, %struct._xmlSchemaWildcard* %20, i32 0, i32 0, !dbg !80
  store i32 1, i32* %21, align 4, !dbg !81
  %22 = load %struct._xmlSchemaWildcard*, %struct._xmlSchemaWildcard** %3, align 8, !dbg !82
  %23 = getelementptr inbounds %struct._xmlSchemaWildcard, %struct._xmlSchemaWildcard* %22, i32 0, i32 1, !dbg !83
  store i32 1, i32* %23, align 4, !dbg !84
  %24 = load %struct._xmlSchemaWildcard*, %struct._xmlSchemaWildcard** %3, align 8, !dbg !85
  %25 = getelementptr inbounds %struct._xmlSchemaWildcard, %struct._xmlSchemaWildcard* %24, i32 0, i32 2, !dbg !86
  store i32 2, i32* %25, align 4, !dbg !87
  %26 = load %struct._xmlSchemaWildcard*, %struct._xmlSchemaWildcard** %3, align 8, !dbg !88
  %27 = bitcast %struct._xmlSchemaWildcard* %26 to %struct._xmlSchemaTreeItem*, !dbg !89
  %28 = load %struct._xmlSchemaTreeItem*, %struct._xmlSchemaTreeItem** %2, align 8, !dbg !90
  %29 = getelementptr inbounds %struct._xmlSchemaTreeItem, %struct._xmlSchemaTreeItem* %28, i32 0, i32 1, !dbg !91
  store %struct._xmlSchemaTreeItem* %27, %struct._xmlSchemaTreeItem** %29, align 8, !dbg !92
  br label %30, !dbg !93

30:                                               ; preds = %18, %10
  ret void, !dbg !93
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !94 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlSchemaTreeItem, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaTreeItem* %2, metadata !97, metadata !DIExpression()), !dbg !98
  %3 = bitcast %struct._xmlSchemaTreeItem* %2 to i8*, !dbg !99
  call void @klee_make_symbolic(i8* noundef %3, i64 noundef 16, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)), !dbg !100
  %4 = getelementptr inbounds %struct._xmlSchemaTreeItem, %struct._xmlSchemaTreeItem* %2, i32 0, i32 1, !dbg !101
  %5 = load %struct._xmlSchemaTreeItem*, %struct._xmlSchemaTreeItem** %4, align 8, !dbg !101
  %6 = icmp eq %struct._xmlSchemaTreeItem* %5, null, !dbg !102
  %7 = zext i1 %6 to i32, !dbg !102
  %8 = sext i32 %7 to i64, !dbg !103
  call void @klee_assume(i64 noundef %8), !dbg !104
  call void @target_function(%struct._xmlSchemaTreeItem* noundef %2), !dbg !105
  ret i32 0, !dbg !106
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/299_xmlschemastypes.c_445_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "a85f13fb610c2e29a64eb2feee14bcb3")
!2 = !{!3, !4, !13}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaWildcardPtr", file: !1, line: 13, baseType: !5)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaWildcard", file: !1, line: 10, baseType: !7)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaWildcard", file: !1, line: 15, size: 96, elements: !8)
!8 = !{!9, !11, !12}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !7, file: !1, line: 16, baseType: !10, size: 32)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "any", scope: !7, file: !1, line: 17, baseType: !10, size: 32, offset: 32)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "processContents", scope: !7, file: !1, line: 18, baseType: !10, size: 32, offset: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaTreeItemPtr", file: !1, line: 12, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaTreeItem", file: !1, line: 11, baseType: !16)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaTreeItem", file: !1, line: 21, size: 128, elements: !17)
!17 = !{!18, !19}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "maxOccurs", scope: !16, file: !1, line: 22, baseType: !10, size: 32)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !16, file: !1, line: 23, baseType: !13, size: 64, offset: 64)
!20 = !{i32 7, !"Dwarf Version", i32 5}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"wchar_size", i32 4}
!23 = !{i32 7, !"PIC Level", i32 2}
!24 = !{i32 7, !"PIE Level", i32 2}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"Ubuntu clang version 14.0.6"}
!28 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 27, type: !29, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!29 = !DISubroutineType(types: !30)
!30 = !{!3, !31}
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !32, line: 46, baseType: !33)
!32 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!33 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!34 = !{}
!35 = !DILocalVariable(name: "size", arg: 1, scope: !28, file: !1, line: 27, type: !31)
!36 = !DILocation(line: 27, column: 24, scope: !28)
!37 = !DILocalVariable(name: "ptr", scope: !28, file: !1, line: 28, type: !3)
!38 = !DILocation(line: 28, column: 11, scope: !28)
!39 = !DILocation(line: 28, column: 24, scope: !28)
!40 = !DILocation(line: 28, column: 17, scope: !28)
!41 = !DILocation(line: 29, column: 17, scope: !28)
!42 = !DILocation(line: 29, column: 21, scope: !28)
!43 = !DILocation(line: 29, column: 5, scope: !28)
!44 = !DILocation(line: 30, column: 12, scope: !28)
!45 = !DILocation(line: 30, column: 5, scope: !28)
!46 = distinct !DISubprogram(name: "xmlSchemaTypeErrMemory", scope: !1, file: !1, line: 33, type: !47, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!47 = !DISubroutineType(types: !48)
!48 = !{null, !3, !49}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!51 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!52 = !DILocalVariable(name: "ctx", arg: 1, scope: !46, file: !1, line: 33, type: !3)
!53 = !DILocation(line: 33, column: 35, scope: !46)
!54 = !DILocalVariable(name: "msg", arg: 2, scope: !46, file: !1, line: 33, type: !49)
!55 = !DILocation(line: 33, column: 52, scope: !46)
!56 = !DILocation(line: 35, column: 1, scope: !46)
!57 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 38, type: !58, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !13}
!60 = !DILocalVariable(name: "particle", arg: 1, scope: !57, file: !1, line: 38, type: !13)
!61 = !DILocation(line: 38, column: 43, scope: !57)
!62 = !DILocalVariable(name: "wild", scope: !57, file: !1, line: 39, type: !4)
!63 = !DILocation(line: 39, column: 26, scope: !57)
!64 = !DILocation(line: 41, column: 5, scope: !57)
!65 = !DILocation(line: 41, column: 15, scope: !57)
!66 = !DILocation(line: 41, column: 25, scope: !57)
!67 = !DILocation(line: 44, column: 35, scope: !57)
!68 = !DILocation(line: 44, column: 12, scope: !57)
!69 = !DILocation(line: 44, column: 10, scope: !57)
!70 = !DILocation(line: 45, column: 9, scope: !71)
!71 = distinct !DILexicalBlock(scope: !57, file: !1, line: 45, column: 9)
!72 = !DILocation(line: 45, column: 14, scope: !71)
!73 = !DILocation(line: 45, column: 9, scope: !57)
!74 = !DILocation(line: 46, column: 9, scope: !75)
!75 = distinct !DILexicalBlock(scope: !71, file: !1, line: 45, column: 23)
!76 = !DILocation(line: 47, column: 9, scope: !75)
!77 = !DILocation(line: 52, column: 5, scope: !57)
!78 = !DILocation(line: 55, column: 5, scope: !57)
!79 = !DILocation(line: 60, column: 5, scope: !57)
!80 = !DILocation(line: 60, column: 11, scope: !57)
!81 = !DILocation(line: 60, column: 16, scope: !57)
!82 = !DILocation(line: 61, column: 5, scope: !57)
!83 = !DILocation(line: 61, column: 11, scope: !57)
!84 = !DILocation(line: 61, column: 15, scope: !57)
!85 = !DILocation(line: 62, column: 5, scope: !57)
!86 = !DILocation(line: 62, column: 11, scope: !57)
!87 = !DILocation(line: 62, column: 27, scope: !57)
!88 = !DILocation(line: 63, column: 49, scope: !57)
!89 = !DILocation(line: 63, column: 26, scope: !57)
!90 = !DILocation(line: 63, column: 5, scope: !57)
!91 = !DILocation(line: 63, column: 15, scope: !57)
!92 = !DILocation(line: 63, column: 24, scope: !57)
!93 = !DILocation(line: 64, column: 1, scope: !57)
!94 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 66, type: !95, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!95 = !DISubroutineType(types: !96)
!96 = !{!10}
!97 = !DILocalVariable(name: "particle", scope: !94, file: !1, line: 67, type: !15)
!98 = !DILocation(line: 67, column: 23, scope: !94)
!99 = !DILocation(line: 70, column: 24, scope: !94)
!100 = !DILocation(line: 70, column: 5, scope: !94)
!101 = !DILocation(line: 73, column: 26, scope: !94)
!102 = !DILocation(line: 73, column: 35, scope: !94)
!103 = !DILocation(line: 73, column: 17, scope: !94)
!104 = !DILocation(line: 73, column: 5, scope: !94)
!105 = !DILocation(line: 76, column: 5, scope: !94)
!106 = !DILocation(line: 78, column: 5, scope: !94)

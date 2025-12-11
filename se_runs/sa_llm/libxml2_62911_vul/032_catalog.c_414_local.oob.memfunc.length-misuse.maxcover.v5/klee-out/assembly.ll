; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/032_catalog.c_414_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/032_catalog.c_414_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlCatalog = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"allocating catalog\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"(ret->catalMax >= 0) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_62911_vul/032_catalog.c_414_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlNewCatalog = private unnamed_addr constant [51 x i8] c"xmlCatalogPtr xmlNewCatalog(int, xmlCatalogPrefer)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"sgml\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"prefer\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlCatalogErrMemory(i8* noundef %0) #0 !dbg !37 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !44, metadata !DIExpression()), !dbg !45
  ret void, !dbg !46
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !47 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !53, metadata !DIExpression()), !dbg !54
  %3 = load i64, i64* %2, align 8, !dbg !55
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !56
  ret i8* %4, !dbg !57
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlCatalog* @xmlNewCatalog(i32 noundef %0, i32 noundef %1) #0 !dbg !58 {
  %3 = alloca %struct._xmlCatalog*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct._xmlCatalog*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !61, metadata !DIExpression()), !dbg !62
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !63, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata %struct._xmlCatalog** %6, metadata !65, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.declare(metadata i32* %7, metadata !67, metadata !DIExpression()), !dbg !68
  %8 = load i32, i32* %4, align 4, !dbg !69
  %9 = icmp ne i32 %8, 0, !dbg !69
  br i1 %9, label %10, label %11, !dbg !71

10:                                               ; preds = %2
  store i32 0, i32* %7, align 4, !dbg !72
  br label %12, !dbg !73

11:                                               ; preds = %2
  store i32 1, i32* %7, align 4, !dbg !74
  br label %12

12:                                               ; preds = %11, %10
  %13 = call i8* @xmlMalloc(i64 noundef 16), !dbg !75
  %14 = bitcast i8* %13 to %struct._xmlCatalog*, !dbg !76
  store %struct._xmlCatalog* %14, %struct._xmlCatalog** %6, align 8, !dbg !77
  %15 = load %struct._xmlCatalog*, %struct._xmlCatalog** %6, align 8, !dbg !78
  %16 = icmp eq %struct._xmlCatalog* %15, null, !dbg !80
  br i1 %16, label %17, label %18, !dbg !81

17:                                               ; preds = %12
  call void @xmlCatalogErrMemory(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0)), !dbg !82
  store %struct._xmlCatalog* null, %struct._xmlCatalog** %3, align 8, !dbg !84
  br label %49, !dbg !84

18:                                               ; preds = %12
  %19 = load %struct._xmlCatalog*, %struct._xmlCatalog** %6, align 8, !dbg !85
  %20 = bitcast %struct._xmlCatalog* %19 to i8*, !dbg !86
  %21 = call i8* @memset(i8* %20, i32 0, i64 16), !dbg !86
  %22 = load i32, i32* %7, align 4, !dbg !87
  %23 = load %struct._xmlCatalog*, %struct._xmlCatalog** %6, align 8, !dbg !88
  %24 = getelementptr inbounds %struct._xmlCatalog, %struct._xmlCatalog* %23, i32 0, i32 0, !dbg !89
  store i32 %22, i32* %24, align 4, !dbg !90
  %25 = load %struct._xmlCatalog*, %struct._xmlCatalog** %6, align 8, !dbg !91
  %26 = getelementptr inbounds %struct._xmlCatalog, %struct._xmlCatalog* %25, i32 0, i32 1, !dbg !92
  store i32 0, i32* %26, align 4, !dbg !93
  %27 = load %struct._xmlCatalog*, %struct._xmlCatalog** %6, align 8, !dbg !94
  %28 = getelementptr inbounds %struct._xmlCatalog, %struct._xmlCatalog* %27, i32 0, i32 2, !dbg !95
  store i32 0, i32* %28, align 4, !dbg !96
  %29 = load i32, i32* %5, align 4, !dbg !97
  %30 = load %struct._xmlCatalog*, %struct._xmlCatalog** %6, align 8, !dbg !98
  %31 = getelementptr inbounds %struct._xmlCatalog, %struct._xmlCatalog* %30, i32 0, i32 3, !dbg !99
  store i32 %29, i32* %31, align 4, !dbg !100
  %32 = load %struct._xmlCatalog*, %struct._xmlCatalog** %6, align 8, !dbg !101
  %33 = getelementptr inbounds %struct._xmlCatalog, %struct._xmlCatalog* %32, i32 0, i32 0, !dbg !103
  %34 = load i32, i32* %33, align 4, !dbg !103
  %35 = icmp eq i32 %34, 0, !dbg !104
  br i1 %35, label %36, label %47, !dbg !105

36:                                               ; preds = %18
  %37 = load %struct._xmlCatalog*, %struct._xmlCatalog** %6, align 8, !dbg !106
  %38 = getelementptr inbounds %struct._xmlCatalog, %struct._xmlCatalog* %37, i32 0, i32 2, !dbg !106
  %39 = load i32, i32* %38, align 4, !dbg !106
  %40 = icmp sge i32 %39, 0, !dbg !106
  br i1 %40, label %41, label %43, !dbg !106

41:                                               ; preds = %36
  br i1 true, label %42, label %43, !dbg !106

42:                                               ; preds = %41
  br label %45, !dbg !106

43:                                               ; preds = %41, %36
  %44 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.3, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.xmlNewCatalog, i64 0, i64 0)), !dbg !106
  br label %45, !dbg !106

45:                                               ; preds = %43, %42
  %46 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.3, i64 0, i64 0), i32 noundef 66, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.xmlNewCatalog, i64 0, i64 0)), !dbg !108
  br label %47, !dbg !109

47:                                               ; preds = %45, %18
  %48 = load %struct._xmlCatalog*, %struct._xmlCatalog** %6, align 8, !dbg !110
  store %struct._xmlCatalog* %48, %struct._xmlCatalog** %3, align 8, !dbg !111
  br label %49, !dbg !111

49:                                               ; preds = %47, %17
  %50 = load %struct._xmlCatalog*, %struct._xmlCatalog** %3, align 8, !dbg !112
  ret %struct._xmlCatalog* %50, !dbg !112
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !113 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlCatalog*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !116, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.declare(metadata i32* %3, metadata !118, metadata !DIExpression()), !dbg !119
  call void @llvm.dbg.declare(metadata %struct._xmlCatalog** %4, metadata !120, metadata !DIExpression()), !dbg !121
  %5 = bitcast i32* %2 to i8*, !dbg !122
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)), !dbg !123
  %6 = bitcast i32* %3 to i8*, !dbg !124
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)), !dbg !125
  %7 = load i32, i32* %3, align 4, !dbg !126
  %8 = icmp uge i32 %7, 0, !dbg !127
  br i1 %8, label %9, label %12, !dbg !128

9:                                                ; preds = %0
  %10 = load i32, i32* %3, align 4, !dbg !129
  %11 = icmp ule i32 %10, 2, !dbg !130
  br label %12

12:                                               ; preds = %9, %0
  %13 = phi i1 [ false, %0 ], [ %11, %9 ], !dbg !131
  %14 = zext i1 %13 to i32, !dbg !128
  %15 = sext i32 %14 to i64, !dbg !126
  call void @klee_assume(i64 noundef %15), !dbg !132
  %16 = load i32, i32* %2, align 4, !dbg !133
  %17 = load i32, i32* %3, align 4, !dbg !134
  %18 = call %struct._xmlCatalog* @xmlNewCatalog(i32 noundef %16, i32 noundef %17), !dbg !135
  store %struct._xmlCatalog* %18, %struct._xmlCatalog** %4, align 8, !dbg !136
  %19 = load %struct._xmlCatalog*, %struct._xmlCatalog** %4, align 8, !dbg !137
  %20 = icmp ne %struct._xmlCatalog* %19, null, !dbg !139
  br i1 %20, label %21, label %24, !dbg !140

21:                                               ; preds = %12
  %22 = load %struct._xmlCatalog*, %struct._xmlCatalog** %4, align 8, !dbg !141
  %23 = bitcast %struct._xmlCatalog* %22 to i8*, !dbg !141
  call void @free(i8* noundef %23) #7, !dbg !143
  br label %24, !dbg !144

24:                                               ; preds = %21, %12
  ret i32 0, !dbg !145
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !146 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !150, metadata !DIExpression()), !dbg !151
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !152, metadata !DIExpression()), !dbg !153
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !154, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.declare(metadata i8** %7, metadata !156, metadata !DIExpression()), !dbg !158
  %8 = load i8*, i8** %4, align 8, !dbg !159
  store i8* %8, i8** %7, align 8, !dbg !158
  br label %9, !dbg !160

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !161
  %11 = add i64 %10, -1, !dbg !161
  store i64 %11, i64* %6, align 8, !dbg !161
  %12 = icmp ugt i64 %10, 0, !dbg !162
  br i1 %12, label %13, label %18, !dbg !160

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !163
  %15 = trunc i32 %14 to i8, !dbg !163
  %16 = load i8*, i8** %7, align 8, !dbg !164
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !164
  store i8* %17, i8** %7, align 8, !dbg !164
  store i8 %15, i8* %16, align 1, !dbg !165
  br label %9, !dbg !160, !llvm.loop !166

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !168
  ret i8* %19, !dbg !169
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36, !36}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !13, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/032_catalog.c_414_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "1ebf8cd8dd65e0ca52eba65e339e7dc9")
!2 = !{!3, !8}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 10, baseType: !4, size: 32, elements: !5)
!4 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!5 = !{!6, !7}
!6 = !DIEnumerator(name: "XML_SGML_CATALOG_TYPE", value: 0)
!7 = !DIEnumerator(name: "XML_CATALOG_TYPE", value: 1)
!8 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 15, baseType: !4, size: 32, elements: !9)
!9 = !{!10, !11, !12}
!10 = !DIEnumerator(name: "XML_CATA_PREFER_NONE", value: 0)
!11 = !DIEnumerator(name: "XML_CATA_PREFER_PUBLIC", value: 1)
!12 = !DIEnumerator(name: "XML_CATA_PREFER_SYSTEM", value: 2)
!13 = !{!14, !26}
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCatalogPtr", file: !1, line: 22, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCatalog", file: !1, line: 21, baseType: !17)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlCatalog", file: !1, line: 24, size: 128, elements: !18)
!18 = !{!19, !21, !23, !24}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !17, file: !1, line: 25, baseType: !20, size: 32)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCatalogType", file: !1, line: 13, baseType: !3)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "catalNr", scope: !17, file: !1, line: 26, baseType: !22, size: 32, offset: 32)
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "catalMax", scope: !17, file: !1, line: 27, baseType: !22, size: 32, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "prefer", scope: !17, file: !1, line: 28, baseType: !25, size: 32, offset: 96)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCatalogPrefer", file: !1, line: 19, baseType: !8)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!27 = distinct !DICompileUnit(language: DW_LANG_C99, file: !28, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!28 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!29 = !{i32 7, !"Dwarf Version", i32 5}
!30 = !{i32 2, !"Debug Info Version", i32 3}
!31 = !{i32 1, !"wchar_size", i32 4}
!32 = !{i32 7, !"PIC Level", i32 2}
!33 = !{i32 7, !"PIE Level", i32 2}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"Ubuntu clang version 14.0.6"}
!37 = distinct !DISubprogram(name: "xmlCatalogErrMemory", scope: !1, file: !1, line: 33, type: !38, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !43)
!38 = !DISubroutineType(types: !39)
!39 = !{null, !40}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!42 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!43 = !{}
!44 = !DILocalVariable(name: "msg", arg: 1, scope: !37, file: !1, line: 33, type: !40)
!45 = !DILocation(line: 33, column: 38, scope: !37)
!46 = !DILocation(line: 35, column: 1, scope: !37)
!47 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 37, type: !48, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !43)
!48 = !DISubroutineType(types: !49)
!49 = !{!26, !50}
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !51, line: 46, baseType: !52)
!51 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!52 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!53 = !DILocalVariable(name: "size", arg: 1, scope: !47, file: !1, line: 37, type: !50)
!54 = !DILocation(line: 37, column: 24, scope: !47)
!55 = !DILocation(line: 38, column: 19, scope: !47)
!56 = !DILocation(line: 38, column: 12, scope: !47)
!57 = !DILocation(line: 38, column: 5, scope: !47)
!58 = distinct !DISubprogram(name: "xmlNewCatalog", scope: !1, file: !1, line: 42, type: !59, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !43)
!59 = !DISubroutineType(types: !60)
!60 = !{!14, !22, !25}
!61 = !DILocalVariable(name: "sgml", arg: 1, scope: !58, file: !1, line: 42, type: !22)
!62 = !DILocation(line: 42, column: 33, scope: !58)
!63 = !DILocalVariable(name: "prefer", arg: 2, scope: !58, file: !1, line: 42, type: !25)
!64 = !DILocation(line: 42, column: 56, scope: !58)
!65 = !DILocalVariable(name: "ret", scope: !58, file: !1, line: 43, type: !14)
!66 = !DILocation(line: 43, column: 19, scope: !58)
!67 = !DILocalVariable(name: "type", scope: !58, file: !1, line: 44, type: !20)
!68 = !DILocation(line: 44, column: 20, scope: !58)
!69 = !DILocation(line: 46, column: 9, scope: !70)
!70 = distinct !DILexicalBlock(scope: !58, file: !1, line: 46, column: 9)
!71 = !DILocation(line: 46, column: 9, scope: !58)
!72 = !DILocation(line: 47, column: 14, scope: !70)
!73 = !DILocation(line: 47, column: 9, scope: !70)
!74 = !DILocation(line: 49, column: 14, scope: !70)
!75 = !DILocation(line: 51, column: 27, scope: !58)
!76 = !DILocation(line: 51, column: 11, scope: !58)
!77 = !DILocation(line: 51, column: 9, scope: !58)
!78 = !DILocation(line: 52, column: 9, scope: !79)
!79 = distinct !DILexicalBlock(scope: !58, file: !1, line: 52, column: 9)
!80 = !DILocation(line: 52, column: 13, scope: !79)
!81 = !DILocation(line: 52, column: 9, scope: !58)
!82 = !DILocation(line: 53, column: 9, scope: !83)
!83 = distinct !DILexicalBlock(scope: !79, file: !1, line: 52, column: 22)
!84 = !DILocation(line: 54, column: 9, scope: !83)
!85 = !DILocation(line: 56, column: 12, scope: !58)
!86 = !DILocation(line: 56, column: 5, scope: !58)
!87 = !DILocation(line: 57, column: 17, scope: !58)
!88 = !DILocation(line: 57, column: 5, scope: !58)
!89 = !DILocation(line: 57, column: 10, scope: !58)
!90 = !DILocation(line: 57, column: 15, scope: !58)
!91 = !DILocation(line: 58, column: 5, scope: !58)
!92 = !DILocation(line: 58, column: 10, scope: !58)
!93 = !DILocation(line: 58, column: 18, scope: !58)
!94 = !DILocation(line: 59, column: 5, scope: !58)
!95 = !DILocation(line: 59, column: 10, scope: !58)
!96 = !DILocation(line: 59, column: 19, scope: !58)
!97 = !DILocation(line: 60, column: 19, scope: !58)
!98 = !DILocation(line: 60, column: 5, scope: !58)
!99 = !DILocation(line: 60, column: 10, scope: !58)
!100 = !DILocation(line: 60, column: 17, scope: !58)
!101 = !DILocation(line: 61, column: 9, scope: !102)
!102 = distinct !DILexicalBlock(scope: !58, file: !1, line: 61, column: 9)
!103 = !DILocation(line: 61, column: 14, scope: !102)
!104 = !DILocation(line: 61, column: 19, scope: !102)
!105 = !DILocation(line: 61, column: 9, scope: !58)
!106 = !DILocation(line: 64, column: 9, scope: !107)
!107 = distinct !DILexicalBlock(scope: !102, file: !1, line: 61, column: 45)
!108 = !DILocation(line: 66, column: 9, scope: !107)
!109 = !DILocation(line: 67, column: 5, scope: !107)
!110 = !DILocation(line: 68, column: 12, scope: !58)
!111 = !DILocation(line: 68, column: 5, scope: !58)
!112 = !DILocation(line: 69, column: 1, scope: !58)
!113 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 72, type: !114, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !43)
!114 = !DISubroutineType(types: !115)
!115 = !{!22}
!116 = !DILocalVariable(name: "sgml", scope: !113, file: !1, line: 73, type: !22)
!117 = !DILocation(line: 73, column: 9, scope: !113)
!118 = !DILocalVariable(name: "prefer", scope: !113, file: !1, line: 74, type: !25)
!119 = !DILocation(line: 74, column: 22, scope: !113)
!120 = !DILocalVariable(name: "catalog", scope: !113, file: !1, line: 75, type: !14)
!121 = !DILocation(line: 75, column: 19, scope: !113)
!122 = !DILocation(line: 78, column: 24, scope: !113)
!123 = !DILocation(line: 78, column: 5, scope: !113)
!124 = !DILocation(line: 79, column: 24, scope: !113)
!125 = !DILocation(line: 79, column: 5, scope: !113)
!126 = !DILocation(line: 82, column: 17, scope: !113)
!127 = !DILocation(line: 82, column: 24, scope: !113)
!128 = !DILocation(line: 82, column: 48, scope: !113)
!129 = !DILocation(line: 82, column: 51, scope: !113)
!130 = !DILocation(line: 82, column: 58, scope: !113)
!131 = !DILocation(line: 0, scope: !113)
!132 = !DILocation(line: 82, column: 5, scope: !113)
!133 = !DILocation(line: 85, column: 29, scope: !113)
!134 = !DILocation(line: 85, column: 35, scope: !113)
!135 = !DILocation(line: 85, column: 15, scope: !113)
!136 = !DILocation(line: 85, column: 13, scope: !113)
!137 = !DILocation(line: 88, column: 9, scope: !138)
!138 = distinct !DILexicalBlock(scope: !113, file: !1, line: 88, column: 9)
!139 = !DILocation(line: 88, column: 17, scope: !138)
!140 = !DILocation(line: 88, column: 9, scope: !113)
!141 = !DILocation(line: 89, column: 14, scope: !142)
!142 = distinct !DILexicalBlock(scope: !138, file: !1, line: 88, column: 26)
!143 = !DILocation(line: 89, column: 9, scope: !142)
!144 = !DILocation(line: 90, column: 5, scope: !142)
!145 = !DILocation(line: 92, column: 5, scope: !113)
!146 = distinct !DISubprogram(name: "memset", scope: !147, file: !147, line: 12, type: !148, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !43)
!147 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!148 = !DISubroutineType(types: !149)
!149 = !{!26, !26, !22, !50}
!150 = !DILocalVariable(name: "dst", arg: 1, scope: !146, file: !147, line: 12, type: !26)
!151 = !DILocation(line: 12, column: 20, scope: !146)
!152 = !DILocalVariable(name: "s", arg: 2, scope: !146, file: !147, line: 12, type: !22)
!153 = !DILocation(line: 12, column: 29, scope: !146)
!154 = !DILocalVariable(name: "count", arg: 3, scope: !146, file: !147, line: 12, type: !50)
!155 = !DILocation(line: 12, column: 39, scope: !146)
!156 = !DILocalVariable(name: "a", scope: !146, file: !147, line: 13, type: !157)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!158 = !DILocation(line: 13, column: 9, scope: !146)
!159 = !DILocation(line: 13, column: 13, scope: !146)
!160 = !DILocation(line: 14, column: 3, scope: !146)
!161 = !DILocation(line: 14, column: 15, scope: !146)
!162 = !DILocation(line: 14, column: 18, scope: !146)
!163 = !DILocation(line: 15, column: 12, scope: !146)
!164 = !DILocation(line: 15, column: 7, scope: !146)
!165 = !DILocation(line: 15, column: 10, scope: !146)
!166 = distinct !{!166, !160, !163, !167}
!167 = !{!"llvm.loop.mustprogress"}
!168 = !DILocation(line: 16, column: 10, scope: !146)
!169 = !DILocation(line: 16, column: 3, scope: !146)

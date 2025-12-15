; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/353_xpath.c_3587_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/353_xpath.c_3587_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlNodeSet = type { i32, i32, %struct._xmlNode** }
%struct._xmlNode = type opaque

@.str = private unnamed_addr constant [18 x i8] c"creating nodeset\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"(ret != ((void*)0) && sizeof(xmlNodeSet) > 0) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_55980_vul/353_xpath.c_3587_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlXPathNodeSetCreate = private unnamed_addr constant [48 x i8] c"xmlNodeSetPtr xmlXPathNodeSetCreate(xmlNodePtr)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"val\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlXPathErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !27 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !34, metadata !DIExpression()), !dbg !35
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !36, metadata !DIExpression()), !dbg !37
  ret void, !dbg !38
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !39 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !45, metadata !DIExpression()), !dbg !46
  %3 = load i64, i64* %2, align 8, !dbg !47
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !48
  ret i8* %4, !dbg !49
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !50 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !53, metadata !DIExpression()), !dbg !54
  %3 = load i8*, i8** %2, align 8, !dbg !55
  call void @free(i8* noundef %3) #7, !dbg !56
  ret void, !dbg !57
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlNodeSet* @xmlXPathNodeSetCreate(%struct._xmlNode* noundef %0) #0 !dbg !58 {
  %2 = alloca %struct._xmlNodeSet*, align 8
  %3 = alloca %struct._xmlNode*, align 8
  %4 = alloca %struct._xmlNodeSet*, align 8
  store %struct._xmlNode* %0, %struct._xmlNode** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %3, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata %struct._xmlNodeSet** %4, metadata !63, metadata !DIExpression()), !dbg !64
  %5 = call i8* @xmlMalloc(i64 noundef 16), !dbg !65
  %6 = bitcast i8* %5 to %struct._xmlNodeSet*, !dbg !66
  store %struct._xmlNodeSet* %6, %struct._xmlNodeSet** %4, align 8, !dbg !67
  %7 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %4, align 8, !dbg !68
  %8 = icmp eq %struct._xmlNodeSet* %7, null, !dbg !70
  br i1 %8, label %9, label %10, !dbg !71

9:                                                ; preds = %1
  call void @xmlXPathErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0)), !dbg !72
  store %struct._xmlNodeSet* null, %struct._xmlNodeSet** %2, align 8, !dbg !74
  br label %39, !dbg !74

10:                                               ; preds = %1
  %11 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %4, align 8, !dbg !75
  %12 = bitcast %struct._xmlNodeSet* %11 to i8*, !dbg !76
  %13 = call i8* @memset(i8* %12, i32 0, i64 16), !dbg !76
  %14 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %4, align 8, !dbg !77
  %15 = icmp ne %struct._xmlNodeSet* %14, null, !dbg !77
  br i1 %15, label %16, label %18, !dbg !77

16:                                               ; preds = %10
  br i1 true, label %17, label %18, !dbg !77

17:                                               ; preds = %16
  br label %20, !dbg !77

18:                                               ; preds = %16, %10
  %19 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.3, i64 0, i64 0), i32 noundef 45, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.xmlXPathNodeSetCreate, i64 0, i64 0)), !dbg !77
  br label %20, !dbg !77

20:                                               ; preds = %18, %17
  %21 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.3, i64 0, i64 0), i32 noundef 48, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.xmlXPathNodeSetCreate, i64 0, i64 0)), !dbg !78
  %22 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !79
  %23 = icmp ne %struct._xmlNode* %22, null, !dbg !81
  br i1 %23, label %24, label %37, !dbg !82

24:                                               ; preds = %20
  %25 = call i8* @xmlMalloc(i64 noundef 80), !dbg !83
  %26 = bitcast i8* %25 to %struct._xmlNode**, !dbg !85
  %27 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %4, align 8, !dbg !86
  %28 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %27, i32 0, i32 2, !dbg !87
  store %struct._xmlNode** %26, %struct._xmlNode*** %28, align 8, !dbg !88
  %29 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %4, align 8, !dbg !89
  %30 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %29, i32 0, i32 2, !dbg !91
  %31 = load %struct._xmlNode**, %struct._xmlNode*** %30, align 8, !dbg !91
  %32 = icmp eq %struct._xmlNode** %31, null, !dbg !92
  br i1 %32, label %33, label %36, !dbg !93

33:                                               ; preds = %24
  call void @xmlXPathErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0)), !dbg !94
  %34 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %4, align 8, !dbg !96
  %35 = bitcast %struct._xmlNodeSet* %34 to i8*, !dbg !96
  call void @xmlFree(i8* noundef %35), !dbg !97
  store %struct._xmlNodeSet* null, %struct._xmlNodeSet** %2, align 8, !dbg !98
  br label %39, !dbg !98

36:                                               ; preds = %24
  br label %37, !dbg !99

37:                                               ; preds = %36, %20
  %38 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %4, align 8, !dbg !100
  store %struct._xmlNodeSet* %38, %struct._xmlNodeSet** %2, align 8, !dbg !101
  br label %39, !dbg !101

39:                                               ; preds = %37, %33, %9
  %40 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %2, align 8, !dbg !102
  ret %struct._xmlNodeSet* %40, !dbg !102
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !103 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlNode*, align 8
  %3 = alloca %struct._xmlNodeSet*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %2, metadata !106, metadata !DIExpression()), !dbg !107
  %4 = bitcast %struct._xmlNode** %2 to i8*, !dbg !108
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)), !dbg !109
  call void @llvm.dbg.declare(metadata %struct._xmlNodeSet** %3, metadata !110, metadata !DIExpression()), !dbg !111
  %5 = load %struct._xmlNode*, %struct._xmlNode** %2, align 8, !dbg !112
  %6 = call %struct._xmlNodeSet* @xmlXPathNodeSetCreate(%struct._xmlNode* noundef %5), !dbg !113
  store %struct._xmlNodeSet* %6, %struct._xmlNodeSet** %3, align 8, !dbg !111
  %7 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %3, align 8, !dbg !114
  %8 = icmp ne %struct._xmlNodeSet* %7, null, !dbg !114
  br i1 %8, label %9, label %22, !dbg !116

9:                                                ; preds = %0
  %10 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %3, align 8, !dbg !117
  %11 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %10, i32 0, i32 2, !dbg !120
  %12 = load %struct._xmlNode**, %struct._xmlNode*** %11, align 8, !dbg !120
  %13 = icmp ne %struct._xmlNode** %12, null, !dbg !117
  br i1 %13, label %14, label %19, !dbg !121

14:                                               ; preds = %9
  %15 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %3, align 8, !dbg !122
  %16 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %15, i32 0, i32 2, !dbg !124
  %17 = load %struct._xmlNode**, %struct._xmlNode*** %16, align 8, !dbg !124
  %18 = bitcast %struct._xmlNode** %17 to i8*, !dbg !122
  call void @free(i8* noundef %18) #7, !dbg !125
  br label %19, !dbg !126

19:                                               ; preds = %14, %9
  %20 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %3, align 8, !dbg !127
  %21 = bitcast %struct._xmlNodeSet* %20 to i8*, !dbg !127
  call void @free(i8* noundef %21) #7, !dbg !128
  br label %22, !dbg !129

22:                                               ; preds = %19, %0
  ret i32 0, !dbg !130
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !131 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !135, metadata !DIExpression()), !dbg !136
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !137, metadata !DIExpression()), !dbg !138
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !139, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.declare(metadata i8** %7, metadata !141, metadata !DIExpression()), !dbg !143
  %8 = load i8*, i8** %4, align 8, !dbg !144
  store i8* %8, i8** %7, align 8, !dbg !143
  br label %9, !dbg !145

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !146
  %11 = add i64 %10, -1, !dbg !146
  store i64 %11, i64* %6, align 8, !dbg !146
  %12 = icmp ugt i64 %10, 0, !dbg !147
  br i1 %12, label %13, label %18, !dbg !145

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !148
  %15 = trunc i32 %14 to i8, !dbg !148
  %16 = load i8*, i8** %7, align 8, !dbg !149
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !149
  store i8* %17, i8** %7, align 8, !dbg !149
  store i8 %15, i8* %16, align 1, !dbg !150
  br label %9, !dbg !145, !llvm.loop !151

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !153
  ret i8* %19, !dbg !154
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26, !26}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/353_xpath.c_3587_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "ea15fcb67a3edc0a8dad5b225e216562")
!2 = !{!3, !16, !11}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodeSetPtr", file: !1, line: 17, baseType: !4)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNodeSet", file: !1, line: 13, size: 128, elements: !6)
!6 = !{!7, !9, !10}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "nodeNr", scope: !5, file: !1, line: 14, baseType: !8, size: 32)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_member, name: "nodeMax", scope: !5, file: !1, line: 15, baseType: !8, size: 32, offset: 32)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !5, file: !1, line: 16, baseType: !11, size: 64, offset: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !1, line: 11, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 10, baseType: !15)
!15 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 10, flags: DIFlagFwdDecl)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
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
!27 = distinct !DISubprogram(name: "xmlXPathErrMemory", scope: !1, file: !1, line: 20, type: !28, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !16, !30}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!32 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!33 = !{}
!34 = !DILocalVariable(name: "ctxt", arg: 1, scope: !27, file: !1, line: 20, type: !16)
!35 = !DILocation(line: 20, column: 30, scope: !27)
!36 = !DILocalVariable(name: "msg", arg: 2, scope: !27, file: !1, line: 20, type: !30)
!37 = !DILocation(line: 20, column: 48, scope: !27)
!38 = !DILocation(line: 22, column: 1, scope: !27)
!39 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 24, type: !40, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!40 = !DISubroutineType(types: !41)
!41 = !{!16, !42}
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !43, line: 46, baseType: !44)
!43 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!44 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!45 = !DILocalVariable(name: "size", arg: 1, scope: !39, file: !1, line: 24, type: !42)
!46 = !DILocation(line: 24, column: 24, scope: !39)
!47 = !DILocation(line: 25, column: 19, scope: !39)
!48 = !DILocation(line: 25, column: 12, scope: !39)
!49 = !DILocation(line: 25, column: 5, scope: !39)
!50 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 28, type: !51, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!51 = !DISubroutineType(types: !52)
!52 = !{null, !16}
!53 = !DILocalVariable(name: "ptr", arg: 1, scope: !50, file: !1, line: 28, type: !16)
!54 = !DILocation(line: 28, column: 20, scope: !50)
!55 = !DILocation(line: 29, column: 10, scope: !50)
!56 = !DILocation(line: 29, column: 5, scope: !50)
!57 = !DILocation(line: 30, column: 1, scope: !50)
!58 = distinct !DISubprogram(name: "xmlXPathNodeSetCreate", scope: !1, file: !1, line: 33, type: !59, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!59 = !DISubroutineType(types: !60)
!60 = !{!3, !12}
!61 = !DILocalVariable(name: "val", arg: 1, scope: !58, file: !1, line: 33, type: !12)
!62 = !DILocation(line: 33, column: 48, scope: !58)
!63 = !DILocalVariable(name: "ret", scope: !58, file: !1, line: 34, type: !3)
!64 = !DILocation(line: 34, column: 19, scope: !58)
!65 = !DILocation(line: 36, column: 27, scope: !58)
!66 = !DILocation(line: 36, column: 11, scope: !58)
!67 = !DILocation(line: 36, column: 9, scope: !58)
!68 = !DILocation(line: 37, column: 9, scope: !69)
!69 = distinct !DILexicalBlock(scope: !58, file: !1, line: 37, column: 9)
!70 = !DILocation(line: 37, column: 13, scope: !69)
!71 = !DILocation(line: 37, column: 9, scope: !58)
!72 = !DILocation(line: 38, column: 9, scope: !73)
!73 = distinct !DILexicalBlock(scope: !69, file: !1, line: 37, column: 22)
!74 = !DILocation(line: 39, column: 9, scope: !73)
!75 = !DILocation(line: 42, column: 12, scope: !58)
!76 = !DILocation(line: 42, column: 5, scope: !58)
!77 = !DILocation(line: 45, column: 5, scope: !58)
!78 = !DILocation(line: 48, column: 5, scope: !58)
!79 = !DILocation(line: 50, column: 9, scope: !80)
!80 = distinct !DILexicalBlock(scope: !58, file: !1, line: 50, column: 9)
!81 = !DILocation(line: 50, column: 13, scope: !80)
!82 = !DILocation(line: 50, column: 9, scope: !58)
!83 = !DILocation(line: 51, column: 39, scope: !84)
!84 = distinct !DILexicalBlock(scope: !80, file: !1, line: 50, column: 22)
!85 = !DILocation(line: 51, column: 24, scope: !84)
!86 = !DILocation(line: 51, column: 9, scope: !84)
!87 = !DILocation(line: 51, column: 14, scope: !84)
!88 = !DILocation(line: 51, column: 22, scope: !84)
!89 = !DILocation(line: 52, column: 13, scope: !90)
!90 = distinct !DILexicalBlock(scope: !84, file: !1, line: 52, column: 13)
!91 = !DILocation(line: 52, column: 18, scope: !90)
!92 = !DILocation(line: 52, column: 26, scope: !90)
!93 = !DILocation(line: 52, column: 13, scope: !84)
!94 = !DILocation(line: 53, column: 13, scope: !95)
!95 = distinct !DILexicalBlock(scope: !90, file: !1, line: 52, column: 35)
!96 = !DILocation(line: 54, column: 21, scope: !95)
!97 = !DILocation(line: 54, column: 13, scope: !95)
!98 = !DILocation(line: 55, column: 13, scope: !95)
!99 = !DILocation(line: 57, column: 5, scope: !84)
!100 = !DILocation(line: 58, column: 12, scope: !58)
!101 = !DILocation(line: 58, column: 5, scope: !58)
!102 = !DILocation(line: 59, column: 1, scope: !58)
!103 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 61, type: !104, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!104 = !DISubroutineType(types: !105)
!105 = !{!8}
!106 = !DILocalVariable(name: "val", scope: !103, file: !1, line: 62, type: !12)
!107 = !DILocation(line: 62, column: 16, scope: !103)
!108 = !DILocation(line: 65, column: 24, scope: !103)
!109 = !DILocation(line: 65, column: 5, scope: !103)
!110 = !DILocalVariable(name: "result", scope: !103, file: !1, line: 68, type: !3)
!111 = !DILocation(line: 68, column: 19, scope: !103)
!112 = !DILocation(line: 68, column: 50, scope: !103)
!113 = !DILocation(line: 68, column: 28, scope: !103)
!114 = !DILocation(line: 71, column: 9, scope: !115)
!115 = distinct !DILexicalBlock(scope: !103, file: !1, line: 71, column: 9)
!116 = !DILocation(line: 71, column: 9, scope: !103)
!117 = !DILocation(line: 72, column: 13, scope: !118)
!118 = distinct !DILexicalBlock(scope: !119, file: !1, line: 72, column: 13)
!119 = distinct !DILexicalBlock(scope: !115, file: !1, line: 71, column: 17)
!120 = !DILocation(line: 72, column: 21, scope: !118)
!121 = !DILocation(line: 72, column: 13, scope: !119)
!122 = !DILocation(line: 73, column: 18, scope: !123)
!123 = distinct !DILexicalBlock(scope: !118, file: !1, line: 72, column: 30)
!124 = !DILocation(line: 73, column: 26, scope: !123)
!125 = !DILocation(line: 73, column: 13, scope: !123)
!126 = !DILocation(line: 74, column: 9, scope: !123)
!127 = !DILocation(line: 75, column: 14, scope: !119)
!128 = !DILocation(line: 75, column: 9, scope: !119)
!129 = !DILocation(line: 76, column: 5, scope: !119)
!130 = !DILocation(line: 78, column: 5, scope: !103)
!131 = distinct !DISubprogram(name: "memset", scope: !132, file: !132, line: 12, type: !133, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !33)
!132 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!133 = !DISubroutineType(types: !134)
!134 = !{!16, !16, !8, !42}
!135 = !DILocalVariable(name: "dst", arg: 1, scope: !131, file: !132, line: 12, type: !16)
!136 = !DILocation(line: 12, column: 20, scope: !131)
!137 = !DILocalVariable(name: "s", arg: 2, scope: !131, file: !132, line: 12, type: !8)
!138 = !DILocation(line: 12, column: 29, scope: !131)
!139 = !DILocalVariable(name: "count", arg: 3, scope: !131, file: !132, line: 12, type: !42)
!140 = !DILocation(line: 12, column: 39, scope: !131)
!141 = !DILocalVariable(name: "a", scope: !131, file: !132, line: 13, type: !142)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!143 = !DILocation(line: 13, column: 9, scope: !131)
!144 = !DILocation(line: 13, column: 13, scope: !131)
!145 = !DILocation(line: 14, column: 3, scope: !131)
!146 = !DILocation(line: 14, column: 15, scope: !131)
!147 = !DILocation(line: 14, column: 18, scope: !131)
!148 = !DILocation(line: 15, column: 12, scope: !131)
!149 = !DILocation(line: 15, column: 7, scope: !131)
!150 = !DILocation(line: 15, column: 10, scope: !131)
!151 = distinct !{!151, !145, !148, !152}
!152 = !{!"llvm.loop.mustprogress"}
!153 = !DILocation(line: 16, column: 10, scope: !131)
!154 = !DILocation(line: 16, column: 3, scope: !131)

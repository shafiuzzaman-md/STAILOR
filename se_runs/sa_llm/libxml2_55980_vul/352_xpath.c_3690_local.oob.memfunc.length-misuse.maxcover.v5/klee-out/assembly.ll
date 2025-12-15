; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/352_xpath.c_3690_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/352_xpath.c_3690_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlXPathObject = type { i32, %struct._xmlNode**, i32, i32 }
%struct._xmlNode = type opaque

@.str = private unnamed_addr constant [17 x i8] c"growing nodeset\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"obj\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [82 x i8] c"(obj.nodeTab != ((void*)0) && 10 * sizeof(xmlNodePtr) > 0) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_55980_vul/352_xpath.c_3690_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !19 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !26, metadata !DIExpression()), !dbg !27
  %3 = load i64, i64* %2, align 8, !dbg !28
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !29
  ret i8* %4, !dbg !30
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlXPathErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !31 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !37, metadata !DIExpression()), !dbg !38
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !39, metadata !DIExpression()), !dbg !40
  ret void, !dbg !41
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_function(%struct._xmlXPathObject* noundef %0) #0 !dbg !42 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._xmlXPathObject*, align 8
  store %struct._xmlXPathObject* %0, %struct._xmlXPathObject** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlXPathObject** %3, metadata !55, metadata !DIExpression()), !dbg !56
  %4 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %3, align 8, !dbg !57
  %5 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %4, i32 0, i32 3, !dbg !59
  %6 = load i32, i32* %5, align 4, !dbg !59
  %7 = icmp eq i32 %6, 0, !dbg !60
  br i1 %7, label %8, label %26, !dbg !61

8:                                                ; preds = %1
  %9 = call i8* @xmlMalloc(i64 noundef 80), !dbg !62
  %10 = bitcast i8* %9 to %struct._xmlNode**, !dbg !64
  %11 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %3, align 8, !dbg !65
  %12 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %11, i32 0, i32 1, !dbg !66
  store %struct._xmlNode** %10, %struct._xmlNode*** %12, align 8, !dbg !67
  %13 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %3, align 8, !dbg !68
  %14 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %13, i32 0, i32 1, !dbg !70
  %15 = load %struct._xmlNode**, %struct._xmlNode*** %14, align 8, !dbg !70
  %16 = icmp eq %struct._xmlNode** %15, null, !dbg !71
  br i1 %16, label %17, label %18, !dbg !72

17:                                               ; preds = %8
  call void @xmlXPathErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)), !dbg !73
  store i32 -1, i32* %2, align 4, !dbg !75
  br label %37, !dbg !75

18:                                               ; preds = %8
  %19 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %3, align 8, !dbg !76
  %20 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %19, i32 0, i32 1, !dbg !77
  %21 = load %struct._xmlNode**, %struct._xmlNode*** %20, align 8, !dbg !77
  %22 = bitcast %struct._xmlNode** %21 to i8*, !dbg !78
  %23 = call i8* @memset(i8* %22, i32 0, i64 80), !dbg !78
  %24 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %3, align 8, !dbg !79
  %25 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %24, i32 0, i32 3, !dbg !80
  store i32 10, i32* %25, align 4, !dbg !81
  br label %36, !dbg !82

26:                                               ; preds = %1
  %27 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %3, align 8, !dbg !83
  %28 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %27, i32 0, i32 2, !dbg !85
  %29 = load i32, i32* %28, align 8, !dbg !85
  %30 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %3, align 8, !dbg !86
  %31 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %30, i32 0, i32 3, !dbg !87
  %32 = load i32, i32* %31, align 4, !dbg !87
  %33 = icmp eq i32 %29, %32, !dbg !88
  br i1 %33, label %34, label %35, !dbg !89

34:                                               ; preds = %26
  store i32 -1, i32* %2, align 4, !dbg !90
  br label %37, !dbg !90

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %18
  store i32 0, i32* %2, align 4, !dbg !92
  br label %37, !dbg !92

37:                                               ; preds = %36, %34, %17
  %38 = load i32, i32* %2, align 4, !dbg !93
  ret i32 %38, !dbg !93
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !94 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlXPathObject, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlXPathObject* %2, metadata !97, metadata !DIExpression()), !dbg !98
  %4 = bitcast %struct._xmlXPathObject* %2 to i8*, !dbg !99
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 24, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !100
  %5 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %2, i32 0, i32 3, !dbg !101
  %6 = load i32, i32* %5, align 4, !dbg !101
  %7 = icmp eq i32 %6, 0, !dbg !102
  %8 = zext i1 %7 to i32, !dbg !102
  %9 = sext i32 %8 to i64, !dbg !103
  call void @klee_assume(i64 noundef %9), !dbg !104
  %10 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %2, i32 0, i32 1, !dbg !105
  store %struct._xmlNode** null, %struct._xmlNode*** %10, align 8, !dbg !106
  call void @llvm.dbg.declare(metadata i32* %3, metadata !107, metadata !DIExpression()), !dbg !108
  %11 = call i32 @target_function(%struct._xmlXPathObject* noundef %2), !dbg !109
  store i32 %11, i32* %3, align 4, !dbg !108
  %12 = load i32, i32* %3, align 4, !dbg !110
  %13 = icmp eq i32 %12, 0, !dbg !112
  br i1 %13, label %14, label %24, !dbg !113

14:                                               ; preds = %0
  %15 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %2, i32 0, i32 1, !dbg !114
  %16 = load %struct._xmlNode**, %struct._xmlNode*** %15, align 8, !dbg !114
  %17 = icmp ne %struct._xmlNode** %16, null, !dbg !114
  br i1 %17, label %18, label %20, !dbg !114

18:                                               ; preds = %14
  br i1 true, label %19, label %20, !dbg !114

19:                                               ; preds = %18
  br label %22, !dbg !114

20:                                               ; preds = %18, %14
  %21 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.4, i64 0, i64 0), i32 noundef 77, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !114
  br label %22, !dbg !114

22:                                               ; preds = %20, %19
  %23 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.4, i64 0, i64 0), i32 noundef 80, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !116
  br label %24, !dbg !117

24:                                               ; preds = %22, %0
  %25 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %2, i32 0, i32 1, !dbg !118
  %26 = load %struct._xmlNode**, %struct._xmlNode*** %25, align 8, !dbg !118
  %27 = icmp ne %struct._xmlNode** %26, null, !dbg !120
  br i1 %27, label %28, label %32, !dbg !121

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %2, i32 0, i32 1, !dbg !122
  %30 = load %struct._xmlNode**, %struct._xmlNode*** %29, align 8, !dbg !122
  %31 = bitcast %struct._xmlNode** %30 to i8*, !dbg !124
  call void @free(i8* noundef %31) #7, !dbg !125
  br label %32, !dbg !126

32:                                               ; preds = %28, %24
  ret i32 0, !dbg !127
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !128 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !132, metadata !DIExpression()), !dbg !133
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !134, metadata !DIExpression()), !dbg !135
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !136, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.declare(metadata i8** %7, metadata !138, metadata !DIExpression()), !dbg !140
  %8 = load i8*, i8** %4, align 8, !dbg !141
  store i8* %8, i8** %7, align 8, !dbg !140
  br label %9, !dbg !142

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !143
  %11 = add i64 %10, -1, !dbg !143
  store i64 %11, i64* %6, align 8, !dbg !143
  %12 = icmp ugt i64 %10, 0, !dbg !144
  br i1 %12, label %13, label %18, !dbg !142

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !145
  %15 = trunc i32 %14 to i8, !dbg !145
  %16 = load i8*, i8** %7, align 8, !dbg !146
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !146
  store i8* %17, i8** %7, align 8, !dbg !146
  store i8 %15, i8* %16, align 1, !dbg !147
  br label %9, !dbg !142, !llvm.loop !148

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !150
  ret i8* %19, !dbg !151
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18, !18}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/352_xpath.c_3690_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "155ebd3cc62c639c46beac5ddc376df5")
!2 = !{!3, !8}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !1, line: 11, baseType: !5)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 10, baseType: !7)
!7 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 10, flags: DIFlagFwdDecl)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!11 = !{i32 7, !"Dwarf Version", i32 5}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{i32 7, !"PIC Level", i32 2}
!15 = !{i32 7, !"PIE Level", i32 2}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"Ubuntu clang version 14.0.6"}
!19 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 28, type: !20, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!20 = !DISubroutineType(types: !21)
!21 = !{!8, !22}
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !23, line: 46, baseType: !24)
!23 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!24 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!25 = !{}
!26 = !DILocalVariable(name: "size", arg: 1, scope: !19, file: !1, line: 28, type: !22)
!27 = !DILocation(line: 28, column: 24, scope: !19)
!28 = !DILocation(line: 29, column: 19, scope: !19)
!29 = !DILocation(line: 29, column: 12, scope: !19)
!30 = !DILocation(line: 29, column: 5, scope: !19)
!31 = distinct !DISubprogram(name: "xmlXPathErrMemory", scope: !1, file: !1, line: 33, type: !32, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!32 = !DISubroutineType(types: !33)
!33 = !{null, !8, !34}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!36 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!37 = !DILocalVariable(name: "ctxt", arg: 1, scope: !31, file: !1, line: 33, type: !8)
!38 = !DILocation(line: 33, column: 30, scope: !31)
!39 = !DILocalVariable(name: "msg", arg: 2, scope: !31, file: !1, line: 33, type: !34)
!40 = !DILocation(line: 33, column: 48, scope: !31)
!41 = !DILocation(line: 35, column: 1, scope: !31)
!42 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 38, type: !43, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!43 = !DISubroutineType(types: !44)
!44 = !{!45, !46}
!45 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObjectPtr", file: !1, line: 14, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObject", file: !1, line: 13, baseType: !49)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathObject", file: !1, line: 20, size: 192, elements: !50)
!50 = !{!51, !52, !53, !54}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !49, file: !1, line: 21, baseType: !45, size: 32)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !49, file: !1, line: 22, baseType: !3, size: 64, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "nodeNr", scope: !49, file: !1, line: 23, baseType: !45, size: 32, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "nodeMax", scope: !49, file: !1, line: 24, baseType: !45, size: 32, offset: 160)
!55 = !DILocalVariable(name: "cur", arg: 1, scope: !42, file: !1, line: 38, type: !46)
!56 = !DILocation(line: 38, column: 39, scope: !42)
!57 = !DILocation(line: 39, column: 9, scope: !58)
!58 = distinct !DILexicalBlock(scope: !42, file: !1, line: 39, column: 9)
!59 = !DILocation(line: 39, column: 14, scope: !58)
!60 = !DILocation(line: 39, column: 22, scope: !58)
!61 = !DILocation(line: 39, column: 9, scope: !42)
!62 = !DILocation(line: 40, column: 39, scope: !63)
!63 = distinct !DILexicalBlock(scope: !58, file: !1, line: 39, column: 28)
!64 = !DILocation(line: 40, column: 24, scope: !63)
!65 = !DILocation(line: 40, column: 9, scope: !63)
!66 = !DILocation(line: 40, column: 14, scope: !63)
!67 = !DILocation(line: 40, column: 22, scope: !63)
!68 = !DILocation(line: 41, column: 13, scope: !69)
!69 = distinct !DILexicalBlock(scope: !63, file: !1, line: 41, column: 13)
!70 = !DILocation(line: 41, column: 18, scope: !69)
!71 = !DILocation(line: 41, column: 26, scope: !69)
!72 = !DILocation(line: 41, column: 13, scope: !63)
!73 = !DILocation(line: 42, column: 13, scope: !74)
!74 = distinct !DILexicalBlock(scope: !69, file: !1, line: 41, column: 35)
!75 = !DILocation(line: 43, column: 13, scope: !74)
!76 = !DILocation(line: 46, column: 16, scope: !63)
!77 = !DILocation(line: 46, column: 21, scope: !63)
!78 = !DILocation(line: 46, column: 9, scope: !63)
!79 = !DILocation(line: 47, column: 9, scope: !63)
!80 = !DILocation(line: 47, column: 14, scope: !63)
!81 = !DILocation(line: 47, column: 22, scope: !63)
!82 = !DILocation(line: 48, column: 5, scope: !63)
!83 = !DILocation(line: 48, column: 16, scope: !84)
!84 = distinct !DILexicalBlock(scope: !58, file: !1, line: 48, column: 16)
!85 = !DILocation(line: 48, column: 21, scope: !84)
!86 = !DILocation(line: 48, column: 31, scope: !84)
!87 = !DILocation(line: 48, column: 36, scope: !84)
!88 = !DILocation(line: 48, column: 28, scope: !84)
!89 = !DILocation(line: 48, column: 16, scope: !58)
!90 = !DILocation(line: 50, column: 9, scope: !91)
!91 = distinct !DILexicalBlock(scope: !84, file: !1, line: 48, column: 45)
!92 = !DILocation(line: 52, column: 5, scope: !42)
!93 = !DILocation(line: 53, column: 1, scope: !42)
!94 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 55, type: !95, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!95 = !DISubroutineType(types: !96)
!96 = !{!45}
!97 = !DILocalVariable(name: "obj", scope: !94, file: !1, line: 57, type: !48)
!98 = !DILocation(line: 57, column: 20, scope: !94)
!99 = !DILocation(line: 60, column: 24, scope: !94)
!100 = !DILocation(line: 60, column: 5, scope: !94)
!101 = !DILocation(line: 63, column: 21, scope: !94)
!102 = !DILocation(line: 63, column: 29, scope: !94)
!103 = !DILocation(line: 63, column: 17, scope: !94)
!104 = !DILocation(line: 63, column: 5, scope: !94)
!105 = !DILocation(line: 66, column: 9, scope: !94)
!106 = !DILocation(line: 66, column: 17, scope: !94)
!107 = !DILocalVariable(name: "result", scope: !94, file: !1, line: 69, type: !45)
!108 = !DILocation(line: 69, column: 9, scope: !94)
!109 = !DILocation(line: 69, column: 18, scope: !94)
!110 = !DILocation(line: 72, column: 9, scope: !111)
!111 = distinct !DILexicalBlock(scope: !94, file: !1, line: 72, column: 9)
!112 = !DILocation(line: 72, column: 16, scope: !111)
!113 = !DILocation(line: 72, column: 9, scope: !94)
!114 = !DILocation(line: 77, column: 9, scope: !115)
!115 = distinct !DILexicalBlock(scope: !111, file: !1, line: 72, column: 22)
!116 = !DILocation(line: 80, column: 9, scope: !115)
!117 = !DILocation(line: 81, column: 5, scope: !115)
!118 = !DILocation(line: 84, column: 13, scope: !119)
!119 = distinct !DILexicalBlock(scope: !94, file: !1, line: 84, column: 9)
!120 = !DILocation(line: 84, column: 21, scope: !119)
!121 = !DILocation(line: 84, column: 9, scope: !94)
!122 = !DILocation(line: 85, column: 18, scope: !123)
!123 = distinct !DILexicalBlock(scope: !119, file: !1, line: 84, column: 30)
!124 = !DILocation(line: 85, column: 14, scope: !123)
!125 = !DILocation(line: 85, column: 9, scope: !123)
!126 = !DILocation(line: 86, column: 5, scope: !123)
!127 = !DILocation(line: 88, column: 5, scope: !94)
!128 = distinct !DISubprogram(name: "memset", scope: !129, file: !129, line: 12, type: !130, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !25)
!129 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!130 = !DISubroutineType(types: !131)
!131 = !{!8, !8, !45, !22}
!132 = !DILocalVariable(name: "dst", arg: 1, scope: !128, file: !129, line: 12, type: !8)
!133 = !DILocation(line: 12, column: 20, scope: !128)
!134 = !DILocalVariable(name: "s", arg: 2, scope: !128, file: !129, line: 12, type: !45)
!135 = !DILocation(line: 12, column: 29, scope: !128)
!136 = !DILocalVariable(name: "count", arg: 3, scope: !128, file: !129, line: 12, type: !22)
!137 = !DILocation(line: 12, column: 39, scope: !128)
!138 = !DILocalVariable(name: "a", scope: !128, file: !129, line: 13, type: !139)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!140 = !DILocation(line: 13, column: 9, scope: !128)
!141 = !DILocation(line: 13, column: 13, scope: !128)
!142 = !DILocation(line: 14, column: 3, scope: !128)
!143 = !DILocation(line: 14, column: 15, scope: !128)
!144 = !DILocation(line: 14, column: 18, scope: !128)
!145 = !DILocation(line: 15, column: 12, scope: !128)
!146 = !DILocation(line: 15, column: 7, scope: !128)
!147 = !DILocation(line: 15, column: 10, scope: !128)
!148 = distinct !{!148, !142, !145, !149}
!149 = !{!"llvm.loop.mustprogress"}
!150 = !DILocation(line: 16, column: 10, scope: !128)
!151 = !DILocation(line: 16, column: 3, scope: !128)

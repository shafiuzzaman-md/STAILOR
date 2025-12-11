; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/362_xpath.c_2986_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/362_xpath.c_2986_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlNodeSet = type { %struct._xmlNode**, i32, i32 }
%struct._xmlNode = type opaque

@.str = private unnamed_addr constant [18 x i8] c"creating nodeset\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_62911_vul/362_xpath.c_2986_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlXPathCmpNodesExt = private unnamed_addr constant [58 x i8] c"xmlNodeSetPtr xmlXPathCmpNodesExt(xmlNodePtr, xmlNodePtr)\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"node1\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"node2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !31 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !35, metadata !DIExpression()), !dbg !36
  %3 = load i64, i64* %2, align 8, !dbg !37
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !38
  ret i8* %4, !dbg !39
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlXPathErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !40 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !46, metadata !DIExpression()), !dbg !47
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !48, metadata !DIExpression()), !dbg !49
  ret void, !dbg !50
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlNodeSet* @xmlXPathCmpNodesExt(%struct._xmlNode* noundef %0, %struct._xmlNode* noundef %1) #0 !dbg !51 {
  %3 = alloca %struct._xmlNodeSet*, align 8
  %4 = alloca %struct._xmlNode*, align 8
  %5 = alloca %struct._xmlNode*, align 8
  %6 = alloca %struct._xmlNodeSet*, align 8
  store %struct._xmlNode* %0, %struct._xmlNode** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %4, metadata !54, metadata !DIExpression()), !dbg !55
  store %struct._xmlNode* %1, %struct._xmlNode** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %5, metadata !56, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata %struct._xmlNodeSet** %6, metadata !58, metadata !DIExpression()), !dbg !59
  %7 = call i8* @xmlMalloc(i64 noundef 16), !dbg !60
  %8 = bitcast i8* %7 to %struct._xmlNodeSet*, !dbg !61
  store %struct._xmlNodeSet* %8, %struct._xmlNodeSet** %6, align 8, !dbg !62
  %9 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %6, align 8, !dbg !63
  %10 = icmp eq %struct._xmlNodeSet* %9, null, !dbg !65
  br i1 %10, label %11, label %12, !dbg !66

11:                                               ; preds = %2
  call void @xmlXPathErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0)), !dbg !67
  store %struct._xmlNodeSet* null, %struct._xmlNodeSet** %3, align 8, !dbg !69
  br label %18, !dbg !69

12:                                               ; preds = %2
  %13 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %6, align 8, !dbg !70
  %14 = bitcast %struct._xmlNodeSet* %13 to i8*, !dbg !71
  %15 = call i8* @memset(i8* %14, i32 0, i64 16), !dbg !71
  %16 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.2, i64 0, i64 0), i32 noundef 51, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.xmlXPathCmpNodesExt, i64 0, i64 0)), !dbg !72
  %17 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %6, align 8, !dbg !73
  store %struct._xmlNodeSet* %17, %struct._xmlNodeSet** %3, align 8, !dbg !74
  br label %18, !dbg !74

18:                                               ; preds = %12, %11
  %19 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %3, align 8, !dbg !75
  ret %struct._xmlNodeSet* %19, !dbg !75
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !76 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlNode*, align 8
  %3 = alloca %struct._xmlNode*, align 8
  %4 = alloca %struct._xmlNodeSet*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %2, metadata !79, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %3, metadata !81, metadata !DIExpression()), !dbg !82
  %5 = bitcast %struct._xmlNode** %2 to i8*, !dbg !83
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 8, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)), !dbg !84
  %6 = bitcast %struct._xmlNode** %3 to i8*, !dbg !85
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 8, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)), !dbg !86
  %7 = load %struct._xmlNode*, %struct._xmlNode** %2, align 8, !dbg !87
  %8 = icmp eq %struct._xmlNode* %7, null, !dbg !88
  br i1 %8, label %18, label %9, !dbg !89

9:                                                ; preds = %0
  %10 = load %struct._xmlNode*, %struct._xmlNode** %2, align 8, !dbg !90
  %11 = icmp ne %struct._xmlNode* %10, null, !dbg !91
  br i1 %11, label %12, label %16, !dbg !92

12:                                               ; preds = %9
  %13 = load %struct._xmlNode*, %struct._xmlNode** %2, align 8, !dbg !93
  %14 = ptrtoint %struct._xmlNode* %13 to i64, !dbg !94
  %15 = icmp ult i64 %14, 4096, !dbg !95
  br label %16

16:                                               ; preds = %12, %9
  %17 = phi i1 [ false, %9 ], [ %15, %12 ], !dbg !96
  br label %18, !dbg !89

18:                                               ; preds = %16, %0
  %19 = phi i1 [ true, %0 ], [ %17, %16 ]
  %20 = zext i1 %19 to i32, !dbg !89
  %21 = sext i32 %20 to i64, !dbg !87
  call void @klee_assume(i64 noundef %21), !dbg !97
  %22 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !98
  %23 = icmp eq %struct._xmlNode* %22, null, !dbg !99
  br i1 %23, label %33, label %24, !dbg !100

24:                                               ; preds = %18
  %25 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !101
  %26 = icmp ne %struct._xmlNode* %25, null, !dbg !102
  br i1 %26, label %27, label %31, !dbg !103

27:                                               ; preds = %24
  %28 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !104
  %29 = ptrtoint %struct._xmlNode* %28 to i64, !dbg !105
  %30 = icmp ult i64 %29, 4096, !dbg !106
  br label %31

31:                                               ; preds = %27, %24
  %32 = phi i1 [ false, %24 ], [ %30, %27 ], !dbg !96
  br label %33, !dbg !100

33:                                               ; preds = %31, %18
  %34 = phi i1 [ true, %18 ], [ %32, %31 ]
  %35 = zext i1 %34 to i32, !dbg !100
  %36 = sext i32 %35 to i64, !dbg !98
  call void @klee_assume(i64 noundef %36), !dbg !107
  call void @llvm.dbg.declare(metadata %struct._xmlNodeSet** %4, metadata !108, metadata !DIExpression()), !dbg !109
  %37 = load %struct._xmlNode*, %struct._xmlNode** %2, align 8, !dbg !110
  %38 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !111
  %39 = call %struct._xmlNodeSet* @xmlXPathCmpNodesExt(%struct._xmlNode* noundef %37, %struct._xmlNode* noundef %38), !dbg !112
  store %struct._xmlNodeSet* %39, %struct._xmlNodeSet** %4, align 8, !dbg !109
  %40 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %4, align 8, !dbg !113
  %41 = icmp ne %struct._xmlNodeSet* %40, null, !dbg !115
  br i1 %41, label %42, label %45, !dbg !116

42:                                               ; preds = %33
  %43 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %4, align 8, !dbg !117
  %44 = bitcast %struct._xmlNodeSet* %43 to i8*, !dbg !117
  call void @free(i8* noundef %44) #7, !dbg !119
  br label %45, !dbg !120

45:                                               ; preds = %42, %33
  ret i32 0, !dbg !121
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !122 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !126, metadata !DIExpression()), !dbg !127
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !128, metadata !DIExpression()), !dbg !129
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !130, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.declare(metadata i8** %7, metadata !132, metadata !DIExpression()), !dbg !134
  %8 = load i8*, i8** %4, align 8, !dbg !135
  store i8* %8, i8** %7, align 8, !dbg !134
  br label %9, !dbg !136

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !137
  %11 = add i64 %10, -1, !dbg !137
  store i64 %11, i64* %6, align 8, !dbg !137
  %12 = icmp ugt i64 %10, 0, !dbg !138
  br i1 %12, label %13, label %18, !dbg !136

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !139
  %15 = trunc i32 %14 to i8, !dbg !139
  %16 = load i8*, i8** %7, align 8, !dbg !140
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !140
  store i8* %17, i8** %7, align 8, !dbg !140
  store i8 %15, i8* %16, align 1, !dbg !141
  br label %9, !dbg !136, !llvm.loop !142

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !144
  ret i8* %19, !dbg !145
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30, !30}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/362_xpath.c_2986_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "e4d5781a8025f64bc54e2561aedb939e")
!2 = !{!3, !17, !18}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodeSetPtr", file: !1, line: 13, baseType: !4)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodeSet", file: !1, line: 12, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNodeSet", file: !1, line: 16, size: 128, elements: !7)
!7 = !{!8, !14, !16}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !6, file: !1, line: 17, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !1, line: 11, baseType: !11)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 10, baseType: !13)
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 10, flags: DIFlagFwdDecl)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "nodeNr", scope: !6, file: !1, line: 18, baseType: !15, size: 32, offset: 64)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "nodeMax", scope: !6, file: !1, line: 19, baseType: !15, size: 32, offset: 96)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !19, line: 46, baseType: !20)
!19 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!20 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
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
!31 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 25, type: !32, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!32 = !DISubroutineType(types: !33)
!33 = !{!17, !18}
!34 = !{}
!35 = !DILocalVariable(name: "size", arg: 1, scope: !31, file: !1, line: 25, type: !18)
!36 = !DILocation(line: 25, column: 24, scope: !31)
!37 = !DILocation(line: 26, column: 19, scope: !31)
!38 = !DILocation(line: 26, column: 12, scope: !31)
!39 = !DILocation(line: 26, column: 5, scope: !31)
!40 = distinct !DISubprogram(name: "xmlXPathErrMemory", scope: !1, file: !1, line: 29, type: !41, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !17, !43}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!46 = !DILocalVariable(name: "ctxt", arg: 1, scope: !40, file: !1, line: 29, type: !17)
!47 = !DILocation(line: 29, column: 30, scope: !40)
!48 = !DILocalVariable(name: "msg", arg: 2, scope: !40, file: !1, line: 29, type: !43)
!49 = !DILocation(line: 29, column: 48, scope: !40)
!50 = !DILocation(line: 31, column: 1, scope: !40)
!51 = distinct !DISubprogram(name: "xmlXPathCmpNodesExt", scope: !1, file: !1, line: 34, type: !52, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!52 = !DISubroutineType(types: !53)
!53 = !{!3, !10, !10}
!54 = !DILocalVariable(name: "node1", arg: 1, scope: !51, file: !1, line: 34, type: !10)
!55 = !DILocation(line: 34, column: 46, scope: !51)
!56 = !DILocalVariable(name: "node2", arg: 2, scope: !51, file: !1, line: 34, type: !10)
!57 = !DILocation(line: 34, column: 64, scope: !51)
!58 = !DILocalVariable(name: "ret", scope: !51, file: !1, line: 35, type: !3)
!59 = !DILocation(line: 35, column: 19, scope: !51)
!60 = !DILocation(line: 37, column: 27, scope: !51)
!61 = !DILocation(line: 37, column: 11, scope: !51)
!62 = !DILocation(line: 37, column: 9, scope: !51)
!63 = !DILocation(line: 38, column: 9, scope: !64)
!64 = distinct !DILexicalBlock(scope: !51, file: !1, line: 38, column: 9)
!65 = !DILocation(line: 38, column: 13, scope: !64)
!66 = !DILocation(line: 38, column: 9, scope: !51)
!67 = !DILocation(line: 39, column: 9, scope: !68)
!68 = distinct !DILexicalBlock(scope: !64, file: !1, line: 38, column: 22)
!69 = !DILocation(line: 40, column: 9, scope: !68)
!70 = !DILocation(line: 44, column: 12, scope: !51)
!71 = !DILocation(line: 44, column: 5, scope: !51)
!72 = !DILocation(line: 51, column: 5, scope: !51)
!73 = !DILocation(line: 53, column: 12, scope: !51)
!74 = !DILocation(line: 53, column: 5, scope: !51)
!75 = !DILocation(line: 54, column: 1, scope: !51)
!76 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 56, type: !77, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!77 = !DISubroutineType(types: !78)
!78 = !{!15}
!79 = !DILocalVariable(name: "node1", scope: !76, file: !1, line: 57, type: !10)
!80 = !DILocation(line: 57, column: 16, scope: !76)
!81 = !DILocalVariable(name: "node2", scope: !76, file: !1, line: 57, type: !10)
!82 = !DILocation(line: 57, column: 23, scope: !76)
!83 = !DILocation(line: 60, column: 24, scope: !76)
!84 = !DILocation(line: 60, column: 5, scope: !76)
!85 = !DILocation(line: 61, column: 24, scope: !76)
!86 = !DILocation(line: 61, column: 5, scope: !76)
!87 = !DILocation(line: 64, column: 17, scope: !76)
!88 = !DILocation(line: 64, column: 23, scope: !76)
!89 = !DILocation(line: 64, column: 31, scope: !76)
!90 = !DILocation(line: 64, column: 35, scope: !76)
!91 = !DILocation(line: 64, column: 41, scope: !76)
!92 = !DILocation(line: 64, column: 49, scope: !76)
!93 = !DILocation(line: 64, column: 60, scope: !76)
!94 = !DILocation(line: 64, column: 52, scope: !76)
!95 = !DILocation(line: 64, column: 66, scope: !76)
!96 = !DILocation(line: 0, scope: !76)
!97 = !DILocation(line: 64, column: 5, scope: !76)
!98 = !DILocation(line: 65, column: 17, scope: !76)
!99 = !DILocation(line: 65, column: 23, scope: !76)
!100 = !DILocation(line: 65, column: 31, scope: !76)
!101 = !DILocation(line: 65, column: 35, scope: !76)
!102 = !DILocation(line: 65, column: 41, scope: !76)
!103 = !DILocation(line: 65, column: 49, scope: !76)
!104 = !DILocation(line: 65, column: 60, scope: !76)
!105 = !DILocation(line: 65, column: 52, scope: !76)
!106 = !DILocation(line: 65, column: 66, scope: !76)
!107 = !DILocation(line: 65, column: 5, scope: !76)
!108 = !DILocalVariable(name: "result", scope: !76, file: !1, line: 68, type: !3)
!109 = !DILocation(line: 68, column: 19, scope: !76)
!110 = !DILocation(line: 68, column: 48, scope: !76)
!111 = !DILocation(line: 68, column: 55, scope: !76)
!112 = !DILocation(line: 68, column: 28, scope: !76)
!113 = !DILocation(line: 71, column: 9, scope: !114)
!114 = distinct !DILexicalBlock(scope: !76, file: !1, line: 71, column: 9)
!115 = !DILocation(line: 71, column: 16, scope: !114)
!116 = !DILocation(line: 71, column: 9, scope: !76)
!117 = !DILocation(line: 72, column: 14, scope: !118)
!118 = distinct !DILexicalBlock(scope: !114, file: !1, line: 71, column: 25)
!119 = !DILocation(line: 72, column: 9, scope: !118)
!120 = !DILocation(line: 73, column: 5, scope: !118)
!121 = !DILocation(line: 75, column: 5, scope: !76)
!122 = distinct !DISubprogram(name: "memset", scope: !123, file: !123, line: 12, type: !124, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !21, retainedNodes: !34)
!123 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!124 = !DISubroutineType(types: !125)
!125 = !{!17, !17, !15, !18}
!126 = !DILocalVariable(name: "dst", arg: 1, scope: !122, file: !123, line: 12, type: !17)
!127 = !DILocation(line: 12, column: 20, scope: !122)
!128 = !DILocalVariable(name: "s", arg: 2, scope: !122, file: !123, line: 12, type: !15)
!129 = !DILocation(line: 12, column: 29, scope: !122)
!130 = !DILocalVariable(name: "count", arg: 3, scope: !122, file: !123, line: 12, type: !18)
!131 = !DILocation(line: 12, column: 39, scope: !122)
!132 = !DILocalVariable(name: "a", scope: !122, file: !123, line: 13, type: !133)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!134 = !DILocation(line: 13, column: 9, scope: !122)
!135 = !DILocation(line: 13, column: 13, scope: !122)
!136 = !DILocation(line: 14, column: 3, scope: !122)
!137 = !DILocation(line: 14, column: 15, scope: !122)
!138 = !DILocation(line: 14, column: 18, scope: !122)
!139 = !DILocation(line: 15, column: 12, scope: !122)
!140 = !DILocation(line: 15, column: 7, scope: !122)
!141 = !DILocation(line: 15, column: 10, scope: !122)
!142 = distinct !{!142, !136, !139, !143}
!143 = !{!"llvm.loop.mustprogress"}
!144 = !DILocation(line: 16, column: 10, scope: !122)
!145 = !DILocation(line: 16, column: 3, scope: !122)

; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/170_tree.c_7880_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/170_tree.c_7880_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDOMWrapCtxt = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"allocating DOM-wrapper context\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"symbolic_choice\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [78 x i8] c"(malloc_usable_size(result) >= sizeof(xmlDOMWrapCtxt)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/170_tree.c_7880_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlTreeErrMemory(i8* noundef %0) #0 !dbg !20 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !27, metadata !DIExpression()), !dbg !28
  %3 = load i8*, i8** %2, align 8, !dbg !29
  ret void, !dbg !30
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlDOMWrapCtxt* @xmlDOMWrapNewCtxt() #0 !dbg !31 {
  %1 = alloca %struct._xmlDOMWrapCtxt*, align 8
  %2 = alloca %struct._xmlDOMWrapCtxt*, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlDOMWrapCtxt** %2, metadata !34, metadata !DIExpression()), !dbg !35
  %3 = call noalias i8* @malloc(i64 noundef 4) #7, !dbg !36
  %4 = bitcast i8* %3 to %struct._xmlDOMWrapCtxt*, !dbg !37
  store %struct._xmlDOMWrapCtxt* %4, %struct._xmlDOMWrapCtxt** %2, align 8, !dbg !38
  %5 = load %struct._xmlDOMWrapCtxt*, %struct._xmlDOMWrapCtxt** %2, align 8, !dbg !39
  %6 = icmp eq %struct._xmlDOMWrapCtxt* %5, null, !dbg !41
  br i1 %6, label %7, label %8, !dbg !42

7:                                                ; preds = %0
  call void @xmlTreeErrMemory(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0)), !dbg !43
  store %struct._xmlDOMWrapCtxt* null, %struct._xmlDOMWrapCtxt** %1, align 8, !dbg !45
  br label %13, !dbg !45

8:                                                ; preds = %0
  %9 = load %struct._xmlDOMWrapCtxt*, %struct._xmlDOMWrapCtxt** %2, align 8, !dbg !46
  %10 = bitcast %struct._xmlDOMWrapCtxt* %9 to i8*, !dbg !47
  %11 = call i8* @memset(i8* %10, i32 0, i64 4), !dbg !47
  %12 = load %struct._xmlDOMWrapCtxt*, %struct._xmlDOMWrapCtxt** %2, align 8, !dbg !48
  store %struct._xmlDOMWrapCtxt* %12, %struct._xmlDOMWrapCtxt** %1, align 8, !dbg !49
  br label %13, !dbg !49

13:                                               ; preds = %8, %7
  %14 = load %struct._xmlDOMWrapCtxt*, %struct._xmlDOMWrapCtxt** %1, align 8, !dbg !50
  ret %struct._xmlDOMWrapCtxt* %14, !dbg !50
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlStringGetNodeList() #0 !dbg !51 {
  %1 = call %struct._xmlDOMWrapCtxt* @xmlDOMWrapNewCtxt(), !dbg !54
  %2 = bitcast %struct._xmlDOMWrapCtxt* %1 to i8*, !dbg !54
  ret i8* %2, !dbg !55
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !56 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct._xmlDOMWrapCtxt*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !59, metadata !DIExpression()), !dbg !60
  %4 = bitcast i32* %2 to i8*, !dbg !61
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)), !dbg !62
  %5 = load i32, i32* %2, align 4, !dbg !63
  %6 = icmp sgt i32 %5, 0, !dbg !64
  %7 = zext i1 %6 to i32, !dbg !64
  %8 = sext i32 %7 to i64, !dbg !63
  call void @klee_assume(i64 noundef %8), !dbg !65
  call void @llvm.dbg.declare(metadata %struct._xmlDOMWrapCtxt** %3, metadata !66, metadata !DIExpression()), !dbg !67
  %9 = call i8* @xmlStringGetNodeList(), !dbg !68
  %10 = bitcast i8* %9 to %struct._xmlDOMWrapCtxt*, !dbg !69
  store %struct._xmlDOMWrapCtxt* %10, %struct._xmlDOMWrapCtxt** %3, align 8, !dbg !67
  %11 = load %struct._xmlDOMWrapCtxt*, %struct._xmlDOMWrapCtxt** %3, align 8, !dbg !70
  %12 = icmp ne %struct._xmlDOMWrapCtxt* %11, null, !dbg !72
  br i1 %12, label %13, label %26, !dbg !73

13:                                               ; preds = %0
  %14 = load %struct._xmlDOMWrapCtxt*, %struct._xmlDOMWrapCtxt** %3, align 8, !dbg !74
  %15 = call i32 (%struct._xmlDOMWrapCtxt*, ...) bitcast (i32 (...)* @malloc_usable_size to i32 (%struct._xmlDOMWrapCtxt*, ...)*)(%struct._xmlDOMWrapCtxt* noundef %14), !dbg !74
  %16 = sext i32 %15 to i64, !dbg !74
  %17 = icmp uge i64 %16, 4, !dbg !74
  br i1 %17, label %18, label %20, !dbg !74

18:                                               ; preds = %13
  br i1 true, label %19, label %20, !dbg !74

19:                                               ; preds = %18
  br label %22, !dbg !74

20:                                               ; preds = %18, %13
  %21 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.4, i64 0, i64 0), i32 noundef 76, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !74
  br label %22, !dbg !74

22:                                               ; preds = %20, %19
  %23 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.4, i64 0, i64 0), i32 noundef 79, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !76
  %24 = load %struct._xmlDOMWrapCtxt*, %struct._xmlDOMWrapCtxt** %3, align 8, !dbg !77
  %25 = bitcast %struct._xmlDOMWrapCtxt* %24 to i8*, !dbg !77
  call void @free(i8* noundef %25) #7, !dbg !78
  br label %26, !dbg !79

26:                                               ; preds = %22, %0
  ret i32 0, !dbg !80
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

declare i32 @malloc_usable_size(...) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !81 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !88, metadata !DIExpression()), !dbg !89
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !90, metadata !DIExpression()), !dbg !91
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !92, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.declare(metadata i8** %7, metadata !94, metadata !DIExpression()), !dbg !96
  %8 = load i8*, i8** %4, align 8, !dbg !97
  store i8* %8, i8** %7, align 8, !dbg !96
  br label %9, !dbg !98

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !99
  %11 = add i64 %10, -1, !dbg !99
  store i64 %11, i64* %6, align 8, !dbg !99
  %12 = icmp ugt i64 %10, 0, !dbg !100
  br i1 %12, label %13, label %18, !dbg !98

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !101
  %15 = trunc i32 %14 to i8, !dbg !101
  %16 = load i8*, i8** %7, align 8, !dbg !102
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !102
  store i8* %17, i8** %7, align 8, !dbg !102
  store i8 %15, i8* %16, align 1, !dbg !103
  br label %9, !dbg !98, !llvm.loop !104

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !106
  ret i8* %19, !dbg !107
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19, !19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/170_tree.c_7880_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "45ea410625511a6a0dd489016d90aead")
!2 = !{!3, !9}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDOMWrapCtxt", file: !1, line: 10, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDOMWrapCtxt", file: !1, line: 11, size: 32, elements: !6)
!6 = !{!7}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !5, file: !1, line: 13, baseType: !8, size: 32)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !11, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!11 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!12 = !{i32 7, !"Dwarf Version", i32 5}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{i32 7, !"PIC Level", i32 2}
!16 = !{i32 7, !"PIE Level", i32 2}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"Ubuntu clang version 14.0.6"}
!20 = distinct !DISubprogram(name: "xmlTreeErrMemory", scope: !1, file: !1, line: 19, type: !21, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!21 = !DISubroutineType(types: !22)
!22 = !{null, !23}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!25 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!26 = !{}
!27 = !DILocalVariable(name: "msg", arg: 1, scope: !20, file: !1, line: 19, type: !23)
!28 = !DILocation(line: 19, column: 35, scope: !20)
!29 = !DILocation(line: 21, column: 11, scope: !20)
!30 = !DILocation(line: 22, column: 1, scope: !20)
!31 = distinct !DISubprogram(name: "xmlDOMWrapNewCtxt", scope: !1, file: !1, line: 25, type: !32, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!32 = !DISubroutineType(types: !33)
!33 = !{!3}
!34 = !DILocalVariable(name: "ret", scope: !31, file: !1, line: 26, type: !3)
!35 = !DILocation(line: 26, column: 21, scope: !31)
!36 = !DILocation(line: 28, column: 28, scope: !31)
!37 = !DILocation(line: 28, column: 11, scope: !31)
!38 = !DILocation(line: 28, column: 9, scope: !31)
!39 = !DILocation(line: 29, column: 9, scope: !40)
!40 = distinct !DILexicalBlock(scope: !31, file: !1, line: 29, column: 9)
!41 = !DILocation(line: 29, column: 13, scope: !40)
!42 = !DILocation(line: 29, column: 9, scope: !31)
!43 = !DILocation(line: 30, column: 9, scope: !44)
!44 = distinct !DILexicalBlock(scope: !40, file: !1, line: 29, column: 22)
!45 = !DILocation(line: 31, column: 9, scope: !44)
!46 = !DILocation(line: 35, column: 12, scope: !31)
!47 = !DILocation(line: 35, column: 5, scope: !31)
!48 = !DILocation(line: 37, column: 13, scope: !31)
!49 = !DILocation(line: 37, column: 5, scope: !31)
!50 = !DILocation(line: 38, column: 1, scope: !31)
!51 = distinct !DISubprogram(name: "xmlStringGetNodeList", scope: !1, file: !1, line: 41, type: !52, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!52 = !DISubroutineType(types: !53)
!53 = !{!9}
!54 = !DILocation(line: 43, column: 12, scope: !51)
!55 = !DILocation(line: 43, column: 5, scope: !51)
!56 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 46, type: !57, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!57 = !DISubroutineType(types: !58)
!58 = !{!8}
!59 = !DILocalVariable(name: "symbolic_choice", scope: !56, file: !1, line: 48, type: !8)
!60 = !DILocation(line: 48, column: 9, scope: !56)
!61 = !DILocation(line: 49, column: 24, scope: !56)
!62 = !DILocation(line: 49, column: 5, scope: !56)
!63 = !DILocation(line: 52, column: 17, scope: !56)
!64 = !DILocation(line: 52, column: 33, scope: !56)
!65 = !DILocation(line: 52, column: 5, scope: !56)
!66 = !DILocalVariable(name: "result", scope: !56, file: !1, line: 55, type: !3)
!67 = !DILocation(line: 55, column: 21, scope: !56)
!68 = !DILocation(line: 55, column: 47, scope: !56)
!69 = !DILocation(line: 55, column: 30, scope: !56)
!70 = !DILocation(line: 73, column: 9, scope: !71)
!71 = distinct !DILexicalBlock(scope: !56, file: !1, line: 73, column: 9)
!72 = !DILocation(line: 73, column: 16, scope: !71)
!73 = !DILocation(line: 73, column: 9, scope: !56)
!74 = !DILocation(line: 76, column: 9, scope: !75)
!75 = distinct !DILexicalBlock(scope: !71, file: !1, line: 73, column: 25)
!76 = !DILocation(line: 79, column: 9, scope: !75)
!77 = !DILocation(line: 82, column: 14, scope: !75)
!78 = !DILocation(line: 82, column: 9, scope: !75)
!79 = !DILocation(line: 83, column: 5, scope: !75)
!80 = !DILocation(line: 85, column: 5, scope: !56)
!81 = distinct !DISubprogram(name: "memset", scope: !82, file: !82, line: 12, type: !83, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !26)
!82 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!83 = !DISubroutineType(types: !84)
!84 = !{!9, !9, !8, !85}
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !86, line: 46, baseType: !87)
!86 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!87 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!88 = !DILocalVariable(name: "dst", arg: 1, scope: !81, file: !82, line: 12, type: !9)
!89 = !DILocation(line: 12, column: 20, scope: !81)
!90 = !DILocalVariable(name: "s", arg: 2, scope: !81, file: !82, line: 12, type: !8)
!91 = !DILocation(line: 12, column: 29, scope: !81)
!92 = !DILocalVariable(name: "count", arg: 3, scope: !81, file: !82, line: 12, type: !85)
!93 = !DILocation(line: 12, column: 39, scope: !81)
!94 = !DILocalVariable(name: "a", scope: !81, file: !82, line: 13, type: !95)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!96 = !DILocation(line: 13, column: 9, scope: !81)
!97 = !DILocation(line: 13, column: 13, scope: !81)
!98 = !DILocation(line: 14, column: 3, scope: !81)
!99 = !DILocation(line: 14, column: 15, scope: !81)
!100 = !DILocation(line: 14, column: 18, scope: !81)
!101 = !DILocation(line: 15, column: 12, scope: !81)
!102 = !DILocation(line: 15, column: 7, scope: !81)
!103 = !DILocation(line: 15, column: 10, scope: !81)
!104 = distinct !{!104, !98, !101, !105}
!105 = !{!"llvm.loop.mustprogress"}
!106 = !DILocation(line: 16, column: 10, scope: !81)
!107 = !DILocation(line: 16, column: 3, scope: !81)

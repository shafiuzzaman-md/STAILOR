; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/348_xpath.c_4708_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/348_xpath.c_4708_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlXPathObject = type { i32, i8* }

@.str = private unnamed_addr constant [22 x i8] c"creating user object\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_62911_vul/348_xpath.c_4708_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !23 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !30, metadata !DIExpression()), !dbg !31
  %3 = load i64, i64* %2, align 8, !dbg !32
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !33
  ret i8* %4, !dbg !34
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlXPathErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !35 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !41, metadata !DIExpression()), !dbg !42
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !43, metadata !DIExpression()), !dbg !44
  ret void, !dbg !45
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlXPathObject* @xmlXPathWrapCString(i8* noundef %0) #0 !dbg !46 {
  %2 = alloca %struct._xmlXPathObject*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._xmlXPathObject*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !49, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.declare(metadata %struct._xmlXPathObject** %4, metadata !51, metadata !DIExpression()), !dbg !52
  %5 = call i8* @xmlMalloc(i64 noundef 16), !dbg !53
  %6 = bitcast i8* %5 to %struct._xmlXPathObject*, !dbg !54
  store %struct._xmlXPathObject* %6, %struct._xmlXPathObject** %4, align 8, !dbg !55
  %7 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !56
  %8 = icmp eq %struct._xmlXPathObject* %7, null, !dbg !58
  br i1 %8, label %9, label %10, !dbg !59

9:                                                ; preds = %1
  call void @xmlXPathErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0)), !dbg !60
  store %struct._xmlXPathObject* null, %struct._xmlXPathObject** %2, align 8, !dbg !62
  br label %20, !dbg !62

10:                                               ; preds = %1
  %11 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !63
  %12 = bitcast %struct._xmlXPathObject* %11 to i8*, !dbg !64
  %13 = call i8* @memset(i8* %12, i32 0, i64 16), !dbg !64
  %14 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !65
  %15 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %14, i32 0, i32 0, !dbg !66
  store i32 100, i32* %15, align 8, !dbg !67
  %16 = load i8*, i8** %3, align 8, !dbg !68
  %17 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !69
  %18 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %17, i32 0, i32 1, !dbg !70
  store i8* %16, i8** %18, align 8, !dbg !71
  %19 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !72
  store %struct._xmlXPathObject* %19, %struct._xmlXPathObject** %2, align 8, !dbg !73
  br label %20, !dbg !73

20:                                               ; preds = %10, %9
  %21 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %2, align 8, !dbg !74
  ret %struct._xmlXPathObject* %21, !dbg !74
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlXPathCmpNodesExt(i8* noundef %0, i8* noundef %1) #0 !dbg !75 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !78, metadata !DIExpression()), !dbg !79
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !80, metadata !DIExpression()), !dbg !81
  ret i8* null, !dbg !82
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !83 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca %struct._xmlXPathObject*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !86, metadata !DIExpression()), !dbg !90
  %4 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !91
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 256, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !92
  call void @llvm.dbg.declare(metadata %struct._xmlXPathObject** %3, metadata !93, metadata !DIExpression()), !dbg !94
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !95
  %6 = call %struct._xmlXPathObject* @xmlXPathWrapCString(i8* noundef %5), !dbg !96
  store %struct._xmlXPathObject* %6, %struct._xmlXPathObject** %3, align 8, !dbg !94
  %7 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.3, i64 0, i64 0), i32 noundef 66, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !97
  %8 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %3, align 8, !dbg !98
  %9 = icmp ne %struct._xmlXPathObject* %8, null, !dbg !98
  br i1 %9, label %10, label %13, !dbg !100

10:                                               ; preds = %0
  %11 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %3, align 8, !dbg !101
  %12 = bitcast %struct._xmlXPathObject* %11 to i8*, !dbg !101
  call void @free(i8* noundef %12) #7, !dbg !102
  br label %13, !dbg !102

13:                                               ; preds = %10, %0
  ret i32 0, !dbg !103
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !104 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !108, metadata !DIExpression()), !dbg !109
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !110, metadata !DIExpression()), !dbg !111
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !112, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata i8** %7, metadata !114, metadata !DIExpression()), !dbg !116
  %8 = load i8*, i8** %4, align 8, !dbg !117
  store i8* %8, i8** %7, align 8, !dbg !116
  br label %9, !dbg !118

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !119
  %11 = add i64 %10, -1, !dbg !119
  store i64 %11, i64* %6, align 8, !dbg !119
  %12 = icmp ugt i64 %10, 0, !dbg !120
  br i1 %12, label %13, label %18, !dbg !118

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !121
  %15 = trunc i32 %14 to i8, !dbg !121
  %16 = load i8*, i8** %7, align 8, !dbg !122
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !122
  store i8* %17, i8** %7, align 8, !dbg !122
  store i8 %15, i8* %16, align 1, !dbg !123
  br label %9, !dbg !118, !llvm.loop !124

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !126
  ret i8* %19, !dbg !127
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22, !22}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/348_xpath.c_4708_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "0b2099e6f3ab340c1d861dd3787ec392")
!2 = !{!3, !11, !12}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObjectPtr", file: !1, line: 11, baseType: !4)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObject", file: !1, line: 10, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathObject", file: !1, line: 14, size: 128, elements: !7)
!7 = !{!8, !10}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6, file: !1, line: 15, baseType: !9, size: 32)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !6, file: !1, line: 16, baseType: !11, size: 64, offset: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !1, line: 12, baseType: !11)
!13 = distinct !DICompileUnit(language: DW_LANG_C99, file: !14, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!14 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!15 = !{i32 7, !"Dwarf Version", i32 5}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{i32 7, !"PIC Level", i32 2}
!19 = !{i32 7, !"PIE Level", i32 2}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"Ubuntu clang version 14.0.6"}
!23 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 21, type: !24, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!24 = !DISubroutineType(types: !25)
!25 = !{!11, !26}
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !27, line: 46, baseType: !28)
!27 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!28 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!29 = !{}
!30 = !DILocalVariable(name: "size", arg: 1, scope: !23, file: !1, line: 21, type: !26)
!31 = !DILocation(line: 21, column: 24, scope: !23)
!32 = !DILocation(line: 22, column: 19, scope: !23)
!33 = !DILocation(line: 22, column: 12, scope: !23)
!34 = !DILocation(line: 22, column: 5, scope: !23)
!35 = distinct !DISubprogram(name: "xmlXPathErrMemory", scope: !1, file: !1, line: 26, type: !36, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !11, !38}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!40 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!41 = !DILocalVariable(name: "ctxt", arg: 1, scope: !35, file: !1, line: 26, type: !11)
!42 = !DILocation(line: 26, column: 30, scope: !35)
!43 = !DILocalVariable(name: "extra", arg: 2, scope: !35, file: !1, line: 26, type: !38)
!44 = !DILocation(line: 26, column: 48, scope: !35)
!45 = !DILocation(line: 28, column: 1, scope: !35)
!46 = distinct !DISubprogram(name: "xmlXPathWrapCString", scope: !1, file: !1, line: 31, type: !47, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!47 = !DISubroutineType(types: !48)
!48 = !{!3, !11}
!49 = !DILocalVariable(name: "val", arg: 1, scope: !46, file: !1, line: 31, type: !11)
!50 = !DILocation(line: 31, column: 45, scope: !46)
!51 = !DILocalVariable(name: "ret", scope: !46, file: !1, line: 32, type: !3)
!52 = !DILocation(line: 32, column: 23, scope: !46)
!53 = !DILocation(line: 34, column: 31, scope: !46)
!54 = !DILocation(line: 34, column: 11, scope: !46)
!55 = !DILocation(line: 34, column: 9, scope: !46)
!56 = !DILocation(line: 35, column: 9, scope: !57)
!57 = distinct !DILexicalBlock(scope: !46, file: !1, line: 35, column: 9)
!58 = !DILocation(line: 35, column: 13, scope: !57)
!59 = !DILocation(line: 35, column: 9, scope: !46)
!60 = !DILocation(line: 36, column: 9, scope: !61)
!61 = distinct !DILexicalBlock(scope: !57, file: !1, line: 35, column: 22)
!62 = !DILocation(line: 37, column: 9, scope: !61)
!63 = !DILocation(line: 39, column: 12, scope: !46)
!64 = !DILocation(line: 39, column: 5, scope: !46)
!65 = !DILocation(line: 40, column: 5, scope: !46)
!66 = !DILocation(line: 40, column: 10, scope: !46)
!67 = !DILocation(line: 40, column: 15, scope: !46)
!68 = !DILocation(line: 41, column: 17, scope: !46)
!69 = !DILocation(line: 41, column: 5, scope: !46)
!70 = !DILocation(line: 41, column: 10, scope: !46)
!71 = !DILocation(line: 41, column: 15, scope: !46)
!72 = !DILocation(line: 42, column: 12, scope: !46)
!73 = !DILocation(line: 42, column: 5, scope: !46)
!74 = !DILocation(line: 43, column: 1, scope: !46)
!75 = distinct !DISubprogram(name: "xmlXPathCmpNodesExt", scope: !1, file: !1, line: 46, type: !76, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!76 = !DISubroutineType(types: !77)
!77 = !{!12, !12, !12}
!78 = !DILocalVariable(name: "node1", arg: 1, scope: !75, file: !1, line: 46, type: !12)
!79 = !DILocation(line: 46, column: 43, scope: !75)
!80 = !DILocalVariable(name: "node2", arg: 2, scope: !75, file: !1, line: 46, type: !12)
!81 = !DILocation(line: 46, column: 61, scope: !75)
!82 = !DILocation(line: 48, column: 5, scope: !75)
!83 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 51, type: !84, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!84 = !DISubroutineType(types: !85)
!85 = !{!9}
!86 = !DILocalVariable(name: "val", scope: !83, file: !1, line: 53, type: !87)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 2048, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 256)
!90 = !DILocation(line: 53, column: 10, scope: !83)
!91 = !DILocation(line: 54, column: 24, scope: !83)
!92 = !DILocation(line: 54, column: 5, scope: !83)
!93 = !DILocalVariable(name: "result", scope: !83, file: !1, line: 57, type: !3)
!94 = !DILocation(line: 57, column: 23, scope: !83)
!95 = !DILocation(line: 57, column: 52, scope: !83)
!96 = !DILocation(line: 57, column: 32, scope: !83)
!97 = !DILocation(line: 66, column: 5, scope: !83)
!98 = !DILocation(line: 69, column: 9, scope: !99)
!99 = distinct !DILexicalBlock(scope: !83, file: !1, line: 69, column: 9)
!100 = !DILocation(line: 69, column: 9, scope: !83)
!101 = !DILocation(line: 69, column: 22, scope: !99)
!102 = !DILocation(line: 69, column: 17, scope: !99)
!103 = !DILocation(line: 71, column: 5, scope: !83)
!104 = distinct !DISubprogram(name: "memset", scope: !105, file: !105, line: 12, type: !106, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !29)
!105 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!106 = !DISubroutineType(types: !107)
!107 = !{!11, !11, !9, !26}
!108 = !DILocalVariable(name: "dst", arg: 1, scope: !104, file: !105, line: 12, type: !11)
!109 = !DILocation(line: 12, column: 20, scope: !104)
!110 = !DILocalVariable(name: "s", arg: 2, scope: !104, file: !105, line: 12, type: !9)
!111 = !DILocation(line: 12, column: 29, scope: !104)
!112 = !DILocalVariable(name: "count", arg: 3, scope: !104, file: !105, line: 12, type: !26)
!113 = !DILocation(line: 12, column: 39, scope: !104)
!114 = !DILocalVariable(name: "a", scope: !104, file: !105, line: 13, type: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!116 = !DILocation(line: 13, column: 9, scope: !104)
!117 = !DILocation(line: 13, column: 13, scope: !104)
!118 = !DILocation(line: 14, column: 3, scope: !104)
!119 = !DILocation(line: 14, column: 15, scope: !104)
!120 = !DILocation(line: 14, column: 18, scope: !104)
!121 = !DILocation(line: 15, column: 12, scope: !104)
!122 = !DILocation(line: 15, column: 7, scope: !104)
!123 = !DILocation(line: 15, column: 10, scope: !104)
!124 = distinct !{!124, !118, !121, !125}
!125 = !{!"llvm.loop.mustprogress"}
!126 = !DILocation(line: 16, column: 10, scope: !104)
!127 = !DILocation(line: 16, column: 3, scope: !104)

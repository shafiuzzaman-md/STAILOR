; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/351_xpath.c_4604_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/351_xpath.c_4604_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlXPathObject = type { i32, i32, i8*, i32, i8*, i32 }

@.str = private unnamed_addr constant [25 x i8] c"creating boolean object\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_62911_vul/351_xpath.c_4604_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !37 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !44, metadata !DIExpression()), !dbg !45
  %3 = load i64, i64* %2, align 8, !dbg !46
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !47
  ret i8* %4, !dbg !48
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlXPathErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !49 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !55, metadata !DIExpression()), !dbg !56
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !57, metadata !DIExpression()), !dbg !58
  ret void, !dbg !59
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlXPathObject* @xmlXPathNewBoolean(i32 noundef %0) #0 !dbg !60 {
  %2 = alloca %struct._xmlXPathObject*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlXPathObject*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !63, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata %struct._xmlXPathObject** %4, metadata !65, metadata !DIExpression()), !dbg !66
  %5 = call i8* @xmlMalloc(i64 noundef 40), !dbg !67
  %6 = bitcast i8* %5 to %struct._xmlXPathObject*, !dbg !68
  store %struct._xmlXPathObject* %6, %struct._xmlXPathObject** %4, align 8, !dbg !69
  %7 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !70
  %8 = icmp eq %struct._xmlXPathObject* %7, null, !dbg !72
  br i1 %8, label %9, label %10, !dbg !73

9:                                                ; preds = %1
  call void @xmlXPathErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0)), !dbg !74
  store %struct._xmlXPathObject* null, %struct._xmlXPathObject** %2, align 8, !dbg !76
  br label %22, !dbg !76

10:                                               ; preds = %1
  %11 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !77
  %12 = bitcast %struct._xmlXPathObject* %11 to i8*, !dbg !78
  %13 = call i8* @memset(i8* %12, i32 0, i64 40), !dbg !78
  %14 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !79
  %15 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %14, i32 0, i32 0, !dbg !80
  store i32 1, i32* %15, align 8, !dbg !81
  %16 = load i32, i32* %3, align 4, !dbg !82
  %17 = icmp ne i32 %16, 0, !dbg !83
  %18 = zext i1 %17 to i32, !dbg !83
  %19 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !84
  %20 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %19, i32 0, i32 1, !dbg !85
  store i32 %18, i32* %20, align 4, !dbg !86
  %21 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !87
  store %struct._xmlXPathObject* %21, %struct._xmlXPathObject** %2, align 8, !dbg !88
  br label %22, !dbg !88

22:                                               ; preds = %10, %9
  %23 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %2, align 8, !dbg !89
  ret %struct._xmlXPathObject* %23, !dbg !89
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlXPathObject* @xmlXPathCmpNodesExt(i8* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !90 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !93, metadata !DIExpression()), !dbg !94
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !95, metadata !DIExpression()), !dbg !96
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !97, metadata !DIExpression()), !dbg !98
  %7 = call %struct._xmlXPathObject* @xmlXPathNewBoolean(i32 noundef 1), !dbg !99
  ret %struct._xmlXPathObject* %7, !dbg !100
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !101 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct._xmlXPathObject*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !104, metadata !DIExpression()), !dbg !105
  %4 = bitcast i32* %2 to i8*, !dbg !106
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !107
  call void @llvm.dbg.declare(metadata %struct._xmlXPathObject** %3, metadata !108, metadata !DIExpression()), !dbg !109
  %5 = load i32, i32* %2, align 4, !dbg !110
  %6 = call %struct._xmlXPathObject* @xmlXPathNewBoolean(i32 noundef %5), !dbg !111
  store %struct._xmlXPathObject* %6, %struct._xmlXPathObject** %3, align 8, !dbg !109
  %7 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %3, align 8, !dbg !112
  %8 = icmp ne %struct._xmlXPathObject* %7, null, !dbg !114
  br i1 %8, label %9, label %11, !dbg !115

9:                                                ; preds = %0
  %10 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.3, i64 0, i64 0), i32 noundef 75, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !116
  br label %11, !dbg !118

11:                                               ; preds = %9, %0
  %12 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %3, align 8, !dbg !119
  %13 = icmp ne %struct._xmlXPathObject* %12, null, !dbg !121
  br i1 %13, label %14, label %17, !dbg !122

14:                                               ; preds = %11
  %15 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %3, align 8, !dbg !123
  %16 = bitcast %struct._xmlXPathObject* %15 to i8*, !dbg !123
  call void @free(i8* noundef %16) #7, !dbg !125
  br label %17, !dbg !126

17:                                               ; preds = %14, %11
  ret i32 0, !dbg !127
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

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

!llvm.dbg.cu = !{!0, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36, !36}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !12, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/351_xpath.c_4604_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "48629364b43beca27508b63366e84bfa")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 13, baseType: !4, size: 32, elements: !5)
!4 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!5 = !{!6, !7, !8, !9, !10, !11}
!6 = !DIEnumerator(name: "XPATH_BOOLEAN", value: 1)
!7 = !DIEnumerator(name: "XPATH_NUMBER", value: 2)
!8 = !DIEnumerator(name: "XPATH_STRING", value: 3)
!9 = !DIEnumerator(name: "XPATH_NODESET", value: 4)
!10 = !DIEnumerator(name: "XPATH_USERS", value: 5)
!11 = !DIEnumerator(name: "XPATH_XSLT_TREE", value: 6)
!12 = !{!13, !23}
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObjectPtr", file: !1, line: 11, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObject", file: !1, line: 10, baseType: !16)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathObject", file: !1, line: 22, size: 320, elements: !17)
!17 = !{!18, !20, !22, !24, !25, !26}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !16, file: !1, line: 23, baseType: !19, size: 32)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObjectType", file: !1, line: 20, baseType: !3)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "boolval", scope: !16, file: !1, line: 24, baseType: !21, size: 32, offset: 32)
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !16, file: !1, line: 25, baseType: !23, size: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !16, file: !1, line: 26, baseType: !21, size: 32, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "user2", scope: !16, file: !1, line: 27, baseType: !23, size: 64, offset: 192)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "index2", scope: !16, file: !1, line: 28, baseType: !21, size: 32, offset: 256)
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
!37 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 32, type: !38, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !43)
!38 = !DISubroutineType(types: !39)
!39 = !{!23, !40}
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !41, line: 46, baseType: !42)
!41 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!42 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!43 = !{}
!44 = !DILocalVariable(name: "size", arg: 1, scope: !37, file: !1, line: 32, type: !40)
!45 = !DILocation(line: 32, column: 24, scope: !37)
!46 = !DILocation(line: 33, column: 19, scope: !37)
!47 = !DILocation(line: 33, column: 12, scope: !37)
!48 = !DILocation(line: 33, column: 5, scope: !37)
!49 = distinct !DISubprogram(name: "xmlXPathErrMemory", scope: !1, file: !1, line: 37, type: !50, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !43)
!50 = !DISubroutineType(types: !51)
!51 = !{null, !23, !52}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!54 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!55 = !DILocalVariable(name: "ctxt", arg: 1, scope: !49, file: !1, line: 37, type: !23)
!56 = !DILocation(line: 37, column: 30, scope: !49)
!57 = !DILocalVariable(name: "extra", arg: 2, scope: !49, file: !1, line: 37, type: !52)
!58 = !DILocation(line: 37, column: 48, scope: !49)
!59 = !DILocation(line: 39, column: 1, scope: !49)
!60 = distinct !DISubprogram(name: "xmlXPathNewBoolean", scope: !1, file: !1, line: 42, type: !61, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !43)
!61 = !DISubroutineType(types: !62)
!62 = !{!13, !21}
!63 = !DILocalVariable(name: "val", arg: 1, scope: !60, file: !1, line: 42, type: !21)
!64 = !DILocation(line: 42, column: 42, scope: !60)
!65 = !DILocalVariable(name: "ret", scope: !60, file: !1, line: 43, type: !13)
!66 = !DILocation(line: 43, column: 23, scope: !60)
!67 = !DILocation(line: 45, column: 31, scope: !60)
!68 = !DILocation(line: 45, column: 11, scope: !60)
!69 = !DILocation(line: 45, column: 9, scope: !60)
!70 = !DILocation(line: 46, column: 9, scope: !71)
!71 = distinct !DILexicalBlock(scope: !60, file: !1, line: 46, column: 9)
!72 = !DILocation(line: 46, column: 13, scope: !71)
!73 = !DILocation(line: 46, column: 9, scope: !60)
!74 = !DILocation(line: 47, column: 9, scope: !75)
!75 = distinct !DILexicalBlock(scope: !71, file: !1, line: 46, column: 22)
!76 = !DILocation(line: 48, column: 9, scope: !75)
!77 = !DILocation(line: 50, column: 12, scope: !60)
!78 = !DILocation(line: 50, column: 5, scope: !60)
!79 = !DILocation(line: 51, column: 5, scope: !60)
!80 = !DILocation(line: 51, column: 10, scope: !60)
!81 = !DILocation(line: 51, column: 15, scope: !60)
!82 = !DILocation(line: 52, column: 21, scope: !60)
!83 = !DILocation(line: 52, column: 25, scope: !60)
!84 = !DILocation(line: 52, column: 5, scope: !60)
!85 = !DILocation(line: 52, column: 10, scope: !60)
!86 = !DILocation(line: 52, column: 18, scope: !60)
!87 = !DILocation(line: 53, column: 12, scope: !60)
!88 = !DILocation(line: 53, column: 5, scope: !60)
!89 = !DILocation(line: 54, column: 1, scope: !60)
!90 = distinct !DISubprogram(name: "xmlXPathCmpNodesExt", scope: !1, file: !1, line: 57, type: !91, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !43)
!91 = !DISubroutineType(types: !92)
!92 = !{!13, !23, !23, !21}
!93 = !DILocalVariable(name: "node1", arg: 1, scope: !90, file: !1, line: 57, type: !23)
!94 = !DILocation(line: 57, column: 45, scope: !90)
!95 = !DILocalVariable(name: "node2", arg: 2, scope: !90, file: !1, line: 57, type: !23)
!96 = !DILocation(line: 57, column: 58, scope: !90)
!97 = !DILocalVariable(name: "op", arg: 3, scope: !90, file: !1, line: 57, type: !21)
!98 = !DILocation(line: 57, column: 69, scope: !90)
!99 = !DILocation(line: 59, column: 12, scope: !90)
!100 = !DILocation(line: 59, column: 5, scope: !90)
!101 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 62, type: !102, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !43)
!102 = !DISubroutineType(types: !103)
!103 = !{!21}
!104 = !DILocalVariable(name: "val", scope: !101, file: !1, line: 63, type: !21)
!105 = !DILocation(line: 63, column: 9, scope: !101)
!106 = !DILocation(line: 66, column: 24, scope: !101)
!107 = !DILocation(line: 66, column: 5, scope: !101)
!108 = !DILocalVariable(name: "result", scope: !101, file: !1, line: 69, type: !13)
!109 = !DILocation(line: 69, column: 23, scope: !101)
!110 = !DILocation(line: 69, column: 51, scope: !101)
!111 = !DILocation(line: 69, column: 32, scope: !101)
!112 = !DILocation(line: 73, column: 9, scope: !113)
!113 = distinct !DILexicalBlock(scope: !101, file: !1, line: 73, column: 9)
!114 = !DILocation(line: 73, column: 16, scope: !113)
!115 = !DILocation(line: 73, column: 9, scope: !101)
!116 = !DILocation(line: 75, column: 9, scope: !117)
!117 = distinct !DILexicalBlock(scope: !113, file: !1, line: 73, column: 25)
!118 = !DILocation(line: 76, column: 5, scope: !117)
!119 = !DILocation(line: 79, column: 9, scope: !120)
!120 = distinct !DILexicalBlock(scope: !101, file: !1, line: 79, column: 9)
!121 = !DILocation(line: 79, column: 16, scope: !120)
!122 = !DILocation(line: 79, column: 9, scope: !101)
!123 = !DILocation(line: 80, column: 14, scope: !124)
!124 = distinct !DILexicalBlock(scope: !120, file: !1, line: 79, column: 25)
!125 = !DILocation(line: 80, column: 9, scope: !124)
!126 = !DILocation(line: 81, column: 5, scope: !124)
!127 = !DILocation(line: 83, column: 5, scope: !101)
!128 = distinct !DISubprogram(name: "memset", scope: !129, file: !129, line: 12, type: !130, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !43)
!129 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!130 = !DISubroutineType(types: !131)
!131 = !{!23, !23, !21, !40}
!132 = !DILocalVariable(name: "dst", arg: 1, scope: !128, file: !129, line: 12, type: !23)
!133 = !DILocation(line: 12, column: 20, scope: !128)
!134 = !DILocalVariable(name: "s", arg: 2, scope: !128, file: !129, line: 12, type: !21)
!135 = !DILocation(line: 12, column: 29, scope: !128)
!136 = !DILocalVariable(name: "count", arg: 3, scope: !128, file: !129, line: 12, type: !40)
!137 = !DILocation(line: 12, column: 39, scope: !128)
!138 = !DILocalVariable(name: "a", scope: !128, file: !129, line: 13, type: !139)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
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

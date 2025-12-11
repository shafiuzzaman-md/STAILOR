; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/222_xmlIO.c_2291_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/222_xmlIO.c_2291_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlBuf = type opaque
%struct._xmlOutputBuffer = type { %struct._xmlBuf* }

@.str = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_62911_vul/222_xmlIO.c_2291_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlFileOpen = private unnamed_addr constant [45 x i8] c"xmlOutputBufferPtr xmlFileOpen(const char *)\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"filename\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !24 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !31, metadata !DIExpression()), !dbg !32
  %3 = load i64, i64* %2, align 8, !dbg !33
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !34
  ret i8* %4, !dbg !35
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !36 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !39, metadata !DIExpression()), !dbg !40
  %3 = load i8*, i8** %2, align 8, !dbg !41
  call void @free(i8* noundef %3) #7, !dbg !42
  ret void, !dbg !43
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlBuf* @xmlBufCreate() #0 !dbg !44 {
  %1 = alloca %struct._xmlBuf*, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlBuf** %1, metadata !47, metadata !DIExpression()), !dbg !48
  %2 = bitcast %struct._xmlBuf** %1 to i8*, !dbg !49
  call void @klee_make_symbolic(i8* noundef %2, i64 noundef 8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !50
  %3 = load %struct._xmlBuf*, %struct._xmlBuf** %1, align 8, !dbg !51
  %4 = icmp eq %struct._xmlBuf* %3, null, !dbg !52
  br i1 %4, label %8, label %5, !dbg !53

5:                                                ; preds = %0
  %6 = load %struct._xmlBuf*, %struct._xmlBuf** %1, align 8, !dbg !54
  %7 = icmp ne %struct._xmlBuf* %6, null, !dbg !55
  br label %8, !dbg !53

8:                                                ; preds = %5, %0
  %9 = phi i1 [ true, %0 ], [ %7, %5 ]
  %10 = zext i1 %9 to i32, !dbg !53
  %11 = sext i32 %10 to i64, !dbg !51
  call void @klee_assume(i64 noundef %11), !dbg !56
  %12 = load %struct._xmlBuf*, %struct._xmlBuf** %1, align 8, !dbg !57
  ret %struct._xmlBuf* %12, !dbg !58
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlOutputBuffer* @xmlFileOpen(i8* noundef %0) #0 !dbg !59 {
  %2 = alloca %struct._xmlOutputBuffer*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._xmlOutputBuffer*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !65, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.declare(metadata %struct._xmlOutputBuffer** %4, metadata !67, metadata !DIExpression()), !dbg !68
  %5 = call i8* @xmlMalloc(i64 noundef 8), !dbg !69
  %6 = bitcast i8* %5 to %struct._xmlOutputBuffer*, !dbg !70
  store %struct._xmlOutputBuffer* %6, %struct._xmlOutputBuffer** %4, align 8, !dbg !71
  %7 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %4, align 8, !dbg !72
  %8 = icmp eq %struct._xmlOutputBuffer* %7, null, !dbg !74
  br i1 %8, label %9, label %10, !dbg !75

9:                                                ; preds = %1
  store %struct._xmlOutputBuffer* null, %struct._xmlOutputBuffer** %2, align 8, !dbg !76
  br label %27, !dbg !76

10:                                               ; preds = %1
  %11 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.2, i64 0, i64 0), i32 noundef 57, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.xmlFileOpen, i64 0, i64 0)), !dbg !78
  %12 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %4, align 8, !dbg !79
  %13 = bitcast %struct._xmlOutputBuffer* %12 to i8*, !dbg !80
  %14 = call i8* @memset(i8* %13, i32 0, i64 8), !dbg !80
  %15 = call %struct._xmlBuf* @xmlBufCreate(), !dbg !81
  %16 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %4, align 8, !dbg !82
  %17 = getelementptr inbounds %struct._xmlOutputBuffer, %struct._xmlOutputBuffer* %16, i32 0, i32 0, !dbg !83
  store %struct._xmlBuf* %15, %struct._xmlBuf** %17, align 8, !dbg !84
  %18 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %4, align 8, !dbg !85
  %19 = getelementptr inbounds %struct._xmlOutputBuffer, %struct._xmlOutputBuffer* %18, i32 0, i32 0, !dbg !87
  %20 = load %struct._xmlBuf*, %struct._xmlBuf** %19, align 8, !dbg !87
  %21 = icmp eq %struct._xmlBuf* %20, null, !dbg !88
  br i1 %21, label %22, label %25, !dbg !89

22:                                               ; preds = %10
  %23 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %4, align 8, !dbg !90
  %24 = bitcast %struct._xmlOutputBuffer* %23 to i8*, !dbg !90
  call void @xmlFree(i8* noundef %24), !dbg !92
  store %struct._xmlOutputBuffer* null, %struct._xmlOutputBuffer** %2, align 8, !dbg !93
  br label %27, !dbg !93

25:                                               ; preds = %10
  %26 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %4, align 8, !dbg !94
  store %struct._xmlOutputBuffer* %26, %struct._xmlOutputBuffer** %2, align 8, !dbg !95
  br label %27, !dbg !95

27:                                               ; preds = %25, %22, %9
  %28 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %2, align 8, !dbg !96
  ret %struct._xmlOutputBuffer* %28, !dbg !96
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !97 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca %struct._xmlOutputBuffer*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !101, metadata !DIExpression()), !dbg !105
  %4 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !106
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !107
  call void @llvm.dbg.declare(metadata %struct._xmlOutputBuffer** %3, metadata !108, metadata !DIExpression()), !dbg !109
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !110
  %6 = call %struct._xmlOutputBuffer* @xmlFileOpen(i8* noundef %5), !dbg !111
  store %struct._xmlOutputBuffer* %6, %struct._xmlOutputBuffer** %3, align 8, !dbg !109
  %7 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %3, align 8, !dbg !112
  %8 = icmp ne %struct._xmlOutputBuffer* %7, null, !dbg !114
  br i1 %8, label %9, label %18, !dbg !115

9:                                                ; preds = %0
  %10 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %3, align 8, !dbg !116
  %11 = getelementptr inbounds %struct._xmlOutputBuffer, %struct._xmlOutputBuffer* %10, i32 0, i32 0, !dbg !119
  %12 = load %struct._xmlBuf*, %struct._xmlBuf** %11, align 8, !dbg !119
  %13 = icmp ne %struct._xmlBuf* %12, null, !dbg !120
  br i1 %13, label %14, label %15, !dbg !121

14:                                               ; preds = %9
  br label %15, !dbg !122

15:                                               ; preds = %14, %9
  %16 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %3, align 8, !dbg !124
  %17 = bitcast %struct._xmlOutputBuffer* %16 to i8*, !dbg !124
  call void @xmlFree(i8* noundef %17), !dbg !125
  br label %18, !dbg !126

18:                                               ; preds = %15, %0
  ret i32 0, !dbg !127
}

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
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23, !23}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/222_xmlIO.c_2291_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "df57aea2182ac6fea47ba5a85beb7210")
!2 = !{!3, !13}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlOutputBufferPtr", file: !1, line: 18, baseType: !4)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlOutputBuffer", file: !1, line: 16, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlOutputBuffer", file: !1, line: 13, size: 64, elements: !7)
!7 = !{!8}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !6, file: !1, line: 14, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBufPtr", file: !1, line: 11, baseType: !10)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBuf", file: !1, line: 10, baseType: !12)
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlBuf", file: !1, line: 10, flags: DIFlagFwdDecl)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!14 = distinct !DICompileUnit(language: DW_LANG_C99, file: !15, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!15 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!16 = !{i32 7, !"Dwarf Version", i32 5}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{i32 7, !"PIC Level", i32 2}
!20 = !{i32 7, !"PIE Level", i32 2}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"Ubuntu clang version 14.0.6"}
!24 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 21, type: !25, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !30)
!25 = !DISubroutineType(types: !26)
!26 = !{!13, !27}
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !28, line: 46, baseType: !29)
!28 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!29 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!30 = !{}
!31 = !DILocalVariable(name: "size", arg: 1, scope: !24, file: !1, line: 21, type: !27)
!32 = !DILocation(line: 21, column: 24, scope: !24)
!33 = !DILocation(line: 22, column: 19, scope: !24)
!34 = !DILocation(line: 22, column: 12, scope: !24)
!35 = !DILocation(line: 22, column: 5, scope: !24)
!36 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 25, type: !37, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !30)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !13}
!39 = !DILocalVariable(name: "ptr", arg: 1, scope: !36, file: !1, line: 25, type: !13)
!40 = !DILocation(line: 25, column: 20, scope: !36)
!41 = !DILocation(line: 26, column: 10, scope: !36)
!42 = !DILocation(line: 26, column: 5, scope: !36)
!43 = !DILocation(line: 27, column: 1, scope: !36)
!44 = distinct !DISubprogram(name: "xmlBufCreate", scope: !1, file: !1, line: 29, type: !45, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !30)
!45 = !DISubroutineType(types: !46)
!46 = !{!9}
!47 = !DILocalVariable(name: "buf", scope: !44, file: !1, line: 31, type: !9)
!48 = !DILocation(line: 31, column: 15, scope: !44)
!49 = !DILocation(line: 32, column: 24, scope: !44)
!50 = !DILocation(line: 32, column: 5, scope: !44)
!51 = !DILocation(line: 33, column: 17, scope: !44)
!52 = !DILocation(line: 33, column: 21, scope: !44)
!53 = !DILocation(line: 33, column: 26, scope: !44)
!54 = !DILocation(line: 33, column: 29, scope: !44)
!55 = !DILocation(line: 33, column: 33, scope: !44)
!56 = !DILocation(line: 33, column: 5, scope: !44)
!57 = !DILocation(line: 34, column: 12, scope: !44)
!58 = !DILocation(line: 34, column: 5, scope: !44)
!59 = distinct !DISubprogram(name: "xmlFileOpen", scope: !1, file: !1, line: 38, type: !60, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !30)
!60 = !DISubroutineType(types: !61)
!61 = !{!3, !62}
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!64 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!65 = !DILocalVariable(name: "filename", arg: 1, scope: !59, file: !1, line: 38, type: !62)
!66 = !DILocation(line: 38, column: 44, scope: !59)
!67 = !DILocalVariable(name: "ret", scope: !59, file: !1, line: 39, type: !3)
!68 = !DILocation(line: 39, column: 24, scope: !59)
!69 = !DILocation(line: 42, column: 32, scope: !59)
!70 = !DILocation(line: 42, column: 11, scope: !59)
!71 = !DILocation(line: 42, column: 9, scope: !59)
!72 = !DILocation(line: 43, column: 9, scope: !73)
!73 = distinct !DILexicalBlock(scope: !59, file: !1, line: 43, column: 9)
!74 = !DILocation(line: 43, column: 13, scope: !73)
!75 = !DILocation(line: 43, column: 9, scope: !59)
!76 = !DILocation(line: 44, column: 9, scope: !77)
!77 = distinct !DILexicalBlock(scope: !73, file: !1, line: 43, column: 22)
!78 = !DILocation(line: 57, column: 5, scope: !59)
!79 = !DILocation(line: 59, column: 12, scope: !59)
!80 = !DILocation(line: 59, column: 5, scope: !59)
!81 = !DILocation(line: 61, column: 19, scope: !59)
!82 = !DILocation(line: 61, column: 5, scope: !59)
!83 = !DILocation(line: 61, column: 10, scope: !59)
!84 = !DILocation(line: 61, column: 17, scope: !59)
!85 = !DILocation(line: 62, column: 9, scope: !86)
!86 = distinct !DILexicalBlock(scope: !59, file: !1, line: 62, column: 9)
!87 = !DILocation(line: 62, column: 14, scope: !86)
!88 = !DILocation(line: 62, column: 21, scope: !86)
!89 = !DILocation(line: 62, column: 9, scope: !59)
!90 = !DILocation(line: 63, column: 17, scope: !91)
!91 = distinct !DILexicalBlock(scope: !86, file: !1, line: 62, column: 30)
!92 = !DILocation(line: 63, column: 9, scope: !91)
!93 = !DILocation(line: 64, column: 9, scope: !91)
!94 = !DILocation(line: 67, column: 12, scope: !59)
!95 = !DILocation(line: 67, column: 5, scope: !59)
!96 = !DILocation(line: 68, column: 1, scope: !59)
!97 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 70, type: !98, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !30)
!98 = !DISubroutineType(types: !99)
!99 = !{!100}
!100 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!101 = !DILocalVariable(name: "filename", scope: !97, file: !1, line: 72, type: !102)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 2048, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 256)
!105 = !DILocation(line: 72, column: 10, scope: !97)
!106 = !DILocation(line: 73, column: 24, scope: !97)
!107 = !DILocation(line: 73, column: 5, scope: !97)
!108 = !DILocalVariable(name: "result", scope: !97, file: !1, line: 76, type: !3)
!109 = !DILocation(line: 76, column: 24, scope: !97)
!110 = !DILocation(line: 76, column: 45, scope: !97)
!111 = !DILocation(line: 76, column: 33, scope: !97)
!112 = !DILocation(line: 79, column: 9, scope: !113)
!113 = distinct !DILexicalBlock(scope: !97, file: !1, line: 79, column: 9)
!114 = !DILocation(line: 79, column: 16, scope: !113)
!115 = !DILocation(line: 79, column: 9, scope: !97)
!116 = !DILocation(line: 80, column: 13, scope: !117)
!117 = distinct !DILexicalBlock(scope: !118, file: !1, line: 80, column: 13)
!118 = distinct !DILexicalBlock(scope: !113, file: !1, line: 79, column: 25)
!119 = !DILocation(line: 80, column: 21, scope: !117)
!120 = !DILocation(line: 80, column: 28, scope: !117)
!121 = !DILocation(line: 80, column: 13, scope: !118)
!122 = !DILocation(line: 82, column: 9, scope: !123)
!123 = distinct !DILexicalBlock(scope: !117, file: !1, line: 80, column: 37)
!124 = !DILocation(line: 83, column: 17, scope: !118)
!125 = !DILocation(line: 83, column: 9, scope: !118)
!126 = !DILocation(line: 84, column: 5, scope: !118)
!127 = !DILocation(line: 86, column: 5, scope: !97)
!128 = distinct !DISubprogram(name: "memset", scope: !129, file: !129, line: 12, type: !130, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !30)
!129 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!130 = !DISubroutineType(types: !131)
!131 = !{!13, !13, !100, !27}
!132 = !DILocalVariable(name: "dst", arg: 1, scope: !128, file: !129, line: 12, type: !13)
!133 = !DILocation(line: 12, column: 20, scope: !128)
!134 = !DILocalVariable(name: "s", arg: 2, scope: !128, file: !129, line: 12, type: !100)
!135 = !DILocation(line: 12, column: 29, scope: !128)
!136 = !DILocalVariable(name: "count", arg: 3, scope: !128, file: !129, line: 12, type: !27)
!137 = !DILocation(line: 12, column: 39, scope: !128)
!138 = !DILocalVariable(name: "a", scope: !128, file: !129, line: 13, type: !139)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
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

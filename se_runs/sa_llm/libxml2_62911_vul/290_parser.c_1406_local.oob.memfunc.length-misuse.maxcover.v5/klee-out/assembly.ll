; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/290_parser.c_1406_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/290_parser.c_1406_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlParserNsData = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"xmlMalloc_buffer\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"control\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_62911_vul/290_parser.c_1406_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !14 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i8** %3, metadata !23, metadata !DIExpression()), !dbg !24
  %4 = load i64, i64* %2, align 8, !dbg !25
  %5 = call noalias i8* @malloc(i64 noundef %4) #7, !dbg !26
  store i8* %5, i8** %3, align 8, !dbg !24
  %6 = load i8*, i8** %3, align 8, !dbg !27
  %7 = icmp ne i8* %6, null, !dbg !27
  br i1 %7, label %8, label %11, !dbg !29

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8, !dbg !30
  %10 = load i64, i64* %2, align 8, !dbg !32
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef %10, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)), !dbg !33
  br label %11, !dbg !34

11:                                               ; preds = %8, %1
  %12 = load i8*, i8** %3, align 8, !dbg !35
  ret i8* %12, !dbg !36
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlParserNsData* @xmlParserNsCreate() #0 !dbg !37 {
  %1 = alloca %struct._xmlParserNsData*, align 8
  %2 = alloca %struct._xmlParserNsData*, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserNsData** %2, metadata !46, metadata !DIExpression()), !dbg !47
  %3 = call i8* @xmlMalloc(i64 noundef 4), !dbg !48
  %4 = bitcast i8* %3 to %struct._xmlParserNsData*, !dbg !48
  store %struct._xmlParserNsData* %4, %struct._xmlParserNsData** %2, align 8, !dbg !47
  %5 = load %struct._xmlParserNsData*, %struct._xmlParserNsData** %2, align 8, !dbg !49
  %6 = icmp eq %struct._xmlParserNsData* %5, null, !dbg !51
  br i1 %6, label %7, label %8, !dbg !52

7:                                                ; preds = %0
  store %struct._xmlParserNsData* null, %struct._xmlParserNsData** %1, align 8, !dbg !53
  br label %15, !dbg !53

8:                                                ; preds = %0
  %9 = load %struct._xmlParserNsData*, %struct._xmlParserNsData** %2, align 8, !dbg !54
  %10 = bitcast %struct._xmlParserNsData* %9 to i8*, !dbg !55
  %11 = call i8* @memset(i8* %10, i32 0, i64 4), !dbg !55
  %12 = load %struct._xmlParserNsData*, %struct._xmlParserNsData** %2, align 8, !dbg !56
  %13 = getelementptr inbounds %struct._xmlParserNsData, %struct._xmlParserNsData* %12, i32 0, i32 0, !dbg !57
  store i32 2147483647, i32* %13, align 4, !dbg !58
  %14 = load %struct._xmlParserNsData*, %struct._xmlParserNsData** %2, align 8, !dbg !59
  store %struct._xmlParserNsData* %14, %struct._xmlParserNsData** %1, align 8, !dbg !60
  br label %15, !dbg !60

15:                                               ; preds = %8, %7
  %16 = load %struct._xmlParserNsData*, %struct._xmlParserNsData** %1, align 8, !dbg !61
  ret %struct._xmlParserNsData* %16, !dbg !61
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlParserNsData* @xmlParserNsLookup() #0 !dbg !62 {
  %1 = call %struct._xmlParserNsData* @xmlParserNsCreate(), !dbg !63
  ret %struct._xmlParserNsData* %1, !dbg !64
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !65 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct._xmlParserNsData*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !68, metadata !DIExpression()), !dbg !69
  %4 = bitcast i32* %2 to i8*, !dbg !70
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)), !dbg !71
  call void @llvm.dbg.declare(metadata %struct._xmlParserNsData** %3, metadata !72, metadata !DIExpression()), !dbg !73
  %5 = call %struct._xmlParserNsData* @xmlParserNsLookup(), !dbg !74
  store %struct._xmlParserNsData* %5, %struct._xmlParserNsData** %3, align 8, !dbg !73
  %6 = load %struct._xmlParserNsData*, %struct._xmlParserNsData** %3, align 8, !dbg !75
  %7 = icmp ne %struct._xmlParserNsData* %6, null, !dbg !77
  br i1 %7, label %8, label %10, !dbg !78

8:                                                ; preds = %0
  %9 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.3, i64 0, i64 0), i32 noundef 66, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !79
  br label %10, !dbg !81

10:                                               ; preds = %8, %0
  %11 = load %struct._xmlParserNsData*, %struct._xmlParserNsData** %3, align 8, !dbg !82
  %12 = icmp ne %struct._xmlParserNsData* %11, null, !dbg !84
  br i1 %12, label %13, label %16, !dbg !85

13:                                               ; preds = %10
  %14 = load %struct._xmlParserNsData*, %struct._xmlParserNsData** %3, align 8, !dbg !86
  %15 = bitcast %struct._xmlParserNsData* %14 to i8*, !dbg !86
  call void @free(i8* noundef %15) #7, !dbg !88
  br label %16, !dbg !89

16:                                               ; preds = %13, %10
  ret i32 0, !dbg !90
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !91 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !95, metadata !DIExpression()), !dbg !96
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !97, metadata !DIExpression()), !dbg !98
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !99, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.declare(metadata i8** %7, metadata !101, metadata !DIExpression()), !dbg !104
  %8 = load i8*, i8** %4, align 8, !dbg !105
  store i8* %8, i8** %7, align 8, !dbg !104
  br label %9, !dbg !106

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !107
  %11 = add i64 %10, -1, !dbg !107
  store i64 %11, i64* %6, align 8, !dbg !107
  %12 = icmp ugt i64 %10, 0, !dbg !108
  br i1 %12, label %13, label %18, !dbg !106

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !109
  %15 = trunc i32 %14 to i8, !dbg !109
  %16 = load i8*, i8** %7, align 8, !dbg !110
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !110
  store i8* %17, i8** %7, align 8, !dbg !110
  store i8 %15, i8* %16, align 1, !dbg !111
  br label %9, !dbg !106, !llvm.loop !112

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !114
  ret i8* %19, !dbg !115
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13, !13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/290_parser.c_1406_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "d1416588db3603ba8ba7d03b56f089e0")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = distinct !DICompileUnit(language: DW_LANG_C99, file: !5, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!5 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 7, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"Ubuntu clang version 14.0.6"}
!14 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 18, type: !15, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!15 = !DISubroutineType(types: !16)
!16 = !{!3, !17}
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !18, line: 46, baseType: !19)
!18 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!19 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!20 = !{}
!21 = !DILocalVariable(name: "size", arg: 1, scope: !14, file: !1, line: 18, type: !17)
!22 = !DILocation(line: 18, column: 24, scope: !14)
!23 = !DILocalVariable(name: "ptr", scope: !14, file: !1, line: 19, type: !3)
!24 = !DILocation(line: 19, column: 11, scope: !14)
!25 = !DILocation(line: 19, column: 24, scope: !14)
!26 = !DILocation(line: 19, column: 17, scope: !14)
!27 = !DILocation(line: 20, column: 9, scope: !28)
!28 = distinct !DILexicalBlock(scope: !14, file: !1, line: 20, column: 9)
!29 = !DILocation(line: 20, column: 9, scope: !14)
!30 = !DILocation(line: 21, column: 28, scope: !31)
!31 = distinct !DILexicalBlock(scope: !28, file: !1, line: 20, column: 14)
!32 = !DILocation(line: 21, column: 33, scope: !31)
!33 = !DILocation(line: 21, column: 9, scope: !31)
!34 = !DILocation(line: 22, column: 5, scope: !31)
!35 = !DILocation(line: 23, column: 12, scope: !14)
!36 = !DILocation(line: 23, column: 5, scope: !14)
!37 = distinct !DISubprogram(name: "xmlParserNsCreate", scope: !1, file: !1, line: 27, type: !38, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!38 = !DISubroutineType(types: !39)
!39 = !{!40}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserNsData", file: !1, line: 11, baseType: !42)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserNsData", file: !1, line: 12, size: 32, elements: !43)
!43 = !{!44}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "defaultNsIndex", scope: !42, file: !1, line: 13, baseType: !45, size: 32)
!45 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!46 = !DILocalVariable(name: "nsdb", scope: !37, file: !1, line: 28, type: !40)
!47 = !DILocation(line: 28, column: 22, scope: !37)
!48 = !DILocation(line: 28, column: 29, scope: !37)
!49 = !DILocation(line: 30, column: 9, scope: !50)
!50 = distinct !DILexicalBlock(scope: !37, file: !1, line: 30, column: 9)
!51 = !DILocation(line: 30, column: 14, scope: !50)
!52 = !DILocation(line: 30, column: 9, scope: !37)
!53 = !DILocation(line: 31, column: 9, scope: !50)
!54 = !DILocation(line: 34, column: 12, scope: !37)
!55 = !DILocation(line: 34, column: 5, scope: !37)
!56 = !DILocation(line: 36, column: 5, scope: !37)
!57 = !DILocation(line: 36, column: 11, scope: !37)
!58 = !DILocation(line: 36, column: 26, scope: !37)
!59 = !DILocation(line: 38, column: 12, scope: !37)
!60 = !DILocation(line: 38, column: 5, scope: !37)
!61 = !DILocation(line: 39, column: 1, scope: !37)
!62 = distinct !DISubprogram(name: "xmlParserNsLookup", scope: !1, file: !1, line: 42, type: !38, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!63 = !DILocation(line: 44, column: 12, scope: !62)
!64 = !DILocation(line: 44, column: 5, scope: !62)
!65 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 47, type: !66, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!66 = !DISubroutineType(types: !67)
!67 = !{!45}
!68 = !DILocalVariable(name: "symbolic_control", scope: !65, file: !1, line: 49, type: !45)
!69 = !DILocation(line: 49, column: 9, scope: !65)
!70 = !DILocation(line: 50, column: 24, scope: !65)
!71 = !DILocation(line: 50, column: 5, scope: !65)
!72 = !DILocalVariable(name: "result", scope: !65, file: !1, line: 53, type: !40)
!73 = !DILocation(line: 53, column: 22, scope: !65)
!74 = !DILocation(line: 53, column: 31, scope: !65)
!75 = !DILocation(line: 59, column: 9, scope: !76)
!76 = distinct !DILexicalBlock(scope: !65, file: !1, line: 59, column: 9)
!77 = !DILocation(line: 59, column: 16, scope: !76)
!78 = !DILocation(line: 59, column: 9, scope: !65)
!79 = !DILocation(line: 66, column: 9, scope: !80)
!80 = distinct !DILexicalBlock(scope: !76, file: !1, line: 59, column: 25)
!81 = !DILocation(line: 67, column: 5, scope: !80)
!82 = !DILocation(line: 70, column: 9, scope: !83)
!83 = distinct !DILexicalBlock(scope: !65, file: !1, line: 70, column: 9)
!84 = !DILocation(line: 70, column: 16, scope: !83)
!85 = !DILocation(line: 70, column: 9, scope: !65)
!86 = !DILocation(line: 71, column: 14, scope: !87)
!87 = distinct !DILexicalBlock(scope: !83, file: !1, line: 70, column: 25)
!88 = !DILocation(line: 71, column: 9, scope: !87)
!89 = !DILocation(line: 72, column: 5, scope: !87)
!90 = !DILocation(line: 74, column: 5, scope: !65)
!91 = distinct !DISubprogram(name: "memset", scope: !92, file: !92, line: 12, type: !93, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !20)
!92 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!93 = !DISubroutineType(types: !94)
!94 = !{!3, !3, !45, !17}
!95 = !DILocalVariable(name: "dst", arg: 1, scope: !91, file: !92, line: 12, type: !3)
!96 = !DILocation(line: 12, column: 20, scope: !91)
!97 = !DILocalVariable(name: "s", arg: 2, scope: !91, file: !92, line: 12, type: !45)
!98 = !DILocation(line: 12, column: 29, scope: !91)
!99 = !DILocalVariable(name: "count", arg: 3, scope: !91, file: !92, line: 12, type: !17)
!100 = !DILocation(line: 12, column: 39, scope: !91)
!101 = !DILocalVariable(name: "a", scope: !91, file: !92, line: 13, type: !102)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!104 = !DILocation(line: 13, column: 9, scope: !91)
!105 = !DILocation(line: 13, column: 13, scope: !91)
!106 = !DILocation(line: 14, column: 3, scope: !91)
!107 = !DILocation(line: 14, column: 15, scope: !91)
!108 = !DILocation(line: 14, column: 18, scope: !91)
!109 = !DILocation(line: 15, column: 12, scope: !91)
!110 = !DILocation(line: 15, column: 7, scope: !91)
!111 = !DILocation(line: 15, column: 10, scope: !91)
!112 = distinct !{!112, !106, !109, !113}
!113 = !{!"llvm.loop.mustprogress"}
!114 = !DILocation(line: 16, column: 10, scope: !91)
!115 = !DILocation(line: 16, column: 3, scope: !91)

; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/060_pattern.c_331_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/060_pattern.c_331_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlPatParserContext = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"symbolic_choice\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_62911_vul/060_pattern.c_331_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlPatMatch() #0 !dbg !21 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlPatParserContext*, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlPatParserContext** %2, metadata !25, metadata !DIExpression()), !dbg !26
  %3 = call noalias i8* @malloc(i64 noundef 4) #7, !dbg !27
  %4 = bitcast i8* %3 to %struct._xmlPatParserContext*, !dbg !28
  store %struct._xmlPatParserContext* %4, %struct._xmlPatParserContext** %2, align 8, !dbg !26
  %5 = load %struct._xmlPatParserContext*, %struct._xmlPatParserContext** %2, align 8, !dbg !29
  %6 = icmp eq %struct._xmlPatParserContext* %5, null, !dbg !31
  br i1 %6, label %7, label %8, !dbg !32

7:                                                ; preds = %0
  store i32 -1, i32* %1, align 4, !dbg !33
  br label %10, !dbg !33

8:                                                ; preds = %0
  %9 = load %struct._xmlPatParserContext*, %struct._xmlPatParserContext** %2, align 8, !dbg !35
  call void @xmlFreePatParserContext(%struct._xmlPatParserContext* noundef %9), !dbg !36
  store i32 0, i32* %1, align 4, !dbg !37
  br label %10, !dbg !37

10:                                               ; preds = %8, %7
  %11 = load i32, i32* %1, align 4, !dbg !38
  ret i32 %11, !dbg !38
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmlFreePatParserContext(%struct._xmlPatParserContext* noundef %0) #0 !dbg !39 {
  %2 = alloca %struct._xmlPatParserContext*, align 8
  store %struct._xmlPatParserContext* %0, %struct._xmlPatParserContext** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlPatParserContext** %2, metadata !42, metadata !DIExpression()), !dbg !43
  %3 = load %struct._xmlPatParserContext*, %struct._xmlPatParserContext** %2, align 8, !dbg !44
  %4 = icmp eq %struct._xmlPatParserContext* %3, null, !dbg !46
  br i1 %4, label %5, label %6, !dbg !47

5:                                                ; preds = %1
  br label %12, !dbg !48

6:                                                ; preds = %1
  %7 = load %struct._xmlPatParserContext*, %struct._xmlPatParserContext** %2, align 8, !dbg !49
  %8 = bitcast %struct._xmlPatParserContext* %7 to i8*, !dbg !50
  %9 = call i8* @memset(i8* %8, i32 255, i64 4), !dbg !50
  %10 = load %struct._xmlPatParserContext*, %struct._xmlPatParserContext** %2, align 8, !dbg !51
  %11 = bitcast %struct._xmlPatParserContext* %10 to i8*, !dbg !51
  call void @xmlFree(i8* noundef %11), !dbg !52
  br label %12, !dbg !53

12:                                               ; preds = %6, %5
  ret void, !dbg !53
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !54 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !55, metadata !DIExpression()), !dbg !56
  %4 = bitcast i32* %2 to i8*, !dbg !57
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !58
  %5 = load i32, i32* %2, align 4, !dbg !59
  %6 = icmp sgt i32 %5, 0, !dbg !60
  %7 = zext i1 %6 to i32, !dbg !60
  %8 = sext i32 %7 to i64, !dbg !59
  call void @klee_assume(i64 noundef %8), !dbg !61
  call void @llvm.dbg.declare(metadata i32* %3, metadata !62, metadata !DIExpression()), !dbg !63
  %9 = call i32 @xmlPatMatch(), !dbg !64
  store i32 %9, i32* %3, align 4, !dbg !63
  %10 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.2, i64 0, i64 0), i32 noundef 75, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !65
  %11 = load i32, i32* %3, align 4, !dbg !66
  ret i32 %11, !dbg !67
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmlFree(i8* noundef %0) #0 !dbg !68 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !71, metadata !DIExpression()), !dbg !72
  %3 = load i8*, i8** %2, align 8, !dbg !73
  call void @free(i8* noundef %3) #7, !dbg !74
  ret void, !dbg !75
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !76 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !83, metadata !DIExpression()), !dbg !84
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !85, metadata !DIExpression()), !dbg !86
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !87, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.declare(metadata i8** %7, metadata !89, metadata !DIExpression()), !dbg !92
  %8 = load i8*, i8** %4, align 8, !dbg !93
  store i8* %8, i8** %7, align 8, !dbg !92
  br label %9, !dbg !94

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !95
  %11 = add i64 %10, -1, !dbg !95
  store i64 %11, i64* %6, align 8, !dbg !95
  %12 = icmp ugt i64 %10, 0, !dbg !96
  br i1 %12, label %13, label %18, !dbg !94

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !97
  %15 = trunc i32 %14 to i8, !dbg !97
  %16 = load i8*, i8** %7, align 8, !dbg !98
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !98
  store i8* %17, i8** %7, align 8, !dbg !98
  store i8 %15, i8* %16, align 1, !dbg !99
  br label %9, !dbg !94, !llvm.loop !100

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !102
  ret i8* %19, !dbg !103
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20, !20}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/060_pattern.c_331_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "eddbfb047146e106808512bd5c131a46")
!2 = !{!3, !10}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlPatParserContextPtr", file: !1, line: 11, baseType: !4)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlPatParserContext", file: !1, line: 10, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlPatParserContext", file: !1, line: 14, size: 32, elements: !7)
!7 = !{!8}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !6, file: !1, line: 16, baseType: !9, size: 32)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!11 = distinct !DICompileUnit(language: DW_LANG_C99, file: !12, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!12 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!13 = !{i32 7, !"Dwarf Version", i32 5}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = !{i32 7, !"PIC Level", i32 2}
!17 = !{i32 7, !"PIE Level", i32 2}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"Ubuntu clang version 14.0.6"}
!21 = distinct !DISubprogram(name: "xmlPatMatch", scope: !1, file: !1, line: 33, type: !22, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!22 = !DISubroutineType(types: !23)
!23 = !{!9}
!24 = !{}
!25 = !DILocalVariable(name: "ctxt", scope: !21, file: !1, line: 35, type: !3)
!26 = !DILocation(line: 35, column: 28, scope: !21)
!27 = !DILocation(line: 35, column: 59, scope: !21)
!28 = !DILocation(line: 35, column: 35, scope: !21)
!29 = !DILocation(line: 36, column: 9, scope: !30)
!30 = distinct !DILexicalBlock(scope: !21, file: !1, line: 36, column: 9)
!31 = !DILocation(line: 36, column: 14, scope: !30)
!32 = !DILocation(line: 36, column: 9, scope: !21)
!33 = !DILocation(line: 37, column: 9, scope: !34)
!34 = distinct !DILexicalBlock(scope: !30, file: !1, line: 36, column: 23)
!35 = !DILocation(line: 41, column: 29, scope: !21)
!36 = !DILocation(line: 41, column: 5, scope: !21)
!37 = !DILocation(line: 43, column: 5, scope: !21)
!38 = !DILocation(line: 44, column: 1, scope: !21)
!39 = distinct !DISubprogram(name: "xmlFreePatParserContext", scope: !1, file: !1, line: 25, type: !40, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !24)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !3}
!42 = !DILocalVariable(name: "ctxt", arg: 1, scope: !39, file: !1, line: 25, type: !3)
!43 = !DILocation(line: 25, column: 60, scope: !39)
!44 = !DILocation(line: 26, column: 9, scope: !45)
!45 = distinct !DILexicalBlock(scope: !39, file: !1, line: 26, column: 9)
!46 = !DILocation(line: 26, column: 14, scope: !45)
!47 = !DILocation(line: 26, column: 9, scope: !39)
!48 = !DILocation(line: 27, column: 9, scope: !45)
!49 = !DILocation(line: 28, column: 12, scope: !39)
!50 = !DILocation(line: 28, column: 5, scope: !39)
!51 = !DILocation(line: 29, column: 13, scope: !39)
!52 = !DILocation(line: 29, column: 5, scope: !39)
!53 = !DILocation(line: 30, column: 1, scope: !39)
!54 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 46, type: !22, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!55 = !DILocalVariable(name: "symbolic_choice", scope: !54, file: !1, line: 48, type: !9)
!56 = !DILocation(line: 48, column: 9, scope: !54)
!57 = !DILocation(line: 49, column: 24, scope: !54)
!58 = !DILocation(line: 49, column: 5, scope: !54)
!59 = !DILocation(line: 52, column: 17, scope: !54)
!60 = !DILocation(line: 52, column: 33, scope: !54)
!61 = !DILocation(line: 52, column: 5, scope: !54)
!62 = !DILocalVariable(name: "result", scope: !54, file: !1, line: 55, type: !9)
!63 = !DILocation(line: 55, column: 9, scope: !54)
!64 = !DILocation(line: 55, column: 18, scope: !54)
!65 = !DILocation(line: 75, column: 5, scope: !54)
!66 = !DILocation(line: 77, column: 12, scope: !54)
!67 = !DILocation(line: 77, column: 5, scope: !54)
!68 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 20, type: !69, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !24)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !10}
!71 = !DILocalVariable(name: "ptr", arg: 1, scope: !68, file: !1, line: 20, type: !10)
!72 = !DILocation(line: 20, column: 27, scope: !68)
!73 = !DILocation(line: 21, column: 10, scope: !68)
!74 = !DILocation(line: 21, column: 5, scope: !68)
!75 = !DILocation(line: 22, column: 1, scope: !68)
!76 = distinct !DISubprogram(name: "memset", scope: !77, file: !77, line: 12, type: !78, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !24)
!77 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!78 = !DISubroutineType(types: !79)
!79 = !{!10, !10, !9, !80}
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !81, line: 46, baseType: !82)
!81 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!82 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!83 = !DILocalVariable(name: "dst", arg: 1, scope: !76, file: !77, line: 12, type: !10)
!84 = !DILocation(line: 12, column: 20, scope: !76)
!85 = !DILocalVariable(name: "s", arg: 2, scope: !76, file: !77, line: 12, type: !9)
!86 = !DILocation(line: 12, column: 29, scope: !76)
!87 = !DILocalVariable(name: "count", arg: 3, scope: !76, file: !77, line: 12, type: !80)
!88 = !DILocation(line: 12, column: 39, scope: !76)
!89 = !DILocalVariable(name: "a", scope: !76, file: !77, line: 13, type: !90)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!92 = !DILocation(line: 13, column: 9, scope: !76)
!93 = !DILocation(line: 13, column: 13, scope: !76)
!94 = !DILocation(line: 14, column: 3, scope: !76)
!95 = !DILocation(line: 14, column: 15, scope: !76)
!96 = !DILocation(line: 14, column: 18, scope: !76)
!97 = !DILocation(line: 15, column: 12, scope: !76)
!98 = !DILocation(line: 15, column: 7, scope: !76)
!99 = !DILocation(line: 15, column: 10, scope: !76)
!100 = distinct !{!100, !94, !97, !101}
!101 = !{!"llvm.loop.mustprogress"}
!102 = !DILocation(line: 16, column: 10, scope: !76)
!103 = !DILocation(line: 16, column: 3, scope: !76)

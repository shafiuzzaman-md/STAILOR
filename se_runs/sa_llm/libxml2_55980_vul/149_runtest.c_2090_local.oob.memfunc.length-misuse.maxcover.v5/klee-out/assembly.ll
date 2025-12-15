; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/149_runtest.c_2090_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/149_runtest.c_2090_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSAXHandler = type { void (i8*, i8*, i8**)*, void (i8*, i8*)* }

@nb_tests = dso_local global i32 0, align 4, !dbg !0
@options = dso_local global i32 0, align 4, !dbg !5
@.str = private unnamed_addr constant [8 x i8] c"options\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_55980_vul/149_runtest.c_2090_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSAX2InitHtmlDefaultSAXHandler(%struct._xmlSAXHandler* noundef %0) #0 !dbg !18 {
  %2 = alloca %struct._xmlSAXHandler*, align 8
  store %struct._xmlSAXHandler* %0, %struct._xmlSAXHandler** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSAXHandler** %2, metadata !40, metadata !DIExpression()), !dbg !41
  ret void, !dbg !42
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @startElementBnd(i8* noundef %0, i8* noundef %1, i8** noundef %2) #0 !dbg !43 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !44, metadata !DIExpression()), !dbg !45
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !46, metadata !DIExpression()), !dbg !47
  store i8** %2, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !48, metadata !DIExpression()), !dbg !49
  ret void, !dbg !50
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @endElementBnd(i8* noundef %0, i8* noundef %1) #0 !dbg !51 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !52, metadata !DIExpression()), !dbg !53
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !54, metadata !DIExpression()), !dbg !55
  ret void, !dbg !56
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !57 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlSAXHandler, align 8
  store i32 0, i32* %1, align 4
  call void @klee_make_symbolic(i8* noundef bitcast (i32* @options to i8*), i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)), !dbg !60
  %3 = load i32, i32* @options, align 4, !dbg !61
  %4 = icmp eq i32 %3, 0, !dbg !62
  br i1 %4, label %8, label %5, !dbg !63

5:                                                ; preds = %0
  %6 = load i32, i32* @options, align 4, !dbg !64
  %7 = icmp eq i32 %6, 1, !dbg !65
  br label %8, !dbg !63

8:                                                ; preds = %5, %0
  %9 = phi i1 [ true, %0 ], [ %7, %5 ]
  %10 = zext i1 %9 to i32, !dbg !63
  %11 = sext i32 %10 to i64, !dbg !61
  call void @klee_assume(i64 noundef %11), !dbg !66
  %12 = load i32, i32* @nb_tests, align 4, !dbg !67
  %13 = add nsw i32 %12, 1, !dbg !67
  store i32 %13, i32* @nb_tests, align 4, !dbg !67
  call void @llvm.dbg.declare(metadata %struct._xmlSAXHandler* %2, metadata !68, metadata !DIExpression()), !dbg !69
  %14 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.2, i64 0, i64 0), i32 noundef 54, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !70
  %15 = bitcast %struct._xmlSAXHandler* %2 to i8*, !dbg !71
  %16 = call i8* @memset(i8* %15, i32 0, i64 16), !dbg !71
  ret i32 0, !dbg !72
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #5 !dbg !73 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !80, metadata !DIExpression()), !dbg !81
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !82, metadata !DIExpression()), !dbg !83
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !84, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.declare(metadata i8** %7, metadata !86, metadata !DIExpression()), !dbg !88
  %8 = load i8*, i8** %4, align 8, !dbg !89
  store i8* %8, i8** %7, align 8, !dbg !88
  br label %9, !dbg !90

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !91
  %11 = add i64 %10, -1, !dbg !91
  store i64 %11, i64* %6, align 8, !dbg !91
  %12 = icmp ugt i64 %10, 0, !dbg !92
  br i1 %12, label %13, label %18, !dbg !90

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !93
  %15 = trunc i32 %14 to i8, !dbg !93
  %16 = load i8*, i8** %7, align 8, !dbg !94
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !94
  store i8* %17, i8** %7, align 8, !dbg !94
  store i8 %15, i8* %16, align 1, !dbg !95
  br label %9, !dbg !90, !llvm.loop !96

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !98
  ret i8* %19, !dbg !99
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!2, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17, !17}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "nb_tests", scope: !2, file: !3, line: 29, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/149_runtest.c_2090_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "3fbb0afc3b96be04bdac85b58d7f7199")
!4 = !{!0, !5}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "options", scope: !2, file: !3, line: 30, type: !7, isLocal: false, isDefinition: true)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = distinct !DICompileUnit(language: DW_LANG_C99, file: !9, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!9 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!10 = !{i32 7, !"Dwarf Version", i32 5}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{i32 7, !"PIC Level", i32 2}
!14 = !{i32 7, !"PIE Level", i32 2}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"Ubuntu clang version 14.0.6"}
!18 = distinct !DISubprogram(name: "xmlSAX2InitHtmlDefaultSAXHandler", scope: !3, file: !3, line: 20, type: !19, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !39)
!19 = !DISubroutineType(types: !20)
!20 = !{null, !21}
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSAXHandlerPtr", file: !3, line: 11, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSAXHandler", file: !3, line: 10, baseType: !24)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSAXHandler", file: !3, line: 13, size: 128, elements: !25)
!25 = !{!26, !35}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "startElement", scope: !24, file: !3, line: 14, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !30, !31, !34}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!33 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "endElement", scope: !24, file: !3, line: 15, baseType: !36, size: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !30, !31}
!39 = !{}
!40 = !DILocalVariable(name: "h", arg: 1, scope: !18, file: !3, line: 20, type: !21)
!41 = !DILocation(line: 20, column: 56, scope: !18)
!42 = !DILocation(line: 22, column: 1, scope: !18)
!43 = distinct !DISubprogram(name: "startElementBnd", scope: !3, file: !3, line: 25, type: !28, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !39)
!44 = !DILocalVariable(name: "ctx", arg: 1, scope: !43, file: !3, line: 25, type: !30)
!45 = !DILocation(line: 25, column: 28, scope: !43)
!46 = !DILocalVariable(name: "name", arg: 2, scope: !43, file: !3, line: 25, type: !31)
!47 = !DILocation(line: 25, column: 45, scope: !43)
!48 = !DILocalVariable(name: "atts", arg: 3, scope: !43, file: !3, line: 25, type: !34)
!49 = !DILocation(line: 25, column: 64, scope: !43)
!50 = !DILocation(line: 25, column: 71, scope: !43)
!51 = distinct !DISubprogram(name: "endElementBnd", scope: !3, file: !3, line: 26, type: !37, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !39)
!52 = !DILocalVariable(name: "ctx", arg: 1, scope: !51, file: !3, line: 26, type: !30)
!53 = !DILocation(line: 26, column: 26, scope: !51)
!54 = !DILocalVariable(name: "name", arg: 2, scope: !51, file: !3, line: 26, type: !31)
!55 = !DILocation(line: 26, column: 43, scope: !51)
!56 = !DILocation(line: 26, column: 50, scope: !51)
!57 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 33, type: !58, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !39)
!58 = !DISubroutineType(types: !59)
!59 = !{!7}
!60 = !DILocation(line: 35, column: 5, scope: !57)
!61 = !DILocation(line: 38, column: 17, scope: !57)
!62 = !DILocation(line: 38, column: 25, scope: !57)
!63 = !DILocation(line: 38, column: 30, scope: !57)
!64 = !DILocation(line: 38, column: 33, scope: !57)
!65 = !DILocation(line: 38, column: 41, scope: !57)
!66 = !DILocation(line: 38, column: 5, scope: !57)
!67 = !DILocation(line: 41, column: 13, scope: !57)
!68 = !DILocalVariable(name: "bndSAX", scope: !57, file: !3, line: 44, type: !23)
!69 = !DILocation(line: 44, column: 19, scope: !57)
!70 = !DILocation(line: 54, column: 5, scope: !57)
!71 = !DILocation(line: 57, column: 5, scope: !57)
!72 = !DILocation(line: 67, column: 5, scope: !57)
!73 = distinct !DISubprogram(name: "memset", scope: !74, file: !74, line: 12, type: !75, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !39)
!74 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!75 = !DISubroutineType(types: !76)
!76 = !{!30, !30, !7, !77}
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !78, line: 46, baseType: !79)
!78 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!79 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!80 = !DILocalVariable(name: "dst", arg: 1, scope: !73, file: !74, line: 12, type: !30)
!81 = !DILocation(line: 12, column: 20, scope: !73)
!82 = !DILocalVariable(name: "s", arg: 2, scope: !73, file: !74, line: 12, type: !7)
!83 = !DILocation(line: 12, column: 29, scope: !73)
!84 = !DILocalVariable(name: "count", arg: 3, scope: !73, file: !74, line: 12, type: !77)
!85 = !DILocation(line: 12, column: 39, scope: !73)
!86 = !DILocalVariable(name: "a", scope: !73, file: !74, line: 13, type: !87)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!88 = !DILocation(line: 13, column: 9, scope: !73)
!89 = !DILocation(line: 13, column: 13, scope: !73)
!90 = !DILocation(line: 14, column: 3, scope: !73)
!91 = !DILocation(line: 14, column: 15, scope: !73)
!92 = !DILocation(line: 14, column: 18, scope: !73)
!93 = !DILocation(line: 15, column: 12, scope: !73)
!94 = !DILocation(line: 15, column: 7, scope: !73)
!95 = !DILocation(line: 15, column: 10, scope: !73)
!96 = distinct !{!96, !90, !93, !97}
!97 = !{!"llvm.loop.mustprogress"}
!98 = !DILocation(line: 16, column: 10, scope: !73)
!99 = !DILocation(line: 16, column: 3, scope: !73)

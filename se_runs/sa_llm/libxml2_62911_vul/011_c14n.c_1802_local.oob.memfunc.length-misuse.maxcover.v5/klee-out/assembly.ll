; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/011_c14n.c_1802_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/011_c14n.c_1802_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlC14NCtx = type { %struct._xmlDoc* }
%struct._xmlDoc = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"creating context\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/011_c14n.c_1802_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlC14NProcessAttrsAxis = private unnamed_addr constant [48 x i8] c"xmlC14NCtxPtr xmlC14NProcessAttrsAxis(xmlDoc *)\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"doc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlC14NErrMemory(i8* noundef %0) #0 !dbg !26 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !33, metadata !DIExpression()), !dbg !34
  ret void, !dbg !35
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !36 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !42, metadata !DIExpression()), !dbg !43
  %3 = load i64, i64* %2, align 8, !dbg !44
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !45
  ret i8* %4, !dbg !46
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlC14NCtx* @xmlC14NProcessAttrsAxis(%struct._xmlDoc* noundef %0) #0 !dbg !47 {
  %2 = alloca %struct._xmlC14NCtx*, align 8
  %3 = alloca %struct._xmlDoc*, align 8
  %4 = alloca %struct._xmlC14NCtx*, align 8
  store %struct._xmlDoc* %0, %struct._xmlDoc** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %3, metadata !50, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.declare(metadata %struct._xmlC14NCtx** %4, metadata !52, metadata !DIExpression()), !dbg !53
  %5 = call i8* @xmlMalloc(i64 noundef 8), !dbg !54
  %6 = bitcast i8* %5 to %struct._xmlC14NCtx*, !dbg !55
  store %struct._xmlC14NCtx* %6, %struct._xmlC14NCtx** %4, align 8, !dbg !56
  %7 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %4, align 8, !dbg !57
  %8 = icmp eq %struct._xmlC14NCtx* %7, null, !dbg !59
  br i1 %8, label %9, label %10, !dbg !60

9:                                                ; preds = %1
  call void @xmlC14NErrMemory(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)), !dbg !61
  store %struct._xmlC14NCtx* null, %struct._xmlC14NCtx** %2, align 8, !dbg !63
  br label %19, !dbg !63

10:                                               ; preds = %1
  %11 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.2, i64 0, i64 0), i32 noundef 51, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.xmlC14NProcessAttrsAxis, i64 0, i64 0)), !dbg !64
  %12 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %4, align 8, !dbg !65
  %13 = bitcast %struct._xmlC14NCtx* %12 to i8*, !dbg !66
  %14 = call i8* @memset(i8* %13, i32 0, i64 8), !dbg !66
  %15 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !67
  %16 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %4, align 8, !dbg !68
  %17 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %16, i32 0, i32 0, !dbg !69
  store %struct._xmlDoc* %15, %struct._xmlDoc** %17, align 8, !dbg !70
  %18 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %4, align 8, !dbg !71
  store %struct._xmlC14NCtx* %18, %struct._xmlC14NCtx** %2, align 8, !dbg !72
  br label %19, !dbg !72

19:                                               ; preds = %10, %9
  %20 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %2, align 8, !dbg !73
  ret %struct._xmlC14NCtx* %20, !dbg !73
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !74 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlDoc, align 4
  %3 = alloca %struct._xmlC14NCtx*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlDoc* %2, metadata !77, metadata !DIExpression()), !dbg !78
  %4 = bitcast %struct._xmlDoc* %2 to i8*, !dbg !79
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)), !dbg !80
  call void @llvm.dbg.declare(metadata %struct._xmlC14NCtx** %3, metadata !81, metadata !DIExpression()), !dbg !82
  %5 = call %struct._xmlC14NCtx* @xmlC14NProcessAttrsAxis(%struct._xmlDoc* noundef %2), !dbg !83
  store %struct._xmlC14NCtx* %5, %struct._xmlC14NCtx** %3, align 8, !dbg !82
  %6 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %3, align 8, !dbg !84
  %7 = icmp ne %struct._xmlC14NCtx* %6, null, !dbg !86
  br i1 %7, label %8, label %11, !dbg !87

8:                                                ; preds = %0
  %9 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %3, align 8, !dbg !88
  %10 = bitcast %struct._xmlC14NCtx* %9 to i8*, !dbg !88
  call void @free(i8* noundef %10) #7, !dbg !90
  br label %11, !dbg !91

11:                                               ; preds = %8, %0
  ret i32 0, !dbg !92
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !93 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !97, metadata !DIExpression()), !dbg !98
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !99, metadata !DIExpression()), !dbg !100
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !101, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.declare(metadata i8** %7, metadata !103, metadata !DIExpression()), !dbg !105
  %8 = load i8*, i8** %4, align 8, !dbg !106
  store i8* %8, i8** %7, align 8, !dbg !105
  br label %9, !dbg !107

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !108
  %11 = add i64 %10, -1, !dbg !108
  store i64 %11, i64* %6, align 8, !dbg !108
  %12 = icmp ugt i64 %10, 0, !dbg !109
  br i1 %12, label %13, label %18, !dbg !107

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !110
  %15 = trunc i32 %14 to i8, !dbg !110
  %16 = load i8*, i8** %7, align 8, !dbg !111
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !111
  store i8* %17, i8** %7, align 8, !dbg !111
  store i8 %15, i8* %16, align 1, !dbg !112
  br label %9, !dbg !107, !llvm.loop !113

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !115
  ret i8* %19, !dbg !116
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25, !25}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/011_c14n.c_1802_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "85922ec9afd95ec68d0a0dd961bd2e54")
!2 = !{!3, !15}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlC14NCtxPtr", file: !1, line: 12, baseType: !4)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlC14NCtx", file: !1, line: 11, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlC14NCtx", file: !1, line: 29, size: 64, elements: !7)
!7 = !{!8}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !6, file: !1, line: 30, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !1, line: 10, baseType: !11)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !1, line: 24, size: 32, elements: !12)
!12 = !{!13}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !11, file: !1, line: 25, baseType: !14, size: 32)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!16 = distinct !DICompileUnit(language: DW_LANG_C99, file: !17, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!17 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!18 = !{i32 7, !"Dwarf Version", i32 5}
!19 = !{i32 2, !"Debug Info Version", i32 3}
!20 = !{i32 1, !"wchar_size", i32 4}
!21 = !{i32 7, !"PIC Level", i32 2}
!22 = !{i32 7, !"PIE Level", i32 2}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"Ubuntu clang version 14.0.6"}
!26 = distinct !DISubprogram(name: "xmlC14NErrMemory", scope: !1, file: !1, line: 15, type: !27, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!27 = !DISubroutineType(types: !28)
!28 = !{null, !29}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!32 = !{}
!33 = !DILocalVariable(name: "msg", arg: 1, scope: !26, file: !1, line: 15, type: !29)
!34 = !DILocation(line: 15, column: 35, scope: !26)
!35 = !DILocation(line: 17, column: 1, scope: !26)
!36 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 19, type: !37, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!37 = !DISubroutineType(types: !38)
!38 = !{!15, !39}
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !40, line: 46, baseType: !41)
!40 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!41 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!42 = !DILocalVariable(name: "size", arg: 1, scope: !36, file: !1, line: 19, type: !39)
!43 = !DILocation(line: 19, column: 24, scope: !36)
!44 = !DILocation(line: 20, column: 19, scope: !36)
!45 = !DILocation(line: 20, column: 12, scope: !36)
!46 = !DILocation(line: 20, column: 5, scope: !36)
!47 = distinct !DISubprogram(name: "xmlC14NProcessAttrsAxis", scope: !1, file: !1, line: 35, type: !48, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!48 = !DISubroutineType(types: !49)
!49 = !{!3, !9}
!50 = !DILocalVariable(name: "doc", arg: 1, scope: !47, file: !1, line: 35, type: !9)
!51 = !DILocation(line: 35, column: 47, scope: !47)
!52 = !DILocalVariable(name: "ctx", scope: !47, file: !1, line: 36, type: !3)
!53 = !DILocation(line: 36, column: 19, scope: !47)
!54 = !DILocation(line: 39, column: 27, scope: !47)
!55 = !DILocation(line: 39, column: 11, scope: !47)
!56 = !DILocation(line: 39, column: 9, scope: !47)
!57 = !DILocation(line: 40, column: 9, scope: !58)
!58 = distinct !DILexicalBlock(scope: !47, file: !1, line: 40, column: 9)
!59 = !DILocation(line: 40, column: 13, scope: !58)
!60 = !DILocation(line: 40, column: 9, scope: !47)
!61 = !DILocation(line: 41, column: 9, scope: !62)
!62 = distinct !DILexicalBlock(scope: !58, file: !1, line: 40, column: 22)
!63 = !DILocation(line: 42, column: 9, scope: !62)
!64 = !DILocation(line: 51, column: 5, scope: !47)
!65 = !DILocation(line: 53, column: 12, scope: !47)
!66 = !DILocation(line: 53, column: 5, scope: !47)
!67 = !DILocation(line: 58, column: 16, scope: !47)
!68 = !DILocation(line: 58, column: 5, scope: !47)
!69 = !DILocation(line: 58, column: 10, scope: !47)
!70 = !DILocation(line: 58, column: 14, scope: !47)
!71 = !DILocation(line: 60, column: 12, scope: !47)
!72 = !DILocation(line: 60, column: 5, scope: !47)
!73 = !DILocation(line: 61, column: 1, scope: !47)
!74 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 63, type: !75, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!75 = !DISubroutineType(types: !76)
!76 = !{!14}
!77 = !DILocalVariable(name: "doc", scope: !74, file: !1, line: 64, type: !10)
!78 = !DILocation(line: 64, column: 12, scope: !74)
!79 = !DILocation(line: 67, column: 24, scope: !74)
!80 = !DILocation(line: 67, column: 5, scope: !74)
!81 = !DILocalVariable(name: "result", scope: !74, file: !1, line: 70, type: !3)
!82 = !DILocation(line: 70, column: 19, scope: !74)
!83 = !DILocation(line: 70, column: 28, scope: !74)
!84 = !DILocation(line: 73, column: 9, scope: !85)
!85 = distinct !DILexicalBlock(scope: !74, file: !1, line: 73, column: 9)
!86 = !DILocation(line: 73, column: 16, scope: !85)
!87 = !DILocation(line: 73, column: 9, scope: !74)
!88 = !DILocation(line: 74, column: 14, scope: !89)
!89 = distinct !DILexicalBlock(scope: !85, file: !1, line: 73, column: 25)
!90 = !DILocation(line: 74, column: 9, scope: !89)
!91 = !DILocation(line: 75, column: 5, scope: !89)
!92 = !DILocation(line: 77, column: 5, scope: !74)
!93 = distinct !DISubprogram(name: "memset", scope: !94, file: !94, line: 12, type: !95, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !32)
!94 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!95 = !DISubroutineType(types: !96)
!96 = !{!15, !15, !14, !39}
!97 = !DILocalVariable(name: "dst", arg: 1, scope: !93, file: !94, line: 12, type: !15)
!98 = !DILocation(line: 12, column: 20, scope: !93)
!99 = !DILocalVariable(name: "s", arg: 2, scope: !93, file: !94, line: 12, type: !14)
!100 = !DILocation(line: 12, column: 29, scope: !93)
!101 = !DILocalVariable(name: "count", arg: 3, scope: !93, file: !94, line: 12, type: !39)
!102 = !DILocation(line: 12, column: 39, scope: !93)
!103 = !DILocalVariable(name: "a", scope: !93, file: !94, line: 13, type: !104)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!105 = !DILocation(line: 13, column: 9, scope: !93)
!106 = !DILocation(line: 13, column: 13, scope: !93)
!107 = !DILocation(line: 14, column: 3, scope: !93)
!108 = !DILocation(line: 14, column: 15, scope: !93)
!109 = !DILocation(line: 14, column: 18, scope: !93)
!110 = !DILocation(line: 15, column: 12, scope: !93)
!111 = !DILocation(line: 15, column: 7, scope: !93)
!112 = !DILocation(line: 15, column: 10, scope: !93)
!113 = distinct !{!113, !107, !110, !114}
!114 = !{!"llvm.loop.mustprogress"}
!115 = !DILocation(line: 16, column: 10, scope: !93)
!116 = !DILocation(line: 16, column: 3, scope: !93)

; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/016_entities.c_163_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/016_entities.c_163_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlEntity = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"xmlCreateEntity: malloc failed\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"path_selector\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/016_entities.c_163_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !26 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !33, metadata !DIExpression()), !dbg !34
  %3 = load i64, i64* %2, align 8, !dbg !35
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !36
  ret i8* %4, !dbg !37
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlEntitiesErrMemory(i8* noundef %0) #0 !dbg !38 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !44, metadata !DIExpression()), !dbg !45
  ret void, !dbg !46
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlEntity* @xmlCreateEntity() #0 !dbg !47 {
  %1 = alloca %struct._xmlEntity*, align 8
  %2 = alloca %struct._xmlEntity*, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlEntity** %2, metadata !50, metadata !DIExpression()), !dbg !51
  %3 = call i8* @xmlMalloc(i64 noundef 4), !dbg !52
  %4 = bitcast i8* %3 to %struct._xmlEntity*, !dbg !53
  store %struct._xmlEntity* %4, %struct._xmlEntity** %2, align 8, !dbg !54
  %5 = load %struct._xmlEntity*, %struct._xmlEntity** %2, align 8, !dbg !55
  %6 = icmp eq %struct._xmlEntity* %5, null, !dbg !57
  br i1 %6, label %7, label %8, !dbg !58

7:                                                ; preds = %0
  call void @xmlEntitiesErrMemory(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0)), !dbg !59
  store %struct._xmlEntity* null, %struct._xmlEntity** %1, align 8, !dbg !61
  br label %15, !dbg !61

8:                                                ; preds = %0
  %9 = load %struct._xmlEntity*, %struct._xmlEntity** %2, align 8, !dbg !62
  %10 = bitcast %struct._xmlEntity* %9 to i8*, !dbg !63
  %11 = call i8* @memset(i8* %10, i32 0, i64 4), !dbg !63
  %12 = load %struct._xmlEntity*, %struct._xmlEntity** %2, align 8, !dbg !64
  %13 = getelementptr inbounds %struct._xmlEntity, %struct._xmlEntity* %12, i32 0, i32 0, !dbg !65
  store i32 0, i32* %13, align 4, !dbg !66
  %14 = load %struct._xmlEntity*, %struct._xmlEntity** %2, align 8, !dbg !67
  store %struct._xmlEntity* %14, %struct._xmlEntity** %1, align 8, !dbg !68
  br label %15, !dbg !68

15:                                               ; preds = %8, %7
  %16 = load %struct._xmlEntity*, %struct._xmlEntity** %1, align 8, !dbg !69
  ret %struct._xmlEntity* %16, !dbg !69
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlEncodeEntitiesInternal() #0 !dbg !70 {
  %1 = call %struct._xmlEntity* @xmlCreateEntity(), !dbg !73
  ret void, !dbg !74
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !75 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !79, metadata !DIExpression()), !dbg !80
  %3 = bitcast i32* %2 to i8*, !dbg !81
  call void @klee_make_symbolic(i8* noundef %3, i64 noundef 4, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)), !dbg !82
  %4 = load i32, i32* %2, align 4, !dbg !83
  %5 = icmp sgt i32 %4, 0, !dbg !84
  %6 = zext i1 %5 to i32, !dbg !84
  %7 = sext i32 %6 to i64, !dbg !83
  call void @klee_assume(i64 noundef %7), !dbg !85
  call void @xmlEncodeEntitiesInternal(), !dbg !86
  %8 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.3, i64 0, i64 0), i32 noundef 77, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !87
  ret i32 0, !dbg !88
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !89 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !93, metadata !DIExpression()), !dbg !94
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !95, metadata !DIExpression()), !dbg !96
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !97, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.declare(metadata i8** %7, metadata !99, metadata !DIExpression()), !dbg !101
  %8 = load i8*, i8** %4, align 8, !dbg !102
  store i8* %8, i8** %7, align 8, !dbg !101
  br label %9, !dbg !103

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !104
  %11 = add i64 %10, -1, !dbg !104
  store i64 %11, i64* %6, align 8, !dbg !104
  %12 = icmp ugt i64 %10, 0, !dbg !105
  br i1 %12, label %13, label %18, !dbg !103

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !106
  %15 = trunc i32 %14 to i8, !dbg !106
  %16 = load i8*, i8** %7, align 8, !dbg !107
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !107
  store i8* %17, i8** %7, align 8, !dbg !107
  store i8 %15, i8* %16, align 1, !dbg !108
  br label %9, !dbg !103, !llvm.loop !109

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !111
  ret i8* %19, !dbg !112
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25, !25}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !7, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/016_entities.c_163_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "2b4ac69ec1a8be7308d76664739ab8a9")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 13, baseType: !4, size: 32, elements: !5)
!4 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!5 = !{!6}
!6 = !DIEnumerator(name: "XML_ENTITY_DECL", value: 0)
!7 = !{!8, !15}
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEntityPtr", file: !1, line: 11, baseType: !9)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEntity", file: !1, line: 10, baseType: !11)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlEntity", file: !1, line: 17, size: 32, elements: !12)
!12 = !{!13}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !11, file: !1, line: 18, baseType: !14, size: 32)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEntityType", file: !1, line: 15, baseType: !3)
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
!26 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 23, type: !27, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!27 = !DISubroutineType(types: !28)
!28 = !{!15, !29}
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !30, line: 46, baseType: !31)
!30 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!31 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!32 = !{}
!33 = !DILocalVariable(name: "size", arg: 1, scope: !26, file: !1, line: 23, type: !29)
!34 = !DILocation(line: 23, column: 24, scope: !26)
!35 = !DILocation(line: 24, column: 19, scope: !26)
!36 = !DILocation(line: 24, column: 12, scope: !26)
!37 = !DILocation(line: 24, column: 5, scope: !26)
!38 = distinct !DISubprogram(name: "xmlEntitiesErrMemory", scope: !1, file: !1, line: 28, type: !39, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !41}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!43 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!44 = !DILocalVariable(name: "msg", arg: 1, scope: !38, file: !1, line: 28, type: !41)
!45 = !DILocation(line: 28, column: 39, scope: !38)
!46 = !DILocation(line: 30, column: 1, scope: !38)
!47 = distinct !DISubprogram(name: "xmlCreateEntity", scope: !1, file: !1, line: 33, type: !48, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!48 = !DISubroutineType(types: !49)
!49 = !{!8}
!50 = !DILocalVariable(name: "ret", scope: !47, file: !1, line: 34, type: !8)
!51 = !DILocation(line: 34, column: 18, scope: !47)
!52 = !DILocation(line: 36, column: 26, scope: !47)
!53 = !DILocation(line: 36, column: 11, scope: !47)
!54 = !DILocation(line: 36, column: 9, scope: !47)
!55 = !DILocation(line: 37, column: 9, scope: !56)
!56 = distinct !DILexicalBlock(scope: !47, file: !1, line: 37, column: 9)
!57 = !DILocation(line: 37, column: 13, scope: !56)
!58 = !DILocation(line: 37, column: 9, scope: !47)
!59 = !DILocation(line: 38, column: 9, scope: !60)
!60 = distinct !DILexicalBlock(scope: !56, file: !1, line: 37, column: 22)
!61 = !DILocation(line: 39, column: 9, scope: !60)
!62 = !DILocation(line: 43, column: 12, scope: !47)
!63 = !DILocation(line: 43, column: 5, scope: !47)
!64 = !DILocation(line: 45, column: 5, scope: !47)
!65 = !DILocation(line: 45, column: 10, scope: !47)
!66 = !DILocation(line: 45, column: 15, scope: !47)
!67 = !DILocation(line: 47, column: 12, scope: !47)
!68 = !DILocation(line: 47, column: 5, scope: !47)
!69 = !DILocation(line: 48, column: 1, scope: !47)
!70 = distinct !DISubprogram(name: "xmlEncodeEntitiesInternal", scope: !1, file: !1, line: 51, type: !71, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!71 = !DISubroutineType(types: !72)
!72 = !{null}
!73 = !DILocation(line: 53, column: 5, scope: !70)
!74 = !DILocation(line: 54, column: 1, scope: !70)
!75 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 56, type: !76, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!76 = !DISubroutineType(types: !77)
!77 = !{!78}
!78 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!79 = !DILocalVariable(name: "path_selector", scope: !75, file: !1, line: 58, type: !78)
!80 = !DILocation(line: 58, column: 9, scope: !75)
!81 = !DILocation(line: 59, column: 24, scope: !75)
!82 = !DILocation(line: 59, column: 5, scope: !75)
!83 = !DILocation(line: 62, column: 17, scope: !75)
!84 = !DILocation(line: 62, column: 31, scope: !75)
!85 = !DILocation(line: 62, column: 5, scope: !75)
!86 = !DILocation(line: 65, column: 5, scope: !75)
!87 = !DILocation(line: 77, column: 5, scope: !75)
!88 = !DILocation(line: 79, column: 5, scope: !75)
!89 = distinct !DISubprogram(name: "memset", scope: !90, file: !90, line: 12, type: !91, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !32)
!90 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!91 = !DISubroutineType(types: !92)
!92 = !{!15, !15, !78, !29}
!93 = !DILocalVariable(name: "dst", arg: 1, scope: !89, file: !90, line: 12, type: !15)
!94 = !DILocation(line: 12, column: 20, scope: !89)
!95 = !DILocalVariable(name: "s", arg: 2, scope: !89, file: !90, line: 12, type: !78)
!96 = !DILocation(line: 12, column: 29, scope: !89)
!97 = !DILocalVariable(name: "count", arg: 3, scope: !89, file: !90, line: 12, type: !29)
!98 = !DILocation(line: 12, column: 39, scope: !89)
!99 = !DILocalVariable(name: "a", scope: !89, file: !90, line: 13, type: !100)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!101 = !DILocation(line: 13, column: 9, scope: !89)
!102 = !DILocation(line: 13, column: 13, scope: !89)
!103 = !DILocation(line: 14, column: 3, scope: !89)
!104 = !DILocation(line: 14, column: 15, scope: !89)
!105 = !DILocation(line: 14, column: 18, scope: !89)
!106 = !DILocation(line: 15, column: 12, scope: !89)
!107 = !DILocation(line: 15, column: 7, scope: !89)
!108 = !DILocation(line: 15, column: 10, scope: !89)
!109 = distinct !{!109, !103, !106, !110}
!110 = !{!"llvm.loop.mustprogress"}
!111 = !DILocation(line: 16, column: 10, scope: !89)
!112 = !DILocation(line: 16, column: 3, scope: !89)

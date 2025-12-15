; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/304_xmlschemastypes.c_381_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/304_xmlschemastypes.c_381_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaParticle = type { i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"allocating particle component\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"(ret != ((void*)0) && sizeof(xmlSchemaParticle) > 0) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [113 x i8] c"se_runs/sa_llm/libxml2_55980_vul/304_xmlschemastypes.c_381_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlSchemaNewParticle = private unnamed_addr constant [48 x i8] c"xmlSchemaParticlePtr xmlSchemaNewParticle(void)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"symbolic_input\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !23 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !30, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata i8** %3, metadata !32, metadata !DIExpression()), !dbg !33
  %4 = load i64, i64* %2, align 8, !dbg !34
  %5 = call noalias i8* @malloc(i64 noundef %4) #7, !dbg !35
  store i8* %5, i8** %3, align 8, !dbg !33
  %6 = load i8*, i8** %3, align 8, !dbg !36
  ret i8* %6, !dbg !37
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchemaTypeErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !38 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !44, metadata !DIExpression()), !dbg !45
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !46, metadata !DIExpression()), !dbg !47
  ret void, !dbg !48
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlSchemaParticle* @xmlSchemaNewParticle() #0 !dbg !49 {
  %1 = alloca %struct._xmlSchemaParticle*, align 8
  %2 = alloca %struct._xmlSchemaParticle*, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaParticle** %2, metadata !52, metadata !DIExpression()), !dbg !53
  store %struct._xmlSchemaParticle* null, %struct._xmlSchemaParticle** %2, align 8, !dbg !53
  %3 = call i8* @xmlMalloc(i64 noundef 12), !dbg !54
  %4 = bitcast i8* %3 to %struct._xmlSchemaParticle*, !dbg !55
  store %struct._xmlSchemaParticle* %4, %struct._xmlSchemaParticle** %2, align 8, !dbg !56
  %5 = load %struct._xmlSchemaParticle*, %struct._xmlSchemaParticle** %2, align 8, !dbg !57
  %6 = icmp eq %struct._xmlSchemaParticle* %5, null, !dbg !59
  br i1 %6, label %7, label %8, !dbg !60

7:                                                ; preds = %0
  call void @xmlSchemaTypeErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0)), !dbg !61
  store %struct._xmlSchemaParticle* null, %struct._xmlSchemaParticle** %1, align 8, !dbg !63
  br label %27, !dbg !63

8:                                                ; preds = %0
  %9 = load %struct._xmlSchemaParticle*, %struct._xmlSchemaParticle** %2, align 8, !dbg !64
  %10 = bitcast %struct._xmlSchemaParticle* %9 to i8*, !dbg !65
  %11 = call i8* @memset(i8* %10, i32 0, i64 12), !dbg !65
  %12 = load %struct._xmlSchemaParticle*, %struct._xmlSchemaParticle** %2, align 8, !dbg !66
  %13 = icmp ne %struct._xmlSchemaParticle* %12, null, !dbg !66
  br i1 %13, label %14, label %16, !dbg !66

14:                                               ; preds = %8
  br i1 true, label %15, label %16, !dbg !66

15:                                               ; preds = %14
  br label %18, !dbg !66

16:                                               ; preds = %14, %8
  %17 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([113 x i8], [113 x i8]* @.str.3, i64 0, i64 0), i32 noundef 52, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.xmlSchemaNewParticle, i64 0, i64 0)), !dbg !66
  br label %18, !dbg !66

18:                                               ; preds = %16, %15
  %19 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([113 x i8], [113 x i8]* @.str.3, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.xmlSchemaNewParticle, i64 0, i64 0)), !dbg !67
  %20 = load %struct._xmlSchemaParticle*, %struct._xmlSchemaParticle** %2, align 8, !dbg !68
  %21 = getelementptr inbounds %struct._xmlSchemaParticle, %struct._xmlSchemaParticle* %20, i32 0, i32 0, !dbg !69
  store i32 1, i32* %21, align 4, !dbg !70
  %22 = load %struct._xmlSchemaParticle*, %struct._xmlSchemaParticle** %2, align 8, !dbg !71
  %23 = getelementptr inbounds %struct._xmlSchemaParticle, %struct._xmlSchemaParticle* %22, i32 0, i32 1, !dbg !72
  store i32 1, i32* %23, align 4, !dbg !73
  %24 = load %struct._xmlSchemaParticle*, %struct._xmlSchemaParticle** %2, align 8, !dbg !74
  %25 = getelementptr inbounds %struct._xmlSchemaParticle, %struct._xmlSchemaParticle* %24, i32 0, i32 2, !dbg !75
  store i32 1, i32* %25, align 4, !dbg !76
  %26 = load %struct._xmlSchemaParticle*, %struct._xmlSchemaParticle** %2, align 8, !dbg !77
  store %struct._xmlSchemaParticle* %26, %struct._xmlSchemaParticle** %1, align 8, !dbg !78
  br label %27, !dbg !78

27:                                               ; preds = %18, %7
  %28 = load %struct._xmlSchemaParticle*, %struct._xmlSchemaParticle** %1, align 8, !dbg !79
  ret %struct._xmlSchemaParticle* %28, !dbg !79
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !80 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct._xmlSchemaParticle*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !83, metadata !DIExpression()), !dbg !84
  %4 = bitcast i32* %2 to i8*, !dbg !85
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0)), !dbg !86
  %5 = load i32, i32* %2, align 4, !dbg !87
  %6 = icmp sgt i32 %5, 0, !dbg !88
  %7 = zext i1 %6 to i32, !dbg !88
  %8 = sext i32 %7 to i64, !dbg !87
  call void @klee_assume(i64 noundef %8), !dbg !89
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaParticle** %3, metadata !90, metadata !DIExpression()), !dbg !91
  %9 = call %struct._xmlSchemaParticle* @xmlSchemaNewParticle(), !dbg !92
  store %struct._xmlSchemaParticle* %9, %struct._xmlSchemaParticle** %3, align 8, !dbg !91
  %10 = load %struct._xmlSchemaParticle*, %struct._xmlSchemaParticle** %3, align 8, !dbg !93
  %11 = icmp ne %struct._xmlSchemaParticle* %10, null, !dbg !95
  br i1 %11, label %12, label %15, !dbg !96

12:                                               ; preds = %0
  %13 = load %struct._xmlSchemaParticle*, %struct._xmlSchemaParticle** %3, align 8, !dbg !97
  %14 = bitcast %struct._xmlSchemaParticle* %13 to i8*, !dbg !97
  call void @free(i8* noundef %14) #7, !dbg !99
  br label %15, !dbg !100

15:                                               ; preds = %12, %0
  ret i32 0, !dbg !101
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !102 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !106, metadata !DIExpression()), !dbg !107
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !108, metadata !DIExpression()), !dbg !109
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !110, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.declare(metadata i8** %7, metadata !112, metadata !DIExpression()), !dbg !114
  %8 = load i8*, i8** %4, align 8, !dbg !115
  store i8* %8, i8** %7, align 8, !dbg !114
  br label %9, !dbg !116

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !117
  %11 = add i64 %10, -1, !dbg !117
  store i64 %11, i64* %6, align 8, !dbg !117
  %12 = icmp ugt i64 %10, 0, !dbg !118
  br i1 %12, label %13, label %18, !dbg !116

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !119
  %15 = trunc i32 %14 to i8, !dbg !119
  %16 = load i8*, i8** %7, align 8, !dbg !120
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !120
  store i8* %17, i8** %7, align 8, !dbg !120
  store i8 %15, i8* %16, align 1, !dbg !121
  br label %9, !dbg !116, !llvm.loop !122

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !124
  ret i8* %19, !dbg !125
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22, !22}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/304_xmlschemastypes.c_381_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "5a6a6905f69602c2174fb5229c2ed746")
!2 = !{!3, !12}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaParticlePtr", file: !1, line: 11, baseType: !4)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaParticle", file: !1, line: 10, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaParticle", file: !1, line: 13, size: 96, elements: !7)
!7 = !{!8, !10, !11}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6, file: !1, line: 14, baseType: !9, size: 32)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "minOccurs", scope: !6, file: !1, line: 15, baseType: !9, size: 32, offset: 32)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "maxOccurs", scope: !6, file: !1, line: 16, baseType: !9, size: 32, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
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
!23 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 23, type: !24, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!24 = !DISubroutineType(types: !25)
!25 = !{!12, !26}
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !27, line: 46, baseType: !28)
!27 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!28 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!29 = !{}
!30 = !DILocalVariable(name: "size", arg: 1, scope: !23, file: !1, line: 23, type: !26)
!31 = !DILocation(line: 23, column: 24, scope: !23)
!32 = !DILocalVariable(name: "ptr", scope: !23, file: !1, line: 24, type: !12)
!33 = !DILocation(line: 24, column: 11, scope: !23)
!34 = !DILocation(line: 24, column: 24, scope: !23)
!35 = !DILocation(line: 24, column: 17, scope: !23)
!36 = !DILocation(line: 25, column: 12, scope: !23)
!37 = !DILocation(line: 25, column: 5, scope: !23)
!38 = distinct !DISubprogram(name: "xmlSchemaTypeErrMemory", scope: !1, file: !1, line: 29, type: !39, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !12, !41}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!43 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!44 = !DILocalVariable(name: "ctxt", arg: 1, scope: !38, file: !1, line: 29, type: !12)
!45 = !DILocation(line: 29, column: 35, scope: !38)
!46 = !DILocalVariable(name: "msg", arg: 2, scope: !38, file: !1, line: 29, type: !41)
!47 = !DILocation(line: 29, column: 53, scope: !38)
!48 = !DILocation(line: 31, column: 1, scope: !38)
!49 = distinct !DISubprogram(name: "xmlSchemaNewParticle", scope: !1, file: !1, line: 34, type: !50, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!50 = !DISubroutineType(types: !51)
!51 = !{!3}
!52 = !DILocalVariable(name: "ret", scope: !49, file: !1, line: 35, type: !3)
!53 = !DILocation(line: 35, column: 26, scope: !49)
!54 = !DILocation(line: 37, column: 34, scope: !49)
!55 = !DILocation(line: 37, column: 11, scope: !49)
!56 = !DILocation(line: 37, column: 9, scope: !49)
!57 = !DILocation(line: 38, column: 9, scope: !58)
!58 = distinct !DILexicalBlock(scope: !49, file: !1, line: 38, column: 9)
!59 = !DILocation(line: 38, column: 13, scope: !58)
!60 = !DILocation(line: 38, column: 9, scope: !49)
!61 = !DILocation(line: 39, column: 9, scope: !62)
!62 = distinct !DILexicalBlock(scope: !58, file: !1, line: 38, column: 22)
!63 = !DILocation(line: 40, column: 9, scope: !62)
!64 = !DILocation(line: 44, column: 12, scope: !49)
!65 = !DILocation(line: 44, column: 5, scope: !49)
!66 = !DILocation(line: 52, column: 5, scope: !49)
!67 = !DILocation(line: 55, column: 5, scope: !49)
!68 = !DILocation(line: 57, column: 5, scope: !49)
!69 = !DILocation(line: 57, column: 10, scope: !49)
!70 = !DILocation(line: 57, column: 15, scope: !49)
!71 = !DILocation(line: 58, column: 5, scope: !49)
!72 = !DILocation(line: 58, column: 10, scope: !49)
!73 = !DILocation(line: 58, column: 20, scope: !49)
!74 = !DILocation(line: 59, column: 5, scope: !49)
!75 = !DILocation(line: 59, column: 10, scope: !49)
!76 = !DILocation(line: 59, column: 20, scope: !49)
!77 = !DILocation(line: 60, column: 13, scope: !49)
!78 = !DILocation(line: 60, column: 5, scope: !49)
!79 = !DILocation(line: 61, column: 1, scope: !49)
!80 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 63, type: !81, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!81 = !DISubroutineType(types: !82)
!82 = !{!9}
!83 = !DILocalVariable(name: "symbolic_input", scope: !80, file: !1, line: 65, type: !9)
!84 = !DILocation(line: 65, column: 9, scope: !80)
!85 = !DILocation(line: 66, column: 24, scope: !80)
!86 = !DILocation(line: 66, column: 5, scope: !80)
!87 = !DILocation(line: 69, column: 17, scope: !80)
!88 = !DILocation(line: 69, column: 32, scope: !80)
!89 = !DILocation(line: 69, column: 5, scope: !80)
!90 = !DILocalVariable(name: "result", scope: !80, file: !1, line: 72, type: !3)
!91 = !DILocation(line: 72, column: 26, scope: !80)
!92 = !DILocation(line: 72, column: 35, scope: !80)
!93 = !DILocation(line: 75, column: 9, scope: !94)
!94 = distinct !DILexicalBlock(scope: !80, file: !1, line: 75, column: 9)
!95 = !DILocation(line: 75, column: 16, scope: !94)
!96 = !DILocation(line: 75, column: 9, scope: !80)
!97 = !DILocation(line: 76, column: 14, scope: !98)
!98 = distinct !DILexicalBlock(scope: !94, file: !1, line: 75, column: 25)
!99 = !DILocation(line: 76, column: 9, scope: !98)
!100 = !DILocation(line: 77, column: 5, scope: !98)
!101 = !DILocation(line: 79, column: 5, scope: !80)
!102 = distinct !DISubprogram(name: "memset", scope: !103, file: !103, line: 12, type: !104, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !29)
!103 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!104 = !DISubroutineType(types: !105)
!105 = !{!12, !12, !9, !26}
!106 = !DILocalVariable(name: "dst", arg: 1, scope: !102, file: !103, line: 12, type: !12)
!107 = !DILocation(line: 12, column: 20, scope: !102)
!108 = !DILocalVariable(name: "s", arg: 2, scope: !102, file: !103, line: 12, type: !9)
!109 = !DILocation(line: 12, column: 29, scope: !102)
!110 = !DILocalVariable(name: "count", arg: 3, scope: !102, file: !103, line: 12, type: !26)
!111 = !DILocation(line: 12, column: 39, scope: !102)
!112 = !DILocalVariable(name: "a", scope: !102, file: !103, line: 13, type: !113)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!114 = !DILocation(line: 13, column: 9, scope: !102)
!115 = !DILocation(line: 13, column: 13, scope: !102)
!116 = !DILocation(line: 14, column: 3, scope: !102)
!117 = !DILocation(line: 14, column: 15, scope: !102)
!118 = !DILocation(line: 14, column: 18, scope: !102)
!119 = !DILocation(line: 15, column: 12, scope: !102)
!120 = !DILocation(line: 15, column: 7, scope: !102)
!121 = !DILocation(line: 15, column: 10, scope: !102)
!122 = distinct !{!122, !116, !119, !123}
!123 = !{!"llvm.loop.mustprogress"}
!124 = !DILocation(line: 16, column: 10, scope: !102)
!125 = !DILocation(line: 16, column: 3, scope: !102)

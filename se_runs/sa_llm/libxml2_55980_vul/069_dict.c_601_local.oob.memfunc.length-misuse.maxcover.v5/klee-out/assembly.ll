; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/069_dict.c_601_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/069_dict.c_601_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDict = type { i32, i32, i32, i32, i8*, i8*, %struct._xmlDict*, i32 }

@.str = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.1 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_55980_vul/069_dict.c_601_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlDictCreate = private unnamed_addr constant [29 x i8] c"xmlDict *xmlDictCreate(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !28 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !35, metadata !DIExpression()), !dbg !36
  %3 = load i64, i64* %2, align 8, !dbg !37
  %4 = call noalias i8* @malloc(i64 noundef %3) #6, !dbg !38
  ret i8* %4, !dbg !39
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !40 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !43, metadata !DIExpression()), !dbg !44
  %3 = load i8*, i8** %2, align 8, !dbg !45
  call void @free(i8* noundef %3) #6, !dbg !46
  ret void, !dbg !47
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__xmlRandom() #0 !dbg !48 {
  ret i32 0, !dbg !51
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlDict* @xmlDictCreate() #0 !dbg !52 {
  %1 = alloca %struct._xmlDict*, align 8
  %2 = alloca %struct._xmlDict*, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlDict** %2, metadata !55, metadata !DIExpression()), !dbg !56
  %3 = call i8* @xmlMalloc(i64 noundef 48), !dbg !57
  %4 = bitcast i8* %3 to %struct._xmlDict*, !dbg !58
  store %struct._xmlDict* %4, %struct._xmlDict** %2, align 8, !dbg !59
  %5 = load %struct._xmlDict*, %struct._xmlDict** %2, align 8, !dbg !60
  %6 = icmp eq %struct._xmlDict* %5, null, !dbg !62
  br i1 %6, label %7, label %8, !dbg !63

7:                                                ; preds = %0
  store %struct._xmlDict* null, %struct._xmlDict** %1, align 8, !dbg !64
  br label %40, !dbg !64

8:                                                ; preds = %0
  %9 = load %struct._xmlDict*, %struct._xmlDict** %2, align 8, !dbg !65
  %10 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %9, i32 0, i32 0, !dbg !66
  store i32 1, i32* %10, align 8, !dbg !67
  %11 = load %struct._xmlDict*, %struct._xmlDict** %2, align 8, !dbg !68
  %12 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %11, i32 0, i32 1, !dbg !69
  store i32 0, i32* %12, align 4, !dbg !70
  %13 = load %struct._xmlDict*, %struct._xmlDict** %2, align 8, !dbg !71
  %14 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %13, i32 0, i32 2, !dbg !72
  store i32 8, i32* %14, align 8, !dbg !73
  %15 = load %struct._xmlDict*, %struct._xmlDict** %2, align 8, !dbg !74
  %16 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %15, i32 0, i32 3, !dbg !75
  store i32 0, i32* %16, align 4, !dbg !76
  %17 = call i8* @xmlMalloc(i64 noundef 64), !dbg !77
  %18 = load %struct._xmlDict*, %struct._xmlDict** %2, align 8, !dbg !78
  %19 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %18, i32 0, i32 4, !dbg !79
  store i8* %17, i8** %19, align 8, !dbg !80
  %20 = load %struct._xmlDict*, %struct._xmlDict** %2, align 8, !dbg !81
  %21 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %20, i32 0, i32 5, !dbg !82
  store i8* null, i8** %21, align 8, !dbg !83
  %22 = load %struct._xmlDict*, %struct._xmlDict** %2, align 8, !dbg !84
  %23 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %22, i32 0, i32 6, !dbg !85
  store %struct._xmlDict* null, %struct._xmlDict** %23, align 8, !dbg !86
  %24 = load %struct._xmlDict*, %struct._xmlDict** %2, align 8, !dbg !87
  %25 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %24, i32 0, i32 4, !dbg !89
  %26 = load i8*, i8** %25, align 8, !dbg !89
  %27 = icmp ne i8* %26, null, !dbg !87
  br i1 %27, label %28, label %37, !dbg !90

28:                                               ; preds = %8
  %29 = load %struct._xmlDict*, %struct._xmlDict** %2, align 8, !dbg !91
  %30 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %29, i32 0, i32 4, !dbg !93
  %31 = load i8*, i8** %30, align 8, !dbg !93
  %32 = call i8* @memset(i8* %31, i32 0, i64 64), !dbg !94
  %33 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.1, i64 0, i64 0), i32 noundef 63, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.xmlDictCreate, i64 0, i64 0)), !dbg !95
  %34 = load %struct._xmlDict*, %struct._xmlDict** %2, align 8, !dbg !96
  %35 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %34, i32 0, i32 7, !dbg !97
  store i32 0, i32* %35, align 8, !dbg !98
  %36 = load %struct._xmlDict*, %struct._xmlDict** %2, align 8, !dbg !99
  store %struct._xmlDict* %36, %struct._xmlDict** %1, align 8, !dbg !100
  br label %40, !dbg !100

37:                                               ; preds = %8
  %38 = load %struct._xmlDict*, %struct._xmlDict** %2, align 8, !dbg !101
  %39 = bitcast %struct._xmlDict* %38 to i8*, !dbg !101
  call void @xmlFree(i8* noundef %39), !dbg !102
  store %struct._xmlDict* null, %struct._xmlDict** %1, align 8, !dbg !103
  br label %40, !dbg !103

40:                                               ; preds = %37, %28, %7
  %41 = load %struct._xmlDict*, %struct._xmlDict** %1, align 8, !dbg !104
  ret %struct._xmlDict* %41, !dbg !104
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !105 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlDict*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlDict** %2, metadata !108, metadata !DIExpression()), !dbg !109
  %3 = call %struct._xmlDict* @xmlDictCreate(), !dbg !110
  store %struct._xmlDict* %3, %struct._xmlDict** %2, align 8, !dbg !111
  %4 = load %struct._xmlDict*, %struct._xmlDict** %2, align 8, !dbg !112
  %5 = icmp ne %struct._xmlDict* %4, null, !dbg !112
  br i1 %5, label %6, label %18, !dbg !114

6:                                                ; preds = %0
  %7 = load %struct._xmlDict*, %struct._xmlDict** %2, align 8, !dbg !115
  %8 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %7, i32 0, i32 4, !dbg !118
  %9 = load i8*, i8** %8, align 8, !dbg !118
  %10 = icmp ne i8* %9, null, !dbg !115
  br i1 %10, label %11, label %15, !dbg !119

11:                                               ; preds = %6
  %12 = load %struct._xmlDict*, %struct._xmlDict** %2, align 8, !dbg !120
  %13 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %12, i32 0, i32 4, !dbg !122
  %14 = load i8*, i8** %13, align 8, !dbg !122
  call void @free(i8* noundef %14) #6, !dbg !123
  br label %15, !dbg !124

15:                                               ; preds = %11, %6
  %16 = load %struct._xmlDict*, %struct._xmlDict** %2, align 8, !dbg !125
  %17 = bitcast %struct._xmlDict* %16 to i8*, !dbg !125
  call void @free(i8* noundef %17) #6, !dbg !126
  br label %18, !dbg !127

18:                                               ; preds = %15, %0
  ret i32 0, !dbg !128
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #5 !dbg !129 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !133, metadata !DIExpression()), !dbg !134
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !135, metadata !DIExpression()), !dbg !136
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !137, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.declare(metadata i8** %7, metadata !139, metadata !DIExpression()), !dbg !142
  %8 = load i8*, i8** %4, align 8, !dbg !143
  store i8* %8, i8** %7, align 8, !dbg !142
  br label %9, !dbg !144

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !145
  %11 = add i64 %10, -1, !dbg !145
  store i64 %11, i64* %6, align 8, !dbg !145
  %12 = icmp ugt i64 %10, 0, !dbg !146
  br i1 %12, label %13, label %18, !dbg !144

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !147
  %15 = trunc i32 %14 to i8, !dbg !147
  %16 = load i8*, i8** %7, align 8, !dbg !148
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !148
  store i8* %17, i8** %7, align 8, !dbg !148
  store i8 %15, i8* %16, align 1, !dbg !149
  br label %9, !dbg !144, !llvm.loop !150

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !152
  ret i8* %19, !dbg !153
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27, !27}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/069_dict.c_601_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "59c380ca54104b74150c99ab6a0b7d73")
!2 = !{!3, !14}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !1, line: 10, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !1, line: 11, size: 384, elements: !6)
!6 = !{!7, !9, !11, !12, !13, !15, !16, !17}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "ref_counter", scope: !5, file: !1, line: 12, baseType: !8, size: 32)
!8 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!9 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !5, file: !1, line: 13, baseType: !10, size: 32, offset: 32)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5, file: !1, line: 14, baseType: !8, size: 32, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "nbElems", scope: !5, file: !1, line: 15, baseType: !8, size: 32, offset: 96)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !5, file: !1, line: 16, baseType: !14, size: 64, offset: 128)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "strings", scope: !5, file: !1, line: 17, baseType: !14, size: 64, offset: 192)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "subdict", scope: !5, file: !1, line: 18, baseType: !3, size: 64, offset: 256)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "seed", scope: !5, file: !1, line: 19, baseType: !8, size: 32, offset: 320)
!18 = distinct !DICompileUnit(language: DW_LANG_C99, file: !19, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!19 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!20 = !{i32 7, !"Dwarf Version", i32 5}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"wchar_size", i32 4}
!23 = !{i32 7, !"PIC Level", i32 2}
!24 = !{i32 7, !"PIE Level", i32 2}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"Ubuntu clang version 14.0.6"}
!28 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 25, type: !29, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!29 = !DISubroutineType(types: !30)
!30 = !{!14, !31}
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !32, line: 46, baseType: !33)
!32 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!33 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!34 = !{}
!35 = !DILocalVariable(name: "size", arg: 1, scope: !28, file: !1, line: 25, type: !31)
!36 = !DILocation(line: 25, column: 24, scope: !28)
!37 = !DILocation(line: 26, column: 19, scope: !28)
!38 = !DILocation(line: 26, column: 12, scope: !28)
!39 = !DILocation(line: 26, column: 5, scope: !28)
!40 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 30, type: !41, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !14}
!43 = !DILocalVariable(name: "ptr", arg: 1, scope: !40, file: !1, line: 30, type: !14)
!44 = !DILocation(line: 30, column: 20, scope: !40)
!45 = !DILocation(line: 31, column: 10, scope: !40)
!46 = !DILocation(line: 31, column: 5, scope: !40)
!47 = !DILocation(line: 32, column: 1, scope: !40)
!48 = distinct !DISubprogram(name: "__xmlRandom", scope: !1, file: !1, line: 35, type: !49, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!49 = !DISubroutineType(types: !50)
!50 = !{!8}
!51 = !DILocation(line: 36, column: 5, scope: !48)
!52 = distinct !DISubprogram(name: "xmlDictCreate", scope: !1, file: !1, line: 40, type: !53, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!53 = !DISubroutineType(types: !54)
!54 = !{!3}
!55 = !DILocalVariable(name: "dict", scope: !52, file: !1, line: 41, type: !3)
!56 = !DILocation(line: 41, column: 14, scope: !52)
!57 = !DILocation(line: 43, column: 24, scope: !52)
!58 = !DILocation(line: 43, column: 12, scope: !52)
!59 = !DILocation(line: 43, column: 10, scope: !52)
!60 = !DILocation(line: 44, column: 9, scope: !61)
!61 = distinct !DILexicalBlock(scope: !52, file: !1, line: 44, column: 9)
!62 = !DILocation(line: 44, column: 14, scope: !61)
!63 = !DILocation(line: 44, column: 9, scope: !52)
!64 = !DILocation(line: 45, column: 9, scope: !61)
!65 = !DILocation(line: 47, column: 5, scope: !52)
!66 = !DILocation(line: 47, column: 11, scope: !52)
!67 = !DILocation(line: 47, column: 23, scope: !52)
!68 = !DILocation(line: 48, column: 5, scope: !52)
!69 = !DILocation(line: 48, column: 11, scope: !52)
!70 = !DILocation(line: 48, column: 17, scope: !52)
!71 = !DILocation(line: 49, column: 5, scope: !52)
!72 = !DILocation(line: 49, column: 11, scope: !52)
!73 = !DILocation(line: 49, column: 16, scope: !52)
!74 = !DILocation(line: 50, column: 5, scope: !52)
!75 = !DILocation(line: 50, column: 11, scope: !52)
!76 = !DILocation(line: 50, column: 19, scope: !52)
!77 = !DILocation(line: 51, column: 18, scope: !52)
!78 = !DILocation(line: 51, column: 5, scope: !52)
!79 = !DILocation(line: 51, column: 11, scope: !52)
!80 = !DILocation(line: 51, column: 16, scope: !52)
!81 = !DILocation(line: 52, column: 5, scope: !52)
!82 = !DILocation(line: 52, column: 11, scope: !52)
!83 = !DILocation(line: 52, column: 19, scope: !52)
!84 = !DILocation(line: 53, column: 5, scope: !52)
!85 = !DILocation(line: 53, column: 11, scope: !52)
!86 = !DILocation(line: 53, column: 19, scope: !52)
!87 = !DILocation(line: 55, column: 9, scope: !88)
!88 = distinct !DILexicalBlock(scope: !52, file: !1, line: 55, column: 9)
!89 = !DILocation(line: 55, column: 15, scope: !88)
!90 = !DILocation(line: 55, column: 9, scope: !52)
!91 = !DILocation(line: 57, column: 16, scope: !92)
!92 = distinct !DILexicalBlock(scope: !88, file: !1, line: 55, column: 21)
!93 = !DILocation(line: 57, column: 22, scope: !92)
!94 = !DILocation(line: 57, column: 9, scope: !92)
!95 = !DILocation(line: 63, column: 9, scope: !92)
!96 = !DILocation(line: 68, column: 9, scope: !92)
!97 = !DILocation(line: 68, column: 15, scope: !92)
!98 = !DILocation(line: 68, column: 20, scope: !92)
!99 = !DILocation(line: 70, column: 16, scope: !92)
!100 = !DILocation(line: 70, column: 9, scope: !92)
!101 = !DILocation(line: 73, column: 13, scope: !52)
!102 = !DILocation(line: 73, column: 5, scope: !52)
!103 = !DILocation(line: 74, column: 5, scope: !52)
!104 = !DILocation(line: 75, column: 1, scope: !52)
!105 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 77, type: !106, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!106 = !DISubroutineType(types: !107)
!107 = !{!10}
!108 = !DILocalVariable(name: "dict", scope: !105, file: !1, line: 78, type: !3)
!109 = !DILocation(line: 78, column: 14, scope: !105)
!110 = !DILocation(line: 81, column: 12, scope: !105)
!111 = !DILocation(line: 81, column: 10, scope: !105)
!112 = !DILocation(line: 84, column: 9, scope: !113)
!113 = distinct !DILexicalBlock(scope: !105, file: !1, line: 84, column: 9)
!114 = !DILocation(line: 84, column: 9, scope: !105)
!115 = !DILocation(line: 85, column: 13, scope: !116)
!116 = distinct !DILexicalBlock(scope: !117, file: !1, line: 85, column: 13)
!117 = distinct !DILexicalBlock(scope: !113, file: !1, line: 84, column: 15)
!118 = !DILocation(line: 85, column: 19, scope: !116)
!119 = !DILocation(line: 85, column: 13, scope: !117)
!120 = !DILocation(line: 86, column: 18, scope: !121)
!121 = distinct !DILexicalBlock(scope: !116, file: !1, line: 85, column: 25)
!122 = !DILocation(line: 86, column: 24, scope: !121)
!123 = !DILocation(line: 86, column: 13, scope: !121)
!124 = !DILocation(line: 87, column: 9, scope: !121)
!125 = !DILocation(line: 88, column: 14, scope: !117)
!126 = !DILocation(line: 88, column: 9, scope: !117)
!127 = !DILocation(line: 89, column: 5, scope: !117)
!128 = !DILocation(line: 91, column: 5, scope: !105)
!129 = distinct !DISubprogram(name: "memset", scope: !130, file: !130, line: 12, type: !131, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !34)
!130 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!131 = !DISubroutineType(types: !132)
!132 = !{!14, !14, !10, !31}
!133 = !DILocalVariable(name: "dst", arg: 1, scope: !129, file: !130, line: 12, type: !14)
!134 = !DILocation(line: 12, column: 20, scope: !129)
!135 = !DILocalVariable(name: "s", arg: 2, scope: !129, file: !130, line: 12, type: !10)
!136 = !DILocation(line: 12, column: 29, scope: !129)
!137 = !DILocalVariable(name: "count", arg: 3, scope: !129, file: !130, line: 12, type: !31)
!138 = !DILocation(line: 12, column: 39, scope: !129)
!139 = !DILocalVariable(name: "a", scope: !129, file: !130, line: 13, type: !140)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!142 = !DILocation(line: 13, column: 9, scope: !129)
!143 = !DILocation(line: 13, column: 13, scope: !129)
!144 = !DILocation(line: 14, column: 3, scope: !129)
!145 = !DILocation(line: 14, column: 15, scope: !129)
!146 = !DILocation(line: 14, column: 18, scope: !129)
!147 = !DILocation(line: 15, column: 12, scope: !129)
!148 = !DILocation(line: 15, column: 7, scope: !129)
!149 = !DILocation(line: 15, column: 10, scope: !129)
!150 = distinct !{!150, !144, !147, !151}
!151 = !{!"llvm.loop.mustprogress"}
!152 = !DILocation(line: 16, column: 10, scope: !129)
!153 = !DILocation(line: 16, column: 3, scope: !129)

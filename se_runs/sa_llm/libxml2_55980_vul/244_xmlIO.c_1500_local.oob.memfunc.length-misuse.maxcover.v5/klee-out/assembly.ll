; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/244_xmlIO.c_1500_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/244_xmlIO.c_1500_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlZMemBuff = type { i8*, i64 }

@.str = private unnamed_addr constant [24 x i8] c"creating buffer context\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_55980_vul/244_xmlIO.c_1500_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlCreateZMemBuff = private unnamed_addr constant [37 x i8] c"xmlZMemBuff *xmlCreateZMemBuff(void)\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"creating buffer\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"malloc_success\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlIOErrMemory(i8* noundef %0) #0 !dbg !14 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !21, metadata !DIExpression()), !dbg !22
  ret void, !dbg !23
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFreeZMemBuff(%struct._xmlZMemBuff* noundef %0) #0 !dbg !24 {
  %2 = alloca %struct._xmlZMemBuff*, align 8
  store %struct._xmlZMemBuff* %0, %struct._xmlZMemBuff** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlZMemBuff** %2, metadata !38, metadata !DIExpression()), !dbg !39
  %3 = load %struct._xmlZMemBuff*, %struct._xmlZMemBuff** %2, align 8, !dbg !40
  %4 = icmp ne %struct._xmlZMemBuff* %3, null, !dbg !40
  br i1 %4, label %5, label %14, !dbg !42

5:                                                ; preds = %1
  %6 = load %struct._xmlZMemBuff*, %struct._xmlZMemBuff** %2, align 8, !dbg !43
  %7 = getelementptr inbounds %struct._xmlZMemBuff, %struct._xmlZMemBuff* %6, i32 0, i32 0, !dbg !44
  %8 = load i8*, i8** %7, align 8, !dbg !44
  %9 = icmp ne i8* %8, null, !dbg !43
  br i1 %9, label %10, label %14, !dbg !45

10:                                               ; preds = %5
  %11 = load %struct._xmlZMemBuff*, %struct._xmlZMemBuff** %2, align 8, !dbg !46
  %12 = getelementptr inbounds %struct._xmlZMemBuff, %struct._xmlZMemBuff* %11, i32 0, i32 0, !dbg !48
  %13 = load i8*, i8** %12, align 8, !dbg !48
  call void @free(i8* noundef %13) #7, !dbg !49
  br label %14, !dbg !50

14:                                               ; preds = %10, %5, %1
  %15 = load %struct._xmlZMemBuff*, %struct._xmlZMemBuff** %2, align 8, !dbg !51
  %16 = bitcast %struct._xmlZMemBuff* %15 to i8*, !dbg !51
  call void @free(i8* noundef %16) #7, !dbg !52
  ret void, !dbg !53
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !54 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !57, metadata !DIExpression()), !dbg !58
  %3 = load i64, i64* %2, align 8, !dbg !59
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !60
  ret i8* %4, !dbg !61
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlZMemBuff* @xmlCreateZMemBuff() #0 !dbg !62 {
  %1 = alloca %struct._xmlZMemBuff*, align 8
  %2 = alloca %struct._xmlZMemBuff*, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlZMemBuff** %2, metadata !65, metadata !DIExpression()), !dbg !66
  %3 = call i8* @xmlMalloc(i64 noundef 16), !dbg !67
  %4 = bitcast i8* %3 to %struct._xmlZMemBuff*, !dbg !67
  store %struct._xmlZMemBuff* %4, %struct._xmlZMemBuff** %2, align 8, !dbg !68
  %5 = load %struct._xmlZMemBuff*, %struct._xmlZMemBuff** %2, align 8, !dbg !69
  %6 = icmp eq %struct._xmlZMemBuff* %5, null, !dbg !71
  br i1 %6, label %7, label %8, !dbg !72

7:                                                ; preds = %0
  call void @xmlIOErrMemory(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0)), !dbg !73
  store %struct._xmlZMemBuff* null, %struct._xmlZMemBuff** %1, align 8, !dbg !75
  br label %29, !dbg !75

8:                                                ; preds = %0
  %9 = load %struct._xmlZMemBuff*, %struct._xmlZMemBuff** %2, align 8, !dbg !76
  %10 = bitcast %struct._xmlZMemBuff* %9 to i8*, !dbg !77
  %11 = call i8* @memset(i8* %10, i32 0, i64 16), !dbg !77
  %12 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.2, i64 0, i64 0), i32 noundef 58, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.xmlCreateZMemBuff, i64 0, i64 0)), !dbg !78
  %13 = load %struct._xmlZMemBuff*, %struct._xmlZMemBuff** %2, align 8, !dbg !79
  %14 = getelementptr inbounds %struct._xmlZMemBuff, %struct._xmlZMemBuff* %13, i32 0, i32 1, !dbg !80
  store i64 4096, i64* %14, align 8, !dbg !81
  %15 = load %struct._xmlZMemBuff*, %struct._xmlZMemBuff** %2, align 8, !dbg !82
  %16 = getelementptr inbounds %struct._xmlZMemBuff, %struct._xmlZMemBuff* %15, i32 0, i32 1, !dbg !83
  %17 = load i64, i64* %16, align 8, !dbg !83
  %18 = call i8* @xmlMalloc(i64 noundef %17), !dbg !84
  %19 = load %struct._xmlZMemBuff*, %struct._xmlZMemBuff** %2, align 8, !dbg !85
  %20 = getelementptr inbounds %struct._xmlZMemBuff, %struct._xmlZMemBuff* %19, i32 0, i32 0, !dbg !86
  store i8* %18, i8** %20, align 8, !dbg !87
  %21 = load %struct._xmlZMemBuff*, %struct._xmlZMemBuff** %2, align 8, !dbg !88
  %22 = getelementptr inbounds %struct._xmlZMemBuff, %struct._xmlZMemBuff* %21, i32 0, i32 0, !dbg !90
  %23 = load i8*, i8** %22, align 8, !dbg !90
  %24 = icmp eq i8* %23, null, !dbg !91
  br i1 %24, label %25, label %27, !dbg !92

25:                                               ; preds = %8
  %26 = load %struct._xmlZMemBuff*, %struct._xmlZMemBuff** %2, align 8, !dbg !93
  call void @xmlFreeZMemBuff(%struct._xmlZMemBuff* noundef %26), !dbg !95
  call void @xmlIOErrMemory(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)), !dbg !96
  store %struct._xmlZMemBuff* null, %struct._xmlZMemBuff** %1, align 8, !dbg !97
  br label %29, !dbg !97

27:                                               ; preds = %8
  %28 = load %struct._xmlZMemBuff*, %struct._xmlZMemBuff** %2, align 8, !dbg !98
  store %struct._xmlZMemBuff* %28, %struct._xmlZMemBuff** %1, align 8, !dbg !99
  br label %29, !dbg !99

29:                                               ; preds = %27, %25, %7
  %30 = load %struct._xmlZMemBuff*, %struct._xmlZMemBuff** %1, align 8, !dbg !100
  ret %struct._xmlZMemBuff* %30, !dbg !100
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !101 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlZMemBuff*, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlZMemBuff** %2, metadata !105, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.declare(metadata i32* %3, metadata !107, metadata !DIExpression()), !dbg !108
  %4 = bitcast i32* %3 to i8*, !dbg !109
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)), !dbg !110
  %5 = call %struct._xmlZMemBuff* @xmlCreateZMemBuff(), !dbg !111
  store %struct._xmlZMemBuff* %5, %struct._xmlZMemBuff** %2, align 8, !dbg !112
  %6 = load %struct._xmlZMemBuff*, %struct._xmlZMemBuff** %2, align 8, !dbg !113
  %7 = icmp ne %struct._xmlZMemBuff* %6, null, !dbg !115
  br i1 %7, label %8, label %10, !dbg !116

8:                                                ; preds = %0
  %9 = load %struct._xmlZMemBuff*, %struct._xmlZMemBuff** %2, align 8, !dbg !117
  call void @xmlFreeZMemBuff(%struct._xmlZMemBuff* noundef %9), !dbg !119
  br label %10, !dbg !120

10:                                               ; preds = %8, %0
  ret i32 0, !dbg !121
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !122 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !126, metadata !DIExpression()), !dbg !127
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !128, metadata !DIExpression()), !dbg !129
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !130, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.declare(metadata i8** %7, metadata !132, metadata !DIExpression()), !dbg !134
  %8 = load i8*, i8** %4, align 8, !dbg !135
  store i8* %8, i8** %7, align 8, !dbg !134
  br label %9, !dbg !136

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !137
  %11 = add i64 %10, -1, !dbg !137
  store i64 %11, i64* %6, align 8, !dbg !137
  %12 = icmp ugt i64 %10, 0, !dbg !138
  br i1 %12, label %13, label %18, !dbg !136

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !139
  %15 = trunc i32 %14 to i8, !dbg !139
  %16 = load i8*, i8** %7, align 8, !dbg !140
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !140
  store i8* %17, i8** %7, align 8, !dbg !140
  store i8 %15, i8* %16, align 1, !dbg !141
  br label %9, !dbg !136, !llvm.loop !142

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !144
  ret i8* %19, !dbg !145
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13, !13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/244_xmlIO.c_1500_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "8fef0cd14bfbe9898d3a294b099dbbc7")
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
!14 = distinct !DISubprogram(name: "xmlIOErrMemory", scope: !1, file: !1, line: 20, type: !15, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !{}
!21 = !DILocalVariable(name: "msg", arg: 1, scope: !14, file: !1, line: 20, type: !17)
!22 = !DILocation(line: 20, column: 33, scope: !14)
!23 = !DILocation(line: 22, column: 1, scope: !14)
!24 = distinct !DISubprogram(name: "xmlFreeZMemBuff", scope: !1, file: !1, line: 24, type: !25, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!25 = !DISubroutineType(types: !26)
!26 = !{null, !27}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlZMemBuff", file: !1, line: 10, baseType: !29)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlZMemBuff", file: !1, line: 11, size: 128, elements: !30)
!30 = !{!31, !34}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "zbuff", scope: !29, file: !1, line: 12, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !29, file: !1, line: 13, baseType: !35, size: 64, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !36, line: 46, baseType: !37)
!36 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!37 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!38 = !DILocalVariable(name: "buff", arg: 1, scope: !24, file: !1, line: 24, type: !27)
!39 = !DILocation(line: 24, column: 35, scope: !24)
!40 = !DILocation(line: 25, column: 9, scope: !41)
!41 = distinct !DILexicalBlock(scope: !24, file: !1, line: 25, column: 9)
!42 = !DILocation(line: 25, column: 14, scope: !41)
!43 = !DILocation(line: 25, column: 17, scope: !41)
!44 = !DILocation(line: 25, column: 23, scope: !41)
!45 = !DILocation(line: 25, column: 9, scope: !24)
!46 = !DILocation(line: 26, column: 14, scope: !47)
!47 = distinct !DILexicalBlock(scope: !41, file: !1, line: 25, column: 30)
!48 = !DILocation(line: 26, column: 20, scope: !47)
!49 = !DILocation(line: 26, column: 9, scope: !47)
!50 = !DILocation(line: 27, column: 5, scope: !47)
!51 = !DILocation(line: 28, column: 10, scope: !24)
!52 = !DILocation(line: 28, column: 5, scope: !24)
!53 = !DILocation(line: 29, column: 1, scope: !24)
!54 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 31, type: !55, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!55 = !DISubroutineType(types: !56)
!56 = !{!3, !35}
!57 = !DILocalVariable(name: "size", arg: 1, scope: !54, file: !1, line: 31, type: !35)
!58 = !DILocation(line: 31, column: 24, scope: !54)
!59 = !DILocation(line: 32, column: 19, scope: !54)
!60 = !DILocation(line: 32, column: 12, scope: !54)
!61 = !DILocation(line: 32, column: 5, scope: !54)
!62 = distinct !DISubprogram(name: "xmlCreateZMemBuff", scope: !1, file: !1, line: 36, type: !63, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!63 = !DISubroutineType(types: !64)
!64 = !{!27}
!65 = !DILocalVariable(name: "buff", scope: !62, file: !1, line: 37, type: !27)
!66 = !DILocation(line: 37, column: 18, scope: !62)
!67 = !DILocation(line: 40, column: 12, scope: !62)
!68 = !DILocation(line: 40, column: 10, scope: !62)
!69 = !DILocation(line: 41, column: 9, scope: !70)
!70 = distinct !DILexicalBlock(scope: !62, file: !1, line: 41, column: 9)
!71 = !DILocation(line: 41, column: 14, scope: !70)
!72 = !DILocation(line: 41, column: 9, scope: !62)
!73 = !DILocation(line: 42, column: 9, scope: !74)
!74 = distinct !DILexicalBlock(scope: !70, file: !1, line: 41, column: 23)
!75 = !DILocation(line: 43, column: 9, scope: !74)
!76 = !DILocation(line: 47, column: 18, scope: !62)
!77 = !DILocation(line: 47, column: 11, scope: !62)
!78 = !DILocation(line: 58, column: 5, scope: !62)
!79 = !DILocation(line: 60, column: 5, scope: !62)
!80 = !DILocation(line: 60, column: 11, scope: !62)
!81 = !DILocation(line: 60, column: 16, scope: !62)
!82 = !DILocation(line: 61, column: 29, scope: !62)
!83 = !DILocation(line: 61, column: 35, scope: !62)
!84 = !DILocation(line: 61, column: 19, scope: !62)
!85 = !DILocation(line: 61, column: 5, scope: !62)
!86 = !DILocation(line: 61, column: 11, scope: !62)
!87 = !DILocation(line: 61, column: 17, scope: !62)
!88 = !DILocation(line: 62, column: 9, scope: !89)
!89 = distinct !DILexicalBlock(scope: !62, file: !1, line: 62, column: 9)
!90 = !DILocation(line: 62, column: 15, scope: !89)
!91 = !DILocation(line: 62, column: 21, scope: !89)
!92 = !DILocation(line: 62, column: 9, scope: !62)
!93 = !DILocation(line: 63, column: 25, scope: !94)
!94 = distinct !DILexicalBlock(scope: !89, file: !1, line: 62, column: 30)
!95 = !DILocation(line: 63, column: 9, scope: !94)
!96 = !DILocation(line: 64, column: 9, scope: !94)
!97 = !DILocation(line: 65, column: 9, scope: !94)
!98 = !DILocation(line: 68, column: 12, scope: !62)
!99 = !DILocation(line: 68, column: 5, scope: !62)
!100 = !DILocation(line: 69, column: 1, scope: !62)
!101 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 71, type: !102, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!102 = !DISubroutineType(types: !103)
!103 = !{!104}
!104 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!105 = !DILocalVariable(name: "result", scope: !101, file: !1, line: 72, type: !27)
!106 = !DILocation(line: 72, column: 18, scope: !101)
!107 = !DILocalVariable(name: "malloc_success", scope: !101, file: !1, line: 76, type: !104)
!108 = !DILocation(line: 76, column: 9, scope: !101)
!109 = !DILocation(line: 77, column: 24, scope: !101)
!110 = !DILocation(line: 77, column: 5, scope: !101)
!111 = !DILocation(line: 82, column: 14, scope: !101)
!112 = !DILocation(line: 82, column: 12, scope: !101)
!113 = !DILocation(line: 85, column: 9, scope: !114)
!114 = distinct !DILexicalBlock(scope: !101, file: !1, line: 85, column: 9)
!115 = !DILocation(line: 85, column: 16, scope: !114)
!116 = !DILocation(line: 85, column: 9, scope: !101)
!117 = !DILocation(line: 86, column: 25, scope: !118)
!118 = distinct !DILexicalBlock(scope: !114, file: !1, line: 85, column: 25)
!119 = !DILocation(line: 86, column: 9, scope: !118)
!120 = !DILocation(line: 87, column: 5, scope: !118)
!121 = !DILocation(line: 89, column: 5, scope: !101)
!122 = distinct !DISubprogram(name: "memset", scope: !123, file: !123, line: 12, type: !124, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !20)
!123 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!124 = !DISubroutineType(types: !125)
!125 = !{!3, !3, !104, !35}
!126 = !DILocalVariable(name: "dst", arg: 1, scope: !122, file: !123, line: 12, type: !3)
!127 = !DILocation(line: 12, column: 20, scope: !122)
!128 = !DILocalVariable(name: "s", arg: 2, scope: !122, file: !123, line: 12, type: !104)
!129 = !DILocation(line: 12, column: 29, scope: !122)
!130 = !DILocalVariable(name: "count", arg: 3, scope: !122, file: !123, line: 12, type: !35)
!131 = !DILocation(line: 12, column: 39, scope: !122)
!132 = !DILocalVariable(name: "a", scope: !122, file: !123, line: 13, type: !133)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!134 = !DILocation(line: 13, column: 9, scope: !122)
!135 = !DILocation(line: 13, column: 13, scope: !122)
!136 = !DILocation(line: 14, column: 3, scope: !122)
!137 = !DILocation(line: 14, column: 15, scope: !122)
!138 = !DILocation(line: 14, column: 18, scope: !122)
!139 = !DILocation(line: 15, column: 12, scope: !122)
!140 = !DILocation(line: 15, column: 7, scope: !122)
!141 = !DILocation(line: 15, column: 10, scope: !122)
!142 = distinct !{!142, !136, !139, !143}
!143 = !{!"llvm.loop.mustprogress"}
!144 = !DILocation(line: 16, column: 10, scope: !122)
!145 = !DILocation(line: 16, column: 3, scope: !122)

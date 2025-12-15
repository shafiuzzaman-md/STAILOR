; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/210_HTMLparser.c_2486_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/210_HTMLparser.c_2486_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDoc = type { i32, i8*, i8*, %struct._xmlDoc*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [12 x i8] c"should_fail\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"HTML document creation failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [109 x i8] c"se_runs/sa_llm/libxml2_55980_vul/210_HTMLparser.c_2486_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.htmlCreateDoc = private unnamed_addr constant [52 x i8] c"xmlDocPtr htmlCreateDoc(const char *, const char *)\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"URI\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"ExternalID\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @htmlErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !27 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !34, metadata !DIExpression()), !dbg !35
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !36, metadata !DIExpression()), !dbg !37
  %5 = load i8*, i8** %3, align 8, !dbg !38
  %6 = load i8*, i8** %4, align 8, !dbg !39
  ret void, !dbg !40
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !41 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.declare(metadata i32* %4, metadata !49, metadata !DIExpression()), !dbg !50
  %6 = bitcast i32* %4 to i8*, !dbg !51
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0)), !dbg !52
  %7 = load i32, i32* %4, align 4, !dbg !53
  %8 = icmp eq i32 %7, 0, !dbg !54
  br i1 %8, label %12, label %9, !dbg !55

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4, !dbg !56
  %11 = icmp eq i32 %10, 1, !dbg !57
  br label %12, !dbg !55

12:                                               ; preds = %9, %1
  %13 = phi i1 [ true, %1 ], [ %11, %9 ]
  %14 = zext i1 %13 to i32, !dbg !55
  %15 = sext i32 %14 to i64, !dbg !53
  call void @klee_assume(i64 noundef %15), !dbg !58
  %16 = load i32, i32* %4, align 4, !dbg !59
  %17 = icmp ne i32 %16, 0, !dbg !59
  br i1 %17, label %18, label %19, !dbg !61

18:                                               ; preds = %12
  store i8* null, i8** %2, align 8, !dbg !62
  br label %23, !dbg !62

19:                                               ; preds = %12
  call void @llvm.dbg.declare(metadata i8** %5, metadata !64, metadata !DIExpression()), !dbg !65
  %20 = load i64, i64* %3, align 8, !dbg !66
  %21 = call noalias i8* @malloc(i64 noundef %20) #7, !dbg !67
  store i8* %21, i8** %5, align 8, !dbg !65
  %22 = load i8*, i8** %5, align 8, !dbg !68
  store i8* %22, i8** %2, align 8, !dbg !69
  br label %23, !dbg !69

23:                                               ; preds = %19, %18
  %24 = load i8*, i8** %2, align 8, !dbg !70
  ret i8* %24, !dbg !70
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlDoc* @htmlCreateDoc(i8* noundef %0, i8* noundef %1) #0 !dbg !71 {
  %3 = alloca %struct._xmlDoc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._xmlDoc*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !74, metadata !DIExpression()), !dbg !75
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !76, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %6, metadata !78, metadata !DIExpression()), !dbg !79
  %7 = call i8* @xmlMalloc(i64 noundef 56), !dbg !80
  %8 = bitcast i8* %7 to %struct._xmlDoc*, !dbg !81
  store %struct._xmlDoc* %8, %struct._xmlDoc** %6, align 8, !dbg !82
  %9 = load %struct._xmlDoc*, %struct._xmlDoc** %6, align 8, !dbg !83
  %10 = icmp eq %struct._xmlDoc* %9, null, !dbg !85
  br i1 %10, label %11, label %12, !dbg !86

11:                                               ; preds = %2
  call void @htmlErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0)), !dbg !87
  store %struct._xmlDoc* null, %struct._xmlDoc** %3, align 8, !dbg !89
  br label %27, !dbg !89

12:                                               ; preds = %2
  %13 = load %struct._xmlDoc*, %struct._xmlDoc** %6, align 8, !dbg !90
  %14 = bitcast %struct._xmlDoc* %13 to i8*, !dbg !91
  %15 = call i8* @memset(i8* %14, i32 0, i64 56), !dbg !91
  %16 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.3, i64 0, i64 0), i32 noundef 70, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.htmlCreateDoc, i64 0, i64 0)), !dbg !92
  %17 = load %struct._xmlDoc*, %struct._xmlDoc** %6, align 8, !dbg !93
  %18 = getelementptr inbounds %struct._xmlDoc, %struct._xmlDoc* %17, i32 0, i32 0, !dbg !94
  store i32 1, i32* %18, align 8, !dbg !95
  %19 = load %struct._xmlDoc*, %struct._xmlDoc** %6, align 8, !dbg !96
  %20 = getelementptr inbounds %struct._xmlDoc, %struct._xmlDoc* %19, i32 0, i32 1, !dbg !97
  store i8* null, i8** %20, align 8, !dbg !98
  %21 = load %struct._xmlDoc*, %struct._xmlDoc** %6, align 8, !dbg !99
  %22 = getelementptr inbounds %struct._xmlDoc, %struct._xmlDoc* %21, i32 0, i32 2, !dbg !100
  store i8* null, i8** %22, align 8, !dbg !101
  %23 = load %struct._xmlDoc*, %struct._xmlDoc** %6, align 8, !dbg !102
  %24 = load %struct._xmlDoc*, %struct._xmlDoc** %6, align 8, !dbg !103
  %25 = getelementptr inbounds %struct._xmlDoc, %struct._xmlDoc* %24, i32 0, i32 3, !dbg !104
  store %struct._xmlDoc* %23, %struct._xmlDoc** %25, align 8, !dbg !105
  %26 = load %struct._xmlDoc*, %struct._xmlDoc** %6, align 8, !dbg !106
  store %struct._xmlDoc* %26, %struct._xmlDoc** %3, align 8, !dbg !107
  br label %27, !dbg !107

27:                                               ; preds = %12, %11
  %28 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !108
  ret %struct._xmlDoc* %28, !dbg !108
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !109 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca [256 x i8], align 16
  %4 = alloca %struct._xmlDoc*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !112, metadata !DIExpression()), !dbg !116
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !117, metadata !DIExpression()), !dbg !118
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !119
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 256, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)), !dbg !120
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !121
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 256, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0)), !dbg !122
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !123
  store i8 0, i8* %7, align 1, !dbg !124
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 255, !dbg !125
  store i8 0, i8* %8, align 1, !dbg !126
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %4, metadata !127, metadata !DIExpression()), !dbg !128
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !129
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !130
  %11 = call %struct._xmlDoc* @htmlCreateDoc(i8* noundef %9, i8* noundef %10), !dbg !131
  store %struct._xmlDoc* %11, %struct._xmlDoc** %4, align 8, !dbg !128
  %12 = load %struct._xmlDoc*, %struct._xmlDoc** %4, align 8, !dbg !132
  %13 = icmp ne %struct._xmlDoc* %12, null, !dbg !134
  br i1 %13, label %14, label %17, !dbg !135

14:                                               ; preds = %0
  %15 = load %struct._xmlDoc*, %struct._xmlDoc** %4, align 8, !dbg !136
  %16 = bitcast %struct._xmlDoc* %15 to i8*, !dbg !136
  call void @free(i8* noundef %16) #7, !dbg !138
  br label %17, !dbg !139

17:                                               ; preds = %14, %0
  ret i32 0, !dbg !140
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !141 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !145, metadata !DIExpression()), !dbg !146
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !147, metadata !DIExpression()), !dbg !148
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !149, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.declare(metadata i8** %7, metadata !151, metadata !DIExpression()), !dbg !153
  %8 = load i8*, i8** %4, align 8, !dbg !154
  store i8* %8, i8** %7, align 8, !dbg !153
  br label %9, !dbg !155

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !156
  %11 = add i64 %10, -1, !dbg !156
  store i64 %11, i64* %6, align 8, !dbg !156
  %12 = icmp ugt i64 %10, 0, !dbg !157
  br i1 %12, label %13, label %18, !dbg !155

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !158
  %15 = trunc i32 %14 to i8, !dbg !158
  %16 = load i8*, i8** %7, align 8, !dbg !159
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !159
  store i8* %17, i8** %7, align 8, !dbg !159
  store i8 %15, i8* %16, align 1, !dbg !160
  br label %9, !dbg !155, !llvm.loop !161

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !163
  ret i8* %19, !dbg !164
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26, !26}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/210_HTMLparser.c_2486_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "73acf75995b6305345842436101bf2d6")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !1, line: 11, baseType: !5)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !1, line: 10, baseType: !7)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !1, line: 14, size: 448, elements: !8)
!8 = !{!9, !11, !12, !13, !14, !15, !16}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !7, file: !1, line: 15, baseType: !10, size: 32)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !7, file: !1, line: 16, baseType: !3, size: 64, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !7, file: !1, line: 17, baseType: !3, size: 64, offset: 128)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !7, file: !1, line: 18, baseType: !4, size: 64, offset: 192)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !7, file: !1, line: 19, baseType: !3, size: 64, offset: 256)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !7, file: !1, line: 20, baseType: !3, size: 64, offset: 320)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !7, file: !1, line: 21, baseType: !3, size: 64, offset: 384)
!17 = distinct !DICompileUnit(language: DW_LANG_C99, file: !18, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!19 = !{i32 7, !"Dwarf Version", i32 5}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{i32 1, !"wchar_size", i32 4}
!22 = !{i32 7, !"PIC Level", i32 2}
!23 = !{i32 7, !"PIE Level", i32 2}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"Ubuntu clang version 14.0.6"}
!27 = distinct !DISubprogram(name: "htmlErrMemory", scope: !1, file: !1, line: 30, type: !28, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !3, !30}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!32 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!33 = !{}
!34 = !DILocalVariable(name: "ctx", arg: 1, scope: !27, file: !1, line: 30, type: !3)
!35 = !DILocation(line: 30, column: 26, scope: !27)
!36 = !DILocalVariable(name: "msg", arg: 2, scope: !27, file: !1, line: 30, type: !30)
!37 = !DILocation(line: 30, column: 43, scope: !27)
!38 = !DILocation(line: 32, column: 11, scope: !27)
!39 = !DILocation(line: 33, column: 11, scope: !27)
!40 = !DILocation(line: 34, column: 1, scope: !27)
!41 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 37, type: !42, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!42 = !DISubroutineType(types: !43)
!43 = !{!3, !44}
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !45, line: 46, baseType: !46)
!45 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!46 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!47 = !DILocalVariable(name: "size", arg: 1, scope: !41, file: !1, line: 37, type: !44)
!48 = !DILocation(line: 37, column: 24, scope: !41)
!49 = !DILocalVariable(name: "should_fail", scope: !41, file: !1, line: 38, type: !10)
!50 = !DILocation(line: 38, column: 9, scope: !41)
!51 = !DILocation(line: 39, column: 24, scope: !41)
!52 = !DILocation(line: 39, column: 5, scope: !41)
!53 = !DILocation(line: 40, column: 17, scope: !41)
!54 = !DILocation(line: 40, column: 29, scope: !41)
!55 = !DILocation(line: 40, column: 34, scope: !41)
!56 = !DILocation(line: 40, column: 37, scope: !41)
!57 = !DILocation(line: 40, column: 49, scope: !41)
!58 = !DILocation(line: 40, column: 5, scope: !41)
!59 = !DILocation(line: 42, column: 9, scope: !60)
!60 = distinct !DILexicalBlock(scope: !41, file: !1, line: 42, column: 9)
!61 = !DILocation(line: 42, column: 9, scope: !41)
!62 = !DILocation(line: 43, column: 9, scope: !63)
!63 = distinct !DILexicalBlock(scope: !60, file: !1, line: 42, column: 22)
!64 = !DILocalVariable(name: "ptr", scope: !41, file: !1, line: 46, type: !3)
!65 = !DILocation(line: 46, column: 11, scope: !41)
!66 = !DILocation(line: 46, column: 24, scope: !41)
!67 = !DILocation(line: 46, column: 17, scope: !41)
!68 = !DILocation(line: 47, column: 12, scope: !41)
!69 = !DILocation(line: 47, column: 5, scope: !41)
!70 = !DILocation(line: 48, column: 1, scope: !41)
!71 = distinct !DISubprogram(name: "htmlCreateDoc", scope: !1, file: !1, line: 51, type: !72, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!72 = !DISubroutineType(types: !73)
!73 = !{!4, !30, !30}
!74 = !DILocalVariable(name: "URI", arg: 1, scope: !71, file: !1, line: 51, type: !30)
!75 = !DILocation(line: 51, column: 37, scope: !71)
!76 = !DILocalVariable(name: "ExternalID", arg: 2, scope: !71, file: !1, line: 51, type: !30)
!77 = !DILocation(line: 51, column: 54, scope: !71)
!78 = !DILocalVariable(name: "cur", scope: !71, file: !1, line: 52, type: !4)
!79 = !DILocation(line: 52, column: 15, scope: !71)
!80 = !DILocation(line: 57, column: 23, scope: !71)
!81 = !DILocation(line: 57, column: 11, scope: !71)
!82 = !DILocation(line: 57, column: 9, scope: !71)
!83 = !DILocation(line: 58, column: 9, scope: !84)
!84 = distinct !DILexicalBlock(scope: !71, file: !1, line: 58, column: 9)
!85 = !DILocation(line: 58, column: 13, scope: !84)
!86 = !DILocation(line: 58, column: 9, scope: !71)
!87 = !DILocation(line: 59, column: 9, scope: !88)
!88 = distinct !DILexicalBlock(scope: !84, file: !1, line: 58, column: 22)
!89 = !DILocation(line: 60, column: 9, scope: !88)
!90 = !DILocation(line: 64, column: 12, scope: !71)
!91 = !DILocation(line: 64, column: 5, scope: !71)
!92 = !DILocation(line: 70, column: 5, scope: !71)
!93 = !DILocation(line: 72, column: 5, scope: !71)
!94 = !DILocation(line: 72, column: 10, scope: !71)
!95 = !DILocation(line: 72, column: 15, scope: !71)
!96 = !DILocation(line: 73, column: 5, scope: !71)
!97 = !DILocation(line: 73, column: 10, scope: !71)
!98 = !DILocation(line: 73, column: 18, scope: !71)
!99 = !DILocation(line: 74, column: 5, scope: !71)
!100 = !DILocation(line: 74, column: 10, scope: !71)
!101 = !DILocation(line: 74, column: 20, scope: !71)
!102 = !DILocation(line: 75, column: 16, scope: !71)
!103 = !DILocation(line: 75, column: 5, scope: !71)
!104 = !DILocation(line: 75, column: 10, scope: !71)
!105 = !DILocation(line: 75, column: 14, scope: !71)
!106 = !DILocation(line: 77, column: 12, scope: !71)
!107 = !DILocation(line: 77, column: 5, scope: !71)
!108 = !DILocation(line: 78, column: 1, scope: !71)
!109 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 80, type: !110, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!110 = !DISubroutineType(types: !111)
!111 = !{!10}
!112 = !DILocalVariable(name: "URI", scope: !109, file: !1, line: 82, type: !113)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 2048, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 256)
!116 = !DILocation(line: 82, column: 10, scope: !109)
!117 = !DILocalVariable(name: "ExternalID", scope: !109, file: !1, line: 83, type: !113)
!118 = !DILocation(line: 83, column: 10, scope: !109)
!119 = !DILocation(line: 85, column: 24, scope: !109)
!120 = !DILocation(line: 85, column: 5, scope: !109)
!121 = !DILocation(line: 86, column: 24, scope: !109)
!122 = !DILocation(line: 86, column: 5, scope: !109)
!123 = !DILocation(line: 89, column: 5, scope: !109)
!124 = !DILocation(line: 89, column: 14, scope: !109)
!125 = !DILocation(line: 90, column: 5, scope: !109)
!126 = !DILocation(line: 90, column: 21, scope: !109)
!127 = !DILocalVariable(name: "result", scope: !109, file: !1, line: 93, type: !4)
!128 = !DILocation(line: 93, column: 15, scope: !109)
!129 = !DILocation(line: 93, column: 38, scope: !109)
!130 = !DILocation(line: 93, column: 43, scope: !109)
!131 = !DILocation(line: 93, column: 24, scope: !109)
!132 = !DILocation(line: 96, column: 9, scope: !133)
!133 = distinct !DILexicalBlock(scope: !109, file: !1, line: 96, column: 9)
!134 = !DILocation(line: 96, column: 16, scope: !133)
!135 = !DILocation(line: 96, column: 9, scope: !109)
!136 = !DILocation(line: 97, column: 14, scope: !137)
!137 = distinct !DILexicalBlock(scope: !133, file: !1, line: 96, column: 25)
!138 = !DILocation(line: 97, column: 9, scope: !137)
!139 = !DILocation(line: 98, column: 5, scope: !137)
!140 = !DILocation(line: 100, column: 5, scope: !109)
!141 = distinct !DISubprogram(name: "memset", scope: !142, file: !142, line: 12, type: !143, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !33)
!142 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!143 = !DISubroutineType(types: !144)
!144 = !{!3, !3, !10, !44}
!145 = !DILocalVariable(name: "dst", arg: 1, scope: !141, file: !142, line: 12, type: !3)
!146 = !DILocation(line: 12, column: 20, scope: !141)
!147 = !DILocalVariable(name: "s", arg: 2, scope: !141, file: !142, line: 12, type: !10)
!148 = !DILocation(line: 12, column: 29, scope: !141)
!149 = !DILocalVariable(name: "count", arg: 3, scope: !141, file: !142, line: 12, type: !44)
!150 = !DILocation(line: 12, column: 39, scope: !141)
!151 = !DILocalVariable(name: "a", scope: !141, file: !142, line: 13, type: !152)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!153 = !DILocation(line: 13, column: 9, scope: !141)
!154 = !DILocation(line: 13, column: 13, scope: !141)
!155 = !DILocation(line: 14, column: 3, scope: !141)
!156 = !DILocation(line: 14, column: 15, scope: !141)
!157 = !DILocation(line: 14, column: 18, scope: !141)
!158 = !DILocation(line: 15, column: 12, scope: !141)
!159 = !DILocation(line: 15, column: 7, scope: !141)
!160 = !DILocation(line: 15, column: 10, scope: !141)
!161 = distinct !{!161, !155, !158, !162}
!162 = !{!"llvm.loop.mustprogress"}
!163 = !DILocation(line: 16, column: 10, scope: !141)
!164 = !DILocation(line: 16, column: 3, scope: !141)

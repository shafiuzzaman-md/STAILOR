; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/175_tree.c_8006_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/175_tree.c_8006_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.xmlNsMapItem = type { %struct.xmlNsMapItem*, %struct.xmlNsMapItem*, i8*, i8*, i32 }
%struct.xmlNsMap = type { %struct.xmlNsMapItem*, %struct.xmlNsMapItem* }

@.str = private unnamed_addr constant [30 x i8] c"allocating namespace map item\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_55980_vul/175_tree.c_8006_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !26 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i8** %3, metadata !35, metadata !DIExpression()), !dbg !36
  %4 = load i64, i64* %2, align 8, !dbg !37
  %5 = call noalias i8* @malloc(i64 noundef %4) #7, !dbg !38
  store i8* %5, i8** %3, align 8, !dbg !36
  %6 = load i8*, i8** %3, align 8, !dbg !39
  ret i8* %6, !dbg !40
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlTreeErrMemory(i8* noundef %0) #0 !dbg !41 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !47, metadata !DIExpression()), !dbg !48
  ret void, !dbg !49
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xmlNsMapItem* @target_function(%struct.xmlNsMap* noundef %0) #0 !dbg !50 {
  %2 = alloca %struct.xmlNsMapItem*, align 8
  %3 = alloca %struct.xmlNsMap*, align 8
  %4 = alloca %struct.xmlNsMapItem*, align 8
  store %struct.xmlNsMap* %0, %struct.xmlNsMap** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.xmlNsMap** %3, metadata !59, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata %struct.xmlNsMapItem** %4, metadata !61, metadata !DIExpression()), !dbg !62
  %5 = call i8* @xmlMalloc(i64 noundef 40), !dbg !63
  %6 = bitcast i8* %5 to %struct.xmlNsMapItem*, !dbg !64
  store %struct.xmlNsMapItem* %6, %struct.xmlNsMapItem** %4, align 8, !dbg !65
  %7 = load %struct.xmlNsMapItem*, %struct.xmlNsMapItem** %4, align 8, !dbg !66
  %8 = icmp eq %struct.xmlNsMapItem* %7, null, !dbg !68
  br i1 %8, label %9, label %10, !dbg !69

9:                                                ; preds = %1
  call void @xmlTreeErrMemory(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0)), !dbg !70
  store %struct.xmlNsMapItem* null, %struct.xmlNsMapItem** %2, align 8, !dbg !72
  br label %27, !dbg !72

10:                                               ; preds = %1
  %11 = load %struct.xmlNsMapItem*, %struct.xmlNsMapItem** %4, align 8, !dbg !73
  %12 = bitcast %struct.xmlNsMapItem* %11 to i8*, !dbg !74
  %13 = call i8* @memset(i8* %12, i32 0, i64 40), !dbg !74
  %14 = load %struct.xmlNsMap*, %struct.xmlNsMap** %3, align 8, !dbg !75
  %15 = getelementptr inbounds %struct.xmlNsMap, %struct.xmlNsMap* %14, i32 0, i32 0, !dbg !77
  %16 = load %struct.xmlNsMapItem*, %struct.xmlNsMapItem** %15, align 8, !dbg !77
  %17 = icmp eq %struct.xmlNsMapItem* %16, null, !dbg !78
  br i1 %17, label %18, label %25, !dbg !79

18:                                               ; preds = %10
  %19 = load %struct.xmlNsMapItem*, %struct.xmlNsMapItem** %4, align 8, !dbg !80
  %20 = load %struct.xmlNsMap*, %struct.xmlNsMap** %3, align 8, !dbg !82
  %21 = getelementptr inbounds %struct.xmlNsMap, %struct.xmlNsMap* %20, i32 0, i32 0, !dbg !83
  store %struct.xmlNsMapItem* %19, %struct.xmlNsMapItem** %21, align 8, !dbg !84
  %22 = load %struct.xmlNsMapItem*, %struct.xmlNsMapItem** %4, align 8, !dbg !85
  %23 = load %struct.xmlNsMap*, %struct.xmlNsMap** %3, align 8, !dbg !86
  %24 = getelementptr inbounds %struct.xmlNsMap, %struct.xmlNsMap* %23, i32 0, i32 1, !dbg !87
  store %struct.xmlNsMapItem* %22, %struct.xmlNsMapItem** %24, align 8, !dbg !88
  br label %25, !dbg !89

25:                                               ; preds = %18, %10
  %26 = load %struct.xmlNsMapItem*, %struct.xmlNsMapItem** %4, align 8, !dbg !90
  store %struct.xmlNsMapItem* %26, %struct.xmlNsMapItem** %2, align 8, !dbg !91
  br label %27, !dbg !91

27:                                               ; preds = %25, %9
  %28 = load %struct.xmlNsMapItem*, %struct.xmlNsMapItem** %2, align 8, !dbg !92
  ret %struct.xmlNsMapItem* %28, !dbg !92
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !93 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.xmlNsMap, align 8
  %3 = alloca %struct.xmlNsMapItem*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.xmlNsMap* %2, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.declare(metadata %struct.xmlNsMapItem** %3, metadata !98, metadata !DIExpression()), !dbg !99
  %4 = bitcast %struct.xmlNsMap* %2 to i8*, !dbg !100
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 16, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !101
  %5 = getelementptr inbounds %struct.xmlNsMap, %struct.xmlNsMap* %2, i32 0, i32 0, !dbg !102
  %6 = load %struct.xmlNsMapItem*, %struct.xmlNsMapItem** %5, align 8, !dbg !102
  %7 = icmp eq %struct.xmlNsMapItem* %6, null, !dbg !103
  br i1 %7, label %12, label %8, !dbg !104

8:                                                ; preds = %0
  %9 = getelementptr inbounds %struct.xmlNsMap, %struct.xmlNsMap* %2, i32 0, i32 0, !dbg !105
  %10 = load %struct.xmlNsMapItem*, %struct.xmlNsMapItem** %9, align 8, !dbg !105
  %11 = icmp ne %struct.xmlNsMapItem* %10, null, !dbg !106
  br label %12, !dbg !104

12:                                               ; preds = %8, %0
  %13 = phi i1 [ true, %0 ], [ %11, %8 ]
  %14 = zext i1 %13 to i32, !dbg !104
  %15 = sext i32 %14 to i64, !dbg !107
  call void @klee_assume(i64 noundef %15), !dbg !108
  %16 = getelementptr inbounds %struct.xmlNsMap, %struct.xmlNsMap* %2, i32 0, i32 1, !dbg !109
  %17 = load %struct.xmlNsMapItem*, %struct.xmlNsMapItem** %16, align 8, !dbg !109
  %18 = icmp eq %struct.xmlNsMapItem* %17, null, !dbg !110
  br i1 %18, label %23, label %19, !dbg !111

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.xmlNsMap, %struct.xmlNsMap* %2, i32 0, i32 1, !dbg !112
  %21 = load %struct.xmlNsMapItem*, %struct.xmlNsMapItem** %20, align 8, !dbg !112
  %22 = icmp ne %struct.xmlNsMapItem* %21, null, !dbg !113
  br label %23, !dbg !111

23:                                               ; preds = %19, %12
  %24 = phi i1 [ true, %12 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32, !dbg !111
  %26 = sext i32 %25 to i64, !dbg !114
  call void @klee_assume(i64 noundef %26), !dbg !115
  %27 = call %struct.xmlNsMapItem* @target_function(%struct.xmlNsMap* noundef %2), !dbg !116
  store %struct.xmlNsMapItem* %27, %struct.xmlNsMapItem** %3, align 8, !dbg !117
  %28 = load %struct.xmlNsMapItem*, %struct.xmlNsMapItem** %3, align 8, !dbg !118
  %29 = icmp ne %struct.xmlNsMapItem* %28, null, !dbg !120
  br i1 %29, label %30, label %32, !dbg !121

30:                                               ; preds = %23
  %31 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.3, i64 0, i64 0), i32 noundef 89, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !122
  br label %32, !dbg !124

32:                                               ; preds = %30, %23
  %33 = load %struct.xmlNsMapItem*, %struct.xmlNsMapItem** %3, align 8, !dbg !125
  %34 = icmp ne %struct.xmlNsMapItem* %33, null, !dbg !127
  br i1 %34, label %35, label %38, !dbg !128

35:                                               ; preds = %32
  %36 = load %struct.xmlNsMapItem*, %struct.xmlNsMapItem** %3, align 8, !dbg !129
  %37 = bitcast %struct.xmlNsMapItem* %36 to i8*, !dbg !129
  call void @free(i8* noundef %37) #7, !dbg !131
  br label %38, !dbg !132

38:                                               ; preds = %35, %32
  ret i32 0, !dbg !133
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !134 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !138, metadata !DIExpression()), !dbg !139
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !140, metadata !DIExpression()), !dbg !141
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !142, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.declare(metadata i8** %7, metadata !144, metadata !DIExpression()), !dbg !146
  %8 = load i8*, i8** %4, align 8, !dbg !147
  store i8* %8, i8** %7, align 8, !dbg !146
  br label %9, !dbg !148

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !149
  %11 = add i64 %10, -1, !dbg !149
  store i64 %11, i64* %6, align 8, !dbg !149
  %12 = icmp ugt i64 %10, 0, !dbg !150
  br i1 %12, label %13, label %18, !dbg !148

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !151
  %15 = trunc i32 %14 to i8, !dbg !151
  %16 = load i8*, i8** %7, align 8, !dbg !152
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !152
  store i8* %17, i8** %7, align 8, !dbg !152
  store i8 %15, i8* %16, align 1, !dbg !153
  br label %9, !dbg !148, !llvm.loop !154

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !156
  ret i8* %19, !dbg !157
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

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/175_tree.c_8006_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "9553a8aa4aa766c2ea30e572bc75161b")
!2 = !{!3, !12}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsMapItemPtr", file: !1, line: 18, baseType: !4)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsMapItem", file: !1, line: 16, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xmlNsMapItem", file: !1, line: 10, size: 320, elements: !7)
!7 = !{!8, !10, !11, !13, !14}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6, file: !1, line: 11, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !6, file: !1, line: 12, baseType: !9, size: 64, offset: 64)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !6, file: !1, line: 13, baseType: !12, size: 64, offset: 128)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !6, file: !1, line: 14, baseType: !12, size: 64, offset: 192)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "shadowDepth", scope: !6, file: !1, line: 15, baseType: !15, size: 32, offset: 256)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
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
!26 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 26, type: !27, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!27 = !DISubroutineType(types: !28)
!28 = !{!12, !29}
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !30, line: 46, baseType: !31)
!30 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!31 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!32 = !{}
!33 = !DILocalVariable(name: "size", arg: 1, scope: !26, file: !1, line: 26, type: !29)
!34 = !DILocation(line: 26, column: 24, scope: !26)
!35 = !DILocalVariable(name: "ptr", scope: !26, file: !1, line: 27, type: !12)
!36 = !DILocation(line: 27, column: 11, scope: !26)
!37 = !DILocation(line: 27, column: 24, scope: !26)
!38 = !DILocation(line: 27, column: 17, scope: !26)
!39 = !DILocation(line: 28, column: 12, scope: !26)
!40 = !DILocation(line: 28, column: 5, scope: !26)
!41 = distinct !DISubprogram(name: "xmlTreeErrMemory", scope: !1, file: !1, line: 32, type: !42, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!42 = !DISubroutineType(types: !43)
!43 = !{null, !44}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!46 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!47 = !DILocalVariable(name: "msg", arg: 1, scope: !41, file: !1, line: 32, type: !44)
!48 = !DILocation(line: 32, column: 35, scope: !41)
!49 = !DILocation(line: 34, column: 1, scope: !41)
!50 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 37, type: !51, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!51 = !DISubroutineType(types: !52)
!52 = !{!3, !53}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsMap", file: !1, line: 23, baseType: !55)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xmlNsMap", file: !1, line: 20, size: 128, elements: !56)
!56 = !{!57, !58}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !55, file: !1, line: 21, baseType: !3, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !55, file: !1, line: 22, baseType: !3, size: 64, offset: 64)
!59 = !DILocalVariable(name: "map", arg: 1, scope: !50, file: !1, line: 37, type: !53)
!60 = !DILocation(line: 37, column: 43, scope: !50)
!61 = !DILocalVariable(name: "ret", scope: !50, file: !1, line: 38, type: !3)
!62 = !DILocation(line: 38, column: 21, scope: !50)
!63 = !DILocation(line: 40, column: 29, scope: !50)
!64 = !DILocation(line: 40, column: 11, scope: !50)
!65 = !DILocation(line: 40, column: 9, scope: !50)
!66 = !DILocation(line: 41, column: 9, scope: !67)
!67 = distinct !DILexicalBlock(scope: !50, file: !1, line: 41, column: 9)
!68 = !DILocation(line: 41, column: 13, scope: !67)
!69 = !DILocation(line: 41, column: 9, scope: !50)
!70 = !DILocation(line: 42, column: 9, scope: !71)
!71 = distinct !DILexicalBlock(scope: !67, file: !1, line: 41, column: 22)
!72 = !DILocation(line: 43, column: 9, scope: !71)
!73 = !DILocation(line: 47, column: 12, scope: !50)
!74 = !DILocation(line: 47, column: 5, scope: !50)
!75 = !DILocation(line: 49, column: 9, scope: !76)
!76 = distinct !DILexicalBlock(scope: !50, file: !1, line: 49, column: 9)
!77 = !DILocation(line: 49, column: 14, scope: !76)
!78 = !DILocation(line: 49, column: 20, scope: !76)
!79 = !DILocation(line: 49, column: 9, scope: !50)
!80 = !DILocation(line: 50, column: 22, scope: !81)
!81 = distinct !DILexicalBlock(scope: !76, file: !1, line: 49, column: 29)
!82 = !DILocation(line: 50, column: 9, scope: !81)
!83 = !DILocation(line: 50, column: 14, scope: !81)
!84 = !DILocation(line: 50, column: 20, scope: !81)
!85 = !DILocation(line: 51, column: 21, scope: !81)
!86 = !DILocation(line: 51, column: 9, scope: !81)
!87 = !DILocation(line: 51, column: 14, scope: !81)
!88 = !DILocation(line: 51, column: 19, scope: !81)
!89 = !DILocation(line: 52, column: 5, scope: !81)
!90 = !DILocation(line: 54, column: 12, scope: !50)
!91 = !DILocation(line: 54, column: 5, scope: !50)
!92 = !DILocation(line: 55, column: 1, scope: !50)
!93 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 57, type: !94, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!94 = !DISubroutineType(types: !95)
!95 = !{!15}
!96 = !DILocalVariable(name: "map", scope: !93, file: !1, line: 58, type: !54)
!97 = !DILocation(line: 58, column: 14, scope: !93)
!98 = !DILocalVariable(name: "result", scope: !93, file: !1, line: 59, type: !3)
!99 = !DILocation(line: 59, column: 21, scope: !93)
!100 = !DILocation(line: 62, column: 24, scope: !93)
!101 = !DILocation(line: 62, column: 5, scope: !93)
!102 = !DILocation(line: 65, column: 21, scope: !93)
!103 = !DILocation(line: 65, column: 27, scope: !93)
!104 = !DILocation(line: 65, column: 32, scope: !93)
!105 = !DILocation(line: 65, column: 39, scope: !93)
!106 = !DILocation(line: 65, column: 45, scope: !93)
!107 = !DILocation(line: 65, column: 17, scope: !93)
!108 = !DILocation(line: 65, column: 5, scope: !93)
!109 = !DILocation(line: 66, column: 21, scope: !93)
!110 = !DILocation(line: 66, column: 26, scope: !93)
!111 = !DILocation(line: 66, column: 31, scope: !93)
!112 = !DILocation(line: 66, column: 38, scope: !93)
!113 = !DILocation(line: 66, column: 43, scope: !93)
!114 = !DILocation(line: 66, column: 17, scope: !93)
!115 = !DILocation(line: 66, column: 5, scope: !93)
!116 = !DILocation(line: 69, column: 14, scope: !93)
!117 = !DILocation(line: 69, column: 12, scope: !93)
!118 = !DILocation(line: 82, column: 9, scope: !119)
!119 = distinct !DILexicalBlock(scope: !93, file: !1, line: 82, column: 9)
!120 = !DILocation(line: 82, column: 16, scope: !119)
!121 = !DILocation(line: 82, column: 9, scope: !93)
!122 = !DILocation(line: 89, column: 9, scope: !123)
!123 = distinct !DILexicalBlock(scope: !119, file: !1, line: 82, column: 25)
!124 = !DILocation(line: 90, column: 5, scope: !123)
!125 = !DILocation(line: 93, column: 9, scope: !126)
!126 = distinct !DILexicalBlock(scope: !93, file: !1, line: 93, column: 9)
!127 = !DILocation(line: 93, column: 16, scope: !126)
!128 = !DILocation(line: 93, column: 9, scope: !93)
!129 = !DILocation(line: 94, column: 14, scope: !130)
!130 = distinct !DILexicalBlock(scope: !126, file: !1, line: 93, column: 25)
!131 = !DILocation(line: 94, column: 9, scope: !130)
!132 = !DILocation(line: 95, column: 5, scope: !130)
!133 = !DILocation(line: 97, column: 5, scope: !93)
!134 = distinct !DISubprogram(name: "memset", scope: !135, file: !135, line: 12, type: !136, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !32)
!135 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!136 = !DISubroutineType(types: !137)
!137 = !{!12, !12, !15, !29}
!138 = !DILocalVariable(name: "dst", arg: 1, scope: !134, file: !135, line: 12, type: !12)
!139 = !DILocation(line: 12, column: 20, scope: !134)
!140 = !DILocalVariable(name: "s", arg: 2, scope: !134, file: !135, line: 12, type: !15)
!141 = !DILocation(line: 12, column: 29, scope: !134)
!142 = !DILocalVariable(name: "count", arg: 3, scope: !134, file: !135, line: 12, type: !29)
!143 = !DILocation(line: 12, column: 39, scope: !134)
!144 = !DILocalVariable(name: "a", scope: !134, file: !135, line: 13, type: !145)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!146 = !DILocation(line: 13, column: 9, scope: !134)
!147 = !DILocation(line: 13, column: 13, scope: !134)
!148 = !DILocation(line: 14, column: 3, scope: !134)
!149 = !DILocation(line: 14, column: 15, scope: !134)
!150 = !DILocation(line: 14, column: 18, scope: !134)
!151 = !DILocation(line: 15, column: 12, scope: !134)
!152 = !DILocation(line: 15, column: 7, scope: !134)
!153 = !DILocation(line: 15, column: 10, scope: !134)
!154 = distinct !{!154, !148, !151, !155}
!155 = !{!"llvm.loop.mustprogress"}
!156 = !DILocation(line: 16, column: 10, scope: !134)
!157 = !DILocation(line: 16, column: 3, scope: !134)

; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/174_tree.c_7996_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/174_tree.c_7996_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.xmlNsMap = type { %struct.xmlNsMapItem* }
%struct.xmlNsMapItem = type { %struct.xmlNsMapItem*, [64 x i8] }

@.str = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"pool_item_memory\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"pool_item_next\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"(ret != ((void*)0)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_55980_vul/174_tree.c_7996_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.target_function = private unnamed_addr constant [45 x i8] c"xmlNsMapItemPtr target_function(xmlNsMapPtr)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"allocating namespace map item\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !24 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !31, metadata !DIExpression()), !dbg !32
  %3 = load i64, i64* %2, align 8, !dbg !33
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !34
  ret i8* %4, !dbg !35
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlTreeErrMemory(i8* noundef %0) #0 !dbg !36 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !41, metadata !DIExpression()), !dbg !42
  ret void, !dbg !43
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !44 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.xmlNsMap, align 8
  %3 = alloca %struct.xmlNsMapItem*, align 8
  %4 = alloca [72 x i8], align 16
  %5 = alloca %struct.xmlNsMapItem*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.xmlNsMap* %2, metadata !48, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.declare(metadata %struct.xmlNsMapItem** %3, metadata !54, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata [72 x i8]* %4, metadata !56, metadata !DIExpression()), !dbg !60
  %6 = bitcast %struct.xmlNsMap* %2 to i8*, !dbg !61
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !62
  %7 = getelementptr inbounds [72 x i8], [72 x i8]* %4, i64 0, i64 0, !dbg !63
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 72, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0)), !dbg !64
  %8 = getelementptr inbounds %struct.xmlNsMap, %struct.xmlNsMap* %2, i32 0, i32 0, !dbg !65
  %9 = load %struct.xmlNsMapItem*, %struct.xmlNsMapItem** %8, align 8, !dbg !65
  %10 = icmp ne %struct.xmlNsMapItem* %9, null, !dbg !67
  br i1 %10, label %11, label %23, !dbg !68

11:                                               ; preds = %0
  %12 = getelementptr inbounds [72 x i8], [72 x i8]* %4, i64 0, i64 0, !dbg !69
  %13 = bitcast i8* %12 to %struct.xmlNsMapItem*, !dbg !71
  store %struct.xmlNsMapItem* %13, %struct.xmlNsMapItem** %3, align 8, !dbg !72
  %14 = load %struct.xmlNsMapItem*, %struct.xmlNsMapItem** %3, align 8, !dbg !73
  %15 = getelementptr inbounds %struct.xmlNsMap, %struct.xmlNsMap* %2, i32 0, i32 0, !dbg !74
  store %struct.xmlNsMapItem* %14, %struct.xmlNsMapItem** %15, align 8, !dbg !75
  %16 = load %struct.xmlNsMapItem*, %struct.xmlNsMapItem** %3, align 8, !dbg !76
  %17 = getelementptr inbounds %struct.xmlNsMapItem, %struct.xmlNsMapItem* %16, i32 0, i32 0, !dbg !77
  %18 = bitcast %struct.xmlNsMapItem** %17 to i8*, !dbg !78
  call void @klee_make_symbolic(i8* noundef %18, i64 noundef 8, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !79
  %19 = load %struct.xmlNsMapItem*, %struct.xmlNsMapItem** %3, align 8, !dbg !80
  %20 = icmp ne %struct.xmlNsMapItem* %19, null, !dbg !81
  %21 = zext i1 %20 to i32, !dbg !81
  %22 = sext i32 %21 to i64, !dbg !80
  call void @klee_assume(i64 noundef %22), !dbg !82
  br label %23, !dbg !83

23:                                               ; preds = %11, %0
  call void @llvm.dbg.declare(metadata %struct.xmlNsMapItem** %5, metadata !84, metadata !DIExpression()), !dbg !85
  %24 = call %struct.xmlNsMapItem* @target_function(%struct.xmlNsMap* noundef %2), !dbg !86
  store %struct.xmlNsMapItem* %24, %struct.xmlNsMapItem** %5, align 8, !dbg !85
  %25 = load %struct.xmlNsMapItem*, %struct.xmlNsMapItem** %5, align 8, !dbg !87
  %26 = icmp ne %struct.xmlNsMapItem* %25, null, !dbg !89
  br i1 %26, label %27, label %34, !dbg !90

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.xmlNsMap, %struct.xmlNsMap* %2, i32 0, i32 0, !dbg !91
  %29 = load %struct.xmlNsMapItem*, %struct.xmlNsMapItem** %28, align 8, !dbg !91
  %30 = icmp eq %struct.xmlNsMapItem* %29, null, !dbg !92
  br i1 %30, label %31, label %34, !dbg !93

31:                                               ; preds = %27
  %32 = load %struct.xmlNsMapItem*, %struct.xmlNsMapItem** %5, align 8, !dbg !94
  %33 = bitcast %struct.xmlNsMapItem* %32 to i8*, !dbg !94
  call void @free(i8* noundef %33) #7, !dbg !96
  br label %34, !dbg !97

34:                                               ; preds = %31, %27, %23
  ret i32 0, !dbg !98
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xmlNsMapItem* @target_function(%struct.xmlNsMap* noundef %0) #0 !dbg !99 {
  %2 = alloca %struct.xmlNsMapItem*, align 8
  %3 = alloca %struct.xmlNsMap*, align 8
  %4 = alloca %struct.xmlNsMapItem*, align 8
  store %struct.xmlNsMap* %0, %struct.xmlNsMap** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.xmlNsMap** %3, metadata !104, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata %struct.xmlNsMapItem** %4, metadata !106, metadata !DIExpression()), !dbg !107
  %5 = load %struct.xmlNsMap*, %struct.xmlNsMap** %3, align 8, !dbg !108
  %6 = getelementptr inbounds %struct.xmlNsMap, %struct.xmlNsMap* %5, i32 0, i32 0, !dbg !110
  %7 = load %struct.xmlNsMapItem*, %struct.xmlNsMapItem** %6, align 8, !dbg !110
  %8 = icmp ne %struct.xmlNsMapItem* %7, null, !dbg !111
  br i1 %8, label %9, label %30, !dbg !112

9:                                                ; preds = %1
  %10 = load %struct.xmlNsMap*, %struct.xmlNsMap** %3, align 8, !dbg !113
  %11 = getelementptr inbounds %struct.xmlNsMap, %struct.xmlNsMap* %10, i32 0, i32 0, !dbg !115
  %12 = load %struct.xmlNsMapItem*, %struct.xmlNsMapItem** %11, align 8, !dbg !115
  store %struct.xmlNsMapItem* %12, %struct.xmlNsMapItem** %4, align 8, !dbg !116
  %13 = load %struct.xmlNsMapItem*, %struct.xmlNsMapItem** %4, align 8, !dbg !117
  %14 = getelementptr inbounds %struct.xmlNsMapItem, %struct.xmlNsMapItem* %13, i32 0, i32 0, !dbg !118
  %15 = load %struct.xmlNsMapItem*, %struct.xmlNsMapItem** %14, align 8, !dbg !118
  %16 = load %struct.xmlNsMap*, %struct.xmlNsMap** %3, align 8, !dbg !119
  %17 = getelementptr inbounds %struct.xmlNsMap, %struct.xmlNsMap* %16, i32 0, i32 0, !dbg !120
  store %struct.xmlNsMapItem* %15, %struct.xmlNsMapItem** %17, align 8, !dbg !121
  %18 = load %struct.xmlNsMapItem*, %struct.xmlNsMapItem** %4, align 8, !dbg !122
  %19 = bitcast %struct.xmlNsMapItem* %18 to i8*, !dbg !123
  %20 = call i8* @memset(i8* %19, i32 0, i64 72), !dbg !123
  %21 = load %struct.xmlNsMapItem*, %struct.xmlNsMapItem** %4, align 8, !dbg !124
  %22 = icmp ne %struct.xmlNsMapItem* %21, null, !dbg !124
  br i1 %22, label %23, label %25, !dbg !124

23:                                               ; preds = %9
  br i1 true, label %24, label %25, !dbg !124

24:                                               ; preds = %23
  br label %27, !dbg !124

25:                                               ; preds = %23, %9
  %26 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.5, i64 0, i64 0), i32 noundef 44, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !124
  br label %27, !dbg !124

27:                                               ; preds = %25, %24
  %28 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.5, i64 0, i64 0), i32 noundef 47, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !125
  %29 = load %struct.xmlNsMapItem*, %struct.xmlNsMapItem** %4, align 8, !dbg !126
  store %struct.xmlNsMapItem* %29, %struct.xmlNsMapItem** %2, align 8, !dbg !127
  br label %38, !dbg !127

30:                                               ; preds = %1
  %31 = call i8* @xmlMalloc(i64 noundef 72), !dbg !128
  %32 = bitcast i8* %31 to %struct.xmlNsMapItem*, !dbg !130
  store %struct.xmlNsMapItem* %32, %struct.xmlNsMapItem** %4, align 8, !dbg !131
  %33 = load %struct.xmlNsMapItem*, %struct.xmlNsMapItem** %4, align 8, !dbg !132
  %34 = icmp eq %struct.xmlNsMapItem* %33, null, !dbg !134
  br i1 %34, label %35, label %36, !dbg !135

35:                                               ; preds = %30
  call void @xmlTreeErrMemory(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0)), !dbg !136
  store %struct.xmlNsMapItem* null, %struct.xmlNsMapItem** %2, align 8, !dbg !138
  br label %38, !dbg !138

36:                                               ; preds = %30
  %37 = load %struct.xmlNsMapItem*, %struct.xmlNsMapItem** %4, align 8, !dbg !139
  store %struct.xmlNsMapItem* %37, %struct.xmlNsMapItem** %2, align 8, !dbg !140
  br label %38, !dbg !140

38:                                               ; preds = %36, %35, %27
  %39 = load %struct.xmlNsMapItem*, %struct.xmlNsMapItem** %2, align 8, !dbg !141
  ret %struct.xmlNsMapItem* %39, !dbg !141
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !142 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !146, metadata !DIExpression()), !dbg !147
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !148, metadata !DIExpression()), !dbg !149
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !150, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.declare(metadata i8** %7, metadata !152, metadata !DIExpression()), !dbg !154
  %8 = load i8*, i8** %4, align 8, !dbg !155
  store i8* %8, i8** %7, align 8, !dbg !154
  br label %9, !dbg !156

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !157
  %11 = add i64 %10, -1, !dbg !157
  store i64 %11, i64* %6, align 8, !dbg !157
  %12 = icmp ugt i64 %10, 0, !dbg !158
  br i1 %12, label %13, label %18, !dbg !156

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !159
  %15 = trunc i32 %14 to i8, !dbg !159
  %16 = load i8*, i8** %7, align 8, !dbg !160
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !160
  store i8* %17, i8** %7, align 8, !dbg !160
  store i8 %15, i8* %16, align 1, !dbg !161
  br label %9, !dbg !156, !llvm.loop !162

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !164
  ret i8* %19, !dbg !165
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23, !23}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/174_tree.c_7996_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "cd32f3824bf5e71c5b9dec4762e8a613")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsMapItemPtr", file: !1, line: 14, baseType: !5)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xmlNsMapItem", file: !1, line: 10, size: 576, elements: !7)
!7 = !{!8, !9}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6, file: !1, line: 11, baseType: !5, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !6, file: !1, line: 13, baseType: !10, size: 512, offset: 64)
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 512, elements: !12)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !{!13}
!13 = !DISubrange(count: 64)
!14 = distinct !DICompileUnit(language: DW_LANG_C99, file: !15, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!15 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!16 = !{i32 7, !"Dwarf Version", i32 5}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{i32 7, !"PIC Level", i32 2}
!20 = !{i32 7, !"PIE Level", i32 2}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"Ubuntu clang version 14.0.6"}
!24 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 21, type: !25, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !30)
!25 = !DISubroutineType(types: !26)
!26 = !{!3, !27}
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !28, line: 46, baseType: !29)
!28 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!29 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!30 = !{}
!31 = !DILocalVariable(name: "size", arg: 1, scope: !24, file: !1, line: 21, type: !27)
!32 = !DILocation(line: 21, column: 24, scope: !24)
!33 = !DILocation(line: 22, column: 19, scope: !24)
!34 = !DILocation(line: 22, column: 12, scope: !24)
!35 = !DILocation(line: 22, column: 5, scope: !24)
!36 = distinct !DISubprogram(name: "xmlTreeErrMemory", scope: !1, file: !1, line: 26, type: !37, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !30)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !39}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!41 = !DILocalVariable(name: "msg", arg: 1, scope: !36, file: !1, line: 26, type: !39)
!42 = !DILocation(line: 26, column: 35, scope: !36)
!43 = !DILocation(line: 28, column: 1, scope: !36)
!44 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 63, type: !45, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !30)
!45 = !DISubroutineType(types: !46)
!46 = !{!47}
!47 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!48 = !DILocalVariable(name: "map", scope: !44, file: !1, line: 65, type: !49)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsMap", file: !1, line: 18, baseType: !50)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xmlNsMap", file: !1, line: 16, size: 64, elements: !51)
!51 = !{!52}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !50, file: !1, line: 17, baseType: !4, size: 64)
!53 = !DILocation(line: 65, column: 14, scope: !44)
!54 = !DILocalVariable(name: "pool_item", scope: !44, file: !1, line: 68, type: !4)
!55 = !DILocation(line: 68, column: 21, scope: !44)
!56 = !DILocalVariable(name: "pool_item_memory", scope: !44, file: !1, line: 69, type: !57)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 576, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 72)
!60 = !DILocation(line: 69, column: 10, scope: !44)
!61 = !DILocation(line: 72, column: 24, scope: !44)
!62 = !DILocation(line: 72, column: 5, scope: !44)
!63 = !DILocation(line: 73, column: 24, scope: !44)
!64 = !DILocation(line: 73, column: 5, scope: !44)
!65 = !DILocation(line: 76, column: 13, scope: !66)
!66 = distinct !DILexicalBlock(scope: !44, file: !1, line: 76, column: 9)
!67 = !DILocation(line: 76, column: 18, scope: !66)
!68 = !DILocation(line: 76, column: 9, scope: !44)
!69 = !DILocation(line: 78, column: 38, scope: !70)
!70 = distinct !DILexicalBlock(scope: !66, file: !1, line: 76, column: 27)
!71 = !DILocation(line: 78, column: 21, scope: !70)
!72 = !DILocation(line: 78, column: 19, scope: !70)
!73 = !DILocation(line: 79, column: 20, scope: !70)
!74 = !DILocation(line: 79, column: 13, scope: !70)
!75 = !DILocation(line: 79, column: 18, scope: !70)
!76 = !DILocation(line: 82, column: 29, scope: !70)
!77 = !DILocation(line: 82, column: 40, scope: !70)
!78 = !DILocation(line: 82, column: 28, scope: !70)
!79 = !DILocation(line: 82, column: 9, scope: !70)
!80 = !DILocation(line: 85, column: 21, scope: !70)
!81 = !DILocation(line: 85, column: 31, scope: !70)
!82 = !DILocation(line: 85, column: 9, scope: !70)
!83 = !DILocation(line: 86, column: 5, scope: !70)
!84 = !DILocalVariable(name: "result", scope: !44, file: !1, line: 89, type: !4)
!85 = !DILocation(line: 89, column: 21, scope: !44)
!86 = !DILocation(line: 89, column: 30, scope: !44)
!87 = !DILocation(line: 92, column: 9, scope: !88)
!88 = distinct !DILexicalBlock(scope: !44, file: !1, line: 92, column: 9)
!89 = !DILocation(line: 92, column: 16, scope: !88)
!90 = !DILocation(line: 92, column: 24, scope: !88)
!91 = !DILocation(line: 92, column: 31, scope: !88)
!92 = !DILocation(line: 92, column: 36, scope: !88)
!93 = !DILocation(line: 92, column: 9, scope: !44)
!94 = !DILocation(line: 94, column: 14, scope: !95)
!95 = distinct !DILexicalBlock(scope: !88, file: !1, line: 92, column: 45)
!96 = !DILocation(line: 94, column: 9, scope: !95)
!97 = !DILocation(line: 95, column: 5, scope: !95)
!98 = !DILocation(line: 97, column: 5, scope: !44)
!99 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 31, type: !100, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !30)
!100 = !DISubroutineType(types: !101)
!101 = !{!4, !102}
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsMapPtr", file: !1, line: 18, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!104 = !DILocalVariable(name: "map", arg: 1, scope: !99, file: !1, line: 31, type: !102)
!105 = !DILocation(line: 31, column: 52, scope: !99)
!106 = !DILocalVariable(name: "ret", scope: !99, file: !1, line: 32, type: !4)
!107 = !DILocation(line: 32, column: 21, scope: !99)
!108 = !DILocation(line: 34, column: 9, scope: !109)
!109 = distinct !DILexicalBlock(scope: !99, file: !1, line: 34, column: 9)
!110 = !DILocation(line: 34, column: 14, scope: !109)
!111 = !DILocation(line: 34, column: 19, scope: !109)
!112 = !DILocation(line: 34, column: 9, scope: !99)
!113 = !DILocation(line: 38, column: 15, scope: !114)
!114 = distinct !DILexicalBlock(scope: !109, file: !1, line: 34, column: 28)
!115 = !DILocation(line: 38, column: 20, scope: !114)
!116 = !DILocation(line: 38, column: 13, scope: !114)
!117 = !DILocation(line: 39, column: 21, scope: !114)
!118 = !DILocation(line: 39, column: 26, scope: !114)
!119 = !DILocation(line: 39, column: 9, scope: !114)
!120 = !DILocation(line: 39, column: 14, scope: !114)
!121 = !DILocation(line: 39, column: 19, scope: !114)
!122 = !DILocation(line: 41, column: 16, scope: !114)
!123 = !DILocation(line: 41, column: 9, scope: !114)
!124 = !DILocation(line: 44, column: 9, scope: !114)
!125 = !DILocation(line: 47, column: 9, scope: !114)
!126 = !DILocation(line: 49, column: 16, scope: !114)
!127 = !DILocation(line: 49, column: 9, scope: !114)
!128 = !DILocation(line: 54, column: 33, scope: !129)
!129 = distinct !DILexicalBlock(scope: !109, file: !1, line: 50, column: 12)
!130 = !DILocation(line: 54, column: 15, scope: !129)
!131 = !DILocation(line: 54, column: 13, scope: !129)
!132 = !DILocation(line: 55, column: 13, scope: !133)
!133 = distinct !DILexicalBlock(scope: !129, file: !1, line: 55, column: 13)
!134 = !DILocation(line: 55, column: 17, scope: !133)
!135 = !DILocation(line: 55, column: 13, scope: !129)
!136 = !DILocation(line: 56, column: 13, scope: !137)
!137 = distinct !DILexicalBlock(scope: !133, file: !1, line: 55, column: 26)
!138 = !DILocation(line: 57, column: 13, scope: !137)
!139 = !DILocation(line: 59, column: 16, scope: !129)
!140 = !DILocation(line: 59, column: 9, scope: !129)
!141 = !DILocation(line: 61, column: 1, scope: !99)
!142 = distinct !DISubprogram(name: "memset", scope: !143, file: !143, line: 12, type: !144, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !30)
!143 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!144 = !DISubroutineType(types: !145)
!145 = !{!3, !3, !47, !27}
!146 = !DILocalVariable(name: "dst", arg: 1, scope: !142, file: !143, line: 12, type: !3)
!147 = !DILocation(line: 12, column: 20, scope: !142)
!148 = !DILocalVariable(name: "s", arg: 2, scope: !142, file: !143, line: 12, type: !47)
!149 = !DILocation(line: 12, column: 29, scope: !142)
!150 = !DILocalVariable(name: "count", arg: 3, scope: !142, file: !143, line: 12, type: !27)
!151 = !DILocation(line: 12, column: 39, scope: !142)
!152 = !DILocalVariable(name: "a", scope: !142, file: !143, line: 13, type: !153)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!154 = !DILocation(line: 13, column: 9, scope: !142)
!155 = !DILocation(line: 13, column: 13, scope: !142)
!156 = !DILocation(line: 14, column: 3, scope: !142)
!157 = !DILocation(line: 14, column: 15, scope: !142)
!158 = !DILocation(line: 14, column: 18, scope: !142)
!159 = !DILocation(line: 15, column: 12, scope: !142)
!160 = !DILocation(line: 15, column: 7, scope: !142)
!161 = !DILocation(line: 15, column: 10, scope: !142)
!162 = distinct !{!162, !156, !159, !163}
!163 = !{!"llvm.loop.mustprogress"}
!164 = !DILocation(line: 16, column: 10, scope: !142)
!165 = !DILocation(line: 16, column: 3, scope: !142)

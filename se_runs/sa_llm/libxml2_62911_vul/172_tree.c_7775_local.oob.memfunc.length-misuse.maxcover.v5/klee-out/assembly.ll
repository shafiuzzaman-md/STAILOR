; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/172_tree.c_7775_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/172_tree.c_7775_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlNsMap = type { %struct._xmlNsMapItem* }
%struct._xmlNsMapItem = type { %struct._xmlNsMapItem* }

@.str = private unnamed_addr constant [3 x i8] c"an\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"(an == 1) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/172_tree.c_7775_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlNsMapLookup = private unnamed_addr constant [48 x i8] c"xmlNsMapItemPtr xmlNsMapLookup(xmlNsMap *, int)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"(an > 0 && an <= 1024) && \22SAILR_VULN_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !20 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !27, metadata !DIExpression()), !dbg !28
  %3 = load i64, i64* %2, align 8, !dbg !29
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !30
  ret i8* %4, !dbg !31
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlStringGetNodeList(i8* noundef %0) #0 !dbg !32 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !38, metadata !DIExpression()), !dbg !39
  ret i8* null, !dbg !40
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !41 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct._xmlNsMap, align 8
  %4 = alloca %struct._xmlNsMapItem, align 8
  %5 = alloca %struct._xmlNsMap, align 8
  %6 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !45, metadata !DIExpression()), !dbg !46
  %7 = bitcast i32* %2 to i8*, !dbg !47
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !48
  %8 = load i32, i32* %2, align 4, !dbg !49
  %9 = icmp sge i32 %8, 0, !dbg !50
  %10 = zext i1 %9 to i32, !dbg !50
  %11 = sext i32 %10 to i64, !dbg !49
  call void @klee_assume(i64 noundef %11), !dbg !51
  %12 = load i32, i32* %2, align 4, !dbg !52
  %13 = icmp sle i32 %12, 1024, !dbg !53
  %14 = zext i1 %13 to i32, !dbg !53
  %15 = sext i32 %14 to i64, !dbg !52
  call void @klee_assume(i64 noundef %15), !dbg !54
  call void @llvm.dbg.declare(metadata %struct._xmlNsMap* %3, metadata !55, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata %struct._xmlNsMapItem* %4, metadata !61, metadata !DIExpression()), !dbg !62
  %16 = getelementptr inbounds %struct._xmlNsMap, %struct._xmlNsMap* %3, i32 0, i32 0, !dbg !63
  store %struct._xmlNsMapItem* %4, %struct._xmlNsMapItem** %16, align 8, !dbg !64
  %17 = getelementptr inbounds %struct._xmlNsMapItem, %struct._xmlNsMapItem* %4, i32 0, i32 0, !dbg !65
  store %struct._xmlNsMapItem* null, %struct._xmlNsMapItem** %17, align 8, !dbg !66
  %18 = load i32, i32* %2, align 4, !dbg !67
  %19 = call %struct._xmlNsMapItem* @xmlNsMapLookup(%struct._xmlNsMap* noundef %3, i32 noundef %18), !dbg !68
  call void @llvm.dbg.declare(metadata %struct._xmlNsMap* %5, metadata !69, metadata !DIExpression()), !dbg !70
  %20 = getelementptr inbounds %struct._xmlNsMap, %struct._xmlNsMap* %5, i32 0, i32 0, !dbg !71
  store %struct._xmlNsMapItem* null, %struct._xmlNsMapItem** %20, align 8, !dbg !72
  %21 = load i32, i32* %2, align 4, !dbg !73
  %22 = call %struct._xmlNsMapItem* @xmlNsMapLookup(%struct._xmlNsMap* noundef %5, i32 noundef %21), !dbg !74
  call void @llvm.dbg.declare(metadata i8** %6, metadata !75, metadata !DIExpression()), !dbg !76
  %23 = bitcast i8** %6 to i8*, !dbg !77
  call void @klee_make_symbolic(i8* noundef %23, i64 noundef 8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !78
  %24 = load i8*, i8** %6, align 8, !dbg !79
  %25 = call i8* @xmlStringGetNodeList(i8* noundef %24), !dbg !80
  ret i32 0, !dbg !81
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct._xmlNsMapItem* @xmlNsMapLookup(%struct._xmlNsMap* noundef %0, i32 noundef %1) #0 !dbg !82 {
  %3 = alloca %struct._xmlNsMap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._xmlNsMapItem*, align 8
  store %struct._xmlNsMap* %0, %struct._xmlNsMap** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNsMap** %3, metadata !86, metadata !DIExpression()), !dbg !87
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !88, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.declare(metadata %struct._xmlNsMapItem** %5, metadata !90, metadata !DIExpression()), !dbg !91
  %6 = load %struct._xmlNsMap*, %struct._xmlNsMap** %3, align 8, !dbg !92
  %7 = getelementptr inbounds %struct._xmlNsMap, %struct._xmlNsMap* %6, i32 0, i32 0, !dbg !94
  %8 = load %struct._xmlNsMapItem*, %struct._xmlNsMapItem** %7, align 8, !dbg !94
  %9 = icmp ne %struct._xmlNsMapItem* %8, null, !dbg !95
  br i1 %9, label %10, label %33, !dbg !96

10:                                               ; preds = %2
  %11 = load %struct._xmlNsMap*, %struct._xmlNsMap** %3, align 8, !dbg !97
  %12 = getelementptr inbounds %struct._xmlNsMap, %struct._xmlNsMap* %11, i32 0, i32 0, !dbg !99
  %13 = load %struct._xmlNsMapItem*, %struct._xmlNsMapItem** %12, align 8, !dbg !99
  store %struct._xmlNsMapItem* %13, %struct._xmlNsMapItem** %5, align 8, !dbg !100
  %14 = load %struct._xmlNsMapItem*, %struct._xmlNsMapItem** %5, align 8, !dbg !101
  %15 = getelementptr inbounds %struct._xmlNsMapItem, %struct._xmlNsMapItem* %14, i32 0, i32 0, !dbg !102
  %16 = load %struct._xmlNsMapItem*, %struct._xmlNsMapItem** %15, align 8, !dbg !102
  %17 = load %struct._xmlNsMap*, %struct._xmlNsMap** %3, align 8, !dbg !103
  %18 = getelementptr inbounds %struct._xmlNsMap, %struct._xmlNsMap* %17, i32 0, i32 0, !dbg !104
  store %struct._xmlNsMapItem* %16, %struct._xmlNsMapItem** %18, align 8, !dbg !105
  %19 = load %struct._xmlNsMapItem*, %struct._xmlNsMapItem** %5, align 8, !dbg !106
  %20 = bitcast %struct._xmlNsMapItem* %19 to i8*, !dbg !107
  %21 = load i32, i32* %4, align 4, !dbg !108
  %22 = sext i32 %21 to i64, !dbg !108
  %23 = mul i64 8, %22, !dbg !109
  %24 = call i8* @memset(i8* %20, i32 0, i64 %23), !dbg !107
  %25 = load i32, i32* %4, align 4, !dbg !110
  %26 = icmp eq i32 %25, 1, !dbg !110
  br i1 %26, label %27, label %29, !dbg !110

27:                                               ; preds = %10
  br i1 true, label %28, label %29, !dbg !110

28:                                               ; preds = %27
  br label %31, !dbg !110

29:                                               ; preds = %27, %10
  %30 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.4, i64 0, i64 0), i32 noundef 50, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.xmlNsMapLookup, i64 0, i64 0)), !dbg !110
  br label %31, !dbg !110

31:                                               ; preds = %29, %28
  %32 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.4, i64 0, i64 0), i32 noundef 53, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.xmlNsMapLookup, i64 0, i64 0)), !dbg !111
  br label %50, !dbg !112

33:                                               ; preds = %2
  %34 = load i32, i32* %4, align 4, !dbg !113
  %35 = sext i32 %34 to i64, !dbg !113
  %36 = mul i64 8, %35, !dbg !115
  %37 = call i8* @xmlMalloc(i64 noundef %36), !dbg !116
  %38 = bitcast i8* %37 to %struct._xmlNsMapItem*, !dbg !117
  store %struct._xmlNsMapItem* %38, %struct._xmlNsMapItem** %5, align 8, !dbg !118
  %39 = load i32, i32* %4, align 4, !dbg !119
  %40 = icmp sgt i32 %39, 0, !dbg !119
  br i1 %40, label %41, label %46, !dbg !119

41:                                               ; preds = %33
  %42 = load i32, i32* %4, align 4, !dbg !119
  %43 = icmp sle i32 %42, 1024, !dbg !119
  br i1 %43, label %44, label %46, !dbg !119

44:                                               ; preds = %41
  br i1 true, label %45, label %46, !dbg !119

45:                                               ; preds = %44
  br label %48, !dbg !119

46:                                               ; preds = %44, %41, %33
  %47 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.4, i64 0, i64 0), i32 noundef 60, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.xmlNsMapLookup, i64 0, i64 0)), !dbg !119
  br label %48, !dbg !119

48:                                               ; preds = %46, %45
  %49 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.4, i64 0, i64 0), i32 noundef 63, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.xmlNsMapLookup, i64 0, i64 0)), !dbg !120
  br label %50

50:                                               ; preds = %48, %31
  %51 = load %struct._xmlNsMapItem*, %struct._xmlNsMapItem** %5, align 8, !dbg !121
  ret %struct._xmlNsMapItem* %51, !dbg !122
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !123 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !127, metadata !DIExpression()), !dbg !128
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !129, metadata !DIExpression()), !dbg !130
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !131, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.declare(metadata i8** %7, metadata !133, metadata !DIExpression()), !dbg !135
  %8 = load i8*, i8** %4, align 8, !dbg !136
  store i8* %8, i8** %7, align 8, !dbg !135
  br label %9, !dbg !137

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !138
  %11 = add i64 %10, -1, !dbg !138
  store i64 %11, i64* %6, align 8, !dbg !138
  %12 = icmp ugt i64 %10, 0, !dbg !139
  br i1 %12, label %13, label %18, !dbg !137

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !140
  %15 = trunc i32 %14 to i8, !dbg !140
  %16 = load i8*, i8** %7, align 8, !dbg !141
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !141
  store i8* %17, i8** %7, align 8, !dbg !141
  store i8 %15, i8* %16, align 1, !dbg !142
  br label %9, !dbg !137, !llvm.loop !143

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !145
  ret i8* %19, !dbg !146
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19, !19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/172_tree.c_7775_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "4268d7cc0c2e00dca1980aee1c3feb10")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsMapItemPtr", file: !1, line: 11, baseType: !5)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsMapItem", file: !1, line: 10, baseType: !7)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNsMapItem", file: !1, line: 12, size: 64, elements: !8)
!8 = !{!9}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !7, file: !1, line: 13, baseType: !4, size: 64)
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !11, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!11 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!12 = !{i32 7, !"Dwarf Version", i32 5}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{i32 7, !"PIC Level", i32 2}
!16 = !{i32 7, !"PIE Level", i32 2}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"Ubuntu clang version 14.0.6"}
!20 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 24, type: !21, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!21 = !DISubroutineType(types: !22)
!22 = !{!3, !23}
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !24, line: 46, baseType: !25)
!24 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!25 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!26 = !{}
!27 = !DILocalVariable(name: "size", arg: 1, scope: !20, file: !1, line: 24, type: !23)
!28 = !DILocation(line: 24, column: 24, scope: !20)
!29 = !DILocation(line: 25, column: 19, scope: !20)
!30 = !DILocation(line: 25, column: 12, scope: !20)
!31 = !DILocation(line: 25, column: 5, scope: !20)
!32 = distinct !DISubprogram(name: "xmlStringGetNodeList", scope: !1, file: !1, line: 29, type: !33, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!33 = !DISubroutineType(types: !34)
!34 = !{!3, !35}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!37 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!38 = !DILocalVariable(name: "str", arg: 1, scope: !32, file: !1, line: 29, type: !35)
!39 = !DILocation(line: 29, column: 40, scope: !32)
!40 = !DILocation(line: 31, column: 5, scope: !32)
!41 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 69, type: !42, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!42 = !DISubroutineType(types: !43)
!43 = !{!44}
!44 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!45 = !DILocalVariable(name: "an", scope: !41, file: !1, line: 71, type: !44)
!46 = !DILocation(line: 71, column: 9, scope: !41)
!47 = !DILocation(line: 72, column: 24, scope: !41)
!48 = !DILocation(line: 72, column: 5, scope: !41)
!49 = !DILocation(line: 75, column: 17, scope: !41)
!50 = !DILocation(line: 75, column: 20, scope: !41)
!51 = !DILocation(line: 75, column: 5, scope: !41)
!52 = !DILocation(line: 76, column: 17, scope: !41)
!53 = !DILocation(line: 76, column: 20, scope: !41)
!54 = !DILocation(line: 76, column: 5, scope: !41)
!55 = !DILocalVariable(name: "map", scope: !41, file: !1, line: 79, type: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsMap", file: !1, line: 17, baseType: !57)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNsMap", file: !1, line: 18, size: 64, elements: !58)
!58 = !{!59}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !57, file: !1, line: 19, baseType: !4, size: 64)
!60 = !DILocation(line: 79, column: 14, scope: !41)
!61 = !DILocalVariable(name: "pool_item", scope: !41, file: !1, line: 80, type: !6)
!62 = !DILocation(line: 80, column: 18, scope: !41)
!63 = !DILocation(line: 83, column: 9, scope: !41)
!64 = !DILocation(line: 83, column: 14, scope: !41)
!65 = !DILocation(line: 84, column: 15, scope: !41)
!66 = !DILocation(line: 84, column: 20, scope: !41)
!67 = !DILocation(line: 87, column: 26, scope: !41)
!68 = !DILocation(line: 87, column: 5, scope: !41)
!69 = !DILocalVariable(name: "map2", scope: !41, file: !1, line: 90, type: !56)
!70 = !DILocation(line: 90, column: 14, scope: !41)
!71 = !DILocation(line: 91, column: 10, scope: !41)
!72 = !DILocation(line: 91, column: 15, scope: !41)
!73 = !DILocation(line: 92, column: 27, scope: !41)
!74 = !DILocation(line: 92, column: 5, scope: !41)
!75 = !DILocalVariable(name: "str", scope: !41, file: !1, line: 95, type: !35)
!76 = !DILocation(line: 95, column: 17, scope: !41)
!77 = !DILocation(line: 96, column: 24, scope: !41)
!78 = !DILocation(line: 96, column: 5, scope: !41)
!79 = !DILocation(line: 97, column: 26, scope: !41)
!80 = !DILocation(line: 97, column: 5, scope: !41)
!81 = !DILocation(line: 99, column: 5, scope: !41)
!82 = distinct !DISubprogram(name: "xmlNsMapLookup", scope: !1, file: !1, line: 35, type: !83, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !26)
!83 = !DISubroutineType(types: !84)
!84 = !{!4, !85, !44}
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!86 = !DILocalVariable(name: "map", arg: 1, scope: !82, file: !1, line: 35, type: !85)
!87 = !DILocation(line: 35, column: 49, scope: !82)
!88 = !DILocalVariable(name: "an", arg: 2, scope: !82, file: !1, line: 35, type: !44)
!89 = !DILocation(line: 35, column: 58, scope: !82)
!90 = !DILocalVariable(name: "ret", scope: !82, file: !1, line: 36, type: !4)
!91 = !DILocation(line: 36, column: 21, scope: !82)
!92 = !DILocation(line: 38, column: 9, scope: !93)
!93 = distinct !DILexicalBlock(scope: !82, file: !1, line: 38, column: 9)
!94 = !DILocation(line: 38, column: 14, scope: !93)
!95 = !DILocation(line: 38, column: 19, scope: !93)
!96 = !DILocation(line: 38, column: 9, scope: !82)
!97 = !DILocation(line: 40, column: 15, scope: !98)
!98 = distinct !DILexicalBlock(scope: !93, file: !1, line: 38, column: 28)
!99 = !DILocation(line: 40, column: 20, scope: !98)
!100 = !DILocation(line: 40, column: 13, scope: !98)
!101 = !DILocation(line: 41, column: 21, scope: !98)
!102 = !DILocation(line: 41, column: 26, scope: !98)
!103 = !DILocation(line: 41, column: 9, scope: !98)
!104 = !DILocation(line: 41, column: 14, scope: !98)
!105 = !DILocation(line: 41, column: 19, scope: !98)
!106 = !DILocation(line: 45, column: 16, scope: !98)
!107 = !DILocation(line: 45, column: 9, scope: !98)
!108 = !DILocation(line: 45, column: 55, scope: !98)
!109 = !DILocation(line: 45, column: 53, scope: !98)
!110 = !DILocation(line: 50, column: 9, scope: !98)
!111 = !DILocation(line: 53, column: 9, scope: !98)
!112 = !DILocation(line: 54, column: 5, scope: !98)
!113 = !DILocation(line: 56, column: 74, scope: !114)
!114 = distinct !DILexicalBlock(scope: !93, file: !1, line: 54, column: 12)
!115 = !DILocation(line: 56, column: 72, scope: !114)
!116 = !DILocation(line: 56, column: 33, scope: !114)
!117 = !DILocation(line: 56, column: 15, scope: !114)
!118 = !DILocation(line: 56, column: 13, scope: !114)
!119 = !DILocation(line: 60, column: 9, scope: !114)
!120 = !DILocation(line: 63, column: 9, scope: !114)
!121 = !DILocation(line: 66, column: 12, scope: !82)
!122 = !DILocation(line: 66, column: 5, scope: !82)
!123 = distinct !DISubprogram(name: "memset", scope: !124, file: !124, line: 12, type: !125, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !26)
!124 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!125 = !DISubroutineType(types: !126)
!126 = !{!3, !3, !44, !23}
!127 = !DILocalVariable(name: "dst", arg: 1, scope: !123, file: !124, line: 12, type: !3)
!128 = !DILocation(line: 12, column: 20, scope: !123)
!129 = !DILocalVariable(name: "s", arg: 2, scope: !123, file: !124, line: 12, type: !44)
!130 = !DILocation(line: 12, column: 29, scope: !123)
!131 = !DILocalVariable(name: "count", arg: 3, scope: !123, file: !124, line: 12, type: !23)
!132 = !DILocation(line: 12, column: 39, scope: !123)
!133 = !DILocalVariable(name: "a", scope: !123, file: !124, line: 13, type: !134)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!135 = !DILocation(line: 13, column: 9, scope: !123)
!136 = !DILocation(line: 13, column: 13, scope: !123)
!137 = !DILocation(line: 14, column: 3, scope: !123)
!138 = !DILocation(line: 14, column: 15, scope: !123)
!139 = !DILocation(line: 14, column: 18, scope: !123)
!140 = !DILocation(line: 15, column: 12, scope: !123)
!141 = !DILocation(line: 15, column: 7, scope: !123)
!142 = !DILocation(line: 15, column: 10, scope: !123)
!143 = distinct !{!143, !137, !140, !144}
!144 = !{!"llvm.loop.mustprogress"}
!145 = !DILocation(line: 16, column: 10, scope: !123)
!146 = !DILocation(line: 16, column: 3, scope: !123)

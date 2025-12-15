; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/013_parserInternals.c_1492_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/013_parserInternals.c_1492_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlParserCtxt = type { %struct._xmlSAXHandler*, i8*, i32 }
%struct._xmlSAXHandler = type { i32, [256 x i8] }

@.str = private unnamed_addr constant [8 x i8] c"sax_ptr\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"userData_ptr\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [114 x i8] c"se_runs/sa_llm/libxml2_55980_vul/013_parserInternals.c_1492_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlInitParserCtxt = private unnamed_addr constant [39 x i8] c"int xmlInitParserCtxt(xmlParserCtxt *)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlInitParserCtxt(%struct._xmlParserCtxt* noundef %0) #0 !dbg !27 {
  %2 = alloca %struct._xmlParserCtxt*, align 8
  %3 = alloca %struct._xmlSAXHandler*, align 8
  %4 = alloca i8*, align 8
  store %struct._xmlParserCtxt* %0, %struct._xmlParserCtxt** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %2, metadata !39, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata %struct._xmlSAXHandler** %3, metadata !41, metadata !DIExpression()), !dbg !42
  store %struct._xmlSAXHandler* null, %struct._xmlSAXHandler** %3, align 8, !dbg !42
  call void @llvm.dbg.declare(metadata i8** %4, metadata !43, metadata !DIExpression()), !dbg !44
  store i8* null, i8** %4, align 8, !dbg !44
  %5 = bitcast %struct._xmlSAXHandler** %3 to i8*, !dbg !45
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)), !dbg !46
  %6 = bitcast i8** %4 to i8*, !dbg !47
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 8, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0)), !dbg !48
  %7 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !49
  %8 = icmp ne %struct._xmlSAXHandler* %7, null, !dbg !50
  %9 = zext i1 %8 to i32, !dbg !50
  %10 = sext i32 %9 to i64, !dbg !49
  call void @klee_assume(i64 noundef %10), !dbg !51
  %11 = call noalias i8* @malloc(i64 noundef 260) #8, !dbg !52
  %12 = bitcast i8* %11 to %struct._xmlSAXHandler*, !dbg !53
  %13 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !54
  %14 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %13, i32 0, i32 0, !dbg !55
  store %struct._xmlSAXHandler* %12, %struct._xmlSAXHandler** %14, align 8, !dbg !56
  %15 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !57
  %16 = getelementptr inbounds %struct._xmlSAXHandler, %struct._xmlSAXHandler* %15, i32 0, i32 0, !dbg !59
  %17 = load i32, i32* %16, align 4, !dbg !59
  %18 = icmp eq i32 %17, -554844497, !dbg !60
  br i1 %18, label %19, label %28, !dbg !61

19:                                               ; preds = %1
  %20 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([114 x i8], [114 x i8]* @.str.3, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.xmlInitParserCtxt, i64 0, i64 0)), !dbg !62
  %21 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !64
  %22 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %21, i32 0, i32 0, !dbg !65
  %23 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %22, align 8, !dbg !65
  %24 = bitcast %struct._xmlSAXHandler* %23 to i8*, !dbg !66
  %25 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !67
  %26 = bitcast %struct._xmlSAXHandler* %25 to i8*, !dbg !66
  %27 = call i8* @memcpy(i8* %24, i8* %26, i64 260), !dbg !66
  br label %41, !dbg !68

28:                                               ; preds = %1
  %29 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !69
  %30 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %29, i32 0, i32 0, !dbg !71
  %31 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %30, align 8, !dbg !71
  %32 = bitcast %struct._xmlSAXHandler* %31 to i8*, !dbg !72
  %33 = call i8* @memset(i8* %32, i32 0, i64 260), !dbg !72
  %34 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !73
  %35 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %34, i32 0, i32 0, !dbg !74
  %36 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %35, align 8, !dbg !74
  %37 = bitcast %struct._xmlSAXHandler* %36 to i8*, !dbg !75
  %38 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !76
  %39 = bitcast %struct._xmlSAXHandler* %38 to i8*, !dbg !75
  %40 = call i8* @memcpy(i8* %37, i8* %39, i64 132), !dbg !75
  br label %41

41:                                               ; preds = %28, %19
  %42 = load i8*, i8** %4, align 8, !dbg !77
  %43 = icmp ne i8* %42, null, !dbg !77
  br i1 %43, label %44, label %46, !dbg !77

44:                                               ; preds = %41
  %45 = load i8*, i8** %4, align 8, !dbg !78
  br label %49, !dbg !77

46:                                               ; preds = %41
  %47 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !79
  %48 = bitcast %struct._xmlParserCtxt* %47 to i8*, !dbg !79
  br label %49, !dbg !77

49:                                               ; preds = %46, %44
  %50 = phi i8* [ %45, %44 ], [ %48, %46 ], !dbg !77
  %51 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !80
  %52 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %51, i32 0, i32 1, !dbg !81
  store i8* %50, i8** %52, align 8, !dbg !82
  %53 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !83
  %54 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %53, i32 0, i32 2, !dbg !84
  store i32 0, i32* %54, align 8, !dbg !85
  %55 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !86
  %56 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %55, i32 0, i32 0, !dbg !87
  %57 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %56, align 8, !dbg !87
  %58 = bitcast %struct._xmlSAXHandler* %57 to i8*, !dbg !86
  call void @free(i8* noundef %58) #8, !dbg !88
  ret i32 0, !dbg !89
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !90 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlParserCtxt, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt* %2, metadata !93, metadata !DIExpression()), !dbg !94
  %3 = call i32 @xmlInitParserCtxt(%struct._xmlParserCtxt* noundef %2), !dbg !95
  ret i32 0, !dbg !96
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !97 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !106, metadata !DIExpression()), !dbg !107
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !108, metadata !DIExpression()), !dbg !109
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !110, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.declare(metadata i8** %7, metadata !112, metadata !DIExpression()), !dbg !114
  %9 = load i8*, i8** %4, align 8, !dbg !115
  store i8* %9, i8** %7, align 8, !dbg !114
  call void @llvm.dbg.declare(metadata i8** %8, metadata !116, metadata !DIExpression()), !dbg !119
  %10 = load i8*, i8** %5, align 8, !dbg !120
  store i8* %10, i8** %8, align 8, !dbg !119
  br label %11, !dbg !121

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !122
  %13 = add i64 %12, -1, !dbg !122
  store i64 %13, i64* %6, align 8, !dbg !122
  %14 = icmp ugt i64 %12, 0, !dbg !123
  br i1 %14, label %15, label %21, !dbg !121

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !124
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !124
  store i8* %17, i8** %8, align 8, !dbg !124
  %18 = load i8, i8* %16, align 1, !dbg !125
  %19 = load i8*, i8** %7, align 8, !dbg !126
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !126
  store i8* %20, i8** %7, align 8, !dbg !126
  store i8 %18, i8* %19, align 1, !dbg !127
  br label %11, !dbg !121, !llvm.loop !128

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !130
  ret i8* %22, !dbg !131
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #7 !dbg !132 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !136, metadata !DIExpression()), !dbg !137
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !138, metadata !DIExpression()), !dbg !139
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !140, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.declare(metadata i8** %7, metadata !142, metadata !DIExpression()), !dbg !143
  %8 = load i8*, i8** %4, align 8, !dbg !144
  store i8* %8, i8** %7, align 8, !dbg !143
  br label %9, !dbg !145

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !146
  %11 = add i64 %10, -1, !dbg !146
  store i64 %11, i64* %6, align 8, !dbg !146
  %12 = icmp ugt i64 %10, 0, !dbg !147
  br i1 %12, label %13, label %18, !dbg !145

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !148
  %15 = trunc i32 %14 to i8, !dbg !148
  %16 = load i8*, i8** %7, align 8, !dbg !149
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !149
  store i8* %17, i8** %7, align 8, !dbg !149
  store i8 %15, i8* %16, align 1, !dbg !150
  br label %9, !dbg !145, !llvm.loop !151

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !152
  ret i8* %19, !dbg !153
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0, !15, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26, !26, !26}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/013_parserInternals.c_1492_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "b1f983ef7c9d9862d592e8c6cd92b57a")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSAXHandler", file: !1, line: 10, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSAXHandler", file: !1, line: 18, size: 2080, elements: !7)
!7 = !{!8, !10}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !6, file: !1, line: 19, baseType: !9, size: 32)
!9 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !6, file: !1, line: 21, baseType: !11, size: 2048, offset: 32)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 2048, elements: !13)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !{!14}
!14 = !DISubrange(count: 256)
!15 = distinct !DICompileUnit(language: DW_LANG_C99, file: !16, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!16 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
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
!27 = distinct !DISubprogram(name: "xmlInitParserCtxt", scope: !1, file: !1, line: 41, type: !28, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !38)
!28 = !DISubroutineType(types: !29)
!29 = !{!30, !31}
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxt", file: !1, line: 12, baseType: !33)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserCtxt", file: !1, line: 30, size: 192, elements: !34)
!34 = !{!35, !36, !37}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "sax", scope: !33, file: !1, line: 31, baseType: !4, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !33, file: !1, line: 32, baseType: !3, size: 64, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "maxatts", scope: !33, file: !1, line: 33, baseType: !30, size: 32, offset: 128)
!38 = !{}
!39 = !DILocalVariable(name: "ctxt", arg: 1, scope: !27, file: !1, line: 41, type: !31)
!40 = !DILocation(line: 41, column: 38, scope: !27)
!41 = !DILocalVariable(name: "sax", scope: !27, file: !1, line: 43, type: !4)
!42 = !DILocation(line: 43, column: 20, scope: !27)
!43 = !DILocalVariable(name: "userData", scope: !27, file: !1, line: 44, type: !3)
!44 = !DILocation(line: 44, column: 11, scope: !27)
!45 = !DILocation(line: 47, column: 24, scope: !27)
!46 = !DILocation(line: 47, column: 5, scope: !27)
!47 = !DILocation(line: 48, column: 24, scope: !27)
!48 = !DILocation(line: 48, column: 5, scope: !27)
!49 = !DILocation(line: 51, column: 17, scope: !27)
!50 = !DILocation(line: 51, column: 21, scope: !27)
!51 = !DILocation(line: 51, column: 5, scope: !27)
!52 = !DILocation(line: 54, column: 33, scope: !27)
!53 = !DILocation(line: 54, column: 17, scope: !27)
!54 = !DILocation(line: 54, column: 5, scope: !27)
!55 = !DILocation(line: 54, column: 11, scope: !27)
!56 = !DILocation(line: 54, column: 15, scope: !27)
!57 = !DILocation(line: 56, column: 9, scope: !58)
!58 = distinct !DILexicalBlock(scope: !27, file: !1, line: 56, column: 9)
!59 = !DILocation(line: 56, column: 14, scope: !58)
!60 = !DILocation(line: 56, column: 26, scope: !58)
!61 = !DILocation(line: 56, column: 9, scope: !27)
!62 = !DILocation(line: 64, column: 9, scope: !63)
!63 = distinct !DILexicalBlock(scope: !58, file: !1, line: 56, column: 45)
!64 = !DILocation(line: 66, column: 16, scope: !63)
!65 = !DILocation(line: 66, column: 22, scope: !63)
!66 = !DILocation(line: 66, column: 9, scope: !63)
!67 = !DILocation(line: 66, column: 27, scope: !63)
!68 = !DILocation(line: 67, column: 5, scope: !63)
!69 = !DILocation(line: 68, column: 16, scope: !70)
!70 = distinct !DILexicalBlock(scope: !58, file: !1, line: 67, column: 12)
!71 = !DILocation(line: 68, column: 22, scope: !70)
!72 = !DILocation(line: 68, column: 9, scope: !70)
!73 = !DILocation(line: 69, column: 16, scope: !70)
!74 = !DILocation(line: 69, column: 22, scope: !70)
!75 = !DILocation(line: 69, column: 9, scope: !70)
!76 = !DILocation(line: 69, column: 27, scope: !70)
!77 = !DILocation(line: 72, column: 22, scope: !27)
!78 = !DILocation(line: 72, column: 33, scope: !27)
!79 = !DILocation(line: 72, column: 44, scope: !27)
!80 = !DILocation(line: 72, column: 5, scope: !27)
!81 = !DILocation(line: 72, column: 11, scope: !27)
!82 = !DILocation(line: 72, column: 20, scope: !27)
!83 = !DILocation(line: 73, column: 5, scope: !27)
!84 = !DILocation(line: 73, column: 11, scope: !27)
!85 = !DILocation(line: 73, column: 19, scope: !27)
!86 = !DILocation(line: 75, column: 10, scope: !27)
!87 = !DILocation(line: 75, column: 16, scope: !27)
!88 = !DILocation(line: 75, column: 5, scope: !27)
!89 = !DILocation(line: 76, column: 5, scope: !27)
!90 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 79, type: !91, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !38)
!91 = !DISubroutineType(types: !92)
!92 = !{!30}
!93 = !DILocalVariable(name: "ctxt", scope: !90, file: !1, line: 80, type: !32)
!94 = !DILocation(line: 80, column: 19, scope: !90)
!95 = !DILocation(line: 83, column: 5, scope: !90)
!96 = !DILocation(line: 85, column: 5, scope: !90)
!97 = distinct !DISubprogram(name: "memcpy", scope: !98, file: !98, line: 12, type: !99, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !38)
!98 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!99 = !DISubroutineType(types: !100)
!100 = !{!3, !3, !101, !103}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !104, line: 46, baseType: !105)
!104 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!105 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!106 = !DILocalVariable(name: "destaddr", arg: 1, scope: !97, file: !98, line: 12, type: !3)
!107 = !DILocation(line: 12, column: 20, scope: !97)
!108 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !97, file: !98, line: 12, type: !101)
!109 = !DILocation(line: 12, column: 42, scope: !97)
!110 = !DILocalVariable(name: "len", arg: 3, scope: !97, file: !98, line: 12, type: !103)
!111 = !DILocation(line: 12, column: 58, scope: !97)
!112 = !DILocalVariable(name: "dest", scope: !97, file: !98, line: 13, type: !113)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!114 = !DILocation(line: 13, column: 9, scope: !97)
!115 = !DILocation(line: 13, column: 16, scope: !97)
!116 = !DILocalVariable(name: "src", scope: !97, file: !98, line: 14, type: !117)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!119 = !DILocation(line: 14, column: 15, scope: !97)
!120 = !DILocation(line: 14, column: 21, scope: !97)
!121 = !DILocation(line: 16, column: 3, scope: !97)
!122 = !DILocation(line: 16, column: 13, scope: !97)
!123 = !DILocation(line: 16, column: 16, scope: !97)
!124 = !DILocation(line: 17, column: 19, scope: !97)
!125 = !DILocation(line: 17, column: 15, scope: !97)
!126 = !DILocation(line: 17, column: 10, scope: !97)
!127 = !DILocation(line: 17, column: 13, scope: !97)
!128 = distinct !{!128, !121, !124, !129}
!129 = !{!"llvm.loop.mustprogress"}
!130 = !DILocation(line: 18, column: 10, scope: !97)
!131 = !DILocation(line: 18, column: 3, scope: !97)
!132 = distinct !DISubprogram(name: "memset", scope: !133, file: !133, line: 12, type: !134, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !38)
!133 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!134 = !DISubroutineType(types: !135)
!135 = !{!3, !3, !30, !103}
!136 = !DILocalVariable(name: "dst", arg: 1, scope: !132, file: !133, line: 12, type: !3)
!137 = !DILocation(line: 12, column: 20, scope: !132)
!138 = !DILocalVariable(name: "s", arg: 2, scope: !132, file: !133, line: 12, type: !30)
!139 = !DILocation(line: 12, column: 29, scope: !132)
!140 = !DILocalVariable(name: "count", arg: 3, scope: !132, file: !133, line: 12, type: !103)
!141 = !DILocation(line: 12, column: 39, scope: !132)
!142 = !DILocalVariable(name: "a", scope: !132, file: !133, line: 13, type: !113)
!143 = !DILocation(line: 13, column: 9, scope: !132)
!144 = !DILocation(line: 13, column: 13, scope: !132)
!145 = !DILocation(line: 14, column: 3, scope: !132)
!146 = !DILocation(line: 14, column: 15, scope: !132)
!147 = !DILocation(line: 14, column: 18, scope: !132)
!148 = !DILocation(line: 15, column: 12, scope: !132)
!149 = !DILocation(line: 15, column: 7, scope: !132)
!150 = !DILocation(line: 15, column: 10, scope: !132)
!151 = distinct !{!151, !145, !148, !129}
!152 = !DILocation(line: 16, column: 10, scope: !132)
!153 = !DILocation(line: 16, column: 3, scope: !132)

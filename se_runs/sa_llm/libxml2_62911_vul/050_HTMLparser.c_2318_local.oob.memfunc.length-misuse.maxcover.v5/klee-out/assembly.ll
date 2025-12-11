; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/050_HTMLparser.c_2318_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/050_HTMLparser.c_2318_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._htmlParserCtxt = type { i32 }
%struct._htmlParserInput = type { [1 x i8], [1 x i8], [1 x i8], [1 x i8], [1 x i8], [100 x i8] }

@.str = private unnamed_addr constant [38 x i8] c"couldn't allocate a new input stream\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [109 x i8] c"se_runs/sa_llm/libxml2_62911_vul/050_HTMLparser.c_2318_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.htmlParseComment = private unnamed_addr constant [41 x i8] c"void *htmlParseComment(htmlParserCtxt *)\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"ctxt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @htmlErrMemory(%struct._htmlParserCtxt* noundef %0, i8* noundef %1) #0 !dbg !37 {
  %3 = alloca %struct._htmlParserCtxt*, align 8
  %4 = alloca i8*, align 8
  store %struct._htmlParserCtxt* %0, %struct._htmlParserCtxt** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._htmlParserCtxt** %3, metadata !43, metadata !DIExpression()), !dbg !44
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !45, metadata !DIExpression()), !dbg !46
  ret void, !dbg !47
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !48 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !54, metadata !DIExpression()), !dbg !55
  %3 = load i64, i64* %2, align 8, !dbg !56
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !57
  ret i8* %4, !dbg !58
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @htmlParseComment(%struct._htmlParserCtxt* noundef %0) #0 !dbg !59 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._htmlParserCtxt*, align 8
  %4 = alloca %struct._htmlParserInput*, align 8
  store %struct._htmlParserCtxt* %0, %struct._htmlParserCtxt** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._htmlParserCtxt** %3, metadata !62, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.declare(metadata %struct._htmlParserInput** %4, metadata !64, metadata !DIExpression()), !dbg !65
  %5 = call i8* @xmlMalloc(i64 noundef 105), !dbg !66
  %6 = bitcast i8* %5 to %struct._htmlParserInput*, !dbg !67
  store %struct._htmlParserInput* %6, %struct._htmlParserInput** %4, align 8, !dbg !68
  %7 = load %struct._htmlParserInput*, %struct._htmlParserInput** %4, align 8, !dbg !69
  %8 = icmp eq %struct._htmlParserInput* %7, null, !dbg !71
  br i1 %8, label %9, label %11, !dbg !72

9:                                                ; preds = %1
  %10 = load %struct._htmlParserCtxt*, %struct._htmlParserCtxt** %3, align 8, !dbg !73
  call void @htmlErrMemory(%struct._htmlParserCtxt* noundef %10, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0)), !dbg !75
  store i8* null, i8** %2, align 8, !dbg !76
  br label %33, !dbg !76

11:                                               ; preds = %1
  %12 = load %struct._htmlParserInput*, %struct._htmlParserInput** %4, align 8, !dbg !77
  %13 = bitcast %struct._htmlParserInput* %12 to i8*, !dbg !78
  %14 = call i8* @memset(i8* %13, i32 0, i64 105), !dbg !78
  %15 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.2, i64 0, i64 0), i32 noundef 69, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.htmlParseComment, i64 0, i64 0)), !dbg !79
  %16 = load %struct._htmlParserInput*, %struct._htmlParserInput** %4, align 8, !dbg !80
  %17 = getelementptr inbounds %struct._htmlParserInput, %struct._htmlParserInput* %16, i32 0, i32 0, !dbg !81
  %18 = getelementptr inbounds [1 x i8], [1 x i8]* %17, i64 0, i64 0, !dbg !80
  store i8 0, i8* %18, align 1, !dbg !82
  %19 = load %struct._htmlParserInput*, %struct._htmlParserInput** %4, align 8, !dbg !83
  %20 = getelementptr inbounds %struct._htmlParserInput, %struct._htmlParserInput* %19, i32 0, i32 1, !dbg !84
  %21 = getelementptr inbounds [1 x i8], [1 x i8]* %20, i64 0, i64 0, !dbg !83
  store i8 0, i8* %21, align 1, !dbg !85
  %22 = load %struct._htmlParserInput*, %struct._htmlParserInput** %4, align 8, !dbg !86
  %23 = getelementptr inbounds %struct._htmlParserInput, %struct._htmlParserInput* %22, i32 0, i32 2, !dbg !87
  %24 = getelementptr inbounds [1 x i8], [1 x i8]* %23, i64 0, i64 0, !dbg !86
  store i8 0, i8* %24, align 1, !dbg !88
  %25 = load %struct._htmlParserInput*, %struct._htmlParserInput** %4, align 8, !dbg !89
  %26 = getelementptr inbounds %struct._htmlParserInput, %struct._htmlParserInput* %25, i32 0, i32 3, !dbg !90
  %27 = getelementptr inbounds [1 x i8], [1 x i8]* %26, i64 0, i64 0, !dbg !89
  store i8 0, i8* %27, align 1, !dbg !91
  %28 = load %struct._htmlParserInput*, %struct._htmlParserInput** %4, align 8, !dbg !92
  %29 = getelementptr inbounds %struct._htmlParserInput, %struct._htmlParserInput* %28, i32 0, i32 4, !dbg !93
  %30 = getelementptr inbounds [1 x i8], [1 x i8]* %29, i64 0, i64 0, !dbg !92
  store i8 0, i8* %30, align 1, !dbg !94
  %31 = load %struct._htmlParserInput*, %struct._htmlParserInput** %4, align 8, !dbg !95
  %32 = bitcast %struct._htmlParserInput* %31 to i8*, !dbg !95
  store i8* %32, i8** %2, align 8, !dbg !96
  br label %33, !dbg !96

33:                                               ; preds = %11, %9
  %34 = load i8*, i8** %2, align 8, !dbg !97
  ret i8* %34, !dbg !97
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !98 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._htmlParserCtxt*, align 8
  %3 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._htmlParserCtxt** %2, metadata !101, metadata !DIExpression()), !dbg !102
  %4 = call noalias i8* @malloc(i64 noundef 4) #7, !dbg !103
  %5 = bitcast i8* %4 to %struct._htmlParserCtxt*, !dbg !104
  store %struct._htmlParserCtxt* %5, %struct._htmlParserCtxt** %2, align 8, !dbg !102
  %6 = load %struct._htmlParserCtxt*, %struct._htmlParserCtxt** %2, align 8, !dbg !105
  %7 = icmp eq %struct._htmlParserCtxt* %6, null, !dbg !107
  br i1 %7, label %8, label %9, !dbg !108

8:                                                ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !109
  br label %21, !dbg !109

9:                                                ; preds = %0
  %10 = load %struct._htmlParserCtxt*, %struct._htmlParserCtxt** %2, align 8, !dbg !111
  %11 = bitcast %struct._htmlParserCtxt* %10 to i8*, !dbg !111
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)), !dbg !112
  call void @llvm.dbg.declare(metadata i8** %3, metadata !113, metadata !DIExpression()), !dbg !114
  %12 = load %struct._htmlParserCtxt*, %struct._htmlParserCtxt** %2, align 8, !dbg !115
  %13 = call i8* @htmlParseComment(%struct._htmlParserCtxt* noundef %12), !dbg !116
  store i8* %13, i8** %3, align 8, !dbg !114
  %14 = load %struct._htmlParserCtxt*, %struct._htmlParserCtxt** %2, align 8, !dbg !117
  %15 = bitcast %struct._htmlParserCtxt* %14 to i8*, !dbg !117
  call void @free(i8* noundef %15) #7, !dbg !118
  %16 = load i8*, i8** %3, align 8, !dbg !119
  %17 = icmp ne i8* %16, null, !dbg !121
  br i1 %17, label %18, label %20, !dbg !122

18:                                               ; preds = %9
  %19 = load i8*, i8** %3, align 8, !dbg !123
  call void @free(i8* noundef %19) #7, !dbg !125
  br label %20, !dbg !126

20:                                               ; preds = %18, %9
  store i32 0, i32* %1, align 4, !dbg !127
  br label %21, !dbg !127

21:                                               ; preds = %20, %8
  %22 = load i32, i32* %1, align 4, !dbg !128
  ret i32 %22, !dbg !128
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !129 {
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
  call void @llvm.dbg.declare(metadata i8** %7, metadata !139, metadata !DIExpression()), !dbg !141
  %8 = load i8*, i8** %4, align 8, !dbg !142
  store i8* %8, i8** %7, align 8, !dbg !141
  br label %9, !dbg !143

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !144
  %11 = add i64 %10, -1, !dbg !144
  store i64 %11, i64* %6, align 8, !dbg !144
  %12 = icmp ugt i64 %10, 0, !dbg !145
  br i1 %12, label %13, label %18, !dbg !143

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !146
  %15 = trunc i32 %14 to i8, !dbg !146
  %16 = load i8*, i8** %7, align 8, !dbg !147
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !147
  store i8* %17, i8** %7, align 8, !dbg !147
  store i8 %15, i8* %16, align 1, !dbg !148
  br label %9, !dbg !143, !llvm.loop !149

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !151
  ret i8* %19, !dbg !152
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36, !36}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/050_HTMLparser.c_2318_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "31daede50e5d2d8aff721b0ee7d38301")
!2 = !{!3, !20, !21}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "htmlParserInput", file: !1, line: 16, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_htmlParserInput", file: !1, line: 25, size: 840, elements: !6)
!6 = !{!7, !12, !13, !14, !15, !16}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !5, file: !1, line: 26, baseType: !8, size: 8)
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 8, elements: !10)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!10 = !{!11}
!11 = !DISubrange(count: 1)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !5, file: !1, line: 27, baseType: !8, size: 8, offset: 8)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5, file: !1, line: 28, baseType: !8, size: 8, offset: 16)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !5, file: !1, line: 29, baseType: !8, size: 8, offset: 24)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !5, file: !1, line: 30, baseType: !8, size: 8, offset: 32)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !5, file: !1, line: 32, baseType: !17, size: 800, offset: 40)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 800, elements: !18)
!18 = !{!19}
!19 = !DISubrange(count: 100)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "htmlParserCtxt", file: !1, line: 17, baseType: !23)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_htmlParserCtxt", file: !1, line: 20, size: 32, elements: !24)
!24 = !{!25}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !23, file: !1, line: 21, baseType: !26, size: 32)
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = distinct !DICompileUnit(language: DW_LANG_C99, file: !28, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!28 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!29 = !{i32 7, !"Dwarf Version", i32 5}
!30 = !{i32 2, !"Debug Info Version", i32 3}
!31 = !{i32 1, !"wchar_size", i32 4}
!32 = !{i32 7, !"PIC Level", i32 2}
!33 = !{i32 7, !"PIE Level", i32 2}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"Ubuntu clang version 14.0.6"}
!37 = distinct !DISubprogram(name: "htmlErrMemory", scope: !1, file: !1, line: 36, type: !38, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !42)
!38 = !DISubroutineType(types: !39)
!39 = !{null, !21, !40}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!42 = !{}
!43 = !DILocalVariable(name: "ctxt", arg: 1, scope: !37, file: !1, line: 36, type: !21)
!44 = !DILocation(line: 36, column: 36, scope: !37)
!45 = !DILocalVariable(name: "msg", arg: 2, scope: !37, file: !1, line: 36, type: !40)
!46 = !DILocation(line: 36, column: 54, scope: !37)
!47 = !DILocation(line: 38, column: 1, scope: !37)
!48 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 40, type: !49, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !42)
!49 = !DISubroutineType(types: !50)
!50 = !{!20, !51}
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !52, line: 46, baseType: !53)
!52 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!53 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!54 = !DILocalVariable(name: "size", arg: 1, scope: !48, file: !1, line: 40, type: !51)
!55 = !DILocation(line: 40, column: 24, scope: !48)
!56 = !DILocation(line: 41, column: 19, scope: !48)
!57 = !DILocation(line: 41, column: 12, scope: !48)
!58 = !DILocation(line: 41, column: 5, scope: !48)
!59 = distinct !DISubprogram(name: "htmlParseComment", scope: !1, file: !1, line: 45, type: !60, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !42)
!60 = !DISubroutineType(types: !61)
!61 = !{!20, !21}
!62 = !DILocalVariable(name: "ctxt", arg: 1, scope: !59, file: !1, line: 45, type: !21)
!63 = !DILocation(line: 45, column: 40, scope: !59)
!64 = !DILocalVariable(name: "input", scope: !59, file: !1, line: 47, type: !3)
!65 = !DILocation(line: 47, column: 22, scope: !59)
!66 = !DILocation(line: 49, column: 31, scope: !59)
!67 = !DILocation(line: 49, column: 13, scope: !59)
!68 = !DILocation(line: 49, column: 11, scope: !59)
!69 = !DILocation(line: 50, column: 9, scope: !70)
!70 = distinct !DILexicalBlock(scope: !59, file: !1, line: 50, column: 9)
!71 = !DILocation(line: 50, column: 15, scope: !70)
!72 = !DILocation(line: 50, column: 9, scope: !59)
!73 = !DILocation(line: 51, column: 23, scope: !74)
!74 = distinct !DILexicalBlock(scope: !70, file: !1, line: 50, column: 24)
!75 = !DILocation(line: 51, column: 9, scope: !74)
!76 = !DILocation(line: 52, column: 9, scope: !74)
!77 = !DILocation(line: 66, column: 12, scope: !59)
!78 = !DILocation(line: 66, column: 5, scope: !59)
!79 = !DILocation(line: 69, column: 5, scope: !59)
!80 = !DILocation(line: 72, column: 5, scope: !59)
!81 = !DILocation(line: 72, column: 12, scope: !59)
!82 = !DILocation(line: 72, column: 24, scope: !59)
!83 = !DILocation(line: 73, column: 5, scope: !59)
!84 = !DILocation(line: 73, column: 12, scope: !59)
!85 = !DILocation(line: 73, column: 25, scope: !59)
!86 = !DILocation(line: 74, column: 5, scope: !59)
!87 = !DILocation(line: 74, column: 12, scope: !59)
!88 = !DILocation(line: 74, column: 20, scope: !59)
!89 = !DILocation(line: 75, column: 5, scope: !59)
!90 = !DILocation(line: 75, column: 12, scope: !59)
!91 = !DILocation(line: 75, column: 19, scope: !59)
!92 = !DILocation(line: 76, column: 5, scope: !59)
!93 = !DILocation(line: 76, column: 12, scope: !59)
!94 = !DILocation(line: 76, column: 19, scope: !59)
!95 = !DILocation(line: 78, column: 12, scope: !59)
!96 = !DILocation(line: 78, column: 5, scope: !59)
!97 = !DILocation(line: 79, column: 1, scope: !59)
!98 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 81, type: !99, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !42)
!99 = !DISubroutineType(types: !100)
!100 = !{!26}
!101 = !DILocalVariable(name: "ctxt", scope: !98, file: !1, line: 83, type: !21)
!102 = !DILocation(line: 83, column: 21, scope: !98)
!103 = !DILocation(line: 83, column: 45, scope: !98)
!104 = !DILocation(line: 83, column: 28, scope: !98)
!105 = !DILocation(line: 84, column: 9, scope: !106)
!106 = distinct !DILexicalBlock(scope: !98, file: !1, line: 84, column: 9)
!107 = !DILocation(line: 84, column: 14, scope: !106)
!108 = !DILocation(line: 84, column: 9, scope: !98)
!109 = !DILocation(line: 85, column: 9, scope: !110)
!110 = distinct !DILexicalBlock(scope: !106, file: !1, line: 84, column: 23)
!111 = !DILocation(line: 89, column: 24, scope: !98)
!112 = !DILocation(line: 89, column: 5, scope: !98)
!113 = !DILocalVariable(name: "result", scope: !98, file: !1, line: 92, type: !20)
!114 = !DILocation(line: 92, column: 11, scope: !98)
!115 = !DILocation(line: 92, column: 37, scope: !98)
!116 = !DILocation(line: 92, column: 20, scope: !98)
!117 = !DILocation(line: 95, column: 10, scope: !98)
!118 = !DILocation(line: 95, column: 5, scope: !98)
!119 = !DILocation(line: 96, column: 9, scope: !120)
!120 = distinct !DILexicalBlock(scope: !98, file: !1, line: 96, column: 9)
!121 = !DILocation(line: 96, column: 16, scope: !120)
!122 = !DILocation(line: 96, column: 9, scope: !98)
!123 = !DILocation(line: 97, column: 14, scope: !124)
!124 = distinct !DILexicalBlock(scope: !120, file: !1, line: 96, column: 25)
!125 = !DILocation(line: 97, column: 9, scope: !124)
!126 = !DILocation(line: 98, column: 5, scope: !124)
!127 = !DILocation(line: 100, column: 5, scope: !98)
!128 = !DILocation(line: 101, column: 1, scope: !98)
!129 = distinct !DISubprogram(name: "memset", scope: !130, file: !130, line: 12, type: !131, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !42)
!130 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!131 = !DISubroutineType(types: !132)
!132 = !{!20, !20, !26, !51}
!133 = !DILocalVariable(name: "dst", arg: 1, scope: !129, file: !130, line: 12, type: !20)
!134 = !DILocation(line: 12, column: 20, scope: !129)
!135 = !DILocalVariable(name: "s", arg: 2, scope: !129, file: !130, line: 12, type: !26)
!136 = !DILocation(line: 12, column: 29, scope: !129)
!137 = !DILocalVariable(name: "count", arg: 3, scope: !129, file: !130, line: 12, type: !51)
!138 = !DILocation(line: 12, column: 39, scope: !129)
!139 = !DILocalVariable(name: "a", scope: !129, file: !130, line: 13, type: !140)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!141 = !DILocation(line: 13, column: 9, scope: !129)
!142 = !DILocation(line: 13, column: 13, scope: !129)
!143 = !DILocation(line: 14, column: 3, scope: !129)
!144 = !DILocation(line: 14, column: 15, scope: !129)
!145 = !DILocation(line: 14, column: 18, scope: !129)
!146 = !DILocation(line: 15, column: 12, scope: !129)
!147 = !DILocation(line: 15, column: 7, scope: !129)
!148 = !DILocation(line: 15, column: 10, scope: !129)
!149 = distinct !{!149, !143, !146, !150}
!150 = !{!"llvm.loop.mustprogress"}
!151 = !DILocation(line: 16, column: 10, scope: !129)
!152 = !DILocation(line: 16, column: 3, scope: !129)

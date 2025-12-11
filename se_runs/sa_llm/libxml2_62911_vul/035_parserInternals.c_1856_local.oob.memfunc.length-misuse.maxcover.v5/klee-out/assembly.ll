; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/035_parserInternals.c_1856_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/035_parserInternals.c_1856_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlParserCtxt = type { %struct._xmlSAXHandler*, i8* }
%struct._xmlSAXHandler = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"sax\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"userData\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"(ctxt->sax != ((void*)0)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [114 x i8] c"se_runs/sa_llm/libxml2_62911_vul/035_parserInternals.c_1856_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlNextChar = private unnamed_addr constant [34 x i8] c"void xmlNextChar(xmlParserCtxt *)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"sax_size\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlNextChar(%struct._xmlParserCtxt* noundef %0) #0 !dbg !12 {
  %2 = alloca %struct._xmlParserCtxt*, align 8
  %3 = alloca %struct._xmlSAXHandler*, align 8
  %4 = alloca i8*, align 8
  store %struct._xmlParserCtxt* %0, %struct._xmlParserCtxt** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %2, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata %struct._xmlSAXHandler** %3, metadata !30, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata i8** %4, metadata !32, metadata !DIExpression()), !dbg !33
  %5 = bitcast %struct._xmlSAXHandler** %3 to i8*, !dbg !34
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !35
  %6 = bitcast i8** %4 to i8*, !dbg !36
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)), !dbg !37
  %7 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !38
  %8 = icmp ne %struct._xmlSAXHandler* %7, null, !dbg !39
  %9 = zext i1 %8 to i32, !dbg !39
  %10 = sext i32 %9 to i64, !dbg !38
  call void @klee_assume(i64 noundef %10), !dbg !40
  %11 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !41
  %12 = getelementptr inbounds %struct._xmlSAXHandler, %struct._xmlSAXHandler* %11, i32 0, i32 0, !dbg !43
  %13 = load i32, i32* %12, align 4, !dbg !43
  %14 = icmp eq i32 %13, -559038737, !dbg !44
  br i1 %14, label %15, label %16, !dbg !45

15:                                               ; preds = %1
  br label %27, !dbg !46

16:                                               ; preds = %1
  %17 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !48
  %18 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %17, i32 0, i32 0, !dbg !48
  %19 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %18, align 8, !dbg !48
  %20 = icmp ne %struct._xmlSAXHandler* %19, null, !dbg !48
  br i1 %20, label %21, label %23, !dbg !48

21:                                               ; preds = %16
  br i1 true, label %22, label %23, !dbg !48

22:                                               ; preds = %21
  br label %25, !dbg !48

23:                                               ; preds = %21, %16
  %24 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([114 x i8], [114 x i8]* @.str.4, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.xmlNextChar, i64 0, i64 0)), !dbg !48
  br label %25, !dbg !48

25:                                               ; preds = %23, %22
  %26 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([114 x i8], [114 x i8]* @.str.4, i64 0, i64 0), i32 noundef 59, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.xmlNextChar, i64 0, i64 0)), !dbg !50
  br label %27

27:                                               ; preds = %25, %15
  ret void, !dbg !51
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !52 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlParserCtxt*, align 8
  %3 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %2, metadata !55, metadata !DIExpression()), !dbg !56
  %4 = call noalias i8* @malloc(i64 noundef 16) #5, !dbg !57
  %5 = bitcast i8* %4 to %struct._xmlParserCtxt*, !dbg !57
  store %struct._xmlParserCtxt* %5, %struct._xmlParserCtxt** %2, align 8, !dbg !56
  %6 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !58
  %7 = icmp ne %struct._xmlParserCtxt* %6, null, !dbg !58
  br i1 %7, label %9, label %8, !dbg !60

8:                                                ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !61
  br label %35, !dbg !61

9:                                                ; preds = %0
  call void @llvm.dbg.declare(metadata i64* %3, metadata !62, metadata !DIExpression()), !dbg !66
  %10 = bitcast i64* %3 to i8*, !dbg !67
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)), !dbg !68
  %11 = load i64, i64* %3, align 8, !dbg !69
  %12 = icmp uge i64 %11, 0, !dbg !70
  %13 = zext i1 %12 to i32, !dbg !70
  %14 = sext i32 %13 to i64, !dbg !69
  call void @klee_assume(i64 noundef %14), !dbg !71
  %15 = load i64, i64* %3, align 8, !dbg !72
  %16 = call noalias i8* @malloc(i64 noundef %15) #5, !dbg !73
  %17 = bitcast i8* %16 to %struct._xmlSAXHandler*, !dbg !73
  %18 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !74
  %19 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %18, i32 0, i32 0, !dbg !75
  store %struct._xmlSAXHandler* %17, %struct._xmlSAXHandler** %19, align 8, !dbg !76
  %20 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !77
  %21 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %20, i32 0, i32 0, !dbg !79
  %22 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %21, align 8, !dbg !79
  %23 = icmp ne %struct._xmlSAXHandler* %22, null, !dbg !77
  br i1 %23, label %27, label %24, !dbg !80

24:                                               ; preds = %9
  %25 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !81
  %26 = bitcast %struct._xmlParserCtxt* %25 to i8*, !dbg !81
  call void @free(i8* noundef %26) #5, !dbg !83
  store i32 1, i32* %1, align 4, !dbg !84
  br label %35, !dbg !84

27:                                               ; preds = %9
  %28 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !85
  call void @xmlNextChar(%struct._xmlParserCtxt* noundef %28), !dbg !86
  %29 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !87
  %30 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %29, i32 0, i32 0, !dbg !88
  %31 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %30, align 8, !dbg !88
  %32 = bitcast %struct._xmlSAXHandler* %31 to i8*, !dbg !87
  call void @free(i8* noundef %32) #5, !dbg !89
  %33 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !90
  %34 = bitcast %struct._xmlParserCtxt* %33 to i8*, !dbg !90
  call void @free(i8* noundef %34) #5, !dbg !91
  store i32 0, i32* %1, align 4, !dbg !92
  br label %35, !dbg !92

35:                                               ; preds = %27, %24, %8
  %36 = load i32, i32* %1, align 4, !dbg !93
  ret i32 %36, !dbg !93
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/035_parserInternals.c_1856_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "03e5776a47dc906c62d1d0c8efcc692b")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 7, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"Ubuntu clang version 14.0.6"}
!12 = distinct !DISubprogram(name: "xmlNextChar", scope: !1, file: !1, line: 26, type: !13, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !27)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxt", file: !1, line: 23, baseType: !17)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserCtxt", file: !1, line: 19, size: 128, elements: !18)
!18 = !{!19, !26}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "sax", scope: !17, file: !1, line: 20, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSAXHandler", file: !1, line: 13, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSAXHandler", file: !1, line: 10, size: 32, elements: !23)
!23 = !{!24}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !22, file: !1, line: 11, baseType: !25, size: 32)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !17, file: !1, line: 21, baseType: !3, size: 64, offset: 64)
!27 = !{}
!28 = !DILocalVariable(name: "ctxt", arg: 1, scope: !12, file: !1, line: 26, type: !15)
!29 = !DILocation(line: 26, column: 33, scope: !12)
!30 = !DILocalVariable(name: "sax", scope: !12, file: !1, line: 29, type: !20)
!31 = !DILocation(line: 29, column: 20, scope: !12)
!32 = !DILocalVariable(name: "userData", scope: !12, file: !1, line: 30, type: !3)
!33 = !DILocation(line: 30, column: 11, scope: !12)
!34 = !DILocation(line: 33, column: 24, scope: !12)
!35 = !DILocation(line: 33, column: 5, scope: !12)
!36 = !DILocation(line: 34, column: 24, scope: !12)
!37 = !DILocation(line: 34, column: 5, scope: !12)
!38 = !DILocation(line: 37, column: 17, scope: !12)
!39 = !DILocation(line: 37, column: 21, scope: !12)
!40 = !DILocation(line: 37, column: 5, scope: !12)
!41 = !DILocation(line: 40, column: 9, scope: !42)
!42 = distinct !DILexicalBlock(scope: !12, file: !1, line: 40, column: 9)
!43 = !DILocation(line: 40, column: 14, scope: !42)
!44 = !DILocation(line: 40, column: 26, scope: !42)
!45 = !DILocation(line: 40, column: 9, scope: !12)
!46 = !DILocation(line: 42, column: 5, scope: !47)
!47 = distinct !DILexicalBlock(scope: !42, file: !1, line: 40, column: 41)
!48 = !DILocation(line: 56, column: 9, scope: !49)
!49 = distinct !DILexicalBlock(scope: !42, file: !1, line: 42, column: 12)
!50 = !DILocation(line: 59, column: 9, scope: !49)
!51 = !DILocation(line: 61, column: 1, scope: !12)
!52 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 63, type: !53, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !27)
!53 = !DISubroutineType(types: !54)
!54 = !{!25}
!55 = !DILocalVariable(name: "ctxt", scope: !52, file: !1, line: 65, type: !15)
!56 = !DILocation(line: 65, column: 20, scope: !52)
!57 = !DILocation(line: 65, column: 27, scope: !52)
!58 = !DILocation(line: 66, column: 10, scope: !59)
!59 = distinct !DILexicalBlock(scope: !52, file: !1, line: 66, column: 9)
!60 = !DILocation(line: 66, column: 9, scope: !52)
!61 = !DILocation(line: 66, column: 16, scope: !59)
!62 = !DILocalVariable(name: "sax_size", scope: !52, file: !1, line: 69, type: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !64, line: 46, baseType: !65)
!64 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!65 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!66 = !DILocation(line: 69, column: 12, scope: !52)
!67 = !DILocation(line: 70, column: 24, scope: !52)
!68 = !DILocation(line: 70, column: 5, scope: !52)
!69 = !DILocation(line: 73, column: 17, scope: !52)
!70 = !DILocation(line: 73, column: 26, scope: !52)
!71 = !DILocation(line: 73, column: 5, scope: !52)
!72 = !DILocation(line: 76, column: 24, scope: !52)
!73 = !DILocation(line: 76, column: 17, scope: !52)
!74 = !DILocation(line: 76, column: 5, scope: !52)
!75 = !DILocation(line: 76, column: 11, scope: !52)
!76 = !DILocation(line: 76, column: 15, scope: !52)
!77 = !DILocation(line: 77, column: 10, scope: !78)
!78 = distinct !DILexicalBlock(scope: !52, file: !1, line: 77, column: 9)
!79 = !DILocation(line: 77, column: 16, scope: !78)
!80 = !DILocation(line: 77, column: 9, scope: !52)
!81 = !DILocation(line: 78, column: 14, scope: !82)
!82 = distinct !DILexicalBlock(scope: !78, file: !1, line: 77, column: 21)
!83 = !DILocation(line: 78, column: 9, scope: !82)
!84 = !DILocation(line: 79, column: 9, scope: !82)
!85 = !DILocation(line: 83, column: 17, scope: !52)
!86 = !DILocation(line: 83, column: 5, scope: !52)
!87 = !DILocation(line: 86, column: 10, scope: !52)
!88 = !DILocation(line: 86, column: 16, scope: !52)
!89 = !DILocation(line: 86, column: 5, scope: !52)
!90 = !DILocation(line: 87, column: 10, scope: !52)
!91 = !DILocation(line: 87, column: 5, scope: !52)
!92 = !DILocation(line: 89, column: 5, scope: !52)
!93 = !DILocation(line: 90, column: 1, scope: !52)

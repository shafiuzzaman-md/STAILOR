; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/109_parser.c_9351_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/109_parser.c_9351_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlParserCtxt = type { %struct._xmlHashTable*, i32 }
%struct._xmlHashTable = type opaque

@.str = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"newSize\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"(newSize >= size && (newSize - size) >= 0) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_62911_vul/109_parser.c_9351_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlParserNsLookup = private unnamed_addr constant [87 x i8] c"void *xmlParserNsLookup(xmlParserCtxt *, const unsigned char *, const unsigned char *)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"attrHash\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"attrHashMax\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"nsName\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlParserNsLookup(%struct._xmlParserCtxt* noundef %0, i8* noundef %1, i8* noundef %2) #0 !dbg !12 {
  %4 = alloca %struct._xmlParserCtxt*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._xmlHashTable*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct._xmlParserCtxt* %0, %struct._xmlParserCtxt** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %4, metadata !29, metadata !DIExpression()), !dbg !30
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !31, metadata !DIExpression()), !dbg !32
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata %struct._xmlHashTable** %7, metadata !35, metadata !DIExpression()), !dbg !36
  %10 = bitcast %struct._xmlHashTable** %7 to i8*, !dbg !37
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 8, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)), !dbg !38
  call void @llvm.dbg.declare(metadata i32* %8, metadata !39, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata i32* %9, metadata !41, metadata !DIExpression()), !dbg !42
  %11 = bitcast i32* %8 to i8*, !dbg !43
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !44
  %12 = bitcast i32* %9 to i8*, !dbg !45
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)), !dbg !46
  %13 = load i32, i32* %8, align 4, !dbg !47
  %14 = icmp sge i32 %13, 0, !dbg !48
  %15 = zext i1 %14 to i32, !dbg !48
  %16 = sext i32 %15 to i64, !dbg !47
  call void @klee_assume(i64 noundef %16), !dbg !49
  %17 = load i32, i32* %9, align 4, !dbg !50
  %18 = icmp sge i32 %17, 0, !dbg !51
  %19 = zext i1 %18 to i32, !dbg !51
  %20 = sext i32 %19 to i64, !dbg !50
  call void @klee_assume(i64 noundef %20), !dbg !52
  %21 = load i32, i32* %9, align 4, !dbg !53
  %22 = load i32, i32* %8, align 4, !dbg !53
  %23 = icmp sge i32 %21, %22, !dbg !53
  br i1 %23, label %24, label %31, !dbg !53

24:                                               ; preds = %3
  %25 = load i32, i32* %9, align 4, !dbg !53
  %26 = load i32, i32* %8, align 4, !dbg !53
  %27 = sub nsw i32 %25, %26, !dbg !53
  %28 = icmp sge i32 %27, 0, !dbg !53
  br i1 %28, label %29, label %31, !dbg !53

29:                                               ; preds = %24
  br i1 true, label %30, label %31, !dbg !53

30:                                               ; preds = %29
  br label %33, !dbg !53

31:                                               ; preds = %29, %24, %3
  %32 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.5, i64 0, i64 0), i32 noundef 39, i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @__PRETTY_FUNCTION__.xmlParserNsLookup, i64 0, i64 0)), !dbg !53
  br label %33, !dbg !53

33:                                               ; preds = %31, %30
  %34 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.5, i64 0, i64 0), i32 noundef 42, i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @__PRETTY_FUNCTION__.xmlParserNsLookup, i64 0, i64 0)), !dbg !54
  ret i8* null, !dbg !55
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !56 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlParserCtxt*, align 8
  %3 = alloca [32 x i8], align 16
  %4 = alloca [32 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %2, metadata !59, metadata !DIExpression()), !dbg !60
  %5 = call noalias i8* @malloc(i64 noundef 16) #5, !dbg !61
  %6 = bitcast i8* %5 to %struct._xmlParserCtxt*, !dbg !61
  store %struct._xmlParserCtxt* %6, %struct._xmlParserCtxt** %2, align 8, !dbg !60
  %7 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !62
  %8 = icmp ne %struct._xmlParserCtxt* %7, null, !dbg !62
  br i1 %8, label %10, label %9, !dbg !64

9:                                                ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !65
  br label %25, !dbg !65

10:                                               ; preds = %0
  %11 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !66
  %12 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %11, i32 0, i32 0, !dbg !67
  %13 = bitcast %struct._xmlHashTable** %12 to i8*, !dbg !68
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)), !dbg !69
  %14 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !70
  %15 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %14, i32 0, i32 1, !dbg !71
  %16 = bitcast i32* %15 to i8*, !dbg !72
  call void @klee_make_symbolic(i8* noundef %16, i64 noundef 4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0)), !dbg !73
  call void @llvm.dbg.declare(metadata [32 x i8]* %3, metadata !74, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.declare(metadata [32 x i8]* %4, metadata !79, metadata !DIExpression()), !dbg !80
  %17 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0, !dbg !81
  call void @klee_make_symbolic(i8* noundef %17, i64 noundef 32, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0)), !dbg !82
  %18 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0, !dbg !83
  call void @klee_make_symbolic(i8* noundef %18, i64 noundef 32, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)), !dbg !84
  %19 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !85
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0, !dbg !86
  %21 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0, !dbg !87
  %22 = call i8* @xmlParserNsLookup(%struct._xmlParserCtxt* noundef %19, i8* noundef %20, i8* noundef %21), !dbg !88
  %23 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !89
  %24 = bitcast %struct._xmlParserCtxt* %23 to i8*, !dbg !89
  call void @free(i8* noundef %24) #5, !dbg !90
  store i32 0, i32* %1, align 4, !dbg !91
  br label %25, !dbg !91

25:                                               ; preds = %10, %9
  %26 = load i32, i32* %1, align 4, !dbg !92
  ret i32 %26, !dbg !92
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
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/109_parser.c_9351_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "2e96afdff50568e0d680ff4594e47f6b")
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
!12 = distinct !DISubprogram(name: "xmlParserNsLookup", scope: !1, file: !1, line: 14, type: !13, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!13 = !DISubroutineType(types: !14)
!14 = !{!3, !15, !25, !25}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxt", file: !1, line: 10, baseType: !17)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserCtxt", file: !1, line: 48, size: 128, elements: !18)
!18 = !{!19, !23}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "attrHash", scope: !17, file: !1, line: 49, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTable", file: !1, line: 11, baseType: !22)
!22 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlHashTable", file: !1, line: 11, flags: DIFlagFwdDecl)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "attrHashMax", scope: !17, file: !1, line: 50, baseType: !24, size: 32, offset: 64)
!24 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!27 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!28 = !{}
!29 = !DILocalVariable(name: "ctxt", arg: 1, scope: !12, file: !1, line: 14, type: !15)
!30 = !DILocation(line: 14, column: 40, scope: !12)
!31 = !DILocalVariable(name: "prefix", arg: 2, scope: !12, file: !1, line: 14, type: !25)
!32 = !DILocation(line: 14, column: 67, scope: !12)
!33 = !DILocalVariable(name: "nsName", arg: 3, scope: !12, file: !1, line: 14, type: !25)
!34 = !DILocation(line: 14, column: 96, scope: !12)
!35 = !DILocalVariable(name: "table", scope: !12, file: !1, line: 19, type: !20)
!36 = !DILocation(line: 19, column: 19, scope: !12)
!37 = !DILocation(line: 20, column: 24, scope: !12)
!38 = !DILocation(line: 20, column: 5, scope: !12)
!39 = !DILocalVariable(name: "size", scope: !12, file: !1, line: 23, type: !24)
!40 = !DILocation(line: 23, column: 9, scope: !12)
!41 = !DILocalVariable(name: "newSize", scope: !12, file: !1, line: 24, type: !24)
!42 = !DILocation(line: 24, column: 9, scope: !12)
!43 = !DILocation(line: 25, column: 24, scope: !12)
!44 = !DILocation(line: 25, column: 5, scope: !12)
!45 = !DILocation(line: 26, column: 24, scope: !12)
!46 = !DILocation(line: 26, column: 5, scope: !12)
!47 = !DILocation(line: 29, column: 17, scope: !12)
!48 = !DILocation(line: 29, column: 22, scope: !12)
!49 = !DILocation(line: 29, column: 5, scope: !12)
!50 = !DILocation(line: 30, column: 17, scope: !12)
!51 = !DILocation(line: 30, column: 25, scope: !12)
!52 = !DILocation(line: 30, column: 5, scope: !12)
!53 = !DILocation(line: 39, column: 5, scope: !12)
!54 = !DILocation(line: 42, column: 5, scope: !12)
!55 = !DILocation(line: 44, column: 5, scope: !12)
!56 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 54, type: !57, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!57 = !DISubroutineType(types: !58)
!58 = !{!24}
!59 = !DILocalVariable(name: "ctxt", scope: !56, file: !1, line: 56, type: !15)
!60 = !DILocation(line: 56, column: 20, scope: !56)
!61 = !DILocation(line: 56, column: 27, scope: !56)
!62 = !DILocation(line: 57, column: 10, scope: !63)
!63 = distinct !DILexicalBlock(scope: !56, file: !1, line: 57, column: 9)
!64 = !DILocation(line: 57, column: 9, scope: !56)
!65 = !DILocation(line: 57, column: 16, scope: !63)
!66 = !DILocation(line: 60, column: 25, scope: !56)
!67 = !DILocation(line: 60, column: 31, scope: !56)
!68 = !DILocation(line: 60, column: 24, scope: !56)
!69 = !DILocation(line: 60, column: 5, scope: !56)
!70 = !DILocation(line: 61, column: 25, scope: !56)
!71 = !DILocation(line: 61, column: 31, scope: !56)
!72 = !DILocation(line: 61, column: 24, scope: !56)
!73 = !DILocation(line: 61, column: 5, scope: !56)
!74 = !DILocalVariable(name: "prefix", scope: !56, file: !1, line: 64, type: !75)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 256, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 32)
!78 = !DILocation(line: 64, column: 19, scope: !56)
!79 = !DILocalVariable(name: "nsName", scope: !56, file: !1, line: 65, type: !75)
!80 = !DILocation(line: 65, column: 19, scope: !56)
!81 = !DILocation(line: 66, column: 24, scope: !56)
!82 = !DILocation(line: 66, column: 5, scope: !56)
!83 = !DILocation(line: 67, column: 24, scope: !56)
!84 = !DILocation(line: 67, column: 5, scope: !56)
!85 = !DILocation(line: 70, column: 23, scope: !56)
!86 = !DILocation(line: 70, column: 29, scope: !56)
!87 = !DILocation(line: 70, column: 37, scope: !56)
!88 = !DILocation(line: 70, column: 5, scope: !56)
!89 = !DILocation(line: 72, column: 10, scope: !56)
!90 = !DILocation(line: 72, column: 5, scope: !56)
!91 = !DILocation(line: 73, column: 5, scope: !56)
!92 = !DILocation(line: 74, column: 1, scope: !56)

; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/127_uri.c_2347_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/127_uri.c_2347_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlURI = type { i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, i8* }

@.str = private unnamed_addr constant [5 x i8] c"uptr\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"vptr\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"(len <= 1024) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_62911_vul/127_uri.c_2347_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlParseURI = private unnamed_addr constant [40 x i8] c"int xmlParseURI(xmlURI *, const char *)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"str\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlParseURI(%struct._xmlURI* noundef %0, i8* noundef %1) #0 !dbg !12 {
  %3 = alloca %struct._xmlURI*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct._xmlURI* %0, %struct._xmlURI** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlURI** %3, metadata !36, metadata !DIExpression()), !dbg !37
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !38, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.declare(metadata i8** %5, metadata !40, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata i8** %6, metadata !42, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.declare(metadata i8** %7, metadata !44, metadata !DIExpression()), !dbg !45
  call void @llvm.dbg.declare(metadata i32* %8, metadata !46, metadata !DIExpression()), !dbg !47
  %9 = bitcast i8** %5 to i8*, !dbg !48
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !49
  %10 = bitcast i8** %6 to i8*, !dbg !50
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !51
  %11 = bitcast i8** %7 to i8*, !dbg !52
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)), !dbg !53
  %12 = bitcast i32* %8 to i8*, !dbg !54
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)), !dbg !55
  %13 = load i8*, i8** %5, align 8, !dbg !56
  %14 = icmp ne i8* %13, null, !dbg !57
  %15 = zext i1 %14 to i32, !dbg !57
  %16 = sext i32 %15 to i64, !dbg !56
  call void @klee_assume(i64 noundef %16), !dbg !58
  %17 = load i8*, i8** %6, align 8, !dbg !59
  %18 = load i8*, i8** %7, align 8, !dbg !60
  %19 = icmp ugt i8* %17, %18, !dbg !61
  %20 = zext i1 %19 to i32, !dbg !61
  %21 = sext i32 %20 to i64, !dbg !59
  call void @klee_assume(i64 noundef %21), !dbg !62
  %22 = load i32, i32* %8, align 4, !dbg !63
  %23 = icmp sgt i32 %22, 0, !dbg !64
  %24 = zext i1 %23 to i32, !dbg !64
  %25 = sext i32 %24 to i64, !dbg !63
  call void @klee_assume(i64 noundef %25), !dbg !65
  %26 = load i8*, i8** %5, align 8, !dbg !66
  %27 = getelementptr inbounds i8, i8* %26, i64 0, !dbg !66
  %28 = load i8, i8* %27, align 1, !dbg !66
  %29 = sext i8 %28 to i32, !dbg !66
  %30 = icmp eq i32 %29, 47, !dbg !68
  br i1 %30, label %31, label %39, !dbg !69

31:                                               ; preds = %2
  %32 = load i8*, i8** %6, align 8, !dbg !70
  %33 = getelementptr inbounds i8, i8* %32, i64 -1, !dbg !70
  %34 = load i8, i8* %33, align 1, !dbg !70
  %35 = sext i8 %34 to i32, !dbg !70
  %36 = icmp ne i32 %35, 47, !dbg !72
  %37 = zext i1 %36 to i32, !dbg !72
  %38 = sext i32 %37 to i64, !dbg !70
  call void @klee_assume(i64 noundef %38), !dbg !73
  br label %40, !dbg !74

39:                                               ; preds = %2
  br label %40

40:                                               ; preds = %39, %31
  %41 = load i32, i32* %8, align 4, !dbg !75
  %42 = icmp sle i32 %41, 1024, !dbg !75
  br i1 %42, label %43, label %45, !dbg !75

43:                                               ; preds = %40
  br i1 true, label %44, label %45, !dbg !75

44:                                               ; preds = %43
  br label %47, !dbg !75

45:                                               ; preds = %43, %40
  %46 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.6, i64 0, i64 0), i32 noundef 88, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.xmlParseURI, i64 0, i64 0)), !dbg !75
  br label %47, !dbg !75

47:                                               ; preds = %45, %44
  %48 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.6, i64 0, i64 0), i32 noundef 91, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.xmlParseURI, i64 0, i64 0)), !dbg !76
  ret i32 0, !dbg !77
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !78 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlURI*, align 8
  %3 = alloca [256 x i8], align 16
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlURI** %2, metadata !81, metadata !DIExpression()), !dbg !82
  %5 = call %struct._xmlURI* @xmlCreateURI(), !dbg !83
  store %struct._xmlURI* %5, %struct._xmlURI** %2, align 8, !dbg !82
  %6 = load %struct._xmlURI*, %struct._xmlURI** %2, align 8, !dbg !84
  %7 = icmp eq %struct._xmlURI* %6, null, !dbg !86
  br i1 %7, label %8, label %9, !dbg !87

8:                                                ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !88
  br label %17, !dbg !88

9:                                                ; preds = %0
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !90, metadata !DIExpression()), !dbg !94
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !95
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 256, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)), !dbg !96
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 255, !dbg !97
  store i8 0, i8* %11, align 1, !dbg !98
  call void @llvm.dbg.declare(metadata i32* %4, metadata !99, metadata !DIExpression()), !dbg !100
  %12 = load %struct._xmlURI*, %struct._xmlURI** %2, align 8, !dbg !101
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !102
  %14 = call i32 @xmlParseURI(%struct._xmlURI* noundef %12, i8* noundef %13), !dbg !103
  store i32 %14, i32* %4, align 4, !dbg !100
  %15 = load %struct._xmlURI*, %struct._xmlURI** %2, align 8, !dbg !104
  call void @xmlFreeURI(%struct._xmlURI* noundef %15), !dbg !105
  %16 = load i32, i32* %4, align 4, !dbg !106
  store i32 %16, i32* %1, align 4, !dbg !107
  br label %17, !dbg !107

17:                                               ; preds = %9, %8
  %18 = load i32, i32* %1, align 4, !dbg !108
  ret i32 %18, !dbg !108
}

declare %struct._xmlURI* @xmlCreateURI() #2

declare void @xmlFreeURI(%struct._xmlURI* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/127_uri.c_2347_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "49b979bb830e6c7e29de20917742d7c6")
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
!12 = distinct !DISubprogram(name: "xmlParseURI", scope: !1, file: !1, line: 30, type: !13, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!13 = !DISubroutineType(types: !14)
!14 = !{!15, !16, !33}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlURI", file: !1, line: 10, baseType: !18)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlURI", file: !1, line: 11, size: 704, elements: !19)
!19 = !{!20, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "scheme", scope: !18, file: !1, line: 12, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !18, file: !1, line: 13, baseType: !21, size: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "authority", scope: !18, file: !1, line: 14, baseType: !21, size: 64, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !18, file: !1, line: 15, baseType: !21, size: 64, offset: 192)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !18, file: !1, line: 16, baseType: !21, size: 64, offset: 256)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !18, file: !1, line: 17, baseType: !15, size: 32, offset: 320)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !18, file: !1, line: 18, baseType: !21, size: 64, offset: 384)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "query", scope: !18, file: !1, line: 19, baseType: !21, size: 64, offset: 448)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "fragment", scope: !18, file: !1, line: 20, baseType: !21, size: 64, offset: 512)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !18, file: !1, line: 21, baseType: !15, size: 32, offset: 576)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "query_raw", scope: !18, file: !1, line: 22, baseType: !21, size: 64, offset: 640)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!35 = !{}
!36 = !DILocalVariable(name: "uri", arg: 1, scope: !12, file: !1, line: 30, type: !16)
!37 = !DILocation(line: 30, column: 25, scope: !12)
!38 = !DILocalVariable(name: "str", arg: 2, scope: !12, file: !1, line: 30, type: !33)
!39 = !DILocation(line: 30, column: 42, scope: !12)
!40 = !DILocalVariable(name: "uptr", scope: !12, file: !1, line: 50, type: !21)
!41 = !DILocation(line: 50, column: 11, scope: !12)
!42 = !DILocalVariable(name: "vptr", scope: !12, file: !1, line: 51, type: !21)
!43 = !DILocation(line: 51, column: 11, scope: !12)
!44 = !DILocalVariable(name: "val", scope: !12, file: !1, line: 52, type: !21)
!45 = !DILocation(line: 52, column: 11, scope: !12)
!46 = !DILocalVariable(name: "len", scope: !12, file: !1, line: 53, type: !15)
!47 = !DILocation(line: 53, column: 9, scope: !12)
!48 = !DILocation(line: 55, column: 24, scope: !12)
!49 = !DILocation(line: 55, column: 5, scope: !12)
!50 = !DILocation(line: 56, column: 24, scope: !12)
!51 = !DILocation(line: 56, column: 5, scope: !12)
!52 = !DILocation(line: 57, column: 24, scope: !12)
!53 = !DILocation(line: 57, column: 5, scope: !12)
!54 = !DILocation(line: 58, column: 24, scope: !12)
!55 = !DILocation(line: 58, column: 5, scope: !12)
!56 = !DILocation(line: 61, column: 17, scope: !12)
!57 = !DILocation(line: 61, column: 22, scope: !12)
!58 = !DILocation(line: 61, column: 5, scope: !12)
!59 = !DILocation(line: 62, column: 17, scope: !12)
!60 = !DILocation(line: 62, column: 24, scope: !12)
!61 = !DILocation(line: 62, column: 22, scope: !12)
!62 = !DILocation(line: 62, column: 5, scope: !12)
!63 = !DILocation(line: 63, column: 17, scope: !12)
!64 = !DILocation(line: 63, column: 21, scope: !12)
!65 = !DILocation(line: 63, column: 5, scope: !12)
!66 = !DILocation(line: 67, column: 9, scope: !67)
!67 = distinct !DILexicalBlock(scope: !12, file: !1, line: 67, column: 9)
!68 = !DILocation(line: 67, column: 17, scope: !67)
!69 = !DILocation(line: 67, column: 9, scope: !12)
!70 = !DILocation(line: 69, column: 21, scope: !71)
!71 = distinct !DILexicalBlock(scope: !67, file: !1, line: 67, column: 25)
!72 = !DILocation(line: 69, column: 30, scope: !71)
!73 = !DILocation(line: 69, column: 9, scope: !71)
!74 = !DILocation(line: 70, column: 5, scope: !71)
!75 = !DILocation(line: 88, column: 5, scope: !12)
!76 = !DILocation(line: 91, column: 5, scope: !12)
!77 = !DILocation(line: 95, column: 5, scope: !12)
!78 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 98, type: !79, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!79 = !DISubroutineType(types: !80)
!80 = !{!15}
!81 = !DILocalVariable(name: "uri", scope: !78, file: !1, line: 99, type: !16)
!82 = !DILocation(line: 99, column: 13, scope: !78)
!83 = !DILocation(line: 99, column: 19, scope: !78)
!84 = !DILocation(line: 100, column: 9, scope: !85)
!85 = distinct !DILexicalBlock(scope: !78, file: !1, line: 100, column: 9)
!86 = !DILocation(line: 100, column: 13, scope: !85)
!87 = !DILocation(line: 100, column: 9, scope: !78)
!88 = !DILocation(line: 101, column: 9, scope: !89)
!89 = distinct !DILexicalBlock(scope: !85, file: !1, line: 100, column: 22)
!90 = !DILocalVariable(name: "str", scope: !78, file: !1, line: 105, type: !91)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 2048, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 256)
!94 = !DILocation(line: 105, column: 10, scope: !78)
!95 = !DILocation(line: 106, column: 24, scope: !78)
!96 = !DILocation(line: 106, column: 5, scope: !78)
!97 = !DILocation(line: 107, column: 5, scope: !78)
!98 = !DILocation(line: 107, column: 14, scope: !78)
!99 = !DILocalVariable(name: "result", scope: !78, file: !1, line: 110, type: !15)
!100 = !DILocation(line: 110, column: 9, scope: !78)
!101 = !DILocation(line: 110, column: 30, scope: !78)
!102 = !DILocation(line: 110, column: 35, scope: !78)
!103 = !DILocation(line: 110, column: 18, scope: !78)
!104 = !DILocation(line: 112, column: 16, scope: !78)
!105 = !DILocation(line: 112, column: 5, scope: !78)
!106 = !DILocation(line: 113, column: 12, scope: !78)
!107 = !DILocation(line: 113, column: 5, scope: !78)
!108 = !DILocation(line: 114, column: 1, scope: !78)

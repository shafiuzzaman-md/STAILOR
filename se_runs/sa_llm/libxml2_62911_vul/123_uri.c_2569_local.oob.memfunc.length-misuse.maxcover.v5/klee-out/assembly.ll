; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/123_uri.c_2569_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/123_uri.c_2569_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlURI = type { i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, i8* }

@xmlParseURI.result = internal global [256 x i8] zeroinitializer, align 16, !dbg !0
@xmlSaveUri.result = internal global [256 x i8] zeroinitializer, align 16, !dbg !12
@.str = private unnamed_addr constant [8 x i8] c"uri_str\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"uri\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"path_buf\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"memset_size\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"(memset_size <= sizeof(xmlURI)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_62911_vul/123_uri.c_2569_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlParseURI(i8* noundef %0) #0 !dbg !2 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !45, metadata !DIExpression()), !dbg !46
  ret i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xmlParseURI.result, i64 0, i64 0), !dbg !47
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlSaveUri(%struct._xmlURI* noundef %0) #0 !dbg !14 {
  %2 = alloca %struct._xmlURI*, align 8
  store %struct._xmlURI* %0, %struct._xmlURI** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlURI** %2, metadata !48, metadata !DIExpression()), !dbg !49
  ret i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xmlSaveUri.result, i64 0, i64 0), !dbg !50
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !51 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !55, metadata !DIExpression()), !dbg !56
  %3 = load i8*, i8** %2, align 8, !dbg !57
  %4 = icmp ne i8* %3, null, !dbg !57
  br i1 %4, label %5, label %7, !dbg !59

5:                                                ; preds = %1
  %6 = load i8*, i8** %2, align 8, !dbg !60
  call void @free(i8* noundef %6) #5, !dbg !61
  br label %7, !dbg !61

7:                                                ; preds = %5, %1
  ret void, !dbg !62
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !63 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca i8*, align 8
  %4 = alloca %struct._xmlURI, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !66, metadata !DIExpression()), !dbg !67
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !68
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 256, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)), !dbg !69
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !70
  %9 = load i8, i8* %8, align 1, !dbg !70
  %10 = sext i8 %9 to i32, !dbg !70
  %11 = icmp eq i32 %10, 0, !dbg !71
  %12 = zext i1 %11 to i32, !dbg !71
  %13 = sext i32 %12 to i64, !dbg !70
  call void @klee_assume(i64 noundef %13), !dbg !72
  call void @llvm.dbg.declare(metadata i8** %3, metadata !73, metadata !DIExpression()), !dbg !74
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !75
  %15 = call i8* @xmlParseURI(i8* noundef %14), !dbg !76
  store i8* %15, i8** %3, align 8, !dbg !74
  call void @llvm.dbg.declare(metadata %struct._xmlURI* %4, metadata !77, metadata !DIExpression()), !dbg !78
  %16 = bitcast %struct._xmlURI* %4 to i8*, !dbg !79
  call void @klee_make_symbolic(i8* noundef %16, i64 noundef 88, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !80
  %17 = getelementptr inbounds %struct._xmlURI, %struct._xmlURI* %4, i32 0, i32 6, !dbg !81
  %18 = load i8*, i8** %17, align 8, !dbg !81
  %19 = icmp ne i8* %18, null, !dbg !83
  br i1 %19, label %20, label %30, !dbg !84

20:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !85, metadata !DIExpression()), !dbg !90
  %21 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !91
  call void @klee_make_symbolic(i8* noundef %21, i64 noundef 1024, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !92
  %22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 1023, !dbg !93
  %23 = load i8, i8* %22, align 1, !dbg !93
  %24 = sext i8 %23 to i32, !dbg !93
  %25 = icmp eq i32 %24, 0, !dbg !94
  %26 = zext i1 %25 to i32, !dbg !94
  %27 = sext i32 %26 to i64, !dbg !93
  call void @klee_assume(i64 noundef %27), !dbg !95
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !96
  %29 = getelementptr inbounds %struct._xmlURI, %struct._xmlURI* %4, i32 0, i32 6, !dbg !97
  store i8* %28, i8** %29, align 8, !dbg !98
  br label %30, !dbg !99

30:                                               ; preds = %20, %0
  call void @llvm.dbg.declare(metadata i64* %6, metadata !100, metadata !DIExpression()), !dbg !104
  %31 = bitcast i64* %6 to i8*, !dbg !105
  call void @klee_make_symbolic(i8* noundef %31, i64 noundef 8, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)), !dbg !106
  %32 = load i64, i64* %6, align 8, !dbg !107
  %33 = icmp ule i64 %32, 88, !dbg !107
  br i1 %33, label %34, label %36, !dbg !107

34:                                               ; preds = %30
  br i1 true, label %35, label %36, !dbg !107

35:                                               ; preds = %34
  br label %38, !dbg !107

36:                                               ; preds = %34, %30
  %37 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.6, i64 0, i64 0), i32 noundef 100, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !107
  br label %38, !dbg !107

38:                                               ; preds = %36, %35
  %39 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.6, i64 0, i64 0), i32 noundef 103, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !108
  ret i32 0, !dbg !109
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!10}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "result", scope: !2, file: !3, line: 29, type: !34, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "xmlParseURI", scope: !3, file: !3, line: 26, type: !4, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !33)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/123_uri.c_2569_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "3e36dd461eb721cd874f0d32d615c02c")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !8}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !11, splitDebugInlining: false, nameTableKind: None)
!11 = !{!0, !12}
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "result", scope: !14, file: !3, line: 35, type: !34, isLocal: true, isDefinition: true)
!14 = distinct !DISubprogram(name: "xmlSaveUri", scope: !3, file: !3, line: 33, type: !15, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !33)
!15 = !DISubroutineType(types: !16)
!16 = !{!6, !17}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlURI", file: !3, line: 10, baseType: !19)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlURI", file: !3, line: 11, size: 704, elements: !20)
!20 = !{!21, !22, !23, !24, !25, !26, !28, !29, !30, !31, !32}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "scheme", scope: !19, file: !3, line: 12, baseType: !6, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !19, file: !3, line: 13, baseType: !6, size: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "authority", scope: !19, file: !3, line: 14, baseType: !6, size: 64, offset: 128)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !19, file: !3, line: 15, baseType: !6, size: 64, offset: 192)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !19, file: !3, line: 16, baseType: !6, size: 64, offset: 256)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !19, file: !3, line: 17, baseType: !27, size: 32, offset: 320)
!27 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !19, file: !3, line: 18, baseType: !6, size: 64, offset: 384)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "query", scope: !19, file: !3, line: 19, baseType: !6, size: 64, offset: 448)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "fragment", scope: !19, file: !3, line: 20, baseType: !6, size: 64, offset: 512)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !19, file: !3, line: 21, baseType: !27, size: 32, offset: 576)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "query_raw", scope: !19, file: !3, line: 22, baseType: !6, size: 64, offset: 640)
!33 = !{}
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 256)
!37 = !{i32 7, !"Dwarf Version", i32 5}
!38 = !{i32 2, !"Debug Info Version", i32 3}
!39 = !{i32 1, !"wchar_size", i32 4}
!40 = !{i32 7, !"PIC Level", i32 2}
!41 = !{i32 7, !"PIE Level", i32 2}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"Ubuntu clang version 14.0.6"}
!45 = !DILocalVariable(name: "str", arg: 1, scope: !2, file: !3, line: 26, type: !8)
!46 = !DILocation(line: 26, column: 31, scope: !2)
!47 = !DILocation(line: 30, column: 5, scope: !2)
!48 = !DILocalVariable(name: "uri", arg: 1, scope: !14, file: !3, line: 33, type: !17)
!49 = !DILocation(line: 33, column: 26, scope: !14)
!50 = !DILocation(line: 36, column: 5, scope: !14)
!51 = distinct !DISubprogram(name: "xmlFree", scope: !3, file: !3, line: 39, type: !52, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !33)
!52 = !DISubroutineType(types: !53)
!53 = !{null, !54}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!55 = !DILocalVariable(name: "ptr", arg: 1, scope: !51, file: !3, line: 39, type: !54)
!56 = !DILocation(line: 39, column: 20, scope: !51)
!57 = !DILocation(line: 41, column: 9, scope: !58)
!58 = distinct !DILexicalBlock(scope: !51, file: !3, line: 41, column: 9)
!59 = !DILocation(line: 41, column: 9, scope: !51)
!60 = !DILocation(line: 41, column: 19, scope: !58)
!61 = !DILocation(line: 41, column: 14, scope: !58)
!62 = !DILocation(line: 42, column: 1, scope: !51)
!63 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 45, type: !64, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !33)
!64 = !DISubroutineType(types: !65)
!65 = !{!27}
!66 = !DILocalVariable(name: "uri_str", scope: !63, file: !3, line: 47, type: !34)
!67 = !DILocation(line: 47, column: 10, scope: !63)
!68 = !DILocation(line: 48, column: 24, scope: !63)
!69 = !DILocation(line: 48, column: 5, scope: !63)
!70 = !DILocation(line: 51, column: 17, scope: !63)
!71 = !DILocation(line: 51, column: 30, scope: !63)
!72 = !DILocation(line: 51, column: 5, scope: !63)
!73 = !DILocalVariable(name: "result", scope: !63, file: !3, line: 54, type: !6)
!74 = !DILocation(line: 54, column: 11, scope: !63)
!75 = !DILocation(line: 54, column: 32, scope: !63)
!76 = !DILocation(line: 54, column: 20, scope: !63)
!77 = !DILocalVariable(name: "uri", scope: !63, file: !3, line: 72, type: !18)
!78 = !DILocation(line: 72, column: 12, scope: !63)
!79 = !DILocation(line: 73, column: 24, scope: !63)
!80 = !DILocation(line: 73, column: 5, scope: !63)
!81 = !DILocation(line: 76, column: 13, scope: !82)
!82 = distinct !DILexicalBlock(scope: !63, file: !3, line: 76, column: 9)
!83 = !DILocation(line: 76, column: 9, scope: !82)
!84 = !DILocation(line: 76, column: 9, scope: !63)
!85 = !DILocalVariable(name: "path_buf", scope: !86, file: !3, line: 78, type: !87)
!86 = distinct !DILexicalBlock(scope: !82, file: !3, line: 76, column: 19)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8192, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 1024)
!90 = !DILocation(line: 78, column: 14, scope: !86)
!91 = !DILocation(line: 79, column: 28, scope: !86)
!92 = !DILocation(line: 79, column: 9, scope: !86)
!93 = !DILocation(line: 80, column: 21, scope: !86)
!94 = !DILocation(line: 80, column: 36, scope: !86)
!95 = !DILocation(line: 80, column: 9, scope: !86)
!96 = !DILocation(line: 81, column: 20, scope: !86)
!97 = !DILocation(line: 81, column: 13, scope: !86)
!98 = !DILocation(line: 81, column: 18, scope: !86)
!99 = !DILocation(line: 82, column: 5, scope: !86)
!100 = !DILocalVariable(name: "memset_size", scope: !63, file: !3, line: 95, type: !101)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !102, line: 46, baseType: !103)
!102 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!103 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!104 = !DILocation(line: 95, column: 12, scope: !63)
!105 = !DILocation(line: 96, column: 24, scope: !63)
!106 = !DILocation(line: 96, column: 5, scope: !63)
!107 = !DILocation(line: 100, column: 5, scope: !63)
!108 = !DILocation(line: 103, column: 5, scope: !63)
!109 = !DILocation(line: 105, column: 5, scope: !63)

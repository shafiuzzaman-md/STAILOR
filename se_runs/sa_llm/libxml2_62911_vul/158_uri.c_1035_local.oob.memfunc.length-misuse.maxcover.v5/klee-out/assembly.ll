; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/158_uri.c_1035_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/158_uri.c_1035_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlURI = type { i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, i8*, i32 }

@.str = private unnamed_addr constant [17 x i8] c"xmlMalloc_memory\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"creating URI structure\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_62911_vul/158_uri.c_1035_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlParseURI = private unnamed_addr constant [36 x i8] c"xmlURIPtr xmlParseURI(const char *)\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"uri_str\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !34 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !41, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata i8** %3, metadata !43, metadata !DIExpression()), !dbg !44
  %4 = load i64, i64* %2, align 8, !dbg !45
  %5 = call noalias i8* @malloc(i64 noundef %4) #7, !dbg !46
  store i8* %5, i8** %3, align 8, !dbg !44
  %6 = load i8*, i8** %3, align 8, !dbg !47
  %7 = icmp ne i8* %6, null, !dbg !47
  br i1 %7, label %8, label %11, !dbg !49

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8, !dbg !50
  %10 = load i64, i64* %2, align 8, !dbg !52
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef %10, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)), !dbg !53
  br label %11, !dbg !54

11:                                               ; preds = %8, %1
  %12 = load i8*, i8** %3, align 8, !dbg !55
  ret i8* %12, !dbg !56
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlURIErrMemory(i8* noundef %0) #0 !dbg !57 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !62, metadata !DIExpression()), !dbg !63
  ret void, !dbg !64
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlURI* @xmlParseURI(i8* noundef %0) #0 !dbg !65 {
  %2 = alloca %struct._xmlURI*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._xmlURI*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !68, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata %struct._xmlURI** %4, metadata !70, metadata !DIExpression()), !dbg !71
  %5 = call i8* @xmlMalloc(i64 noundef 96), !dbg !72
  %6 = bitcast i8* %5 to %struct._xmlURI*, !dbg !73
  store %struct._xmlURI* %6, %struct._xmlURI** %4, align 8, !dbg !74
  %7 = load %struct._xmlURI*, %struct._xmlURI** %4, align 8, !dbg !75
  %8 = icmp eq %struct._xmlURI* %7, null, !dbg !77
  br i1 %8, label %9, label %10, !dbg !78

9:                                                ; preds = %1
  call void @xmlURIErrMemory(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0)), !dbg !79
  store %struct._xmlURI* null, %struct._xmlURI** %2, align 8, !dbg !81
  br label %18, !dbg !81

10:                                               ; preds = %1
  %11 = load %struct._xmlURI*, %struct._xmlURI** %4, align 8, !dbg !82
  %12 = bitcast %struct._xmlURI* %11 to i8*, !dbg !83
  %13 = call i8* @memset(i8* %12, i32 0, i64 96), !dbg !83
  %14 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.3, i64 0, i64 0), i32 noundef 61, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.xmlParseURI, i64 0, i64 0)), !dbg !84
  %15 = load %struct._xmlURI*, %struct._xmlURI** %4, align 8, !dbg !85
  %16 = getelementptr inbounds %struct._xmlURI, %struct._xmlURI* %15, i32 0, i32 5, !dbg !86
  store i32 -1, i32* %16, align 8, !dbg !87
  %17 = load %struct._xmlURI*, %struct._xmlURI** %4, align 8, !dbg !88
  store %struct._xmlURI* %17, %struct._xmlURI** %2, align 8, !dbg !89
  br label %18, !dbg !89

18:                                               ; preds = %10, %9
  %19 = load %struct._xmlURI*, %struct._xmlURI** %2, align 8, !dbg !90
  ret %struct._xmlURI* %19, !dbg !90
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !91 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca %struct._xmlURI*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !94, metadata !DIExpression()), !dbg !98
  %4 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !99
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 256, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)), !dbg !100
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !101
  %6 = load i8, i8* %5, align 1, !dbg !101
  %7 = sext i8 %6 to i32, !dbg !101
  %8 = icmp eq i32 %7, 0, !dbg !102
  %9 = zext i1 %8 to i32, !dbg !102
  %10 = sext i32 %9 to i64, !dbg !101
  call void @klee_assume(i64 noundef %10), !dbg !103
  call void @llvm.dbg.declare(metadata %struct._xmlURI** %3, metadata !104, metadata !DIExpression()), !dbg !105
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !106
  %12 = call %struct._xmlURI* @xmlParseURI(i8* noundef %11), !dbg !107
  store %struct._xmlURI* %12, %struct._xmlURI** %3, align 8, !dbg !105
  %13 = load %struct._xmlURI*, %struct._xmlURI** %3, align 8, !dbg !108
  %14 = icmp ne %struct._xmlURI* %13, null, !dbg !108
  br i1 %14, label %15, label %18, !dbg !110

15:                                               ; preds = %0
  %16 = load %struct._xmlURI*, %struct._xmlURI** %3, align 8, !dbg !111
  %17 = bitcast %struct._xmlURI* %16 to i8*, !dbg !111
  call void @free(i8* noundef %17) #7, !dbg !113
  br label %18, !dbg !114

18:                                               ; preds = %15, %0
  ret i32 0, !dbg !115
}

declare void @klee_assume(i64 noundef) #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !116 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !120, metadata !DIExpression()), !dbg !121
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !122, metadata !DIExpression()), !dbg !123
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !124, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.declare(metadata i8** %7, metadata !126, metadata !DIExpression()), !dbg !127
  %8 = load i8*, i8** %4, align 8, !dbg !128
  store i8* %8, i8** %7, align 8, !dbg !127
  br label %9, !dbg !129

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !130
  %11 = add i64 %10, -1, !dbg !130
  store i64 %11, i64* %6, align 8, !dbg !130
  %12 = icmp ugt i64 %10, 0, !dbg !131
  br i1 %12, label %13, label %18, !dbg !129

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !132
  %15 = trunc i32 %14 to i8, !dbg !132
  %16 = load i8*, i8** %7, align 8, !dbg !133
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !133
  store i8* %17, i8** %7, align 8, !dbg !133
  store i8 %15, i8* %16, align 1, !dbg !134
  br label %9, !dbg !129, !llvm.loop !135

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !137
  ret i8* %19, !dbg !138
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33, !33}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/158_uri.c_1035_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "8bc3470c585e84c68da7c61d38bbae7e")
!2 = !{!3, !23}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlURIPtr", file: !1, line: 11, baseType: !4)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlURI", file: !1, line: 10, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlURI", file: !1, line: 13, size: 768, elements: !7)
!7 = !{!8, !11, !12, !13, !14, !15, !17, !18, !19, !20, !21, !22}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "scheme", scope: !6, file: !1, line: 14, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !6, file: !1, line: 15, baseType: !9, size: 64, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "authority", scope: !6, file: !1, line: 16, baseType: !9, size: 64, offset: 128)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !6, file: !1, line: 17, baseType: !9, size: 64, offset: 192)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !6, file: !1, line: 18, baseType: !9, size: 64, offset: 256)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !6, file: !1, line: 19, baseType: !16, size: 32, offset: 320)
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !6, file: !1, line: 20, baseType: !9, size: 64, offset: 384)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "query", scope: !6, file: !1, line: 21, baseType: !9, size: 64, offset: 448)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "fragment", scope: !6, file: !1, line: 22, baseType: !9, size: 64, offset: 512)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !6, file: !1, line: 23, baseType: !16, size: 32, offset: 576)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "query_raw", scope: !6, file: !1, line: 24, baseType: !9, size: 64, offset: 640)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "port_alloc", scope: !6, file: !1, line: 25, baseType: !16, size: 32, offset: 704)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!24 = distinct !DICompileUnit(language: DW_LANG_C99, file: !25, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!25 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!26 = !{i32 7, !"Dwarf Version", i32 5}
!27 = !{i32 2, !"Debug Info Version", i32 3}
!28 = !{i32 1, !"wchar_size", i32 4}
!29 = !{i32 7, !"PIC Level", i32 2}
!30 = !{i32 7, !"PIE Level", i32 2}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"Ubuntu clang version 14.0.6"}
!34 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 29, type: !35, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !40)
!35 = !DISubroutineType(types: !36)
!36 = !{!23, !37}
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !38, line: 46, baseType: !39)
!38 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!39 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!40 = !{}
!41 = !DILocalVariable(name: "size", arg: 1, scope: !34, file: !1, line: 29, type: !37)
!42 = !DILocation(line: 29, column: 24, scope: !34)
!43 = !DILocalVariable(name: "ptr", scope: !34, file: !1, line: 30, type: !23)
!44 = !DILocation(line: 30, column: 11, scope: !34)
!45 = !DILocation(line: 30, column: 24, scope: !34)
!46 = !DILocation(line: 30, column: 17, scope: !34)
!47 = !DILocation(line: 31, column: 9, scope: !48)
!48 = distinct !DILexicalBlock(scope: !34, file: !1, line: 31, column: 9)
!49 = !DILocation(line: 31, column: 9, scope: !34)
!50 = !DILocation(line: 32, column: 28, scope: !51)
!51 = distinct !DILexicalBlock(scope: !48, file: !1, line: 31, column: 14)
!52 = !DILocation(line: 32, column: 33, scope: !51)
!53 = !DILocation(line: 32, column: 9, scope: !51)
!54 = !DILocation(line: 33, column: 5, scope: !51)
!55 = !DILocation(line: 34, column: 12, scope: !34)
!56 = !DILocation(line: 34, column: 5, scope: !34)
!57 = distinct !DISubprogram(name: "xmlURIErrMemory", scope: !1, file: !1, line: 38, type: !58, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !40)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !60}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!62 = !DILocalVariable(name: "msg", arg: 1, scope: !57, file: !1, line: 38, type: !60)
!63 = !DILocation(line: 38, column: 34, scope: !57)
!64 = !DILocation(line: 40, column: 1, scope: !57)
!65 = distinct !DISubprogram(name: "xmlParseURI", scope: !1, file: !1, line: 43, type: !66, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !40)
!66 = !DISubroutineType(types: !67)
!67 = !{!3, !60}
!68 = !DILocalVariable(name: "str", arg: 1, scope: !65, file: !1, line: 43, type: !60)
!69 = !DILocation(line: 43, column: 35, scope: !65)
!70 = !DILocalVariable(name: "ret", scope: !65, file: !1, line: 44, type: !3)
!71 = !DILocation(line: 44, column: 15, scope: !65)
!72 = !DILocation(line: 47, column: 23, scope: !65)
!73 = !DILocation(line: 47, column: 11, scope: !65)
!74 = !DILocation(line: 47, column: 9, scope: !65)
!75 = !DILocation(line: 48, column: 9, scope: !76)
!76 = distinct !DILexicalBlock(scope: !65, file: !1, line: 48, column: 9)
!77 = !DILocation(line: 48, column: 13, scope: !76)
!78 = !DILocation(line: 48, column: 9, scope: !65)
!79 = !DILocation(line: 49, column: 9, scope: !80)
!80 = distinct !DILexicalBlock(scope: !76, file: !1, line: 48, column: 22)
!81 = !DILocation(line: 50, column: 9, scope: !80)
!82 = !DILocation(line: 54, column: 12, scope: !65)
!83 = !DILocation(line: 54, column: 5, scope: !65)
!84 = !DILocation(line: 61, column: 5, scope: !65)
!85 = !DILocation(line: 63, column: 5, scope: !65)
!86 = !DILocation(line: 63, column: 10, scope: !65)
!87 = !DILocation(line: 63, column: 15, scope: !65)
!88 = !DILocation(line: 64, column: 12, scope: !65)
!89 = !DILocation(line: 64, column: 5, scope: !65)
!90 = !DILocation(line: 65, column: 1, scope: !65)
!91 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 68, type: !92, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !40)
!92 = !DISubroutineType(types: !93)
!93 = !{!16}
!94 = !DILocalVariable(name: "uri_str", scope: !91, file: !1, line: 69, type: !95)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2048, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 256)
!98 = !DILocation(line: 69, column: 10, scope: !91)
!99 = !DILocation(line: 72, column: 24, scope: !91)
!100 = !DILocation(line: 72, column: 5, scope: !91)
!101 = !DILocation(line: 75, column: 17, scope: !91)
!102 = !DILocation(line: 75, column: 30, scope: !91)
!103 = !DILocation(line: 75, column: 5, scope: !91)
!104 = !DILocalVariable(name: "uri", scope: !91, file: !1, line: 78, type: !3)
!105 = !DILocation(line: 78, column: 15, scope: !91)
!106 = !DILocation(line: 78, column: 33, scope: !91)
!107 = !DILocation(line: 78, column: 21, scope: !91)
!108 = !DILocation(line: 81, column: 9, scope: !109)
!109 = distinct !DILexicalBlock(scope: !91, file: !1, line: 81, column: 9)
!110 = !DILocation(line: 81, column: 9, scope: !91)
!111 = !DILocation(line: 82, column: 14, scope: !112)
!112 = distinct !DILexicalBlock(scope: !109, file: !1, line: 81, column: 14)
!113 = !DILocation(line: 82, column: 9, scope: !112)
!114 = !DILocation(line: 83, column: 5, scope: !112)
!115 = !DILocation(line: 85, column: 5, scope: !91)
!116 = distinct !DISubprogram(name: "memset", scope: !117, file: !117, line: 12, type: !118, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !40)
!117 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!118 = !DISubroutineType(types: !119)
!119 = !{!23, !23, !16, !37}
!120 = !DILocalVariable(name: "dst", arg: 1, scope: !116, file: !117, line: 12, type: !23)
!121 = !DILocation(line: 12, column: 20, scope: !116)
!122 = !DILocalVariable(name: "s", arg: 2, scope: !116, file: !117, line: 12, type: !16)
!123 = !DILocation(line: 12, column: 29, scope: !116)
!124 = !DILocalVariable(name: "count", arg: 3, scope: !116, file: !117, line: 12, type: !37)
!125 = !DILocation(line: 12, column: 39, scope: !116)
!126 = !DILocalVariable(name: "a", scope: !116, file: !117, line: 13, type: !9)
!127 = !DILocation(line: 13, column: 9, scope: !116)
!128 = !DILocation(line: 13, column: 13, scope: !116)
!129 = !DILocation(line: 14, column: 3, scope: !116)
!130 = !DILocation(line: 14, column: 15, scope: !116)
!131 = !DILocation(line: 14, column: 18, scope: !116)
!132 = !DILocation(line: 15, column: 12, scope: !116)
!133 = !DILocation(line: 15, column: 7, scope: !116)
!134 = !DILocation(line: 15, column: 10, scope: !116)
!135 = distinct !{!135, !129, !132, !136}
!136 = !{!"llvm.loop.mustprogress"}
!137 = !DILocation(line: 16, column: 10, scope: !116)
!138 = !DILocation(line: 16, column: 3, scope: !116)

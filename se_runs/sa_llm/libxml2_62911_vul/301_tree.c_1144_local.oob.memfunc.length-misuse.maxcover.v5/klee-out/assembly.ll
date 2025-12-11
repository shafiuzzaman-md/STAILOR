; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/301_tree.c_1144_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/301_tree.c_1144_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDoc = type { i32, i8* }

@.str = private unnamed_addr constant [13 x i8] c"building doc\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"(version != ((void*)0) && strlen(version) < 1024) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/301_tree.c_1144_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlNewDoc = private unnamed_addr constant [34 x i8] c"xmlDocPtr xmlNewDoc(const char *)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"version\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlDoc* @xmlNewDoc(i8* noundef %0) #0 !dbg !29 {
  %2 = alloca %struct._xmlDoc*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._xmlDoc*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %4, metadata !37, metadata !DIExpression()), !dbg !38
  %5 = call i8* @xmlMalloc(i64 noundef 16), !dbg !39
  %6 = bitcast i8* %5 to %struct._xmlDoc*, !dbg !40
  store %struct._xmlDoc* %6, %struct._xmlDoc** %4, align 8, !dbg !41
  %7 = load %struct._xmlDoc*, %struct._xmlDoc** %4, align 8, !dbg !42
  %8 = icmp eq %struct._xmlDoc* %7, null, !dbg !44
  br i1 %8, label %9, label %10, !dbg !45

9:                                                ; preds = %1
  call void @xmlTreeErrMemory(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0)), !dbg !46
  store %struct._xmlDoc* null, %struct._xmlDoc** %2, align 8, !dbg !48
  br label %39, !dbg !48

10:                                               ; preds = %1
  %11 = load %struct._xmlDoc*, %struct._xmlDoc** %4, align 8, !dbg !49
  %12 = bitcast %struct._xmlDoc* %11 to i8*, !dbg !50
  %13 = call i8* @memset(i8* %12, i32 0, i64 16), !dbg !50
  %14 = load %struct._xmlDoc*, %struct._xmlDoc** %4, align 8, !dbg !51
  %15 = getelementptr inbounds %struct._xmlDoc, %struct._xmlDoc* %14, i32 0, i32 0, !dbg !52
  store i32 13, i32* %15, align 8, !dbg !53
  %16 = load i8*, i8** %3, align 8, !dbg !54
  %17 = call i8* @xmlStrdup(i8* noundef %16), !dbg !55
  %18 = load %struct._xmlDoc*, %struct._xmlDoc** %4, align 8, !dbg !56
  %19 = getelementptr inbounds %struct._xmlDoc, %struct._xmlDoc* %18, i32 0, i32 1, !dbg !57
  store i8* %17, i8** %19, align 8, !dbg !58
  %20 = load %struct._xmlDoc*, %struct._xmlDoc** %4, align 8, !dbg !59
  %21 = getelementptr inbounds %struct._xmlDoc, %struct._xmlDoc* %20, i32 0, i32 1, !dbg !61
  %22 = load i8*, i8** %21, align 8, !dbg !61
  %23 = icmp eq i8* %22, null, !dbg !62
  br i1 %23, label %24, label %37, !dbg !63

24:                                               ; preds = %10
  call void @xmlTreeErrMemory(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0)), !dbg !64
  %25 = load i8*, i8** %3, align 8, !dbg !66
  %26 = icmp ne i8* %25, null, !dbg !66
  br i1 %26, label %27, label %33, !dbg !66

27:                                               ; preds = %24
  %28 = load i8*, i8** %3, align 8, !dbg !66
  %29 = call i64 @strlen(i8* noundef %28) #8, !dbg !66
  %30 = icmp ult i64 %29, 1024, !dbg !66
  br i1 %30, label %31, label %33, !dbg !66

31:                                               ; preds = %27
  br i1 true, label %32, label %33, !dbg !66

32:                                               ; preds = %31
  br label %35, !dbg !66

33:                                               ; preds = %31, %27, %24
  %34 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.3, i64 0, i64 0), i32 noundef 44, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.xmlNewDoc, i64 0, i64 0)), !dbg !66
  br label %35, !dbg !66

35:                                               ; preds = %33, %32
  %36 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.3, i64 0, i64 0), i32 noundef 45, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.xmlNewDoc, i64 0, i64 0)), !dbg !67
  br label %37, !dbg !68

37:                                               ; preds = %35, %10
  %38 = load %struct._xmlDoc*, %struct._xmlDoc** %4, align 8, !dbg !69
  store %struct._xmlDoc* %38, %struct._xmlDoc** %2, align 8, !dbg !70
  br label %39, !dbg !70

39:                                               ; preds = %37, %9
  %40 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !71
  ret %struct._xmlDoc* %40, !dbg !71
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @xmlMalloc(i64 noundef) #2

declare void @xmlTreeErrMemory(i8* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare i8* @xmlStrdup(i8* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !72 {
  %1 = alloca i32, align 4
  %2 = alloca [1024 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlDoc*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [1024 x i8]* %2, metadata !75, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.declare(metadata i32* %3, metadata !80, metadata !DIExpression()), !dbg !81
  %5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !82
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 1024, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)), !dbg !83
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 1023, !dbg !84
  store i8 0, i8* %6, align 1, !dbg !85
  %7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !86
  %8 = call i64 @strlen(i8* noundef %7) #8, !dbg !87
  %9 = trunc i64 %8 to i32, !dbg !87
  store i32 %9, i32* %3, align 4, !dbg !88
  %10 = load i32, i32* %3, align 4, !dbg !89
  %11 = icmp sge i32 %10, 0, !dbg !90
  %12 = zext i1 %11 to i32, !dbg !90
  %13 = sext i32 %12 to i64, !dbg !89
  call void @klee_assume(i64 noundef %13), !dbg !91
  %14 = load i32, i32* %3, align 4, !dbg !92
  %15 = sext i32 %14 to i64, !dbg !92
  %16 = icmp ult i64 %15, 1024, !dbg !93
  %17 = zext i1 %16 to i32, !dbg !93
  %18 = sext i32 %17 to i64, !dbg !92
  call void @klee_assume(i64 noundef %18), !dbg !94
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %4, metadata !95, metadata !DIExpression()), !dbg !96
  %19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !97
  %20 = call %struct._xmlDoc* @xmlNewDoc(i8* noundef %19), !dbg !98
  store %struct._xmlDoc* %20, %struct._xmlDoc** %4, align 8, !dbg !96
  %21 = load %struct._xmlDoc*, %struct._xmlDoc** %4, align 8, !dbg !99
  %22 = icmp ne %struct._xmlDoc* %21, null, !dbg !101
  br i1 %22, label %23, label %29, !dbg !102

23:                                               ; preds = %0
  %24 = load %struct._xmlDoc*, %struct._xmlDoc** %4, align 8, !dbg !103
  %25 = getelementptr inbounds %struct._xmlDoc, %struct._xmlDoc* %24, i32 0, i32 1, !dbg !105
  %26 = load i8*, i8** %25, align 8, !dbg !105
  call void @free(i8* noundef %26) #9, !dbg !106
  %27 = load %struct._xmlDoc*, %struct._xmlDoc** %4, align 8, !dbg !107
  %28 = bitcast %struct._xmlDoc* %27 to i8*, !dbg !107
  call void @free(i8* noundef %28) #9, !dbg !108
  br label %29, !dbg !109

29:                                               ; preds = %23, %0
  ret i32 0, !dbg !110
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare void @free(i8* noundef) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #7 !dbg !111 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !118, metadata !DIExpression()), !dbg !119
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !120, metadata !DIExpression()), !dbg !121
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !122, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.declare(metadata i8** %7, metadata !124, metadata !DIExpression()), !dbg !125
  %8 = load i8*, i8** %4, align 8, !dbg !126
  store i8* %8, i8** %7, align 8, !dbg !125
  br label %9, !dbg !127

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !128
  %11 = add i64 %10, -1, !dbg !128
  store i64 %11, i64* %6, align 8, !dbg !128
  %12 = icmp ugt i64 %10, 0, !dbg !129
  br i1 %12, label %13, label %18, !dbg !127

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !130
  %15 = trunc i32 %14 to i8, !dbg !130
  %16 = load i8*, i8** %7, align 8, !dbg !131
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !131
  store i8* %17, i8** %7, align 8, !dbg !131
  store i8 %15, i8* %16, align 1, !dbg !132
  br label %9, !dbg !127, !llvm.loop !133

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !135
  ret i8* %19, !dbg !136
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28, !28}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !7, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/301_tree.c_1144_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "2d804e9628afc249f3d82954cc553163")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 13, baseType: !4, size: 32, elements: !5)
!4 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!5 = !{!6}
!6 = !DIEnumerator(name: "XML_DOCUMENT_NODE", value: 13)
!7 = !{!8, !18}
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !1, line: 11, baseType: !9)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !1, line: 10, baseType: !11)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !1, line: 22, size: 128, elements: !12)
!12 = !{!13, !15}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !11, file: !1, line: 23, baseType: !14, size: 32)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !11, file: !1, line: 24, baseType: !16, size: 64, offset: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!19 = distinct !DICompileUnit(language: DW_LANG_C99, file: !20, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!20 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!21 = !{i32 7, !"Dwarf Version", i32 5}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 1, !"wchar_size", i32 4}
!24 = !{i32 7, !"PIC Level", i32 2}
!25 = !{i32 7, !"PIE Level", i32 2}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"Ubuntu clang version 14.0.6"}
!29 = distinct !DISubprogram(name: "xmlNewDoc", scope: !1, file: !1, line: 29, type: !30, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!30 = !DISubroutineType(types: !31)
!31 = !{!8, !32}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!34 = !{}
!35 = !DILocalVariable(name: "version", arg: 1, scope: !29, file: !1, line: 29, type: !32)
!36 = !DILocation(line: 29, column: 33, scope: !29)
!37 = !DILocalVariable(name: "cur", scope: !29, file: !1, line: 30, type: !8)
!38 = !DILocation(line: 30, column: 15, scope: !29)
!39 = !DILocation(line: 32, column: 23, scope: !29)
!40 = !DILocation(line: 32, column: 11, scope: !29)
!41 = !DILocation(line: 32, column: 9, scope: !29)
!42 = !DILocation(line: 33, column: 9, scope: !43)
!43 = distinct !DILexicalBlock(scope: !29, file: !1, line: 33, column: 9)
!44 = !DILocation(line: 33, column: 13, scope: !43)
!45 = !DILocation(line: 33, column: 9, scope: !29)
!46 = !DILocation(line: 34, column: 9, scope: !47)
!47 = distinct !DILexicalBlock(scope: !43, file: !1, line: 33, column: 22)
!48 = !DILocation(line: 35, column: 9, scope: !47)
!49 = !DILocation(line: 37, column: 12, scope: !29)
!50 = !DILocation(line: 37, column: 5, scope: !29)
!51 = !DILocation(line: 38, column: 5, scope: !29)
!52 = !DILocation(line: 38, column: 10, scope: !29)
!53 = !DILocation(line: 38, column: 15, scope: !29)
!54 = !DILocation(line: 40, column: 30, scope: !29)
!55 = !DILocation(line: 40, column: 20, scope: !29)
!56 = !DILocation(line: 40, column: 5, scope: !29)
!57 = !DILocation(line: 40, column: 10, scope: !29)
!58 = !DILocation(line: 40, column: 18, scope: !29)
!59 = !DILocation(line: 41, column: 9, scope: !60)
!60 = distinct !DILexicalBlock(scope: !29, file: !1, line: 41, column: 9)
!61 = !DILocation(line: 41, column: 14, scope: !60)
!62 = !DILocation(line: 41, column: 22, scope: !60)
!63 = !DILocation(line: 41, column: 9, scope: !29)
!64 = !DILocation(line: 42, column: 9, scope: !65)
!65 = distinct !DILexicalBlock(scope: !60, file: !1, line: 41, column: 31)
!66 = !DILocation(line: 44, column: 9, scope: !65)
!67 = !DILocation(line: 45, column: 9, scope: !65)
!68 = !DILocation(line: 47, column: 5, scope: !65)
!69 = !DILocation(line: 49, column: 12, scope: !29)
!70 = !DILocation(line: 49, column: 5, scope: !29)
!71 = !DILocation(line: 50, column: 1, scope: !29)
!72 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 53, type: !73, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!73 = !DISubroutineType(types: !74)
!74 = !{!14}
!75 = !DILocalVariable(name: "version", scope: !72, file: !1, line: 54, type: !76)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 8192, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 1024)
!79 = !DILocation(line: 54, column: 10, scope: !72)
!80 = !DILocalVariable(name: "version_len", scope: !72, file: !1, line: 55, type: !14)
!81 = !DILocation(line: 55, column: 9, scope: !72)
!82 = !DILocation(line: 58, column: 24, scope: !72)
!83 = !DILocation(line: 58, column: 5, scope: !72)
!84 = !DILocation(line: 61, column: 5, scope: !72)
!85 = !DILocation(line: 61, column: 32, scope: !72)
!86 = !DILocation(line: 64, column: 26, scope: !72)
!87 = !DILocation(line: 64, column: 19, scope: !72)
!88 = !DILocation(line: 64, column: 17, scope: !72)
!89 = !DILocation(line: 67, column: 17, scope: !72)
!90 = !DILocation(line: 67, column: 29, scope: !72)
!91 = !DILocation(line: 67, column: 5, scope: !72)
!92 = !DILocation(line: 68, column: 17, scope: !72)
!93 = !DILocation(line: 68, column: 29, scope: !72)
!94 = !DILocation(line: 68, column: 5, scope: !72)
!95 = !DILocalVariable(name: "doc", scope: !72, file: !1, line: 71, type: !8)
!96 = !DILocation(line: 71, column: 15, scope: !72)
!97 = !DILocation(line: 71, column: 31, scope: !72)
!98 = !DILocation(line: 71, column: 21, scope: !72)
!99 = !DILocation(line: 74, column: 9, scope: !100)
!100 = distinct !DILexicalBlock(scope: !72, file: !1, line: 74, column: 9)
!101 = !DILocation(line: 74, column: 13, scope: !100)
!102 = !DILocation(line: 74, column: 9, scope: !72)
!103 = !DILocation(line: 75, column: 14, scope: !104)
!104 = distinct !DILexicalBlock(scope: !100, file: !1, line: 74, column: 22)
!105 = !DILocation(line: 75, column: 19, scope: !104)
!106 = !DILocation(line: 75, column: 9, scope: !104)
!107 = !DILocation(line: 76, column: 14, scope: !104)
!108 = !DILocation(line: 76, column: 9, scope: !104)
!109 = !DILocation(line: 77, column: 5, scope: !104)
!110 = !DILocation(line: 79, column: 5, scope: !72)
!111 = distinct !DISubprogram(name: "memset", scope: !112, file: !112, line: 12, type: !113, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !34)
!112 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!113 = !DISubroutineType(types: !114)
!114 = !{!18, !18, !14, !115}
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !116, line: 46, baseType: !117)
!116 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!117 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!118 = !DILocalVariable(name: "dst", arg: 1, scope: !111, file: !112, line: 12, type: !18)
!119 = !DILocation(line: 12, column: 20, scope: !111)
!120 = !DILocalVariable(name: "s", arg: 2, scope: !111, file: !112, line: 12, type: !14)
!121 = !DILocation(line: 12, column: 29, scope: !111)
!122 = !DILocalVariable(name: "count", arg: 3, scope: !111, file: !112, line: 12, type: !115)
!123 = !DILocation(line: 12, column: 39, scope: !111)
!124 = !DILocalVariable(name: "a", scope: !111, file: !112, line: 13, type: !16)
!125 = !DILocation(line: 13, column: 9, scope: !111)
!126 = !DILocation(line: 13, column: 13, scope: !111)
!127 = !DILocation(line: 14, column: 3, scope: !111)
!128 = !DILocation(line: 14, column: 15, scope: !111)
!129 = !DILocation(line: 14, column: 18, scope: !111)
!130 = !DILocation(line: 15, column: 12, scope: !111)
!131 = !DILocation(line: 15, column: 7, scope: !111)
!132 = !DILocation(line: 15, column: 10, scope: !111)
!133 = distinct !{!133, !127, !130, !134}
!134 = !{!"llvm.loop.mustprogress"}
!135 = !DILocation(line: 16, column: 10, scope: !111)
!136 = !DILocation(line: 16, column: 3, scope: !111)

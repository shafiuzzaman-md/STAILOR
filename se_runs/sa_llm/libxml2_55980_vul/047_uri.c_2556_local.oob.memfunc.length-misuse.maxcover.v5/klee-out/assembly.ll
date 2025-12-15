; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/047_uri.c_2556_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/047_uri.c_2556_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlURI = type { i8* }

@.str = private unnamed_addr constant [5 x i8] c"stub\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"cal\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_55980_vul/047_uri.c_2556_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.target_function = private unnamed_addr constant [30 x i8] c"char *target_function(char *)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlSaveUri(%struct._xmlURI* noundef %0) #0 !dbg !15 {
  %2 = alloca %struct._xmlURI*, align 8
  %3 = alloca i8*, align 8
  store %struct._xmlURI* %0, %struct._xmlURI** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlURI** %2, metadata !24, metadata !DIExpression()), !dbg !25
  %4 = load %struct._xmlURI*, %struct._xmlURI** %2, align 8, !dbg !26
  call void @llvm.dbg.declare(metadata i8** %3, metadata !27, metadata !DIExpression()), !dbg !28
  %5 = call noalias i8* @malloc(i64 noundef 10) #7, !dbg !29
  store i8* %5, i8** %3, align 8, !dbg !28
  %6 = load i8*, i8** %3, align 8, !dbg !30
  %7 = icmp ne i8* %6, null, !dbg !30
  br i1 %7, label %8, label %11, !dbg !32

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8, !dbg !33
  %10 = call i8* @strcpy(i8* noundef %9, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #7, !dbg !35
  br label %11, !dbg !36

11:                                               ; preds = %8, %1
  %12 = load i8*, i8** %3, align 8, !dbg !37
  ret i8* %12, !dbg !38
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !39 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !43, metadata !DIExpression()), !dbg !44
  %3 = load i8*, i8** %2, align 8, !dbg !45
  call void @free(i8* noundef %3) #7, !dbg !46
  ret void, !dbg !47
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !48 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !52, metadata !DIExpression()), !dbg !56
  %4 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !57
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 256, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !58
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !59
  %6 = load i8, i8* %5, align 1, !dbg !59
  %7 = sext i8 %6 to i32, !dbg !59
  %8 = icmp eq i32 %7, 0, !dbg !60
  %9 = zext i1 %8 to i32, !dbg !60
  %10 = sext i32 %9 to i64, !dbg !59
  call void @klee_assume(i64 noundef %10), !dbg !61
  call void @llvm.dbg.declare(metadata i8** %3, metadata !62, metadata !DIExpression()), !dbg !63
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !64
  %12 = call i8* @target_function(i8* noundef %11), !dbg !65
  store i8* %12, i8** %3, align 8, !dbg !63
  %13 = load i8*, i8** %3, align 8, !dbg !66
  %14 = icmp ne i8* %13, null, !dbg !66
  br i1 %14, label %15, label %17, !dbg !68

15:                                               ; preds = %0
  %16 = load i8*, i8** %3, align 8, !dbg !69
  call void @free(i8* noundef %16) #7, !dbg !71
  br label %17, !dbg !72

17:                                               ; preds = %15, %0
  ret i32 0, !dbg !73
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @target_function(i8* noundef %0) #0 !dbg !74 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._xmlURI, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !77, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.declare(metadata %struct._xmlURI* %3, metadata !79, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.declare(metadata i8** %4, metadata !81, metadata !DIExpression()), !dbg !82
  %5 = bitcast %struct._xmlURI* %3 to i8*, !dbg !83
  %6 = call i8* @memset(i8* %5, i32 0, i64 8), !dbg !83
  %7 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.3, i64 0, i64 0), i32 noundef 57, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !84
  %8 = load i8*, i8** %2, align 8, !dbg !85
  %9 = getelementptr inbounds %struct._xmlURI, %struct._xmlURI* %3, i32 0, i32 0, !dbg !86
  store i8* %8, i8** %9, align 8, !dbg !87
  %10 = call i8* @xmlSaveUri(%struct._xmlURI* noundef %3), !dbg !88
  store i8* %10, i8** %4, align 8, !dbg !89
  %11 = load i8*, i8** %2, align 8, !dbg !90
  call void @xmlFree(i8* noundef %11), !dbg !91
  %12 = load i8*, i8** %4, align 8, !dbg !92
  ret i8* %12, !dbg !93
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !94 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !101, metadata !DIExpression()), !dbg !102
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !103, metadata !DIExpression()), !dbg !104
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !105, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.declare(metadata i8** %7, metadata !107, metadata !DIExpression()), !dbg !108
  %8 = load i8*, i8** %4, align 8, !dbg !109
  store i8* %8, i8** %7, align 8, !dbg !108
  br label %9, !dbg !110

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !111
  %11 = add i64 %10, -1, !dbg !111
  store i64 %11, i64* %6, align 8, !dbg !111
  %12 = icmp ugt i64 %10, 0, !dbg !112
  br i1 %12, label %13, label %18, !dbg !110

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !113
  %15 = trunc i32 %14 to i8, !dbg !113
  %16 = load i8*, i8** %7, align 8, !dbg !114
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !114
  store i8* %17, i8** %7, align 8, !dbg !114
  store i8 %15, i8* %16, align 1, !dbg !115
  br label %9, !dbg !110, !llvm.loop !116

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !118
  ret i8* %19, !dbg !119
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !5}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14, !14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/047_uri.c_2556_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "5cecf986af20877f9f7061b14fb501d5")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = distinct !DICompileUnit(language: DW_LANG_C99, file: !6, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!6 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!7 = !{i32 7, !"Dwarf Version", i32 5}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{i32 7, !"PIC Level", i32 2}
!11 = !{i32 7, !"PIE Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"Ubuntu clang version 14.0.6"}
!15 = distinct !DISubprogram(name: "xmlSaveUri", scope: !1, file: !1, line: 20, type: !16, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!16 = !DISubroutineType(types: !17)
!17 = !{!3, !18}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlURI", file: !1, line: 10, baseType: !20)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlURI", file: !1, line: 11, size: 64, elements: !21)
!21 = !{!22}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !20, file: !1, line: 12, baseType: !3, size: 64)
!23 = !{}
!24 = !DILocalVariable(name: "uri", arg: 1, scope: !15, file: !1, line: 20, type: !18)
!25 = !DILocation(line: 20, column: 26, scope: !15)
!26 = !DILocation(line: 21, column: 11, scope: !15)
!27 = !DILocalVariable(name: "result", scope: !15, file: !1, line: 22, type: !3)
!28 = !DILocation(line: 22, column: 11, scope: !15)
!29 = !DILocation(line: 22, column: 20, scope: !15)
!30 = !DILocation(line: 23, column: 9, scope: !31)
!31 = distinct !DILexicalBlock(scope: !15, file: !1, line: 23, column: 9)
!32 = !DILocation(line: 23, column: 9, scope: !15)
!33 = !DILocation(line: 24, column: 16, scope: !34)
!34 = distinct !DILexicalBlock(scope: !31, file: !1, line: 23, column: 17)
!35 = !DILocation(line: 24, column: 9, scope: !34)
!36 = !DILocation(line: 25, column: 5, scope: !34)
!37 = !DILocation(line: 26, column: 12, scope: !15)
!38 = !DILocation(line: 26, column: 5, scope: !15)
!39 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 30, type: !40, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !42}
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!43 = !DILocalVariable(name: "ptr", arg: 1, scope: !39, file: !1, line: 30, type: !42)
!44 = !DILocation(line: 30, column: 20, scope: !39)
!45 = !DILocation(line: 31, column: 10, scope: !39)
!46 = !DILocation(line: 31, column: 5, scope: !39)
!47 = !DILocation(line: 32, column: 1, scope: !39)
!48 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 66, type: !49, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!49 = !DISubroutineType(types: !50)
!50 = !{!51}
!51 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!52 = !DILocalVariable(name: "cal", scope: !48, file: !1, line: 68, type: !53)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 256)
!56 = !DILocation(line: 68, column: 10, scope: !48)
!57 = !DILocation(line: 69, column: 24, scope: !48)
!58 = !DILocation(line: 69, column: 5, scope: !48)
!59 = !DILocation(line: 72, column: 17, scope: !48)
!60 = !DILocation(line: 72, column: 26, scope: !48)
!61 = !DILocation(line: 72, column: 5, scope: !48)
!62 = !DILocalVariable(name: "result", scope: !48, file: !1, line: 75, type: !3)
!63 = !DILocation(line: 75, column: 11, scope: !48)
!64 = !DILocation(line: 75, column: 36, scope: !48)
!65 = !DILocation(line: 75, column: 20, scope: !48)
!66 = !DILocation(line: 78, column: 9, scope: !67)
!67 = distinct !DILexicalBlock(scope: !48, file: !1, line: 78, column: 9)
!68 = !DILocation(line: 78, column: 9, scope: !48)
!69 = !DILocation(line: 79, column: 14, scope: !70)
!70 = distinct !DILexicalBlock(scope: !67, file: !1, line: 78, column: 17)
!71 = !DILocation(line: 79, column: 9, scope: !70)
!72 = !DILocation(line: 80, column: 5, scope: !70)
!73 = !DILocation(line: 82, column: 5, scope: !48)
!74 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 35, type: !75, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !23)
!75 = !DISubroutineType(types: !76)
!76 = !{!3, !3}
!77 = !DILocalVariable(name: "cal", arg: 1, scope: !74, file: !1, line: 35, type: !3)
!78 = !DILocation(line: 35, column: 36, scope: !74)
!79 = !DILocalVariable(name: "temp", scope: !74, file: !1, line: 36, type: !19)
!80 = !DILocation(line: 36, column: 12, scope: !74)
!81 = !DILocalVariable(name: "ret", scope: !74, file: !1, line: 37, type: !3)
!82 = !DILocation(line: 37, column: 11, scope: !74)
!83 = !DILocation(line: 51, column: 5, scope: !74)
!84 = !DILocation(line: 57, column: 5, scope: !74)
!85 = !DILocation(line: 59, column: 26, scope: !74)
!86 = !DILocation(line: 59, column: 10, scope: !74)
!87 = !DILocation(line: 59, column: 15, scope: !74)
!88 = !DILocation(line: 60, column: 11, scope: !74)
!89 = !DILocation(line: 60, column: 9, scope: !74)
!90 = !DILocation(line: 61, column: 13, scope: !74)
!91 = !DILocation(line: 61, column: 5, scope: !74)
!92 = !DILocation(line: 62, column: 12, scope: !74)
!93 = !DILocation(line: 62, column: 5, scope: !74)
!94 = distinct !DISubprogram(name: "memset", scope: !95, file: !95, line: 12, type: !96, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !23)
!95 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!96 = !DISubroutineType(types: !97)
!97 = !{!42, !42, !51, !98}
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !99, line: 46, baseType: !100)
!99 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!100 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!101 = !DILocalVariable(name: "dst", arg: 1, scope: !94, file: !95, line: 12, type: !42)
!102 = !DILocation(line: 12, column: 20, scope: !94)
!103 = !DILocalVariable(name: "s", arg: 2, scope: !94, file: !95, line: 12, type: !51)
!104 = !DILocation(line: 12, column: 29, scope: !94)
!105 = !DILocalVariable(name: "count", arg: 3, scope: !94, file: !95, line: 12, type: !98)
!106 = !DILocation(line: 12, column: 39, scope: !94)
!107 = !DILocalVariable(name: "a", scope: !94, file: !95, line: 13, type: !3)
!108 = !DILocation(line: 13, column: 9, scope: !94)
!109 = !DILocation(line: 13, column: 13, scope: !94)
!110 = !DILocation(line: 14, column: 3, scope: !94)
!111 = !DILocation(line: 14, column: 15, scope: !94)
!112 = !DILocation(line: 14, column: 18, scope: !94)
!113 = !DILocation(line: 15, column: 12, scope: !94)
!114 = !DILocation(line: 15, column: 7, scope: !94)
!115 = !DILocation(line: 15, column: 10, scope: !94)
!116 = distinct !{!116, !110, !113, !117}
!117 = !{!"llvm.loop.mustprogress"}
!118 = !DILocation(line: 16, column: 10, scope: !94)
!119 = !DILocation(line: 16, column: 3, scope: !94)

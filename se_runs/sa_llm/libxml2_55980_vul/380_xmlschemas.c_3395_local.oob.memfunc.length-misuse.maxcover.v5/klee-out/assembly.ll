; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/380_xmlschemas.c_3395_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/380_xmlschemas.c_3395_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaItemList = type { i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"xmlMalloc_buffer\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"malloc_success\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"allocating an item list structure\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [109 x i8] c"se_runs/sa_llm/libxml2_55980_vul/380_xmlschemas.c_3395_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlSchemaItemListCreate = private unnamed_addr constant [51 x i8] c"xmlSchemaItemListPtr xmlSchemaItemListCreate(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !14 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i8** %3, metadata !23, metadata !DIExpression()), !dbg !24
  %4 = load i64, i64* %2, align 8, !dbg !25
  %5 = call noalias i8* @malloc(i64 noundef %4) #7, !dbg !26
  store i8* %5, i8** %3, align 8, !dbg !24
  %6 = load i8*, i8** %3, align 8, !dbg !27
  %7 = icmp ne i8* %6, null, !dbg !27
  br i1 %7, label %8, label %11, !dbg !29

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8, !dbg !30
  %10 = load i64, i64* %2, align 8, !dbg !32
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef %10, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)), !dbg !33
  br label %11, !dbg !34

11:                                               ; preds = %8, %1
  %12 = load i8*, i8** %3, align 8, !dbg !35
  ret i8* %12, !dbg !36
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchemaPErrMemory(i8* noundef %0, i8* noundef %1, i8* noundef %2) #0 !dbg !37 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !43, metadata !DIExpression()), !dbg !44
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !45, metadata !DIExpression()), !dbg !46
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !47, metadata !DIExpression()), !dbg !48
  ret void, !dbg !49
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !50 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlSchemaItemList*, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaItemList** %2, metadata !54, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata i32* %3, metadata !65, metadata !DIExpression()), !dbg !66
  %4 = bitcast i32* %3 to i8*, !dbg !67
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)), !dbg !68
  %5 = load i32, i32* %3, align 4, !dbg !69
  %6 = icmp eq i32 %5, 0, !dbg !70
  br i1 %6, label %10, label %7, !dbg !71

7:                                                ; preds = %0
  %8 = load i32, i32* %3, align 4, !dbg !72
  %9 = icmp eq i32 %8, 1, !dbg !73
  br label %10, !dbg !71

10:                                               ; preds = %7, %0
  %11 = phi i1 [ true, %0 ], [ %9, %7 ]
  %12 = zext i1 %11 to i32, !dbg !71
  %13 = sext i32 %12 to i64, !dbg !69
  call void @klee_assume(i64 noundef %13), !dbg !74
  %14 = load i32, i32* %3, align 4, !dbg !75
  %15 = icmp ne i32 %14, 0, !dbg !75
  br i1 %15, label %16, label %24, !dbg !77

16:                                               ; preds = %10
  %17 = call %struct._xmlSchemaItemList* @xmlSchemaItemListCreate(), !dbg !78
  store %struct._xmlSchemaItemList* %17, %struct._xmlSchemaItemList** %2, align 8, !dbg !80
  %18 = load %struct._xmlSchemaItemList*, %struct._xmlSchemaItemList** %2, align 8, !dbg !81
  %19 = icmp ne %struct._xmlSchemaItemList* %18, null, !dbg !83
  br i1 %19, label %20, label %23, !dbg !84

20:                                               ; preds = %16
  %21 = load %struct._xmlSchemaItemList*, %struct._xmlSchemaItemList** %2, align 8, !dbg !85
  %22 = bitcast %struct._xmlSchemaItemList* %21 to i8*, !dbg !85
  call void @free(i8* noundef %22) #7, !dbg !87
  br label %23, !dbg !88

23:                                               ; preds = %20, %16
  br label %24, !dbg !89

24:                                               ; preds = %23, %10
  ret i32 0, !dbg !90
}

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct._xmlSchemaItemList* @xmlSchemaItemListCreate() #0 !dbg !91 {
  %1 = alloca %struct._xmlSchemaItemList*, align 8
  %2 = alloca %struct._xmlSchemaItemList*, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaItemList** %2, metadata !94, metadata !DIExpression()), !dbg !95
  %3 = call i8* @xmlMalloc(i64 noundef 24), !dbg !96
  %4 = bitcast i8* %3 to %struct._xmlSchemaItemList*, !dbg !96
  store %struct._xmlSchemaItemList* %4, %struct._xmlSchemaItemList** %2, align 8, !dbg !97
  %5 = load %struct._xmlSchemaItemList*, %struct._xmlSchemaItemList** %2, align 8, !dbg !98
  %6 = icmp eq %struct._xmlSchemaItemList* %5, null, !dbg !100
  br i1 %6, label %7, label %8, !dbg !101

7:                                                ; preds = %0
  call void @xmlSchemaPErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* noundef null), !dbg !102
  store %struct._xmlSchemaItemList* null, %struct._xmlSchemaItemList** %1, align 8, !dbg !104
  br label %14, !dbg !104

8:                                                ; preds = %0
  %9 = load %struct._xmlSchemaItemList*, %struct._xmlSchemaItemList** %2, align 8, !dbg !105
  %10 = bitcast %struct._xmlSchemaItemList* %9 to i8*, !dbg !106
  %11 = call i8* @memset(i8* %10, i32 0, i64 24), !dbg !106
  %12 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.4, i64 0, i64 0), i32 noundef 51, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.xmlSchemaItemListCreate, i64 0, i64 0)), !dbg !107
  %13 = load %struct._xmlSchemaItemList*, %struct._xmlSchemaItemList** %2, align 8, !dbg !108
  store %struct._xmlSchemaItemList* %13, %struct._xmlSchemaItemList** %1, align 8, !dbg !109
  br label %14, !dbg !109

14:                                               ; preds = %8, %7
  %15 = load %struct._xmlSchemaItemList*, %struct._xmlSchemaItemList** %1, align 8, !dbg !110
  ret %struct._xmlSchemaItemList* %15, !dbg !110
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !111 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !115, metadata !DIExpression()), !dbg !116
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !117, metadata !DIExpression()), !dbg !118
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !119, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.declare(metadata i8** %7, metadata !121, metadata !DIExpression()), !dbg !123
  %8 = load i8*, i8** %4, align 8, !dbg !124
  store i8* %8, i8** %7, align 8, !dbg !123
  br label %9, !dbg !125

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !126
  %11 = add i64 %10, -1, !dbg !126
  store i64 %11, i64* %6, align 8, !dbg !126
  %12 = icmp ugt i64 %10, 0, !dbg !127
  br i1 %12, label %13, label %18, !dbg !125

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !128
  %15 = trunc i32 %14 to i8, !dbg !128
  %16 = load i8*, i8** %7, align 8, !dbg !129
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !129
  store i8* %17, i8** %7, align 8, !dbg !129
  store i8 %15, i8* %16, align 1, !dbg !130
  br label %9, !dbg !125, !llvm.loop !131

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !133
  ret i8* %19, !dbg !134
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13, !13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/380_xmlschemas.c_3395_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "3a20d0772e6aa34584cb836917d5d866")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = distinct !DICompileUnit(language: DW_LANG_C99, file: !5, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!5 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 7, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"Ubuntu clang version 14.0.6"}
!14 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 21, type: !15, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!15 = !DISubroutineType(types: !16)
!16 = !{!3, !17}
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !18, line: 46, baseType: !19)
!18 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!19 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!20 = !{}
!21 = !DILocalVariable(name: "size", arg: 1, scope: !14, file: !1, line: 21, type: !17)
!22 = !DILocation(line: 21, column: 24, scope: !14)
!23 = !DILocalVariable(name: "ptr", scope: !14, file: !1, line: 22, type: !3)
!24 = !DILocation(line: 22, column: 11, scope: !14)
!25 = !DILocation(line: 22, column: 24, scope: !14)
!26 = !DILocation(line: 22, column: 17, scope: !14)
!27 = !DILocation(line: 23, column: 9, scope: !28)
!28 = distinct !DILexicalBlock(scope: !14, file: !1, line: 23, column: 9)
!29 = !DILocation(line: 23, column: 9, scope: !14)
!30 = !DILocation(line: 24, column: 28, scope: !31)
!31 = distinct !DILexicalBlock(scope: !28, file: !1, line: 23, column: 14)
!32 = !DILocation(line: 24, column: 33, scope: !31)
!33 = !DILocation(line: 24, column: 9, scope: !31)
!34 = !DILocation(line: 25, column: 5, scope: !31)
!35 = !DILocation(line: 26, column: 12, scope: !14)
!36 = !DILocation(line: 26, column: 5, scope: !14)
!37 = distinct !DISubprogram(name: "xmlSchemaPErrMemory", scope: !1, file: !1, line: 30, type: !38, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!38 = !DISubroutineType(types: !39)
!39 = !{null, !3, !40, !40}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!42 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!43 = !DILocalVariable(name: "ctxt", arg: 1, scope: !37, file: !1, line: 30, type: !3)
!44 = !DILocation(line: 30, column: 32, scope: !37)
!45 = !DILocalVariable(name: "msg", arg: 2, scope: !37, file: !1, line: 30, type: !40)
!46 = !DILocation(line: 30, column: 50, scope: !37)
!47 = !DILocalVariable(name: "extra", arg: 3, scope: !37, file: !1, line: 30, type: !40)
!48 = !DILocation(line: 30, column: 67, scope: !37)
!49 = !DILocation(line: 32, column: 1, scope: !37)
!50 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 57, type: !51, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!51 = !DISubroutineType(types: !52)
!52 = !{!53}
!53 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!54 = !DILocalVariable(name: "list", scope: !50, file: !1, line: 58, type: !55)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaItemListPtr", file: !1, line: 11, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaItemList", file: !1, line: 10, baseType: !58)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaItemList", file: !1, line: 13, size: 192, elements: !59)
!59 = !{!60, !61, !62, !63}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !58, file: !1, line: 14, baseType: !3, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "itemCount", scope: !58, file: !1, line: 15, baseType: !53, size: 32, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "itemSize", scope: !58, file: !1, line: 16, baseType: !53, size: 32, offset: 96)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "itemMax", scope: !58, file: !1, line: 17, baseType: !53, size: 32, offset: 128)
!64 = !DILocation(line: 58, column: 26, scope: !50)
!65 = !DILocalVariable(name: "malloc_success", scope: !50, file: !1, line: 61, type: !53)
!66 = !DILocation(line: 61, column: 9, scope: !50)
!67 = !DILocation(line: 62, column: 24, scope: !50)
!68 = !DILocation(line: 62, column: 5, scope: !50)
!69 = !DILocation(line: 63, column: 17, scope: !50)
!70 = !DILocation(line: 63, column: 32, scope: !50)
!71 = !DILocation(line: 63, column: 37, scope: !50)
!72 = !DILocation(line: 63, column: 40, scope: !50)
!73 = !DILocation(line: 63, column: 55, scope: !50)
!74 = !DILocation(line: 63, column: 5, scope: !50)
!75 = !DILocation(line: 66, column: 9, scope: !76)
!76 = distinct !DILexicalBlock(scope: !50, file: !1, line: 66, column: 9)
!77 = !DILocation(line: 66, column: 9, scope: !50)
!78 = !DILocation(line: 67, column: 16, scope: !79)
!79 = distinct !DILexicalBlock(scope: !76, file: !1, line: 66, column: 25)
!80 = !DILocation(line: 67, column: 14, scope: !79)
!81 = !DILocation(line: 68, column: 13, scope: !82)
!82 = distinct !DILexicalBlock(scope: !79, file: !1, line: 68, column: 13)
!83 = !DILocation(line: 68, column: 18, scope: !82)
!84 = !DILocation(line: 68, column: 13, scope: !79)
!85 = !DILocation(line: 69, column: 18, scope: !86)
!86 = distinct !DILexicalBlock(scope: !82, file: !1, line: 68, column: 27)
!87 = !DILocation(line: 69, column: 13, scope: !86)
!88 = !DILocation(line: 70, column: 9, scope: !86)
!89 = !DILocation(line: 71, column: 5, scope: !79)
!90 = !DILocation(line: 73, column: 5, scope: !50)
!91 = distinct !DISubprogram(name: "xmlSchemaItemListCreate", scope: !1, file: !1, line: 35, type: !92, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !20)
!92 = !DISubroutineType(types: !93)
!93 = !{!55}
!94 = !DILocalVariable(name: "ret", scope: !91, file: !1, line: 36, type: !55)
!95 = !DILocation(line: 36, column: 26, scope: !91)
!96 = !DILocation(line: 38, column: 11, scope: !91)
!97 = !DILocation(line: 38, column: 9, scope: !91)
!98 = !DILocation(line: 39, column: 9, scope: !99)
!99 = distinct !DILexicalBlock(scope: !91, file: !1, line: 39, column: 9)
!100 = !DILocation(line: 39, column: 13, scope: !99)
!101 = !DILocation(line: 39, column: 9, scope: !91)
!102 = !DILocation(line: 40, column: 9, scope: !103)
!103 = distinct !DILexicalBlock(scope: !99, file: !1, line: 39, column: 22)
!104 = !DILocation(line: 42, column: 9, scope: !103)
!105 = !DILocation(line: 45, column: 12, scope: !91)
!106 = !DILocation(line: 45, column: 5, scope: !91)
!107 = !DILocation(line: 51, column: 5, scope: !91)
!108 = !DILocation(line: 53, column: 13, scope: !91)
!109 = !DILocation(line: 53, column: 5, scope: !91)
!110 = !DILocation(line: 54, column: 1, scope: !91)
!111 = distinct !DISubprogram(name: "memset", scope: !112, file: !112, line: 12, type: !113, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !20)
!112 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!113 = !DISubroutineType(types: !114)
!114 = !{!3, !3, !53, !17}
!115 = !DILocalVariable(name: "dst", arg: 1, scope: !111, file: !112, line: 12, type: !3)
!116 = !DILocation(line: 12, column: 20, scope: !111)
!117 = !DILocalVariable(name: "s", arg: 2, scope: !111, file: !112, line: 12, type: !53)
!118 = !DILocation(line: 12, column: 29, scope: !111)
!119 = !DILocalVariable(name: "count", arg: 3, scope: !111, file: !112, line: 12, type: !17)
!120 = !DILocation(line: 12, column: 39, scope: !111)
!121 = !DILocalVariable(name: "a", scope: !111, file: !112, line: 13, type: !122)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!123 = !DILocation(line: 13, column: 9, scope: !111)
!124 = !DILocation(line: 13, column: 13, scope: !111)
!125 = !DILocation(line: 14, column: 3, scope: !111)
!126 = !DILocation(line: 14, column: 15, scope: !111)
!127 = !DILocation(line: 14, column: 18, scope: !111)
!128 = !DILocation(line: 15, column: 12, scope: !111)
!129 = !DILocation(line: 15, column: 7, scope: !111)
!130 = !DILocation(line: 15, column: 10, scope: !111)
!131 = distinct !{!131, !125, !128, !132}
!132 = !{!"llvm.loop.mustprogress"}
!133 = !DILocation(line: 16, column: 10, scope: !111)
!134 = !DILocation(line: 16, column: 3, scope: !111)

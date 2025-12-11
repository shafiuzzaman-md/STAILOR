; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/389_xmlschemas.c_3391_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/389_xmlschemas.c_3391_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaItemList = type { i32, i32, i8** }

@.str = private unnamed_addr constant [3 x i8] c"an\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [109 x i8] c"se_runs/sa_llm/libxml2_62911_vul/389_xmlschemas.c_3391_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"allocating an item list structure\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchemaPErrMemory(i8* noundef %0, i8* noundef %1, i8* noundef %2) #0 !dbg !24 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !31, metadata !DIExpression()), !dbg !32
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !33, metadata !DIExpression()), !dbg !34
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !35, metadata !DIExpression()), !dbg !36
  ret void, !dbg !37
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !38 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct._xmlSchemaItemList*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !41, metadata !DIExpression()), !dbg !42
  %4 = bitcast i32* %2 to i8*, !dbg !43
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !44
  %5 = load i32, i32* %2, align 4, !dbg !45
  %6 = icmp sge i32 %5, -10, !dbg !46
  %7 = zext i1 %6 to i32, !dbg !46
  %8 = sext i32 %7 to i64, !dbg !45
  call void @klee_assume(i64 noundef %8), !dbg !47
  %9 = load i32, i32* %2, align 4, !dbg !48
  %10 = icmp sle i32 %9, 100, !dbg !49
  %11 = zext i1 %10 to i32, !dbg !49
  %12 = sext i32 %11 to i64, !dbg !48
  call void @klee_assume(i64 noundef %12), !dbg !50
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaItemList** %3, metadata !51, metadata !DIExpression()), !dbg !52
  %13 = load i32, i32* %2, align 4, !dbg !53
  %14 = call %struct._xmlSchemaItemList* @xmlSchemaParseRedefine(i32 noundef %13), !dbg !54
  store %struct._xmlSchemaItemList* %14, %struct._xmlSchemaItemList** %3, align 8, !dbg !52
  %15 = load %struct._xmlSchemaItemList*, %struct._xmlSchemaItemList** %3, align 8, !dbg !55
  %16 = icmp ne %struct._xmlSchemaItemList* %15, null, !dbg !57
  br i1 %16, label %17, label %21, !dbg !58

17:                                               ; preds = %0
  %18 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.2, i64 0, i64 0), i32 noundef 76, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !59
  %19 = load %struct._xmlSchemaItemList*, %struct._xmlSchemaItemList** %3, align 8, !dbg !61
  %20 = bitcast %struct._xmlSchemaItemList* %19 to i8*, !dbg !61
  call void @free(i8* noundef %20) #7, !dbg !62
  br label %21, !dbg !63

21:                                               ; preds = %17, %0
  ret i32 0, !dbg !64
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct._xmlSchemaItemList* @xmlSchemaParseRedefine(i32 noundef %0) #0 !dbg !65 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !68, metadata !DIExpression()), !dbg !69
  %3 = load i32, i32* %2, align 4, !dbg !70
  %4 = call %struct._xmlSchemaItemList* @xmlSchemaItemListCreate(i32 noundef %3), !dbg !71
  ret %struct._xmlSchemaItemList* %4, !dbg !72
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct._xmlSchemaItemList* @xmlSchemaItemListCreate(i32 noundef %0) #0 !dbg !73 {
  %2 = alloca %struct._xmlSchemaItemList*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlSchemaItemList*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaItemList** %4, metadata !76, metadata !DIExpression()), !dbg !77
  %5 = load i32, i32* %3, align 4, !dbg !78
  %6 = icmp sle i32 %5, 0, !dbg !80
  br i1 %6, label %7, label %8, !dbg !81

7:                                                ; preds = %1
  store %struct._xmlSchemaItemList* null, %struct._xmlSchemaItemList** %2, align 8, !dbg !82
  br label %19, !dbg !82

8:                                                ; preds = %1
  %9 = call noalias i8* @malloc(i64 noundef 16) #7, !dbg !83
  %10 = bitcast i8* %9 to %struct._xmlSchemaItemList*, !dbg !84
  store %struct._xmlSchemaItemList* %10, %struct._xmlSchemaItemList** %4, align 8, !dbg !85
  %11 = load %struct._xmlSchemaItemList*, %struct._xmlSchemaItemList** %4, align 8, !dbg !86
  %12 = icmp eq %struct._xmlSchemaItemList* %11, null, !dbg !88
  br i1 %12, label %13, label %14, !dbg !89

13:                                               ; preds = %8
  call void @xmlSchemaPErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* noundef null), !dbg !90
  store %struct._xmlSchemaItemList* null, %struct._xmlSchemaItemList** %2, align 8, !dbg !92
  br label %19, !dbg !92

14:                                               ; preds = %8
  %15 = load %struct._xmlSchemaItemList*, %struct._xmlSchemaItemList** %4, align 8, !dbg !93
  %16 = bitcast %struct._xmlSchemaItemList* %15 to i8*, !dbg !94
  %17 = call i8* @memset(i8* %16, i32 0, i64 16), !dbg !94
  %18 = load %struct._xmlSchemaItemList*, %struct._xmlSchemaItemList** %4, align 8, !dbg !95
  store %struct._xmlSchemaItemList* %18, %struct._xmlSchemaItemList** %2, align 8, !dbg !96
  br label %19, !dbg !96

19:                                               ; preds = %14, %13, %7
  %20 = load %struct._xmlSchemaItemList*, %struct._xmlSchemaItemList** %2, align 8, !dbg !97
  ret %struct._xmlSchemaItemList* %20, !dbg !97
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !98 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !105, metadata !DIExpression()), !dbg !106
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !107, metadata !DIExpression()), !dbg !108
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !109, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.declare(metadata i8** %7, metadata !111, metadata !DIExpression()), !dbg !113
  %8 = load i8*, i8** %4, align 8, !dbg !114
  store i8* %8, i8** %7, align 8, !dbg !113
  br label %9, !dbg !115

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !116
  %11 = add i64 %10, -1, !dbg !116
  store i64 %11, i64* %6, align 8, !dbg !116
  %12 = icmp ugt i64 %10, 0, !dbg !117
  br i1 %12, label %13, label %18, !dbg !115

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !118
  %15 = trunc i32 %14 to i8, !dbg !118
  %16 = load i8*, i8** %7, align 8, !dbg !119
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !119
  store i8* %17, i8** %7, align 8, !dbg !119
  store i8 %15, i8* %16, align 1, !dbg !120
  br label %9, !dbg !115, !llvm.loop !121

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !123
  ret i8* %19, !dbg !124
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23, !23}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/389_xmlschemas.c_3391_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "be7084dfb2719026051e9bb340493658")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaItemListPtr", file: !1, line: 11, baseType: !5)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaItemList", file: !1, line: 10, baseType: !7)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaItemList", file: !1, line: 13, size: 128, elements: !8)
!8 = !{!9, !11, !12}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !7, file: !1, line: 14, baseType: !10, size: 32)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "nbItems", scope: !7, file: !1, line: 15, baseType: !10, size: 32, offset: 32)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !7, file: !1, line: 16, baseType: !13, size: 64, offset: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64)
!14 = distinct !DICompileUnit(language: DW_LANG_C99, file: !15, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!15 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!16 = !{i32 7, !"Dwarf Version", i32 5}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{i32 7, !"PIC Level", i32 2}
!20 = !{i32 7, !"PIE Level", i32 2}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"Ubuntu clang version 14.0.6"}
!24 = distinct !DISubprogram(name: "xmlSchemaPErrMemory", scope: !1, file: !1, line: 20, type: !25, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !30)
!25 = !DISubroutineType(types: !26)
!26 = !{null, !3, !27, !27}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!29 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!30 = !{}
!31 = !DILocalVariable(name: "ctxt", arg: 1, scope: !24, file: !1, line: 20, type: !3)
!32 = !DILocation(line: 20, column: 32, scope: !24)
!33 = !DILocalVariable(name: "msg", arg: 2, scope: !24, file: !1, line: 20, type: !27)
!34 = !DILocation(line: 20, column: 50, scope: !24)
!35 = !DILocalVariable(name: "extra", arg: 3, scope: !24, file: !1, line: 20, type: !27)
!36 = !DILocation(line: 20, column: 67, scope: !24)
!37 = !DILocation(line: 22, column: 1, scope: !24)
!38 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 48, type: !39, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !30)
!39 = !DISubroutineType(types: !40)
!40 = !{!10}
!41 = !DILocalVariable(name: "an", scope: !38, file: !1, line: 49, type: !10)
!42 = !DILocation(line: 49, column: 9, scope: !38)
!43 = !DILocation(line: 52, column: 24, scope: !38)
!44 = !DILocation(line: 52, column: 5, scope: !38)
!45 = !DILocation(line: 55, column: 17, scope: !38)
!46 = !DILocation(line: 55, column: 20, scope: !38)
!47 = !DILocation(line: 55, column: 5, scope: !38)
!48 = !DILocation(line: 56, column: 17, scope: !38)
!49 = !DILocation(line: 56, column: 20, scope: !38)
!50 = !DILocation(line: 56, column: 5, scope: !38)
!51 = !DILocalVariable(name: "result", scope: !38, file: !1, line: 59, type: !4)
!52 = !DILocation(line: 59, column: 26, scope: !38)
!53 = !DILocation(line: 59, column: 58, scope: !38)
!54 = !DILocation(line: 59, column: 35, scope: !38)
!55 = !DILocation(line: 62, column: 9, scope: !56)
!56 = distinct !DILexicalBlock(scope: !38, file: !1, line: 62, column: 9)
!57 = !DILocation(line: 62, column: 16, scope: !56)
!58 = !DILocation(line: 62, column: 9, scope: !38)
!59 = !DILocation(line: 76, column: 9, scope: !60)
!60 = distinct !DILexicalBlock(scope: !56, file: !1, line: 62, column: 25)
!61 = !DILocation(line: 79, column: 14, scope: !60)
!62 = !DILocation(line: 79, column: 9, scope: !60)
!63 = !DILocation(line: 80, column: 5, scope: !60)
!64 = !DILocation(line: 82, column: 5, scope: !38)
!65 = distinct !DISubprogram(name: "xmlSchemaParseRedefine", scope: !1, file: !1, line: 44, type: !66, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !30)
!66 = !DISubroutineType(types: !67)
!67 = !{!4, !10}
!68 = !DILocalVariable(name: "size_param", arg: 1, scope: !65, file: !1, line: 44, type: !10)
!69 = !DILocation(line: 44, column: 56, scope: !65)
!70 = !DILocation(line: 45, column: 36, scope: !65)
!71 = !DILocation(line: 45, column: 12, scope: !65)
!72 = !DILocation(line: 45, column: 5, scope: !65)
!73 = distinct !DISubprogram(name: "xmlSchemaItemListCreate", scope: !1, file: !1, line: 25, type: !66, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !30)
!74 = !DILocalVariable(name: "an", arg: 1, scope: !73, file: !1, line: 25, type: !10)
!75 = !DILocation(line: 25, column: 57, scope: !73)
!76 = !DILocalVariable(name: "ret", scope: !73, file: !1, line: 26, type: !4)
!77 = !DILocation(line: 26, column: 26, scope: !73)
!78 = !DILocation(line: 28, column: 9, scope: !79)
!79 = distinct !DILexicalBlock(scope: !73, file: !1, line: 28, column: 9)
!80 = !DILocation(line: 28, column: 12, scope: !79)
!81 = !DILocation(line: 28, column: 9, scope: !73)
!82 = !DILocation(line: 29, column: 9, scope: !79)
!83 = !DILocation(line: 31, column: 33, scope: !73)
!84 = !DILocation(line: 31, column: 11, scope: !73)
!85 = !DILocation(line: 31, column: 9, scope: !73)
!86 = !DILocation(line: 32, column: 9, scope: !87)
!87 = distinct !DILexicalBlock(scope: !73, file: !1, line: 32, column: 9)
!88 = !DILocation(line: 32, column: 13, scope: !87)
!89 = !DILocation(line: 32, column: 9, scope: !73)
!90 = !DILocation(line: 33, column: 9, scope: !91)
!91 = distinct !DILexicalBlock(scope: !87, file: !1, line: 32, column: 22)
!92 = !DILocation(line: 34, column: 9, scope: !91)
!93 = !DILocation(line: 38, column: 12, scope: !73)
!94 = !DILocation(line: 38, column: 5, scope: !73)
!95 = !DILocation(line: 40, column: 12, scope: !73)
!96 = !DILocation(line: 40, column: 5, scope: !73)
!97 = !DILocation(line: 41, column: 1, scope: !73)
!98 = distinct !DISubprogram(name: "memset", scope: !99, file: !99, line: 12, type: !100, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !30)
!99 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!100 = !DISubroutineType(types: !101)
!101 = !{!3, !3, !10, !102}
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !103, line: 46, baseType: !104)
!103 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!104 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!105 = !DILocalVariable(name: "dst", arg: 1, scope: !98, file: !99, line: 12, type: !3)
!106 = !DILocation(line: 12, column: 20, scope: !98)
!107 = !DILocalVariable(name: "s", arg: 2, scope: !98, file: !99, line: 12, type: !10)
!108 = !DILocation(line: 12, column: 29, scope: !98)
!109 = !DILocalVariable(name: "count", arg: 3, scope: !98, file: !99, line: 12, type: !102)
!110 = !DILocation(line: 12, column: 39, scope: !98)
!111 = !DILocalVariable(name: "a", scope: !98, file: !99, line: 13, type: !112)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!113 = !DILocation(line: 13, column: 9, scope: !98)
!114 = !DILocation(line: 13, column: 13, scope: !98)
!115 = !DILocation(line: 14, column: 3, scope: !98)
!116 = !DILocation(line: 14, column: 15, scope: !98)
!117 = !DILocation(line: 14, column: 18, scope: !98)
!118 = !DILocation(line: 15, column: 12, scope: !98)
!119 = !DILocation(line: 15, column: 7, scope: !98)
!120 = !DILocation(line: 15, column: 10, scope: !98)
!121 = distinct !{!121, !115, !118, !122}
!122 = !{!"llvm.loop.mustprogress"}
!123 = !DILocation(line: 16, column: 10, scope: !98)
!124 = !DILocation(line: 16, column: 3, scope: !98)

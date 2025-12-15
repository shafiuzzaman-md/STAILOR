; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/293_xmlschemastypes.c_964_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/293_xmlschemastypes.c_964_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaVal = type { i32, i8* }

@.str = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"value_buffer\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [76 x i8] c"(sizeof(xmlSchemaVal) <= malloc_usable_size(result)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [113 x i8] c"se_runs/sa_llm/libxml2_55980_vul/293_xmlschemastypes.c_964_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !30 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !37, metadata !DIExpression()), !dbg !38
  %3 = load i64, i64* %2, align 8, !dbg !39
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !40
  ret i8* %4, !dbg !41
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlSchemaVal* @xmlSchemaNewStringValue(i32 noundef %0, i8* noundef %1) #0 !dbg !42 {
  %3 = alloca %struct._xmlSchemaVal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct._xmlSchemaVal*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !47, metadata !DIExpression()), !dbg !48
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !49, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaVal** %6, metadata !51, metadata !DIExpression()), !dbg !52
  %7 = load i32, i32* %4, align 4, !dbg !53
  %8 = icmp ne i32 %7, 0, !dbg !55
  br i1 %8, label %9, label %10, !dbg !56

9:                                                ; preds = %2
  store %struct._xmlSchemaVal* null, %struct._xmlSchemaVal** %3, align 8, !dbg !57
  br label %27, !dbg !57

10:                                               ; preds = %2
  %11 = call i8* @xmlMalloc(i64 noundef 16), !dbg !58
  %12 = bitcast i8* %11 to %struct._xmlSchemaVal*, !dbg !59
  store %struct._xmlSchemaVal* %12, %struct._xmlSchemaVal** %6, align 8, !dbg !60
  %13 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %6, align 8, !dbg !61
  %14 = icmp eq %struct._xmlSchemaVal* %13, null, !dbg !63
  br i1 %14, label %15, label %16, !dbg !64

15:                                               ; preds = %10
  store %struct._xmlSchemaVal* null, %struct._xmlSchemaVal** %3, align 8, !dbg !65
  br label %27, !dbg !65

16:                                               ; preds = %10
  %17 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %6, align 8, !dbg !67
  %18 = bitcast %struct._xmlSchemaVal* %17 to i8*, !dbg !68
  %19 = call i8* @memset(i8* %18, i32 0, i64 16), !dbg !68
  %20 = load i32, i32* %4, align 4, !dbg !69
  %21 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %6, align 8, !dbg !70
  %22 = getelementptr inbounds %struct._xmlSchemaVal, %struct._xmlSchemaVal* %21, i32 0, i32 0, !dbg !71
  store i32 %20, i32* %22, align 8, !dbg !72
  %23 = load i8*, i8** %5, align 8, !dbg !73
  %24 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %6, align 8, !dbg !74
  %25 = getelementptr inbounds %struct._xmlSchemaVal, %struct._xmlSchemaVal* %24, i32 0, i32 1, !dbg !75
  store i8* %23, i8** %25, align 8, !dbg !76
  %26 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %6, align 8, !dbg !77
  store %struct._xmlSchemaVal* %26, %struct._xmlSchemaVal** %3, align 8, !dbg !78
  br label %27, !dbg !78

27:                                               ; preds = %16, %15, %9
  %28 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %3, align 8, !dbg !79
  ret %struct._xmlSchemaVal* %28, !dbg !79
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !80 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [256 x i8], align 16
  %4 = alloca %struct._xmlSchemaVal*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !84, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !86, metadata !DIExpression()), !dbg !91
  %5 = bitcast i32* %2 to i8*, !dbg !92
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !93
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !94
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 256, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0)), !dbg !95
  %7 = load i32, i32* %2, align 4, !dbg !96
  %8 = icmp eq i32 %7, 0, !dbg !97
  %9 = zext i1 %8 to i32, !dbg !97
  %10 = sext i32 %9 to i64, !dbg !96
  call void @klee_assume(i64 noundef %10), !dbg !98
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaVal** %4, metadata !99, metadata !DIExpression()), !dbg !100
  %11 = load i32, i32* %2, align 4, !dbg !101
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !102
  %13 = call %struct._xmlSchemaVal* @xmlSchemaNewStringValue(i32 noundef %11, i8* noundef %12), !dbg !103
  store %struct._xmlSchemaVal* %13, %struct._xmlSchemaVal** %4, align 8, !dbg !100
  %14 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %4, align 8, !dbg !104
  %15 = icmp ne %struct._xmlSchemaVal* %14, null, !dbg !106
  br i1 %15, label %16, label %29, !dbg !107

16:                                               ; preds = %0
  %17 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %4, align 8, !dbg !108
  %18 = call i32 (%struct._xmlSchemaVal*, ...) bitcast (i32 (...)* @malloc_usable_size to i32 (%struct._xmlSchemaVal*, ...)*)(%struct._xmlSchemaVal* noundef %17), !dbg !108
  %19 = sext i32 %18 to i64, !dbg !108
  %20 = icmp ule i64 16, %19, !dbg !108
  br i1 %20, label %21, label %23, !dbg !108

21:                                               ; preds = %16
  br i1 true, label %22, label %23, !dbg !108

22:                                               ; preds = %21
  br label %25, !dbg !108

23:                                               ; preds = %21, %16
  %24 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([113 x i8], [113 x i8]* @.str.4, i64 0, i64 0), i32 noundef 72, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !108
  br label %25, !dbg !108

25:                                               ; preds = %23, %22
  %26 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([113 x i8], [113 x i8]* @.str.4, i64 0, i64 0), i32 noundef 75, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !110
  %27 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %4, align 8, !dbg !111
  %28 = bitcast %struct._xmlSchemaVal* %27 to i8*, !dbg !111
  call void @free(i8* noundef %28) #7, !dbg !112
  br label %29, !dbg !113

29:                                               ; preds = %25, %0
  ret i32 0, !dbg !114
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

declare i32 @malloc_usable_size(...) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !115 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !119, metadata !DIExpression()), !dbg !120
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !121, metadata !DIExpression()), !dbg !122
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !123, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.declare(metadata i8** %7, metadata !125, metadata !DIExpression()), !dbg !127
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
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29, !29}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !7, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/293_xmlschemastypes.c_964_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "3e85cda7cad1aadce2112243214e577a")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 11, baseType: !4, size: 32, elements: !5)
!4 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!5 = !{!6}
!6 = !DIEnumerator(name: "XML_SCHEMAS_STRING", value: 0)
!7 = !{!8, !19, !16}
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaValPtr", file: !1, line: 21, baseType: !9)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaVal", file: !1, line: 15, baseType: !11)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaVal", file: !1, line: 16, size: 128, elements: !12)
!12 = !{!13, !15}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !11, file: !1, line: 17, baseType: !14, size: 32)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaValType", file: !1, line: 13, baseType: !3)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "value_str", scope: !11, file: !1, line: 18, baseType: !16, size: 64, offset: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !1, line: 10, baseType: !18)
!18 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!20 = distinct !DICompileUnit(language: DW_LANG_C99, file: !21, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!21 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!22 = !{i32 7, !"Dwarf Version", i32 5}
!23 = !{i32 2, !"Debug Info Version", i32 3}
!24 = !{i32 1, !"wchar_size", i32 4}
!25 = !{i32 7, !"PIC Level", i32 2}
!26 = !{i32 7, !"PIE Level", i32 2}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"Ubuntu clang version 14.0.6"}
!30 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 24, type: !31, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !36)
!31 = !DISubroutineType(types: !32)
!32 = !{!19, !33}
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !34, line: 46, baseType: !35)
!34 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!35 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!36 = !{}
!37 = !DILocalVariable(name: "size", arg: 1, scope: !30, file: !1, line: 24, type: !33)
!38 = !DILocation(line: 24, column: 24, scope: !30)
!39 = !DILocation(line: 25, column: 19, scope: !30)
!40 = !DILocation(line: 25, column: 12, scope: !30)
!41 = !DILocation(line: 25, column: 5, scope: !30)
!42 = distinct !DISubprogram(name: "xmlSchemaNewStringValue", scope: !1, file: !1, line: 29, type: !43, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !36)
!43 = !DISubroutineType(types: !44)
!44 = !{!8, !14, !45}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!47 = !DILocalVariable(name: "type", arg: 1, scope: !42, file: !1, line: 29, type: !14)
!48 = !DILocation(line: 29, column: 58, scope: !42)
!49 = !DILocalVariable(name: "value", arg: 2, scope: !42, file: !1, line: 29, type: !45)
!50 = !DILocation(line: 29, column: 79, scope: !42)
!51 = !DILocalVariable(name: "val", scope: !42, file: !1, line: 30, type: !8)
!52 = !DILocation(line: 30, column: 21, scope: !42)
!53 = !DILocation(line: 32, column: 9, scope: !54)
!54 = distinct !DILexicalBlock(scope: !42, file: !1, line: 32, column: 9)
!55 = !DILocation(line: 32, column: 14, scope: !54)
!56 = !DILocation(line: 32, column: 9, scope: !42)
!57 = !DILocation(line: 33, column: 9, scope: !54)
!58 = !DILocation(line: 34, column: 29, scope: !42)
!59 = !DILocation(line: 34, column: 11, scope: !42)
!60 = !DILocation(line: 34, column: 9, scope: !42)
!61 = !DILocation(line: 35, column: 9, scope: !62)
!62 = distinct !DILexicalBlock(scope: !42, file: !1, line: 35, column: 9)
!63 = !DILocation(line: 35, column: 13, scope: !62)
!64 = !DILocation(line: 35, column: 9, scope: !42)
!65 = !DILocation(line: 36, column: 9, scope: !66)
!66 = distinct !DILexicalBlock(scope: !62, file: !1, line: 35, column: 22)
!67 = !DILocation(line: 39, column: 12, scope: !42)
!68 = !DILocation(line: 39, column: 5, scope: !42)
!69 = !DILocation(line: 40, column: 17, scope: !42)
!70 = !DILocation(line: 40, column: 5, scope: !42)
!71 = !DILocation(line: 40, column: 10, scope: !42)
!72 = !DILocation(line: 40, column: 15, scope: !42)
!73 = !DILocation(line: 41, column: 34, scope: !42)
!74 = !DILocation(line: 41, column: 5, scope: !42)
!75 = !DILocation(line: 41, column: 10, scope: !42)
!76 = !DILocation(line: 41, column: 20, scope: !42)
!77 = !DILocation(line: 42, column: 12, scope: !42)
!78 = !DILocation(line: 42, column: 5, scope: !42)
!79 = !DILocation(line: 43, column: 1, scope: !42)
!80 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 45, type: !81, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !36)
!81 = !DISubroutineType(types: !82)
!82 = !{!83}
!83 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!84 = !DILocalVariable(name: "type", scope: !80, file: !1, line: 47, type: !14)
!85 = !DILocation(line: 47, column: 22, scope: !80)
!86 = !DILocalVariable(name: "value_buffer", scope: !80, file: !1, line: 48, type: !87)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 2048, elements: !89)
!88 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!89 = !{!90}
!90 = !DISubrange(count: 256)
!91 = !DILocation(line: 48, column: 10, scope: !80)
!92 = !DILocation(line: 50, column: 24, scope: !80)
!93 = !DILocation(line: 50, column: 5, scope: !80)
!94 = !DILocation(line: 51, column: 24, scope: !80)
!95 = !DILocation(line: 51, column: 5, scope: !80)
!96 = !DILocation(line: 54, column: 17, scope: !80)
!97 = !DILocation(line: 54, column: 22, scope: !80)
!98 = !DILocation(line: 54, column: 5, scope: !80)
!99 = !DILocalVariable(name: "result", scope: !80, file: !1, line: 57, type: !8)
!100 = !DILocation(line: 57, column: 21, scope: !80)
!101 = !DILocation(line: 57, column: 54, scope: !80)
!102 = !DILocation(line: 57, column: 70, scope: !80)
!103 = !DILocation(line: 57, column: 30, scope: !80)
!104 = !DILocation(line: 70, column: 9, scope: !105)
!105 = distinct !DILexicalBlock(scope: !80, file: !1, line: 70, column: 9)
!106 = !DILocation(line: 70, column: 16, scope: !105)
!107 = !DILocation(line: 70, column: 9, scope: !80)
!108 = !DILocation(line: 72, column: 9, scope: !109)
!109 = distinct !DILexicalBlock(scope: !105, file: !1, line: 70, column: 25)
!110 = !DILocation(line: 75, column: 9, scope: !109)
!111 = !DILocation(line: 78, column: 14, scope: !109)
!112 = !DILocation(line: 78, column: 9, scope: !109)
!113 = !DILocation(line: 79, column: 5, scope: !109)
!114 = !DILocation(line: 81, column: 5, scope: !80)
!115 = distinct !DISubprogram(name: "memset", scope: !116, file: !116, line: 12, type: !117, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !20, retainedNodes: !36)
!116 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!117 = !DISubroutineType(types: !118)
!118 = !{!19, !19, !83, !33}
!119 = !DILocalVariable(name: "dst", arg: 1, scope: !115, file: !116, line: 12, type: !19)
!120 = !DILocation(line: 12, column: 20, scope: !115)
!121 = !DILocalVariable(name: "s", arg: 2, scope: !115, file: !116, line: 12, type: !83)
!122 = !DILocation(line: 12, column: 29, scope: !115)
!123 = !DILocalVariable(name: "count", arg: 3, scope: !115, file: !116, line: 12, type: !33)
!124 = !DILocation(line: 12, column: 39, scope: !115)
!125 = !DILocalVariable(name: "a", scope: !115, file: !116, line: 13, type: !126)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!127 = !DILocation(line: 13, column: 9, scope: !115)
!128 = !DILocation(line: 13, column: 13, scope: !115)
!129 = !DILocation(line: 14, column: 3, scope: !115)
!130 = !DILocation(line: 14, column: 15, scope: !115)
!131 = !DILocation(line: 14, column: 18, scope: !115)
!132 = !DILocation(line: 15, column: 12, scope: !115)
!133 = !DILocation(line: 15, column: 7, scope: !115)
!134 = !DILocation(line: 15, column: 10, scope: !115)
!135 = distinct !{!135, !129, !132, !136}
!136 = !{!"llvm.loop.mustprogress"}
!137 = !DILocation(line: 16, column: 10, scope: !115)
!138 = !DILocation(line: 16, column: 3, scope: !115)

; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/237_xmlschemas.c_28533_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/237_xmlschemas.c_28533_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaSAXPlugStruct = type { i32, %struct.anon, i8*, i8*, i8* }
%struct.anon = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.1 = private unnamed_addr constant [110 x i8] c"se_runs/sa_llm/libxml2_62911_vul/237_xmlschemas.c_28533_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlSchemaFormatQName = private unnamed_addr constant [65 x i8] c"xmlSchemaSAXPlugPtr xmlSchemaFormatQName(void *, void *, void *)\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"ctxt\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"sax\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"old_sax\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !29 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !36, metadata !DIExpression()), !dbg !37
  %3 = load i64, i64* %2, align 8, !dbg !38
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !39
  ret i8* %4, !dbg !40
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlSchemaSAXPlugStruct* @xmlSchemaFormatQName(i8* noundef %0, i8* noundef %1, i8* noundef %2) #0 !dbg !41 {
  %4 = alloca %struct._xmlSchemaSAXPlugStruct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._xmlSchemaSAXPlugStruct*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !44, metadata !DIExpression()), !dbg !45
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !46, metadata !DIExpression()), !dbg !47
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !48, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaSAXPlugStruct** %8, metadata !50, metadata !DIExpression()), !dbg !51
  %9 = call i8* @xmlMalloc(i64 noundef 32), !dbg !52
  %10 = bitcast i8* %9 to %struct._xmlSchemaSAXPlugStruct*, !dbg !53
  store %struct._xmlSchemaSAXPlugStruct* %10, %struct._xmlSchemaSAXPlugStruct** %8, align 8, !dbg !54
  %11 = load %struct._xmlSchemaSAXPlugStruct*, %struct._xmlSchemaSAXPlugStruct** %8, align 8, !dbg !55
  %12 = icmp eq %struct._xmlSchemaSAXPlugStruct* %11, null, !dbg !57
  br i1 %12, label %13, label %14, !dbg !58

13:                                               ; preds = %3
  store %struct._xmlSchemaSAXPlugStruct* null, %struct._xmlSchemaSAXPlugStruct** %4, align 8, !dbg !59
  br label %34, !dbg !59

14:                                               ; preds = %3
  %15 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([110 x i8], [110 x i8]* @.str.1, i64 0, i64 0), i32 noundef 45, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.xmlSchemaFormatQName, i64 0, i64 0)), !dbg !61
  %16 = load %struct._xmlSchemaSAXPlugStruct*, %struct._xmlSchemaSAXPlugStruct** %8, align 8, !dbg !62
  %17 = bitcast %struct._xmlSchemaSAXPlugStruct* %16 to i8*, !dbg !63
  %18 = call i8* @memset(i8* %17, i32 0, i64 32), !dbg !63
  %19 = load %struct._xmlSchemaSAXPlugStruct*, %struct._xmlSchemaSAXPlugStruct** %8, align 8, !dbg !64
  %20 = getelementptr inbounds %struct._xmlSchemaSAXPlugStruct, %struct._xmlSchemaSAXPlugStruct* %19, i32 0, i32 0, !dbg !65
  store i32 -559038737, i32* %20, align 8, !dbg !66
  %21 = load %struct._xmlSchemaSAXPlugStruct*, %struct._xmlSchemaSAXPlugStruct** %8, align 8, !dbg !67
  %22 = getelementptr inbounds %struct._xmlSchemaSAXPlugStruct, %struct._xmlSchemaSAXPlugStruct* %21, i32 0, i32 1, !dbg !68
  %23 = getelementptr inbounds %struct.anon, %struct.anon* %22, i32 0, i32 0, !dbg !69
  store i32 -889275714, i32* %23, align 4, !dbg !70
  %24 = load i8*, i8** %5, align 8, !dbg !71
  %25 = load %struct._xmlSchemaSAXPlugStruct*, %struct._xmlSchemaSAXPlugStruct** %8, align 8, !dbg !72
  %26 = getelementptr inbounds %struct._xmlSchemaSAXPlugStruct, %struct._xmlSchemaSAXPlugStruct* %25, i32 0, i32 2, !dbg !73
  store i8* %24, i8** %26, align 8, !dbg !74
  %27 = load i8*, i8** %6, align 8, !dbg !75
  %28 = load %struct._xmlSchemaSAXPlugStruct*, %struct._xmlSchemaSAXPlugStruct** %8, align 8, !dbg !76
  %29 = getelementptr inbounds %struct._xmlSchemaSAXPlugStruct, %struct._xmlSchemaSAXPlugStruct* %28, i32 0, i32 3, !dbg !77
  store i8* %27, i8** %29, align 8, !dbg !78
  %30 = load i8*, i8** %7, align 8, !dbg !79
  %31 = load %struct._xmlSchemaSAXPlugStruct*, %struct._xmlSchemaSAXPlugStruct** %8, align 8, !dbg !80
  %32 = getelementptr inbounds %struct._xmlSchemaSAXPlugStruct, %struct._xmlSchemaSAXPlugStruct* %31, i32 0, i32 4, !dbg !81
  store i8* %30, i8** %32, align 8, !dbg !82
  %33 = load %struct._xmlSchemaSAXPlugStruct*, %struct._xmlSchemaSAXPlugStruct** %8, align 8, !dbg !83
  store %struct._xmlSchemaSAXPlugStruct* %33, %struct._xmlSchemaSAXPlugStruct** %4, align 8, !dbg !84
  br label %34, !dbg !84

34:                                               ; preds = %14, %13
  %35 = load %struct._xmlSchemaSAXPlugStruct*, %struct._xmlSchemaSAXPlugStruct** %4, align 8, !dbg !85
  ret %struct._xmlSchemaSAXPlugStruct* %35, !dbg !85
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !86 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._xmlSchemaSAXPlugStruct*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !89, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.declare(metadata i8** %3, metadata !91, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.declare(metadata i8** %4, metadata !93, metadata !DIExpression()), !dbg !94
  %6 = bitcast i8** %2 to i8*, !dbg !95
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !dbg !96
  %7 = bitcast i8** %3 to i8*, !dbg !97
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)), !dbg !98
  %8 = bitcast i8** %4 to i8*, !dbg !99
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)), !dbg !100
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaSAXPlugStruct** %5, metadata !101, metadata !DIExpression()), !dbg !102
  %9 = load i8*, i8** %2, align 8, !dbg !103
  %10 = load i8*, i8** %3, align 8, !dbg !104
  %11 = load i8*, i8** %4, align 8, !dbg !105
  %12 = call %struct._xmlSchemaSAXPlugStruct* @xmlSchemaFormatQName(i8* noundef %9, i8* noundef %10, i8* noundef %11), !dbg !106
  store %struct._xmlSchemaSAXPlugStruct* %12, %struct._xmlSchemaSAXPlugStruct** %5, align 8, !dbg !102
  %13 = load %struct._xmlSchemaSAXPlugStruct*, %struct._xmlSchemaSAXPlugStruct** %5, align 8, !dbg !107
  %14 = icmp ne %struct._xmlSchemaSAXPlugStruct* %13, null, !dbg !109
  br i1 %14, label %15, label %18, !dbg !110

15:                                               ; preds = %0
  %16 = load %struct._xmlSchemaSAXPlugStruct*, %struct._xmlSchemaSAXPlugStruct** %5, align 8, !dbg !111
  %17 = bitcast %struct._xmlSchemaSAXPlugStruct* %16 to i8*, !dbg !111
  call void @free(i8* noundef %17) #7, !dbg !113
  br label %18, !dbg !114

18:                                               ; preds = %15, %0
  ret i32 0, !dbg !115
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

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
  call void @llvm.dbg.declare(metadata i8** %7, metadata !126, metadata !DIExpression()), !dbg !129
  %8 = load i8*, i8** %4, align 8, !dbg !130
  store i8* %8, i8** %7, align 8, !dbg !129
  br label %9, !dbg !131

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !132
  %11 = add i64 %10, -1, !dbg !132
  store i64 %11, i64* %6, align 8, !dbg !132
  %12 = icmp ugt i64 %10, 0, !dbg !133
  br i1 %12, label %13, label %18, !dbg !131

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !134
  %15 = trunc i32 %14 to i8, !dbg !134
  %16 = load i8*, i8** %7, align 8, !dbg !135
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !135
  store i8* %17, i8** %7, align 8, !dbg !135
  store i8 %15, i8* %16, align 1, !dbg !136
  br label %9, !dbg !131, !llvm.loop !137

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !139
  ret i8* %19, !dbg !140
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28, !28}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/237_xmlschemas.c_28533_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "4a5c0daf5539bcc69ca59d13b3c0a733")
!2 = !{!3, !16}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaSAXPlugPtr", file: !1, line: 20, baseType: !4)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaSAXPlugStruct", file: !1, line: 18, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaSAXPlugStruct", file: !1, line: 10, size: 256, elements: !7)
!7 = !{!8, !10, !15, !17, !18}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !6, file: !1, line: 11, baseType: !9, size: 32)
!9 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "schemas_sax", scope: !6, file: !1, line: 14, baseType: !11, size: 32, offset: 32)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6, file: !1, line: 12, size: 32, elements: !12)
!12 = !{!13}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !11, file: !1, line: 13, baseType: !14, size: 32)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "ctxt", scope: !6, file: !1, line: 15, baseType: !16, size: 64, offset: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "user_sax_ptr", scope: !6, file: !1, line: 16, baseType: !16, size: 64, offset: 128)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "user_sax", scope: !6, file: !1, line: 17, baseType: !16, size: 64, offset: 192)
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
!29 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 23, type: !30, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!30 = !DISubroutineType(types: !31)
!31 = !{!16, !32}
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !33, line: 46, baseType: !34)
!33 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!34 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!35 = !{}
!36 = !DILocalVariable(name: "size", arg: 1, scope: !29, file: !1, line: 23, type: !32)
!37 = !DILocation(line: 23, column: 24, scope: !29)
!38 = !DILocation(line: 24, column: 19, scope: !29)
!39 = !DILocation(line: 24, column: 12, scope: !29)
!40 = !DILocation(line: 24, column: 5, scope: !29)
!41 = distinct !DISubprogram(name: "xmlSchemaFormatQName", scope: !1, file: !1, line: 28, type: !42, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!42 = !DISubroutineType(types: !43)
!43 = !{!3, !16, !16, !16}
!44 = !DILocalVariable(name: "ctxt", arg: 1, scope: !41, file: !1, line: 28, type: !16)
!45 = !DILocation(line: 28, column: 48, scope: !41)
!46 = !DILocalVariable(name: "sax", arg: 2, scope: !41, file: !1, line: 28, type: !16)
!47 = !DILocation(line: 28, column: 60, scope: !41)
!48 = !DILocalVariable(name: "old_sax", arg: 3, scope: !41, file: !1, line: 28, type: !16)
!49 = !DILocation(line: 28, column: 71, scope: !41)
!50 = !DILocalVariable(name: "ret", scope: !41, file: !1, line: 29, type: !3)
!51 = !DILocation(line: 29, column: 25, scope: !41)
!52 = !DILocation(line: 32, column: 33, scope: !41)
!53 = !DILocation(line: 32, column: 11, scope: !41)
!54 = !DILocation(line: 32, column: 9, scope: !41)
!55 = !DILocation(line: 33, column: 9, scope: !56)
!56 = distinct !DILexicalBlock(scope: !41, file: !1, line: 33, column: 9)
!57 = !DILocation(line: 33, column: 13, scope: !56)
!58 = !DILocation(line: 33, column: 9, scope: !41)
!59 = !DILocation(line: 34, column: 9, scope: !60)
!60 = distinct !DILexicalBlock(scope: !56, file: !1, line: 33, column: 22)
!61 = !DILocation(line: 45, column: 5, scope: !41)
!62 = !DILocation(line: 48, column: 12, scope: !41)
!63 = !DILocation(line: 48, column: 5, scope: !41)
!64 = !DILocation(line: 51, column: 5, scope: !41)
!65 = !DILocation(line: 51, column: 10, scope: !41)
!66 = !DILocation(line: 51, column: 16, scope: !41)
!67 = !DILocation(line: 52, column: 5, scope: !41)
!68 = !DILocation(line: 52, column: 10, scope: !41)
!69 = !DILocation(line: 52, column: 22, scope: !41)
!70 = !DILocation(line: 52, column: 34, scope: !41)
!71 = !DILocation(line: 53, column: 17, scope: !41)
!72 = !DILocation(line: 53, column: 5, scope: !41)
!73 = !DILocation(line: 53, column: 10, scope: !41)
!74 = !DILocation(line: 53, column: 15, scope: !41)
!75 = !DILocation(line: 54, column: 25, scope: !41)
!76 = !DILocation(line: 54, column: 5, scope: !41)
!77 = !DILocation(line: 54, column: 10, scope: !41)
!78 = !DILocation(line: 54, column: 23, scope: !41)
!79 = !DILocation(line: 55, column: 21, scope: !41)
!80 = !DILocation(line: 55, column: 5, scope: !41)
!81 = !DILocation(line: 55, column: 10, scope: !41)
!82 = !DILocation(line: 55, column: 19, scope: !41)
!83 = !DILocation(line: 57, column: 12, scope: !41)
!84 = !DILocation(line: 57, column: 5, scope: !41)
!85 = !DILocation(line: 58, column: 1, scope: !41)
!86 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 60, type: !87, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!87 = !DISubroutineType(types: !88)
!88 = !{!14}
!89 = !DILocalVariable(name: "symbolic_ctxt", scope: !86, file: !1, line: 62, type: !16)
!90 = !DILocation(line: 62, column: 11, scope: !86)
!91 = !DILocalVariable(name: "symbolic_sax", scope: !86, file: !1, line: 63, type: !16)
!92 = !DILocation(line: 63, column: 11, scope: !86)
!93 = !DILocalVariable(name: "symbolic_old_sax", scope: !86, file: !1, line: 64, type: !16)
!94 = !DILocation(line: 64, column: 11, scope: !86)
!95 = !DILocation(line: 66, column: 24, scope: !86)
!96 = !DILocation(line: 66, column: 5, scope: !86)
!97 = !DILocation(line: 67, column: 24, scope: !86)
!98 = !DILocation(line: 67, column: 5, scope: !86)
!99 = !DILocation(line: 68, column: 24, scope: !86)
!100 = !DILocation(line: 68, column: 5, scope: !86)
!101 = !DILocalVariable(name: "result", scope: !86, file: !1, line: 71, type: !3)
!102 = !DILocation(line: 71, column: 25, scope: !86)
!103 = !DILocation(line: 71, column: 55, scope: !86)
!104 = !DILocation(line: 71, column: 70, scope: !86)
!105 = !DILocation(line: 71, column: 84, scope: !86)
!106 = !DILocation(line: 71, column: 34, scope: !86)
!107 = !DILocation(line: 74, column: 9, scope: !108)
!108 = distinct !DILexicalBlock(scope: !86, file: !1, line: 74, column: 9)
!109 = !DILocation(line: 74, column: 16, scope: !108)
!110 = !DILocation(line: 74, column: 9, scope: !86)
!111 = !DILocation(line: 75, column: 14, scope: !112)
!112 = distinct !DILexicalBlock(scope: !108, file: !1, line: 74, column: 25)
!113 = !DILocation(line: 75, column: 9, scope: !112)
!114 = !DILocation(line: 76, column: 5, scope: !112)
!115 = !DILocation(line: 78, column: 5, scope: !86)
!116 = distinct !DISubprogram(name: "memset", scope: !117, file: !117, line: 12, type: !118, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !35)
!117 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!118 = !DISubroutineType(types: !119)
!119 = !{!16, !16, !14, !32}
!120 = !DILocalVariable(name: "dst", arg: 1, scope: !116, file: !117, line: 12, type: !16)
!121 = !DILocation(line: 12, column: 20, scope: !116)
!122 = !DILocalVariable(name: "s", arg: 2, scope: !116, file: !117, line: 12, type: !14)
!123 = !DILocation(line: 12, column: 29, scope: !116)
!124 = !DILocalVariable(name: "count", arg: 3, scope: !116, file: !117, line: 12, type: !32)
!125 = !DILocation(line: 12, column: 39, scope: !116)
!126 = !DILocalVariable(name: "a", scope: !116, file: !117, line: 13, type: !127)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!129 = !DILocation(line: 13, column: 9, scope: !116)
!130 = !DILocation(line: 13, column: 13, scope: !116)
!131 = !DILocation(line: 14, column: 3, scope: !116)
!132 = !DILocation(line: 14, column: 15, scope: !116)
!133 = !DILocation(line: 14, column: 18, scope: !116)
!134 = !DILocation(line: 15, column: 12, scope: !116)
!135 = !DILocation(line: 15, column: 7, scope: !116)
!136 = !DILocation(line: 15, column: 10, scope: !116)
!137 = distinct !{!137, !131, !134, !138}
!138 = !{!"llvm.loop.mustprogress"}
!139 = !DILocation(line: 16, column: 10, scope: !116)
!140 = !DILocation(line: 16, column: 3, scope: !116)

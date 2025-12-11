; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/387_xmlschemas.c_5094_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/387_xmlschemas.c_5094_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaParserCtxt = type opaque
%struct._xmlSchemaNotation = type { i32, i8*, i8* }

@.str = private unnamed_addr constant [15 x i8] c"add annotation\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"nsName\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"(result != ((void*)0)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [109 x i8] c"se_runs/sa_llm/libxml2_62911_vul/387_xmlschemas.c_5094_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !25 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !32, metadata !DIExpression()), !dbg !33
  %3 = load i64, i64* %2, align 8, !dbg !34
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !35
  ret i8* %4, !dbg !36
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchemaPErrMemory(%struct._xmlSchemaParserCtxt* noundef %0, i8* noundef %1, i8* noundef %2) #0 !dbg !37 {
  %4 = alloca %struct._xmlSchemaParserCtxt*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._xmlSchemaParserCtxt* %0, %struct._xmlSchemaParserCtxt** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaParserCtxt** %4, metadata !45, metadata !DIExpression()), !dbg !46
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !47, metadata !DIExpression()), !dbg !48
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !49, metadata !DIExpression()), !dbg !50
  ret void, !dbg !51
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlSchemaNotation* @xmlSchemaAddNotation(%struct._xmlSchemaParserCtxt* noundef %0, i8* noundef %1, i8* noundef %2) #0 !dbg !52 {
  %4 = alloca %struct._xmlSchemaNotation*, align 8
  %5 = alloca %struct._xmlSchemaParserCtxt*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._xmlSchemaNotation*, align 8
  store %struct._xmlSchemaParserCtxt* %0, %struct._xmlSchemaParserCtxt** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaParserCtxt** %5, metadata !55, metadata !DIExpression()), !dbg !56
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !57, metadata !DIExpression()), !dbg !58
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !59, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaNotation** %8, metadata !61, metadata !DIExpression()), !dbg !62
  %9 = call i8* @xmlMalloc(i64 noundef 24), !dbg !63
  %10 = bitcast i8* %9 to %struct._xmlSchemaNotation*, !dbg !64
  store %struct._xmlSchemaNotation* %10, %struct._xmlSchemaNotation** %8, align 8, !dbg !65
  %11 = load %struct._xmlSchemaNotation*, %struct._xmlSchemaNotation** %8, align 8, !dbg !66
  %12 = icmp eq %struct._xmlSchemaNotation* %11, null, !dbg !68
  br i1 %12, label %13, label %15, !dbg !69

13:                                               ; preds = %3
  %14 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %5, align 8, !dbg !70
  call void @xmlSchemaPErrMemory(%struct._xmlSchemaParserCtxt* noundef %14, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* noundef null), !dbg !72
  store %struct._xmlSchemaNotation* null, %struct._xmlSchemaNotation** %4, align 8, !dbg !73
  br label %28, !dbg !73

15:                                               ; preds = %3
  %16 = load %struct._xmlSchemaNotation*, %struct._xmlSchemaNotation** %8, align 8, !dbg !74
  %17 = bitcast %struct._xmlSchemaNotation* %16 to i8*, !dbg !75
  %18 = call i8* @memset(i8* %17, i32 0, i64 24), !dbg !75
  %19 = load %struct._xmlSchemaNotation*, %struct._xmlSchemaNotation** %8, align 8, !dbg !76
  %20 = getelementptr inbounds %struct._xmlSchemaNotation, %struct._xmlSchemaNotation* %19, i32 0, i32 0, !dbg !77
  store i32 1, i32* %20, align 8, !dbg !78
  %21 = load i8*, i8** %6, align 8, !dbg !79
  %22 = load %struct._xmlSchemaNotation*, %struct._xmlSchemaNotation** %8, align 8, !dbg !80
  %23 = getelementptr inbounds %struct._xmlSchemaNotation, %struct._xmlSchemaNotation* %22, i32 0, i32 1, !dbg !81
  store i8* %21, i8** %23, align 8, !dbg !82
  %24 = load i8*, i8** %7, align 8, !dbg !83
  %25 = load %struct._xmlSchemaNotation*, %struct._xmlSchemaNotation** %8, align 8, !dbg !84
  %26 = getelementptr inbounds %struct._xmlSchemaNotation, %struct._xmlSchemaNotation* %25, i32 0, i32 2, !dbg !85
  store i8* %24, i8** %26, align 8, !dbg !86
  %27 = load %struct._xmlSchemaNotation*, %struct._xmlSchemaNotation** %8, align 8, !dbg !87
  store %struct._xmlSchemaNotation* %27, %struct._xmlSchemaNotation** %4, align 8, !dbg !88
  br label %28, !dbg !88

28:                                               ; preds = %15, %13
  %29 = load %struct._xmlSchemaNotation*, %struct._xmlSchemaNotation** %4, align 8, !dbg !89
  ret %struct._xmlSchemaNotation* %29, !dbg !89
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !90 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlSchemaParserCtxt*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._xmlSchemaNotation*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaParserCtxt** %2, metadata !93, metadata !DIExpression()), !dbg !94
  store %struct._xmlSchemaParserCtxt* null, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !94
  call void @llvm.dbg.declare(metadata i8** %3, metadata !95, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.declare(metadata i8** %4, metadata !97, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaNotation** %5, metadata !99, metadata !DIExpression()), !dbg !100
  %6 = call noalias i8* @malloc(i64 noundef 256) #7, !dbg !101
  store i8* %6, i8** %3, align 8, !dbg !102
  %7 = call noalias i8* @malloc(i64 noundef 256) #7, !dbg !103
  store i8* %7, i8** %4, align 8, !dbg !104
  %8 = load i8*, i8** %3, align 8, !dbg !105
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 256, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !106
  %9 = load i8*, i8** %4, align 8, !dbg !107
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 256, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)), !dbg !108
  %10 = load i8*, i8** %3, align 8, !dbg !109
  %11 = getelementptr inbounds i8, i8* %10, i64 255, !dbg !109
  %12 = load i8, i8* %11, align 1, !dbg !109
  %13 = sext i8 %12 to i32, !dbg !109
  %14 = icmp eq i32 %13, 0, !dbg !110
  %15 = zext i1 %14 to i32, !dbg !110
  %16 = sext i32 %15 to i64, !dbg !109
  call void @klee_assume(i64 noundef %16), !dbg !111
  %17 = load i8*, i8** %4, align 8, !dbg !112
  %18 = getelementptr inbounds i8, i8* %17, i64 255, !dbg !112
  %19 = load i8, i8* %18, align 1, !dbg !112
  %20 = sext i8 %19 to i32, !dbg !112
  %21 = icmp eq i32 %20, 0, !dbg !113
  %22 = zext i1 %21 to i32, !dbg !113
  %23 = sext i32 %22 to i64, !dbg !112
  call void @klee_assume(i64 noundef %23), !dbg !114
  %24 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !115
  %25 = load i8*, i8** %3, align 8, !dbg !116
  %26 = load i8*, i8** %4, align 8, !dbg !117
  %27 = call %struct._xmlSchemaNotation* @xmlSchemaAddNotation(%struct._xmlSchemaParserCtxt* noundef %24, i8* noundef %25, i8* noundef %26), !dbg !118
  store %struct._xmlSchemaNotation* %27, %struct._xmlSchemaNotation** %5, align 8, !dbg !119
  %28 = load %struct._xmlSchemaNotation*, %struct._xmlSchemaNotation** %5, align 8, !dbg !120
  %29 = icmp ne %struct._xmlSchemaNotation* %28, null, !dbg !122
  br i1 %29, label %30, label %41, !dbg !123

30:                                               ; preds = %0
  %31 = load %struct._xmlSchemaNotation*, %struct._xmlSchemaNotation** %5, align 8, !dbg !124
  %32 = icmp ne %struct._xmlSchemaNotation* %31, null, !dbg !124
  br i1 %32, label %33, label %35, !dbg !124

33:                                               ; preds = %30
  br i1 true, label %34, label %35, !dbg !124

34:                                               ; preds = %33
  br label %37, !dbg !124

35:                                               ; preds = %33, %30
  %36 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.5, i64 0, i64 0), i32 noundef 88, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !124
  br label %37, !dbg !124

37:                                               ; preds = %35, %34
  %38 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.5, i64 0, i64 0), i32 noundef 91, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !126
  %39 = load %struct._xmlSchemaNotation*, %struct._xmlSchemaNotation** %5, align 8, !dbg !127
  %40 = bitcast %struct._xmlSchemaNotation* %39 to i8*, !dbg !127
  call void @free(i8* noundef %40) #7, !dbg !128
  br label %41, !dbg !129

41:                                               ; preds = %37, %0
  %42 = load i8*, i8** %3, align 8, !dbg !130
  call void @free(i8* noundef %42) #7, !dbg !131
  %43 = load i8*, i8** %4, align 8, !dbg !132
  call void @free(i8* noundef %43) #7, !dbg !133
  ret i32 0, !dbg !134
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !135 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !139, metadata !DIExpression()), !dbg !140
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !141, metadata !DIExpression()), !dbg !142
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !143, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.declare(metadata i8** %7, metadata !145, metadata !DIExpression()), !dbg !146
  %8 = load i8*, i8** %4, align 8, !dbg !147
  store i8* %8, i8** %7, align 8, !dbg !146
  br label %9, !dbg !148

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !149
  %11 = add i64 %10, -1, !dbg !149
  store i64 %11, i64* %6, align 8, !dbg !149
  %12 = icmp ugt i64 %10, 0, !dbg !150
  br i1 %12, label %13, label %18, !dbg !148

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !151
  %15 = trunc i32 %14 to i8, !dbg !151
  %16 = load i8*, i8** %7, align 8, !dbg !152
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !152
  store i8* %17, i8** %7, align 8, !dbg !152
  store i8 %15, i8* %16, align 1, !dbg !153
  br label %9, !dbg !148, !llvm.loop !154

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !156
  ret i8* %19, !dbg !157
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24, !24}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/387_xmlschemas.c_5094_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "4166fb1d190c7064b0f5fe5659b83401")
!2 = !{!3, !14, !11}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaNotationPtr", file: !1, line: 11, baseType: !4)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaNotation", file: !1, line: 10, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaNotation", file: !1, line: 26, size: 192, elements: !7)
!7 = !{!8, !10, !13}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6, file: !1, line: 27, baseType: !9, size: 32)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6, file: !1, line: 28, baseType: !11, size: 64, offset: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "targetNamespace", scope: !6, file: !1, line: 29, baseType: !11, size: 64, offset: 128)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = distinct !DICompileUnit(language: DW_LANG_C99, file: !16, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!16 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!17 = !{i32 7, !"Dwarf Version", i32 5}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 4}
!20 = !{i32 7, !"PIC Level", i32 2}
!21 = !{i32 7, !"PIE Level", i32 2}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"Ubuntu clang version 14.0.6"}
!25 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 16, type: !26, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!26 = !DISubroutineType(types: !27)
!27 = !{!14, !28}
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !29, line: 46, baseType: !30)
!29 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!30 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!31 = !{}
!32 = !DILocalVariable(name: "size", arg: 1, scope: !25, file: !1, line: 16, type: !28)
!33 = !DILocation(line: 16, column: 24, scope: !25)
!34 = !DILocation(line: 17, column: 19, scope: !25)
!35 = !DILocation(line: 17, column: 12, scope: !25)
!36 = !DILocation(line: 17, column: 5, scope: !25)
!37 = distinct !DISubprogram(name: "xmlSchemaPErrMemory", scope: !1, file: !1, line: 21, type: !38, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!38 = !DISubroutineType(types: !39)
!39 = !{null, !40, !43, !43}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaParserCtxt", file: !1, line: 13, baseType: !42)
!42 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaParserCtxt", file: !1, line: 13, flags: DIFlagFwdDecl)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!45 = !DILocalVariable(name: "ctxt", arg: 1, scope: !37, file: !1, line: 21, type: !40)
!46 = !DILocation(line: 21, column: 47, scope: !37)
!47 = !DILocalVariable(name: "msg", arg: 2, scope: !37, file: !1, line: 21, type: !43)
!48 = !DILocation(line: 21, column: 65, scope: !37)
!49 = !DILocalVariable(name: "extra", arg: 3, scope: !37, file: !1, line: 21, type: !43)
!50 = !DILocation(line: 21, column: 82, scope: !37)
!51 = !DILocation(line: 23, column: 1, scope: !37)
!52 = distinct !DISubprogram(name: "xmlSchemaAddNotation", scope: !1, file: !1, line: 34, type: !53, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!53 = !DISubroutineType(types: !54)
!54 = !{!3, !40, !11, !11}
!55 = !DILocalVariable(name: "ctxt", arg: 1, scope: !52, file: !1, line: 34, type: !40)
!56 = !DILocation(line: 34, column: 64, scope: !52)
!57 = !DILocalVariable(name: "name", arg: 2, scope: !52, file: !1, line: 35, type: !11)
!58 = !DILocation(line: 35, column: 49, scope: !52)
!59 = !DILocalVariable(name: "nsName", arg: 3, scope: !52, file: !1, line: 36, type: !11)
!60 = !DILocation(line: 36, column: 49, scope: !52)
!61 = !DILocalVariable(name: "ret", scope: !52, file: !1, line: 37, type: !3)
!62 = !DILocation(line: 37, column: 26, scope: !52)
!63 = !DILocation(line: 40, column: 34, scope: !52)
!64 = !DILocation(line: 40, column: 11, scope: !52)
!65 = !DILocation(line: 40, column: 9, scope: !52)
!66 = !DILocation(line: 41, column: 9, scope: !67)
!67 = distinct !DILexicalBlock(scope: !52, file: !1, line: 41, column: 9)
!68 = !DILocation(line: 41, column: 13, scope: !67)
!69 = !DILocation(line: 41, column: 9, scope: !52)
!70 = !DILocation(line: 42, column: 29, scope: !71)
!71 = distinct !DILexicalBlock(scope: !67, file: !1, line: 41, column: 22)
!72 = !DILocation(line: 42, column: 9, scope: !71)
!73 = !DILocation(line: 43, column: 9, scope: !71)
!74 = !DILocation(line: 47, column: 12, scope: !52)
!75 = !DILocation(line: 47, column: 5, scope: !52)
!76 = !DILocation(line: 49, column: 5, scope: !52)
!77 = !DILocation(line: 49, column: 10, scope: !52)
!78 = !DILocation(line: 49, column: 15, scope: !52)
!79 = !DILocation(line: 50, column: 17, scope: !52)
!80 = !DILocation(line: 50, column: 5, scope: !52)
!81 = !DILocation(line: 50, column: 10, scope: !52)
!82 = !DILocation(line: 50, column: 15, scope: !52)
!83 = !DILocation(line: 51, column: 28, scope: !52)
!84 = !DILocation(line: 51, column: 5, scope: !52)
!85 = !DILocation(line: 51, column: 10, scope: !52)
!86 = !DILocation(line: 51, column: 26, scope: !52)
!87 = !DILocation(line: 53, column: 12, scope: !52)
!88 = !DILocation(line: 53, column: 5, scope: !52)
!89 = !DILocation(line: 54, column: 1, scope: !52)
!90 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 57, type: !91, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!91 = !DISubroutineType(types: !92)
!92 = !{!9}
!93 = !DILocalVariable(name: "ctxt", scope: !90, file: !1, line: 58, type: !40)
!94 = !DILocation(line: 58, column: 26, scope: !90)
!95 = !DILocalVariable(name: "name", scope: !90, file: !1, line: 59, type: !11)
!96 = !DILocation(line: 59, column: 11, scope: !90)
!97 = !DILocalVariable(name: "nsName", scope: !90, file: !1, line: 60, type: !11)
!98 = !DILocation(line: 60, column: 11, scope: !90)
!99 = !DILocalVariable(name: "result", scope: !90, file: !1, line: 61, type: !3)
!100 = !DILocation(line: 61, column: 26, scope: !90)
!101 = !DILocation(line: 64, column: 19, scope: !90)
!102 = !DILocation(line: 64, column: 10, scope: !90)
!103 = !DILocation(line: 65, column: 21, scope: !90)
!104 = !DILocation(line: 65, column: 12, scope: !90)
!105 = !DILocation(line: 67, column: 24, scope: !90)
!106 = !DILocation(line: 67, column: 5, scope: !90)
!107 = !DILocation(line: 68, column: 24, scope: !90)
!108 = !DILocation(line: 68, column: 5, scope: !90)
!109 = !DILocation(line: 71, column: 17, scope: !90)
!110 = !DILocation(line: 71, column: 27, scope: !90)
!111 = !DILocation(line: 71, column: 5, scope: !90)
!112 = !DILocation(line: 72, column: 17, scope: !90)
!113 = !DILocation(line: 72, column: 29, scope: !90)
!114 = !DILocation(line: 72, column: 5, scope: !90)
!115 = !DILocation(line: 75, column: 35, scope: !90)
!116 = !DILocation(line: 75, column: 41, scope: !90)
!117 = !DILocation(line: 75, column: 47, scope: !90)
!118 = !DILocation(line: 75, column: 14, scope: !90)
!119 = !DILocation(line: 75, column: 12, scope: !90)
!120 = !DILocation(line: 83, column: 9, scope: !121)
!121 = distinct !DILexicalBlock(scope: !90, file: !1, line: 83, column: 9)
!122 = !DILocation(line: 83, column: 16, scope: !121)
!123 = !DILocation(line: 83, column: 9, scope: !90)
!124 = !DILocation(line: 88, column: 9, scope: !125)
!125 = distinct !DILexicalBlock(scope: !121, file: !1, line: 83, column: 25)
!126 = !DILocation(line: 91, column: 9, scope: !125)
!127 = !DILocation(line: 94, column: 14, scope: !125)
!128 = !DILocation(line: 94, column: 9, scope: !125)
!129 = !DILocation(line: 95, column: 5, scope: !125)
!130 = !DILocation(line: 97, column: 10, scope: !90)
!131 = !DILocation(line: 97, column: 5, scope: !90)
!132 = !DILocation(line: 98, column: 10, scope: !90)
!133 = !DILocation(line: 98, column: 5, scope: !90)
!134 = !DILocation(line: 100, column: 5, scope: !90)
!135 = distinct !DISubprogram(name: "memset", scope: !136, file: !136, line: 12, type: !137, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !31)
!136 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!137 = !DISubroutineType(types: !138)
!138 = !{!14, !14, !9, !28}
!139 = !DILocalVariable(name: "dst", arg: 1, scope: !135, file: !136, line: 12, type: !14)
!140 = !DILocation(line: 12, column: 20, scope: !135)
!141 = !DILocalVariable(name: "s", arg: 2, scope: !135, file: !136, line: 12, type: !9)
!142 = !DILocation(line: 12, column: 29, scope: !135)
!143 = !DILocalVariable(name: "count", arg: 3, scope: !135, file: !136, line: 12, type: !28)
!144 = !DILocation(line: 12, column: 39, scope: !135)
!145 = !DILocalVariable(name: "a", scope: !135, file: !136, line: 13, type: !11)
!146 = !DILocation(line: 13, column: 9, scope: !135)
!147 = !DILocation(line: 13, column: 13, scope: !135)
!148 = !DILocation(line: 14, column: 3, scope: !135)
!149 = !DILocation(line: 14, column: 15, scope: !135)
!150 = !DILocation(line: 14, column: 18, scope: !135)
!151 = !DILocation(line: 15, column: 12, scope: !135)
!152 = !DILocation(line: 15, column: 7, scope: !135)
!153 = !DILocation(line: 15, column: 10, scope: !135)
!154 = distinct !{!154, !148, !151, !155}
!155 = !{!"llvm.loop.mustprogress"}
!156 = !DILocation(line: 16, column: 10, scope: !135)
!157 = !DILocation(line: 16, column: 3, scope: !135)

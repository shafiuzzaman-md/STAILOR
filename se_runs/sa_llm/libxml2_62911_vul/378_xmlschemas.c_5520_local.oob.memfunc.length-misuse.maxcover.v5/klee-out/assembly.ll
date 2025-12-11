; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/378_xmlschemas.c_5520_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/378_xmlschemas.c_5520_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaParserCtxt = type { i32 }
%struct._xmlSchemaModelGroupDef = type { i8*, i32, i8*, i8* }

@.str = private unnamed_addr constant [13 x i8] c"adding group\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ctxt\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"nsName\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"node\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [109 x i8] c"se_runs/sa_llm/libxml2_62911_vul/378_xmlschemas.c_5520_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchemaPErrMemory(%struct._xmlSchemaParserCtxt* noundef %0, i8* noundef %1, i8* noundef %2) #0 !dbg !25 {
  %4 = alloca %struct._xmlSchemaParserCtxt*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._xmlSchemaParserCtxt* %0, %struct._xmlSchemaParserCtxt** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaParserCtxt** %4, metadata !36, metadata !DIExpression()), !dbg !37
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !38, metadata !DIExpression()), !dbg !39
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !40, metadata !DIExpression()), !dbg !41
  ret void, !dbg !42
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !43 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !49, metadata !DIExpression()), !dbg !50
  %3 = load i64, i64* %2, align 8, !dbg !51
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !52
  ret i8* %4, !dbg !53
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlSchemaModelGroupDef* @xmlSchemaAddModelGroupDef(%struct._xmlSchemaParserCtxt* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #0 !dbg !54 {
  %5 = alloca %struct._xmlSchemaModelGroupDef*, align 8
  %6 = alloca %struct._xmlSchemaParserCtxt*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct._xmlSchemaModelGroupDef*, align 8
  store %struct._xmlSchemaParserCtxt* %0, %struct._xmlSchemaParserCtxt** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaParserCtxt** %6, metadata !57, metadata !DIExpression()), !dbg !58
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !59, metadata !DIExpression()), !dbg !60
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !61, metadata !DIExpression()), !dbg !62
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !63, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaModelGroupDef** %10, metadata !65, metadata !DIExpression()), !dbg !66
  %11 = call i8* @xmlMalloc(i64 noundef 32), !dbg !67
  %12 = bitcast i8* %11 to %struct._xmlSchemaModelGroupDef*, !dbg !68
  store %struct._xmlSchemaModelGroupDef* %12, %struct._xmlSchemaModelGroupDef** %10, align 8, !dbg !69
  %13 = load %struct._xmlSchemaModelGroupDef*, %struct._xmlSchemaModelGroupDef** %10, align 8, !dbg !70
  %14 = icmp eq %struct._xmlSchemaModelGroupDef* %13, null, !dbg !72
  br i1 %14, label %15, label %17, !dbg !73

15:                                               ; preds = %4
  %16 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %6, align 8, !dbg !74
  call void @xmlSchemaPErrMemory(%struct._xmlSchemaParserCtxt* noundef %16, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* noundef null), !dbg !76
  store %struct._xmlSchemaModelGroupDef* null, %struct._xmlSchemaModelGroupDef** %5, align 8, !dbg !77
  br label %33, !dbg !77

17:                                               ; preds = %4
  %18 = load %struct._xmlSchemaModelGroupDef*, %struct._xmlSchemaModelGroupDef** %10, align 8, !dbg !78
  %19 = bitcast %struct._xmlSchemaModelGroupDef* %18 to i8*, !dbg !79
  %20 = call i8* @memset(i8* %19, i32 0, i64 32), !dbg !79
  %21 = load i8*, i8** %7, align 8, !dbg !80
  %22 = load %struct._xmlSchemaModelGroupDef*, %struct._xmlSchemaModelGroupDef** %10, align 8, !dbg !81
  %23 = getelementptr inbounds %struct._xmlSchemaModelGroupDef, %struct._xmlSchemaModelGroupDef* %22, i32 0, i32 0, !dbg !82
  store i8* %21, i8** %23, align 8, !dbg !83
  %24 = load %struct._xmlSchemaModelGroupDef*, %struct._xmlSchemaModelGroupDef** %10, align 8, !dbg !84
  %25 = getelementptr inbounds %struct._xmlSchemaModelGroupDef, %struct._xmlSchemaModelGroupDef* %24, i32 0, i32 1, !dbg !85
  store i32 1, i32* %25, align 8, !dbg !86
  %26 = load i8*, i8** %8, align 8, !dbg !87
  %27 = load %struct._xmlSchemaModelGroupDef*, %struct._xmlSchemaModelGroupDef** %10, align 8, !dbg !88
  %28 = getelementptr inbounds %struct._xmlSchemaModelGroupDef, %struct._xmlSchemaModelGroupDef* %27, i32 0, i32 2, !dbg !89
  store i8* %26, i8** %28, align 8, !dbg !90
  %29 = load i8*, i8** %9, align 8, !dbg !91
  %30 = load %struct._xmlSchemaModelGroupDef*, %struct._xmlSchemaModelGroupDef** %10, align 8, !dbg !92
  %31 = getelementptr inbounds %struct._xmlSchemaModelGroupDef, %struct._xmlSchemaModelGroupDef* %30, i32 0, i32 3, !dbg !93
  store i8* %29, i8** %31, align 8, !dbg !94
  %32 = load %struct._xmlSchemaModelGroupDef*, %struct._xmlSchemaModelGroupDef** %10, align 8, !dbg !95
  store %struct._xmlSchemaModelGroupDef* %32, %struct._xmlSchemaModelGroupDef** %5, align 8, !dbg !96
  br label %33, !dbg !96

33:                                               ; preds = %17, %15
  %34 = load %struct._xmlSchemaModelGroupDef*, %struct._xmlSchemaModelGroupDef** %5, align 8, !dbg !97
  ret %struct._xmlSchemaModelGroupDef* %34, !dbg !97
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !98 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlSchemaParserCtxt, align 4
  %3 = alloca %struct._xmlSchemaModelGroupDef*, align 8
  %4 = alloca [32 x i8], align 16
  %5 = alloca [32 x i8], align 16
  %6 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaParserCtxt* %2, metadata !101, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaModelGroupDef** %3, metadata !103, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.declare(metadata [32 x i8]* %4, metadata !105, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata [32 x i8]* %5, metadata !110, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.declare(metadata i8** %6, metadata !112, metadata !DIExpression()), !dbg !113
  %7 = bitcast %struct._xmlSchemaParserCtxt* %2 to i8*, !dbg !114
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !115
  %8 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0, !dbg !116
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 32, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !dbg !117
  %9 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0, !dbg !118
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 32, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)), !dbg !119
  %10 = bitcast i8** %6 to i8*, !dbg !120
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)), !dbg !121
  %11 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 31, !dbg !122
  store i8 0, i8* %11, align 1, !dbg !123
  %12 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 31, !dbg !124
  store i8 0, i8* %12, align 1, !dbg !125
  %13 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0, !dbg !126
  %14 = load i8*, i8** %6, align 8, !dbg !127
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0, !dbg !128
  %16 = call %struct._xmlSchemaModelGroupDef* @xmlSchemaAddModelGroupDef(%struct._xmlSchemaParserCtxt* noundef %2, i8* noundef %13, i8* noundef %14, i8* noundef %15), !dbg !129
  store %struct._xmlSchemaModelGroupDef* %16, %struct._xmlSchemaModelGroupDef** %3, align 8, !dbg !130
  %17 = load %struct._xmlSchemaModelGroupDef*, %struct._xmlSchemaModelGroupDef** %3, align 8, !dbg !131
  %18 = icmp ne %struct._xmlSchemaModelGroupDef* %17, null, !dbg !133
  br i1 %18, label %19, label %23, !dbg !134

19:                                               ; preds = %0
  %20 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.6, i64 0, i64 0), i32 noundef 88, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !135
  %21 = load %struct._xmlSchemaModelGroupDef*, %struct._xmlSchemaModelGroupDef** %3, align 8, !dbg !137
  %22 = bitcast %struct._xmlSchemaModelGroupDef* %21 to i8*, !dbg !137
  call void @free(i8* noundef %22) #7, !dbg !138
  br label %23, !dbg !139

23:                                               ; preds = %19, %0
  ret i32 0, !dbg !140
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !141 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !145, metadata !DIExpression()), !dbg !146
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !147, metadata !DIExpression()), !dbg !148
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !149, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.declare(metadata i8** %7, metadata !151, metadata !DIExpression()), !dbg !152
  %8 = load i8*, i8** %4, align 8, !dbg !153
  store i8* %8, i8** %7, align 8, !dbg !152
  br label %9, !dbg !154

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !155
  %11 = add i64 %10, -1, !dbg !155
  store i64 %11, i64* %6, align 8, !dbg !155
  %12 = icmp ugt i64 %10, 0, !dbg !156
  br i1 %12, label %13, label %18, !dbg !154

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !157
  %15 = trunc i32 %14 to i8, !dbg !157
  %16 = load i8*, i8** %7, align 8, !dbg !158
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !158
  store i8* %17, i8** %7, align 8, !dbg !158
  store i8 %15, i8* %16, align 1, !dbg !159
  br label %9, !dbg !154, !llvm.loop !160

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !162
  ret i8* %19, !dbg !163
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
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/378_xmlschemas.c_5520_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "7448a2ff35739ce782db4da8cefefba0")
!2 = !{!3, !13, !8}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaModelGroupDef", file: !1, line: 10, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaModelGroupDef", file: !1, line: 11, size: 256, elements: !6)
!6 = !{!7, !10, !12, !14}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5, file: !1, line: 12, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5, file: !1, line: 13, baseType: !11, size: 32, offset: 64)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5, file: !1, line: 14, baseType: !13, size: 64, offset: 128)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "targetNamespace", scope: !5, file: !1, line: 15, baseType: !8, size: 64, offset: 192)
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
!25 = distinct !DISubprogram(name: "xmlSchemaPErrMemory", scope: !1, file: !1, line: 25, type: !26, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!26 = !DISubroutineType(types: !27)
!27 = !{null, !28, !33, !13}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaParserCtxt", file: !1, line: 19, baseType: !30)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaParserCtxt", file: !1, line: 20, size: 32, elements: !31)
!31 = !{!32}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !30, file: !1, line: 21, baseType: !11, size: 32)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!35 = !{}
!36 = !DILocalVariable(name: "ctxt", arg: 1, scope: !25, file: !1, line: 25, type: !28)
!37 = !DILocation(line: 25, column: 47, scope: !25)
!38 = !DILocalVariable(name: "msg", arg: 2, scope: !25, file: !1, line: 25, type: !33)
!39 = !DILocation(line: 25, column: 65, scope: !25)
!40 = !DILocalVariable(name: "node", arg: 3, scope: !25, file: !1, line: 25, type: !13)
!41 = !DILocation(line: 25, column: 76, scope: !25)
!42 = !DILocation(line: 27, column: 1, scope: !25)
!43 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 29, type: !44, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!44 = !DISubroutineType(types: !45)
!45 = !{!13, !46}
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !47, line: 46, baseType: !48)
!47 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!48 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!49 = !DILocalVariable(name: "size", arg: 1, scope: !43, file: !1, line: 29, type: !46)
!50 = !DILocation(line: 29, column: 24, scope: !43)
!51 = !DILocation(line: 30, column: 19, scope: !43)
!52 = !DILocation(line: 30, column: 12, scope: !43)
!53 = !DILocation(line: 30, column: 5, scope: !43)
!54 = distinct !DISubprogram(name: "xmlSchemaAddModelGroupDef", scope: !1, file: !1, line: 34, type: !55, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!55 = !DISubroutineType(types: !56)
!56 = !{!3, !28, !33, !13, !33}
!57 = !DILocalVariable(name: "ctxt", arg: 1, scope: !54, file: !1, line: 34, type: !28)
!58 = !DILocation(line: 34, column: 72, scope: !54)
!59 = !DILocalVariable(name: "name", arg: 2, scope: !54, file: !1, line: 35, type: !33)
!60 = !DILocation(line: 35, column: 64, scope: !54)
!61 = !DILocalVariable(name: "node", arg: 3, scope: !54, file: !1, line: 36, type: !13)
!62 = !DILocation(line: 36, column: 58, scope: !54)
!63 = !DILocalVariable(name: "nsName", arg: 4, scope: !54, file: !1, line: 37, type: !33)
!64 = !DILocation(line: 37, column: 64, scope: !54)
!65 = !DILocalVariable(name: "ret", scope: !54, file: !1, line: 38, type: !3)
!66 = !DILocation(line: 38, column: 29, scope: !54)
!67 = !DILocation(line: 40, column: 37, scope: !54)
!68 = !DILocation(line: 40, column: 11, scope: !54)
!69 = !DILocation(line: 40, column: 9, scope: !54)
!70 = !DILocation(line: 41, column: 9, scope: !71)
!71 = distinct !DILexicalBlock(scope: !54, file: !1, line: 41, column: 9)
!72 = !DILocation(line: 41, column: 13, scope: !71)
!73 = !DILocation(line: 41, column: 9, scope: !54)
!74 = !DILocation(line: 42, column: 29, scope: !75)
!75 = distinct !DILexicalBlock(scope: !71, file: !1, line: 41, column: 22)
!76 = !DILocation(line: 42, column: 9, scope: !75)
!77 = !DILocation(line: 43, column: 9, scope: !75)
!78 = !DILocation(line: 47, column: 12, scope: !54)
!79 = !DILocation(line: 47, column: 5, scope: !54)
!80 = !DILocation(line: 49, column: 25, scope: !54)
!81 = !DILocation(line: 49, column: 5, scope: !54)
!82 = !DILocation(line: 49, column: 10, scope: !54)
!83 = !DILocation(line: 49, column: 15, scope: !54)
!84 = !DILocation(line: 50, column: 5, scope: !54)
!85 = !DILocation(line: 50, column: 10, scope: !54)
!86 = !DILocation(line: 50, column: 15, scope: !54)
!87 = !DILocation(line: 51, column: 17, scope: !54)
!88 = !DILocation(line: 51, column: 5, scope: !54)
!89 = !DILocation(line: 51, column: 10, scope: !54)
!90 = !DILocation(line: 51, column: 15, scope: !54)
!91 = !DILocation(line: 52, column: 36, scope: !54)
!92 = !DILocation(line: 52, column: 5, scope: !54)
!93 = !DILocation(line: 52, column: 10, scope: !54)
!94 = !DILocation(line: 52, column: 26, scope: !54)
!95 = !DILocation(line: 54, column: 12, scope: !54)
!96 = !DILocation(line: 54, column: 5, scope: !54)
!97 = !DILocation(line: 55, column: 1, scope: !54)
!98 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 58, type: !99, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!99 = !DISubroutineType(types: !100)
!100 = !{!11}
!101 = !DILocalVariable(name: "ctxt", scope: !98, file: !1, line: 59, type: !29)
!102 = !DILocation(line: 59, column: 25, scope: !98)
!103 = !DILocalVariable(name: "result", scope: !98, file: !1, line: 60, type: !3)
!104 = !DILocation(line: 60, column: 29, scope: !98)
!105 = !DILocalVariable(name: "name", scope: !98, file: !1, line: 63, type: !106)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 256, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 32)
!109 = !DILocation(line: 63, column: 10, scope: !98)
!110 = !DILocalVariable(name: "nsName", scope: !98, file: !1, line: 64, type: !106)
!111 = !DILocation(line: 64, column: 10, scope: !98)
!112 = !DILocalVariable(name: "node", scope: !98, file: !1, line: 65, type: !13)
!113 = !DILocation(line: 65, column: 11, scope: !98)
!114 = !DILocation(line: 67, column: 24, scope: !98)
!115 = !DILocation(line: 67, column: 5, scope: !98)
!116 = !DILocation(line: 68, column: 24, scope: !98)
!117 = !DILocation(line: 68, column: 5, scope: !98)
!118 = !DILocation(line: 69, column: 24, scope: !98)
!119 = !DILocation(line: 69, column: 5, scope: !98)
!120 = !DILocation(line: 70, column: 24, scope: !98)
!121 = !DILocation(line: 70, column: 5, scope: !98)
!122 = !DILocation(line: 73, column: 5, scope: !98)
!123 = !DILocation(line: 73, column: 14, scope: !98)
!124 = !DILocation(line: 74, column: 5, scope: !98)
!125 = !DILocation(line: 74, column: 16, scope: !98)
!126 = !DILocation(line: 77, column: 47, scope: !98)
!127 = !DILocation(line: 77, column: 53, scope: !98)
!128 = !DILocation(line: 77, column: 59, scope: !98)
!129 = !DILocation(line: 77, column: 14, scope: !98)
!130 = !DILocation(line: 77, column: 12, scope: !98)
!131 = !DILocation(line: 80, column: 9, scope: !132)
!132 = distinct !DILexicalBlock(scope: !98, file: !1, line: 80, column: 9)
!133 = !DILocation(line: 80, column: 16, scope: !132)
!134 = !DILocation(line: 80, column: 9, scope: !98)
!135 = !DILocation(line: 88, column: 9, scope: !136)
!136 = distinct !DILexicalBlock(scope: !132, file: !1, line: 80, column: 25)
!137 = !DILocation(line: 91, column: 14, scope: !136)
!138 = !DILocation(line: 91, column: 9, scope: !136)
!139 = !DILocation(line: 92, column: 5, scope: !136)
!140 = !DILocation(line: 94, column: 5, scope: !98)
!141 = distinct !DISubprogram(name: "memset", scope: !142, file: !142, line: 12, type: !143, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !35)
!142 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!143 = !DISubroutineType(types: !144)
!144 = !{!13, !13, !11, !46}
!145 = !DILocalVariable(name: "dst", arg: 1, scope: !141, file: !142, line: 12, type: !13)
!146 = !DILocation(line: 12, column: 20, scope: !141)
!147 = !DILocalVariable(name: "s", arg: 2, scope: !141, file: !142, line: 12, type: !11)
!148 = !DILocation(line: 12, column: 29, scope: !141)
!149 = !DILocalVariable(name: "count", arg: 3, scope: !141, file: !142, line: 12, type: !46)
!150 = !DILocation(line: 12, column: 39, scope: !141)
!151 = !DILocalVariable(name: "a", scope: !141, file: !142, line: 13, type: !8)
!152 = !DILocation(line: 13, column: 9, scope: !141)
!153 = !DILocation(line: 13, column: 13, scope: !141)
!154 = !DILocation(line: 14, column: 3, scope: !141)
!155 = !DILocation(line: 14, column: 15, scope: !141)
!156 = !DILocation(line: 14, column: 18, scope: !141)
!157 = !DILocation(line: 15, column: 12, scope: !141)
!158 = !DILocation(line: 15, column: 7, scope: !141)
!159 = !DILocation(line: 15, column: 10, scope: !141)
!160 = distinct !{!160, !154, !157, !161}
!161 = !{!"llvm.loop.mustprogress"}
!162 = !DILocation(line: 16, column: 10, scope: !141)
!163 = !DILocation(line: 16, column: 3, scope: !141)

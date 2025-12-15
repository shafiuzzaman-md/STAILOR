; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/250_xmlwriter.c_436_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/250_xmlwriter.c_436_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSAXHandler = type { i8*, i8*, i8* }
%struct._xmlParserCtxt = type {}
%struct._xmlTextWriter = type opaque
%struct._xmlDoc = type opaque

@.str = private unnamed_addr constant [47 x i8] c"xmlNewTextWriterTree : invalid document tree!\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [107 x i8] c"se_runs/sa_llm/libxml2_55980_vul/250_xmlwriter.c_436_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlNewTextWriterTree = private unnamed_addr constant [49 x i8] c"xmlTextWriterPtr xmlNewTextWriterTree(xmlDocPtr)\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"xmlNewTextWriterTree : failed to create parser context!\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"doc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlWriterErrMsg(i8* noundef %0, i32 noundef %1, i8* noundef %2) #0 !dbg !28 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !35, metadata !DIExpression()), !dbg !36
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !37, metadata !DIExpression()), !dbg !38
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !39, metadata !DIExpression()), !dbg !40
  ret void, !dbg !41
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSAX2InitDefaultSAXHandler(%struct._xmlSAXHandler* noundef %0, i32 noundef %1) #0 !dbg !42 {
  %3 = alloca %struct._xmlSAXHandler*, align 8
  %4 = alloca i32, align 4
  store %struct._xmlSAXHandler* %0, %struct._xmlSAXHandler** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSAXHandler** %3, metadata !52, metadata !DIExpression()), !dbg !53
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !54, metadata !DIExpression()), !dbg !55
  %5 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !56
  %6 = icmp ne %struct._xmlSAXHandler* %5, null, !dbg !56
  br i1 %6, label %7, label %8, !dbg !58

7:                                                ; preds = %2
  br label %8, !dbg !59

8:                                                ; preds = %7, %2
  ret void, !dbg !61
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlParserCtxt* @xmlCreatePushParserCtxt(%struct._xmlSAXHandler* noundef %0, i8* noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4) #0 !dbg !62 {
  %6 = alloca %struct._xmlSAXHandler*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct._xmlParserCtxt*, align 8
  store %struct._xmlSAXHandler* %0, %struct._xmlSAXHandler** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSAXHandler** %6, metadata !65, metadata !DIExpression()), !dbg !66
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !67, metadata !DIExpression()), !dbg !68
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !69, metadata !DIExpression()), !dbg !70
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !71, metadata !DIExpression()), !dbg !72
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %11, metadata !75, metadata !DIExpression()), !dbg !76
  %12 = call noalias i8* @malloc(i64 noundef 0) #7, !dbg !77
  %13 = bitcast i8* %12 to %struct._xmlParserCtxt*, !dbg !78
  store %struct._xmlParserCtxt* %13, %struct._xmlParserCtxt** %11, align 8, !dbg !79
  %14 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %11, align 8, !dbg !80
  %15 = icmp ne %struct._xmlParserCtxt* %14, null, !dbg !81
  %16 = zext i1 %15 to i32, !dbg !81
  %17 = sext i32 %16 to i64, !dbg !80
  call void @klee_assume(i64 noundef %17), !dbg !82
  %18 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %11, align 8, !dbg !83
  ret %struct._xmlParserCtxt* %18, !dbg !84
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlTextWriterStartDocumentCallback(i8* noundef %0) #0 !dbg !85 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !88, metadata !DIExpression()), !dbg !89
  ret void, !dbg !90
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSAX2StartElement(i8* noundef %0, i8* noundef %1, i8** noundef %2) #0 !dbg !91 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !95, metadata !DIExpression()), !dbg !96
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !97, metadata !DIExpression()), !dbg !98
  store i8** %2, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !99, metadata !DIExpression()), !dbg !100
  ret void, !dbg !101
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSAX2EndElement(i8* noundef %0, i8* noundef %1) #0 !dbg !102 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !105, metadata !DIExpression()), !dbg !106
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !107, metadata !DIExpression()), !dbg !108
  ret void, !dbg !109
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlTextWriter* @xmlNewTextWriterTree(%struct._xmlDoc* noundef %0) #0 !dbg !110 {
  %2 = alloca %struct._xmlTextWriter*, align 8
  %3 = alloca %struct._xmlDoc*, align 8
  %4 = alloca %struct._xmlSAXHandler, align 8
  %5 = alloca %struct._xmlParserCtxt*, align 8
  store %struct._xmlDoc* %0, %struct._xmlDoc** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %3, metadata !117, metadata !DIExpression()), !dbg !118
  call void @llvm.dbg.declare(metadata %struct._xmlSAXHandler* %4, metadata !119, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %5, metadata !121, metadata !DIExpression()), !dbg !122
  %6 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !123
  %7 = icmp eq %struct._xmlDoc* %6, null, !dbg !125
  br i1 %7, label %8, label %9, !dbg !126

8:                                                ; preds = %1
  call void @xmlWriterErrMsg(i8* noundef null, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0)), !dbg !127
  store %struct._xmlTextWriter* null, %struct._xmlTextWriter** %2, align 8, !dbg !129
  br label %23, !dbg !129

9:                                                ; preds = %1
  %10 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.2, i64 0, i64 0), i32 noundef 79, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.xmlNewTextWriterTree, i64 0, i64 0)), !dbg !130
  %11 = bitcast %struct._xmlSAXHandler* %4 to i8*, !dbg !131
  %12 = call i8* @memset(i8* %11, i32 0, i64 24), !dbg !131
  call void @xmlSAX2InitDefaultSAXHandler(%struct._xmlSAXHandler* noundef %4, i32 noundef 1), !dbg !132
  %13 = getelementptr inbounds %struct._xmlSAXHandler, %struct._xmlSAXHandler* %4, i32 0, i32 0, !dbg !133
  store i8* bitcast (void (i8*)* @xmlTextWriterStartDocumentCallback to i8*), i8** %13, align 8, !dbg !134
  %14 = getelementptr inbounds %struct._xmlSAXHandler, %struct._xmlSAXHandler* %4, i32 0, i32 1, !dbg !135
  store i8* bitcast (void (i8*, i8*, i8**)* @xmlSAX2StartElement to i8*), i8** %14, align 8, !dbg !136
  %15 = getelementptr inbounds %struct._xmlSAXHandler, %struct._xmlSAXHandler* %4, i32 0, i32 2, !dbg !137
  store i8* bitcast (void (i8*, i8*)* @xmlSAX2EndElement to i8*), i8** %15, align 8, !dbg !138
  %16 = call %struct._xmlParserCtxt* @xmlCreatePushParserCtxt(%struct._xmlSAXHandler* noundef %4, i8* noundef null, i8* noundef null, i32 noundef 0, i8* noundef null), !dbg !139
  store %struct._xmlParserCtxt* %16, %struct._xmlParserCtxt** %5, align 8, !dbg !140
  %17 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %5, align 8, !dbg !141
  %18 = icmp eq %struct._xmlParserCtxt* %17, null, !dbg !143
  br i1 %18, label %19, label %20, !dbg !144

19:                                               ; preds = %9
  call void @xmlWriterErrMsg(i8* noundef null, i32 noundef 1, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0)), !dbg !145
  store %struct._xmlTextWriter* null, %struct._xmlTextWriter** %2, align 8, !dbg !147
  br label %23, !dbg !147

20:                                               ; preds = %9
  %21 = call noalias i8* @malloc(i64 noundef 1) #7, !dbg !148
  %22 = bitcast i8* %21 to %struct._xmlTextWriter*, !dbg !149
  store %struct._xmlTextWriter* %22, %struct._xmlTextWriter** %2, align 8, !dbg !150
  br label %23, !dbg !150

23:                                               ; preds = %20, %19, %8
  %24 = load %struct._xmlTextWriter*, %struct._xmlTextWriter** %2, align 8, !dbg !151
  ret %struct._xmlTextWriter* %24, !dbg !151
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !152 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlDoc*, align 8
  %3 = alloca %struct._xmlTextWriter*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %2, metadata !155, metadata !DIExpression()), !dbg !156
  %4 = bitcast %struct._xmlDoc** %2 to i8*, !dbg !157
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)), !dbg !158
  %5 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !159
  %6 = icmp ne %struct._xmlDoc* %5, null, !dbg !161
  br i1 %6, label %7, label %12, !dbg !162

7:                                                ; preds = %0
  %8 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !163
  %9 = icmp ne %struct._xmlDoc* %8, null, !dbg !165
  %10 = zext i1 %9 to i32, !dbg !165
  %11 = sext i32 %10 to i64, !dbg !163
  call void @klee_assume(i64 noundef %11), !dbg !166
  br label %12, !dbg !167

12:                                               ; preds = %7, %0
  call void @llvm.dbg.declare(metadata %struct._xmlTextWriter** %3, metadata !168, metadata !DIExpression()), !dbg !169
  %13 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !170
  %14 = call %struct._xmlTextWriter* @xmlNewTextWriterTree(%struct._xmlDoc* noundef %13), !dbg !171
  store %struct._xmlTextWriter* %14, %struct._xmlTextWriter** %3, align 8, !dbg !169
  %15 = load %struct._xmlTextWriter*, %struct._xmlTextWriter** %3, align 8, !dbg !172
  %16 = icmp ne %struct._xmlTextWriter* %15, null, !dbg !174
  br i1 %16, label %17, label %20, !dbg !175

17:                                               ; preds = %12
  %18 = load %struct._xmlTextWriter*, %struct._xmlTextWriter** %3, align 8, !dbg !176
  %19 = bitcast %struct._xmlTextWriter* %18 to i8*, !dbg !176
  call void @free(i8* noundef %19) #7, !dbg !178
  br label %20, !dbg !179

20:                                               ; preds = %17, %12
  ret i32 0, !dbg !180
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !181 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !188, metadata !DIExpression()), !dbg !189
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !190, metadata !DIExpression()), !dbg !191
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !192, metadata !DIExpression()), !dbg !193
  call void @llvm.dbg.declare(metadata i8** %7, metadata !194, metadata !DIExpression()), !dbg !196
  %8 = load i8*, i8** %4, align 8, !dbg !197
  store i8* %8, i8** %7, align 8, !dbg !196
  br label %9, !dbg !198

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !199
  %11 = add i64 %10, -1, !dbg !199
  store i64 %11, i64* %6, align 8, !dbg !199
  %12 = icmp ugt i64 %10, 0, !dbg !200
  br i1 %12, label %13, label %18, !dbg !198

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !201
  %15 = trunc i32 %14 to i8, !dbg !201
  %16 = load i8*, i8** %7, align 8, !dbg !202
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !202
  store i8* %17, i8** %7, align 8, !dbg !202
  store i8 %15, i8* %16, align 1, !dbg !203
  br label %9, !dbg !198, !llvm.loop !204

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !206
  ret i8* %19, !dbg !207
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27, !27}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !7, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/250_xmlwriter.c_436_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "7b798aa9d049f03d9ba1e88695944cdf")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 30, baseType: !4, size: 32, elements: !5)
!4 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!5 = !{!6}
!6 = !DIEnumerator(name: "XML_ERR_INTERNAL_ERROR", value: 1)
!7 = !{!8, !13, !14}
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxtPtr", file: !1, line: 16, baseType: !9)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxt", file: !1, line: 15, baseType: !11)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserCtxt", file: !1, line: 26, elements: !12)
!12 = !{}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlTextWriterPtr", file: !1, line: 13, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlTextWriter", file: !1, line: 12, baseType: !17)
!17 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlTextWriter", file: !1, line: 12, flags: DIFlagFwdDecl)
!18 = distinct !DICompileUnit(language: DW_LANG_C99, file: !19, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!19 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!20 = !{i32 7, !"Dwarf Version", i32 5}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"wchar_size", i32 4}
!23 = !{i32 7, !"PIC Level", i32 2}
!24 = !{i32 7, !"PIE Level", i32 2}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"Ubuntu clang version 14.0.6"}
!28 = distinct !DISubprogram(name: "xmlWriterErrMsg", scope: !1, file: !1, line: 35, type: !29, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !12)
!29 = !DISubroutineType(types: !30)
!30 = !{null, !13, !31, !32}
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!35 = !DILocalVariable(name: "ctx", arg: 1, scope: !28, file: !1, line: 35, type: !13)
!36 = !DILocation(line: 35, column: 28, scope: !28)
!37 = !DILocalVariable(name: "error", arg: 2, scope: !28, file: !1, line: 35, type: !31)
!38 = !DILocation(line: 35, column: 37, scope: !28)
!39 = !DILocalVariable(name: "msg", arg: 3, scope: !28, file: !1, line: 35, type: !32)
!40 = !DILocation(line: 35, column: 56, scope: !28)
!41 = !DILocation(line: 37, column: 1, scope: !28)
!42 = distinct !DISubprogram(name: "xmlSAX2InitDefaultSAXHandler", scope: !1, file: !1, line: 39, type: !43, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !12)
!43 = !DISubroutineType(types: !44)
!44 = !{null, !45, !31}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSAXHandler", file: !1, line: 14, baseType: !47)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSAXHandler", file: !1, line: 19, size: 192, elements: !48)
!48 = !{!49, !50, !51}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "startDocument", scope: !47, file: !1, line: 20, baseType: !13, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "startElement", scope: !47, file: !1, line: 21, baseType: !13, size: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "endElement", scope: !47, file: !1, line: 22, baseType: !13, size: 64, offset: 128)
!52 = !DILocalVariable(name: "hdl", arg: 1, scope: !42, file: !1, line: 39, type: !45)
!53 = !DILocation(line: 39, column: 50, scope: !42)
!54 = !DILocalVariable(name: "entities", arg: 2, scope: !42, file: !1, line: 39, type: !31)
!55 = !DILocation(line: 39, column: 59, scope: !42)
!56 = !DILocation(line: 41, column: 9, scope: !57)
!57 = distinct !DILexicalBlock(scope: !42, file: !1, line: 41, column: 9)
!58 = !DILocation(line: 41, column: 9, scope: !42)
!59 = !DILocation(line: 43, column: 5, scope: !60)
!60 = distinct !DILexicalBlock(scope: !57, file: !1, line: 41, column: 14)
!61 = !DILocation(line: 44, column: 1, scope: !42)
!62 = distinct !DISubprogram(name: "xmlCreatePushParserCtxt", scope: !1, file: !1, line: 46, type: !63, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !12)
!63 = !DISubroutineType(types: !64)
!64 = !{!8, !45, !13, !32, !31, !32}
!65 = !DILocalVariable(name: "hdl", arg: 1, scope: !62, file: !1, line: 46, type: !45)
!66 = !DILocation(line: 46, column: 57, scope: !62)
!67 = !DILocalVariable(name: "user_data", arg: 2, scope: !62, file: !1, line: 46, type: !13)
!68 = !DILocation(line: 46, column: 68, scope: !62)
!69 = !DILocalVariable(name: "chunk", arg: 3, scope: !62, file: !1, line: 47, type: !32)
!70 = !DILocation(line: 47, column: 54, scope: !62)
!71 = !DILocalVariable(name: "size", arg: 4, scope: !62, file: !1, line: 47, type: !31)
!72 = !DILocation(line: 47, column: 65, scope: !62)
!73 = !DILocalVariable(name: "filename", arg: 5, scope: !62, file: !1, line: 47, type: !32)
!74 = !DILocation(line: 47, column: 83, scope: !62)
!75 = !DILocalVariable(name: "ctxt", scope: !62, file: !1, line: 49, type: !8)
!76 = !DILocation(line: 49, column: 22, scope: !62)
!77 = !DILocation(line: 50, column: 30, scope: !62)
!78 = !DILocation(line: 50, column: 12, scope: !62)
!79 = !DILocation(line: 50, column: 10, scope: !62)
!80 = !DILocation(line: 51, column: 17, scope: !62)
!81 = !DILocation(line: 51, column: 22, scope: !62)
!82 = !DILocation(line: 51, column: 5, scope: !62)
!83 = !DILocation(line: 52, column: 12, scope: !62)
!84 = !DILocation(line: 52, column: 5, scope: !62)
!85 = distinct !DISubprogram(name: "xmlTextWriterStartDocumentCallback", scope: !1, file: !1, line: 55, type: !86, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !12)
!86 = !DISubroutineType(types: !87)
!87 = !{null, !13}
!88 = !DILocalVariable(name: "ctx", arg: 1, scope: !85, file: !1, line: 55, type: !13)
!89 = !DILocation(line: 55, column: 47, scope: !85)
!90 = !DILocation(line: 55, column: 53, scope: !85)
!91 = distinct !DISubprogram(name: "xmlSAX2StartElement", scope: !1, file: !1, line: 56, type: !92, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !12)
!92 = !DISubroutineType(types: !93)
!93 = !{null, !13, !32, !94}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!95 = !DILocalVariable(name: "ctx", arg: 1, scope: !91, file: !1, line: 56, type: !13)
!96 = !DILocation(line: 56, column: 32, scope: !91)
!97 = !DILocalVariable(name: "name", arg: 2, scope: !91, file: !1, line: 56, type: !32)
!98 = !DILocation(line: 56, column: 49, scope: !91)
!99 = !DILocalVariable(name: "atts", arg: 3, scope: !91, file: !1, line: 56, type: !94)
!100 = !DILocation(line: 56, column: 68, scope: !91)
!101 = !DILocation(line: 56, column: 75, scope: !91)
!102 = distinct !DISubprogram(name: "xmlSAX2EndElement", scope: !1, file: !1, line: 57, type: !103, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !12)
!103 = !DISubroutineType(types: !104)
!104 = !{null, !13, !32}
!105 = !DILocalVariable(name: "ctx", arg: 1, scope: !102, file: !1, line: 57, type: !13)
!106 = !DILocation(line: 57, column: 30, scope: !102)
!107 = !DILocalVariable(name: "name", arg: 2, scope: !102, file: !1, line: 57, type: !32)
!108 = !DILocation(line: 57, column: 47, scope: !102)
!109 = !DILocation(line: 57, column: 54, scope: !102)
!110 = distinct !DISubprogram(name: "xmlNewTextWriterTree", scope: !1, file: !1, line: 60, type: !111, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !12)
!111 = !DISubroutineType(types: !112)
!112 = !{!14, !113}
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !1, line: 11, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !1, line: 10, baseType: !116)
!116 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !1, line: 10, flags: DIFlagFwdDecl)
!117 = !DILocalVariable(name: "doc", arg: 1, scope: !110, file: !1, line: 60, type: !113)
!118 = !DILocation(line: 60, column: 49, scope: !110)
!119 = !DILocalVariable(name: "saxHandler", scope: !110, file: !1, line: 61, type: !46)
!120 = !DILocation(line: 61, column: 19, scope: !110)
!121 = !DILocalVariable(name: "ctxt", scope: !110, file: !1, line: 62, type: !8)
!122 = !DILocation(line: 62, column: 22, scope: !110)
!123 = !DILocation(line: 64, column: 9, scope: !124)
!124 = distinct !DILexicalBlock(scope: !110, file: !1, line: 64, column: 9)
!125 = !DILocation(line: 64, column: 13, scope: !124)
!126 = !DILocation(line: 64, column: 9, scope: !110)
!127 = !DILocation(line: 65, column: 9, scope: !128)
!128 = distinct !DILexicalBlock(scope: !124, file: !1, line: 64, column: 22)
!129 = !DILocation(line: 67, column: 9, scope: !128)
!130 = !DILocation(line: 79, column: 5, scope: !110)
!131 = !DILocation(line: 81, column: 5, scope: !110)
!132 = !DILocation(line: 82, column: 5, scope: !110)
!133 = !DILocation(line: 83, column: 16, scope: !110)
!134 = !DILocation(line: 83, column: 30, scope: !110)
!135 = !DILocation(line: 84, column: 16, scope: !110)
!136 = !DILocation(line: 84, column: 29, scope: !110)
!137 = !DILocation(line: 85, column: 16, scope: !110)
!138 = !DILocation(line: 85, column: 27, scope: !110)
!139 = !DILocation(line: 87, column: 12, scope: !110)
!140 = !DILocation(line: 87, column: 10, scope: !110)
!141 = !DILocation(line: 88, column: 9, scope: !142)
!142 = distinct !DILexicalBlock(scope: !110, file: !1, line: 88, column: 9)
!143 = !DILocation(line: 88, column: 14, scope: !142)
!144 = !DILocation(line: 88, column: 9, scope: !110)
!145 = !DILocation(line: 89, column: 9, scope: !146)
!146 = distinct !DILexicalBlock(scope: !142, file: !1, line: 88, column: 23)
!147 = !DILocation(line: 91, column: 9, scope: !146)
!148 = !DILocation(line: 95, column: 30, scope: !110)
!149 = !DILocation(line: 95, column: 12, scope: !110)
!150 = !DILocation(line: 95, column: 5, scope: !110)
!151 = !DILocation(line: 96, column: 1, scope: !110)
!152 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 98, type: !153, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !12)
!153 = !DISubroutineType(types: !154)
!154 = !{!31}
!155 = !DILocalVariable(name: "doc", scope: !152, file: !1, line: 100, type: !113)
!156 = !DILocation(line: 100, column: 15, scope: !152)
!157 = !DILocation(line: 101, column: 24, scope: !152)
!158 = !DILocation(line: 101, column: 5, scope: !152)
!159 = !DILocation(line: 104, column: 9, scope: !160)
!160 = distinct !DILexicalBlock(scope: !152, file: !1, line: 104, column: 9)
!161 = !DILocation(line: 104, column: 13, scope: !160)
!162 = !DILocation(line: 104, column: 9, scope: !152)
!163 = !DILocation(line: 105, column: 21, scope: !164)
!164 = distinct !DILexicalBlock(scope: !160, file: !1, line: 104, column: 22)
!165 = !DILocation(line: 105, column: 25, scope: !164)
!166 = !DILocation(line: 105, column: 9, scope: !164)
!167 = !DILocation(line: 106, column: 5, scope: !164)
!168 = !DILocalVariable(name: "writer", scope: !152, file: !1, line: 109, type: !14)
!169 = !DILocation(line: 109, column: 22, scope: !152)
!170 = !DILocation(line: 109, column: 52, scope: !152)
!171 = !DILocation(line: 109, column: 31, scope: !152)
!172 = !DILocation(line: 112, column: 9, scope: !173)
!173 = distinct !DILexicalBlock(scope: !152, file: !1, line: 112, column: 9)
!174 = !DILocation(line: 112, column: 16, scope: !173)
!175 = !DILocation(line: 112, column: 9, scope: !152)
!176 = !DILocation(line: 113, column: 14, scope: !177)
!177 = distinct !DILexicalBlock(scope: !173, file: !1, line: 112, column: 25)
!178 = !DILocation(line: 113, column: 9, scope: !177)
!179 = !DILocation(line: 114, column: 5, scope: !177)
!180 = !DILocation(line: 116, column: 5, scope: !152)
!181 = distinct !DISubprogram(name: "memset", scope: !182, file: !182, line: 12, type: !183, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !12)
!182 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!183 = !DISubroutineType(types: !184)
!184 = !{!13, !13, !31, !185}
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !186, line: 46, baseType: !187)
!186 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!187 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!188 = !DILocalVariable(name: "dst", arg: 1, scope: !181, file: !182, line: 12, type: !13)
!189 = !DILocation(line: 12, column: 20, scope: !181)
!190 = !DILocalVariable(name: "s", arg: 2, scope: !181, file: !182, line: 12, type: !31)
!191 = !DILocation(line: 12, column: 29, scope: !181)
!192 = !DILocalVariable(name: "count", arg: 3, scope: !181, file: !182, line: 12, type: !185)
!193 = !DILocation(line: 12, column: 39, scope: !181)
!194 = !DILocalVariable(name: "a", scope: !181, file: !182, line: 13, type: !195)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!196 = !DILocation(line: 13, column: 9, scope: !181)
!197 = !DILocation(line: 13, column: 13, scope: !181)
!198 = !DILocation(line: 14, column: 3, scope: !181)
!199 = !DILocation(line: 14, column: 15, scope: !181)
!200 = !DILocation(line: 14, column: 18, scope: !181)
!201 = !DILocation(line: 15, column: 12, scope: !181)
!202 = !DILocation(line: 15, column: 7, scope: !181)
!203 = !DILocation(line: 15, column: 10, scope: !181)
!204 = distinct !{!204, !198, !201, !205}
!205 = !{!"llvm.loop.mustprogress"}
!206 = !DILocation(line: 16, column: 10, scope: !181)
!207 = !DILocation(line: 16, column: 3, scope: !181)

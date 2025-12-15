; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/251_xmlwriter.c_367_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/251_xmlwriter.c_367_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSAXHandler = type { void ()*, void ()*, void ()* }
%struct._xmlParserCtxt = type opaque
%struct._xmlTextWriter = type opaque
%struct._xmlDoc = type opaque

@.str = private unnamed_addr constant [5 x i8] c"ctxt\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [107 x i8] c"se_runs/sa_llm/libxml2_55980_vul/251_xmlwriter.c_367_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlNewTextWriterDoc = private unnamed_addr constant [55 x i8] c"xmlTextWriterPtr xmlNewTextWriterDoc(xmlDocPtr *, int)\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"internal error\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"doc_ptr\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"compression\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSAX2InitDefaultSAXHandler(%struct._xmlSAXHandler* noundef %0, i32 noundef %1) #0 !dbg !14 {
  %3 = alloca %struct._xmlSAXHandler*, align 8
  %4 = alloca i32, align 4
  store %struct._xmlSAXHandler* %0, %struct._xmlSAXHandler** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSAXHandler** %3, metadata !29, metadata !DIExpression()), !dbg !30
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !31, metadata !DIExpression()), !dbg !32
  %5 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !33
  %6 = icmp ne %struct._xmlSAXHandler* %5, null, !dbg !33
  br i1 %6, label %7, label %8, !dbg !35

7:                                                ; preds = %2
  br label %8, !dbg !36

8:                                                ; preds = %7, %2
  ret void, !dbg !38
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlParserCtxt* @xmlCreatePushParserCtxt(%struct._xmlSAXHandler* noundef %0, i8* noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4) #0 !dbg !39 {
  %6 = alloca %struct._xmlSAXHandler*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct._xmlParserCtxt*, align 8
  store %struct._xmlSAXHandler* %0, %struct._xmlSAXHandler** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSAXHandler** %6, metadata !49, metadata !DIExpression()), !dbg !50
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !51, metadata !DIExpression()), !dbg !52
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !53, metadata !DIExpression()), !dbg !54
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !55, metadata !DIExpression()), !dbg !56
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %11, metadata !59, metadata !DIExpression()), !dbg !60
  %12 = bitcast %struct._xmlParserCtxt** %11 to i8*, !dbg !61
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !62
  %13 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %11, align 8, !dbg !63
  %14 = icmp eq %struct._xmlParserCtxt* %13, null, !dbg !64
  br i1 %14, label %18, label %15, !dbg !65

15:                                               ; preds = %5
  %16 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %11, align 8, !dbg !66
  %17 = icmp ne %struct._xmlParserCtxt* %16, null, !dbg !67
  br label %18, !dbg !65

18:                                               ; preds = %15, %5
  %19 = phi i1 [ true, %5 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32, !dbg !65
  %21 = sext i32 %20 to i64, !dbg !63
  call void @klee_assume(i64 noundef %21), !dbg !68
  %22 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %11, align 8, !dbg !69
  ret %struct._xmlParserCtxt* %22, !dbg !70
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlWriterErrMsg(i8* noundef %0, i32 noundef %1, i8* noundef %2) #0 !dbg !71 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !74, metadata !DIExpression()), !dbg !75
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !76, metadata !DIExpression()), !dbg !77
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !78, metadata !DIExpression()), !dbg !79
  ret void, !dbg !80
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlTextWriterStartDocumentCallback() #0 !dbg !81 {
  ret void, !dbg !82
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSAX2StartElement() #0 !dbg !83 {
  ret void, !dbg !84
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSAX2EndElement() #0 !dbg !85 {
  ret void, !dbg !86
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlTextWriter* @xmlNewTextWriterDoc(%struct._xmlDoc** noundef %0, i32 noundef %1) #0 !dbg !87 {
  %3 = alloca %struct._xmlTextWriter*, align 8
  %4 = alloca %struct._xmlDoc**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._xmlTextWriter*, align 8
  %7 = alloca %struct._xmlSAXHandler, align 8
  %8 = alloca %struct._xmlParserCtxt*, align 8
  store %struct._xmlDoc** %0, %struct._xmlDoc*** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlDoc*** %4, metadata !99, metadata !DIExpression()), !dbg !100
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !101, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.declare(metadata %struct._xmlTextWriter** %6, metadata !103, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.declare(metadata %struct._xmlSAXHandler* %7, metadata !105, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %8, metadata !107, metadata !DIExpression()), !dbg !108
  %9 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.2, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__.xmlNewTextWriterDoc, i64 0, i64 0)), !dbg !109
  %10 = bitcast %struct._xmlSAXHandler* %7 to i8*, !dbg !110
  %11 = call i8* @memset(i8* %10, i32 0, i64 24), !dbg !110
  call void @xmlSAX2InitDefaultSAXHandler(%struct._xmlSAXHandler* noundef %7, i32 noundef 1), !dbg !111
  %12 = getelementptr inbounds %struct._xmlSAXHandler, %struct._xmlSAXHandler* %7, i32 0, i32 0, !dbg !112
  store void ()* @xmlTextWriterStartDocumentCallback, void ()** %12, align 8, !dbg !113
  %13 = getelementptr inbounds %struct._xmlSAXHandler, %struct._xmlSAXHandler* %7, i32 0, i32 1, !dbg !114
  store void ()* @xmlSAX2StartElement, void ()** %13, align 8, !dbg !115
  %14 = getelementptr inbounds %struct._xmlSAXHandler, %struct._xmlSAXHandler* %7, i32 0, i32 2, !dbg !116
  store void ()* @xmlSAX2EndElement, void ()** %14, align 8, !dbg !117
  %15 = call %struct._xmlParserCtxt* @xmlCreatePushParserCtxt(%struct._xmlSAXHandler* noundef %7, i8* noundef null, i8* noundef null, i32 noundef 0, i8* noundef null), !dbg !118
  store %struct._xmlParserCtxt* %15, %struct._xmlParserCtxt** %8, align 8, !dbg !119
  %16 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %8, align 8, !dbg !120
  %17 = icmp eq %struct._xmlParserCtxt* %16, null, !dbg !122
  br i1 %17, label %18, label %19, !dbg !123

18:                                               ; preds = %2
  call void @xmlWriterErrMsg(i8* noundef null, i32 noundef 1024, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0)), !dbg !124
  store %struct._xmlTextWriter* null, %struct._xmlTextWriter** %3, align 8, !dbg !126
  br label %22, !dbg !126

19:                                               ; preds = %2
  %20 = bitcast %struct._xmlTextWriter** %6 to i8*, !dbg !127
  call void @klee_make_symbolic(i8* noundef %20, i64 noundef 8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)), !dbg !128
  %21 = load %struct._xmlTextWriter*, %struct._xmlTextWriter** %6, align 8, !dbg !129
  store %struct._xmlTextWriter* %21, %struct._xmlTextWriter** %3, align 8, !dbg !130
  br label %22, !dbg !130

22:                                               ; preds = %19, %18
  %23 = load %struct._xmlTextWriter*, %struct._xmlTextWriter** %3, align 8, !dbg !131
  ret %struct._xmlTextWriter* %23, !dbg !131
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !132 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlDoc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlTextWriter*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %2, metadata !135, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.declare(metadata i32* %3, metadata !137, metadata !DIExpression()), !dbg !138
  %5 = bitcast %struct._xmlDoc** %2 to i8*, !dbg !139
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)), !dbg !140
  %6 = bitcast i32* %3 to i8*, !dbg !141
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0)), !dbg !142
  call void @llvm.dbg.declare(metadata %struct._xmlTextWriter** %4, metadata !143, metadata !DIExpression()), !dbg !144
  %7 = load i32, i32* %3, align 4, !dbg !145
  %8 = call %struct._xmlTextWriter* @xmlNewTextWriterDoc(%struct._xmlDoc** noundef %2, i32 noundef %7), !dbg !146
  store %struct._xmlTextWriter* %8, %struct._xmlTextWriter** %4, align 8, !dbg !144
  %9 = load %struct._xmlTextWriter*, %struct._xmlTextWriter** %4, align 8, !dbg !147
  %10 = icmp ne %struct._xmlTextWriter* %9, null, !dbg !147
  br i1 %10, label %11, label %12, !dbg !149

11:                                               ; preds = %0
  br label %12, !dbg !150

12:                                               ; preds = %11, %0
  ret i32 0, !dbg !152
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #5 !dbg !153 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !160, metadata !DIExpression()), !dbg !161
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !162, metadata !DIExpression()), !dbg !163
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !164, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.declare(metadata i8** %7, metadata !166, metadata !DIExpression()), !dbg !168
  %8 = load i8*, i8** %4, align 8, !dbg !169
  store i8* %8, i8** %7, align 8, !dbg !168
  br label %9, !dbg !170

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !171
  %11 = add i64 %10, -1, !dbg !171
  store i64 %11, i64* %6, align 8, !dbg !171
  %12 = icmp ugt i64 %10, 0, !dbg !172
  br i1 %12, label %13, label %18, !dbg !170

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !173
  %15 = trunc i32 %14 to i8, !dbg !173
  %16 = load i8*, i8** %7, align 8, !dbg !174
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !174
  store i8* %17, i8** %7, align 8, !dbg !174
  store i8 %15, i8* %16, align 1, !dbg !175
  br label %9, !dbg !170, !llvm.loop !176

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !178
  ret i8* %19, !dbg !179
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13, !13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/251_xmlwriter.c_367_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "c5c38befb32e4cabb3f327e183b2f4a0")
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
!14 = distinct !DISubprogram(name: "xmlSAX2InitDefaultSAXHandler", scope: !1, file: !1, line: 26, type: !15, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17, !27}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSAXHandler", file: !1, line: 23, baseType: !19)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSAXHandler", file: !1, line: 18, size: 192, elements: !20)
!20 = !{!21, !25, !26}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "startDocument", scope: !19, file: !1, line: 19, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DISubroutineType(types: !24)
!24 = !{null}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "startElement", scope: !19, file: !1, line: 20, baseType: !22, size: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "endElement", scope: !19, file: !1, line: 21, baseType: !22, size: 64, offset: 128)
!27 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!28 = !{}
!29 = !DILocalVariable(name: "hdl", arg: 1, scope: !14, file: !1, line: 26, type: !17)
!30 = !DILocation(line: 26, column: 50, scope: !14)
!31 = !DILocalVariable(name: "is_utf8", arg: 2, scope: !14, file: !1, line: 26, type: !27)
!32 = !DILocation(line: 26, column: 59, scope: !14)
!33 = !DILocation(line: 28, column: 9, scope: !34)
!34 = distinct !DILexicalBlock(scope: !14, file: !1, line: 28, column: 9)
!35 = !DILocation(line: 28, column: 9, scope: !14)
!36 = !DILocation(line: 30, column: 5, scope: !37)
!37 = distinct !DILexicalBlock(scope: !34, file: !1, line: 28, column: 14)
!38 = !DILocation(line: 31, column: 1, scope: !14)
!39 = distinct !DISubprogram(name: "xmlCreatePushParserCtxt", scope: !1, file: !1, line: 33, type: !40, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!40 = !DISubroutineType(types: !41)
!41 = !{!42, !17, !3, !46, !27, !46}
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxtPtr", file: !1, line: 15, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxt", file: !1, line: 14, baseType: !45)
!45 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserCtxt", file: !1, line: 14, flags: DIFlagFwdDecl)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!48 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!49 = !DILocalVariable(name: "sax", arg: 1, scope: !39, file: !1, line: 33, type: !17)
!50 = !DILocation(line: 33, column: 57, scope: !39)
!51 = !DILocalVariable(name: "user_data", arg: 2, scope: !39, file: !1, line: 33, type: !3)
!52 = !DILocation(line: 33, column: 68, scope: !39)
!53 = !DILocalVariable(name: "chunk", arg: 3, scope: !39, file: !1, line: 34, type: !46)
!54 = !DILocation(line: 34, column: 54, scope: !39)
!55 = !DILocalVariable(name: "size", arg: 4, scope: !39, file: !1, line: 34, type: !27)
!56 = !DILocation(line: 34, column: 65, scope: !39)
!57 = !DILocalVariable(name: "filename", arg: 5, scope: !39, file: !1, line: 34, type: !46)
!58 = !DILocation(line: 34, column: 83, scope: !39)
!59 = !DILocalVariable(name: "ctxt", scope: !39, file: !1, line: 36, type: !42)
!60 = !DILocation(line: 36, column: 22, scope: !39)
!61 = !DILocation(line: 37, column: 24, scope: !39)
!62 = !DILocation(line: 37, column: 5, scope: !39)
!63 = !DILocation(line: 38, column: 17, scope: !39)
!64 = !DILocation(line: 38, column: 22, scope: !39)
!65 = !DILocation(line: 38, column: 30, scope: !39)
!66 = !DILocation(line: 38, column: 33, scope: !39)
!67 = !DILocation(line: 38, column: 38, scope: !39)
!68 = !DILocation(line: 38, column: 5, scope: !39)
!69 = !DILocation(line: 39, column: 12, scope: !39)
!70 = !DILocation(line: 39, column: 5, scope: !39)
!71 = distinct !DISubprogram(name: "xmlWriterErrMsg", scope: !1, file: !1, line: 42, type: !72, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!72 = !DISubroutineType(types: !73)
!73 = !{null, !3, !27, !46}
!74 = !DILocalVariable(name: "ctx", arg: 1, scope: !71, file: !1, line: 42, type: !3)
!75 = !DILocation(line: 42, column: 28, scope: !71)
!76 = !DILocalVariable(name: "error", arg: 2, scope: !71, file: !1, line: 42, type: !27)
!77 = !DILocation(line: 42, column: 37, scope: !71)
!78 = !DILocalVariable(name: "msg", arg: 3, scope: !71, file: !1, line: 42, type: !46)
!79 = !DILocation(line: 42, column: 56, scope: !71)
!80 = !DILocation(line: 44, column: 1, scope: !71)
!81 = distinct !DISubprogram(name: "xmlTextWriterStartDocumentCallback", scope: !1, file: !1, line: 46, type: !23, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!82 = !DILocation(line: 46, column: 48, scope: !81)
!83 = distinct !DISubprogram(name: "xmlSAX2StartElement", scope: !1, file: !1, line: 47, type: !23, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!84 = !DILocation(line: 47, column: 33, scope: !83)
!85 = distinct !DISubprogram(name: "xmlSAX2EndElement", scope: !1, file: !1, line: 48, type: !23, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!86 = !DILocation(line: 48, column: 31, scope: !85)
!87 = distinct !DISubprogram(name: "xmlNewTextWriterDoc", scope: !1, file: !1, line: 51, type: !88, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!88 = !DISubroutineType(types: !89)
!89 = !{!90, !94, !27}
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlTextWriterPtr", file: !1, line: 13, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlTextWriter", file: !1, line: 12, baseType: !93)
!93 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlTextWriter", file: !1, line: 12, flags: DIFlagFwdDecl)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !1, line: 11, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !1, line: 10, baseType: !98)
!98 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !1, line: 10, flags: DIFlagFwdDecl)
!99 = !DILocalVariable(name: "doc", arg: 1, scope: !87, file: !1, line: 51, type: !94)
!100 = !DILocation(line: 51, column: 49, scope: !87)
!101 = !DILocalVariable(name: "compression", arg: 2, scope: !87, file: !1, line: 51, type: !27)
!102 = !DILocation(line: 51, column: 58, scope: !87)
!103 = !DILocalVariable(name: "ret", scope: !87, file: !1, line: 52, type: !90)
!104 = !DILocation(line: 52, column: 22, scope: !87)
!105 = !DILocalVariable(name: "saxHandler", scope: !87, file: !1, line: 53, type: !18)
!106 = !DILocation(line: 53, column: 19, scope: !87)
!107 = !DILocalVariable(name: "ctxt", scope: !87, file: !1, line: 54, type: !42)
!108 = !DILocation(line: 54, column: 22, scope: !87)
!109 = !DILocation(line: 64, column: 5, scope: !87)
!110 = !DILocation(line: 66, column: 5, scope: !87)
!111 = !DILocation(line: 67, column: 5, scope: !87)
!112 = !DILocation(line: 68, column: 16, scope: !87)
!113 = !DILocation(line: 68, column: 30, scope: !87)
!114 = !DILocation(line: 69, column: 16, scope: !87)
!115 = !DILocation(line: 69, column: 29, scope: !87)
!116 = !DILocation(line: 70, column: 16, scope: !87)
!117 = !DILocation(line: 70, column: 27, scope: !87)
!118 = !DILocation(line: 72, column: 12, scope: !87)
!119 = !DILocation(line: 72, column: 10, scope: !87)
!120 = !DILocation(line: 73, column: 9, scope: !121)
!121 = distinct !DILexicalBlock(scope: !87, file: !1, line: 73, column: 9)
!122 = !DILocation(line: 73, column: 14, scope: !121)
!123 = !DILocation(line: 73, column: 9, scope: !87)
!124 = !DILocation(line: 74, column: 9, scope: !125)
!125 = distinct !DILexicalBlock(scope: !121, file: !1, line: 73, column: 23)
!126 = !DILocation(line: 75, column: 9, scope: !125)
!127 = !DILocation(line: 79, column: 24, scope: !87)
!128 = !DILocation(line: 79, column: 5, scope: !87)
!129 = !DILocation(line: 80, column: 12, scope: !87)
!130 = !DILocation(line: 80, column: 5, scope: !87)
!131 = !DILocation(line: 81, column: 1, scope: !87)
!132 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 83, type: !133, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!133 = !DISubroutineType(types: !134)
!134 = !{!27}
!135 = !DILocalVariable(name: "doc_ptr", scope: !132, file: !1, line: 84, type: !95)
!136 = !DILocation(line: 84, column: 15, scope: !132)
!137 = !DILocalVariable(name: "compression", scope: !132, file: !1, line: 85, type: !27)
!138 = !DILocation(line: 85, column: 9, scope: !132)
!139 = !DILocation(line: 88, column: 24, scope: !132)
!140 = !DILocation(line: 88, column: 5, scope: !132)
!141 = !DILocation(line: 89, column: 24, scope: !132)
!142 = !DILocation(line: 89, column: 5, scope: !132)
!143 = !DILocalVariable(name: "writer", scope: !132, file: !1, line: 92, type: !90)
!144 = !DILocation(line: 92, column: 22, scope: !132)
!145 = !DILocation(line: 92, column: 61, scope: !132)
!146 = !DILocation(line: 92, column: 31, scope: !132)
!147 = !DILocation(line: 95, column: 9, scope: !148)
!148 = distinct !DILexicalBlock(scope: !132, file: !1, line: 95, column: 9)
!149 = !DILocation(line: 95, column: 9, scope: !132)
!150 = !DILocation(line: 95, column: 18, scope: !151)
!151 = distinct !DILexicalBlock(scope: !148, file: !1, line: 95, column: 17)
!152 = !DILocation(line: 97, column: 5, scope: !132)
!153 = distinct !DISubprogram(name: "memset", scope: !154, file: !154, line: 12, type: !155, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !28)
!154 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!155 = !DISubroutineType(types: !156)
!156 = !{!3, !3, !27, !157}
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !158, line: 46, baseType: !159)
!158 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!159 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!160 = !DILocalVariable(name: "dst", arg: 1, scope: !153, file: !154, line: 12, type: !3)
!161 = !DILocation(line: 12, column: 20, scope: !153)
!162 = !DILocalVariable(name: "s", arg: 2, scope: !153, file: !154, line: 12, type: !27)
!163 = !DILocation(line: 12, column: 29, scope: !153)
!164 = !DILocalVariable(name: "count", arg: 3, scope: !153, file: !154, line: 12, type: !157)
!165 = !DILocation(line: 12, column: 39, scope: !153)
!166 = !DILocalVariable(name: "a", scope: !153, file: !154, line: 13, type: !167)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!168 = !DILocation(line: 13, column: 9, scope: !153)
!169 = !DILocation(line: 13, column: 13, scope: !153)
!170 = !DILocation(line: 14, column: 3, scope: !153)
!171 = !DILocation(line: 14, column: 15, scope: !153)
!172 = !DILocation(line: 14, column: 18, scope: !153)
!173 = !DILocation(line: 15, column: 12, scope: !153)
!174 = !DILocation(line: 15, column: 7, scope: !153)
!175 = !DILocation(line: 15, column: 10, scope: !153)
!176 = distinct !{!176, !170, !173, !177}
!177 = !{!"llvm.loop.mustprogress"}
!178 = !DILocation(line: 16, column: 10, scope: !153)
!179 = !DILocation(line: 16, column: 3, scope: !153)

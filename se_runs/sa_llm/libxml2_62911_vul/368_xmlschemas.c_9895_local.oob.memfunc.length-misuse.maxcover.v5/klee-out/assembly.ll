; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/368_xmlschemas.c_9895_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/368_xmlschemas.c_9895_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaParserCtxt = type opaque
%struct._xmlSchemaValidCtxt = type opaque
%struct._xmlSchema = type opaque
%struct._xmlDoc = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, i32, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlNs*, i8*, i8*, i8*, i8*, i8*, i32, %struct._xmlDict*, i8*, i32, i32 }
%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i8*, i16, i16 }
%struct._xmlAttr = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlAttr*, %struct._xmlAttr*, %struct._xmlDoc*, %struct._xmlNs*, i32, i8* }
%struct._xmlDtd = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._xmlNs = type { %struct._xmlNs*, i32, i8*, i8*, i8*, %struct._xmlDoc* }
%struct._xmlDict = type opaque

@.str = private unnamed_addr constant [10 x i8] c"schemaBuf\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"docBuf\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"reach_target\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [109 x i8] c"se_runs/sa_llm/libxml2_62911_vul/368_xmlschemas.c_9895_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !50 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlSchemaParserCtxt*, align 8
  %3 = alloca %struct._xmlSchemaValidCtxt*, align 8
  %4 = alloca %struct._xmlSchema*, align 8
  %5 = alloca %struct._xmlDoc*, align 8
  %6 = alloca [1024 x i8], align 16
  %7 = alloca [1024 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @xmlInitParser(), !dbg !55
  call void @xmlCheckVersion(i32 noundef 20914), !dbg !56
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaParserCtxt** %2, metadata !57, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaValidCtxt** %3, metadata !64, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata %struct._xmlSchema** %4, metadata !70, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %5, metadata !76, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.declare(metadata [1024 x i8]* %6, metadata !187, metadata !DIExpression()), !dbg !191
  %10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0, !dbg !192
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 1024, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)), !dbg !193
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 1023, !dbg !194
  store i8 0, i8* %11, align 1, !dbg !195
  %12 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0, !dbg !196
  %13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0, !dbg !197
  %14 = call i64 @strlen(i8* noundef %13) #5, !dbg !198
  %15 = trunc i64 %14 to i32, !dbg !198
  %16 = call %struct._xmlSchemaParserCtxt* @xmlSchemaNewMemParserCtxt(i8* noundef %12, i32 noundef %15), !dbg !199
  store %struct._xmlSchemaParserCtxt* %16, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !200
  %17 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !201
  %18 = icmp eq %struct._xmlSchemaParserCtxt* %17, null, !dbg !203
  br i1 %18, label %19, label %20, !dbg !204

19:                                               ; preds = %0
  call void @xmlCleanupParser(), !dbg !205
  store i32 0, i32* %1, align 4, !dbg !207
  br label %60, !dbg !207

20:                                               ; preds = %0
  %21 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !208
  %22 = call %struct._xmlSchema* @xmlSchemaParse(%struct._xmlSchemaParserCtxt* noundef %21), !dbg !209
  store %struct._xmlSchema* %22, %struct._xmlSchema** %4, align 8, !dbg !210
  %23 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !211
  call void @xmlSchemaFreeParserCtxt(%struct._xmlSchemaParserCtxt* noundef %23), !dbg !212
  %24 = load %struct._xmlSchema*, %struct._xmlSchema** %4, align 8, !dbg !213
  %25 = icmp eq %struct._xmlSchema* %24, null, !dbg !215
  br i1 %25, label %26, label %27, !dbg !216

26:                                               ; preds = %20
  call void @xmlCleanupParser(), !dbg !217
  store i32 0, i32* %1, align 4, !dbg !219
  br label %60, !dbg !219

27:                                               ; preds = %20
  call void @llvm.dbg.declare(metadata [1024 x i8]* %7, metadata !220, metadata !DIExpression()), !dbg !221
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0, !dbg !222
  call void @klee_make_symbolic(i8* noundef %28, i64 noundef 1024, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)), !dbg !223
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 1023, !dbg !224
  store i8 0, i8* %29, align 1, !dbg !225
  %30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0, !dbg !226
  %31 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0, !dbg !227
  %32 = call i64 @strlen(i8* noundef %31) #5, !dbg !228
  %33 = trunc i64 %32 to i32, !dbg !228
  %34 = call %struct._xmlDoc* @xmlReadMemory(i8* noundef %30, i32 noundef %33, i8* noundef null, i8* noundef null, i32 noundef 0), !dbg !229
  store %struct._xmlDoc* %34, %struct._xmlDoc** %5, align 8, !dbg !230
  %35 = load %struct._xmlDoc*, %struct._xmlDoc** %5, align 8, !dbg !231
  %36 = icmp eq %struct._xmlDoc* %35, null, !dbg !233
  br i1 %36, label %37, label %39, !dbg !234

37:                                               ; preds = %27
  %38 = load %struct._xmlSchema*, %struct._xmlSchema** %4, align 8, !dbg !235
  call void @xmlSchemaFree(%struct._xmlSchema* noundef %38), !dbg !237
  call void @xmlCleanupParser(), !dbg !238
  store i32 0, i32* %1, align 4, !dbg !239
  br label %60, !dbg !239

39:                                               ; preds = %27
  %40 = load %struct._xmlSchema*, %struct._xmlSchema** %4, align 8, !dbg !240
  %41 = call %struct._xmlSchemaValidCtxt* @xmlSchemaNewValidCtxt(%struct._xmlSchema* noundef %40), !dbg !241
  store %struct._xmlSchemaValidCtxt* %41, %struct._xmlSchemaValidCtxt** %3, align 8, !dbg !242
  %42 = load %struct._xmlSchemaValidCtxt*, %struct._xmlSchemaValidCtxt** %3, align 8, !dbg !243
  %43 = icmp eq %struct._xmlSchemaValidCtxt* %42, null, !dbg !245
  br i1 %43, label %44, label %47, !dbg !246

44:                                               ; preds = %39
  %45 = load %struct._xmlDoc*, %struct._xmlDoc** %5, align 8, !dbg !247
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %45), !dbg !249
  %46 = load %struct._xmlSchema*, %struct._xmlSchema** %4, align 8, !dbg !250
  call void @xmlSchemaFree(%struct._xmlSchema* noundef %46), !dbg !251
  call void @xmlCleanupParser(), !dbg !252
  store i32 0, i32* %1, align 4, !dbg !253
  br label %60, !dbg !253

47:                                               ; preds = %39
  call void @llvm.dbg.declare(metadata i32* %8, metadata !254, metadata !DIExpression()), !dbg !255
  %48 = load %struct._xmlSchemaValidCtxt*, %struct._xmlSchemaValidCtxt** %3, align 8, !dbg !256
  %49 = load %struct._xmlDoc*, %struct._xmlDoc** %5, align 8, !dbg !257
  %50 = call i32 @xmlSchemaValidateDoc(%struct._xmlSchemaValidCtxt* noundef %48, %struct._xmlDoc* noundef %49), !dbg !258
  store i32 %50, i32* %8, align 4, !dbg !255
  call void @llvm.dbg.declare(metadata i32* %9, metadata !259, metadata !DIExpression()), !dbg !260
  store i32 0, i32* %9, align 4, !dbg !260
  %51 = bitcast i32* %9 to i8*, !dbg !261
  call void @klee_make_symbolic(i8* noundef %51, i64 noundef 4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0)), !dbg !262
  %52 = load i32, i32* %9, align 4, !dbg !263
  %53 = icmp ne i32 %52, 0, !dbg !263
  br i1 %53, label %54, label %56, !dbg !265

54:                                               ; preds = %47
  %55 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.4, i64 0, i64 0), i32 noundef 78, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !266
  br label %56, !dbg !268

56:                                               ; preds = %54, %47
  %57 = load %struct._xmlSchemaValidCtxt*, %struct._xmlSchemaValidCtxt** %3, align 8, !dbg !269
  call void @xmlSchemaFreeValidCtxt(%struct._xmlSchemaValidCtxt* noundef %57), !dbg !270
  %58 = load %struct._xmlDoc*, %struct._xmlDoc** %5, align 8, !dbg !271
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %58), !dbg !272
  %59 = load %struct._xmlSchema*, %struct._xmlSchema** %4, align 8, !dbg !273
  call void @xmlSchemaFree(%struct._xmlSchema* noundef %59), !dbg !274
  call void @xmlCleanupParser(), !dbg !275
  store i32 0, i32* %1, align 4, !dbg !276
  br label %60, !dbg !276

60:                                               ; preds = %56, %44, %37, %26, %19
  %61 = load i32, i32* %1, align 4, !dbg !277
  ret i32 %61, !dbg !277
}

declare void @xmlInitParser() #1

declare void @xmlCheckVersion(i32 noundef) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #1

declare %struct._xmlSchemaParserCtxt* @xmlSchemaNewMemParserCtxt(i8* noundef, i32 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

declare void @xmlCleanupParser() #1

declare %struct._xmlSchema* @xmlSchemaParse(%struct._xmlSchemaParserCtxt* noundef) #1

declare void @xmlSchemaFreeParserCtxt(%struct._xmlSchemaParserCtxt* noundef) #1

declare %struct._xmlDoc* @xmlReadMemory(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef) #1

declare void @xmlSchemaFree(%struct._xmlSchema* noundef) #1

declare %struct._xmlSchemaValidCtxt* @xmlSchemaNewValidCtxt(%struct._xmlSchema* noundef) #1

declare void @xmlFreeDoc(%struct._xmlDoc* noundef) #1

declare i32 @xmlSchemaValidateDoc(%struct._xmlSchemaValidCtxt* noundef, %struct._xmlDoc* noundef) #1

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

declare void @xmlSchemaFreeValidCtxt(%struct._xmlSchemaValidCtxt* noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !40, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/368_xmlschemas.c_9895_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "f282e5158e5d03c24460e09efa1444a8")
!2 = !{!3, !28}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 159, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/usr/include/libxml2/libxml/tree.h", directory: "", checksumkind: CSK_MD5, checksum: "750bac4395c48684302094dba58dc4a1")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27}
!7 = !DIEnumerator(name: "XML_ELEMENT_NODE", value: 1)
!8 = !DIEnumerator(name: "XML_ATTRIBUTE_NODE", value: 2)
!9 = !DIEnumerator(name: "XML_TEXT_NODE", value: 3)
!10 = !DIEnumerator(name: "XML_CDATA_SECTION_NODE", value: 4)
!11 = !DIEnumerator(name: "XML_ENTITY_REF_NODE", value: 5)
!12 = !DIEnumerator(name: "XML_ENTITY_NODE", value: 6)
!13 = !DIEnumerator(name: "XML_PI_NODE", value: 7)
!14 = !DIEnumerator(name: "XML_COMMENT_NODE", value: 8)
!15 = !DIEnumerator(name: "XML_DOCUMENT_NODE", value: 9)
!16 = !DIEnumerator(name: "XML_DOCUMENT_TYPE_NODE", value: 10)
!17 = !DIEnumerator(name: "XML_DOCUMENT_FRAG_NODE", value: 11)
!18 = !DIEnumerator(name: "XML_NOTATION_NODE", value: 12)
!19 = !DIEnumerator(name: "XML_HTML_DOCUMENT_NODE", value: 13)
!20 = !DIEnumerator(name: "XML_DTD_NODE", value: 14)
!21 = !DIEnumerator(name: "XML_ELEMENT_DECL", value: 15)
!22 = !DIEnumerator(name: "XML_ATTRIBUTE_DECL", value: 16)
!23 = !DIEnumerator(name: "XML_ENTITY_DECL", value: 17)
!24 = !DIEnumerator(name: "XML_NAMESPACE_DECL", value: 18)
!25 = !DIEnumerator(name: "XML_XINCLUDE_START", value: 19)
!26 = !DIEnumerator(name: "XML_XINCLUDE_END", value: 20)
!27 = !DIEnumerator(name: "XML_DOCB_DOCUMENT_NODE", value: 21)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 206, baseType: !5, size: 32, elements: !29)
!29 = !{!30, !31, !32, !33, !34, !35, !36, !37, !38, !39}
!30 = !DIEnumerator(name: "XML_ATTRIBUTE_CDATA", value: 1)
!31 = !DIEnumerator(name: "XML_ATTRIBUTE_ID", value: 2)
!32 = !DIEnumerator(name: "XML_ATTRIBUTE_IDREF", value: 3)
!33 = !DIEnumerator(name: "XML_ATTRIBUTE_IDREFS", value: 4)
!34 = !DIEnumerator(name: "XML_ATTRIBUTE_ENTITY", value: 5)
!35 = !DIEnumerator(name: "XML_ATTRIBUTE_ENTITIES", value: 6)
!36 = !DIEnumerator(name: "XML_ATTRIBUTE_NMTOKEN", value: 7)
!37 = !DIEnumerator(name: "XML_ATTRIBUTE_NMTOKENS", value: 8)
!38 = !DIEnumerator(name: "XML_ATTRIBUTE_ENUMERATION", value: 9)
!39 = !DIEnumerator(name: "XML_ATTRIBUTE_NOTATION", value: 10)
!40 = !{!41}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!42 = !{i32 7, !"Dwarf Version", i32 5}
!43 = !{i32 2, !"Debug Info Version", i32 3}
!44 = !{i32 1, !"wchar_size", i32 4}
!45 = !{i32 7, !"PIC Level", i32 2}
!46 = !{i32 7, !"PIE Level", i32 2}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"Ubuntu clang version 14.0.6"}
!50 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 6, type: !51, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !54)
!51 = !DISubroutineType(types: !52)
!52 = !{!53}
!53 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!54 = !{}
!55 = !DILocation(line: 8, column: 5, scope: !50)
!56 = !DILocation(line: 9, column: 5, scope: !50)
!57 = !DILocalVariable(name: "parserCtxt", scope: !50, file: !1, line: 15, type: !58)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaParserCtxtPtr", file: !59, line: 113, baseType: !60)
!59 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlschemas.h", directory: "", checksumkind: CSK_MD5, checksum: "c087d0e891d6909b14966bccde02fcfc")
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaParserCtxt", file: !59, line: 112, baseType: !62)
!62 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaParserCtxt", file: !59, line: 112, flags: DIFlagFwdDecl)
!63 = !DILocation(line: 15, column: 28, scope: !50)
!64 = !DILocalVariable(name: "validCtxt", scope: !50, file: !1, line: 16, type: !65)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaValidCtxtPtr", file: !59, line: 116, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaValidCtxt", file: !59, line: 115, baseType: !68)
!68 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaValidCtxt", file: !59, line: 115, flags: DIFlagFwdDecl)
!69 = !DILocation(line: 16, column: 27, scope: !50)
!70 = !DILocalVariable(name: "schema", scope: !50, file: !1, line: 17, type: !71)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaPtr", file: !59, line: 85, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchema", file: !59, line: 84, baseType: !74)
!74 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchema", file: !59, line: 84, flags: DIFlagFwdDecl)
!75 = !DILocation(line: 17, column: 18, scope: !50)
!76 = !DILocalVariable(name: "doc", scope: !50, file: !1, line: 18, type: !77)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !80)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !81)
!81 = !{!82, !83, !85, !88, !144, !145, !146, !147, !148, !149, !150, !151, !171, !172, !173, !174, !175, !176, !177, !178, !179, !183, !184, !185}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !80, file: !4, line: 560, baseType: !41, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !80, file: !4, line: 561, baseType: !84, size: 32, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !80, file: !4, line: 562, baseType: !86, size: 64, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !80, file: !4, line: 563, baseType: !89, size: 64, offset: 192)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !91)
!91 = !{!92, !93, !94, !100, !101, !102, !103, !104, !105, !107, !120, !122, !139, !140, !141, !143}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !90, file: !4, line: 493, baseType: !41, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !90, file: !4, line: 494, baseType: !84, size: 32, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !90, file: !4, line: 495, baseType: !95, size: 64, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !98, line: 28, baseType: !99)
!98 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!99 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !90, file: !4, line: 496, baseType: !89, size: 64, offset: 192)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !90, file: !4, line: 497, baseType: !89, size: 64, offset: 256)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !90, file: !4, line: 498, baseType: !89, size: 64, offset: 320)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !90, file: !4, line: 499, baseType: !89, size: 64, offset: 384)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !90, file: !4, line: 500, baseType: !89, size: 64, offset: 448)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !90, file: !4, line: 501, baseType: !106, size: 64, offset: 512)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !90, file: !4, line: 504, baseType: !108, size: 64, offset: 576)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !110)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !111)
!111 = !{!112, !114, !116, !117, !118, !119}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !110, file: !4, line: 389, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !110, file: !4, line: 390, baseType: !115, size: 32, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !84)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !110, file: !4, line: 391, baseType: !95, size: 64, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !110, file: !4, line: 392, baseType: !95, size: 64, offset: 192)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !110, file: !4, line: 393, baseType: !41, size: 64, offset: 256)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !110, file: !4, line: 394, baseType: !106, size: 64, offset: 320)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !90, file: !4, line: 505, baseType: !121, size: 64, offset: 640)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !90, file: !4, line: 506, baseType: !123, size: 64, offset: 704)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !125)
!125 = !{!126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !138}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !124, file: !4, line: 434, baseType: !41, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !124, file: !4, line: 435, baseType: !84, size: 32, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !124, file: !4, line: 436, baseType: !95, size: 64, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !124, file: !4, line: 437, baseType: !89, size: 64, offset: 192)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !124, file: !4, line: 438, baseType: !89, size: 64, offset: 256)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !124, file: !4, line: 439, baseType: !89, size: 64, offset: 320)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !124, file: !4, line: 440, baseType: !123, size: 64, offset: 384)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !124, file: !4, line: 441, baseType: !123, size: 64, offset: 448)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !124, file: !4, line: 442, baseType: !106, size: 64, offset: 512)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !124, file: !4, line: 443, baseType: !108, size: 64, offset: 576)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !124, file: !4, line: 444, baseType: !137, size: 32, offset: 640)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !124, file: !4, line: 445, baseType: !41, size: 64, offset: 704)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !90, file: !4, line: 507, baseType: !108, size: 64, offset: 768)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !90, file: !4, line: 508, baseType: !41, size: 64, offset: 832)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !90, file: !4, line: 509, baseType: !142, size: 16, offset: 896)
!142 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !90, file: !4, line: 510, baseType: !142, size: 16, offset: 912)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !80, file: !4, line: 564, baseType: !89, size: 64, offset: 256)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !80, file: !4, line: 565, baseType: !89, size: 64, offset: 320)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !80, file: !4, line: 566, baseType: !89, size: 64, offset: 384)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !80, file: !4, line: 567, baseType: !89, size: 64, offset: 448)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !80, file: !4, line: 568, baseType: !106, size: 64, offset: 512)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !80, file: !4, line: 571, baseType: !53, size: 32, offset: 576)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !80, file: !4, line: 572, baseType: !53, size: 32, offset: 608)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !80, file: !4, line: 578, baseType: !152, size: 64, offset: 640)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !154)
!154 = !{!155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !153, file: !4, line: 406, baseType: !41, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !153, file: !4, line: 407, baseType: !84, size: 32, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !153, file: !4, line: 408, baseType: !95, size: 64, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !153, file: !4, line: 409, baseType: !89, size: 64, offset: 192)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !153, file: !4, line: 410, baseType: !89, size: 64, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !153, file: !4, line: 411, baseType: !106, size: 64, offset: 320)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !153, file: !4, line: 412, baseType: !89, size: 64, offset: 384)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !153, file: !4, line: 413, baseType: !89, size: 64, offset: 448)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !153, file: !4, line: 414, baseType: !106, size: 64, offset: 512)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !153, file: !4, line: 417, baseType: !41, size: 64, offset: 576)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !153, file: !4, line: 418, baseType: !41, size: 64, offset: 640)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !153, file: !4, line: 419, baseType: !41, size: 64, offset: 704)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !153, file: !4, line: 420, baseType: !41, size: 64, offset: 768)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !153, file: !4, line: 421, baseType: !95, size: 64, offset: 832)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !153, file: !4, line: 422, baseType: !95, size: 64, offset: 896)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !153, file: !4, line: 423, baseType: !41, size: 64, offset: 960)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !80, file: !4, line: 579, baseType: !152, size: 64, offset: 704)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !80, file: !4, line: 580, baseType: !113, size: 64, offset: 768)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !80, file: !4, line: 581, baseType: !95, size: 64, offset: 832)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !80, file: !4, line: 582, baseType: !95, size: 64, offset: 896)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !80, file: !4, line: 583, baseType: !41, size: 64, offset: 960)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !80, file: !4, line: 584, baseType: !41, size: 64, offset: 1024)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !80, file: !4, line: 585, baseType: !95, size: 64, offset: 1088)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !80, file: !4, line: 586, baseType: !53, size: 32, offset: 1152)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !80, file: !4, line: 588, baseType: !180, size: 64, offset: 1216)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !182, line: 24, flags: DIFlagFwdDecl)
!182 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!183 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !80, file: !4, line: 589, baseType: !41, size: 64, offset: 1280)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !80, file: !4, line: 590, baseType: !53, size: 32, offset: 1344)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !80, file: !4, line: 592, baseType: !53, size: 32, offset: 1376)
!186 = !DILocation(line: 18, column: 15, scope: !50)
!187 = !DILocalVariable(name: "schemaBuf", scope: !50, file: !1, line: 21, type: !188)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 8192, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 1024)
!191 = !DILocation(line: 21, column: 10, scope: !50)
!192 = !DILocation(line: 22, column: 24, scope: !50)
!193 = !DILocation(line: 22, column: 5, scope: !50)
!194 = !DILocation(line: 24, column: 5, scope: !50)
!195 = !DILocation(line: 24, column: 36, scope: !50)
!196 = !DILocation(line: 26, column: 44, scope: !50)
!197 = !DILocation(line: 26, column: 62, scope: !50)
!198 = !DILocation(line: 26, column: 55, scope: !50)
!199 = !DILocation(line: 26, column: 18, scope: !50)
!200 = !DILocation(line: 26, column: 16, scope: !50)
!201 = !DILocation(line: 27, column: 9, scope: !202)
!202 = distinct !DILexicalBlock(scope: !50, file: !1, line: 27, column: 9)
!203 = !DILocation(line: 27, column: 20, scope: !202)
!204 = !DILocation(line: 27, column: 9, scope: !50)
!205 = !DILocation(line: 28, column: 9, scope: !206)
!206 = distinct !DILexicalBlock(scope: !202, file: !1, line: 27, column: 29)
!207 = !DILocation(line: 29, column: 9, scope: !206)
!208 = !DILocation(line: 32, column: 29, scope: !50)
!209 = !DILocation(line: 32, column: 14, scope: !50)
!210 = !DILocation(line: 32, column: 12, scope: !50)
!211 = !DILocation(line: 33, column: 29, scope: !50)
!212 = !DILocation(line: 33, column: 5, scope: !50)
!213 = !DILocation(line: 34, column: 9, scope: !214)
!214 = distinct !DILexicalBlock(scope: !50, file: !1, line: 34, column: 9)
!215 = !DILocation(line: 34, column: 16, scope: !214)
!216 = !DILocation(line: 34, column: 9, scope: !50)
!217 = !DILocation(line: 35, column: 9, scope: !218)
!218 = distinct !DILexicalBlock(scope: !214, file: !1, line: 34, column: 25)
!219 = !DILocation(line: 36, column: 9, scope: !218)
!220 = !DILocalVariable(name: "docBuf", scope: !50, file: !1, line: 40, type: !188)
!221 = !DILocation(line: 40, column: 10, scope: !50)
!222 = !DILocation(line: 41, column: 24, scope: !50)
!223 = !DILocation(line: 41, column: 5, scope: !50)
!224 = !DILocation(line: 42, column: 5, scope: !50)
!225 = !DILocation(line: 42, column: 30, scope: !50)
!226 = !DILocation(line: 44, column: 25, scope: !50)
!227 = !DILocation(line: 44, column: 40, scope: !50)
!228 = !DILocation(line: 44, column: 33, scope: !50)
!229 = !DILocation(line: 44, column: 11, scope: !50)
!230 = !DILocation(line: 44, column: 9, scope: !50)
!231 = !DILocation(line: 45, column: 9, scope: !232)
!232 = distinct !DILexicalBlock(scope: !50, file: !1, line: 45, column: 9)
!233 = !DILocation(line: 45, column: 13, scope: !232)
!234 = !DILocation(line: 45, column: 9, scope: !50)
!235 = !DILocation(line: 46, column: 23, scope: !236)
!236 = distinct !DILexicalBlock(scope: !232, file: !1, line: 45, column: 22)
!237 = !DILocation(line: 46, column: 9, scope: !236)
!238 = !DILocation(line: 47, column: 9, scope: !236)
!239 = !DILocation(line: 48, column: 9, scope: !236)
!240 = !DILocation(line: 51, column: 39, scope: !50)
!241 = !DILocation(line: 51, column: 17, scope: !50)
!242 = !DILocation(line: 51, column: 15, scope: !50)
!243 = !DILocation(line: 52, column: 9, scope: !244)
!244 = distinct !DILexicalBlock(scope: !50, file: !1, line: 52, column: 9)
!245 = !DILocation(line: 52, column: 19, scope: !244)
!246 = !DILocation(line: 52, column: 9, scope: !50)
!247 = !DILocation(line: 53, column: 20, scope: !248)
!248 = distinct !DILexicalBlock(scope: !244, file: !1, line: 52, column: 28)
!249 = !DILocation(line: 53, column: 9, scope: !248)
!250 = !DILocation(line: 54, column: 23, scope: !248)
!251 = !DILocation(line: 54, column: 9, scope: !248)
!252 = !DILocation(line: 55, column: 9, scope: !248)
!253 = !DILocation(line: 56, column: 9, scope: !248)
!254 = !DILocalVariable(name: "ret", scope: !50, file: !1, line: 63, type: !53)
!255 = !DILocation(line: 63, column: 9, scope: !50)
!256 = !DILocation(line: 63, column: 36, scope: !50)
!257 = !DILocation(line: 63, column: 47, scope: !50)
!258 = !DILocation(line: 63, column: 15, scope: !50)
!259 = !DILocalVariable(name: "reach_target", scope: !50, file: !1, line: 73, type: !53)
!260 = !DILocation(line: 73, column: 9, scope: !50)
!261 = !DILocation(line: 74, column: 24, scope: !50)
!262 = !DILocation(line: 74, column: 5, scope: !50)
!263 = !DILocation(line: 75, column: 9, scope: !264)
!264 = distinct !DILexicalBlock(scope: !50, file: !1, line: 75, column: 9)
!265 = !DILocation(line: 75, column: 9, scope: !50)
!266 = !DILocation(line: 78, column: 9, scope: !267)
!267 = distinct !DILexicalBlock(scope: !264, file: !1, line: 75, column: 23)
!268 = !DILocation(line: 79, column: 5, scope: !267)
!269 = !DILocation(line: 82, column: 28, scope: !50)
!270 = !DILocation(line: 82, column: 5, scope: !50)
!271 = !DILocation(line: 83, column: 16, scope: !50)
!272 = !DILocation(line: 83, column: 5, scope: !50)
!273 = !DILocation(line: 84, column: 19, scope: !50)
!274 = !DILocation(line: 84, column: 5, scope: !50)
!275 = !DILocation(line: 85, column: 5, scope: !50)
!276 = !DILocation(line: 87, column: 5, scope: !50)
!277 = !DILocation(line: 88, column: 1, scope: !50)

; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/260_xmlschemas.c_27437_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/260_xmlschemas.c_27437_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaParserCtxt = type opaque
%struct._xmlSchema = type { i8*, i8*, i8*, i8*, %struct._xmlDoc*, %struct._xmlSchemaAnnot*, i32, %struct._xmlHashTable*, %struct._xmlHashTable*, %struct._xmlHashTable*, %struct._xmlHashTable*, %struct._xmlHashTable*, %struct._xmlHashTable*, i8*, %struct._xmlHashTable*, %struct._xmlDict*, i8*, i32, i32, %struct._xmlHashTable*, i8* }
%struct._xmlDoc = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, i32, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlNs*, i8*, i8*, i8*, i8*, i8*, i32, %struct._xmlDict*, i8*, i32, i32 }
%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i8*, i16, i16 }
%struct._xmlAttr = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlAttr*, %struct._xmlAttr*, %struct._xmlDoc*, %struct._xmlNs*, i32, i8* }
%struct._xmlDtd = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._xmlNs = type { %struct._xmlNs*, i32, i8*, i8*, i8*, %struct._xmlDoc* }
%struct._xmlSchemaAnnot = type { %struct._xmlSchemaAnnot*, %struct._xmlNode* }
%struct._xmlDict = type opaque
%struct._xmlHashTable = type opaque
%struct._xmlSchemaValidCtxt = type opaque

@.str = private unnamed_addr constant [8 x i8] c"xmlData\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [110 x i8] c"se_runs/sa_llm/libxml2_62911_vul/260_xmlschemas.c_27437_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !50 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlSchemaParserCtxt*, align 8
  %3 = alloca %struct._xmlSchema*, align 8
  %4 = alloca %struct._xmlSchemaValidCtxt*, align 8
  %5 = alloca [1024 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaParserCtxt** %2, metadata !55, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata %struct._xmlSchema** %3, metadata !62, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaValidCtxt** %4, metadata !219, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !225, metadata !DIExpression()), !dbg !229
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !230
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 1024, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)), !dbg !231
  %7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 1023, !dbg !232
  store i8 0, i8* %7, align 1, !dbg !233
  %8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !234
  %9 = call %struct._xmlSchemaParserCtxt* @xmlSchemaNewMemParserCtxt(i8* noundef %8, i32 noundef 1023), !dbg !235
  store %struct._xmlSchemaParserCtxt* %9, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !236
  %10 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !237
  %11 = icmp eq %struct._xmlSchemaParserCtxt* %10, null, !dbg !239
  br i1 %11, label %12, label %13, !dbg !240

12:                                               ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !241
  br label %31, !dbg !241

13:                                               ; preds = %0
  %14 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !243
  %15 = call %struct._xmlSchema* @xmlSchemaParse(%struct._xmlSchemaParserCtxt* noundef %14), !dbg !244
  store %struct._xmlSchema* %15, %struct._xmlSchema** %3, align 8, !dbg !245
  %16 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !246
  call void @xmlSchemaFreeParserCtxt(%struct._xmlSchemaParserCtxt* noundef %16), !dbg !247
  %17 = load %struct._xmlSchema*, %struct._xmlSchema** %3, align 8, !dbg !248
  %18 = icmp eq %struct._xmlSchema* %17, null, !dbg !250
  br i1 %18, label %19, label %20, !dbg !251

19:                                               ; preds = %13
  store i32 0, i32* %1, align 4, !dbg !252
  br label %31, !dbg !252

20:                                               ; preds = %13
  %21 = load %struct._xmlSchema*, %struct._xmlSchema** %3, align 8, !dbg !254
  %22 = call %struct._xmlSchemaValidCtxt* @xmlSchemaNewValidCtxt(%struct._xmlSchema* noundef %21), !dbg !255
  store %struct._xmlSchemaValidCtxt* %22, %struct._xmlSchemaValidCtxt** %4, align 8, !dbg !256
  %23 = load %struct._xmlSchemaValidCtxt*, %struct._xmlSchemaValidCtxt** %4, align 8, !dbg !257
  %24 = icmp eq %struct._xmlSchemaValidCtxt* %23, null, !dbg !259
  br i1 %24, label %25, label %27, !dbg !260

25:                                               ; preds = %20
  %26 = load %struct._xmlSchema*, %struct._xmlSchema** %3, align 8, !dbg !261
  call void @xmlSchemaFree(%struct._xmlSchema* noundef %26), !dbg !263
  store i32 0, i32* %1, align 4, !dbg !264
  br label %31, !dbg !264

27:                                               ; preds = %20
  %28 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([110 x i8], [110 x i8]* @.str.2, i64 0, i64 0), i32 noundef 37, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !265
  %29 = load %struct._xmlSchemaValidCtxt*, %struct._xmlSchemaValidCtxt** %4, align 8, !dbg !266
  call void @xmlSchemaFreeValidCtxt(%struct._xmlSchemaValidCtxt* noundef %29), !dbg !267
  %30 = load %struct._xmlSchema*, %struct._xmlSchema** %3, align 8, !dbg !268
  call void @xmlSchemaFree(%struct._xmlSchema* noundef %30), !dbg !269
  store i32 0, i32* %1, align 4, !dbg !270
  br label %31, !dbg !270

31:                                               ; preds = %27, %25, %19, %12
  %32 = load i32, i32* %1, align 4, !dbg !271
  ret i32 %32, !dbg !271
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare %struct._xmlSchemaParserCtxt* @xmlSchemaNewMemParserCtxt(i8* noundef, i32 noundef) #2

declare %struct._xmlSchema* @xmlSchemaParse(%struct._xmlSchemaParserCtxt* noundef) #2

declare void @xmlSchemaFreeParserCtxt(%struct._xmlSchemaParserCtxt* noundef) #2

declare %struct._xmlSchemaValidCtxt* @xmlSchemaNewValidCtxt(%struct._xmlSchema* noundef) #2

declare void @xmlSchemaFree(%struct._xmlSchema* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare void @xmlSchemaFreeValidCtxt(%struct._xmlSchemaValidCtxt* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !40, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/260_xmlschemas.c_27437_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "f4fa33d19e629a191ad8c28682e2faad")
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
!50 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 7, type: !51, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !54)
!51 = !DISubroutineType(types: !52)
!52 = !{!53}
!53 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!54 = !{}
!55 = !DILocalVariable(name: "parserCtxt", scope: !50, file: !1, line: 8, type: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaParserCtxtPtr", file: !57, line: 113, baseType: !58)
!57 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlschemas.h", directory: "", checksumkind: CSK_MD5, checksum: "c087d0e891d6909b14966bccde02fcfc")
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaParserCtxt", file: !57, line: 112, baseType: !60)
!60 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaParserCtxt", file: !57, line: 112, flags: DIFlagFwdDecl)
!61 = !DILocation(line: 8, column: 28, scope: !50)
!62 = !DILocalVariable(name: "schema", scope: !50, file: !1, line: 9, type: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaPtr", file: !57, line: 85, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchema", file: !57, line: 84, baseType: !66)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchema", file: !67, line: 923, size: 1280, elements: !68)
!67 = !DIFile(filename: "/usr/include/libxml2/libxml/schemasInternals.h", directory: "", checksumkind: CSK_MD5, checksum: "5072dee68b3423ac6f13185b984cc325")
!68 = !{!69, !75, !76, !77, !78, !183, !195, !196, !202, !203, !204, !205, !206, !207, !208, !209, !213, !214, !215, !216, !217}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !66, file: !67, line: 924, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !73, line: 28, baseType: !74)
!73 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!74 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "targetNamespace", scope: !66, file: !67, line: 925, baseType: !70, size: 64, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !66, file: !67, line: 926, baseType: !70, size: 64, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !66, file: !67, line: 927, baseType: !70, size: 64, offset: 192)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !66, file: !67, line: 928, baseType: !79, size: 64, offset: 256)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !82)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !83)
!83 = !{!84, !85, !87, !90, !141, !142, !143, !144, !145, !146, !147, !148, !168, !169, !170, !171, !172, !173, !174, !175, !176, !180, !181, !182}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !82, file: !4, line: 560, baseType: !41, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !82, file: !4, line: 561, baseType: !86, size: 32, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !82, file: !4, line: 562, baseType: !88, size: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !82, file: !4, line: 563, baseType: !91, size: 64, offset: 192)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !93)
!93 = !{!94, !95, !96, !97, !98, !99, !100, !101, !102, !104, !117, !119, !136, !137, !138, !140}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !92, file: !4, line: 493, baseType: !41, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !92, file: !4, line: 494, baseType: !86, size: 32, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !92, file: !4, line: 495, baseType: !70, size: 64, offset: 128)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !92, file: !4, line: 496, baseType: !91, size: 64, offset: 192)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !92, file: !4, line: 497, baseType: !91, size: 64, offset: 256)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !92, file: !4, line: 498, baseType: !91, size: 64, offset: 320)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !92, file: !4, line: 499, baseType: !91, size: 64, offset: 384)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !92, file: !4, line: 500, baseType: !91, size: 64, offset: 448)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !92, file: !4, line: 501, baseType: !103, size: 64, offset: 512)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !92, file: !4, line: 504, baseType: !105, size: 64, offset: 576)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !107)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !108)
!108 = !{!109, !111, !113, !114, !115, !116}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !107, file: !4, line: 389, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !107, file: !4, line: 390, baseType: !112, size: 32, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !86)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !107, file: !4, line: 391, baseType: !70, size: 64, offset: 128)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !107, file: !4, line: 392, baseType: !70, size: 64, offset: 192)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !107, file: !4, line: 393, baseType: !41, size: 64, offset: 256)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !107, file: !4, line: 394, baseType: !103, size: 64, offset: 320)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !92, file: !4, line: 505, baseType: !118, size: 64, offset: 640)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !92, file: !4, line: 506, baseType: !120, size: 64, offset: 704)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !122)
!122 = !{!123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !135}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !121, file: !4, line: 434, baseType: !41, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !121, file: !4, line: 435, baseType: !86, size: 32, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !121, file: !4, line: 436, baseType: !70, size: 64, offset: 128)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !121, file: !4, line: 437, baseType: !91, size: 64, offset: 192)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !121, file: !4, line: 438, baseType: !91, size: 64, offset: 256)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !121, file: !4, line: 439, baseType: !91, size: 64, offset: 320)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !121, file: !4, line: 440, baseType: !120, size: 64, offset: 384)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !121, file: !4, line: 441, baseType: !120, size: 64, offset: 448)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !121, file: !4, line: 442, baseType: !103, size: 64, offset: 512)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !121, file: !4, line: 443, baseType: !105, size: 64, offset: 576)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !121, file: !4, line: 444, baseType: !134, size: 32, offset: 640)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !121, file: !4, line: 445, baseType: !41, size: 64, offset: 704)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !92, file: !4, line: 507, baseType: !105, size: 64, offset: 768)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !92, file: !4, line: 508, baseType: !41, size: 64, offset: 832)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !92, file: !4, line: 509, baseType: !139, size: 16, offset: 896)
!139 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !92, file: !4, line: 510, baseType: !139, size: 16, offset: 912)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !82, file: !4, line: 564, baseType: !91, size: 64, offset: 256)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !82, file: !4, line: 565, baseType: !91, size: 64, offset: 320)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !82, file: !4, line: 566, baseType: !91, size: 64, offset: 384)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !82, file: !4, line: 567, baseType: !91, size: 64, offset: 448)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !82, file: !4, line: 568, baseType: !103, size: 64, offset: 512)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !82, file: !4, line: 571, baseType: !53, size: 32, offset: 576)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !82, file: !4, line: 572, baseType: !53, size: 32, offset: 608)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !82, file: !4, line: 578, baseType: !149, size: 64, offset: 640)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !151)
!151 = !{!152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !150, file: !4, line: 406, baseType: !41, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !150, file: !4, line: 407, baseType: !86, size: 32, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !150, file: !4, line: 408, baseType: !70, size: 64, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !150, file: !4, line: 409, baseType: !91, size: 64, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !150, file: !4, line: 410, baseType: !91, size: 64, offset: 256)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !150, file: !4, line: 411, baseType: !103, size: 64, offset: 320)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !150, file: !4, line: 412, baseType: !91, size: 64, offset: 384)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !150, file: !4, line: 413, baseType: !91, size: 64, offset: 448)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !150, file: !4, line: 414, baseType: !103, size: 64, offset: 512)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !150, file: !4, line: 417, baseType: !41, size: 64, offset: 576)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !150, file: !4, line: 418, baseType: !41, size: 64, offset: 640)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !150, file: !4, line: 419, baseType: !41, size: 64, offset: 704)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !150, file: !4, line: 420, baseType: !41, size: 64, offset: 768)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !150, file: !4, line: 421, baseType: !70, size: 64, offset: 832)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !150, file: !4, line: 422, baseType: !70, size: 64, offset: 896)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !150, file: !4, line: 423, baseType: !41, size: 64, offset: 960)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !82, file: !4, line: 579, baseType: !149, size: 64, offset: 704)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !82, file: !4, line: 580, baseType: !110, size: 64, offset: 768)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !82, file: !4, line: 581, baseType: !70, size: 64, offset: 832)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !82, file: !4, line: 582, baseType: !70, size: 64, offset: 896)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !82, file: !4, line: 583, baseType: !41, size: 64, offset: 960)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !82, file: !4, line: 584, baseType: !41, size: 64, offset: 1024)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !82, file: !4, line: 585, baseType: !70, size: 64, offset: 1088)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !82, file: !4, line: 586, baseType: !53, size: 32, offset: 1152)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !82, file: !4, line: 588, baseType: !177, size: 64, offset: 1216)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !179, line: 24, flags: DIFlagFwdDecl)
!179 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!180 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !82, file: !4, line: 589, baseType: !41, size: 64, offset: 1280)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !82, file: !4, line: 590, baseType: !53, size: 32, offset: 1344)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !82, file: !4, line: 592, baseType: !53, size: 32, offset: 1376)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "annot", scope: !66, file: !67, line: 929, baseType: !184, size: 64, offset: 320)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaAnnotPtr", file: !67, line: 149, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaAnnot", file: !67, line: 148, baseType: !187)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaAnnot", file: !67, line: 150, size: 128, elements: !188)
!188 = !{!189, !191}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !187, file: !67, line: 151, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !187, file: !67, line: 152, baseType: !192, size: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !4, line: 491, baseType: !193)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !4, line: 490, baseType: !92)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !66, file: !67, line: 930, baseType: !53, size: 32, offset: 384)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "typeDecl", scope: !66, file: !67, line: 932, baseType: !197, size: 64, offset: 448)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTablePtr", file: !198, line: 22, baseType: !199)
!198 = !DIFile(filename: "/usr/include/libxml2/libxml/hash.h", directory: "", checksumkind: CSK_MD5, checksum: "af6927d60ab5a971b68a65626d903bb2")
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTable", file: !198, line: 21, baseType: !201)
!201 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlHashTable", file: !198, line: 21, flags: DIFlagFwdDecl)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "attrDecl", scope: !66, file: !67, line: 933, baseType: !197, size: 64, offset: 512)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "attrgrpDecl", scope: !66, file: !67, line: 934, baseType: !197, size: 64, offset: 576)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "elemDecl", scope: !66, file: !67, line: 935, baseType: !197, size: 64, offset: 640)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "notaDecl", scope: !66, file: !67, line: 936, baseType: !197, size: 64, offset: 704)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "schemasImports", scope: !66, file: !67, line: 938, baseType: !197, size: 64, offset: 768)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !66, file: !67, line: 940, baseType: !41, size: 64, offset: 832)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "groupDecl", scope: !66, file: !67, line: 941, baseType: !197, size: 64, offset: 896)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !66, file: !67, line: 942, baseType: !210, size: 64, offset: 960)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDictPtr", file: !179, line: 25, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !179, line: 24, baseType: !178)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "includes", scope: !66, file: !67, line: 943, baseType: !41, size: 64, offset: 1024)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "preserve", scope: !66, file: !67, line: 944, baseType: !53, size: 32, offset: 1088)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !66, file: !67, line: 945, baseType: !53, size: 32, offset: 1120)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "idcDef", scope: !66, file: !67, line: 946, baseType: !197, size: 64, offset: 1152)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "volatiles", scope: !66, file: !67, line: 947, baseType: !41, size: 64, offset: 1216)
!218 = !DILocation(line: 9, column: 18, scope: !50)
!219 = !DILocalVariable(name: "validCtxt", scope: !50, file: !1, line: 10, type: !220)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaValidCtxtPtr", file: !57, line: 116, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaValidCtxt", file: !57, line: 115, baseType: !223)
!223 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaValidCtxt", file: !57, line: 115, flags: DIFlagFwdDecl)
!224 = !DILocation(line: 10, column: 27, scope: !50)
!225 = !DILocalVariable(name: "xmlData", scope: !50, file: !1, line: 13, type: !226)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 8192, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 1024)
!229 = !DILocation(line: 13, column: 10, scope: !50)
!230 = !DILocation(line: 14, column: 24, scope: !50)
!231 = !DILocation(line: 14, column: 5, scope: !50)
!232 = !DILocation(line: 16, column: 5, scope: !50)
!233 = !DILocation(line: 16, column: 32, scope: !50)
!234 = !DILocation(line: 18, column: 44, scope: !50)
!235 = !DILocation(line: 18, column: 18, scope: !50)
!236 = !DILocation(line: 18, column: 16, scope: !50)
!237 = !DILocation(line: 19, column: 9, scope: !238)
!238 = distinct !DILexicalBlock(scope: !50, file: !1, line: 19, column: 9)
!239 = !DILocation(line: 19, column: 20, scope: !238)
!240 = !DILocation(line: 19, column: 9, scope: !50)
!241 = !DILocation(line: 20, column: 9, scope: !242)
!242 = distinct !DILexicalBlock(scope: !238, file: !1, line: 19, column: 29)
!243 = !DILocation(line: 23, column: 29, scope: !50)
!244 = !DILocation(line: 23, column: 14, scope: !50)
!245 = !DILocation(line: 23, column: 12, scope: !50)
!246 = !DILocation(line: 24, column: 29, scope: !50)
!247 = !DILocation(line: 24, column: 5, scope: !50)
!248 = !DILocation(line: 25, column: 9, scope: !249)
!249 = distinct !DILexicalBlock(scope: !50, file: !1, line: 25, column: 9)
!250 = !DILocation(line: 25, column: 16, scope: !249)
!251 = !DILocation(line: 25, column: 9, scope: !50)
!252 = !DILocation(line: 26, column: 9, scope: !253)
!253 = distinct !DILexicalBlock(scope: !249, file: !1, line: 25, column: 25)
!254 = !DILocation(line: 30, column: 39, scope: !50)
!255 = !DILocation(line: 30, column: 17, scope: !50)
!256 = !DILocation(line: 30, column: 15, scope: !50)
!257 = !DILocation(line: 31, column: 9, scope: !258)
!258 = distinct !DILexicalBlock(scope: !50, file: !1, line: 31, column: 9)
!259 = !DILocation(line: 31, column: 19, scope: !258)
!260 = !DILocation(line: 31, column: 9, scope: !50)
!261 = !DILocation(line: 32, column: 23, scope: !262)
!262 = distinct !DILexicalBlock(scope: !258, file: !1, line: 31, column: 28)
!263 = !DILocation(line: 32, column: 9, scope: !262)
!264 = !DILocation(line: 33, column: 9, scope: !262)
!265 = !DILocation(line: 37, column: 5, scope: !50)
!266 = !DILocation(line: 40, column: 28, scope: !50)
!267 = !DILocation(line: 40, column: 5, scope: !50)
!268 = !DILocation(line: 41, column: 19, scope: !50)
!269 = !DILocation(line: 41, column: 5, scope: !50)
!270 = !DILocation(line: 42, column: 5, scope: !50)
!271 = !DILocation(line: 43, column: 1, scope: !50)

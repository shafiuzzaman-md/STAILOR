; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/077_schematron.c_353_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/077_schematron.c_353_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchematronParserCtxt = type opaque
%struct._xmlSchematron = type opaque
%struct._xmlDoc = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, i32, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlNs*, i8*, i8*, i8*, i8*, i8*, i32, %struct._xmlDict*, i8*, i32, i32 }
%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i8*, i16, i16 }
%struct._xmlAttr = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlAttr*, %struct._xmlAttr*, %struct._xmlDoc*, %struct._xmlNs*, i32, i8* }
%struct._xmlDtd = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._xmlNs = type { %struct._xmlNs*, i32, i8*, i8*, i8*, %struct._xmlDoc* }
%struct._xmlDict = type opaque

@.str = private unnamed_addr constant [8 x i8] c"<test/>\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"noname.xml\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_62911_vul/077_schematron.c_353_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !50 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlSchematronParserCtxt*, align 8
  %3 = alloca %struct._xmlSchematron*, align 8
  %4 = alloca %struct._xmlDoc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlSchematronParserCtxt** %2, metadata !55, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata %struct._xmlSchematron** %3, metadata !62, metadata !DIExpression()), !dbg !67
  store %struct._xmlSchematron* null, %struct._xmlSchematron** %3, align 8, !dbg !67
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %4, metadata !68, metadata !DIExpression()), !dbg !178
  store %struct._xmlDoc* null, %struct._xmlDoc** %4, align 8, !dbg !178
  call void @llvm.dbg.declare(metadata i8** %5, metadata !179, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.declare(metadata i32* %6, metadata !183, metadata !DIExpression()), !dbg !184
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %5, align 8, !dbg !185
  %7 = load i8*, i8** %5, align 8, !dbg !186
  %8 = call i64 @strlen(i8* noundef %7) #5, !dbg !187
  %9 = trunc i64 %8 to i32, !dbg !187
  store i32 %9, i32* %6, align 4, !dbg !188
  %10 = load i8*, i8** %5, align 8, !dbg !189
  %11 = load i32, i32* %6, align 4, !dbg !190
  %12 = call %struct._xmlDoc* @xmlReadMemory(i8* noundef %10, i32 noundef %11, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* noundef null, i32 noundef 0), !dbg !191
  store %struct._xmlDoc* %12, %struct._xmlDoc** %4, align 8, !dbg !192
  %13 = load %struct._xmlDoc*, %struct._xmlDoc** %4, align 8, !dbg !193
  %14 = icmp eq %struct._xmlDoc* %13, null, !dbg !195
  br i1 %14, label %15, label %16, !dbg !196

15:                                               ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !197
  br label %38, !dbg !197

16:                                               ; preds = %0
  %17 = load %struct._xmlDoc*, %struct._xmlDoc** %4, align 8, !dbg !199
  %18 = call %struct._xmlSchematronParserCtxt* @xmlSchematronNewDocParserCtxt(%struct._xmlDoc* noundef %17), !dbg !200
  store %struct._xmlSchematronParserCtxt* %18, %struct._xmlSchematronParserCtxt** %2, align 8, !dbg !201
  %19 = load %struct._xmlSchematronParserCtxt*, %struct._xmlSchematronParserCtxt** %2, align 8, !dbg !202
  %20 = icmp eq %struct._xmlSchematronParserCtxt* %19, null, !dbg !204
  br i1 %20, label %21, label %23, !dbg !205

21:                                               ; preds = %16
  %22 = load %struct._xmlDoc*, %struct._xmlDoc** %4, align 8, !dbg !206
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %22), !dbg !208
  store i32 1, i32* %1, align 4, !dbg !209
  br label %38, !dbg !209

23:                                               ; preds = %16
  %24 = load %struct._xmlSchematronParserCtxt*, %struct._xmlSchematronParserCtxt** %2, align 8, !dbg !210
  %25 = call %struct._xmlSchematron* @xmlSchematronParse(%struct._xmlSchematronParserCtxt* noundef %24), !dbg !211
  store %struct._xmlSchematron* %25, %struct._xmlSchematron** %3, align 8, !dbg !212
  %26 = load %struct._xmlSchematron*, %struct._xmlSchematron** %3, align 8, !dbg !213
  %27 = icmp eq %struct._xmlSchematron* %26, null, !dbg !215
  br i1 %27, label %28, label %30, !dbg !216

28:                                               ; preds = %23
  %29 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.3, i64 0, i64 0), i32 noundef 29, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !217
  br label %30, !dbg !219

30:                                               ; preds = %28, %23
  %31 = load %struct._xmlSchematron*, %struct._xmlSchematron** %3, align 8, !dbg !220
  %32 = icmp ne %struct._xmlSchematron* %31, null, !dbg !222
  br i1 %32, label %33, label %35, !dbg !223

33:                                               ; preds = %30
  %34 = load %struct._xmlSchematron*, %struct._xmlSchematron** %3, align 8, !dbg !224
  call void @xmlSchematronFree(%struct._xmlSchematron* noundef %34), !dbg !226
  br label %35, !dbg !227

35:                                               ; preds = %33, %30
  %36 = load %struct._xmlSchematronParserCtxt*, %struct._xmlSchematronParserCtxt** %2, align 8, !dbg !228
  call void @xmlSchematronFreeParserCtxt(%struct._xmlSchematronParserCtxt* noundef %36), !dbg !229
  %37 = load %struct._xmlDoc*, %struct._xmlDoc** %4, align 8, !dbg !230
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %37), !dbg !231
  store i32 0, i32* %1, align 4, !dbg !232
  br label %38, !dbg !232

38:                                               ; preds = %35, %21, %15
  %39 = load i32, i32* %1, align 4, !dbg !233
  ret i32 %39, !dbg !233
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #2

declare %struct._xmlDoc* @xmlReadMemory(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef) #3

declare %struct._xmlSchematronParserCtxt* @xmlSchematronNewDocParserCtxt(%struct._xmlDoc* noundef) #3

declare void @xmlFreeDoc(%struct._xmlDoc* noundef) #3

declare %struct._xmlSchematron* @xmlSchematronParse(%struct._xmlSchematronParserCtxt* noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

declare void @xmlSchematronFree(%struct._xmlSchematron* noundef) #3

declare void @xmlSchematronFreeParserCtxt(%struct._xmlSchematronParserCtxt* noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !40, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/077_schematron.c_353_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "543d8a4f4a15c0c79cead676d2cd2f58")
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
!55 = !DILocalVariable(name: "ctxt", scope: !50, file: !1, line: 7, type: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchematronParserCtxtPtr", file: !57, line: 64, baseType: !58)
!57 = !DIFile(filename: "/usr/include/libxml2/libxml/schematron.h", directory: "", checksumkind: CSK_MD5, checksum: "96d9e0c083c4949e246ce02cf31de483")
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchematronParserCtxt", file: !57, line: 63, baseType: !60)
!60 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchematronParserCtxt", file: !57, line: 63, flags: DIFlagFwdDecl)
!61 = !DILocation(line: 7, column: 32, scope: !50)
!62 = !DILocalVariable(name: "schematron", scope: !50, file: !1, line: 8, type: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchematronPtr", file: !57, line: 38, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchematron", file: !57, line: 37, baseType: !66)
!66 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchematron", file: !57, line: 37, flags: DIFlagFwdDecl)
!67 = !DILocation(line: 8, column: 22, scope: !50)
!68 = !DILocalVariable(name: "doc", scope: !50, file: !1, line: 9, type: !69)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !72)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !73)
!73 = !{!74, !75, !77, !80, !136, !137, !138, !139, !140, !141, !142, !143, !163, !164, !165, !166, !167, !168, !169, !170, !171, !175, !176, !177}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !72, file: !4, line: 560, baseType: !41, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !72, file: !4, line: 561, baseType: !76, size: 32, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !72, file: !4, line: 562, baseType: !78, size: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !72, file: !4, line: 563, baseType: !81, size: 64, offset: 192)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !83)
!83 = !{!84, !85, !86, !92, !93, !94, !95, !96, !97, !99, !112, !114, !131, !132, !133, !135}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !82, file: !4, line: 493, baseType: !41, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !82, file: !4, line: 494, baseType: !76, size: 32, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !82, file: !4, line: 495, baseType: !87, size: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !90, line: 28, baseType: !91)
!90 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!91 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !82, file: !4, line: 496, baseType: !81, size: 64, offset: 192)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !82, file: !4, line: 497, baseType: !81, size: 64, offset: 256)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !82, file: !4, line: 498, baseType: !81, size: 64, offset: 320)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !82, file: !4, line: 499, baseType: !81, size: 64, offset: 384)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !82, file: !4, line: 500, baseType: !81, size: 64, offset: 448)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !82, file: !4, line: 501, baseType: !98, size: 64, offset: 512)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !82, file: !4, line: 504, baseType: !100, size: 64, offset: 576)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !102)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !103)
!103 = !{!104, !106, !108, !109, !110, !111}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !102, file: !4, line: 389, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !102, file: !4, line: 390, baseType: !107, size: 32, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !76)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !102, file: !4, line: 391, baseType: !87, size: 64, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !102, file: !4, line: 392, baseType: !87, size: 64, offset: 192)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !102, file: !4, line: 393, baseType: !41, size: 64, offset: 256)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !102, file: !4, line: 394, baseType: !98, size: 64, offset: 320)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !82, file: !4, line: 505, baseType: !113, size: 64, offset: 640)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !82, file: !4, line: 506, baseType: !115, size: 64, offset: 704)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !130}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !116, file: !4, line: 434, baseType: !41, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !116, file: !4, line: 435, baseType: !76, size: 32, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !116, file: !4, line: 436, baseType: !87, size: 64, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !116, file: !4, line: 437, baseType: !81, size: 64, offset: 192)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !116, file: !4, line: 438, baseType: !81, size: 64, offset: 256)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !116, file: !4, line: 439, baseType: !81, size: 64, offset: 320)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !116, file: !4, line: 440, baseType: !115, size: 64, offset: 384)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !116, file: !4, line: 441, baseType: !115, size: 64, offset: 448)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !116, file: !4, line: 442, baseType: !98, size: 64, offset: 512)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !116, file: !4, line: 443, baseType: !100, size: 64, offset: 576)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !116, file: !4, line: 444, baseType: !129, size: 32, offset: 640)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !116, file: !4, line: 445, baseType: !41, size: 64, offset: 704)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !82, file: !4, line: 507, baseType: !100, size: 64, offset: 768)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !82, file: !4, line: 508, baseType: !41, size: 64, offset: 832)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !82, file: !4, line: 509, baseType: !134, size: 16, offset: 896)
!134 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !82, file: !4, line: 510, baseType: !134, size: 16, offset: 912)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !72, file: !4, line: 564, baseType: !81, size: 64, offset: 256)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !72, file: !4, line: 565, baseType: !81, size: 64, offset: 320)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !72, file: !4, line: 566, baseType: !81, size: 64, offset: 384)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !72, file: !4, line: 567, baseType: !81, size: 64, offset: 448)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !72, file: !4, line: 568, baseType: !98, size: 64, offset: 512)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !72, file: !4, line: 571, baseType: !53, size: 32, offset: 576)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !72, file: !4, line: 572, baseType: !53, size: 32, offset: 608)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !72, file: !4, line: 578, baseType: !144, size: 64, offset: 640)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !146)
!146 = !{!147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !145, file: !4, line: 406, baseType: !41, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !145, file: !4, line: 407, baseType: !76, size: 32, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !145, file: !4, line: 408, baseType: !87, size: 64, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !145, file: !4, line: 409, baseType: !81, size: 64, offset: 192)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !145, file: !4, line: 410, baseType: !81, size: 64, offset: 256)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !145, file: !4, line: 411, baseType: !98, size: 64, offset: 320)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !145, file: !4, line: 412, baseType: !81, size: 64, offset: 384)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !145, file: !4, line: 413, baseType: !81, size: 64, offset: 448)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !145, file: !4, line: 414, baseType: !98, size: 64, offset: 512)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !145, file: !4, line: 417, baseType: !41, size: 64, offset: 576)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !145, file: !4, line: 418, baseType: !41, size: 64, offset: 640)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !145, file: !4, line: 419, baseType: !41, size: 64, offset: 704)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !145, file: !4, line: 420, baseType: !41, size: 64, offset: 768)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !145, file: !4, line: 421, baseType: !87, size: 64, offset: 832)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !145, file: !4, line: 422, baseType: !87, size: 64, offset: 896)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !145, file: !4, line: 423, baseType: !41, size: 64, offset: 960)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !72, file: !4, line: 579, baseType: !144, size: 64, offset: 704)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !72, file: !4, line: 580, baseType: !105, size: 64, offset: 768)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !72, file: !4, line: 581, baseType: !87, size: 64, offset: 832)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !72, file: !4, line: 582, baseType: !87, size: 64, offset: 896)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !72, file: !4, line: 583, baseType: !41, size: 64, offset: 960)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !72, file: !4, line: 584, baseType: !41, size: 64, offset: 1024)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !72, file: !4, line: 585, baseType: !87, size: 64, offset: 1088)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !72, file: !4, line: 586, baseType: !53, size: 32, offset: 1152)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !72, file: !4, line: 588, baseType: !172, size: 64, offset: 1216)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !174, line: 24, flags: DIFlagFwdDecl)
!174 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!175 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !72, file: !4, line: 589, baseType: !41, size: 64, offset: 1280)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !72, file: !4, line: 590, baseType: !53, size: 32, offset: 1344)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !72, file: !4, line: 592, baseType: !53, size: 32, offset: 1376)
!178 = !DILocation(line: 9, column: 15, scope: !50)
!179 = !DILocalVariable(name: "xml_data", scope: !50, file: !1, line: 10, type: !180)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!182 = !DILocation(line: 10, column: 17, scope: !50)
!183 = !DILocalVariable(name: "xml_size", scope: !50, file: !1, line: 11, type: !53)
!184 = !DILocation(line: 11, column: 9, scope: !50)
!185 = !DILocation(line: 13, column: 14, scope: !50)
!186 = !DILocation(line: 14, column: 23, scope: !50)
!187 = !DILocation(line: 14, column: 16, scope: !50)
!188 = !DILocation(line: 14, column: 14, scope: !50)
!189 = !DILocation(line: 16, column: 25, scope: !50)
!190 = !DILocation(line: 16, column: 35, scope: !50)
!191 = !DILocation(line: 16, column: 11, scope: !50)
!192 = !DILocation(line: 16, column: 9, scope: !50)
!193 = !DILocation(line: 17, column: 9, scope: !194)
!194 = distinct !DILexicalBlock(scope: !50, file: !1, line: 17, column: 9)
!195 = !DILocation(line: 17, column: 13, scope: !194)
!196 = !DILocation(line: 17, column: 9, scope: !50)
!197 = !DILocation(line: 18, column: 9, scope: !198)
!198 = distinct !DILexicalBlock(scope: !194, file: !1, line: 17, column: 22)
!199 = !DILocation(line: 21, column: 42, scope: !50)
!200 = !DILocation(line: 21, column: 12, scope: !50)
!201 = !DILocation(line: 21, column: 10, scope: !50)
!202 = !DILocation(line: 22, column: 9, scope: !203)
!203 = distinct !DILexicalBlock(scope: !50, file: !1, line: 22, column: 9)
!204 = !DILocation(line: 22, column: 14, scope: !203)
!205 = !DILocation(line: 22, column: 9, scope: !50)
!206 = !DILocation(line: 23, column: 20, scope: !207)
!207 = distinct !DILexicalBlock(scope: !203, file: !1, line: 22, column: 23)
!208 = !DILocation(line: 23, column: 9, scope: !207)
!209 = !DILocation(line: 24, column: 9, scope: !207)
!210 = !DILocation(line: 27, column: 37, scope: !50)
!211 = !DILocation(line: 27, column: 18, scope: !50)
!212 = !DILocation(line: 27, column: 16, scope: !50)
!213 = !DILocation(line: 28, column: 9, scope: !214)
!214 = distinct !DILexicalBlock(scope: !50, file: !1, line: 28, column: 9)
!215 = !DILocation(line: 28, column: 20, scope: !214)
!216 = !DILocation(line: 28, column: 9, scope: !50)
!217 = !DILocation(line: 29, column: 9, scope: !218)
!218 = distinct !DILexicalBlock(scope: !214, file: !1, line: 28, column: 29)
!219 = !DILocation(line: 30, column: 5, scope: !218)
!220 = !DILocation(line: 32, column: 9, scope: !221)
!221 = distinct !DILexicalBlock(scope: !50, file: !1, line: 32, column: 9)
!222 = !DILocation(line: 32, column: 20, scope: !221)
!223 = !DILocation(line: 32, column: 9, scope: !50)
!224 = !DILocation(line: 33, column: 27, scope: !225)
!225 = distinct !DILexicalBlock(scope: !221, file: !1, line: 32, column: 29)
!226 = !DILocation(line: 33, column: 9, scope: !225)
!227 = !DILocation(line: 34, column: 5, scope: !225)
!228 = !DILocation(line: 35, column: 33, scope: !50)
!229 = !DILocation(line: 35, column: 5, scope: !50)
!230 = !DILocation(line: 36, column: 16, scope: !50)
!231 = !DILocation(line: 36, column: 5, scope: !50)
!232 = !DILocation(line: 37, column: 5, scope: !50)
!233 = !DILocation(line: 38, column: 1, scope: !50)

; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/068_schematron.c_727_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/068_schematron.c_727_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDoc = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, i32, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlNs*, i8*, i8*, i8*, i8*, i8*, i32, %struct._xmlDict*, i8*, i32, i32 }
%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i8*, i16, i16 }
%struct._xmlAttr = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlAttr*, %struct._xmlAttr*, %struct._xmlDoc*, %struct._xmlNs*, i32, i8* }
%struct._xmlDtd = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._xmlNs = type { %struct._xmlNs*, i32, i8*, i8*, i8*, %struct._xmlDoc* }
%struct._xmlDict = type opaque
%struct._xmlSchematronParserCtxt = type opaque
%struct._xmlSchematron = type opaque

@.str = private unnamed_addr constant [9 x i8] c"xml_data\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"noname.xml\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_62911_vul/068_schematron.c_727_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !50 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlDoc*, align 8
  %3 = alloca %struct._xmlSchematronParserCtxt*, align 8
  %4 = alloca %struct._xmlSchematron*, align 8
  %5 = alloca [1024 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %2, metadata !55, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.declare(metadata %struct._xmlSchematronParserCtxt** %3, metadata !166, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.declare(metadata %struct._xmlSchematron** %4, metadata !173, metadata !DIExpression()), !dbg !178
  call void @xmlInitParser(), !dbg !179
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !180, metadata !DIExpression()), !dbg !184
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !185
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 1024, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !dbg !186
  %7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 1023, !dbg !187
  store i8 0, i8* %7, align 1, !dbg !188
  %8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !189
  %9 = call %struct._xmlDoc* @xmlReadMemory(i8* noundef %8, i32 noundef 1023, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* noundef null, i32 noundef 0), !dbg !190
  store %struct._xmlDoc* %9, %struct._xmlDoc** %2, align 8, !dbg !191
  %10 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !192
  %11 = icmp eq %struct._xmlDoc* %10, null, !dbg !194
  br i1 %11, label %12, label %13, !dbg !195

12:                                               ; preds = %0
  call void @xmlCleanupParser(), !dbg !196
  store i32 0, i32* %1, align 4, !dbg !198
  br label %32, !dbg !198

13:                                               ; preds = %0
  %14 = call %struct._xmlSchematronParserCtxt* @xmlSchematronNewParserCtxt(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)), !dbg !199
  store %struct._xmlSchematronParserCtxt* %14, %struct._xmlSchematronParserCtxt** %3, align 8, !dbg !200
  %15 = load %struct._xmlSchematronParserCtxt*, %struct._xmlSchematronParserCtxt** %3, align 8, !dbg !201
  %16 = icmp eq %struct._xmlSchematronParserCtxt* %15, null, !dbg !203
  br i1 %16, label %17, label %19, !dbg !204

17:                                               ; preds = %13
  %18 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !205
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %18), !dbg !207
  call void @xmlCleanupParser(), !dbg !208
  store i32 0, i32* %1, align 4, !dbg !209
  br label %32, !dbg !209

19:                                               ; preds = %13
  %20 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !210
  %21 = call i32 (%struct._xmlDoc*, ...) bitcast (i32 (...)* @xmlSchematronNewParserCtxtDoc to i32 (%struct._xmlDoc*, ...)*)(%struct._xmlDoc* noundef %20), !dbg !211
  %22 = sext i32 %21 to i64, !dbg !211
  %23 = inttoptr i64 %22 to %struct._xmlSchematron*, !dbg !211
  store %struct._xmlSchematron* %23, %struct._xmlSchematron** %4, align 8, !dbg !212
  %24 = load %struct._xmlSchematron*, %struct._xmlSchematron** %4, align 8, !dbg !213
  %25 = icmp ne %struct._xmlSchematron* %24, null, !dbg !215
  br i1 %25, label %26, label %29, !dbg !216

26:                                               ; preds = %19
  %27 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.3, i64 0, i64 0), i32 noundef 41, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !217
  %28 = load %struct._xmlSchematron*, %struct._xmlSchematron** %4, align 8, !dbg !219
  call void @xmlSchematronFree(%struct._xmlSchematron* noundef %28), !dbg !220
  br label %29, !dbg !221

29:                                               ; preds = %26, %19
  %30 = load %struct._xmlSchematronParserCtxt*, %struct._xmlSchematronParserCtxt** %3, align 8, !dbg !222
  call void @xmlSchematronFreeParserCtxt(%struct._xmlSchematronParserCtxt* noundef %30), !dbg !223
  %31 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !224
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %31), !dbg !225
  call void @xmlCleanupParser(), !dbg !226
  store i32 0, i32* %1, align 4, !dbg !227
  br label %32, !dbg !227

32:                                               ; preds = %29, %17, %12
  %33 = load i32, i32* %1, align 4, !dbg !228
  ret i32 %33, !dbg !228
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @xmlInitParser() #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare %struct._xmlDoc* @xmlReadMemory(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef) #2

declare void @xmlCleanupParser() #2

declare %struct._xmlSchematronParserCtxt* @xmlSchematronNewParserCtxt(i8* noundef) #2

declare void @xmlFreeDoc(%struct._xmlDoc* noundef) #2

declare i32 @xmlSchematronNewParserCtxtDoc(...) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare void @xmlSchematronFree(%struct._xmlSchematron* noundef) #2

declare void @xmlSchematronFreeParserCtxt(%struct._xmlSchematronParserCtxt* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !40, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/068_schematron.c_727_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "03ac8b6d483547f5be7610435d50d1e4")
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
!55 = !DILocalVariable(name: "doc", scope: !50, file: !1, line: 7, type: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !59)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !60)
!60 = !{!61, !62, !64, !67, !123, !124, !125, !126, !127, !128, !129, !130, !150, !151, !152, !153, !154, !155, !156, !157, !158, !162, !163, !164}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !59, file: !4, line: 560, baseType: !41, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !59, file: !4, line: 561, baseType: !63, size: 32, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !59, file: !4, line: 562, baseType: !65, size: 64, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !59, file: !4, line: 563, baseType: !68, size: 64, offset: 192)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !70)
!70 = !{!71, !72, !73, !79, !80, !81, !82, !83, !84, !86, !99, !101, !118, !119, !120, !122}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !69, file: !4, line: 493, baseType: !41, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !69, file: !4, line: 494, baseType: !63, size: 32, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !69, file: !4, line: 495, baseType: !74, size: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !77, line: 28, baseType: !78)
!77 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!78 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !69, file: !4, line: 496, baseType: !68, size: 64, offset: 192)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !69, file: !4, line: 497, baseType: !68, size: 64, offset: 256)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !69, file: !4, line: 498, baseType: !68, size: 64, offset: 320)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !69, file: !4, line: 499, baseType: !68, size: 64, offset: 384)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !69, file: !4, line: 500, baseType: !68, size: 64, offset: 448)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !69, file: !4, line: 501, baseType: !85, size: 64, offset: 512)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !69, file: !4, line: 504, baseType: !87, size: 64, offset: 576)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !89)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !90)
!90 = !{!91, !93, !95, !96, !97, !98}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !89, file: !4, line: 389, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !89, file: !4, line: 390, baseType: !94, size: 32, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !63)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !89, file: !4, line: 391, baseType: !74, size: 64, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !89, file: !4, line: 392, baseType: !74, size: 64, offset: 192)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !89, file: !4, line: 393, baseType: !41, size: 64, offset: 256)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !89, file: !4, line: 394, baseType: !85, size: 64, offset: 320)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !69, file: !4, line: 505, baseType: !100, size: 64, offset: 640)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !69, file: !4, line: 506, baseType: !102, size: 64, offset: 704)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !104)
!104 = !{!105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !117}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !103, file: !4, line: 434, baseType: !41, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !103, file: !4, line: 435, baseType: !63, size: 32, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !103, file: !4, line: 436, baseType: !74, size: 64, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !103, file: !4, line: 437, baseType: !68, size: 64, offset: 192)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !103, file: !4, line: 438, baseType: !68, size: 64, offset: 256)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !103, file: !4, line: 439, baseType: !68, size: 64, offset: 320)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !103, file: !4, line: 440, baseType: !102, size: 64, offset: 384)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !103, file: !4, line: 441, baseType: !102, size: 64, offset: 448)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !103, file: !4, line: 442, baseType: !85, size: 64, offset: 512)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !103, file: !4, line: 443, baseType: !87, size: 64, offset: 576)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !103, file: !4, line: 444, baseType: !116, size: 32, offset: 640)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !103, file: !4, line: 445, baseType: !41, size: 64, offset: 704)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !69, file: !4, line: 507, baseType: !87, size: 64, offset: 768)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !69, file: !4, line: 508, baseType: !41, size: 64, offset: 832)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !69, file: !4, line: 509, baseType: !121, size: 16, offset: 896)
!121 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !69, file: !4, line: 510, baseType: !121, size: 16, offset: 912)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !59, file: !4, line: 564, baseType: !68, size: 64, offset: 256)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !59, file: !4, line: 565, baseType: !68, size: 64, offset: 320)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !59, file: !4, line: 566, baseType: !68, size: 64, offset: 384)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !59, file: !4, line: 567, baseType: !68, size: 64, offset: 448)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !59, file: !4, line: 568, baseType: !85, size: 64, offset: 512)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !59, file: !4, line: 571, baseType: !53, size: 32, offset: 576)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !59, file: !4, line: 572, baseType: !53, size: 32, offset: 608)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !59, file: !4, line: 578, baseType: !131, size: 64, offset: 640)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !133)
!133 = !{!134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !132, file: !4, line: 406, baseType: !41, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !132, file: !4, line: 407, baseType: !63, size: 32, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !132, file: !4, line: 408, baseType: !74, size: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !132, file: !4, line: 409, baseType: !68, size: 64, offset: 192)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !132, file: !4, line: 410, baseType: !68, size: 64, offset: 256)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !132, file: !4, line: 411, baseType: !85, size: 64, offset: 320)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !132, file: !4, line: 412, baseType: !68, size: 64, offset: 384)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !132, file: !4, line: 413, baseType: !68, size: 64, offset: 448)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !132, file: !4, line: 414, baseType: !85, size: 64, offset: 512)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !132, file: !4, line: 417, baseType: !41, size: 64, offset: 576)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !132, file: !4, line: 418, baseType: !41, size: 64, offset: 640)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !132, file: !4, line: 419, baseType: !41, size: 64, offset: 704)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !132, file: !4, line: 420, baseType: !41, size: 64, offset: 768)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !132, file: !4, line: 421, baseType: !74, size: 64, offset: 832)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !132, file: !4, line: 422, baseType: !74, size: 64, offset: 896)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !132, file: !4, line: 423, baseType: !41, size: 64, offset: 960)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !59, file: !4, line: 579, baseType: !131, size: 64, offset: 704)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !59, file: !4, line: 580, baseType: !92, size: 64, offset: 768)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !59, file: !4, line: 581, baseType: !74, size: 64, offset: 832)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !59, file: !4, line: 582, baseType: !74, size: 64, offset: 896)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !59, file: !4, line: 583, baseType: !41, size: 64, offset: 960)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !59, file: !4, line: 584, baseType: !41, size: 64, offset: 1024)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !59, file: !4, line: 585, baseType: !74, size: 64, offset: 1088)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !59, file: !4, line: 586, baseType: !53, size: 32, offset: 1152)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !59, file: !4, line: 588, baseType: !159, size: 64, offset: 1216)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !161, line: 24, flags: DIFlagFwdDecl)
!161 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!162 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !59, file: !4, line: 589, baseType: !41, size: 64, offset: 1280)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !59, file: !4, line: 590, baseType: !53, size: 32, offset: 1344)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !59, file: !4, line: 592, baseType: !53, size: 32, offset: 1376)
!165 = !DILocation(line: 7, column: 15, scope: !50)
!166 = !DILocalVariable(name: "parserCtxt", scope: !50, file: !1, line: 8, type: !167)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchematronParserCtxtPtr", file: !168, line: 64, baseType: !169)
!168 = !DIFile(filename: "/usr/include/libxml2/libxml/schematron.h", directory: "", checksumkind: CSK_MD5, checksum: "96d9e0c083c4949e246ce02cf31de483")
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchematronParserCtxt", file: !168, line: 63, baseType: !171)
!171 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchematronParserCtxt", file: !168, line: 63, flags: DIFlagFwdDecl)
!172 = !DILocation(line: 8, column: 32, scope: !50)
!173 = !DILocalVariable(name: "schematron", scope: !50, file: !1, line: 9, type: !174)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchematronPtr", file: !168, line: 38, baseType: !175)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchematron", file: !168, line: 37, baseType: !177)
!177 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchematron", file: !168, line: 37, flags: DIFlagFwdDecl)
!178 = !DILocation(line: 9, column: 22, scope: !50)
!179 = !DILocation(line: 12, column: 5, scope: !50)
!180 = !DILocalVariable(name: "xml_data", scope: !50, file: !1, line: 15, type: !181)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 8192, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 1024)
!184 = !DILocation(line: 15, column: 10, scope: !50)
!185 = !DILocation(line: 16, column: 24, scope: !50)
!186 = !DILocation(line: 16, column: 5, scope: !50)
!187 = !DILocation(line: 18, column: 5, scope: !50)
!188 = !DILocation(line: 18, column: 34, scope: !50)
!189 = !DILocation(line: 20, column: 25, scope: !50)
!190 = !DILocation(line: 20, column: 11, scope: !50)
!191 = !DILocation(line: 20, column: 9, scope: !50)
!192 = !DILocation(line: 21, column: 9, scope: !193)
!193 = distinct !DILexicalBlock(scope: !50, file: !1, line: 21, column: 9)
!194 = !DILocation(line: 21, column: 13, scope: !193)
!195 = !DILocation(line: 21, column: 9, scope: !50)
!196 = !DILocation(line: 23, column: 9, scope: !197)
!197 = distinct !DILexicalBlock(scope: !193, file: !1, line: 21, column: 22)
!198 = !DILocation(line: 24, column: 9, scope: !197)
!199 = !DILocation(line: 28, column: 18, scope: !50)
!200 = !DILocation(line: 28, column: 16, scope: !50)
!201 = !DILocation(line: 29, column: 9, scope: !202)
!202 = distinct !DILexicalBlock(scope: !50, file: !1, line: 29, column: 9)
!203 = !DILocation(line: 29, column: 20, scope: !202)
!204 = !DILocation(line: 29, column: 9, scope: !50)
!205 = !DILocation(line: 30, column: 20, scope: !206)
!206 = distinct !DILexicalBlock(scope: !202, file: !1, line: 29, column: 29)
!207 = !DILocation(line: 30, column: 9, scope: !206)
!208 = !DILocation(line: 31, column: 9, scope: !206)
!209 = !DILocation(line: 32, column: 9, scope: !206)
!210 = !DILocation(line: 37, column: 48, scope: !50)
!211 = !DILocation(line: 37, column: 18, scope: !50)
!212 = !DILocation(line: 37, column: 16, scope: !50)
!213 = !DILocation(line: 38, column: 9, scope: !214)
!214 = distinct !DILexicalBlock(scope: !50, file: !1, line: 38, column: 9)
!215 = !DILocation(line: 38, column: 20, scope: !214)
!216 = !DILocation(line: 38, column: 9, scope: !50)
!217 = !DILocation(line: 41, column: 9, scope: !218)
!218 = distinct !DILexicalBlock(scope: !214, file: !1, line: 38, column: 29)
!219 = !DILocation(line: 44, column: 27, scope: !218)
!220 = !DILocation(line: 44, column: 9, scope: !218)
!221 = !DILocation(line: 45, column: 5, scope: !218)
!222 = !DILocation(line: 48, column: 33, scope: !50)
!223 = !DILocation(line: 48, column: 5, scope: !50)
!224 = !DILocation(line: 49, column: 16, scope: !50)
!225 = !DILocation(line: 49, column: 5, scope: !50)
!226 = !DILocation(line: 50, column: 5, scope: !50)
!227 = !DILocation(line: 52, column: 5, scope: !50)
!228 = !DILocation(line: 53, column: 1, scope: !50)

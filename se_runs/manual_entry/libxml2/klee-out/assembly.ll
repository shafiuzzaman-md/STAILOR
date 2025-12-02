; ModuleID = 'se_runs/manual_entry/libxml2/libxml2_manual_entry.bc'
source_filename = "drivers/manual_entry/libxml2_manual_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDoc = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, i32, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlNs*, i8*, i8*, i8*, i8*, i8*, i32, %struct._xmlDict*, i8*, i32, i32 }
%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i8*, i16, i16 }
%struct._xmlAttr = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlAttr*, %struct._xmlAttr*, %struct._xmlDoc*, %struct._xmlNs*, i32, i8* }
%struct._xmlDtd = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._xmlNs = type { %struct._xmlNs*, i32, i8*, i8*, i8*, %struct._xmlDoc* }
%struct._xmlDict = type opaque

@.str = private unnamed_addr constant [8 x i8] c"xml_buf\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"xml_len\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"input.xml\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !48 {
  %1 = alloca i32, align 4
  %2 = alloca [1025 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlDoc*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [1025 x i8]* %2, metadata !53, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata i32* %3, metadata !59, metadata !DIExpression()), !dbg !60
  %5 = bitcast [1025 x i8]* %2 to i8*, !dbg !61
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 1025, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)), !dbg !62
  %6 = bitcast i32* %3 to i8*, !dbg !63
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)), !dbg !64
  call void @xmlInitParser(), !dbg !65
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %4, metadata !66, metadata !DIExpression()), !dbg !176
  %7 = getelementptr inbounds [1025 x i8], [1025 x i8]* %2, i64 0, i64 0, !dbg !177
  %8 = load i32, i32* %3, align 4, !dbg !178
  %9 = call %struct._xmlDoc* @xmlReadMemory(i8* noundef %7, i32 noundef %8, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* noundef null, i32 noundef 0), !dbg !179
  store %struct._xmlDoc* %9, %struct._xmlDoc** %4, align 8, !dbg !180
  ret i32 0, !dbg !181
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @xmlInitParser() #2

declare %struct._xmlDoc* @xmlReadMemory(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/manual_entry/libxml2_manual_entry.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "736a6be5196bd91ec66e2532d427a5d4")
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
!40 = !{i32 7, !"Dwarf Version", i32 5}
!41 = !{i32 2, !"Debug Info Version", i32 3}
!42 = !{i32 1, !"wchar_size", i32 4}
!43 = !{i32 7, !"PIC Level", i32 2}
!44 = !{i32 7, !"PIE Level", i32 2}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"Ubuntu clang version 14.0.6"}
!48 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 17, type: !49, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !52)
!49 = !DISubroutineType(types: !50)
!50 = !{!51}
!51 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!52 = !{}
!53 = !DILocalVariable(name: "buf", scope: !48, file: !1, line: 19, type: !54)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 8200, elements: !56)
!55 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!56 = !{!57}
!57 = !DISubrange(count: 1025)
!58 = !DILocation(line: 19, column: 10, scope: !48)
!59 = !DILocalVariable(name: "len", scope: !48, file: !1, line: 20, type: !51)
!60 = !DILocation(line: 20, column: 9, scope: !48)
!61 = !DILocation(line: 22, column: 24, scope: !48)
!62 = !DILocation(line: 22, column: 5, scope: !48)
!63 = !DILocation(line: 23, column: 24, scope: !48)
!64 = !DILocation(line: 23, column: 5, scope: !48)
!65 = !DILocation(line: 26, column: 5, scope: !48)
!66 = !DILocalVariable(name: "doc", scope: !48, file: !1, line: 29, type: !67)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !70)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !71)
!71 = !{!72, !74, !76, !78, !134, !135, !136, !137, !138, !139, !140, !141, !161, !162, !163, !164, !165, !166, !167, !168, !169, !173, !174, !175}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !70, file: !4, line: 560, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !70, file: !4, line: 561, baseType: !75, size: 32, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !70, file: !4, line: 562, baseType: !77, size: 64, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !70, file: !4, line: 563, baseType: !79, size: 64, offset: 192)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !81)
!81 = !{!82, !83, !84, !90, !91, !92, !93, !94, !95, !97, !110, !112, !129, !130, !131, !133}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !80, file: !4, line: 493, baseType: !73, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !80, file: !4, line: 494, baseType: !75, size: 32, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !80, file: !4, line: 495, baseType: !85, size: 64, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !88, line: 28, baseType: !89)
!88 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!89 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !80, file: !4, line: 496, baseType: !79, size: 64, offset: 192)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !80, file: !4, line: 497, baseType: !79, size: 64, offset: 256)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !80, file: !4, line: 498, baseType: !79, size: 64, offset: 320)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !80, file: !4, line: 499, baseType: !79, size: 64, offset: 384)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !80, file: !4, line: 500, baseType: !79, size: 64, offset: 448)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !80, file: !4, line: 501, baseType: !96, size: 64, offset: 512)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !80, file: !4, line: 504, baseType: !98, size: 64, offset: 576)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !100)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !101)
!101 = !{!102, !104, !106, !107, !108, !109}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !100, file: !4, line: 389, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !100, file: !4, line: 390, baseType: !105, size: 32, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !75)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !100, file: !4, line: 391, baseType: !85, size: 64, offset: 128)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !100, file: !4, line: 392, baseType: !85, size: 64, offset: 192)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !100, file: !4, line: 393, baseType: !73, size: 64, offset: 256)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !100, file: !4, line: 394, baseType: !96, size: 64, offset: 320)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !80, file: !4, line: 505, baseType: !111, size: 64, offset: 640)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !80, file: !4, line: 506, baseType: !113, size: 64, offset: 704)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !115)
!115 = !{!116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !128}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !114, file: !4, line: 434, baseType: !73, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !114, file: !4, line: 435, baseType: !75, size: 32, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !114, file: !4, line: 436, baseType: !85, size: 64, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !114, file: !4, line: 437, baseType: !79, size: 64, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !114, file: !4, line: 438, baseType: !79, size: 64, offset: 256)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !114, file: !4, line: 439, baseType: !79, size: 64, offset: 320)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !114, file: !4, line: 440, baseType: !113, size: 64, offset: 384)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !114, file: !4, line: 441, baseType: !113, size: 64, offset: 448)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !114, file: !4, line: 442, baseType: !96, size: 64, offset: 512)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !114, file: !4, line: 443, baseType: !98, size: 64, offset: 576)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !114, file: !4, line: 444, baseType: !127, size: 32, offset: 640)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !114, file: !4, line: 445, baseType: !73, size: 64, offset: 704)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !80, file: !4, line: 507, baseType: !98, size: 64, offset: 768)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !80, file: !4, line: 508, baseType: !73, size: 64, offset: 832)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !80, file: !4, line: 509, baseType: !132, size: 16, offset: 896)
!132 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !80, file: !4, line: 510, baseType: !132, size: 16, offset: 912)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !70, file: !4, line: 564, baseType: !79, size: 64, offset: 256)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !70, file: !4, line: 565, baseType: !79, size: 64, offset: 320)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !70, file: !4, line: 566, baseType: !79, size: 64, offset: 384)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !70, file: !4, line: 567, baseType: !79, size: 64, offset: 448)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !70, file: !4, line: 568, baseType: !96, size: 64, offset: 512)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !70, file: !4, line: 571, baseType: !51, size: 32, offset: 576)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !70, file: !4, line: 572, baseType: !51, size: 32, offset: 608)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !70, file: !4, line: 578, baseType: !142, size: 64, offset: 640)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !144)
!144 = !{!145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !143, file: !4, line: 406, baseType: !73, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !143, file: !4, line: 407, baseType: !75, size: 32, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !143, file: !4, line: 408, baseType: !85, size: 64, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !143, file: !4, line: 409, baseType: !79, size: 64, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !143, file: !4, line: 410, baseType: !79, size: 64, offset: 256)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !143, file: !4, line: 411, baseType: !96, size: 64, offset: 320)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !143, file: !4, line: 412, baseType: !79, size: 64, offset: 384)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !143, file: !4, line: 413, baseType: !79, size: 64, offset: 448)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !143, file: !4, line: 414, baseType: !96, size: 64, offset: 512)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !143, file: !4, line: 417, baseType: !73, size: 64, offset: 576)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !143, file: !4, line: 418, baseType: !73, size: 64, offset: 640)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !143, file: !4, line: 419, baseType: !73, size: 64, offset: 704)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !143, file: !4, line: 420, baseType: !73, size: 64, offset: 768)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !143, file: !4, line: 421, baseType: !85, size: 64, offset: 832)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !143, file: !4, line: 422, baseType: !85, size: 64, offset: 896)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !143, file: !4, line: 423, baseType: !73, size: 64, offset: 960)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !70, file: !4, line: 579, baseType: !142, size: 64, offset: 704)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !70, file: !4, line: 580, baseType: !103, size: 64, offset: 768)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !70, file: !4, line: 581, baseType: !85, size: 64, offset: 832)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !70, file: !4, line: 582, baseType: !85, size: 64, offset: 896)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !70, file: !4, line: 583, baseType: !73, size: 64, offset: 960)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !70, file: !4, line: 584, baseType: !73, size: 64, offset: 1024)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !70, file: !4, line: 585, baseType: !85, size: 64, offset: 1088)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !70, file: !4, line: 586, baseType: !51, size: 32, offset: 1152)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !70, file: !4, line: 588, baseType: !170, size: 64, offset: 1216)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !172, line: 24, flags: DIFlagFwdDecl)
!172 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!173 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !70, file: !4, line: 589, baseType: !73, size: 64, offset: 1280)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !70, file: !4, line: 590, baseType: !51, size: 32, offset: 1344)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !70, file: !4, line: 592, baseType: !51, size: 32, offset: 1376)
!176 = !DILocation(line: 29, column: 15, scope: !48)
!177 = !DILocation(line: 30, column: 25, scope: !48)
!178 = !DILocation(line: 30, column: 30, scope: !48)
!179 = !DILocation(line: 30, column: 11, scope: !48)
!180 = !DILocation(line: 30, column: 9, scope: !48)
!181 = !DILocation(line: 32, column: 5, scope: !48)

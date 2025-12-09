; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/170_tree.c_7880_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/170_tree.c_7880_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDOMWrapCtxt = type { i8*, i32, i8*, %struct._xmlNs* (%struct._xmlDOMWrapCtxt*, %struct._xmlNode*, i8*, i8*)* }
%struct._xmlNs = type { %struct._xmlNs*, i32, i8*, i8*, i8*, %struct._xmlDoc* }
%struct._xmlDoc = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, i32, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlNs*, i8*, i8*, i8*, i8*, i8*, i32, %struct._xmlDict*, i8*, i32, i32 }
%struct._xmlDtd = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._xmlDict = type opaque
%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i8*, i16, i16 }
%struct._xmlAttr = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlAttr*, %struct._xmlAttr*, %struct._xmlDoc*, %struct._xmlNs*, i32, i8* }

@.str = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.1 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/170_tree.c_7880_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !50 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlDOMWrapCtxt*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlDOMWrapCtxt** %2, metadata !55, metadata !DIExpression()), !dbg !179
  %3 = call %struct._xmlDOMWrapCtxt* @xmlDOMWrapNewCtxt(), !dbg !180
  store %struct._xmlDOMWrapCtxt* %3, %struct._xmlDOMWrapCtxt** %2, align 8, !dbg !181
  %4 = load %struct._xmlDOMWrapCtxt*, %struct._xmlDOMWrapCtxt** %2, align 8, !dbg !182
  %5 = icmp ne %struct._xmlDOMWrapCtxt* %4, null, !dbg !184
  br i1 %5, label %6, label %9, !dbg !185

6:                                                ; preds = %0
  %7 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.1, i64 0, i64 0), i32 noundef 11, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !186
  %8 = load %struct._xmlDOMWrapCtxt*, %struct._xmlDOMWrapCtxt** %2, align 8, !dbg !188
  call void @xmlDOMWrapFreeCtxt(%struct._xmlDOMWrapCtxt* noundef %8), !dbg !189
  br label %9, !dbg !190

9:                                                ; preds = %6, %0
  ret i32 0, !dbg !191
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct._xmlDOMWrapCtxt* @xmlDOMWrapNewCtxt() #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare void @xmlDOMWrapFreeCtxt(%struct._xmlDOMWrapCtxt* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !40, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/170_tree.c_7880_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "65c2b795c08983c45d58822d56cfe8ee")
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
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDOMWrapCtxtPtr", file: !4, line: 602, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDOMWrapCtxt", file: !4, line: 601, baseType: !59)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDOMWrapCtxt", file: !4, line: 625, size: 256, elements: !60)
!60 = !{!61, !62, !63, !64}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !59, file: !4, line: 626, baseType: !41, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !59, file: !4, line: 631, baseType: !53, size: 32, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "namespaceMap", scope: !59, file: !4, line: 635, baseType: !41, size: 64, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "getNsForNodeFunc", scope: !59, file: !4, line: 640, baseType: !65, size: 64, offset: 192)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDOMWrapAcquireNsFunction", file: !4, line: 615, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DISubroutineType(types: !68)
!68 = !{!69, !56, !176, !80, !80}
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsPtr", file: !4, line: 387, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !72)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !73)
!73 = !{!74, !76, !79, !85, !86, !87}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !72, file: !4, line: 389, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !72, file: !4, line: 390, baseType: !77, size: 32, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !72, file: !4, line: 391, baseType: !80, size: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !83, line: 28, baseType: !84)
!83 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!84 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !72, file: !4, line: 392, baseType: !80, size: 64, offset: 192)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !72, file: !4, line: 393, baseType: !41, size: 64, offset: 256)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !72, file: !4, line: 394, baseType: !88, size: 64, offset: 320)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !90)
!90 = !{!91, !92, !93, !96, !134, !135, !136, !137, !138, !139, !140, !141, !161, !162, !163, !164, !165, !166, !167, !168, !169, !173, !174, !175}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !89, file: !4, line: 560, baseType: !41, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !89, file: !4, line: 561, baseType: !78, size: 32, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !89, file: !4, line: 562, baseType: !94, size: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !89, file: !4, line: 563, baseType: !97, size: 64, offset: 192)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !99)
!99 = !{!100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !112, !129, !130, !131, !133}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !98, file: !4, line: 493, baseType: !41, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !98, file: !4, line: 494, baseType: !78, size: 32, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !98, file: !4, line: 495, baseType: !80, size: 64, offset: 128)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !98, file: !4, line: 496, baseType: !97, size: 64, offset: 192)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !98, file: !4, line: 497, baseType: !97, size: 64, offset: 256)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !98, file: !4, line: 498, baseType: !97, size: 64, offset: 320)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !98, file: !4, line: 499, baseType: !97, size: 64, offset: 384)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !98, file: !4, line: 500, baseType: !97, size: 64, offset: 448)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !98, file: !4, line: 501, baseType: !88, size: 64, offset: 512)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !98, file: !4, line: 504, baseType: !70, size: 64, offset: 576)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !98, file: !4, line: 505, baseType: !111, size: 64, offset: 640)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !98, file: !4, line: 506, baseType: !113, size: 64, offset: 704)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !115)
!115 = !{!116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !128}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !114, file: !4, line: 434, baseType: !41, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !114, file: !4, line: 435, baseType: !78, size: 32, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !114, file: !4, line: 436, baseType: !80, size: 64, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !114, file: !4, line: 437, baseType: !97, size: 64, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !114, file: !4, line: 438, baseType: !97, size: 64, offset: 256)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !114, file: !4, line: 439, baseType: !97, size: 64, offset: 320)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !114, file: !4, line: 440, baseType: !113, size: 64, offset: 384)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !114, file: !4, line: 441, baseType: !113, size: 64, offset: 448)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !114, file: !4, line: 442, baseType: !88, size: 64, offset: 512)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !114, file: !4, line: 443, baseType: !70, size: 64, offset: 576)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !114, file: !4, line: 444, baseType: !127, size: 32, offset: 640)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !114, file: !4, line: 445, baseType: !41, size: 64, offset: 704)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !98, file: !4, line: 507, baseType: !70, size: 64, offset: 768)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !98, file: !4, line: 508, baseType: !41, size: 64, offset: 832)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !98, file: !4, line: 509, baseType: !132, size: 16, offset: 896)
!132 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !98, file: !4, line: 510, baseType: !132, size: 16, offset: 912)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !89, file: !4, line: 564, baseType: !97, size: 64, offset: 256)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !89, file: !4, line: 565, baseType: !97, size: 64, offset: 320)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !89, file: !4, line: 566, baseType: !97, size: 64, offset: 384)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !89, file: !4, line: 567, baseType: !97, size: 64, offset: 448)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !89, file: !4, line: 568, baseType: !88, size: 64, offset: 512)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !89, file: !4, line: 571, baseType: !53, size: 32, offset: 576)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !89, file: !4, line: 572, baseType: !53, size: 32, offset: 608)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !89, file: !4, line: 578, baseType: !142, size: 64, offset: 640)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !144)
!144 = !{!145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !143, file: !4, line: 406, baseType: !41, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !143, file: !4, line: 407, baseType: !78, size: 32, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !143, file: !4, line: 408, baseType: !80, size: 64, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !143, file: !4, line: 409, baseType: !97, size: 64, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !143, file: !4, line: 410, baseType: !97, size: 64, offset: 256)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !143, file: !4, line: 411, baseType: !88, size: 64, offset: 320)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !143, file: !4, line: 412, baseType: !97, size: 64, offset: 384)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !143, file: !4, line: 413, baseType: !97, size: 64, offset: 448)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !143, file: !4, line: 414, baseType: !88, size: 64, offset: 512)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !143, file: !4, line: 417, baseType: !41, size: 64, offset: 576)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !143, file: !4, line: 418, baseType: !41, size: 64, offset: 640)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !143, file: !4, line: 419, baseType: !41, size: 64, offset: 704)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !143, file: !4, line: 420, baseType: !41, size: 64, offset: 768)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !143, file: !4, line: 421, baseType: !80, size: 64, offset: 832)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !143, file: !4, line: 422, baseType: !80, size: 64, offset: 896)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !143, file: !4, line: 423, baseType: !41, size: 64, offset: 960)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !89, file: !4, line: 579, baseType: !142, size: 64, offset: 704)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !89, file: !4, line: 580, baseType: !75, size: 64, offset: 768)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !89, file: !4, line: 581, baseType: !80, size: 64, offset: 832)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !89, file: !4, line: 582, baseType: !80, size: 64, offset: 896)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !89, file: !4, line: 583, baseType: !41, size: 64, offset: 960)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !89, file: !4, line: 584, baseType: !41, size: 64, offset: 1024)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !89, file: !4, line: 585, baseType: !80, size: 64, offset: 1088)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !89, file: !4, line: 586, baseType: !53, size: 32, offset: 1152)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !89, file: !4, line: 588, baseType: !170, size: 64, offset: 1216)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !172, line: 24, flags: DIFlagFwdDecl)
!172 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!173 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !89, file: !4, line: 589, baseType: !41, size: 64, offset: 1280)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !89, file: !4, line: 590, baseType: !53, size: 32, offset: 1344)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !89, file: !4, line: 592, baseType: !53, size: 32, offset: 1376)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !4, line: 491, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !4, line: 490, baseType: !98)
!179 = !DILocation(line: 7, column: 23, scope: !50)
!180 = !DILocation(line: 9, column: 12, scope: !50)
!181 = !DILocation(line: 9, column: 10, scope: !50)
!182 = !DILocation(line: 10, column: 9, scope: !183)
!183 = distinct !DILexicalBlock(scope: !50, file: !1, line: 10, column: 9)
!184 = !DILocation(line: 10, column: 14, scope: !183)
!185 = !DILocation(line: 10, column: 9, scope: !50)
!186 = !DILocation(line: 11, column: 9, scope: !187)
!187 = distinct !DILexicalBlock(scope: !183, file: !1, line: 10, column: 23)
!188 = !DILocation(line: 12, column: 28, scope: !187)
!189 = !DILocation(line: 12, column: 9, scope: !187)
!190 = !DILocation(line: 13, column: 5, scope: !187)
!191 = !DILocation(line: 15, column: 5, scope: !50)

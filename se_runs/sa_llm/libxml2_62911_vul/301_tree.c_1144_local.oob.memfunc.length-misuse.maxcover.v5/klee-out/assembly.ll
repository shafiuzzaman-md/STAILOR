; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/301_tree.c_1144_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/301_tree.c_1144_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDoc = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, i32, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlNs*, i8*, i8*, i8*, i8*, i8*, i32, %struct._xmlDict*, i8*, i32, i32 }
%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i8*, i16, i16 }
%struct._xmlAttr = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlAttr*, %struct._xmlAttr*, %struct._xmlDoc*, %struct._xmlNs*, i32, i8* }
%struct._xmlDtd = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._xmlNs = type { %struct._xmlNs*, i32, i8*, i8*, i8*, %struct._xmlDoc* }
%struct._xmlDict = type opaque

@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/301_tree.c_1144_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !55 {
  %1 = alloca i32, align 4
  %2 = alloca [100 x i8], align 16
  %3 = alloca %struct._xmlDoc*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [100 x i8]* %2, metadata !60, metadata !DIExpression()), !dbg !65
  %4 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0, !dbg !66
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 100, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)), !dbg !67
  %5 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 99, !dbg !68
  store i8 0, i8* %5, align 1, !dbg !69
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %3, metadata !70, metadata !DIExpression()), !dbg !174
  %6 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0, !dbg !175
  %7 = call %struct._xmlDoc* @xmlNewDoc(i8* noundef %6), !dbg !176
  store %struct._xmlDoc* %7, %struct._xmlDoc** %3, align 8, !dbg !174
  %8 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !177
  %9 = icmp ne %struct._xmlDoc* %8, null, !dbg !179
  br i1 %9, label %10, label %13, !dbg !180

10:                                               ; preds = %0
  %11 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.2, i64 0, i64 0), i32 noundef 19, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !181
  %12 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !183
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %12), !dbg !184
  br label %13, !dbg !185

13:                                               ; preds = %10, %0
  call void @xmlCleanupParser(), !dbg !186
  ret i32 0, !dbg !187
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare %struct._xmlDoc* @xmlNewDoc(i8* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare void @xmlFreeDoc(%struct._xmlDoc* noundef) #2

declare void @xmlCleanupParser() #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !40, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/301_tree.c_1144_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "607c5fc5ee53a410cacd8d7a0ec699df")
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
!40 = !{!41, !46}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !44, line: 28, baseType: !45)
!44 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!45 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!47 = !{i32 7, !"Dwarf Version", i32 5}
!48 = !{i32 2, !"Debug Info Version", i32 3}
!49 = !{i32 1, !"wchar_size", i32 4}
!50 = !{i32 7, !"PIC Level", i32 2}
!51 = !{i32 7, !"PIE Level", i32 2}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"Ubuntu clang version 14.0.6"}
!55 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 5, type: !56, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !59)
!56 = !DISubroutineType(types: !57)
!57 = !{!58}
!58 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!59 = !{}
!60 = !DILocalVariable(name: "version", scope: !55, file: !1, line: 7, type: !61)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 800, elements: !63)
!62 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!63 = !{!64}
!64 = !DISubrange(count: 100)
!65 = !DILocation(line: 7, column: 10, scope: !55)
!66 = !DILocation(line: 8, column: 24, scope: !55)
!67 = !DILocation(line: 8, column: 5, scope: !55)
!68 = !DILocation(line: 10, column: 5, scope: !55)
!69 = !DILocation(line: 10, column: 34, scope: !55)
!70 = !DILocalVariable(name: "doc", scope: !55, file: !1, line: 13, type: !71)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !74)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !75)
!75 = !{!76, !77, !79, !81, !132, !133, !134, !135, !136, !137, !138, !139, !159, !160, !161, !162, !163, !164, !165, !166, !167, !171, !172, !173}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !74, file: !4, line: 560, baseType: !46, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !74, file: !4, line: 561, baseType: !78, size: 32, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !74, file: !4, line: 562, baseType: !80, size: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !74, file: !4, line: 563, baseType: !82, size: 64, offset: 192)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !84)
!84 = !{!85, !86, !87, !88, !89, !90, !91, !92, !93, !95, !108, !110, !127, !128, !129, !131}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !83, file: !4, line: 493, baseType: !46, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !83, file: !4, line: 494, baseType: !78, size: 32, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !83, file: !4, line: 495, baseType: !41, size: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !83, file: !4, line: 496, baseType: !82, size: 64, offset: 192)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !83, file: !4, line: 497, baseType: !82, size: 64, offset: 256)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !83, file: !4, line: 498, baseType: !82, size: 64, offset: 320)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !83, file: !4, line: 499, baseType: !82, size: 64, offset: 384)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !83, file: !4, line: 500, baseType: !82, size: 64, offset: 448)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !83, file: !4, line: 501, baseType: !94, size: 64, offset: 512)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !83, file: !4, line: 504, baseType: !96, size: 64, offset: 576)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !98)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !99)
!99 = !{!100, !102, !104, !105, !106, !107}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !98, file: !4, line: 389, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !98, file: !4, line: 390, baseType: !103, size: 32, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !78)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !98, file: !4, line: 391, baseType: !41, size: 64, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !98, file: !4, line: 392, baseType: !41, size: 64, offset: 192)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !98, file: !4, line: 393, baseType: !46, size: 64, offset: 256)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !98, file: !4, line: 394, baseType: !94, size: 64, offset: 320)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !83, file: !4, line: 505, baseType: !109, size: 64, offset: 640)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !83, file: !4, line: 506, baseType: !111, size: 64, offset: 704)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !113)
!113 = !{!114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !126}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !112, file: !4, line: 434, baseType: !46, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !112, file: !4, line: 435, baseType: !78, size: 32, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !112, file: !4, line: 436, baseType: !41, size: 64, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !112, file: !4, line: 437, baseType: !82, size: 64, offset: 192)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !112, file: !4, line: 438, baseType: !82, size: 64, offset: 256)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !112, file: !4, line: 439, baseType: !82, size: 64, offset: 320)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !112, file: !4, line: 440, baseType: !111, size: 64, offset: 384)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !112, file: !4, line: 441, baseType: !111, size: 64, offset: 448)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !112, file: !4, line: 442, baseType: !94, size: 64, offset: 512)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !112, file: !4, line: 443, baseType: !96, size: 64, offset: 576)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !112, file: !4, line: 444, baseType: !125, size: 32, offset: 640)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !112, file: !4, line: 445, baseType: !46, size: 64, offset: 704)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !83, file: !4, line: 507, baseType: !96, size: 64, offset: 768)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !83, file: !4, line: 508, baseType: !46, size: 64, offset: 832)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !83, file: !4, line: 509, baseType: !130, size: 16, offset: 896)
!130 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !83, file: !4, line: 510, baseType: !130, size: 16, offset: 912)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !74, file: !4, line: 564, baseType: !82, size: 64, offset: 256)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !74, file: !4, line: 565, baseType: !82, size: 64, offset: 320)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !74, file: !4, line: 566, baseType: !82, size: 64, offset: 384)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !74, file: !4, line: 567, baseType: !82, size: 64, offset: 448)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !74, file: !4, line: 568, baseType: !94, size: 64, offset: 512)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !74, file: !4, line: 571, baseType: !58, size: 32, offset: 576)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !74, file: !4, line: 572, baseType: !58, size: 32, offset: 608)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !74, file: !4, line: 578, baseType: !140, size: 64, offset: 640)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !142)
!142 = !{!143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !141, file: !4, line: 406, baseType: !46, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !141, file: !4, line: 407, baseType: !78, size: 32, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !141, file: !4, line: 408, baseType: !41, size: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !141, file: !4, line: 409, baseType: !82, size: 64, offset: 192)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !141, file: !4, line: 410, baseType: !82, size: 64, offset: 256)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !141, file: !4, line: 411, baseType: !94, size: 64, offset: 320)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !141, file: !4, line: 412, baseType: !82, size: 64, offset: 384)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !141, file: !4, line: 413, baseType: !82, size: 64, offset: 448)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !141, file: !4, line: 414, baseType: !94, size: 64, offset: 512)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !141, file: !4, line: 417, baseType: !46, size: 64, offset: 576)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !141, file: !4, line: 418, baseType: !46, size: 64, offset: 640)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !141, file: !4, line: 419, baseType: !46, size: 64, offset: 704)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !141, file: !4, line: 420, baseType: !46, size: 64, offset: 768)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !141, file: !4, line: 421, baseType: !41, size: 64, offset: 832)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !141, file: !4, line: 422, baseType: !41, size: 64, offset: 896)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !141, file: !4, line: 423, baseType: !46, size: 64, offset: 960)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !74, file: !4, line: 579, baseType: !140, size: 64, offset: 704)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !74, file: !4, line: 580, baseType: !101, size: 64, offset: 768)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !74, file: !4, line: 581, baseType: !41, size: 64, offset: 832)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !74, file: !4, line: 582, baseType: !41, size: 64, offset: 896)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !74, file: !4, line: 583, baseType: !46, size: 64, offset: 960)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !74, file: !4, line: 584, baseType: !46, size: 64, offset: 1024)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !74, file: !4, line: 585, baseType: !41, size: 64, offset: 1088)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !74, file: !4, line: 586, baseType: !58, size: 32, offset: 1152)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !74, file: !4, line: 588, baseType: !168, size: 64, offset: 1216)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !170, line: 24, flags: DIFlagFwdDecl)
!170 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!171 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !74, file: !4, line: 589, baseType: !46, size: 64, offset: 1280)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !74, file: !4, line: 590, baseType: !58, size: 32, offset: 1344)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !74, file: !4, line: 592, baseType: !58, size: 32, offset: 1376)
!174 = !DILocation(line: 13, column: 15, scope: !55)
!175 = !DILocation(line: 13, column: 48, scope: !55)
!176 = !DILocation(line: 13, column: 21, scope: !55)
!177 = !DILocation(line: 17, column: 9, scope: !178)
!178 = distinct !DILexicalBlock(scope: !55, file: !1, line: 17, column: 9)
!179 = !DILocation(line: 17, column: 13, scope: !178)
!180 = !DILocation(line: 17, column: 9, scope: !55)
!181 = !DILocation(line: 19, column: 9, scope: !182)
!182 = distinct !DILexicalBlock(scope: !178, file: !1, line: 17, column: 22)
!183 = !DILocation(line: 21, column: 20, scope: !182)
!184 = !DILocation(line: 21, column: 9, scope: !182)
!185 = !DILocation(line: 22, column: 5, scope: !182)
!186 = !DILocation(line: 25, column: 5, scope: !55)
!187 = !DILocation(line: 26, column: 5, scope: !55)

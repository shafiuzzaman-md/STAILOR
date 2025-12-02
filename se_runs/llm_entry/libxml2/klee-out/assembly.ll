; ModuleID = 'se_runs/llm_entry/libxml2/libxml2_llm_entry.bc'
source_filename = "drivers/llm_entry/libxml2_llm_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDoc = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, i32, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlNs*, i8*, i8*, i8*, i8*, i8*, i32, %struct._xmlDict*, i8*, i32, i32 }
%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i8*, i16, i16 }
%struct._xmlAttr = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlAttr*, %struct._xmlAttr*, %struct._xmlDoc*, %struct._xmlNs*, i32, i8* }
%struct._xmlDtd = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._xmlNs = type { %struct._xmlNs*, i32, i8*, i8*, i8*, %struct._xmlDoc* }
%struct._xmlDict = type opaque

@.str = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"noname.xml\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !50 {
  %1 = alloca i32, align 4
  %2 = alloca [1024 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlDoc*, align 8
  store i32 0, i32* %1, align 4
  call void @xmlInitParser(), !dbg !55
  call void @llvm.dbg.declare(metadata [1024 x i8]* %2, metadata !56, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata i32* %3, metadata !62, metadata !DIExpression()), !dbg !63
  %5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !64
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 1024, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !65
  %6 = bitcast i32* %3 to i8*, !dbg !66
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !67
  %7 = load i32, i32* %3, align 4, !dbg !68
  %8 = icmp sge i32 %7, 0, !dbg !69
  br i1 %8, label %9, label %12, !dbg !70

9:                                                ; preds = %0
  %10 = load i32, i32* %3, align 4, !dbg !71
  %11 = icmp slt i32 %10, 1024, !dbg !72
  br label %12

12:                                               ; preds = %9, %0
  %13 = phi i1 [ false, %0 ], [ %11, %9 ], !dbg !73
  %14 = zext i1 %13 to i32, !dbg !70
  %15 = sext i32 %14 to i64, !dbg !68
  call void @klee_assume(i64 noundef %15), !dbg !74
  %16 = load i32, i32* %3, align 4, !dbg !75
  %17 = sext i32 %16 to i64, !dbg !76
  %18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 %17, !dbg !76
  store i8 0, i8* %18, align 1, !dbg !77
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %4, metadata !78, metadata !DIExpression()), !dbg !187
  %19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !188
  %20 = load i32, i32* %3, align 4, !dbg !189
  %21 = call %struct._xmlDoc* @xmlReadMemory(i8* noundef %19, i32 noundef %20, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* noundef null, i32 noundef 0), !dbg !190
  store %struct._xmlDoc* %21, %struct._xmlDoc** %4, align 8, !dbg !187
  %22 = load %struct._xmlDoc*, %struct._xmlDoc** %4, align 8, !dbg !191
  %23 = icmp ne %struct._xmlDoc* %22, null, !dbg !193
  br i1 %23, label %24, label %26, !dbg !194

24:                                               ; preds = %12
  %25 = load %struct._xmlDoc*, %struct._xmlDoc** %4, align 8, !dbg !195
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %25), !dbg !197
  br label %26, !dbg !198

26:                                               ; preds = %24, %12
  call void @xmlCleanupParser(), !dbg !199
  ret i32 0, !dbg !200
}

declare void @xmlInitParser() #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #1

declare void @klee_assume(i64 noundef) #1

declare %struct._xmlDoc* @xmlReadMemory(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef) #1

declare void @xmlFreeDoc(%struct._xmlDoc* noundef) #1

declare void @xmlCleanupParser() #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !40, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/llm_entry/libxml2_llm_entry.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "0e8e1d00adb987d78c5cfe78bcf89861")
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
!50 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 15, type: !51, scopeLine: 15, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !54)
!51 = !DISubroutineType(types: !52)
!52 = !{!53}
!53 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!54 = !{}
!55 = !DILocation(line: 17, column: 5, scope: !50)
!56 = !DILocalVariable(name: "buf", scope: !50, file: !1, line: 20, type: !57)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 8192, elements: !59)
!58 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!59 = !{!60}
!60 = !DISubrange(count: 1024)
!61 = !DILocation(line: 20, column: 10, scope: !50)
!62 = !DILocalVariable(name: "len", scope: !50, file: !1, line: 21, type: !53)
!63 = !DILocation(line: 21, column: 9, scope: !50)
!64 = !DILocation(line: 23, column: 24, scope: !50)
!65 = !DILocation(line: 23, column: 5, scope: !50)
!66 = !DILocation(line: 24, column: 24, scope: !50)
!67 = !DILocation(line: 24, column: 5, scope: !50)
!68 = !DILocation(line: 27, column: 17, scope: !50)
!69 = !DILocation(line: 27, column: 21, scope: !50)
!70 = !DILocation(line: 27, column: 26, scope: !50)
!71 = !DILocation(line: 27, column: 29, scope: !50)
!72 = !DILocation(line: 27, column: 33, scope: !50)
!73 = !DILocation(line: 0, scope: !50)
!74 = !DILocation(line: 27, column: 5, scope: !50)
!75 = !DILocation(line: 30, column: 9, scope: !50)
!76 = !DILocation(line: 30, column: 5, scope: !50)
!77 = !DILocation(line: 30, column: 14, scope: !50)
!78 = !DILocalVariable(name: "doc", scope: !50, file: !1, line: 33, type: !79)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !82)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !83)
!83 = !{!84, !85, !87, !89, !145, !146, !147, !148, !149, !150, !151, !152, !172, !173, !174, !175, !176, !177, !178, !179, !180, !184, !185, !186}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !82, file: !4, line: 560, baseType: !41, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !82, file: !4, line: 561, baseType: !86, size: 32, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !82, file: !4, line: 562, baseType: !88, size: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !82, file: !4, line: 563, baseType: !90, size: 64, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !92)
!92 = !{!93, !94, !95, !101, !102, !103, !104, !105, !106, !108, !121, !123, !140, !141, !142, !144}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !91, file: !4, line: 493, baseType: !41, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !91, file: !4, line: 494, baseType: !86, size: 32, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !91, file: !4, line: 495, baseType: !96, size: 64, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !99, line: 28, baseType: !100)
!99 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!100 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !91, file: !4, line: 496, baseType: !90, size: 64, offset: 192)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !91, file: !4, line: 497, baseType: !90, size: 64, offset: 256)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !91, file: !4, line: 498, baseType: !90, size: 64, offset: 320)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !91, file: !4, line: 499, baseType: !90, size: 64, offset: 384)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !91, file: !4, line: 500, baseType: !90, size: 64, offset: 448)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !91, file: !4, line: 501, baseType: !107, size: 64, offset: 512)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !91, file: !4, line: 504, baseType: !109, size: 64, offset: 576)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !111)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !112)
!112 = !{!113, !115, !117, !118, !119, !120}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !111, file: !4, line: 389, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !111, file: !4, line: 390, baseType: !116, size: 32, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !86)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !111, file: !4, line: 391, baseType: !96, size: 64, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !111, file: !4, line: 392, baseType: !96, size: 64, offset: 192)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !111, file: !4, line: 393, baseType: !41, size: 64, offset: 256)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !111, file: !4, line: 394, baseType: !107, size: 64, offset: 320)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !91, file: !4, line: 505, baseType: !122, size: 64, offset: 640)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !91, file: !4, line: 506, baseType: !124, size: 64, offset: 704)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !126)
!126 = !{!127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !139}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !125, file: !4, line: 434, baseType: !41, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !125, file: !4, line: 435, baseType: !86, size: 32, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !125, file: !4, line: 436, baseType: !96, size: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !125, file: !4, line: 437, baseType: !90, size: 64, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !125, file: !4, line: 438, baseType: !90, size: 64, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !125, file: !4, line: 439, baseType: !90, size: 64, offset: 320)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !125, file: !4, line: 440, baseType: !124, size: 64, offset: 384)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !125, file: !4, line: 441, baseType: !124, size: 64, offset: 448)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !125, file: !4, line: 442, baseType: !107, size: 64, offset: 512)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !125, file: !4, line: 443, baseType: !109, size: 64, offset: 576)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !125, file: !4, line: 444, baseType: !138, size: 32, offset: 640)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !125, file: !4, line: 445, baseType: !41, size: 64, offset: 704)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !91, file: !4, line: 507, baseType: !109, size: 64, offset: 768)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !91, file: !4, line: 508, baseType: !41, size: 64, offset: 832)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !91, file: !4, line: 509, baseType: !143, size: 16, offset: 896)
!143 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !91, file: !4, line: 510, baseType: !143, size: 16, offset: 912)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !82, file: !4, line: 564, baseType: !90, size: 64, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !82, file: !4, line: 565, baseType: !90, size: 64, offset: 320)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !82, file: !4, line: 566, baseType: !90, size: 64, offset: 384)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !82, file: !4, line: 567, baseType: !90, size: 64, offset: 448)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !82, file: !4, line: 568, baseType: !107, size: 64, offset: 512)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !82, file: !4, line: 571, baseType: !53, size: 32, offset: 576)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !82, file: !4, line: 572, baseType: !53, size: 32, offset: 608)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !82, file: !4, line: 578, baseType: !153, size: 64, offset: 640)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !155)
!155 = !{!156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !154, file: !4, line: 406, baseType: !41, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !154, file: !4, line: 407, baseType: !86, size: 32, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !154, file: !4, line: 408, baseType: !96, size: 64, offset: 128)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !154, file: !4, line: 409, baseType: !90, size: 64, offset: 192)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !154, file: !4, line: 410, baseType: !90, size: 64, offset: 256)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !154, file: !4, line: 411, baseType: !107, size: 64, offset: 320)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !154, file: !4, line: 412, baseType: !90, size: 64, offset: 384)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !154, file: !4, line: 413, baseType: !90, size: 64, offset: 448)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !154, file: !4, line: 414, baseType: !107, size: 64, offset: 512)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !154, file: !4, line: 417, baseType: !41, size: 64, offset: 576)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !154, file: !4, line: 418, baseType: !41, size: 64, offset: 640)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !154, file: !4, line: 419, baseType: !41, size: 64, offset: 704)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !154, file: !4, line: 420, baseType: !41, size: 64, offset: 768)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !154, file: !4, line: 421, baseType: !96, size: 64, offset: 832)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !154, file: !4, line: 422, baseType: !96, size: 64, offset: 896)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !154, file: !4, line: 423, baseType: !41, size: 64, offset: 960)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !82, file: !4, line: 579, baseType: !153, size: 64, offset: 704)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !82, file: !4, line: 580, baseType: !114, size: 64, offset: 768)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !82, file: !4, line: 581, baseType: !96, size: 64, offset: 832)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !82, file: !4, line: 582, baseType: !96, size: 64, offset: 896)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !82, file: !4, line: 583, baseType: !41, size: 64, offset: 960)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !82, file: !4, line: 584, baseType: !41, size: 64, offset: 1024)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !82, file: !4, line: 585, baseType: !96, size: 64, offset: 1088)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !82, file: !4, line: 586, baseType: !53, size: 32, offset: 1152)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !82, file: !4, line: 588, baseType: !181, size: 64, offset: 1216)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !183, line: 24, flags: DIFlagFwdDecl)
!183 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!184 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !82, file: !4, line: 589, baseType: !41, size: 64, offset: 1280)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !82, file: !4, line: 590, baseType: !53, size: 32, offset: 1344)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !82, file: !4, line: 592, baseType: !53, size: 32, offset: 1376)
!187 = !DILocation(line: 33, column: 15, scope: !50)
!188 = !DILocation(line: 33, column: 35, scope: !50)
!189 = !DILocation(line: 33, column: 40, scope: !50)
!190 = !DILocation(line: 33, column: 21, scope: !50)
!191 = !DILocation(line: 36, column: 9, scope: !192)
!192 = distinct !DILexicalBlock(scope: !50, file: !1, line: 36, column: 9)
!193 = !DILocation(line: 36, column: 13, scope: !192)
!194 = !DILocation(line: 36, column: 9, scope: !50)
!195 = !DILocation(line: 37, column: 20, scope: !196)
!196 = distinct !DILexicalBlock(scope: !192, file: !1, line: 36, column: 22)
!197 = !DILocation(line: 37, column: 9, scope: !196)
!198 = !DILocation(line: 38, column: 5, scope: !196)
!199 = !DILocation(line: 41, column: 5, scope: !50)
!200 = !DILocation(line: 43, column: 5, scope: !50)

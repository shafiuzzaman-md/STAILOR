; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/045_HTMLparser.c_2445_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/045_HTMLparser.c_2445_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDoc = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, i32, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlNs*, i8*, i8*, i8*, i8*, i8*, i32, %struct._xmlDict*, i8*, i32, i32 }
%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i8*, i16, i16 }
%struct._xmlAttr = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlAttr*, %struct._xmlAttr*, %struct._xmlDoc*, %struct._xmlNs*, i32, i8* }
%struct._xmlDtd = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._xmlNs = type { %struct._xmlNs*, i32, i8*, i8*, i8*, %struct._xmlDoc* }
%struct._xmlDict = type opaque

@.str = private unnamed_addr constant [10 x i8] c"html_size\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"html_content\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [109 x i8] c"se_runs/sa_llm/libxml2_62911_vul/045_HTMLparser.c_2445_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !67 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlDoc*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !72, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.declare(metadata i32* %3, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %4, metadata !76, metadata !DIExpression()), !dbg !185
  %5 = bitcast i32* %3 to i8*, !dbg !186
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)), !dbg !187
  %6 = load i32, i32* %3, align 4, !dbg !188
  %7 = icmp slt i32 %6, 0, !dbg !190
  br i1 %7, label %8, label %9, !dbg !191

8:                                                ; preds = %0
  store i32 0, i32* %3, align 4, !dbg !192
  br label %9, !dbg !193

9:                                                ; preds = %8, %0
  %10 = load i32, i32* %3, align 4, !dbg !194
  %11 = icmp sgt i32 %10, 1024, !dbg !196
  br i1 %11, label %12, label %13, !dbg !197

12:                                               ; preds = %9
  store i32 1024, i32* %3, align 4, !dbg !198
  br label %13, !dbg !199

13:                                               ; preds = %12, %9
  %14 = load i32, i32* %3, align 4, !dbg !200
  %15 = add nsw i32 %14, 1, !dbg !201
  %16 = sext i32 %15 to i64, !dbg !200
  %17 = call noalias i8* @malloc(i64 noundef %16) #5, !dbg !202
  store i8* %17, i8** %2, align 8, !dbg !203
  %18 = load i8*, i8** %2, align 8, !dbg !204
  %19 = load i32, i32* %3, align 4, !dbg !205
  %20 = add nsw i32 %19, 1, !dbg !206
  %21 = sext i32 %20 to i64, !dbg !205
  call void @klee_make_symbolic(i8* noundef %18, i64 noundef %21, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0)), !dbg !207
  %22 = load i8*, i8** %2, align 8, !dbg !208
  %23 = load i32, i32* %3, align 4, !dbg !209
  %24 = sext i32 %23 to i64, !dbg !210
  %25 = getelementptr inbounds i8, i8* %22, i64 %24, !dbg !210
  store i8 0, i8* %25, align 1, !dbg !211
  call void @xmlInitParser(), !dbg !212
  %26 = load i8*, i8** %2, align 8, !dbg !213
  %27 = load i32, i32* %3, align 4, !dbg !214
  %28 = call %struct._xmlDoc* @htmlReadMemory(i8* noundef %26, i32 noundef %27, i8* noundef null, i8* noundef null, i32 noundef 97), !dbg !215
  store %struct._xmlDoc* %28, %struct._xmlDoc** %4, align 8, !dbg !216
  %29 = load %struct._xmlDoc*, %struct._xmlDoc** %4, align 8, !dbg !217
  %30 = icmp ne %struct._xmlDoc* %29, null, !dbg !219
  br i1 %30, label %31, label %34, !dbg !220

31:                                               ; preds = %13
  %32 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.3, i64 0, i64 0), i32 noundef 31, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !221
  %33 = load %struct._xmlDoc*, %struct._xmlDoc** %4, align 8, !dbg !223
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %33), !dbg !224
  br label %34, !dbg !225

34:                                               ; preds = %31, %13
  %35 = load i8*, i8** %2, align 8, !dbg !226
  call void @free(i8* noundef %35) #5, !dbg !227
  call void @xmlCleanupParser(), !dbg !228
  ret i32 0, !dbg !229
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

declare void @xmlInitParser() #2

declare %struct._xmlDoc* @htmlReadMemory(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

declare void @xmlFreeDoc(%struct._xmlDoc* noundef) #2

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

declare void @xmlCleanupParser() #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !53, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/045_HTMLparser.c_2445_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "34f745dc3a86ac472e98d322e65620bc")
!2 = !{!3, !28, !40}
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
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !41, line: 178, baseType: !5, size: 32, elements: !42)
!41 = !DIFile(filename: "/usr/include/libxml2/libxml/HTMLparser.h", directory: "", checksumkind: CSK_MD5, checksum: "d57891c89573ed6dce04b8133e7438d2")
!42 = !{!43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!43 = !DIEnumerator(name: "HTML_PARSE_RECOVER", value: 1)
!44 = !DIEnumerator(name: "HTML_PARSE_NODEFDTD", value: 4)
!45 = !DIEnumerator(name: "HTML_PARSE_NOERROR", value: 32)
!46 = !DIEnumerator(name: "HTML_PARSE_NOWARNING", value: 64)
!47 = !DIEnumerator(name: "HTML_PARSE_PEDANTIC", value: 128)
!48 = !DIEnumerator(name: "HTML_PARSE_NOBLANKS", value: 256)
!49 = !DIEnumerator(name: "HTML_PARSE_NONET", value: 2048)
!50 = !DIEnumerator(name: "HTML_PARSE_NOIMPLIED", value: 8192)
!51 = !DIEnumerator(name: "HTML_PARSE_COMPACT", value: 65536)
!52 = !DIEnumerator(name: "HTML_PARSE_IGNORE_ENC", value: 2097152)
!53 = !{!54, !57, !58}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!56 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!59 = !{i32 7, !"Dwarf Version", i32 5}
!60 = !{i32 2, !"Debug Info Version", i32 3}
!61 = !{i32 1, !"wchar_size", i32 4}
!62 = !{i32 7, !"PIC Level", i32 2}
!63 = !{i32 7, !"PIE Level", i32 2}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"Ubuntu clang version 14.0.6"}
!67 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 6, type: !68, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !71)
!68 = !DISubroutineType(types: !69)
!69 = !{!70}
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !{}
!72 = !DILocalVariable(name: "html_content", scope: !67, file: !1, line: 7, type: !54)
!73 = !DILocation(line: 7, column: 17, scope: !67)
!74 = !DILocalVariable(name: "html_size", scope: !67, file: !1, line: 8, type: !70)
!75 = !DILocation(line: 8, column: 9, scope: !67)
!76 = !DILocalVariable(name: "doc", scope: !67, file: !1, line: 9, type: !77)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "htmlDocPtr", file: !41, line: 34, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !81)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !82)
!82 = !{!83, !84, !86, !87, !143, !144, !145, !146, !147, !148, !149, !150, !170, !171, !172, !173, !174, !175, !176, !177, !178, !182, !183, !184}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !81, file: !4, line: 560, baseType: !57, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !81, file: !4, line: 561, baseType: !85, size: 32, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !81, file: !4, line: 562, baseType: !58, size: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !81, file: !4, line: 563, baseType: !88, size: 64, offset: 192)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !90)
!90 = !{!91, !92, !93, !99, !100, !101, !102, !103, !104, !106, !119, !121, !138, !139, !140, !142}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !89, file: !4, line: 493, baseType: !57, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !89, file: !4, line: 494, baseType: !85, size: 32, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !89, file: !4, line: 495, baseType: !94, size: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !97, line: 28, baseType: !98)
!97 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!98 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !89, file: !4, line: 496, baseType: !88, size: 64, offset: 192)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !89, file: !4, line: 497, baseType: !88, size: 64, offset: 256)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !89, file: !4, line: 498, baseType: !88, size: 64, offset: 320)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !89, file: !4, line: 499, baseType: !88, size: 64, offset: 384)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !89, file: !4, line: 500, baseType: !88, size: 64, offset: 448)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !89, file: !4, line: 501, baseType: !105, size: 64, offset: 512)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !89, file: !4, line: 504, baseType: !107, size: 64, offset: 576)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !109)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !110)
!110 = !{!111, !113, !115, !116, !117, !118}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !109, file: !4, line: 389, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !109, file: !4, line: 390, baseType: !114, size: 32, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !85)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !109, file: !4, line: 391, baseType: !94, size: 64, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !109, file: !4, line: 392, baseType: !94, size: 64, offset: 192)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !109, file: !4, line: 393, baseType: !57, size: 64, offset: 256)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !109, file: !4, line: 394, baseType: !105, size: 64, offset: 320)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !89, file: !4, line: 505, baseType: !120, size: 64, offset: 640)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !89, file: !4, line: 506, baseType: !122, size: 64, offset: 704)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !124)
!124 = !{!125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !137}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !123, file: !4, line: 434, baseType: !57, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !123, file: !4, line: 435, baseType: !85, size: 32, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !123, file: !4, line: 436, baseType: !94, size: 64, offset: 128)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !123, file: !4, line: 437, baseType: !88, size: 64, offset: 192)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !123, file: !4, line: 438, baseType: !88, size: 64, offset: 256)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !123, file: !4, line: 439, baseType: !88, size: 64, offset: 320)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !123, file: !4, line: 440, baseType: !122, size: 64, offset: 384)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !123, file: !4, line: 441, baseType: !122, size: 64, offset: 448)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !123, file: !4, line: 442, baseType: !105, size: 64, offset: 512)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !123, file: !4, line: 443, baseType: !107, size: 64, offset: 576)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !123, file: !4, line: 444, baseType: !136, size: 32, offset: 640)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !123, file: !4, line: 445, baseType: !57, size: 64, offset: 704)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !89, file: !4, line: 507, baseType: !107, size: 64, offset: 768)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !89, file: !4, line: 508, baseType: !57, size: 64, offset: 832)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !89, file: !4, line: 509, baseType: !141, size: 16, offset: 896)
!141 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !89, file: !4, line: 510, baseType: !141, size: 16, offset: 912)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !81, file: !4, line: 564, baseType: !88, size: 64, offset: 256)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !81, file: !4, line: 565, baseType: !88, size: 64, offset: 320)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !81, file: !4, line: 566, baseType: !88, size: 64, offset: 384)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !81, file: !4, line: 567, baseType: !88, size: 64, offset: 448)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !81, file: !4, line: 568, baseType: !105, size: 64, offset: 512)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !81, file: !4, line: 571, baseType: !70, size: 32, offset: 576)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !81, file: !4, line: 572, baseType: !70, size: 32, offset: 608)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !81, file: !4, line: 578, baseType: !151, size: 64, offset: 640)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !153)
!153 = !{!154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !152, file: !4, line: 406, baseType: !57, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !152, file: !4, line: 407, baseType: !85, size: 32, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !152, file: !4, line: 408, baseType: !94, size: 64, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !152, file: !4, line: 409, baseType: !88, size: 64, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !152, file: !4, line: 410, baseType: !88, size: 64, offset: 256)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !152, file: !4, line: 411, baseType: !105, size: 64, offset: 320)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !152, file: !4, line: 412, baseType: !88, size: 64, offset: 384)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !152, file: !4, line: 413, baseType: !88, size: 64, offset: 448)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !152, file: !4, line: 414, baseType: !105, size: 64, offset: 512)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !152, file: !4, line: 417, baseType: !57, size: 64, offset: 576)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !152, file: !4, line: 418, baseType: !57, size: 64, offset: 640)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !152, file: !4, line: 419, baseType: !57, size: 64, offset: 704)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !152, file: !4, line: 420, baseType: !57, size: 64, offset: 768)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !152, file: !4, line: 421, baseType: !94, size: 64, offset: 832)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !152, file: !4, line: 422, baseType: !94, size: 64, offset: 896)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !152, file: !4, line: 423, baseType: !57, size: 64, offset: 960)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !81, file: !4, line: 579, baseType: !151, size: 64, offset: 704)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !81, file: !4, line: 580, baseType: !112, size: 64, offset: 768)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !81, file: !4, line: 581, baseType: !94, size: 64, offset: 832)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !81, file: !4, line: 582, baseType: !94, size: 64, offset: 896)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !81, file: !4, line: 583, baseType: !57, size: 64, offset: 960)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !81, file: !4, line: 584, baseType: !57, size: 64, offset: 1024)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !81, file: !4, line: 585, baseType: !94, size: 64, offset: 1088)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !81, file: !4, line: 586, baseType: !70, size: 32, offset: 1152)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !81, file: !4, line: 588, baseType: !179, size: 64, offset: 1216)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !181, line: 24, flags: DIFlagFwdDecl)
!181 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!182 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !81, file: !4, line: 589, baseType: !57, size: 64, offset: 1280)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !81, file: !4, line: 590, baseType: !70, size: 32, offset: 1344)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !81, file: !4, line: 592, baseType: !70, size: 32, offset: 1376)
!185 = !DILocation(line: 9, column: 16, scope: !67)
!186 = !DILocation(line: 12, column: 24, scope: !67)
!187 = !DILocation(line: 12, column: 5, scope: !67)
!188 = !DILocation(line: 14, column: 9, scope: !189)
!189 = distinct !DILexicalBlock(scope: !67, file: !1, line: 14, column: 9)
!190 = !DILocation(line: 14, column: 19, scope: !189)
!191 = !DILocation(line: 14, column: 9, scope: !67)
!192 = !DILocation(line: 14, column: 34, scope: !189)
!193 = !DILocation(line: 14, column: 24, scope: !189)
!194 = !DILocation(line: 15, column: 9, scope: !195)
!195 = distinct !DILexicalBlock(scope: !67, file: !1, line: 15, column: 9)
!196 = !DILocation(line: 15, column: 19, scope: !195)
!197 = !DILocation(line: 15, column: 9, scope: !67)
!198 = !DILocation(line: 15, column: 37, scope: !195)
!199 = !DILocation(line: 15, column: 27, scope: !195)
!200 = !DILocation(line: 17, column: 40, scope: !67)
!201 = !DILocation(line: 17, column: 50, scope: !67)
!202 = !DILocation(line: 17, column: 33, scope: !67)
!203 = !DILocation(line: 17, column: 18, scope: !67)
!204 = !DILocation(line: 18, column: 31, scope: !67)
!205 = !DILocation(line: 18, column: 45, scope: !67)
!206 = !DILocation(line: 18, column: 55, scope: !67)
!207 = !DILocation(line: 18, column: 5, scope: !67)
!208 = !DILocation(line: 20, column: 13, scope: !67)
!209 = !DILocation(line: 20, column: 27, scope: !67)
!210 = !DILocation(line: 20, column: 5, scope: !67)
!211 = !DILocation(line: 20, column: 38, scope: !67)
!212 = !DILocation(line: 23, column: 5, scope: !67)
!213 = !DILocation(line: 26, column: 26, scope: !67)
!214 = !DILocation(line: 26, column: 40, scope: !67)
!215 = !DILocation(line: 26, column: 11, scope: !67)
!216 = !DILocation(line: 26, column: 9, scope: !67)
!217 = !DILocation(line: 29, column: 9, scope: !218)
!218 = distinct !DILexicalBlock(scope: !67, file: !1, line: 29, column: 9)
!219 = !DILocation(line: 29, column: 13, scope: !218)
!220 = !DILocation(line: 29, column: 9, scope: !67)
!221 = !DILocation(line: 31, column: 9, scope: !222)
!222 = distinct !DILexicalBlock(scope: !218, file: !1, line: 29, column: 22)
!223 = !DILocation(line: 33, column: 20, scope: !222)
!224 = !DILocation(line: 33, column: 9, scope: !222)
!225 = !DILocation(line: 34, column: 5, scope: !222)
!226 = !DILocation(line: 36, column: 17, scope: !67)
!227 = !DILocation(line: 36, column: 5, scope: !67)
!228 = !DILocation(line: 37, column: 5, scope: !67)
!229 = !DILocation(line: 38, column: 5, scope: !67)

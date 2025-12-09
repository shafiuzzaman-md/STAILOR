; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/211_tree.c_5962_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/211_tree.c_5962_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDoc = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, i32, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlNs*, i8*, i8*, i8*, i8*, i8*, i32, %struct._xmlDict*, i8*, i32, i32 }
%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i8*, i16, i16 }
%struct._xmlAttr = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlAttr*, %struct._xmlAttr*, %struct._xmlDoc*, %struct._xmlNs*, i32, i8* }
%struct._xmlDtd = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._xmlNs = type { %struct._xmlNs*, i32, i8*, i8*, i8*, %struct._xmlDoc* }
%struct._xmlDict = type opaque

@.str = private unnamed_addr constant [12 x i8] c"xml_content\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"noname.xml\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"http://www.w3.org/XML/1998/namespace\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/211_tree.c_5962_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !55 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlDoc*, align 8
  %3 = alloca %struct._xmlNode*, align 8
  %4 = alloca %struct._xmlNs*, align 8
  %5 = alloca [1024 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %2, metadata !60, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %3, metadata !166, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.declare(metadata %struct._xmlNs** %4, metadata !171, metadata !DIExpression()), !dbg !173
  call void @xmlCheckVersion(i32 noundef 20914), !dbg !174
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !175, metadata !DIExpression()), !dbg !179
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !180
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 1024, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0)), !dbg !181
  %7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 1023, !dbg !182
  store i8 0, i8* %7, align 1, !dbg !183
  %8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !184
  %9 = call %struct._xmlDoc* @xmlReadMemory(i8* noundef %8, i32 noundef 1023, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* noundef null, i32 noundef 0), !dbg !185
  store %struct._xmlDoc* %9, %struct._xmlDoc** %2, align 8, !dbg !186
  %10 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !187
  %11 = icmp eq %struct._xmlDoc* %10, null, !dbg !189
  br i1 %11, label %12, label %13, !dbg !190

12:                                               ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !191
  br label %30, !dbg !191

13:                                               ; preds = %0
  %14 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !193
  %15 = call %struct._xmlNode* @xmlDocGetRootElement(%struct._xmlDoc* noundef %14), !dbg !194
  store %struct._xmlNode* %15, %struct._xmlNode** %3, align 8, !dbg !195
  %16 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !196
  %17 = icmp eq %struct._xmlNode* %16, null, !dbg !198
  br i1 %17, label %18, label %20, !dbg !199

18:                                               ; preds = %13
  %19 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !200
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %19), !dbg !202
  store i32 0, i32* %1, align 4, !dbg !203
  br label %30, !dbg !203

20:                                               ; preds = %13
  %21 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !204
  %22 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !205
  %23 = call %struct._xmlNs* @xmlSearchNsByHref(%struct._xmlDoc* noundef %21, %struct._xmlNode* noundef %22, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0)), !dbg !206
  store %struct._xmlNs* %23, %struct._xmlNs** %4, align 8, !dbg !207
  %24 = load %struct._xmlNs*, %struct._xmlNs** %4, align 8, !dbg !208
  %25 = icmp ne %struct._xmlNs* %24, null, !dbg !210
  br i1 %25, label %26, label %28, !dbg !211

26:                                               ; preds = %20
  %27 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.4, i64 0, i64 0), i32 noundef 47, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !212
  br label %28, !dbg !214

28:                                               ; preds = %26, %20
  %29 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !215
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %29), !dbg !216
  call void @xmlCleanupParser(), !dbg !217
  store i32 0, i32* %1, align 4, !dbg !218
  br label %30, !dbg !218

30:                                               ; preds = %28, %18, %12
  %31 = load i32, i32* %1, align 4, !dbg !219
  ret i32 %31, !dbg !219
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @xmlCheckVersion(i32 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare %struct._xmlDoc* @xmlReadMemory(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef) #2

declare %struct._xmlNode* @xmlDocGetRootElement(%struct._xmlDoc* noundef) #2

declare void @xmlFreeDoc(%struct._xmlDoc* noundef) #2

declare %struct._xmlNs* @xmlSearchNsByHref(%struct._xmlDoc* noundef, %struct._xmlNode* noundef, i8* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare void @xmlCleanupParser() #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !40, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/211_tree.c_5962_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "2fc5c53a19217ca753a24f956ead19c0")
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
!40 = !{!41, !42}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !45, line: 28, baseType: !46)
!45 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!46 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
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
!60 = !DILocalVariable(name: "doc", scope: !55, file: !1, line: 6, type: !61)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !65)
!65 = !{!66, !67, !69, !72, !123, !124, !125, !126, !127, !128, !129, !130, !150, !151, !152, !153, !154, !155, !156, !157, !158, !162, !163, !164}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !64, file: !4, line: 560, baseType: !41, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !64, file: !4, line: 561, baseType: !68, size: 32, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !64, file: !4, line: 562, baseType: !70, size: 64, offset: 128)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !64, file: !4, line: 563, baseType: !73, size: 64, offset: 192)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !75)
!75 = !{!76, !77, !78, !79, !80, !81, !82, !83, !84, !86, !99, !101, !118, !119, !120, !122}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !74, file: !4, line: 493, baseType: !41, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !74, file: !4, line: 494, baseType: !68, size: 32, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !74, file: !4, line: 495, baseType: !42, size: 64, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !74, file: !4, line: 496, baseType: !73, size: 64, offset: 192)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !74, file: !4, line: 497, baseType: !73, size: 64, offset: 256)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !74, file: !4, line: 498, baseType: !73, size: 64, offset: 320)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !74, file: !4, line: 499, baseType: !73, size: 64, offset: 384)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !74, file: !4, line: 500, baseType: !73, size: 64, offset: 448)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !74, file: !4, line: 501, baseType: !85, size: 64, offset: 512)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !74, file: !4, line: 504, baseType: !87, size: 64, offset: 576)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !89)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !90)
!90 = !{!91, !93, !95, !96, !97, !98}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !89, file: !4, line: 389, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !89, file: !4, line: 390, baseType: !94, size: 32, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !68)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !89, file: !4, line: 391, baseType: !42, size: 64, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !89, file: !4, line: 392, baseType: !42, size: 64, offset: 192)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !89, file: !4, line: 393, baseType: !41, size: 64, offset: 256)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !89, file: !4, line: 394, baseType: !85, size: 64, offset: 320)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !74, file: !4, line: 505, baseType: !100, size: 64, offset: 640)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !74, file: !4, line: 506, baseType: !102, size: 64, offset: 704)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !104)
!104 = !{!105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !117}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !103, file: !4, line: 434, baseType: !41, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !103, file: !4, line: 435, baseType: !68, size: 32, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !103, file: !4, line: 436, baseType: !42, size: 64, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !103, file: !4, line: 437, baseType: !73, size: 64, offset: 192)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !103, file: !4, line: 438, baseType: !73, size: 64, offset: 256)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !103, file: !4, line: 439, baseType: !73, size: 64, offset: 320)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !103, file: !4, line: 440, baseType: !102, size: 64, offset: 384)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !103, file: !4, line: 441, baseType: !102, size: 64, offset: 448)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !103, file: !4, line: 442, baseType: !85, size: 64, offset: 512)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !103, file: !4, line: 443, baseType: !87, size: 64, offset: 576)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !103, file: !4, line: 444, baseType: !116, size: 32, offset: 640)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !103, file: !4, line: 445, baseType: !41, size: 64, offset: 704)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !74, file: !4, line: 507, baseType: !87, size: 64, offset: 768)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !74, file: !4, line: 508, baseType: !41, size: 64, offset: 832)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !74, file: !4, line: 509, baseType: !121, size: 16, offset: 896)
!121 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !74, file: !4, line: 510, baseType: !121, size: 16, offset: 912)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !64, file: !4, line: 564, baseType: !73, size: 64, offset: 256)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !64, file: !4, line: 565, baseType: !73, size: 64, offset: 320)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !64, file: !4, line: 566, baseType: !73, size: 64, offset: 384)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !64, file: !4, line: 567, baseType: !73, size: 64, offset: 448)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !64, file: !4, line: 568, baseType: !85, size: 64, offset: 512)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !64, file: !4, line: 571, baseType: !58, size: 32, offset: 576)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !64, file: !4, line: 572, baseType: !58, size: 32, offset: 608)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !64, file: !4, line: 578, baseType: !131, size: 64, offset: 640)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !133)
!133 = !{!134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !132, file: !4, line: 406, baseType: !41, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !132, file: !4, line: 407, baseType: !68, size: 32, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !132, file: !4, line: 408, baseType: !42, size: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !132, file: !4, line: 409, baseType: !73, size: 64, offset: 192)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !132, file: !4, line: 410, baseType: !73, size: 64, offset: 256)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !132, file: !4, line: 411, baseType: !85, size: 64, offset: 320)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !132, file: !4, line: 412, baseType: !73, size: 64, offset: 384)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !132, file: !4, line: 413, baseType: !73, size: 64, offset: 448)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !132, file: !4, line: 414, baseType: !85, size: 64, offset: 512)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !132, file: !4, line: 417, baseType: !41, size: 64, offset: 576)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !132, file: !4, line: 418, baseType: !41, size: 64, offset: 640)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !132, file: !4, line: 419, baseType: !41, size: 64, offset: 704)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !132, file: !4, line: 420, baseType: !41, size: 64, offset: 768)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !132, file: !4, line: 421, baseType: !42, size: 64, offset: 832)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !132, file: !4, line: 422, baseType: !42, size: 64, offset: 896)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !132, file: !4, line: 423, baseType: !41, size: 64, offset: 960)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !64, file: !4, line: 579, baseType: !131, size: 64, offset: 704)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !64, file: !4, line: 580, baseType: !92, size: 64, offset: 768)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !64, file: !4, line: 581, baseType: !42, size: 64, offset: 832)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !64, file: !4, line: 582, baseType: !42, size: 64, offset: 896)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !64, file: !4, line: 583, baseType: !41, size: 64, offset: 960)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !64, file: !4, line: 584, baseType: !41, size: 64, offset: 1024)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !64, file: !4, line: 585, baseType: !42, size: 64, offset: 1088)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !64, file: !4, line: 586, baseType: !58, size: 32, offset: 1152)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !64, file: !4, line: 588, baseType: !159, size: 64, offset: 1216)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !161, line: 24, flags: DIFlagFwdDecl)
!161 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!162 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !64, file: !4, line: 589, baseType: !41, size: 64, offset: 1280)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !64, file: !4, line: 590, baseType: !58, size: 32, offset: 1344)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !64, file: !4, line: 592, baseType: !58, size: 32, offset: 1376)
!165 = !DILocation(line: 6, column: 15, scope: !55)
!166 = !DILocalVariable(name: "node", scope: !55, file: !1, line: 7, type: !167)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !4, line: 491, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !4, line: 490, baseType: !74)
!170 = !DILocation(line: 7, column: 16, scope: !55)
!171 = !DILocalVariable(name: "ns", scope: !55, file: !1, line: 8, type: !172)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsPtr", file: !4, line: 387, baseType: !87)
!173 = !DILocation(line: 8, column: 14, scope: !55)
!174 = !DILocation(line: 11, column: 5, scope: !55)
!175 = !DILocalVariable(name: "xml_content", scope: !55, file: !1, line: 14, type: !176)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 8192, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 1024)
!179 = !DILocation(line: 14, column: 10, scope: !55)
!180 = !DILocation(line: 15, column: 24, scope: !55)
!181 = !DILocation(line: 15, column: 5, scope: !55)
!182 = !DILocation(line: 17, column: 5, scope: !55)
!183 = !DILocation(line: 17, column: 40, scope: !55)
!184 = !DILocation(line: 20, column: 25, scope: !55)
!185 = !DILocation(line: 20, column: 11, scope: !55)
!186 = !DILocation(line: 20, column: 9, scope: !55)
!187 = !DILocation(line: 21, column: 9, scope: !188)
!188 = distinct !DILexicalBlock(scope: !55, file: !1, line: 21, column: 9)
!189 = !DILocation(line: 21, column: 13, scope: !188)
!190 = !DILocation(line: 21, column: 9, scope: !55)
!191 = !DILocation(line: 23, column: 9, scope: !192)
!192 = distinct !DILexicalBlock(scope: !188, file: !1, line: 21, column: 22)
!193 = !DILocation(line: 27, column: 33, scope: !55)
!194 = !DILocation(line: 27, column: 12, scope: !55)
!195 = !DILocation(line: 27, column: 10, scope: !55)
!196 = !DILocation(line: 28, column: 9, scope: !197)
!197 = distinct !DILexicalBlock(scope: !55, file: !1, line: 28, column: 9)
!198 = !DILocation(line: 28, column: 14, scope: !197)
!199 = !DILocation(line: 28, column: 9, scope: !55)
!200 = !DILocation(line: 30, column: 20, scope: !201)
!201 = distinct !DILexicalBlock(scope: !197, file: !1, line: 28, column: 23)
!202 = !DILocation(line: 30, column: 9, scope: !201)
!203 = !DILocation(line: 31, column: 9, scope: !201)
!204 = !DILocation(line: 38, column: 28, scope: !55)
!205 = !DILocation(line: 38, column: 33, scope: !55)
!206 = !DILocation(line: 38, column: 10, scope: !55)
!207 = !DILocation(line: 38, column: 8, scope: !55)
!208 = !DILocation(line: 45, column: 9, scope: !209)
!209 = distinct !DILexicalBlock(scope: !55, file: !1, line: 45, column: 9)
!210 = !DILocation(line: 45, column: 12, scope: !209)
!211 = !DILocation(line: 45, column: 9, scope: !55)
!212 = !DILocation(line: 47, column: 9, scope: !213)
!213 = distinct !DILexicalBlock(scope: !209, file: !1, line: 45, column: 21)
!214 = !DILocation(line: 48, column: 5, scope: !213)
!215 = !DILocation(line: 51, column: 16, scope: !55)
!216 = !DILocation(line: 51, column: 5, scope: !55)
!217 = !DILocation(line: 52, column: 5, scope: !55)
!218 = !DILocation(line: 54, column: 5, scope: !55)
!219 = !DILocation(line: 55, column: 1, scope: !55)

; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/304_xmlwriter.c_437_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/304_xmlwriter.c_437_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDoc = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, i32, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlNs*, i8*, i8*, i8*, i8*, i8*, i32, %struct._xmlDict*, i8*, i32, i32 }
%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i8*, i16, i16 }
%struct._xmlAttr = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlAttr*, %struct._xmlAttr*, %struct._xmlDoc*, %struct._xmlNs*, i32, i8* }
%struct._xmlDtd = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._xmlNs = type { %struct._xmlNs*, i32, i8*, i8*, i8*, %struct._xmlDoc* }
%struct._xmlDict = type opaque
%struct._xmlTextWriter = type opaque

@.str = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [107 x i8] c"se_runs/sa_llm/libxml2_62911_vul/304_xmlwriter.c_437_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !54 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlDoc*, align 8
  %3 = alloca %struct._xmlTextWriter*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %2, metadata !59, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.declare(metadata %struct._xmlTextWriter** %3, metadata !166, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.declare(metadata i8** %4, metadata !173, metadata !DIExpression()), !dbg !174
  store i8* null, i8** %4, align 8, !dbg !174
  call void @llvm.dbg.declare(metadata i32* %5, metadata !175, metadata !DIExpression()), !dbg !176
  %6 = bitcast i32* %5 to i8*, !dbg !177
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !178
  %7 = load i32, i32* %5, align 4, !dbg !179
  %8 = icmp sge i32 %7, 0, !dbg !180
  %9 = zext i1 %8 to i32, !dbg !180
  %10 = sext i32 %9 to i64, !dbg !179
  call void @klee_assume(i64 noundef %10), !dbg !181
  %11 = load i32, i32* %5, align 4, !dbg !182
  %12 = icmp slt i32 %11, 1024, !dbg !183
  %13 = zext i1 %12 to i32, !dbg !183
  %14 = sext i32 %13 to i64, !dbg !182
  call void @klee_assume(i64 noundef %14), !dbg !184
  %15 = call %struct._xmlDoc* @xmlNewDoc(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !185
  store %struct._xmlDoc* %15, %struct._xmlDoc** %2, align 8, !dbg !186
  %16 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !187
  %17 = icmp eq %struct._xmlDoc* %16, null, !dbg !189
  br i1 %17, label %18, label %19, !dbg !190

18:                                               ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !191
  br label %29, !dbg !191

19:                                               ; preds = %0
  %20 = call %struct._xmlTextWriter* @xmlNewTextWriterDoc(%struct._xmlDoc** noundef %2, i32 noundef 0), !dbg !193
  store %struct._xmlTextWriter* %20, %struct._xmlTextWriter** %3, align 8, !dbg !194
  %21 = load %struct._xmlTextWriter*, %struct._xmlTextWriter** %3, align 8, !dbg !195
  %22 = icmp eq %struct._xmlTextWriter* %21, null, !dbg !197
  br i1 %22, label %23, label %25, !dbg !198

23:                                               ; preds = %19
  %24 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !199
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %24), !dbg !201
  store i32 0, i32* %1, align 4, !dbg !202
  br label %29, !dbg !202

25:                                               ; preds = %19
  %26 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.3, i64 0, i64 0), i32 noundef 32, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !203
  %27 = load %struct._xmlTextWriter*, %struct._xmlTextWriter** %3, align 8, !dbg !204
  call void @xmlFreeTextWriter(%struct._xmlTextWriter* noundef %27), !dbg !205
  %28 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !206
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %28), !dbg !207
  store i32 0, i32* %1, align 4, !dbg !208
  br label %29, !dbg !208

29:                                               ; preds = %25, %23, %18
  %30 = load i32, i32* %1, align 4, !dbg !209
  ret i32 %30, !dbg !209
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

declare %struct._xmlDoc* @xmlNewDoc(i8* noundef) #2

declare %struct._xmlTextWriter* @xmlNewTextWriterDoc(%struct._xmlDoc** noundef, i32 noundef) #2

declare void @xmlFreeDoc(%struct._xmlDoc* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare void @xmlFreeTextWriter(%struct._xmlTextWriter* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !40, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/304_xmlwriter.c_437_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "0fa3f6df16a90641be4dfa3972457e0e")
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
!40 = !{!41, !45}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !43, line: 28, baseType: !44)
!43 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!44 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!46 = !{i32 7, !"Dwarf Version", i32 5}
!47 = !{i32 2, !"Debug Info Version", i32 3}
!48 = !{i32 1, !"wchar_size", i32 4}
!49 = !{i32 7, !"PIC Level", i32 2}
!50 = !{i32 7, !"PIE Level", i32 2}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"Ubuntu clang version 14.0.6"}
!54 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 6, type: !55, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !58)
!55 = !DISubroutineType(types: !56)
!56 = !{!57}
!57 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!58 = !{}
!59 = !DILocalVariable(name: "doc", scope: !54, file: !1, line: 7, type: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !63)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !64)
!64 = !{!65, !66, !68, !71, !123, !124, !125, !126, !127, !128, !129, !130, !150, !151, !152, !153, !154, !155, !156, !157, !158, !162, !163, !164}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !63, file: !4, line: 560, baseType: !45, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !63, file: !4, line: 561, baseType: !67, size: 32, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !63, file: !4, line: 562, baseType: !69, size: 64, offset: 128)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !63, file: !4, line: 563, baseType: !72, size: 64, offset: 192)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !74)
!74 = !{!75, !76, !77, !80, !81, !82, !83, !84, !85, !87, !100, !101, !118, !119, !120, !122}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !73, file: !4, line: 493, baseType: !45, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !73, file: !4, line: 494, baseType: !67, size: 32, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !73, file: !4, line: 495, baseType: !78, size: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !73, file: !4, line: 496, baseType: !72, size: 64, offset: 192)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !73, file: !4, line: 497, baseType: !72, size: 64, offset: 256)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !73, file: !4, line: 498, baseType: !72, size: 64, offset: 320)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !73, file: !4, line: 499, baseType: !72, size: 64, offset: 384)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !73, file: !4, line: 500, baseType: !72, size: 64, offset: 448)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !73, file: !4, line: 501, baseType: !86, size: 64, offset: 512)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !73, file: !4, line: 504, baseType: !88, size: 64, offset: 576)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !90)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !91)
!91 = !{!92, !94, !96, !97, !98, !99}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !90, file: !4, line: 389, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !90, file: !4, line: 390, baseType: !95, size: 32, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !67)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !90, file: !4, line: 391, baseType: !78, size: 64, offset: 128)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !90, file: !4, line: 392, baseType: !78, size: 64, offset: 192)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !90, file: !4, line: 393, baseType: !45, size: 64, offset: 256)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !90, file: !4, line: 394, baseType: !86, size: 64, offset: 320)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !73, file: !4, line: 505, baseType: !41, size: 64, offset: 640)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !73, file: !4, line: 506, baseType: !102, size: 64, offset: 704)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !104)
!104 = !{!105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !117}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !103, file: !4, line: 434, baseType: !45, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !103, file: !4, line: 435, baseType: !67, size: 32, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !103, file: !4, line: 436, baseType: !78, size: 64, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !103, file: !4, line: 437, baseType: !72, size: 64, offset: 192)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !103, file: !4, line: 438, baseType: !72, size: 64, offset: 256)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !103, file: !4, line: 439, baseType: !72, size: 64, offset: 320)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !103, file: !4, line: 440, baseType: !102, size: 64, offset: 384)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !103, file: !4, line: 441, baseType: !102, size: 64, offset: 448)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !103, file: !4, line: 442, baseType: !86, size: 64, offset: 512)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !103, file: !4, line: 443, baseType: !88, size: 64, offset: 576)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !103, file: !4, line: 444, baseType: !116, size: 32, offset: 640)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !103, file: !4, line: 445, baseType: !45, size: 64, offset: 704)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !73, file: !4, line: 507, baseType: !88, size: 64, offset: 768)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !73, file: !4, line: 508, baseType: !45, size: 64, offset: 832)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !73, file: !4, line: 509, baseType: !121, size: 16, offset: 896)
!121 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !73, file: !4, line: 510, baseType: !121, size: 16, offset: 912)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !63, file: !4, line: 564, baseType: !72, size: 64, offset: 256)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !63, file: !4, line: 565, baseType: !72, size: 64, offset: 320)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !63, file: !4, line: 566, baseType: !72, size: 64, offset: 384)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !63, file: !4, line: 567, baseType: !72, size: 64, offset: 448)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !63, file: !4, line: 568, baseType: !86, size: 64, offset: 512)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !63, file: !4, line: 571, baseType: !57, size: 32, offset: 576)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !63, file: !4, line: 572, baseType: !57, size: 32, offset: 608)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !63, file: !4, line: 578, baseType: !131, size: 64, offset: 640)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !133)
!133 = !{!134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !132, file: !4, line: 406, baseType: !45, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !132, file: !4, line: 407, baseType: !67, size: 32, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !132, file: !4, line: 408, baseType: !78, size: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !132, file: !4, line: 409, baseType: !72, size: 64, offset: 192)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !132, file: !4, line: 410, baseType: !72, size: 64, offset: 256)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !132, file: !4, line: 411, baseType: !86, size: 64, offset: 320)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !132, file: !4, line: 412, baseType: !72, size: 64, offset: 384)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !132, file: !4, line: 413, baseType: !72, size: 64, offset: 448)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !132, file: !4, line: 414, baseType: !86, size: 64, offset: 512)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !132, file: !4, line: 417, baseType: !45, size: 64, offset: 576)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !132, file: !4, line: 418, baseType: !45, size: 64, offset: 640)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !132, file: !4, line: 419, baseType: !45, size: 64, offset: 704)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !132, file: !4, line: 420, baseType: !45, size: 64, offset: 768)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !132, file: !4, line: 421, baseType: !78, size: 64, offset: 832)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !132, file: !4, line: 422, baseType: !78, size: 64, offset: 896)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !132, file: !4, line: 423, baseType: !45, size: 64, offset: 960)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !63, file: !4, line: 579, baseType: !131, size: 64, offset: 704)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !63, file: !4, line: 580, baseType: !93, size: 64, offset: 768)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !63, file: !4, line: 581, baseType: !78, size: 64, offset: 832)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !63, file: !4, line: 582, baseType: !78, size: 64, offset: 896)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !63, file: !4, line: 583, baseType: !45, size: 64, offset: 960)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !63, file: !4, line: 584, baseType: !45, size: 64, offset: 1024)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !63, file: !4, line: 585, baseType: !78, size: 64, offset: 1088)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !63, file: !4, line: 586, baseType: !57, size: 32, offset: 1152)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !63, file: !4, line: 588, baseType: !159, size: 64, offset: 1216)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !161, line: 24, flags: DIFlagFwdDecl)
!161 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!162 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !63, file: !4, line: 589, baseType: !45, size: 64, offset: 1280)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !63, file: !4, line: 590, baseType: !57, size: 32, offset: 1344)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !63, file: !4, line: 592, baseType: !57, size: 32, offset: 1376)
!165 = !DILocation(line: 7, column: 15, scope: !54)
!166 = !DILocalVariable(name: "writer", scope: !54, file: !1, line: 8, type: !167)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlTextWriterPtr", file: !168, line: 27, baseType: !169)
!168 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlwriter.h", directory: "", checksumkind: CSK_MD5, checksum: "8694436144b1fb0aab2e2d6b725035e3")
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlTextWriter", file: !168, line: 26, baseType: !171)
!171 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlTextWriter", file: !168, line: 26, flags: DIFlagFwdDecl)
!172 = !DILocation(line: 8, column: 22, scope: !54)
!173 = !DILocalVariable(name: "buffer", scope: !54, file: !1, line: 9, type: !41)
!174 = !DILocation(line: 9, column: 14, scope: !54)
!175 = !DILocalVariable(name: "size", scope: !54, file: !1, line: 10, type: !57)
!176 = !DILocation(line: 10, column: 9, scope: !54)
!177 = !DILocation(line: 12, column: 24, scope: !54)
!178 = !DILocation(line: 12, column: 5, scope: !54)
!179 = !DILocation(line: 13, column: 17, scope: !54)
!180 = !DILocation(line: 13, column: 22, scope: !54)
!181 = !DILocation(line: 13, column: 5, scope: !54)
!182 = !DILocation(line: 14, column: 17, scope: !54)
!183 = !DILocation(line: 14, column: 22, scope: !54)
!184 = !DILocation(line: 14, column: 5, scope: !54)
!185 = !DILocation(line: 16, column: 11, scope: !54)
!186 = !DILocation(line: 16, column: 9, scope: !54)
!187 = !DILocation(line: 17, column: 9, scope: !188)
!188 = distinct !DILexicalBlock(scope: !54, file: !1, line: 17, column: 9)
!189 = !DILocation(line: 17, column: 13, scope: !188)
!190 = !DILocation(line: 17, column: 9, scope: !54)
!191 = !DILocation(line: 18, column: 9, scope: !192)
!192 = distinct !DILexicalBlock(scope: !188, file: !1, line: 17, column: 22)
!193 = !DILocation(line: 21, column: 14, scope: !54)
!194 = !DILocation(line: 21, column: 12, scope: !54)
!195 = !DILocation(line: 22, column: 9, scope: !196)
!196 = distinct !DILexicalBlock(scope: !54, file: !1, line: 22, column: 9)
!197 = !DILocation(line: 22, column: 16, scope: !196)
!198 = !DILocation(line: 22, column: 9, scope: !54)
!199 = !DILocation(line: 23, column: 20, scope: !200)
!200 = distinct !DILexicalBlock(scope: !196, file: !1, line: 22, column: 25)
!201 = !DILocation(line: 23, column: 9, scope: !200)
!202 = !DILocation(line: 24, column: 9, scope: !200)
!203 = !DILocation(line: 32, column: 5, scope: !54)
!204 = !DILocation(line: 35, column: 23, scope: !54)
!205 = !DILocation(line: 35, column: 5, scope: !54)
!206 = !DILocation(line: 36, column: 16, scope: !54)
!207 = !DILocation(line: 36, column: 5, scope: !54)
!208 = !DILocation(line: 37, column: 5, scope: !54)
!209 = !DILocation(line: 38, column: 1, scope: !54)

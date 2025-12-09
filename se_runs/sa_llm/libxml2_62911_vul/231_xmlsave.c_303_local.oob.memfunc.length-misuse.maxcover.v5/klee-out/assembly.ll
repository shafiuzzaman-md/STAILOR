; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/231_xmlsave.c_303_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/231_xmlsave.c_303_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSaveCtxt = type opaque
%struct._xmlDoc = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, i32, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlNs*, i8*, i8*, i8*, i8*, i8*, i32, %struct._xmlDict*, i8*, i32, i32 }
%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i8*, i16, i16 }
%struct._xmlAttr = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlAttr*, %struct._xmlAttr*, %struct._xmlDoc*, %struct._xmlNs*, i32, i8* }
%struct._xmlDtd = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._xmlNs = type { %struct._xmlNs*, i32, i8*, i8*, i8*, %struct._xmlDoc* }
%struct._xmlDict = type opaque
%struct._xmlBuffer = type { i8*, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"indent_str\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_62911_vul/231_xmlsave.c_303_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !54 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlSaveCtxt*, align 8
  %3 = alloca %struct._xmlDoc*, align 8
  %4 = alloca %struct._xmlNode*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [256 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlSaveCtxt** %2, metadata !59, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %3, metadata !66, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %4, metadata !173, metadata !DIExpression()), !dbg !177
  call void @llvm.dbg.declare(metadata i8** %5, metadata !178, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.declare(metadata i32* %6, metadata !180, metadata !DIExpression()), !dbg !181
  call void @xmlInitParser(), !dbg !182
  %8 = call %struct._xmlDoc* @xmlNewDoc(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !183
  store %struct._xmlDoc* %8, %struct._xmlDoc** %3, align 8, !dbg !184
  %9 = call %struct._xmlNode* @xmlNewNode(%struct._xmlNs* noundef null, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !185
  store %struct._xmlNode* %9, %struct._xmlNode** %4, align 8, !dbg !186
  %10 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !187
  %11 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !188
  %12 = call %struct._xmlNode* @xmlDocSetRootElement(%struct._xmlDoc* noundef %10, %struct._xmlNode* noundef %11), !dbg !189
  call void @llvm.dbg.declare(metadata [256 x i8]* %7, metadata !190, metadata !DIExpression()), !dbg !194
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0, !dbg !195
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 256, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)), !dbg !196
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 255, !dbg !197
  store i8 0, i8* %14, align 1, !dbg !198
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0, !dbg !199
  %16 = call i8** @__xmlTreeIndentString(), !dbg !200
  store i8* %15, i8** %16, align 8, !dbg !201
  %17 = call %struct._xmlSaveCtxt* @xmlSaveToBuffer(%struct._xmlBuffer* noundef null, i8* noundef null, i32 noundef 0), !dbg !202
  store %struct._xmlSaveCtxt* %17, %struct._xmlSaveCtxt** %2, align 8, !dbg !203
  %18 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !204
  %19 = icmp eq %struct._xmlSaveCtxt* %18, null, !dbg !206
  br i1 %19, label %20, label %22, !dbg !207

20:                                               ; preds = %0
  %21 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !208
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %21), !dbg !210
  call void @xmlCleanupParser(), !dbg !211
  store i32 1, i32* %1, align 4, !dbg !212
  br label %30, !dbg !212

22:                                               ; preds = %0
  %23 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.4, i64 0, i64 0), i32 noundef 41, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !213
  %24 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !214
  %25 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !215
  %26 = call i64 @xmlSaveDoc(%struct._xmlSaveCtxt* noundef %24, %struct._xmlDoc* noundef %25), !dbg !216
  %27 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !217
  %28 = call i32 @xmlSaveClose(%struct._xmlSaveCtxt* noundef %27), !dbg !218
  %29 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !219
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %29), !dbg !220
  call void @xmlCleanupParser(), !dbg !221
  store i32 0, i32* %1, align 4, !dbg !222
  br label %30, !dbg !222

30:                                               ; preds = %22, %20
  %31 = load i32, i32* %1, align 4, !dbg !223
  ret i32 %31, !dbg !223
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @xmlInitParser() #2

declare %struct._xmlDoc* @xmlNewDoc(i8* noundef) #2

declare %struct._xmlNode* @xmlNewNode(%struct._xmlNs* noundef, i8* noundef) #2

declare %struct._xmlNode* @xmlDocSetRootElement(%struct._xmlDoc* noundef, %struct._xmlNode* noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare i8** @__xmlTreeIndentString() #2

declare %struct._xmlSaveCtxt* @xmlSaveToBuffer(%struct._xmlBuffer* noundef, i8* noundef, i32 noundef) #2

declare void @xmlFreeDoc(%struct._xmlDoc* noundef) #2

declare void @xmlCleanupParser() #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare i64 @xmlSaveDoc(%struct._xmlSaveCtxt* noundef, %struct._xmlDoc* noundef) #2

declare i32 @xmlSaveClose(%struct._xmlSaveCtxt* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !40, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/231_xmlsave.c_303_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "56546d12341830951aa9bce9e03ed984")
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
!54 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 7, type: !55, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !58)
!55 = !DISubroutineType(types: !56)
!56 = !{!57}
!57 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!58 = !{}
!59 = !DILocalVariable(name: "ctxt", scope: !54, file: !1, line: 8, type: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSaveCtxtPtr", file: !61, line: 42, baseType: !62)
!61 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlsave.h", directory: "", checksumkind: CSK_MD5, checksum: "eed2463cad941f74f99b8b9bc03aa74d")
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSaveCtxt", file: !61, line: 41, baseType: !64)
!64 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSaveCtxt", file: !61, line: 41, flags: DIFlagFwdDecl)
!65 = !DILocation(line: 8, column: 20, scope: !54)
!66 = !DILocalVariable(name: "doc", scope: !54, file: !1, line: 9, type: !67)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !70)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !71)
!71 = !{!72, !73, !75, !78, !130, !131, !132, !133, !134, !135, !136, !137, !157, !158, !159, !160, !161, !162, !163, !164, !165, !169, !170, !171}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !70, file: !4, line: 560, baseType: !45, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !70, file: !4, line: 561, baseType: !74, size: 32, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !70, file: !4, line: 562, baseType: !76, size: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !70, file: !4, line: 563, baseType: !79, size: 64, offset: 192)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !81)
!81 = !{!82, !83, !84, !87, !88, !89, !90, !91, !92, !94, !107, !108, !125, !126, !127, !129}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !80, file: !4, line: 493, baseType: !45, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !80, file: !4, line: 494, baseType: !74, size: 32, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !80, file: !4, line: 495, baseType: !85, size: 64, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !80, file: !4, line: 496, baseType: !79, size: 64, offset: 192)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !80, file: !4, line: 497, baseType: !79, size: 64, offset: 256)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !80, file: !4, line: 498, baseType: !79, size: 64, offset: 320)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !80, file: !4, line: 499, baseType: !79, size: 64, offset: 384)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !80, file: !4, line: 500, baseType: !79, size: 64, offset: 448)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !80, file: !4, line: 501, baseType: !93, size: 64, offset: 512)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !80, file: !4, line: 504, baseType: !95, size: 64, offset: 576)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !97)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !98)
!98 = !{!99, !101, !103, !104, !105, !106}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !97, file: !4, line: 389, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !97, file: !4, line: 390, baseType: !102, size: 32, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !74)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !97, file: !4, line: 391, baseType: !85, size: 64, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !97, file: !4, line: 392, baseType: !85, size: 64, offset: 192)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !97, file: !4, line: 393, baseType: !45, size: 64, offset: 256)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !97, file: !4, line: 394, baseType: !93, size: 64, offset: 320)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !80, file: !4, line: 505, baseType: !41, size: 64, offset: 640)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !80, file: !4, line: 506, baseType: !109, size: 64, offset: 704)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !111)
!111 = !{!112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !124}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !110, file: !4, line: 434, baseType: !45, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !110, file: !4, line: 435, baseType: !74, size: 32, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !110, file: !4, line: 436, baseType: !85, size: 64, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !110, file: !4, line: 437, baseType: !79, size: 64, offset: 192)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !110, file: !4, line: 438, baseType: !79, size: 64, offset: 256)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !110, file: !4, line: 439, baseType: !79, size: 64, offset: 320)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !110, file: !4, line: 440, baseType: !109, size: 64, offset: 384)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !110, file: !4, line: 441, baseType: !109, size: 64, offset: 448)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !110, file: !4, line: 442, baseType: !93, size: 64, offset: 512)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !110, file: !4, line: 443, baseType: !95, size: 64, offset: 576)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !110, file: !4, line: 444, baseType: !123, size: 32, offset: 640)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !110, file: !4, line: 445, baseType: !45, size: 64, offset: 704)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !80, file: !4, line: 507, baseType: !95, size: 64, offset: 768)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !80, file: !4, line: 508, baseType: !45, size: 64, offset: 832)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !80, file: !4, line: 509, baseType: !128, size: 16, offset: 896)
!128 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !80, file: !4, line: 510, baseType: !128, size: 16, offset: 912)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !70, file: !4, line: 564, baseType: !79, size: 64, offset: 256)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !70, file: !4, line: 565, baseType: !79, size: 64, offset: 320)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !70, file: !4, line: 566, baseType: !79, size: 64, offset: 384)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !70, file: !4, line: 567, baseType: !79, size: 64, offset: 448)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !70, file: !4, line: 568, baseType: !93, size: 64, offset: 512)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !70, file: !4, line: 571, baseType: !57, size: 32, offset: 576)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !70, file: !4, line: 572, baseType: !57, size: 32, offset: 608)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !70, file: !4, line: 578, baseType: !138, size: 64, offset: 640)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !140)
!140 = !{!141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !139, file: !4, line: 406, baseType: !45, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !139, file: !4, line: 407, baseType: !74, size: 32, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !139, file: !4, line: 408, baseType: !85, size: 64, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !139, file: !4, line: 409, baseType: !79, size: 64, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !139, file: !4, line: 410, baseType: !79, size: 64, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !139, file: !4, line: 411, baseType: !93, size: 64, offset: 320)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !139, file: !4, line: 412, baseType: !79, size: 64, offset: 384)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !139, file: !4, line: 413, baseType: !79, size: 64, offset: 448)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !139, file: !4, line: 414, baseType: !93, size: 64, offset: 512)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !139, file: !4, line: 417, baseType: !45, size: 64, offset: 576)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !139, file: !4, line: 418, baseType: !45, size: 64, offset: 640)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !139, file: !4, line: 419, baseType: !45, size: 64, offset: 704)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !139, file: !4, line: 420, baseType: !45, size: 64, offset: 768)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !139, file: !4, line: 421, baseType: !85, size: 64, offset: 832)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !139, file: !4, line: 422, baseType: !85, size: 64, offset: 896)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !139, file: !4, line: 423, baseType: !45, size: 64, offset: 960)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !70, file: !4, line: 579, baseType: !138, size: 64, offset: 704)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !70, file: !4, line: 580, baseType: !100, size: 64, offset: 768)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !70, file: !4, line: 581, baseType: !85, size: 64, offset: 832)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !70, file: !4, line: 582, baseType: !85, size: 64, offset: 896)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !70, file: !4, line: 583, baseType: !45, size: 64, offset: 960)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !70, file: !4, line: 584, baseType: !45, size: 64, offset: 1024)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !70, file: !4, line: 585, baseType: !85, size: 64, offset: 1088)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !70, file: !4, line: 586, baseType: !57, size: 32, offset: 1152)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !70, file: !4, line: 588, baseType: !166, size: 64, offset: 1216)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !168, line: 24, flags: DIFlagFwdDecl)
!168 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!169 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !70, file: !4, line: 589, baseType: !45, size: 64, offset: 1280)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !70, file: !4, line: 590, baseType: !57, size: 32, offset: 1344)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !70, file: !4, line: 592, baseType: !57, size: 32, offset: 1376)
!172 = !DILocation(line: 9, column: 15, scope: !54)
!173 = !DILocalVariable(name: "root", scope: !54, file: !1, line: 10, type: !174)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !4, line: 491, baseType: !175)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !4, line: 490, baseType: !80)
!177 = !DILocation(line: 10, column: 16, scope: !54)
!178 = !DILocalVariable(name: "buffer", scope: !54, file: !1, line: 11, type: !76)
!179 = !DILocation(line: 11, column: 11, scope: !54)
!180 = !DILocalVariable(name: "size", scope: !54, file: !1, line: 12, type: !57)
!181 = !DILocation(line: 12, column: 9, scope: !54)
!182 = !DILocation(line: 15, column: 5, scope: !54)
!183 = !DILocation(line: 18, column: 11, scope: !54)
!184 = !DILocation(line: 18, column: 9, scope: !54)
!185 = !DILocation(line: 19, column: 12, scope: !54)
!186 = !DILocation(line: 19, column: 10, scope: !54)
!187 = !DILocation(line: 20, column: 26, scope: !54)
!188 = !DILocation(line: 20, column: 31, scope: !54)
!189 = !DILocation(line: 20, column: 5, scope: !54)
!190 = !DILocalVariable(name: "indent_str", scope: !54, file: !1, line: 23, type: !191)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 2048, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 256)
!194 = !DILocation(line: 23, column: 10, scope: !54)
!195 = !DILocation(line: 24, column: 24, scope: !54)
!196 = !DILocation(line: 24, column: 5, scope: !54)
!197 = !DILocation(line: 26, column: 5, scope: !54)
!198 = !DILocation(line: 26, column: 21, scope: !54)
!199 = !DILocation(line: 27, column: 27, scope: !54)
!200 = !DILocation(line: 27, column: 5, scope: !54)
!201 = !DILocation(line: 27, column: 25, scope: !54)
!202 = !DILocation(line: 30, column: 12, scope: !54)
!203 = !DILocation(line: 30, column: 10, scope: !54)
!204 = !DILocation(line: 31, column: 9, scope: !205)
!205 = distinct !DILexicalBlock(scope: !54, file: !1, line: 31, column: 9)
!206 = !DILocation(line: 31, column: 14, scope: !205)
!207 = !DILocation(line: 31, column: 9, scope: !54)
!208 = !DILocation(line: 32, column: 20, scope: !209)
!209 = distinct !DILexicalBlock(scope: !205, file: !1, line: 31, column: 23)
!210 = !DILocation(line: 32, column: 9, scope: !209)
!211 = !DILocation(line: 33, column: 9, scope: !209)
!212 = !DILocation(line: 34, column: 9, scope: !209)
!213 = !DILocation(line: 41, column: 5, scope: !54)
!214 = !DILocation(line: 44, column: 16, scope: !54)
!215 = !DILocation(line: 44, column: 22, scope: !54)
!216 = !DILocation(line: 44, column: 5, scope: !54)
!217 = !DILocation(line: 45, column: 18, scope: !54)
!218 = !DILocation(line: 45, column: 5, scope: !54)
!219 = !DILocation(line: 48, column: 16, scope: !54)
!220 = !DILocation(line: 48, column: 5, scope: !54)
!221 = !DILocation(line: 49, column: 5, scope: !54)
!222 = !DILocation(line: 51, column: 5, scope: !54)
!223 = !DILocation(line: 52, column: 1, scope: !54)

; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/229_xmlsave.c_346_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/229_xmlsave.c_346_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDoc = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, i32, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlNs*, i8*, i8*, i8*, i8*, i8*, i32, %struct._xmlDict*, i8*, i32, i32 }
%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i8*, i16, i16 }
%struct._xmlAttr = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlAttr*, %struct._xmlAttr*, %struct._xmlDoc*, %struct._xmlNs*, i32, i8* }
%struct._xmlDtd = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._xmlNs = type { %struct._xmlNs*, i32, i8*, i8*, i8*, %struct._xmlDoc* }
%struct._xmlDict = type opaque
%struct._xmlSaveCtxt = type opaque
%struct._xmlBuffer = type { i8*, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_62911_vul/229_xmlsave.c_346_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !64 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlDoc*, align 8
  %3 = alloca %struct._xmlNode*, align 8
  %4 = alloca %struct._xmlSaveCtxt*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._xmlBuffer*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %2, metadata !69, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %3, metadata !174, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.declare(metadata %struct._xmlSaveCtxt** %4, metadata !179, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.declare(metadata i8** %5, metadata !186, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.declare(metadata i32* %6, metadata !188, metadata !DIExpression()), !dbg !189
  call void @xmlInitParser(), !dbg !190
  %8 = call %struct._xmlDoc* @xmlNewDoc(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !191
  store %struct._xmlDoc* %8, %struct._xmlDoc** %2, align 8, !dbg !192
  %9 = call %struct._xmlNode* @xmlNewNode(%struct._xmlNs* noundef null, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !193
  store %struct._xmlNode* %9, %struct._xmlNode** %3, align 8, !dbg !194
  %10 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !195
  %11 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !196
  %12 = call %struct._xmlNode* @xmlDocSetRootElement(%struct._xmlDoc* noundef %10, %struct._xmlNode* noundef %11), !dbg !197
  store i32 10, i32* %6, align 4, !dbg !198
  %13 = load i32, i32* %6, align 4, !dbg !199
  %14 = sext i32 %13 to i64, !dbg !199
  %15 = mul i64 %14, 1, !dbg !200
  %16 = call noalias i8* @malloc(i64 noundef %15) #5, !dbg !201
  store i8* %16, i8** %5, align 8, !dbg !202
  %17 = load i8*, i8** %5, align 8, !dbg !203
  %18 = load i32, i32* %6, align 4, !dbg !204
  %19 = sext i32 %18 to i64, !dbg !204
  %20 = mul i64 %19, 1, !dbg !205
  call void @klee_make_symbolic(i8* noundef %17, i64 noundef %20, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !206
  call void @llvm.dbg.declare(metadata %struct._xmlBuffer** %7, metadata !207, metadata !DIExpression()), !dbg !219
  %21 = call %struct._xmlBuffer* @xmlBufferCreate(), !dbg !220
  store %struct._xmlBuffer* %21, %struct._xmlBuffer** %7, align 8, !dbg !219
  %22 = load %struct._xmlBuffer*, %struct._xmlBuffer** %7, align 8, !dbg !221
  %23 = load i8*, i8** %5, align 8, !dbg !222
  %24 = call %struct._xmlSaveCtxt* @xmlSaveToBuffer(%struct._xmlBuffer* noundef %22, i8* noundef %23, i32 noundef 0), !dbg !223
  store %struct._xmlSaveCtxt* %24, %struct._xmlSaveCtxt** %4, align 8, !dbg !224
  %25 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %4, align 8, !dbg !225
  %26 = icmp ne %struct._xmlSaveCtxt* %25, null, !dbg !227
  br i1 %26, label %27, label %32, !dbg !228

27:                                               ; preds = %0
  %28 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.4, i64 0, i64 0), i32 noundef 34, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !229
  %29 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %4, align 8, !dbg !231
  %30 = call i32 @xmlSaveClose(%struct._xmlSaveCtxt* noundef %29), !dbg !232
  %31 = load %struct._xmlBuffer*, %struct._xmlBuffer** %7, align 8, !dbg !233
  call void @xmlBufferFree(%struct._xmlBuffer* noundef %31), !dbg !234
  br label %34, !dbg !235

32:                                               ; preds = %0
  %33 = load %struct._xmlBuffer*, %struct._xmlBuffer** %7, align 8, !dbg !236
  call void @xmlBufferFree(%struct._xmlBuffer* noundef %33), !dbg !238
  br label %34

34:                                               ; preds = %32, %27
  %35 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !239
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %35), !dbg !240
  call void @xmlCleanupParser(), !dbg !241
  %36 = load i8*, i8** %5, align 8, !dbg !242
  call void @free(i8* noundef %36) #5, !dbg !243
  ret i32 0, !dbg !244
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @xmlInitParser() #2

declare %struct._xmlDoc* @xmlNewDoc(i8* noundef) #2

declare %struct._xmlNode* @xmlNewNode(%struct._xmlNs* noundef, i8* noundef) #2

declare %struct._xmlNode* @xmlDocSetRootElement(%struct._xmlDoc* noundef, %struct._xmlNode* noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare %struct._xmlBuffer* @xmlBufferCreate() #2

declare %struct._xmlSaveCtxt* @xmlSaveToBuffer(%struct._xmlBuffer* noundef, i8* noundef, i32 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

declare i32 @xmlSaveClose(%struct._xmlSaveCtxt* noundef) #2

declare void @xmlBufferFree(%struct._xmlBuffer* noundef) #2

declare void @xmlFreeDoc(%struct._xmlDoc* noundef) #2

declare void @xmlCleanupParser() #2

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !48, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/229_xmlsave.c_346_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "e68d007af6a699bdc1d0f8d2e4f16a2b")
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
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 74, baseType: !5, size: 32, elements: !41)
!41 = !{!42, !43, !44, !45, !46, !47}
!42 = !DIEnumerator(name: "XML_BUFFER_ALLOC_DOUBLEIT", value: 0)
!43 = !DIEnumerator(name: "XML_BUFFER_ALLOC_EXACT", value: 1)
!44 = !DIEnumerator(name: "XML_BUFFER_ALLOC_IMMUTABLE", value: 2)
!45 = !DIEnumerator(name: "XML_BUFFER_ALLOC_IO", value: 3)
!46 = !DIEnumerator(name: "XML_BUFFER_ALLOC_HYBRID", value: 4)
!47 = !DIEnumerator(name: "XML_BUFFER_ALLOC_BOUNDED", value: 5)
!48 = !{!49, !53, !55}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !51, line: 28, baseType: !52)
!51 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!52 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!56 = !{i32 7, !"Dwarf Version", i32 5}
!57 = !{i32 2, !"Debug Info Version", i32 3}
!58 = !{i32 1, !"wchar_size", i32 4}
!59 = !{i32 7, !"PIC Level", i32 2}
!60 = !{i32 7, !"PIE Level", i32 2}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"Ubuntu clang version 14.0.6"}
!64 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 6, type: !65, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !68)
!65 = !DISubroutineType(types: !66)
!66 = !{!67}
!67 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!68 = !{}
!69 = !DILocalVariable(name: "doc", scope: !64, file: !1, line: 7, type: !70)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !73)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !74)
!74 = !{!75, !76, !78, !79, !131, !132, !133, !134, !135, !136, !137, !138, !158, !159, !160, !161, !162, !163, !164, !165, !166, !170, !171, !172}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !73, file: !4, line: 560, baseType: !55, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !73, file: !4, line: 561, baseType: !77, size: 32, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !73, file: !4, line: 562, baseType: !53, size: 64, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !73, file: !4, line: 563, baseType: !80, size: 64, offset: 192)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !82)
!82 = !{!83, !84, !85, !88, !89, !90, !91, !92, !93, !95, !108, !109, !126, !127, !128, !130}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !81, file: !4, line: 493, baseType: !55, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !81, file: !4, line: 494, baseType: !77, size: 32, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !81, file: !4, line: 495, baseType: !86, size: 64, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !81, file: !4, line: 496, baseType: !80, size: 64, offset: 192)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !81, file: !4, line: 497, baseType: !80, size: 64, offset: 256)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !81, file: !4, line: 498, baseType: !80, size: 64, offset: 320)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !81, file: !4, line: 499, baseType: !80, size: 64, offset: 384)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !81, file: !4, line: 500, baseType: !80, size: 64, offset: 448)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !81, file: !4, line: 501, baseType: !94, size: 64, offset: 512)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !81, file: !4, line: 504, baseType: !96, size: 64, offset: 576)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !98)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !99)
!99 = !{!100, !102, !104, !105, !106, !107}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !98, file: !4, line: 389, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !98, file: !4, line: 390, baseType: !103, size: 32, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !77)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !98, file: !4, line: 391, baseType: !86, size: 64, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !98, file: !4, line: 392, baseType: !86, size: 64, offset: 192)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !98, file: !4, line: 393, baseType: !55, size: 64, offset: 256)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !98, file: !4, line: 394, baseType: !94, size: 64, offset: 320)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !81, file: !4, line: 505, baseType: !49, size: 64, offset: 640)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !81, file: !4, line: 506, baseType: !110, size: 64, offset: 704)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !112)
!112 = !{!113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !125}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !111, file: !4, line: 434, baseType: !55, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !111, file: !4, line: 435, baseType: !77, size: 32, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !111, file: !4, line: 436, baseType: !86, size: 64, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !111, file: !4, line: 437, baseType: !80, size: 64, offset: 192)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !111, file: !4, line: 438, baseType: !80, size: 64, offset: 256)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !111, file: !4, line: 439, baseType: !80, size: 64, offset: 320)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !111, file: !4, line: 440, baseType: !110, size: 64, offset: 384)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !111, file: !4, line: 441, baseType: !110, size: 64, offset: 448)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !111, file: !4, line: 442, baseType: !94, size: 64, offset: 512)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !111, file: !4, line: 443, baseType: !96, size: 64, offset: 576)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !111, file: !4, line: 444, baseType: !124, size: 32, offset: 640)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !111, file: !4, line: 445, baseType: !55, size: 64, offset: 704)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !81, file: !4, line: 507, baseType: !96, size: 64, offset: 768)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !81, file: !4, line: 508, baseType: !55, size: 64, offset: 832)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !81, file: !4, line: 509, baseType: !129, size: 16, offset: 896)
!129 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !81, file: !4, line: 510, baseType: !129, size: 16, offset: 912)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !73, file: !4, line: 564, baseType: !80, size: 64, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !73, file: !4, line: 565, baseType: !80, size: 64, offset: 320)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !73, file: !4, line: 566, baseType: !80, size: 64, offset: 384)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !73, file: !4, line: 567, baseType: !80, size: 64, offset: 448)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !73, file: !4, line: 568, baseType: !94, size: 64, offset: 512)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !73, file: !4, line: 571, baseType: !67, size: 32, offset: 576)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !73, file: !4, line: 572, baseType: !67, size: 32, offset: 608)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !73, file: !4, line: 578, baseType: !139, size: 64, offset: 640)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !141)
!141 = !{!142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !140, file: !4, line: 406, baseType: !55, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !140, file: !4, line: 407, baseType: !77, size: 32, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !140, file: !4, line: 408, baseType: !86, size: 64, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !140, file: !4, line: 409, baseType: !80, size: 64, offset: 192)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !140, file: !4, line: 410, baseType: !80, size: 64, offset: 256)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !140, file: !4, line: 411, baseType: !94, size: 64, offset: 320)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !140, file: !4, line: 412, baseType: !80, size: 64, offset: 384)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !140, file: !4, line: 413, baseType: !80, size: 64, offset: 448)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !140, file: !4, line: 414, baseType: !94, size: 64, offset: 512)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !140, file: !4, line: 417, baseType: !55, size: 64, offset: 576)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !140, file: !4, line: 418, baseType: !55, size: 64, offset: 640)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !140, file: !4, line: 419, baseType: !55, size: 64, offset: 704)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !140, file: !4, line: 420, baseType: !55, size: 64, offset: 768)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !140, file: !4, line: 421, baseType: !86, size: 64, offset: 832)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !140, file: !4, line: 422, baseType: !86, size: 64, offset: 896)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !140, file: !4, line: 423, baseType: !55, size: 64, offset: 960)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !73, file: !4, line: 579, baseType: !139, size: 64, offset: 704)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !73, file: !4, line: 580, baseType: !101, size: 64, offset: 768)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !73, file: !4, line: 581, baseType: !86, size: 64, offset: 832)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !73, file: !4, line: 582, baseType: !86, size: 64, offset: 896)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !73, file: !4, line: 583, baseType: !55, size: 64, offset: 960)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !73, file: !4, line: 584, baseType: !55, size: 64, offset: 1024)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !73, file: !4, line: 585, baseType: !86, size: 64, offset: 1088)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !73, file: !4, line: 586, baseType: !67, size: 32, offset: 1152)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !73, file: !4, line: 588, baseType: !167, size: 64, offset: 1216)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !169, line: 24, flags: DIFlagFwdDecl)
!169 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!170 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !73, file: !4, line: 589, baseType: !55, size: 64, offset: 1280)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !73, file: !4, line: 590, baseType: !67, size: 32, offset: 1344)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !73, file: !4, line: 592, baseType: !67, size: 32, offset: 1376)
!173 = !DILocation(line: 7, column: 15, scope: !64)
!174 = !DILocalVariable(name: "node", scope: !64, file: !1, line: 8, type: !175)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !4, line: 491, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !4, line: 490, baseType: !81)
!178 = !DILocation(line: 8, column: 16, scope: !64)
!179 = !DILocalVariable(name: "ctxt", scope: !64, file: !1, line: 9, type: !180)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSaveCtxtPtr", file: !181, line: 42, baseType: !182)
!181 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlsave.h", directory: "", checksumkind: CSK_MD5, checksum: "eed2463cad941f74f99b8b9bc03aa74d")
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSaveCtxt", file: !181, line: 41, baseType: !184)
!184 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSaveCtxt", file: !181, line: 41, flags: DIFlagFwdDecl)
!185 = !DILocation(line: 9, column: 20, scope: !64)
!186 = !DILocalVariable(name: "encoding", scope: !64, file: !1, line: 10, type: !53)
!187 = !DILocation(line: 10, column: 11, scope: !64)
!188 = !DILocalVariable(name: "size", scope: !64, file: !1, line: 11, type: !67)
!189 = !DILocation(line: 11, column: 9, scope: !64)
!190 = !DILocation(line: 14, column: 5, scope: !64)
!191 = !DILocation(line: 17, column: 11, scope: !64)
!192 = !DILocation(line: 17, column: 9, scope: !64)
!193 = !DILocation(line: 18, column: 12, scope: !64)
!194 = !DILocation(line: 18, column: 10, scope: !64)
!195 = !DILocation(line: 19, column: 26, scope: !64)
!196 = !DILocation(line: 19, column: 31, scope: !64)
!197 = !DILocation(line: 19, column: 5, scope: !64)
!198 = !DILocation(line: 22, column: 10, scope: !64)
!199 = !DILocation(line: 23, column: 31, scope: !64)
!200 = !DILocation(line: 23, column: 36, scope: !64)
!201 = !DILocation(line: 23, column: 24, scope: !64)
!202 = !DILocation(line: 23, column: 14, scope: !64)
!203 = !DILocation(line: 24, column: 24, scope: !64)
!204 = !DILocation(line: 24, column: 34, scope: !64)
!205 = !DILocation(line: 24, column: 39, scope: !64)
!206 = !DILocation(line: 24, column: 5, scope: !64)
!207 = !DILocalVariable(name: "buf", scope: !64, file: !1, line: 28, type: !208)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBufferPtr", file: !4, line: 90, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBuffer", file: !4, line: 89, baseType: !211)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlBuffer", file: !4, line: 91, size: 256, elements: !212)
!212 = !{!213, !214, !215, !216, !218}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !211, file: !4, line: 92, baseType: !49, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !211, file: !4, line: 93, baseType: !5, size: 32, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !211, file: !4, line: 94, baseType: !5, size: 32, offset: 96)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !211, file: !4, line: 95, baseType: !217, size: 32, offset: 128)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBufferAllocationScheme", file: !4, line: 81, baseType: !40)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "contentIO", scope: !211, file: !4, line: 96, baseType: !49, size: 64, offset: 192)
!219 = !DILocation(line: 28, column: 18, scope: !64)
!220 = !DILocation(line: 28, column: 24, scope: !64)
!221 = !DILocation(line: 29, column: 28, scope: !64)
!222 = !DILocation(line: 29, column: 33, scope: !64)
!223 = !DILocation(line: 29, column: 12, scope: !64)
!224 = !DILocation(line: 29, column: 10, scope: !64)
!225 = !DILocation(line: 32, column: 9, scope: !226)
!226 = distinct !DILexicalBlock(scope: !64, file: !1, line: 32, column: 9)
!227 = !DILocation(line: 32, column: 14, scope: !226)
!228 = !DILocation(line: 32, column: 9, scope: !64)
!229 = !DILocation(line: 34, column: 9, scope: !230)
!230 = distinct !DILexicalBlock(scope: !226, file: !1, line: 32, column: 23)
!231 = !DILocation(line: 36, column: 22, scope: !230)
!232 = !DILocation(line: 36, column: 9, scope: !230)
!233 = !DILocation(line: 37, column: 23, scope: !230)
!234 = !DILocation(line: 37, column: 9, scope: !230)
!235 = !DILocation(line: 38, column: 5, scope: !230)
!236 = !DILocation(line: 40, column: 23, scope: !237)
!237 = distinct !DILexicalBlock(scope: !226, file: !1, line: 38, column: 12)
!238 = !DILocation(line: 40, column: 9, scope: !237)
!239 = !DILocation(line: 44, column: 16, scope: !64)
!240 = !DILocation(line: 44, column: 5, scope: !64)
!241 = !DILocation(line: 45, column: 5, scope: !64)
!242 = !DILocation(line: 46, column: 10, scope: !64)
!243 = !DILocation(line: 46, column: 5, scope: !64)
!244 = !DILocation(line: 48, column: 5, scope: !64)

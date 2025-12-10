; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/002_HTMLtree.c_416_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/002_HTMLtree.c_416_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDoc = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, i32, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlNs*, i8*, i8*, i8*, i8*, i8*, i32, %struct._xmlDict*, i8*, i32, i32 }
%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i8*, i16, i16 }
%struct._xmlAttr = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlAttr*, %struct._xmlAttr*, %struct._xmlDoc*, %struct._xmlNs*, i32, i8* }
%struct._xmlDtd = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._xmlNs = type { %struct._xmlNs*, i32, i8*, i8*, i8*, %struct._xmlDoc* }
%struct._xmlDict = type opaque
%struct._xmlBuffer = type { i8*, i32, i32, i32, i8* }
%struct._xmlOutputBuffer = type { i8*, i32 (i8*, i8*, i32)*, i32 (i8*)*, %struct._xmlCharEncodingHandler*, %struct._xmlBuf*, %struct._xmlBuf*, i32, i32 }
%struct._xmlCharEncodingHandler = type { i8*, i32 (i8*, i32*, i8*, i32*)*, i32 (i8*, i32*, i8*, i32*)*, i8*, i8*, %struct._uconv_t*, %struct._uconv_t* }
%struct._uconv_t = type { %struct.UConverter*, %struct.UConverter*, [1024 x i16], i16*, i16* }
%struct.UConverter = type opaque
%struct._xmlBuf = type opaque

@.str = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"html\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/002_HTMLtree.c_416_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !61 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca %struct._xmlDoc*, align 8
  %4 = alloca %struct._xmlNode*, align 8
  %5 = alloca %struct._xmlBuffer*, align 8
  %6 = alloca %struct._xmlOutputBuffer*, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !66, metadata !DIExpression()), !dbg !70
  store i8* null, i8** %2, align 8, !dbg !70
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %3, metadata !71, metadata !DIExpression()), !dbg !177
  store %struct._xmlDoc* null, %struct._xmlDoc** %3, align 8, !dbg !177
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %4, metadata !178, metadata !DIExpression()), !dbg !182
  store %struct._xmlNode* null, %struct._xmlNode** %4, align 8, !dbg !182
  call void @llvm.dbg.declare(metadata %struct._xmlBuffer** %5, metadata !183, metadata !DIExpression()), !dbg !195
  store %struct._xmlBuffer* null, %struct._xmlBuffer** %5, align 8, !dbg !195
  call void @llvm.dbg.declare(metadata %struct._xmlOutputBuffer** %6, metadata !196, metadata !DIExpression()), !dbg !270
  store %struct._xmlOutputBuffer* null, %struct._xmlOutputBuffer** %6, align 8, !dbg !270
  call void @llvm.dbg.declare(metadata i32* %7, metadata !271, metadata !DIExpression()), !dbg !272
  %8 = bitcast i8** %2 to i8*, !dbg !273
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !dbg !274
  %9 = call %struct._xmlDoc* @xmlNewDoc(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !275
  store %struct._xmlDoc* %9, %struct._xmlDoc** %3, align 8, !dbg !276
  %10 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !277
  %11 = icmp ne %struct._xmlDoc* %10, null, !dbg !277
  br i1 %11, label %13, label %12, !dbg !279

12:                                               ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !280
  br label %45, !dbg !280

13:                                               ; preds = %0
  %14 = call %struct._xmlNode* @xmlNewNode(%struct._xmlNs* noundef null, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !dbg !281
  store %struct._xmlNode* %14, %struct._xmlNode** %4, align 8, !dbg !282
  %15 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !283
  %16 = icmp ne %struct._xmlNode* %15, null, !dbg !283
  br i1 %16, label %19, label %17, !dbg !285

17:                                               ; preds = %13
  %18 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !286
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %18), !dbg !288
  store i32 0, i32* %1, align 4, !dbg !289
  br label %45, !dbg !289

19:                                               ; preds = %13
  %20 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !290
  %21 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !291
  %22 = call %struct._xmlNode* @xmlDocSetRootElement(%struct._xmlDoc* noundef %20, %struct._xmlNode* noundef %21), !dbg !292
  %23 = call %struct._xmlBuffer* @xmlBufferCreate(), !dbg !293
  store %struct._xmlBuffer* %23, %struct._xmlBuffer** %5, align 8, !dbg !294
  %24 = load %struct._xmlBuffer*, %struct._xmlBuffer** %5, align 8, !dbg !295
  %25 = icmp ne %struct._xmlBuffer* %24, null, !dbg !295
  br i1 %25, label %28, label %26, !dbg !297

26:                                               ; preds = %19
  %27 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !298
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %27), !dbg !300
  store i32 0, i32* %1, align 4, !dbg !301
  br label %45, !dbg !301

28:                                               ; preds = %19
  %29 = load %struct._xmlBuffer*, %struct._xmlBuffer** %5, align 8, !dbg !302
  %30 = call %struct._xmlOutputBuffer* @xmlOutputBufferCreateBuffer(%struct._xmlBuffer* noundef %29, %struct._xmlCharEncodingHandler* noundef null), !dbg !303
  store %struct._xmlOutputBuffer* %30, %struct._xmlOutputBuffer** %6, align 8, !dbg !304
  %31 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %6, align 8, !dbg !305
  %32 = icmp ne %struct._xmlOutputBuffer* %31, null, !dbg !305
  br i1 %32, label %36, label %33, !dbg !307

33:                                               ; preds = %28
  %34 = load %struct._xmlBuffer*, %struct._xmlBuffer** %5, align 8, !dbg !308
  call void @xmlBufferFree(%struct._xmlBuffer* noundef %34), !dbg !310
  %35 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !311
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %35), !dbg !312
  store i32 0, i32* %1, align 4, !dbg !313
  br label %45, !dbg !313

36:                                               ; preds = %28
  %37 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !314
  %38 = call i8* @htmlGetMetaEncoding(%struct._xmlDoc* noundef %37), !dbg !315
  %39 = ptrtoint i8* %38 to i32, !dbg !315
  store i32 %39, i32* %7, align 4, !dbg !316
  %40 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.4, i64 0, i64 0), i32 noundef 41, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !317
  %41 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %6, align 8, !dbg !318
  %42 = call i32 @xmlOutputBufferClose(%struct._xmlOutputBuffer* noundef %41), !dbg !319
  %43 = load %struct._xmlBuffer*, %struct._xmlBuffer** %5, align 8, !dbg !320
  call void @xmlBufferFree(%struct._xmlBuffer* noundef %43), !dbg !321
  %44 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !322
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %44), !dbg !323
  store i32 0, i32* %1, align 4, !dbg !324
  br label %45, !dbg !324

45:                                               ; preds = %36, %33, %26, %17, %12
  %46 = load i32, i32* %1, align 4, !dbg !325
  ret i32 %46, !dbg !325
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare %struct._xmlDoc* @xmlNewDoc(i8* noundef) #2

declare %struct._xmlNode* @xmlNewNode(%struct._xmlNs* noundef, i8* noundef) #2

declare void @xmlFreeDoc(%struct._xmlDoc* noundef) #2

declare %struct._xmlNode* @xmlDocSetRootElement(%struct._xmlDoc* noundef, %struct._xmlNode* noundef) #2

declare %struct._xmlBuffer* @xmlBufferCreate() #2

declare %struct._xmlOutputBuffer* @xmlOutputBufferCreateBuffer(%struct._xmlBuffer* noundef, %struct._xmlCharEncodingHandler* noundef) #2

declare void @xmlBufferFree(%struct._xmlBuffer* noundef) #2

declare i8* @htmlGetMetaEncoding(%struct._xmlDoc* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare i32 @xmlOutputBufferClose(%struct._xmlOutputBuffer* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !48, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/002_HTMLtree.c_416_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "b02d05a521b611d422b9ee117fffbd53")
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
!48 = !{!49}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !51, line: 28, baseType: !52)
!51 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!52 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!53 = !{i32 7, !"Dwarf Version", i32 5}
!54 = !{i32 2, !"Debug Info Version", i32 3}
!55 = !{i32 1, !"wchar_size", i32 4}
!56 = !{i32 7, !"PIC Level", i32 2}
!57 = !{i32 7, !"PIE Level", i32 2}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"Ubuntu clang version 14.0.6"}
!61 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 7, type: !62, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !65)
!62 = !DISubroutineType(types: !63)
!63 = !{!64}
!64 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!65 = !{}
!66 = !DILocalVariable(name: "encoding", scope: !61, file: !1, line: 8, type: !67)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!69 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!70 = !DILocation(line: 8, column: 17, scope: !61)
!71 = !DILocalVariable(name: "doc", scope: !61, file: !1, line: 9, type: !72)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !73)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !75)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !76)
!76 = !{!77, !79, !81, !83, !135, !136, !137, !138, !139, !140, !141, !142, !162, !163, !164, !165, !166, !167, !168, !169, !170, !174, !175, !176}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !75, file: !4, line: 560, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !75, file: !4, line: 561, baseType: !80, size: 32, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !75, file: !4, line: 562, baseType: !82, size: 64, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !75, file: !4, line: 563, baseType: !84, size: 64, offset: 192)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !86)
!86 = !{!87, !88, !89, !92, !93, !94, !95, !96, !97, !99, !112, !113, !130, !131, !132, !134}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !85, file: !4, line: 493, baseType: !78, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !85, file: !4, line: 494, baseType: !80, size: 32, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !85, file: !4, line: 495, baseType: !90, size: 64, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !85, file: !4, line: 496, baseType: !84, size: 64, offset: 192)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !85, file: !4, line: 497, baseType: !84, size: 64, offset: 256)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !85, file: !4, line: 498, baseType: !84, size: 64, offset: 320)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !85, file: !4, line: 499, baseType: !84, size: 64, offset: 384)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !85, file: !4, line: 500, baseType: !84, size: 64, offset: 448)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !85, file: !4, line: 501, baseType: !98, size: 64, offset: 512)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !85, file: !4, line: 504, baseType: !100, size: 64, offset: 576)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !102)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !103)
!103 = !{!104, !106, !108, !109, !110, !111}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !102, file: !4, line: 389, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !102, file: !4, line: 390, baseType: !107, size: 32, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !80)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !102, file: !4, line: 391, baseType: !90, size: 64, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !102, file: !4, line: 392, baseType: !90, size: 64, offset: 192)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !102, file: !4, line: 393, baseType: !78, size: 64, offset: 256)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !102, file: !4, line: 394, baseType: !98, size: 64, offset: 320)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !85, file: !4, line: 505, baseType: !49, size: 64, offset: 640)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !85, file: !4, line: 506, baseType: !114, size: 64, offset: 704)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !116)
!116 = !{!117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !129}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !115, file: !4, line: 434, baseType: !78, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !115, file: !4, line: 435, baseType: !80, size: 32, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !115, file: !4, line: 436, baseType: !90, size: 64, offset: 128)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !115, file: !4, line: 437, baseType: !84, size: 64, offset: 192)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !115, file: !4, line: 438, baseType: !84, size: 64, offset: 256)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !115, file: !4, line: 439, baseType: !84, size: 64, offset: 320)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !115, file: !4, line: 440, baseType: !114, size: 64, offset: 384)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !115, file: !4, line: 441, baseType: !114, size: 64, offset: 448)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !115, file: !4, line: 442, baseType: !98, size: 64, offset: 512)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !115, file: !4, line: 443, baseType: !100, size: 64, offset: 576)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !115, file: !4, line: 444, baseType: !128, size: 32, offset: 640)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !115, file: !4, line: 445, baseType: !78, size: 64, offset: 704)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !85, file: !4, line: 507, baseType: !100, size: 64, offset: 768)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !85, file: !4, line: 508, baseType: !78, size: 64, offset: 832)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !85, file: !4, line: 509, baseType: !133, size: 16, offset: 896)
!133 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !85, file: !4, line: 510, baseType: !133, size: 16, offset: 912)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !75, file: !4, line: 564, baseType: !84, size: 64, offset: 256)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !75, file: !4, line: 565, baseType: !84, size: 64, offset: 320)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !75, file: !4, line: 566, baseType: !84, size: 64, offset: 384)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !75, file: !4, line: 567, baseType: !84, size: 64, offset: 448)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !75, file: !4, line: 568, baseType: !98, size: 64, offset: 512)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !75, file: !4, line: 571, baseType: !64, size: 32, offset: 576)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !75, file: !4, line: 572, baseType: !64, size: 32, offset: 608)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !75, file: !4, line: 578, baseType: !143, size: 64, offset: 640)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !145)
!145 = !{!146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !144, file: !4, line: 406, baseType: !78, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !144, file: !4, line: 407, baseType: !80, size: 32, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !144, file: !4, line: 408, baseType: !90, size: 64, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !144, file: !4, line: 409, baseType: !84, size: 64, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !144, file: !4, line: 410, baseType: !84, size: 64, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !144, file: !4, line: 411, baseType: !98, size: 64, offset: 320)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !144, file: !4, line: 412, baseType: !84, size: 64, offset: 384)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !144, file: !4, line: 413, baseType: !84, size: 64, offset: 448)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !144, file: !4, line: 414, baseType: !98, size: 64, offset: 512)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !144, file: !4, line: 417, baseType: !78, size: 64, offset: 576)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !144, file: !4, line: 418, baseType: !78, size: 64, offset: 640)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !144, file: !4, line: 419, baseType: !78, size: 64, offset: 704)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !144, file: !4, line: 420, baseType: !78, size: 64, offset: 768)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !144, file: !4, line: 421, baseType: !90, size: 64, offset: 832)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !144, file: !4, line: 422, baseType: !90, size: 64, offset: 896)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !144, file: !4, line: 423, baseType: !78, size: 64, offset: 960)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !75, file: !4, line: 579, baseType: !143, size: 64, offset: 704)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !75, file: !4, line: 580, baseType: !105, size: 64, offset: 768)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !75, file: !4, line: 581, baseType: !90, size: 64, offset: 832)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !75, file: !4, line: 582, baseType: !90, size: 64, offset: 896)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !75, file: !4, line: 583, baseType: !78, size: 64, offset: 960)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !75, file: !4, line: 584, baseType: !78, size: 64, offset: 1024)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !75, file: !4, line: 585, baseType: !90, size: 64, offset: 1088)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !75, file: !4, line: 586, baseType: !64, size: 32, offset: 1152)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !75, file: !4, line: 588, baseType: !171, size: 64, offset: 1216)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !173, line: 24, flags: DIFlagFwdDecl)
!173 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!174 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !75, file: !4, line: 589, baseType: !78, size: 64, offset: 1280)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !75, file: !4, line: 590, baseType: !64, size: 32, offset: 1344)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !75, file: !4, line: 592, baseType: !64, size: 32, offset: 1376)
!177 = !DILocation(line: 9, column: 15, scope: !61)
!178 = !DILocalVariable(name: "node", scope: !61, file: !1, line: 10, type: !179)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !4, line: 491, baseType: !180)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !4, line: 490, baseType: !85)
!182 = !DILocation(line: 10, column: 16, scope: !61)
!183 = !DILocalVariable(name: "buf", scope: !61, file: !1, line: 11, type: !184)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBufferPtr", file: !4, line: 90, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBuffer", file: !4, line: 89, baseType: !187)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlBuffer", file: !4, line: 91, size: 256, elements: !188)
!188 = !{!189, !190, !191, !192, !194}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !187, file: !4, line: 92, baseType: !49, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !187, file: !4, line: 93, baseType: !5, size: 32, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !187, file: !4, line: 94, baseType: !5, size: 32, offset: 96)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !187, file: !4, line: 95, baseType: !193, size: 32, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBufferAllocationScheme", file: !4, line: 81, baseType: !40)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "contentIO", scope: !187, file: !4, line: 96, baseType: !49, size: 64, offset: 192)
!195 = !DILocation(line: 11, column: 18, scope: !61)
!196 = !DILocalVariable(name: "outbuf", scope: !61, file: !1, line: 12, type: !197)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlOutputBufferPtr", file: !4, line: 32, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlOutputBuffer", file: !4, line: 31, baseType: !200)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlOutputBuffer", file: !201, line: 141, size: 448, elements: !202)
!201 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlIO.h", directory: "", checksumkind: CSK_MD5, checksum: "a868e7a396360b2f16d10eac4a34669c")
!202 = !{!203, !204, !209, !214, !262, !267, !268, !269}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !200, file: !201, line: 142, baseType: !78, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "writecallback", scope: !200, file: !201, line: 143, baseType: !205, size: 64, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlOutputWriteCallback", file: !201, line: 100, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{!64, !78, !67, !64}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "closecallback", scope: !200, file: !201, line: 144, baseType: !210, size: 64, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlOutputCloseCallback", file: !201, line: 110, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{!64, !78}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !200, file: !201, line: 146, baseType: !215, size: 64, offset: 192)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingHandlerPtr", file: !216, line: 145, baseType: !217)
!216 = !DIFile(filename: "/usr/include/libxml2/libxml/encoding.h", directory: "", checksumkind: CSK_MD5, checksum: "807b84fade38abad3ae0d9b6af714dbc")
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingHandler", file: !216, line: 144, baseType: !219)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlCharEncodingHandler", file: !216, line: 146, size: 448, elements: !220)
!220 = !{!221, !222, !231, !233, !236, !237, !261}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !219, file: !216, line: 147, baseType: !82, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !219, file: !216, line: 148, baseType: !223, size: 64, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingInputFunc", file: !216, line: 101, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{!64, !227, !228, !229, !228}
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !219, file: !216, line: 149, baseType: !232, size: 64, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingOutputFunc", file: !216, line: 123, baseType: !224)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "iconv_in", scope: !219, file: !216, line: 151, baseType: !234, size: 64, offset: 192)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "iconv_t", file: !235, line: 29, baseType: !78)
!235 = !DIFile(filename: "/usr/include/iconv.h", directory: "", checksumkind: CSK_MD5, checksum: "edfee9bcfa398c9184cc8f95deb97c16")
!236 = !DIDerivedType(tag: DW_TAG_member, name: "iconv_out", scope: !219, file: !216, line: 152, baseType: !234, size: 64, offset: 256)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "uconv_in", scope: !219, file: !216, line: 155, baseType: !238, size: 64, offset: 320)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "uconv_t", file: !216, line: 141, baseType: !240)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_uconv_t", file: !216, line: 134, size: 16640, elements: !241)
!241 = !{!242, !247, !248, !258, !260}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "uconv", scope: !240, file: !216, line: 135, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "UConverter", file: !245, line: 96, baseType: !246)
!245 = !DIFile(filename: "/usr/include/unicode/ucnv_err.h", directory: "", checksumkind: CSK_MD5, checksum: "a507bbb125e54d860485ec054a4a55ed")
!246 = !DICompositeType(tag: DW_TAG_structure_type, name: "UConverter", file: !245, line: 93, flags: DIFlagFwdDecl)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "utf8", scope: !240, file: !216, line: 136, baseType: !243, size: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_buf", scope: !240, file: !216, line: 137, baseType: !249, size: 16384, offset: 128)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 16384, elements: !256)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "UChar", file: !251, line: 388, baseType: !252)
!251 = !DIFile(filename: "/usr/include/unicode/umachine.h", directory: "", checksumkind: CSK_MD5, checksum: "2d902ff00eac765b305cb113b74d34df")
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !253, line: 25, baseType: !254)
!253 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "256fcabbefa27ca8cf5e6d37525e6e16")
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !255, line: 40, baseType: !133)
!255 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!256 = !{!257}
!257 = !DISubrange(count: 1024)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_source", scope: !240, file: !216, line: 138, baseType: !259, size: 64, offset: 16512)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_target", scope: !240, file: !216, line: 139, baseType: !259, size: 64, offset: 16576)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "uconv_out", scope: !219, file: !216, line: 156, baseType: !238, size: 64, offset: 384)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !200, file: !201, line: 148, baseType: !263, size: 64, offset: 256)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBufPtr", file: !4, line: 114, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBuf", file: !4, line: 105, baseType: !266)
!266 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlBuf", file: !4, line: 105, flags: DIFlagFwdDecl)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "conv", scope: !200, file: !201, line: 149, baseType: !263, size: 64, offset: 320)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "written", scope: !200, file: !201, line: 150, baseType: !64, size: 32, offset: 384)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !200, file: !201, line: 151, baseType: !64, size: 32, offset: 416)
!270 = !DILocation(line: 12, column: 24, scope: !61)
!271 = !DILocalVariable(name: "ret", scope: !61, file: !1, line: 13, type: !64)
!272 = !DILocation(line: 13, column: 9, scope: !61)
!273 = !DILocation(line: 15, column: 24, scope: !61)
!274 = !DILocation(line: 15, column: 5, scope: !61)
!275 = !DILocation(line: 17, column: 11, scope: !61)
!276 = !DILocation(line: 17, column: 9, scope: !61)
!277 = !DILocation(line: 18, column: 10, scope: !278)
!278 = distinct !DILexicalBlock(scope: !61, file: !1, line: 18, column: 9)
!279 = !DILocation(line: 18, column: 9, scope: !61)
!280 = !DILocation(line: 18, column: 15, scope: !278)
!281 = !DILocation(line: 20, column: 12, scope: !61)
!282 = !DILocation(line: 20, column: 10, scope: !61)
!283 = !DILocation(line: 21, column: 10, scope: !284)
!284 = distinct !DILexicalBlock(scope: !61, file: !1, line: 21, column: 9)
!285 = !DILocation(line: 21, column: 9, scope: !61)
!286 = !DILocation(line: 22, column: 20, scope: !287)
!287 = distinct !DILexicalBlock(scope: !284, file: !1, line: 21, column: 16)
!288 = !DILocation(line: 22, column: 9, scope: !287)
!289 = !DILocation(line: 23, column: 9, scope: !287)
!290 = !DILocation(line: 25, column: 26, scope: !61)
!291 = !DILocation(line: 25, column: 31, scope: !61)
!292 = !DILocation(line: 25, column: 5, scope: !61)
!293 = !DILocation(line: 27, column: 11, scope: !61)
!294 = !DILocation(line: 27, column: 9, scope: !61)
!295 = !DILocation(line: 28, column: 10, scope: !296)
!296 = distinct !DILexicalBlock(scope: !61, file: !1, line: 28, column: 9)
!297 = !DILocation(line: 28, column: 9, scope: !61)
!298 = !DILocation(line: 29, column: 20, scope: !299)
!299 = distinct !DILexicalBlock(scope: !296, file: !1, line: 28, column: 15)
!300 = !DILocation(line: 29, column: 9, scope: !299)
!301 = !DILocation(line: 30, column: 9, scope: !299)
!302 = !DILocation(line: 33, column: 42, scope: !61)
!303 = !DILocation(line: 33, column: 14, scope: !61)
!304 = !DILocation(line: 33, column: 12, scope: !61)
!305 = !DILocation(line: 34, column: 10, scope: !306)
!306 = distinct !DILexicalBlock(scope: !61, file: !1, line: 34, column: 9)
!307 = !DILocation(line: 34, column: 9, scope: !61)
!308 = !DILocation(line: 35, column: 23, scope: !309)
!309 = distinct !DILexicalBlock(scope: !306, file: !1, line: 34, column: 18)
!310 = !DILocation(line: 35, column: 9, scope: !309)
!311 = !DILocation(line: 36, column: 20, scope: !309)
!312 = !DILocation(line: 36, column: 9, scope: !309)
!313 = !DILocation(line: 37, column: 9, scope: !309)
!314 = !DILocation(line: 40, column: 31, scope: !61)
!315 = !DILocation(line: 40, column: 11, scope: !61)
!316 = !DILocation(line: 40, column: 9, scope: !61)
!317 = !DILocation(line: 41, column: 5, scope: !61)
!318 = !DILocation(line: 43, column: 26, scope: !61)
!319 = !DILocation(line: 43, column: 5, scope: !61)
!320 = !DILocation(line: 44, column: 19, scope: !61)
!321 = !DILocation(line: 44, column: 5, scope: !61)
!322 = !DILocation(line: 45, column: 16, scope: !61)
!323 = !DILocation(line: 45, column: 5, scope: !61)
!324 = !DILocation(line: 46, column: 5, scope: !61)
!325 = !DILocation(line: 47, column: 1, scope: !61)

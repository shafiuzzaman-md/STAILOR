; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/195_xmlsave.c_2179_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/195_xmlsave.c_2179_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDoc = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, i32, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlNs*, i8*, i8*, i8*, i8*, i8*, i32, %struct._xmlDict*, i8*, i32, i32 }
%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i8*, i16, i16 }
%struct._xmlAttr = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlAttr*, %struct._xmlAttr*, %struct._xmlDoc*, %struct._xmlNs*, i32, i8* }
%struct._xmlDtd = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._xmlNs = type { %struct._xmlNs*, i32, i8*, i8*, i8*, %struct._xmlDoc* }
%struct._xmlDict = type opaque
%struct._xmlBuffer = type { i8*, i32, i32, i32, i8* }
%struct._xmlSaveCtxt = type opaque
%struct._xmlOutputBuffer = type { i8*, i32 (i8*, i8*, i32)*, i32 (i8*)*, %struct._xmlCharEncodingHandler*, %struct._xmlBuf*, %struct._xmlBuf*, i32, i32 }
%struct._xmlCharEncodingHandler = type { i8*, i32 (i8*, i32*, i8*, i32*)*, i32 (i8*, i32*, i8*, i32*)*, i8*, i8*, %struct._uconv_t*, %struct._uconv_t* }
%struct._uconv_t = type { %struct.UConverter*, %struct.UConverter*, [1024 x i16], i16*, i16* }
%struct.UConverter = type opaque
%struct._xmlBuf = type opaque

@.str = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/195_xmlsave.c_2179_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !61 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlDoc*, align 8
  %3 = alloca %struct._xmlNode*, align 8
  %4 = alloca %struct._xmlBuffer*, align 8
  %5 = alloca %struct._xmlSaveCtxt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._xmlOutputBuffer*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %2, metadata !66, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %3, metadata !174, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.declare(metadata %struct._xmlBuffer** %4, metadata !179, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.declare(metadata %struct._xmlSaveCtxt** %5, metadata !192, metadata !DIExpression()), !dbg !198
  call void @llvm.dbg.declare(metadata i32* %6, metadata !199, metadata !DIExpression()), !dbg !200
  call void @xmlInitParser(), !dbg !201
  %8 = call %struct._xmlDoc* @xmlNewDoc(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !202
  store %struct._xmlDoc* %8, %struct._xmlDoc** %2, align 8, !dbg !203
  %9 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !204
  %10 = icmp ne %struct._xmlDoc* %9, null, !dbg !204
  br i1 %10, label %12, label %11, !dbg !206

11:                                               ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !207
  br label %61, !dbg !207

12:                                               ; preds = %0
  %13 = call %struct._xmlNode* @xmlNewNode(%struct._xmlNs* noundef null, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !208
  store %struct._xmlNode* %13, %struct._xmlNode** %3, align 8, !dbg !209
  %14 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !210
  %15 = icmp ne %struct._xmlNode* %14, null, !dbg !210
  br i1 %15, label %18, label %16, !dbg !212

16:                                               ; preds = %12
  %17 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !213
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %17), !dbg !215
  store i32 1, i32* %1, align 4, !dbg !216
  br label %61, !dbg !216

18:                                               ; preds = %12
  %19 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !217
  %20 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !218
  %21 = call %struct._xmlNode* @xmlDocSetRootElement(%struct._xmlDoc* noundef %19, %struct._xmlNode* noundef %20), !dbg !219
  %22 = call %struct._xmlBuffer* @xmlBufferCreate(), !dbg !220
  store %struct._xmlBuffer* %22, %struct._xmlBuffer** %4, align 8, !dbg !221
  %23 = load %struct._xmlBuffer*, %struct._xmlBuffer** %4, align 8, !dbg !222
  %24 = icmp ne %struct._xmlBuffer* %23, null, !dbg !222
  br i1 %24, label %27, label %25, !dbg !224

25:                                               ; preds = %18
  %26 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !225
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %26), !dbg !227
  store i32 1, i32* %1, align 4, !dbg !228
  br label %61, !dbg !228

27:                                               ; preds = %18
  %28 = load %struct._xmlBuffer*, %struct._xmlBuffer** %4, align 8, !dbg !229
  %29 = call %struct._xmlSaveCtxt* @xmlSaveToBuffer(%struct._xmlBuffer* noundef %28, i8* noundef null, i32 noundef 0), !dbg !230
  store %struct._xmlSaveCtxt* %29, %struct._xmlSaveCtxt** %5, align 8, !dbg !231
  %30 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %5, align 8, !dbg !232
  %31 = icmp ne %struct._xmlSaveCtxt* %30, null, !dbg !232
  br i1 %31, label %35, label %32, !dbg !234

32:                                               ; preds = %27
  %33 = load %struct._xmlBuffer*, %struct._xmlBuffer** %4, align 8, !dbg !235
  call void @xmlBufferFree(%struct._xmlBuffer* noundef %33), !dbg !237
  %34 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !238
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %34), !dbg !239
  store i32 1, i32* %1, align 4, !dbg !240
  br label %61, !dbg !240

35:                                               ; preds = %27
  %36 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %5, align 8, !dbg !241
  %37 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !242
  %38 = call i64 @xmlSaveDoc(%struct._xmlSaveCtxt* noundef %36, %struct._xmlDoc* noundef %37), !dbg !243
  %39 = trunc i64 %38 to i32, !dbg !243
  store i32 %39, i32* %6, align 4, !dbg !244
  %40 = load i32, i32* %6, align 4, !dbg !245
  %41 = icmp slt i32 %40, 0, !dbg !247
  br i1 %41, label %42, label %47, !dbg !248

42:                                               ; preds = %35
  %43 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %5, align 8, !dbg !249
  %44 = call i32 @xmlSaveClose(%struct._xmlSaveCtxt* noundef %43), !dbg !251
  %45 = load %struct._xmlBuffer*, %struct._xmlBuffer** %4, align 8, !dbg !252
  call void @xmlBufferFree(%struct._xmlBuffer* noundef %45), !dbg !253
  %46 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !254
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %46), !dbg !255
  store i32 1, i32* %1, align 4, !dbg !256
  br label %61, !dbg !256

47:                                               ; preds = %35
  %48 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %5, align 8, !dbg !257
  %49 = call i32 @xmlSaveClose(%struct._xmlSaveCtxt* noundef %48), !dbg !258
  call void @llvm.dbg.declare(metadata %struct._xmlOutputBuffer** %7, metadata !259, metadata !DIExpression()), !dbg !335
  %50 = load %struct._xmlBuffer*, %struct._xmlBuffer** %4, align 8, !dbg !336
  %51 = call %struct._xmlOutputBuffer* @xmlOutputBufferCreateBuffer(%struct._xmlBuffer* noundef %50, %struct._xmlCharEncodingHandler* noundef null), !dbg !337
  store %struct._xmlOutputBuffer* %51, %struct._xmlOutputBuffer** %7, align 8, !dbg !335
  %52 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %7, align 8, !dbg !338
  %53 = icmp ne %struct._xmlOutputBuffer* %52, null, !dbg !338
  br i1 %53, label %54, label %58, !dbg !340

54:                                               ; preds = %47
  %55 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.3, i64 0, i64 0), i32 noundef 63, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !341
  %56 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %7, align 8, !dbg !343
  %57 = call i32 @xmlOutputBufferClose(%struct._xmlOutputBuffer* noundef %56), !dbg !344
  br label %58, !dbg !345

58:                                               ; preds = %54, %47
  %59 = load %struct._xmlBuffer*, %struct._xmlBuffer** %4, align 8, !dbg !346
  call void @xmlBufferFree(%struct._xmlBuffer* noundef %59), !dbg !347
  %60 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !348
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %60), !dbg !349
  call void @xmlCleanupParser(), !dbg !350
  store i32 0, i32* %1, align 4, !dbg !351
  br label %61, !dbg !351

61:                                               ; preds = %58, %42, %32, %25, %16, %11
  %62 = load i32, i32* %1, align 4, !dbg !352
  ret i32 %62, !dbg !352
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @xmlInitParser() #2

declare %struct._xmlDoc* @xmlNewDoc(i8* noundef) #2

declare %struct._xmlNode* @xmlNewNode(%struct._xmlNs* noundef, i8* noundef) #2

declare void @xmlFreeDoc(%struct._xmlDoc* noundef) #2

declare %struct._xmlNode* @xmlDocSetRootElement(%struct._xmlDoc* noundef, %struct._xmlNode* noundef) #2

declare %struct._xmlBuffer* @xmlBufferCreate() #2

declare %struct._xmlSaveCtxt* @xmlSaveToBuffer(%struct._xmlBuffer* noundef, i8* noundef, i32 noundef) #2

declare void @xmlBufferFree(%struct._xmlBuffer* noundef) #2

declare i64 @xmlSaveDoc(%struct._xmlSaveCtxt* noundef, %struct._xmlDoc* noundef) #2

declare i32 @xmlSaveClose(%struct._xmlSaveCtxt* noundef) #2

declare %struct._xmlOutputBuffer* @xmlOutputBufferCreateBuffer(%struct._xmlBuffer* noundef, %struct._xmlCharEncodingHandler* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare i32 @xmlOutputBufferClose(%struct._xmlOutputBuffer* noundef) #2

declare void @xmlCleanupParser() #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !48, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/195_xmlsave.c_2179_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "c84fbea23f4184d891233b5a415afd87")
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
!66 = !DILocalVariable(name: "doc", scope: !61, file: !1, line: 8, type: !67)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !70)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !71)
!71 = !{!72, !74, !76, !79, !131, !132, !133, !134, !135, !136, !137, !138, !158, !159, !160, !161, !162, !163, !164, !165, !166, !170, !171, !172}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !70, file: !4, line: 560, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !70, file: !4, line: 561, baseType: !75, size: 32, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !70, file: !4, line: 562, baseType: !77, size: 64, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !70, file: !4, line: 563, baseType: !80, size: 64, offset: 192)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !82)
!82 = !{!83, !84, !85, !88, !89, !90, !91, !92, !93, !95, !108, !109, !126, !127, !128, !130}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !81, file: !4, line: 493, baseType: !73, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !81, file: !4, line: 494, baseType: !75, size: 32, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !81, file: !4, line: 495, baseType: !86, size: 64, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !81, file: !4, line: 496, baseType: !80, size: 64, offset: 192)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !81, file: !4, line: 497, baseType: !80, size: 64, offset: 256)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !81, file: !4, line: 498, baseType: !80, size: 64, offset: 320)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !81, file: !4, line: 499, baseType: !80, size: 64, offset: 384)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !81, file: !4, line: 500, baseType: !80, size: 64, offset: 448)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !81, file: !4, line: 501, baseType: !94, size: 64, offset: 512)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !81, file: !4, line: 504, baseType: !96, size: 64, offset: 576)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !98)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !99)
!99 = !{!100, !102, !104, !105, !106, !107}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !98, file: !4, line: 389, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !98, file: !4, line: 390, baseType: !103, size: 32, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !75)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !98, file: !4, line: 391, baseType: !86, size: 64, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !98, file: !4, line: 392, baseType: !86, size: 64, offset: 192)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !98, file: !4, line: 393, baseType: !73, size: 64, offset: 256)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !98, file: !4, line: 394, baseType: !94, size: 64, offset: 320)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !81, file: !4, line: 505, baseType: !49, size: 64, offset: 640)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !81, file: !4, line: 506, baseType: !110, size: 64, offset: 704)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !112)
!112 = !{!113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !125}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !111, file: !4, line: 434, baseType: !73, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !111, file: !4, line: 435, baseType: !75, size: 32, offset: 64)
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
!125 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !111, file: !4, line: 445, baseType: !73, size: 64, offset: 704)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !81, file: !4, line: 507, baseType: !96, size: 64, offset: 768)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !81, file: !4, line: 508, baseType: !73, size: 64, offset: 832)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !81, file: !4, line: 509, baseType: !129, size: 16, offset: 896)
!129 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !81, file: !4, line: 510, baseType: !129, size: 16, offset: 912)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !70, file: !4, line: 564, baseType: !80, size: 64, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !70, file: !4, line: 565, baseType: !80, size: 64, offset: 320)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !70, file: !4, line: 566, baseType: !80, size: 64, offset: 384)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !70, file: !4, line: 567, baseType: !80, size: 64, offset: 448)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !70, file: !4, line: 568, baseType: !94, size: 64, offset: 512)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !70, file: !4, line: 571, baseType: !64, size: 32, offset: 576)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !70, file: !4, line: 572, baseType: !64, size: 32, offset: 608)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !70, file: !4, line: 578, baseType: !139, size: 64, offset: 640)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !141)
!141 = !{!142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !140, file: !4, line: 406, baseType: !73, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !140, file: !4, line: 407, baseType: !75, size: 32, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !140, file: !4, line: 408, baseType: !86, size: 64, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !140, file: !4, line: 409, baseType: !80, size: 64, offset: 192)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !140, file: !4, line: 410, baseType: !80, size: 64, offset: 256)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !140, file: !4, line: 411, baseType: !94, size: 64, offset: 320)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !140, file: !4, line: 412, baseType: !80, size: 64, offset: 384)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !140, file: !4, line: 413, baseType: !80, size: 64, offset: 448)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !140, file: !4, line: 414, baseType: !94, size: 64, offset: 512)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !140, file: !4, line: 417, baseType: !73, size: 64, offset: 576)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !140, file: !4, line: 418, baseType: !73, size: 64, offset: 640)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !140, file: !4, line: 419, baseType: !73, size: 64, offset: 704)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !140, file: !4, line: 420, baseType: !73, size: 64, offset: 768)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !140, file: !4, line: 421, baseType: !86, size: 64, offset: 832)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !140, file: !4, line: 422, baseType: !86, size: 64, offset: 896)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !140, file: !4, line: 423, baseType: !73, size: 64, offset: 960)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !70, file: !4, line: 579, baseType: !139, size: 64, offset: 704)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !70, file: !4, line: 580, baseType: !101, size: 64, offset: 768)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !70, file: !4, line: 581, baseType: !86, size: 64, offset: 832)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !70, file: !4, line: 582, baseType: !86, size: 64, offset: 896)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !70, file: !4, line: 583, baseType: !73, size: 64, offset: 960)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !70, file: !4, line: 584, baseType: !73, size: 64, offset: 1024)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !70, file: !4, line: 585, baseType: !86, size: 64, offset: 1088)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !70, file: !4, line: 586, baseType: !64, size: 32, offset: 1152)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !70, file: !4, line: 588, baseType: !167, size: 64, offset: 1216)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !169, line: 24, flags: DIFlagFwdDecl)
!169 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!170 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !70, file: !4, line: 589, baseType: !73, size: 64, offset: 1280)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !70, file: !4, line: 590, baseType: !64, size: 32, offset: 1344)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !70, file: !4, line: 592, baseType: !64, size: 32, offset: 1376)
!173 = !DILocation(line: 8, column: 15, scope: !61)
!174 = !DILocalVariable(name: "node", scope: !61, file: !1, line: 9, type: !175)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !4, line: 491, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !4, line: 490, baseType: !81)
!178 = !DILocation(line: 9, column: 16, scope: !61)
!179 = !DILocalVariable(name: "buf", scope: !61, file: !1, line: 10, type: !180)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBufferPtr", file: !4, line: 90, baseType: !181)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBuffer", file: !4, line: 89, baseType: !183)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlBuffer", file: !4, line: 91, size: 256, elements: !184)
!184 = !{!185, !186, !187, !188, !190}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !183, file: !4, line: 92, baseType: !49, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !183, file: !4, line: 93, baseType: !5, size: 32, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !183, file: !4, line: 94, baseType: !5, size: 32, offset: 96)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !183, file: !4, line: 95, baseType: !189, size: 32, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBufferAllocationScheme", file: !4, line: 81, baseType: !40)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "contentIO", scope: !183, file: !4, line: 96, baseType: !49, size: 64, offset: 192)
!191 = !DILocation(line: 10, column: 18, scope: !61)
!192 = !DILocalVariable(name: "ctxt", scope: !61, file: !1, line: 11, type: !193)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSaveCtxtPtr", file: !194, line: 42, baseType: !195)
!194 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlsave.h", directory: "", checksumkind: CSK_MD5, checksum: "eed2463cad941f74f99b8b9bc03aa74d")
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSaveCtxt", file: !194, line: 41, baseType: !197)
!197 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSaveCtxt", file: !194, line: 41, flags: DIFlagFwdDecl)
!198 = !DILocation(line: 11, column: 20, scope: !61)
!199 = !DILocalVariable(name: "ret", scope: !61, file: !1, line: 12, type: !64)
!200 = !DILocation(line: 12, column: 9, scope: !61)
!201 = !DILocation(line: 15, column: 5, scope: !61)
!202 = !DILocation(line: 18, column: 11, scope: !61)
!203 = !DILocation(line: 18, column: 9, scope: !61)
!204 = !DILocation(line: 19, column: 10, scope: !205)
!205 = distinct !DILexicalBlock(scope: !61, file: !1, line: 19, column: 9)
!206 = !DILocation(line: 19, column: 9, scope: !61)
!207 = !DILocation(line: 19, column: 15, scope: !205)
!208 = !DILocation(line: 20, column: 12, scope: !61)
!209 = !DILocation(line: 20, column: 10, scope: !61)
!210 = !DILocation(line: 21, column: 10, scope: !211)
!211 = distinct !DILexicalBlock(scope: !61, file: !1, line: 21, column: 9)
!212 = !DILocation(line: 21, column: 9, scope: !61)
!213 = !DILocation(line: 22, column: 20, scope: !214)
!214 = distinct !DILexicalBlock(scope: !211, file: !1, line: 21, column: 16)
!215 = !DILocation(line: 22, column: 9, scope: !214)
!216 = !DILocation(line: 23, column: 9, scope: !214)
!217 = !DILocation(line: 25, column: 26, scope: !61)
!218 = !DILocation(line: 25, column: 31, scope: !61)
!219 = !DILocation(line: 25, column: 5, scope: !61)
!220 = !DILocation(line: 28, column: 11, scope: !61)
!221 = !DILocation(line: 28, column: 9, scope: !61)
!222 = !DILocation(line: 29, column: 10, scope: !223)
!223 = distinct !DILexicalBlock(scope: !61, file: !1, line: 29, column: 9)
!224 = !DILocation(line: 29, column: 9, scope: !61)
!225 = !DILocation(line: 30, column: 20, scope: !226)
!226 = distinct !DILexicalBlock(scope: !223, file: !1, line: 29, column: 15)
!227 = !DILocation(line: 30, column: 9, scope: !226)
!228 = !DILocation(line: 31, column: 9, scope: !226)
!229 = !DILocation(line: 35, column: 28, scope: !61)
!230 = !DILocation(line: 35, column: 12, scope: !61)
!231 = !DILocation(line: 35, column: 10, scope: !61)
!232 = !DILocation(line: 36, column: 10, scope: !233)
!233 = distinct !DILexicalBlock(scope: !61, file: !1, line: 36, column: 9)
!234 = !DILocation(line: 36, column: 9, scope: !61)
!235 = !DILocation(line: 37, column: 23, scope: !236)
!236 = distinct !DILexicalBlock(scope: !233, file: !1, line: 36, column: 16)
!237 = !DILocation(line: 37, column: 9, scope: !236)
!238 = !DILocation(line: 38, column: 20, scope: !236)
!239 = !DILocation(line: 38, column: 9, scope: !236)
!240 = !DILocation(line: 39, column: 9, scope: !236)
!241 = !DILocation(line: 43, column: 22, scope: !61)
!242 = !DILocation(line: 43, column: 28, scope: !61)
!243 = !DILocation(line: 43, column: 11, scope: !61)
!244 = !DILocation(line: 43, column: 9, scope: !61)
!245 = !DILocation(line: 44, column: 9, scope: !246)
!246 = distinct !DILexicalBlock(scope: !61, file: !1, line: 44, column: 9)
!247 = !DILocation(line: 44, column: 13, scope: !246)
!248 = !DILocation(line: 44, column: 9, scope: !61)
!249 = !DILocation(line: 45, column: 22, scope: !250)
!250 = distinct !DILexicalBlock(scope: !246, file: !1, line: 44, column: 18)
!251 = !DILocation(line: 45, column: 9, scope: !250)
!252 = !DILocation(line: 46, column: 23, scope: !250)
!253 = !DILocation(line: 46, column: 9, scope: !250)
!254 = !DILocation(line: 47, column: 20, scope: !250)
!255 = !DILocation(line: 47, column: 9, scope: !250)
!256 = !DILocation(line: 48, column: 9, scope: !250)
!257 = !DILocation(line: 52, column: 18, scope: !61)
!258 = !DILocation(line: 52, column: 5, scope: !61)
!259 = !DILocalVariable(name: "outbuf", scope: !61, file: !1, line: 59, type: !260)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlOutputBufferPtr", file: !4, line: 32, baseType: !261)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlOutputBuffer", file: !4, line: 31, baseType: !263)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlOutputBuffer", file: !264, line: 141, size: 448, elements: !265)
!264 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlIO.h", directory: "", checksumkind: CSK_MD5, checksum: "a868e7a396360b2f16d10eac4a34669c")
!265 = !{!266, !267, !274, !279, !327, !332, !333, !334}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !263, file: !264, line: 142, baseType: !73, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "writecallback", scope: !263, file: !264, line: 143, baseType: !268, size: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlOutputWriteCallback", file: !264, line: 100, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!64, !73, !272, !64}
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "closecallback", scope: !263, file: !264, line: 144, baseType: !275, size: 64, offset: 128)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlOutputCloseCallback", file: !264, line: 110, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!64, !73}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !263, file: !264, line: 146, baseType: !280, size: 64, offset: 192)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingHandlerPtr", file: !281, line: 145, baseType: !282)
!281 = !DIFile(filename: "/usr/include/libxml2/libxml/encoding.h", directory: "", checksumkind: CSK_MD5, checksum: "807b84fade38abad3ae0d9b6af714dbc")
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingHandler", file: !281, line: 144, baseType: !284)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlCharEncodingHandler", file: !281, line: 146, size: 448, elements: !285)
!285 = !{!286, !287, !296, !298, !301, !302, !326}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !284, file: !281, line: 147, baseType: !77, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !284, file: !281, line: 148, baseType: !288, size: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingInputFunc", file: !281, line: 101, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{!64, !292, !293, !294, !293}
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !284, file: !281, line: 149, baseType: !297, size: 64, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingOutputFunc", file: !281, line: 123, baseType: !289)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "iconv_in", scope: !284, file: !281, line: 151, baseType: !299, size: 64, offset: 192)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "iconv_t", file: !300, line: 29, baseType: !73)
!300 = !DIFile(filename: "/usr/include/iconv.h", directory: "", checksumkind: CSK_MD5, checksum: "edfee9bcfa398c9184cc8f95deb97c16")
!301 = !DIDerivedType(tag: DW_TAG_member, name: "iconv_out", scope: !284, file: !281, line: 152, baseType: !299, size: 64, offset: 256)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "uconv_in", scope: !284, file: !281, line: 155, baseType: !303, size: 64, offset: 320)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "uconv_t", file: !281, line: 141, baseType: !305)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_uconv_t", file: !281, line: 134, size: 16640, elements: !306)
!306 = !{!307, !312, !313, !323, !325}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "uconv", scope: !305, file: !281, line: 135, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "UConverter", file: !310, line: 96, baseType: !311)
!310 = !DIFile(filename: "/usr/include/unicode/ucnv_err.h", directory: "", checksumkind: CSK_MD5, checksum: "a507bbb125e54d860485ec054a4a55ed")
!311 = !DICompositeType(tag: DW_TAG_structure_type, name: "UConverter", file: !310, line: 93, flags: DIFlagFwdDecl)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "utf8", scope: !305, file: !281, line: 136, baseType: !308, size: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_buf", scope: !305, file: !281, line: 137, baseType: !314, size: 16384, offset: 128)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 16384, elements: !321)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "UChar", file: !316, line: 388, baseType: !317)
!316 = !DIFile(filename: "/usr/include/unicode/umachine.h", directory: "", checksumkind: CSK_MD5, checksum: "2d902ff00eac765b305cb113b74d34df")
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !318, line: 25, baseType: !319)
!318 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "256fcabbefa27ca8cf5e6d37525e6e16")
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !320, line: 40, baseType: !129)
!320 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!321 = !{!322}
!322 = !DISubrange(count: 1024)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_source", scope: !305, file: !281, line: 138, baseType: !324, size: 64, offset: 16512)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_target", scope: !305, file: !281, line: 139, baseType: !324, size: 64, offset: 16576)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "uconv_out", scope: !284, file: !281, line: 156, baseType: !303, size: 64, offset: 384)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !263, file: !264, line: 148, baseType: !328, size: 64, offset: 256)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBufPtr", file: !4, line: 114, baseType: !329)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBuf", file: !4, line: 105, baseType: !331)
!331 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlBuf", file: !4, line: 105, flags: DIFlagFwdDecl)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "conv", scope: !263, file: !264, line: 149, baseType: !328, size: 64, offset: 320)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "written", scope: !263, file: !264, line: 150, baseType: !64, size: 32, offset: 384)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !263, file: !264, line: 151, baseType: !64, size: 32, offset: 416)
!335 = !DILocation(line: 59, column: 24, scope: !61)
!336 = !DILocation(line: 59, column: 61, scope: !61)
!337 = !DILocation(line: 59, column: 33, scope: !61)
!338 = !DILocation(line: 60, column: 9, scope: !339)
!339 = distinct !DILexicalBlock(scope: !61, file: !1, line: 60, column: 9)
!340 = !DILocation(line: 60, column: 9, scope: !61)
!341 = !DILocation(line: 63, column: 9, scope: !342)
!342 = distinct !DILexicalBlock(scope: !339, file: !1, line: 60, column: 17)
!343 = !DILocation(line: 64, column: 30, scope: !342)
!344 = !DILocation(line: 64, column: 9, scope: !342)
!345 = !DILocation(line: 65, column: 5, scope: !342)
!346 = !DILocation(line: 68, column: 19, scope: !61)
!347 = !DILocation(line: 68, column: 5, scope: !61)
!348 = !DILocation(line: 69, column: 16, scope: !61)
!349 = !DILocation(line: 69, column: 5, scope: !61)
!350 = !DILocation(line: 70, column: 5, scope: !61)
!351 = !DILocation(line: 72, column: 5, scope: !61)
!352 = !DILocation(line: 73, column: 1, scope: !61)

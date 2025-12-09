; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/190_xmlsave.c_2468_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/190_xmlsave.c_2468_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._xmlDoc = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, i32, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlNs*, i8*, i8*, i8*, i8*, i8*, i32, %struct._xmlDict*, i8*, i32, i32 }
%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i8*, i16, i16 }
%struct._xmlAttr = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlAttr*, %struct._xmlAttr*, %struct._xmlDoc*, %struct._xmlNs*, i32, i8* }
%struct._xmlDtd = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._xmlNs = type { %struct._xmlNs*, i32, i8*, i8*, i8*, %struct._xmlDoc* }
%struct._xmlDict = type opaque
%struct._xmlSaveCtxt = type opaque
%struct._xmlOutputBuffer = type { i8*, i32 (i8*, i8*, i32)*, i32 (i8*)*, %struct._xmlCharEncodingHandler*, %struct._xmlBuf*, %struct._xmlBuf*, i32, i32 }
%struct._xmlCharEncodingHandler = type { i8*, i32 (i8*, i32*, i8*, i32*)*, i32 (i8*, i32*, i8*, i32*)*, i8*, i8*, %struct._uconv_t*, %struct._uconv_t* }
%struct._uconv_t = type { %struct.UConverter*, %struct.UConverter*, [1024 x i16], i16*, i16* }
%struct.UConverter = type opaque
%struct._xmlBuf = type opaque
%struct._xmlBuffer = type { i8*, i32, i32, i32, i8* }

@stdout = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/190_xmlsave.c_2468_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !54 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlDoc*, align 8
  %3 = alloca %struct._xmlNode*, align 8
  %4 = alloca %struct._xmlSaveCtxt*, align 8
  %5 = alloca %struct._xmlOutputBuffer*, align 8
  %6 = alloca %struct._xmlCharEncodingHandler*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct._IO_FILE*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %2, metadata !59, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %3, metadata !166, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.declare(metadata %struct._xmlSaveCtxt** %4, metadata !171, metadata !DIExpression()), !dbg !177
  call void @llvm.dbg.declare(metadata %struct._xmlOutputBuffer** %5, metadata !178, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.declare(metadata %struct._xmlCharEncodingHandler** %6, metadata !255, metadata !DIExpression()), !dbg !256
  store %struct._xmlCharEncodingHandler* null, %struct._xmlCharEncodingHandler** %6, align 8, !dbg !256
  call void @llvm.dbg.declare(metadata i8** %7, metadata !257, metadata !DIExpression()), !dbg !258
  store i8* null, i8** %7, align 8, !dbg !258
  call void @llvm.dbg.declare(metadata i32* %8, metadata !259, metadata !DIExpression()), !dbg !260
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %9, metadata !261, metadata !DIExpression()), !dbg !319
  call void @xmlInitParser(), !dbg !320
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !321
  store %struct._IO_FILE* %10, %struct._IO_FILE** %9, align 8, !dbg !322
  %11 = call %struct._xmlDoc* @xmlNewDoc(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !323
  store %struct._xmlDoc* %11, %struct._xmlDoc** %2, align 8, !dbg !324
  %12 = call %struct._xmlNode* @xmlNewNode(%struct._xmlNs* noundef null, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !325
  store %struct._xmlNode* %12, %struct._xmlNode** %3, align 8, !dbg !326
  %13 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !327
  %14 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !328
  %15 = call %struct._xmlNode* @xmlDocSetRootElement(%struct._xmlDoc* noundef %13, %struct._xmlNode* noundef %14), !dbg !329
  %16 = bitcast i32* %8 to i8*, !dbg !330
  call void @klee_make_symbolic(i8* noundef %16, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)), !dbg !331
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !332
  %18 = load %struct._xmlCharEncodingHandler*, %struct._xmlCharEncodingHandler** %6, align 8, !dbg !333
  %19 = call %struct._xmlOutputBuffer* @xmlOutputBufferCreateFile(%struct._IO_FILE* noundef %17, %struct._xmlCharEncodingHandler* noundef %18), !dbg !334
  store %struct._xmlOutputBuffer* %19, %struct._xmlOutputBuffer** %5, align 8, !dbg !335
  %20 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %5, align 8, !dbg !336
  %21 = icmp eq %struct._xmlOutputBuffer* %20, null, !dbg !338
  br i1 %21, label %22, label %24, !dbg !339

22:                                               ; preds = %0
  %23 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !340
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %23), !dbg !342
  call void @xmlCleanupParser(), !dbg !343
  store i32 0, i32* %1, align 4, !dbg !344
  br label %46, !dbg !344

24:                                               ; preds = %0
  %25 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %5, align 8, !dbg !345
  %26 = bitcast %struct._xmlOutputBuffer* %25 to %struct._xmlBuffer*, !dbg !345
  %27 = load i8*, i8** %7, align 8, !dbg !346
  %28 = load i32, i32* %8, align 4, !dbg !347
  %29 = call %struct._xmlSaveCtxt* @xmlSaveToBuffer(%struct._xmlBuffer* noundef %26, i8* noundef %27, i32 noundef %28), !dbg !348
  store %struct._xmlSaveCtxt* %29, %struct._xmlSaveCtxt** %4, align 8, !dbg !349
  %30 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %4, align 8, !dbg !350
  %31 = icmp eq %struct._xmlSaveCtxt* %30, null, !dbg !352
  br i1 %31, label %32, label %36, !dbg !353

32:                                               ; preds = %24
  %33 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %5, align 8, !dbg !354
  %34 = call i32 @xmlOutputBufferClose(%struct._xmlOutputBuffer* noundef %33), !dbg !356
  %35 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !357
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %35), !dbg !358
  call void @xmlCleanupParser(), !dbg !359
  store i32 0, i32* %1, align 4, !dbg !360
  br label %46, !dbg !360

36:                                               ; preds = %24
  %37 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %4, align 8, !dbg !361
  %38 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !362
  %39 = call i64 @xmlSaveDoc(%struct._xmlSaveCtxt* noundef %37, %struct._xmlDoc* noundef %38), !dbg !363
  %40 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.4, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !364
  %41 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %4, align 8, !dbg !365
  %42 = call i32 @xmlSaveClose(%struct._xmlSaveCtxt* noundef %41), !dbg !366
  %43 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %5, align 8, !dbg !367
  %44 = call i32 @xmlOutputBufferClose(%struct._xmlOutputBuffer* noundef %43), !dbg !368
  %45 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !369
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %45), !dbg !370
  call void @xmlCleanupParser(), !dbg !371
  store i32 0, i32* %1, align 4, !dbg !372
  br label %46, !dbg !372

46:                                               ; preds = %36, %32, %22
  %47 = load i32, i32* %1, align 4, !dbg !373
  ret i32 %47, !dbg !373
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @xmlInitParser() #2

declare %struct._xmlDoc* @xmlNewDoc(i8* noundef) #2

declare %struct._xmlNode* @xmlNewNode(%struct._xmlNs* noundef, i8* noundef) #2

declare %struct._xmlNode* @xmlDocSetRootElement(%struct._xmlDoc* noundef, %struct._xmlNode* noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare %struct._xmlOutputBuffer* @xmlOutputBufferCreateFile(%struct._IO_FILE* noundef, %struct._xmlCharEncodingHandler* noundef) #2

declare void @xmlFreeDoc(%struct._xmlDoc* noundef) #2

declare void @xmlCleanupParser() #2

declare %struct._xmlSaveCtxt* @xmlSaveToBuffer(%struct._xmlBuffer* noundef, i8* noundef, i32 noundef) #2

declare i32 @xmlOutputBufferClose(%struct._xmlOutputBuffer* noundef) #2

declare i64 @xmlSaveDoc(%struct._xmlSaveCtxt* noundef, %struct._xmlDoc* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare i32 @xmlSaveClose(%struct._xmlSaveCtxt* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !40, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/190_xmlsave.c_2468_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "fd3eaee2ccb5b998e858bfe746cf7403")
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
!59 = !DILocalVariable(name: "doc", scope: !54, file: !1, line: 8, type: !60)
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
!165 = !DILocation(line: 8, column: 15, scope: !54)
!166 = !DILocalVariable(name: "node", scope: !54, file: !1, line: 9, type: !167)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !4, line: 491, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !4, line: 490, baseType: !73)
!170 = !DILocation(line: 9, column: 16, scope: !54)
!171 = !DILocalVariable(name: "save", scope: !54, file: !1, line: 10, type: !172)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSaveCtxtPtr", file: !173, line: 42, baseType: !174)
!173 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlsave.h", directory: "", checksumkind: CSK_MD5, checksum: "eed2463cad941f74f99b8b9bc03aa74d")
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSaveCtxt", file: !173, line: 41, baseType: !176)
!176 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSaveCtxt", file: !173, line: 41, flags: DIFlagFwdDecl)
!177 = !DILocation(line: 10, column: 20, scope: !54)
!178 = !DILocalVariable(name: "buf", scope: !54, file: !1, line: 11, type: !179)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlOutputBufferPtr", file: !4, line: 32, baseType: !180)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlOutputBuffer", file: !4, line: 31, baseType: !182)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlOutputBuffer", file: !183, line: 141, size: 448, elements: !184)
!183 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlIO.h", directory: "", checksumkind: CSK_MD5, checksum: "a868e7a396360b2f16d10eac4a34669c")
!184 = !{!185, !186, !193, !198, !246, !251, !252, !253}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !182, file: !183, line: 142, baseType: !45, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "writecallback", scope: !182, file: !183, line: 143, baseType: !187, size: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlOutputWriteCallback", file: !183, line: 100, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{!57, !45, !191, !57}
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "closecallback", scope: !182, file: !183, line: 144, baseType: !194, size: 64, offset: 128)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlOutputCloseCallback", file: !183, line: 110, baseType: !195)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{!57, !45}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !182, file: !183, line: 146, baseType: !199, size: 64, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingHandlerPtr", file: !200, line: 145, baseType: !201)
!200 = !DIFile(filename: "/usr/include/libxml2/libxml/encoding.h", directory: "", checksumkind: CSK_MD5, checksum: "807b84fade38abad3ae0d9b6af714dbc")
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingHandler", file: !200, line: 144, baseType: !203)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlCharEncodingHandler", file: !200, line: 146, size: 448, elements: !204)
!204 = !{!205, !206, !215, !217, !220, !221, !245}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !203, file: !200, line: 147, baseType: !69, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !203, file: !200, line: 148, baseType: !207, size: 64, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingInputFunc", file: !200, line: 101, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{!57, !211, !212, !213, !212}
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !203, file: !200, line: 149, baseType: !216, size: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingOutputFunc", file: !200, line: 123, baseType: !208)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "iconv_in", scope: !203, file: !200, line: 151, baseType: !218, size: 64, offset: 192)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "iconv_t", file: !219, line: 29, baseType: !45)
!219 = !DIFile(filename: "/usr/include/iconv.h", directory: "", checksumkind: CSK_MD5, checksum: "edfee9bcfa398c9184cc8f95deb97c16")
!220 = !DIDerivedType(tag: DW_TAG_member, name: "iconv_out", scope: !203, file: !200, line: 152, baseType: !218, size: 64, offset: 256)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "uconv_in", scope: !203, file: !200, line: 155, baseType: !222, size: 64, offset: 320)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "uconv_t", file: !200, line: 141, baseType: !224)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_uconv_t", file: !200, line: 134, size: 16640, elements: !225)
!225 = !{!226, !231, !232, !242, !244}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "uconv", scope: !224, file: !200, line: 135, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "UConverter", file: !229, line: 96, baseType: !230)
!229 = !DIFile(filename: "/usr/include/unicode/ucnv_err.h", directory: "", checksumkind: CSK_MD5, checksum: "a507bbb125e54d860485ec054a4a55ed")
!230 = !DICompositeType(tag: DW_TAG_structure_type, name: "UConverter", file: !229, line: 93, flags: DIFlagFwdDecl)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "utf8", scope: !224, file: !200, line: 136, baseType: !227, size: 64, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_buf", scope: !224, file: !200, line: 137, baseType: !233, size: 16384, offset: 128)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 16384, elements: !240)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "UChar", file: !235, line: 388, baseType: !236)
!235 = !DIFile(filename: "/usr/include/unicode/umachine.h", directory: "", checksumkind: CSK_MD5, checksum: "2d902ff00eac765b305cb113b74d34df")
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !237, line: 25, baseType: !238)
!237 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "256fcabbefa27ca8cf5e6d37525e6e16")
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !239, line: 40, baseType: !121)
!239 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!240 = !{!241}
!241 = !DISubrange(count: 1024)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_source", scope: !224, file: !200, line: 138, baseType: !243, size: 64, offset: 16512)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_target", scope: !224, file: !200, line: 139, baseType: !243, size: 64, offset: 16576)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "uconv_out", scope: !203, file: !200, line: 156, baseType: !222, size: 64, offset: 384)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !182, file: !183, line: 148, baseType: !247, size: 64, offset: 256)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBufPtr", file: !4, line: 114, baseType: !248)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBuf", file: !4, line: 105, baseType: !250)
!250 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlBuf", file: !4, line: 105, flags: DIFlagFwdDecl)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "conv", scope: !182, file: !183, line: 149, baseType: !247, size: 64, offset: 320)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "written", scope: !182, file: !183, line: 150, baseType: !57, size: 32, offset: 384)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !182, file: !183, line: 151, baseType: !57, size: 32, offset: 416)
!254 = !DILocation(line: 11, column: 24, scope: !54)
!255 = !DILocalVariable(name: "handler", scope: !54, file: !1, line: 12, type: !199)
!256 = !DILocation(line: 12, column: 31, scope: !54)
!257 = !DILocalVariable(name: "encoding", scope: !54, file: !1, line: 13, type: !191)
!258 = !DILocation(line: 13, column: 17, scope: !54)
!259 = !DILocalVariable(name: "format", scope: !54, file: !1, line: 14, type: !57)
!260 = !DILocation(line: 14, column: 9, scope: !54)
!261 = !DILocalVariable(name: "f", scope: !54, file: !1, line: 15, type: !262)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !264, line: 7, baseType: !265)
!264 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !266, line: 49, size: 1728, elements: !267)
!266 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "7a6d4a00a37ee6b9a40cd04bd01f5d00")
!267 = !{!268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !283, !285, !286, !287, !290, !291, !293, !297, !300, !302, !305, !308, !309, !310, !314, !315}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !265, file: !266, line: 51, baseType: !57, size: 32)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !265, file: !266, line: 54, baseType: !69, size: 64, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !265, file: !266, line: 55, baseType: !69, size: 64, offset: 128)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !265, file: !266, line: 56, baseType: !69, size: 64, offset: 192)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !265, file: !266, line: 57, baseType: !69, size: 64, offset: 256)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !265, file: !266, line: 58, baseType: !69, size: 64, offset: 320)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !265, file: !266, line: 59, baseType: !69, size: 64, offset: 384)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !265, file: !266, line: 60, baseType: !69, size: 64, offset: 448)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !265, file: !266, line: 61, baseType: !69, size: 64, offset: 512)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !265, file: !266, line: 64, baseType: !69, size: 64, offset: 576)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !265, file: !266, line: 65, baseType: !69, size: 64, offset: 640)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !265, file: !266, line: 66, baseType: !69, size: 64, offset: 704)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !265, file: !266, line: 68, baseType: !281, size: 64, offset: 768)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !266, line: 36, flags: DIFlagFwdDecl)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !265, file: !266, line: 70, baseType: !284, size: 64, offset: 832)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !265, file: !266, line: 72, baseType: !57, size: 32, offset: 896)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !265, file: !266, line: 73, baseType: !57, size: 32, offset: 928)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !265, file: !266, line: 74, baseType: !288, size: 64, offset: 960)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !239, line: 152, baseType: !289)
!289 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !265, file: !266, line: 77, baseType: !121, size: 16, offset: 1024)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !265, file: !266, line: 78, baseType: !292, size: 8, offset: 1040)
!292 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !265, file: !266, line: 79, baseType: !294, size: 8, offset: 1048)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 8, elements: !295)
!295 = !{!296}
!296 = !DISubrange(count: 1)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !265, file: !266, line: 81, baseType: !298, size: 64, offset: 1088)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !266, line: 43, baseType: null)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !265, file: !266, line: 89, baseType: !301, size: 64, offset: 1152)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !239, line: 153, baseType: !289)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !265, file: !266, line: 91, baseType: !303, size: 64, offset: 1216)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !266, line: 37, flags: DIFlagFwdDecl)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !265, file: !266, line: 92, baseType: !306, size: 64, offset: 1280)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !266, line: 38, flags: DIFlagFwdDecl)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !265, file: !266, line: 93, baseType: !284, size: 64, offset: 1344)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !265, file: !266, line: 94, baseType: !45, size: 64, offset: 1408)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !265, file: !266, line: 95, baseType: !311, size: 64, offset: 1472)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !312, line: 46, baseType: !313)
!312 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!313 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !265, file: !266, line: 96, baseType: !57, size: 32, offset: 1536)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !265, file: !266, line: 98, baseType: !316, size: 160, offset: 1568)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 160, elements: !317)
!317 = !{!318}
!318 = !DISubrange(count: 20)
!319 = !DILocation(line: 15, column: 11, scope: !54)
!320 = !DILocation(line: 18, column: 5, scope: !54)
!321 = !DILocation(line: 22, column: 9, scope: !54)
!322 = !DILocation(line: 22, column: 7, scope: !54)
!323 = !DILocation(line: 25, column: 11, scope: !54)
!324 = !DILocation(line: 25, column: 9, scope: !54)
!325 = !DILocation(line: 26, column: 12, scope: !54)
!326 = !DILocation(line: 26, column: 10, scope: !54)
!327 = !DILocation(line: 27, column: 26, scope: !54)
!328 = !DILocation(line: 27, column: 31, scope: !54)
!329 = !DILocation(line: 27, column: 5, scope: !54)
!330 = !DILocation(line: 30, column: 24, scope: !54)
!331 = !DILocation(line: 30, column: 5, scope: !54)
!332 = !DILocation(line: 34, column: 37, scope: !54)
!333 = !DILocation(line: 34, column: 40, scope: !54)
!334 = !DILocation(line: 34, column: 11, scope: !54)
!335 = !DILocation(line: 34, column: 9, scope: !54)
!336 = !DILocation(line: 35, column: 9, scope: !337)
!337 = distinct !DILexicalBlock(scope: !54, file: !1, line: 35, column: 9)
!338 = !DILocation(line: 35, column: 13, scope: !337)
!339 = !DILocation(line: 35, column: 9, scope: !54)
!340 = !DILocation(line: 36, column: 20, scope: !341)
!341 = distinct !DILexicalBlock(scope: !337, file: !1, line: 35, column: 22)
!342 = !DILocation(line: 36, column: 9, scope: !341)
!343 = !DILocation(line: 37, column: 9, scope: !341)
!344 = !DILocation(line: 38, column: 9, scope: !341)
!345 = !DILocation(line: 42, column: 28, scope: !54)
!346 = !DILocation(line: 42, column: 33, scope: !54)
!347 = !DILocation(line: 42, column: 43, scope: !54)
!348 = !DILocation(line: 42, column: 12, scope: !54)
!349 = !DILocation(line: 42, column: 10, scope: !54)
!350 = !DILocation(line: 43, column: 9, scope: !351)
!351 = distinct !DILexicalBlock(scope: !54, file: !1, line: 43, column: 9)
!352 = !DILocation(line: 43, column: 14, scope: !351)
!353 = !DILocation(line: 43, column: 9, scope: !54)
!354 = !DILocation(line: 44, column: 30, scope: !355)
!355 = distinct !DILexicalBlock(scope: !351, file: !1, line: 43, column: 23)
!356 = !DILocation(line: 44, column: 9, scope: !355)
!357 = !DILocation(line: 45, column: 20, scope: !355)
!358 = !DILocation(line: 45, column: 9, scope: !355)
!359 = !DILocation(line: 46, column: 9, scope: !355)
!360 = !DILocation(line: 47, column: 9, scope: !355)
!361 = !DILocation(line: 51, column: 16, scope: !54)
!362 = !DILocation(line: 51, column: 22, scope: !54)
!363 = !DILocation(line: 51, column: 5, scope: !54)
!364 = !DILocation(line: 55, column: 5, scope: !54)
!365 = !DILocation(line: 58, column: 18, scope: !54)
!366 = !DILocation(line: 58, column: 5, scope: !54)
!367 = !DILocation(line: 59, column: 26, scope: !54)
!368 = !DILocation(line: 59, column: 5, scope: !54)
!369 = !DILocation(line: 60, column: 16, scope: !54)
!370 = !DILocation(line: 60, column: 5, scope: !54)
!371 = !DILocation(line: 61, column: 5, scope: !54)
!372 = !DILocation(line: 63, column: 5, scope: !54)
!373 = !DILocation(line: 64, column: 1, scope: !54)

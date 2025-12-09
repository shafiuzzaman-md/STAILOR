; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/189_xmlsave.c_2517_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/189_xmlsave.c_2517_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDoc = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, i32, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlNs*, i8*, i8*, i8*, i8*, i8*, i32, %struct._xmlDict*, i8*, i32, i32 }
%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i8*, i16, i16 }
%struct._xmlAttr = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlAttr*, %struct._xmlAttr*, %struct._xmlDoc*, %struct._xmlNs*, i32, i8* }
%struct._xmlDtd = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._xmlNs = type { %struct._xmlNs*, i32, i8*, i8*, i8*, %struct._xmlDoc* }
%struct._xmlDict = type opaque
%struct._xmlOutputBuffer = type { i8*, i32 (i8*, i8*, i32)*, i32 (i8*)*, %struct._xmlCharEncodingHandler*, %struct._xmlBuf*, %struct._xmlBuf*, i32, i32 }
%struct._xmlCharEncodingHandler = type { i8*, i32 (i8*, i32*, i8*, i32*)*, i32 (i8*, i32*, i8*, i32*)*, i8*, i8*, %struct._uconv_t*, %struct._uconv_t* }
%struct._uconv_t = type { %struct.UConverter*, %struct.UConverter*, [1024 x i16], i16*, i16* }
%struct.UConverter = type opaque
%struct._xmlBuf = type opaque

@.str = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"encoding_len\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"<root>test</root>\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"noname.xml\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/189_xmlsave.c_2517_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !50 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlDoc*, align 8
  %3 = alloca %struct._xmlNode*, align 8
  %4 = alloca %struct._xmlOutputBuffer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %2, metadata !55, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %3, metadata !166, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.declare(metadata %struct._xmlOutputBuffer** %4, metadata !171, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.declare(metadata i8** %5, metadata !248, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.declare(metadata i32* %6, metadata !250, metadata !DIExpression()), !dbg !251
  %7 = bitcast i8** %5 to i8*, !dbg !252
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !dbg !253
  %8 = bitcast i32* %6 to i8*, !dbg !254
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0)), !dbg !255
  %9 = load i32, i32* %6, align 4, !dbg !256
  %10 = icmp sge i32 %9, 0, !dbg !257
  %11 = zext i1 %10 to i32, !dbg !257
  %12 = sext i32 %11 to i64, !dbg !256
  call void @klee_assume(i64 noundef %12), !dbg !258
  %13 = load i32, i32* %6, align 4, !dbg !259
  %14 = icmp slt i32 %13, 1024, !dbg !260
  %15 = zext i1 %14 to i32, !dbg !260
  %16 = sext i32 %15 to i64, !dbg !259
  call void @klee_assume(i64 noundef %16), !dbg !261
  %17 = load i8*, i8** %5, align 8, !dbg !262
  %18 = icmp ne i8* %17, null, !dbg !263
  %19 = zext i1 %18 to i32, !dbg !263
  %20 = sext i32 %19 to i64, !dbg !262
  call void @klee_assume(i64 noundef %20), !dbg !264
  %21 = call %struct._xmlDoc* @xmlReadMemory(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 17, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* noundef null, i32 noundef 0), !dbg !265
  store %struct._xmlDoc* %21, %struct._xmlDoc** %2, align 8, !dbg !266
  %22 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !267
  %23 = icmp eq %struct._xmlDoc* %22, null, !dbg !269
  br i1 %23, label %24, label %25, !dbg !270

24:                                               ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !271
  br label %47, !dbg !271

25:                                               ; preds = %0
  %26 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !272
  %27 = call %struct._xmlNode* @xmlDocGetRootElement(%struct._xmlDoc* noundef %26), !dbg !273
  store %struct._xmlNode* %27, %struct._xmlNode** %3, align 8, !dbg !274
  %28 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !275
  %29 = icmp eq %struct._xmlNode* %28, null, !dbg !277
  br i1 %29, label %30, label %32, !dbg !278

30:                                               ; preds = %25
  %31 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !279
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %31), !dbg !281
  store i32 0, i32* %1, align 4, !dbg !282
  br label %47, !dbg !282

32:                                               ; preds = %25
  %33 = call %struct._xmlOutputBuffer* @xmlAllocOutputBuffer(%struct._xmlCharEncodingHandler* noundef null), !dbg !283
  store %struct._xmlOutputBuffer* %33, %struct._xmlOutputBuffer** %4, align 8, !dbg !284
  %34 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %4, align 8, !dbg !285
  %35 = icmp eq %struct._xmlOutputBuffer* %34, null, !dbg !287
  br i1 %35, label %36, label %38, !dbg !288

36:                                               ; preds = %32
  %37 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !289
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %37), !dbg !291
  store i32 0, i32* %1, align 4, !dbg !292
  br label %47, !dbg !292

38:                                               ; preds = %32
  %39 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.5, i64 0, i64 0), i32 noundef 35, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !293
  %40 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %4, align 8, !dbg !294
  %41 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !295
  %42 = load i8*, i8** %5, align 8, !dbg !296
  %43 = call i32 (%struct._xmlOutputBuffer*, %struct._xmlNode*, i32, i32, i8*, ...) bitcast (i32 (...)* @xmlNodeDumpOutputInternal to i32 (%struct._xmlOutputBuffer*, %struct._xmlNode*, i32, i32, i8*, ...)*)(%struct._xmlOutputBuffer* noundef %40, %struct._xmlNode* noundef %41, i32 noundef 0, i32 noundef 0, i8* noundef %42), !dbg !297
  %44 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %4, align 8, !dbg !298
  %45 = call i32 @xmlOutputBufferClose(%struct._xmlOutputBuffer* noundef %44), !dbg !299
  %46 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !300
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %46), !dbg !301
  store i32 0, i32* %1, align 4, !dbg !302
  br label %47, !dbg !302

47:                                               ; preds = %38, %36, %30, %24
  %48 = load i32, i32* %1, align 4, !dbg !303
  ret i32 %48, !dbg !303
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

declare %struct._xmlDoc* @xmlReadMemory(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef) #2

declare %struct._xmlNode* @xmlDocGetRootElement(%struct._xmlDoc* noundef) #2

declare void @xmlFreeDoc(%struct._xmlDoc* noundef) #2

declare %struct._xmlOutputBuffer* @xmlAllocOutputBuffer(%struct._xmlCharEncodingHandler* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare i32 @xmlNodeDumpOutputInternal(...) #2

declare i32 @xmlOutputBufferClose(%struct._xmlOutputBuffer* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !40, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/189_xmlsave.c_2517_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "ea4020ad23cff94215ad781f8a2a5bc9")
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
!50 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 7, type: !51, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !54)
!51 = !DISubroutineType(types: !52)
!52 = !{!53}
!53 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!54 = !{}
!55 = !DILocalVariable(name: "doc", scope: !50, file: !1, line: 8, type: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !59)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !60)
!60 = !{!61, !62, !64, !67, !123, !124, !125, !126, !127, !128, !129, !130, !150, !151, !152, !153, !154, !155, !156, !157, !158, !162, !163, !164}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !59, file: !4, line: 560, baseType: !41, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !59, file: !4, line: 561, baseType: !63, size: 32, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !59, file: !4, line: 562, baseType: !65, size: 64, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !59, file: !4, line: 563, baseType: !68, size: 64, offset: 192)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !70)
!70 = !{!71, !72, !73, !79, !80, !81, !82, !83, !84, !86, !99, !101, !118, !119, !120, !122}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !69, file: !4, line: 493, baseType: !41, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !69, file: !4, line: 494, baseType: !63, size: 32, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !69, file: !4, line: 495, baseType: !74, size: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !77, line: 28, baseType: !78)
!77 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!78 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !69, file: !4, line: 496, baseType: !68, size: 64, offset: 192)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !69, file: !4, line: 497, baseType: !68, size: 64, offset: 256)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !69, file: !4, line: 498, baseType: !68, size: 64, offset: 320)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !69, file: !4, line: 499, baseType: !68, size: 64, offset: 384)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !69, file: !4, line: 500, baseType: !68, size: 64, offset: 448)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !69, file: !4, line: 501, baseType: !85, size: 64, offset: 512)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !69, file: !4, line: 504, baseType: !87, size: 64, offset: 576)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !89)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !90)
!90 = !{!91, !93, !95, !96, !97, !98}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !89, file: !4, line: 389, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !89, file: !4, line: 390, baseType: !94, size: 32, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !63)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !89, file: !4, line: 391, baseType: !74, size: 64, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !89, file: !4, line: 392, baseType: !74, size: 64, offset: 192)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !89, file: !4, line: 393, baseType: !41, size: 64, offset: 256)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !89, file: !4, line: 394, baseType: !85, size: 64, offset: 320)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !69, file: !4, line: 505, baseType: !100, size: 64, offset: 640)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !69, file: !4, line: 506, baseType: !102, size: 64, offset: 704)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !104)
!104 = !{!105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !117}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !103, file: !4, line: 434, baseType: !41, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !103, file: !4, line: 435, baseType: !63, size: 32, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !103, file: !4, line: 436, baseType: !74, size: 64, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !103, file: !4, line: 437, baseType: !68, size: 64, offset: 192)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !103, file: !4, line: 438, baseType: !68, size: 64, offset: 256)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !103, file: !4, line: 439, baseType: !68, size: 64, offset: 320)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !103, file: !4, line: 440, baseType: !102, size: 64, offset: 384)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !103, file: !4, line: 441, baseType: !102, size: 64, offset: 448)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !103, file: !4, line: 442, baseType: !85, size: 64, offset: 512)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !103, file: !4, line: 443, baseType: !87, size: 64, offset: 576)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !103, file: !4, line: 444, baseType: !116, size: 32, offset: 640)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !103, file: !4, line: 445, baseType: !41, size: 64, offset: 704)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !69, file: !4, line: 507, baseType: !87, size: 64, offset: 768)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !69, file: !4, line: 508, baseType: !41, size: 64, offset: 832)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !69, file: !4, line: 509, baseType: !121, size: 16, offset: 896)
!121 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !69, file: !4, line: 510, baseType: !121, size: 16, offset: 912)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !59, file: !4, line: 564, baseType: !68, size: 64, offset: 256)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !59, file: !4, line: 565, baseType: !68, size: 64, offset: 320)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !59, file: !4, line: 566, baseType: !68, size: 64, offset: 384)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !59, file: !4, line: 567, baseType: !68, size: 64, offset: 448)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !59, file: !4, line: 568, baseType: !85, size: 64, offset: 512)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !59, file: !4, line: 571, baseType: !53, size: 32, offset: 576)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !59, file: !4, line: 572, baseType: !53, size: 32, offset: 608)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !59, file: !4, line: 578, baseType: !131, size: 64, offset: 640)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !133)
!133 = !{!134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !132, file: !4, line: 406, baseType: !41, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !132, file: !4, line: 407, baseType: !63, size: 32, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !132, file: !4, line: 408, baseType: !74, size: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !132, file: !4, line: 409, baseType: !68, size: 64, offset: 192)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !132, file: !4, line: 410, baseType: !68, size: 64, offset: 256)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !132, file: !4, line: 411, baseType: !85, size: 64, offset: 320)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !132, file: !4, line: 412, baseType: !68, size: 64, offset: 384)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !132, file: !4, line: 413, baseType: !68, size: 64, offset: 448)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !132, file: !4, line: 414, baseType: !85, size: 64, offset: 512)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !132, file: !4, line: 417, baseType: !41, size: 64, offset: 576)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !132, file: !4, line: 418, baseType: !41, size: 64, offset: 640)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !132, file: !4, line: 419, baseType: !41, size: 64, offset: 704)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !132, file: !4, line: 420, baseType: !41, size: 64, offset: 768)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !132, file: !4, line: 421, baseType: !74, size: 64, offset: 832)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !132, file: !4, line: 422, baseType: !74, size: 64, offset: 896)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !132, file: !4, line: 423, baseType: !41, size: 64, offset: 960)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !59, file: !4, line: 579, baseType: !131, size: 64, offset: 704)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !59, file: !4, line: 580, baseType: !92, size: 64, offset: 768)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !59, file: !4, line: 581, baseType: !74, size: 64, offset: 832)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !59, file: !4, line: 582, baseType: !74, size: 64, offset: 896)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !59, file: !4, line: 583, baseType: !41, size: 64, offset: 960)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !59, file: !4, line: 584, baseType: !41, size: 64, offset: 1024)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !59, file: !4, line: 585, baseType: !74, size: 64, offset: 1088)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !59, file: !4, line: 586, baseType: !53, size: 32, offset: 1152)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !59, file: !4, line: 588, baseType: !159, size: 64, offset: 1216)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !161, line: 24, flags: DIFlagFwdDecl)
!161 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!162 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !59, file: !4, line: 589, baseType: !41, size: 64, offset: 1280)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !59, file: !4, line: 590, baseType: !53, size: 32, offset: 1344)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !59, file: !4, line: 592, baseType: !53, size: 32, offset: 1376)
!165 = !DILocation(line: 8, column: 15, scope: !50)
!166 = !DILocalVariable(name: "node", scope: !50, file: !1, line: 9, type: !167)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !4, line: 491, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !4, line: 490, baseType: !69)
!170 = !DILocation(line: 9, column: 16, scope: !50)
!171 = !DILocalVariable(name: "buf", scope: !50, file: !1, line: 10, type: !172)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlOutputBufferPtr", file: !4, line: 32, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlOutputBuffer", file: !4, line: 31, baseType: !175)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlOutputBuffer", file: !176, line: 141, size: 448, elements: !177)
!176 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlIO.h", directory: "", checksumkind: CSK_MD5, checksum: "a868e7a396360b2f16d10eac4a34669c")
!177 = !{!178, !179, !186, !191, !239, !244, !245, !246}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !175, file: !176, line: 142, baseType: !41, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "writecallback", scope: !175, file: !176, line: 143, baseType: !180, size: 64, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlOutputWriteCallback", file: !176, line: 100, baseType: !181)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DISubroutineType(types: !183)
!183 = !{!53, !41, !184, !53}
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "closecallback", scope: !175, file: !176, line: 144, baseType: !187, size: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlOutputCloseCallback", file: !176, line: 110, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{!53, !41}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !175, file: !176, line: 146, baseType: !192, size: 64, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingHandlerPtr", file: !193, line: 145, baseType: !194)
!193 = !DIFile(filename: "/usr/include/libxml2/libxml/encoding.h", directory: "", checksumkind: CSK_MD5, checksum: "807b84fade38abad3ae0d9b6af714dbc")
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingHandler", file: !193, line: 144, baseType: !196)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlCharEncodingHandler", file: !193, line: 146, size: 448, elements: !197)
!197 = !{!198, !199, !208, !210, !213, !214, !238}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !196, file: !193, line: 147, baseType: !65, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !196, file: !193, line: 148, baseType: !200, size: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingInputFunc", file: !193, line: 101, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{!53, !204, !205, !206, !205}
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !196, file: !193, line: 149, baseType: !209, size: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingOutputFunc", file: !193, line: 123, baseType: !201)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "iconv_in", scope: !196, file: !193, line: 151, baseType: !211, size: 64, offset: 192)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "iconv_t", file: !212, line: 29, baseType: !41)
!212 = !DIFile(filename: "/usr/include/iconv.h", directory: "", checksumkind: CSK_MD5, checksum: "edfee9bcfa398c9184cc8f95deb97c16")
!213 = !DIDerivedType(tag: DW_TAG_member, name: "iconv_out", scope: !196, file: !193, line: 152, baseType: !211, size: 64, offset: 256)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "uconv_in", scope: !196, file: !193, line: 155, baseType: !215, size: 64, offset: 320)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "uconv_t", file: !193, line: 141, baseType: !217)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_uconv_t", file: !193, line: 134, size: 16640, elements: !218)
!218 = !{!219, !224, !225, !235, !237}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "uconv", scope: !217, file: !193, line: 135, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "UConverter", file: !222, line: 96, baseType: !223)
!222 = !DIFile(filename: "/usr/include/unicode/ucnv_err.h", directory: "", checksumkind: CSK_MD5, checksum: "a507bbb125e54d860485ec054a4a55ed")
!223 = !DICompositeType(tag: DW_TAG_structure_type, name: "UConverter", file: !222, line: 93, flags: DIFlagFwdDecl)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "utf8", scope: !217, file: !193, line: 136, baseType: !220, size: 64, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_buf", scope: !217, file: !193, line: 137, baseType: !226, size: 16384, offset: 128)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 16384, elements: !233)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "UChar", file: !228, line: 388, baseType: !229)
!228 = !DIFile(filename: "/usr/include/unicode/umachine.h", directory: "", checksumkind: CSK_MD5, checksum: "2d902ff00eac765b305cb113b74d34df")
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !230, line: 25, baseType: !231)
!230 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "256fcabbefa27ca8cf5e6d37525e6e16")
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !232, line: 40, baseType: !121)
!232 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!233 = !{!234}
!234 = !DISubrange(count: 1024)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_source", scope: !217, file: !193, line: 138, baseType: !236, size: 64, offset: 16512)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_target", scope: !217, file: !193, line: 139, baseType: !236, size: 64, offset: 16576)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "uconv_out", scope: !196, file: !193, line: 156, baseType: !215, size: 64, offset: 384)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !175, file: !176, line: 148, baseType: !240, size: 64, offset: 256)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBufPtr", file: !4, line: 114, baseType: !241)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBuf", file: !4, line: 105, baseType: !243)
!243 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlBuf", file: !4, line: 105, flags: DIFlagFwdDecl)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "conv", scope: !175, file: !176, line: 149, baseType: !240, size: 64, offset: 320)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "written", scope: !175, file: !176, line: 150, baseType: !53, size: 32, offset: 384)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !175, file: !176, line: 151, baseType: !53, size: 32, offset: 416)
!247 = !DILocation(line: 10, column: 24, scope: !50)
!248 = !DILocalVariable(name: "encoding", scope: !50, file: !1, line: 11, type: !184)
!249 = !DILocation(line: 11, column: 17, scope: !50)
!250 = !DILocalVariable(name: "encoding_len", scope: !50, file: !1, line: 12, type: !53)
!251 = !DILocation(line: 12, column: 9, scope: !50)
!252 = !DILocation(line: 14, column: 24, scope: !50)
!253 = !DILocation(line: 14, column: 5, scope: !50)
!254 = !DILocation(line: 15, column: 24, scope: !50)
!255 = !DILocation(line: 15, column: 5, scope: !50)
!256 = !DILocation(line: 16, column: 17, scope: !50)
!257 = !DILocation(line: 16, column: 30, scope: !50)
!258 = !DILocation(line: 16, column: 5, scope: !50)
!259 = !DILocation(line: 17, column: 17, scope: !50)
!260 = !DILocation(line: 17, column: 30, scope: !50)
!261 = !DILocation(line: 17, column: 5, scope: !50)
!262 = !DILocation(line: 18, column: 17, scope: !50)
!263 = !DILocation(line: 18, column: 26, scope: !50)
!264 = !DILocation(line: 18, column: 5, scope: !50)
!265 = !DILocation(line: 20, column: 11, scope: !50)
!266 = !DILocation(line: 20, column: 9, scope: !50)
!267 = !DILocation(line: 21, column: 9, scope: !268)
!268 = distinct !DILexicalBlock(scope: !50, file: !1, line: 21, column: 9)
!269 = !DILocation(line: 21, column: 13, scope: !268)
!270 = !DILocation(line: 21, column: 9, scope: !50)
!271 = !DILocation(line: 21, column: 22, scope: !268)
!272 = !DILocation(line: 23, column: 33, scope: !50)
!273 = !DILocation(line: 23, column: 12, scope: !50)
!274 = !DILocation(line: 23, column: 10, scope: !50)
!275 = !DILocation(line: 24, column: 9, scope: !276)
!276 = distinct !DILexicalBlock(scope: !50, file: !1, line: 24, column: 9)
!277 = !DILocation(line: 24, column: 14, scope: !276)
!278 = !DILocation(line: 24, column: 9, scope: !50)
!279 = !DILocation(line: 25, column: 20, scope: !280)
!280 = distinct !DILexicalBlock(scope: !276, file: !1, line: 24, column: 23)
!281 = !DILocation(line: 25, column: 9, scope: !280)
!282 = !DILocation(line: 26, column: 9, scope: !280)
!283 = !DILocation(line: 29, column: 11, scope: !50)
!284 = !DILocation(line: 29, column: 9, scope: !50)
!285 = !DILocation(line: 30, column: 9, scope: !286)
!286 = distinct !DILexicalBlock(scope: !50, file: !1, line: 30, column: 9)
!287 = !DILocation(line: 30, column: 13, scope: !286)
!288 = !DILocation(line: 30, column: 9, scope: !50)
!289 = !DILocation(line: 31, column: 20, scope: !290)
!290 = distinct !DILexicalBlock(scope: !286, file: !1, line: 30, column: 22)
!291 = !DILocation(line: 31, column: 9, scope: !290)
!292 = !DILocation(line: 32, column: 9, scope: !290)
!293 = !DILocation(line: 35, column: 5, scope: !50)
!294 = !DILocation(line: 36, column: 31, scope: !50)
!295 = !DILocation(line: 36, column: 36, scope: !50)
!296 = !DILocation(line: 36, column: 48, scope: !50)
!297 = !DILocation(line: 36, column: 5, scope: !50)
!298 = !DILocation(line: 38, column: 26, scope: !50)
!299 = !DILocation(line: 38, column: 5, scope: !50)
!300 = !DILocation(line: 39, column: 16, scope: !50)
!301 = !DILocation(line: 39, column: 5, scope: !50)
!302 = !DILocation(line: 40, column: 5, scope: !50)
!303 = !DILocation(line: 41, column: 1, scope: !50)

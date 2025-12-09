; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/016_entities.c_163_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/016_entities.c_163_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDoc = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, i32, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlNs*, i8*, i8*, i8*, i8*, i8*, i32, %struct._xmlDict*, i8*, i32, i32 }
%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i8*, i16, i16 }
%struct._xmlAttr = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlAttr*, %struct._xmlAttr*, %struct._xmlDoc*, %struct._xmlNs*, i32, i8* }
%struct._xmlDtd = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._xmlNs = type { %struct._xmlNs*, i32, i8*, i8*, i8*, %struct._xmlDoc* }
%struct._xmlDict = type opaque
%struct._xmlEntity = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDtd*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, i32, i32, i8*, i8*, %struct._xmlEntity*, i8*, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"content\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"ent1\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/016_entities.c_163_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !62 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlDoc*, align 8
  %3 = alloca %struct._xmlNode*, align 8
  %4 = alloca %struct._xmlEntity*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %2, metadata !67, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %3, metadata !175, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.declare(metadata %struct._xmlEntity** %4, metadata !180, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.declare(metadata i8** %5, metadata !208, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.declare(metadata i64* %6, metadata !210, metadata !DIExpression()), !dbg !214
  call void @xmlInitParser(), !dbg !215
  %7 = call %struct._xmlDoc* @xmlNewDoc(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !216
  store %struct._xmlDoc* %7, %struct._xmlDoc** %2, align 8, !dbg !217
  %8 = call %struct._xmlNode* @xmlNewNode(%struct._xmlNs* noundef null, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !218
  store %struct._xmlNode* %8, %struct._xmlNode** %3, align 8, !dbg !219
  %9 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !220
  %10 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !221
  %11 = call %struct._xmlNode* @xmlDocSetRootElement(%struct._xmlDoc* noundef %9, %struct._xmlNode* noundef %10), !dbg !222
  store i64 100, i64* %6, align 8, !dbg !223
  %12 = load i64, i64* %6, align 8, !dbg !224
  %13 = add i64 %12, 1, !dbg !225
  %14 = call noalias i8* @malloc(i64 noundef %13) #5, !dbg !226
  store i8* %14, i8** %5, align 8, !dbg !227
  %15 = load i8*, i8** %5, align 8, !dbg !228
  %16 = load i64, i64* %6, align 8, !dbg !229
  %17 = add i64 %16, 1, !dbg !230
  call void @klee_make_symbolic(i8* noundef %15, i64 noundef %17, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)), !dbg !231
  %18 = load i8*, i8** %5, align 8, !dbg !232
  %19 = load i64, i64* %6, align 8, !dbg !233
  %20 = getelementptr inbounds i8, i8* %18, i64 %19, !dbg !232
  store i8 0, i8* %20, align 1, !dbg !234
  %21 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !235
  %22 = load i8*, i8** %5, align 8, !dbg !236
  %23 = call %struct._xmlEntity* @xmlAddDocEntity(%struct._xmlDoc* noundef %21, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 noundef 1, i8* noundef null, i8* noundef null, i8* noundef %22), !dbg !237
  store %struct._xmlEntity* %23, %struct._xmlEntity** %4, align 8, !dbg !238
  %24 = load %struct._xmlEntity*, %struct._xmlEntity** %4, align 8, !dbg !239
  %25 = icmp ne %struct._xmlEntity* %24, null, !dbg !239
  br i1 %25, label %26, label %28, !dbg !241

26:                                               ; preds = %0
  %27 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.5, i64 0, i64 0), i32 noundef 34, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !242
  br label %28, !dbg !244

28:                                               ; preds = %26, %0
  %29 = load i8*, i8** %5, align 8, !dbg !245
  call void @free(i8* noundef %29) #5, !dbg !246
  %30 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !247
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %30), !dbg !248
  call void @xmlCleanupParser(), !dbg !249
  ret i32 0, !dbg !250
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

declare %struct._xmlEntity* @xmlAddDocEntity(%struct._xmlDoc* noundef, i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

declare void @xmlFreeDoc(%struct._xmlDoc* noundef) #2

declare void @xmlCleanupParser() #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !49, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/016_entities.c_163_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "229f72095de8e1893a3d2293560a6d10")
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
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !41, line: 24, baseType: !5, size: 32, elements: !42)
!41 = !DIFile(filename: "/usr/include/libxml2/libxml/entities.h", directory: "", checksumkind: CSK_MD5, checksum: "16467595fdaff28420d1657b1658f267")
!42 = !{!43, !44, !45, !46, !47, !48}
!43 = !DIEnumerator(name: "XML_INTERNAL_GENERAL_ENTITY", value: 1)
!44 = !DIEnumerator(name: "XML_EXTERNAL_GENERAL_PARSED_ENTITY", value: 2)
!45 = !DIEnumerator(name: "XML_EXTERNAL_GENERAL_UNPARSED_ENTITY", value: 3)
!46 = !DIEnumerator(name: "XML_INTERNAL_PARAMETER_ENTITY", value: 4)
!47 = !DIEnumerator(name: "XML_EXTERNAL_PARAMETER_ENTITY", value: 5)
!48 = !DIEnumerator(name: "XML_INTERNAL_PREDEFINED_ENTITY", value: 6)
!49 = !{!50}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !52, line: 28, baseType: !53)
!52 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!53 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!54 = !{i32 7, !"Dwarf Version", i32 5}
!55 = !{i32 2, !"Debug Info Version", i32 3}
!56 = !{i32 1, !"wchar_size", i32 4}
!57 = !{i32 7, !"PIC Level", i32 2}
!58 = !{i32 7, !"PIE Level", i32 2}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"Ubuntu clang version 14.0.6"}
!62 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 7, type: !63, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!63 = !DISubroutineType(types: !64)
!64 = !{!65}
!65 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!66 = !{}
!67 = !DILocalVariable(name: "doc", scope: !62, file: !1, line: 8, type: !68)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !71)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !72)
!72 = !{!73, !75, !77, !80, !132, !133, !134, !135, !136, !137, !138, !139, !159, !160, !161, !162, !163, !164, !165, !166, !167, !171, !172, !173}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !71, file: !4, line: 560, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !71, file: !4, line: 561, baseType: !76, size: 32, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !71, file: !4, line: 562, baseType: !78, size: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !71, file: !4, line: 563, baseType: !81, size: 64, offset: 192)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !83)
!83 = !{!84, !85, !86, !89, !90, !91, !92, !93, !94, !96, !109, !110, !127, !128, !129, !131}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !82, file: !4, line: 493, baseType: !74, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !82, file: !4, line: 494, baseType: !76, size: 32, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !82, file: !4, line: 495, baseType: !87, size: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !82, file: !4, line: 496, baseType: !81, size: 64, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !82, file: !4, line: 497, baseType: !81, size: 64, offset: 256)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !82, file: !4, line: 498, baseType: !81, size: 64, offset: 320)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !82, file: !4, line: 499, baseType: !81, size: 64, offset: 384)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !82, file: !4, line: 500, baseType: !81, size: 64, offset: 448)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !82, file: !4, line: 501, baseType: !95, size: 64, offset: 512)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !82, file: !4, line: 504, baseType: !97, size: 64, offset: 576)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !99)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !100)
!100 = !{!101, !103, !105, !106, !107, !108}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !99, file: !4, line: 389, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !99, file: !4, line: 390, baseType: !104, size: 32, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !76)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !99, file: !4, line: 391, baseType: !87, size: 64, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !99, file: !4, line: 392, baseType: !87, size: 64, offset: 192)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !99, file: !4, line: 393, baseType: !74, size: 64, offset: 256)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !99, file: !4, line: 394, baseType: !95, size: 64, offset: 320)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !82, file: !4, line: 505, baseType: !50, size: 64, offset: 640)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !82, file: !4, line: 506, baseType: !111, size: 64, offset: 704)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !113)
!113 = !{!114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !126}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !112, file: !4, line: 434, baseType: !74, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !112, file: !4, line: 435, baseType: !76, size: 32, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !112, file: !4, line: 436, baseType: !87, size: 64, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !112, file: !4, line: 437, baseType: !81, size: 64, offset: 192)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !112, file: !4, line: 438, baseType: !81, size: 64, offset: 256)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !112, file: !4, line: 439, baseType: !81, size: 64, offset: 320)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !112, file: !4, line: 440, baseType: !111, size: 64, offset: 384)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !112, file: !4, line: 441, baseType: !111, size: 64, offset: 448)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !112, file: !4, line: 442, baseType: !95, size: 64, offset: 512)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !112, file: !4, line: 443, baseType: !97, size: 64, offset: 576)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !112, file: !4, line: 444, baseType: !125, size: 32, offset: 640)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !112, file: !4, line: 445, baseType: !74, size: 64, offset: 704)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !82, file: !4, line: 507, baseType: !97, size: 64, offset: 768)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !82, file: !4, line: 508, baseType: !74, size: 64, offset: 832)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !82, file: !4, line: 509, baseType: !130, size: 16, offset: 896)
!130 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !82, file: !4, line: 510, baseType: !130, size: 16, offset: 912)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !71, file: !4, line: 564, baseType: !81, size: 64, offset: 256)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !71, file: !4, line: 565, baseType: !81, size: 64, offset: 320)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !71, file: !4, line: 566, baseType: !81, size: 64, offset: 384)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !71, file: !4, line: 567, baseType: !81, size: 64, offset: 448)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !71, file: !4, line: 568, baseType: !95, size: 64, offset: 512)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !71, file: !4, line: 571, baseType: !65, size: 32, offset: 576)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !71, file: !4, line: 572, baseType: !65, size: 32, offset: 608)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !71, file: !4, line: 578, baseType: !140, size: 64, offset: 640)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !142)
!142 = !{!143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !141, file: !4, line: 406, baseType: !74, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !141, file: !4, line: 407, baseType: !76, size: 32, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !141, file: !4, line: 408, baseType: !87, size: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !141, file: !4, line: 409, baseType: !81, size: 64, offset: 192)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !141, file: !4, line: 410, baseType: !81, size: 64, offset: 256)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !141, file: !4, line: 411, baseType: !95, size: 64, offset: 320)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !141, file: !4, line: 412, baseType: !81, size: 64, offset: 384)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !141, file: !4, line: 413, baseType: !81, size: 64, offset: 448)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !141, file: !4, line: 414, baseType: !95, size: 64, offset: 512)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !141, file: !4, line: 417, baseType: !74, size: 64, offset: 576)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !141, file: !4, line: 418, baseType: !74, size: 64, offset: 640)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !141, file: !4, line: 419, baseType: !74, size: 64, offset: 704)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !141, file: !4, line: 420, baseType: !74, size: 64, offset: 768)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !141, file: !4, line: 421, baseType: !87, size: 64, offset: 832)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !141, file: !4, line: 422, baseType: !87, size: 64, offset: 896)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !141, file: !4, line: 423, baseType: !74, size: 64, offset: 960)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !71, file: !4, line: 579, baseType: !140, size: 64, offset: 704)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !71, file: !4, line: 580, baseType: !102, size: 64, offset: 768)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !71, file: !4, line: 581, baseType: !87, size: 64, offset: 832)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !71, file: !4, line: 582, baseType: !87, size: 64, offset: 896)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !71, file: !4, line: 583, baseType: !74, size: 64, offset: 960)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !71, file: !4, line: 584, baseType: !74, size: 64, offset: 1024)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !71, file: !4, line: 585, baseType: !87, size: 64, offset: 1088)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !71, file: !4, line: 586, baseType: !65, size: 32, offset: 1152)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !71, file: !4, line: 588, baseType: !168, size: 64, offset: 1216)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !170, line: 24, flags: DIFlagFwdDecl)
!170 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!171 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !71, file: !4, line: 589, baseType: !74, size: 64, offset: 1280)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !71, file: !4, line: 590, baseType: !65, size: 32, offset: 1344)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !71, file: !4, line: 592, baseType: !65, size: 32, offset: 1376)
!174 = !DILocation(line: 8, column: 15, scope: !62)
!175 = !DILocalVariable(name: "root", scope: !62, file: !1, line: 9, type: !176)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !4, line: 491, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !4, line: 490, baseType: !82)
!179 = !DILocation(line: 9, column: 16, scope: !62)
!180 = !DILocalVariable(name: "entity", scope: !62, file: !1, line: 10, type: !181)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEntityPtr", file: !4, line: 49, baseType: !182)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEntity", file: !4, line: 48, baseType: !184)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlEntity", file: !41, line: 38, size: 1088, elements: !185)
!185 = !{!186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !200, !201, !202, !204, !205, !206}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !184, file: !41, line: 39, baseType: !74, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !184, file: !41, line: 40, baseType: !76, size: 32, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !184, file: !41, line: 41, baseType: !87, size: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !184, file: !41, line: 42, baseType: !81, size: 64, offset: 192)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !184, file: !41, line: 43, baseType: !81, size: 64, offset: 256)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !184, file: !41, line: 44, baseType: !140, size: 64, offset: 320)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !184, file: !41, line: 45, baseType: !81, size: 64, offset: 384)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !184, file: !41, line: 46, baseType: !81, size: 64, offset: 448)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !184, file: !41, line: 47, baseType: !95, size: 64, offset: 512)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "orig", scope: !184, file: !41, line: 49, baseType: !50, size: 64, offset: 576)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !184, file: !41, line: 50, baseType: !50, size: 64, offset: 640)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !184, file: !41, line: 51, baseType: !65, size: 32, offset: 704)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "etype", scope: !184, file: !41, line: 52, baseType: !199, size: 32, offset: 736)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEntityType", file: !41, line: 31, baseType: !40)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !184, file: !41, line: 53, baseType: !87, size: 64, offset: 768)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !184, file: !41, line: 54, baseType: !87, size: 64, offset: 832)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "nexte", scope: !184, file: !41, line: 56, baseType: !203, size: 64, offset: 896)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "URI", scope: !184, file: !41, line: 57, baseType: !87, size: 64, offset: 960)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !184, file: !41, line: 58, baseType: !65, size: 32, offset: 1024)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "checked", scope: !184, file: !41, line: 59, baseType: !65, size: 32, offset: 1056)
!207 = !DILocation(line: 10, column: 18, scope: !62)
!208 = !DILocalVariable(name: "content", scope: !62, file: !1, line: 11, type: !50)
!209 = !DILocation(line: 11, column: 14, scope: !62)
!210 = !DILocalVariable(name: "content_len", scope: !62, file: !1, line: 12, type: !211)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !212, line: 46, baseType: !213)
!212 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!213 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!214 = !DILocation(line: 12, column: 12, scope: !62)
!215 = !DILocation(line: 15, column: 5, scope: !62)
!216 = !DILocation(line: 18, column: 11, scope: !62)
!217 = !DILocation(line: 18, column: 9, scope: !62)
!218 = !DILocation(line: 19, column: 12, scope: !62)
!219 = !DILocation(line: 19, column: 10, scope: !62)
!220 = !DILocation(line: 20, column: 26, scope: !62)
!221 = !DILocation(line: 20, column: 31, scope: !62)
!222 = !DILocation(line: 20, column: 5, scope: !62)
!223 = !DILocation(line: 23, column: 17, scope: !62)
!224 = !DILocation(line: 24, column: 33, scope: !62)
!225 = !DILocation(line: 24, column: 45, scope: !62)
!226 = !DILocation(line: 24, column: 26, scope: !62)
!227 = !DILocation(line: 24, column: 13, scope: !62)
!228 = !DILocation(line: 25, column: 24, scope: !62)
!229 = !DILocation(line: 25, column: 33, scope: !62)
!230 = !DILocation(line: 25, column: 45, scope: !62)
!231 = !DILocation(line: 25, column: 5, scope: !62)
!232 = !DILocation(line: 26, column: 5, scope: !62)
!233 = !DILocation(line: 26, column: 13, scope: !62)
!234 = !DILocation(line: 26, column: 26, scope: !62)
!235 = !DILocation(line: 30, column: 30, scope: !62)
!236 = !DILocation(line: 31, column: 42, scope: !62)
!237 = !DILocation(line: 30, column: 14, scope: !62)
!238 = !DILocation(line: 30, column: 12, scope: !62)
!239 = !DILocation(line: 32, column: 9, scope: !240)
!240 = distinct !DILexicalBlock(scope: !62, file: !1, line: 32, column: 9)
!241 = !DILocation(line: 32, column: 9, scope: !62)
!242 = !DILocation(line: 34, column: 9, scope: !243)
!243 = distinct !DILexicalBlock(scope: !240, file: !1, line: 32, column: 17)
!244 = !DILocation(line: 35, column: 5, scope: !243)
!245 = !DILocation(line: 38, column: 10, scope: !62)
!246 = !DILocation(line: 38, column: 5, scope: !62)
!247 = !DILocation(line: 39, column: 16, scope: !62)
!248 = !DILocation(line: 39, column: 5, scope: !62)
!249 = !DILocation(line: 40, column: 5, scope: !62)
!250 = !DILocation(line: 42, column: 5, scope: !62)

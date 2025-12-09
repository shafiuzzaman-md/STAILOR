; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/209_tree.c_6095_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/209_tree.c_6095_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDoc = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, i32, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlNs*, i8*, i8*, i8*, i8*, i8*, i32, %struct._xmlDict*, i8*, i32, i32 }
%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i8*, i16, i16 }
%struct._xmlAttr = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlAttr*, %struct._xmlAttr*, %struct._xmlDoc*, %struct._xmlNs*, i32, i8* }
%struct._xmlDtd = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._xmlNs = type { %struct._xmlNs*, i32, i8*, i8*, i8*, %struct._xmlDoc* }
%struct._xmlDict = type opaque

@.str = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"node_name\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"nsDef_ptr\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"doc_ptr\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"href\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/209_tree.c_6095_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !158 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlDoc*, align 8
  %3 = alloca %struct._xmlNode*, align 8
  %4 = alloca %struct._xmlNs*, align 8
  %5 = alloca [10 x i8], align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [20 x i8], align 16
  %9 = alloca [10 x i8], align 1
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %2, metadata !162, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %3, metadata !167, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.declare(metadata %struct._xmlNs** %4, metadata !172, metadata !DIExpression()), !dbg !173
  call void @xmlCheckVersion(i32 noundef 20914), !dbg !174
  %10 = call %struct._xmlDoc* @xmlNewDoc(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !175
  store %struct._xmlDoc* %10, %struct._xmlDoc** %2, align 8, !dbg !176
  %11 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !177
  %12 = icmp eq %struct._xmlDoc* %11, null, !dbg !179
  br i1 %12, label %13, label %14, !dbg !180

13:                                               ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !181
  br label %43, !dbg !181

14:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata [10 x i8]* %5, metadata !183, metadata !DIExpression()), !dbg !187
  %15 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !188
  call void @klee_make_symbolic(i8* noundef %15, i64 noundef 10, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)), !dbg !189
  %16 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 9, !dbg !190
  store i8 0, i8* %16, align 1, !dbg !191
  %17 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !192
  %18 = call %struct._xmlNode* @xmlNewNode(%struct._xmlNs* noundef null, i8* noundef %17), !dbg !193
  store %struct._xmlNode* %18, %struct._xmlNode** %3, align 8, !dbg !194
  %19 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !195
  %20 = icmp eq %struct._xmlNode* %19, null, !dbg !197
  br i1 %20, label %21, label %23, !dbg !198

21:                                               ; preds = %14
  %22 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !199
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %22), !dbg !201
  store i32 1, i32* %1, align 4, !dbg !202
  br label %43, !dbg !202

23:                                               ; preds = %14
  %24 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !203
  %25 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !204
  %26 = call %struct._xmlNode* @xmlDocSetRootElement(%struct._xmlDoc* noundef %24, %struct._xmlNode* noundef %25), !dbg !205
  call void @llvm.dbg.declare(metadata i8** %6, metadata !206, metadata !DIExpression()), !dbg !207
  %27 = bitcast i8** %6 to i8*, !dbg !208
  call void @klee_make_symbolic(i8* noundef %27, i64 noundef 8, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)), !dbg !209
  %28 = load i8*, i8** %6, align 8, !dbg !210
  %29 = bitcast i8* %28 to %struct._xmlNs*, !dbg !211
  %30 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !212
  %31 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %30, i32 0, i32 12, !dbg !213
  store %struct._xmlNs* %29, %struct._xmlNs** %31, align 8, !dbg !214
  call void @llvm.dbg.declare(metadata i8** %7, metadata !215, metadata !DIExpression()), !dbg !216
  %32 = bitcast i8** %7 to i8*, !dbg !217
  call void @klee_make_symbolic(i8* noundef %32, i64 noundef 8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)), !dbg !218
  call void @llvm.dbg.declare(metadata [20 x i8]* %8, metadata !219, metadata !DIExpression()), !dbg !223
  %33 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0, !dbg !224
  call void @klee_make_symbolic(i8* noundef %33, i64 noundef 20, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)), !dbg !225
  %34 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 19, !dbg !226
  store i8 0, i8* %34, align 1, !dbg !227
  call void @llvm.dbg.declare(metadata [10 x i8]* %9, metadata !228, metadata !DIExpression()), !dbg !229
  %35 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0, !dbg !230
  call void @klee_make_symbolic(i8* noundef %35, i64 noundef 10, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)), !dbg !231
  %36 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 9, !dbg !232
  store i8 0, i8* %36, align 1, !dbg !233
  %37 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !234
  %38 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !235
  %39 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0, !dbg !236
  %40 = call %struct._xmlNs* @xmlSearchNs(%struct._xmlDoc* noundef %37, %struct._xmlNode* noundef %38, i8* noundef %39), !dbg !237
  store %struct._xmlNs* %40, %struct._xmlNs** %4, align 8, !dbg !238
  %41 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.7, i64 0, i64 0), i32 noundef 57, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !239
  %42 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !240
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %42), !dbg !241
  call void @xmlCleanupParser(), !dbg !242
  store i32 0, i32* %1, align 4, !dbg !243
  br label %43, !dbg !243

43:                                               ; preds = %23, %21, %13
  %44 = load i32, i32* %1, align 4, !dbg !244
  ret i32 %44, !dbg !244
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @xmlCheckVersion(i32 noundef) #2

declare %struct._xmlDoc* @xmlNewDoc(i8* noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare %struct._xmlNode* @xmlNewNode(%struct._xmlNs* noundef, i8* noundef) #2

declare void @xmlFreeDoc(%struct._xmlDoc* noundef) #2

declare %struct._xmlNode* @xmlDocSetRootElement(%struct._xmlDoc* noundef, %struct._xmlNode* noundef) #2

declare %struct._xmlNs* @xmlSearchNs(%struct._xmlDoc* noundef, %struct._xmlNode* noundef, i8* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare void @xmlCleanupParser() #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!150, !151, !152, !153, !154, !155, !156}
!llvm.ident = !{!157}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !40, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/209_tree.c_6095_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "e00aedcab837763897a5407d702ef975")
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
!40 = !{!41, !46, !47}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !44, line: 28, baseType: !45)
!44 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!45 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsPtr", file: !4, line: 387, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !50)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !51)
!51 = !{!52, !54, !57, !58, !59, !60}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !50, file: !4, line: 389, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !50, file: !4, line: 390, baseType: !55, size: 32, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !50, file: !4, line: 391, baseType: !41, size: 64, offset: 128)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !50, file: !4, line: 392, baseType: !41, size: 64, offset: 192)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !50, file: !4, line: 393, baseType: !46, size: 64, offset: 256)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !50, file: !4, line: 394, baseType: !61, size: 64, offset: 320)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !63)
!63 = !{!64, !65, !66, !69, !107, !108, !109, !110, !111, !112, !114, !115, !135, !136, !137, !138, !139, !140, !141, !142, !143, !147, !148, !149}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !62, file: !4, line: 560, baseType: !46, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !62, file: !4, line: 561, baseType: !56, size: 32, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !62, file: !4, line: 562, baseType: !67, size: 64, offset: 128)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !62, file: !4, line: 563, baseType: !70, size: 64, offset: 192)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !72)
!72 = !{!73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !85, !102, !103, !104, !106}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !71, file: !4, line: 493, baseType: !46, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !71, file: !4, line: 494, baseType: !56, size: 32, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !71, file: !4, line: 495, baseType: !41, size: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !71, file: !4, line: 496, baseType: !70, size: 64, offset: 192)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !71, file: !4, line: 497, baseType: !70, size: 64, offset: 256)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !71, file: !4, line: 498, baseType: !70, size: 64, offset: 320)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !71, file: !4, line: 499, baseType: !70, size: 64, offset: 384)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !71, file: !4, line: 500, baseType: !70, size: 64, offset: 448)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !71, file: !4, line: 501, baseType: !61, size: 64, offset: 512)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !71, file: !4, line: 504, baseType: !48, size: 64, offset: 576)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !71, file: !4, line: 505, baseType: !84, size: 64, offset: 640)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !71, file: !4, line: 506, baseType: !86, size: 64, offset: 704)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !88)
!88 = !{!89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !101}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !87, file: !4, line: 434, baseType: !46, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !87, file: !4, line: 435, baseType: !56, size: 32, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !87, file: !4, line: 436, baseType: !41, size: 64, offset: 128)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !87, file: !4, line: 437, baseType: !70, size: 64, offset: 192)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !87, file: !4, line: 438, baseType: !70, size: 64, offset: 256)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !87, file: !4, line: 439, baseType: !70, size: 64, offset: 320)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !87, file: !4, line: 440, baseType: !86, size: 64, offset: 384)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !87, file: !4, line: 441, baseType: !86, size: 64, offset: 448)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !87, file: !4, line: 442, baseType: !61, size: 64, offset: 512)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !87, file: !4, line: 443, baseType: !48, size: 64, offset: 576)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !87, file: !4, line: 444, baseType: !100, size: 32, offset: 640)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !87, file: !4, line: 445, baseType: !46, size: 64, offset: 704)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !71, file: !4, line: 507, baseType: !48, size: 64, offset: 768)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !71, file: !4, line: 508, baseType: !46, size: 64, offset: 832)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !71, file: !4, line: 509, baseType: !105, size: 16, offset: 896)
!105 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !71, file: !4, line: 510, baseType: !105, size: 16, offset: 912)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !62, file: !4, line: 564, baseType: !70, size: 64, offset: 256)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !62, file: !4, line: 565, baseType: !70, size: 64, offset: 320)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !62, file: !4, line: 566, baseType: !70, size: 64, offset: 384)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !62, file: !4, line: 567, baseType: !70, size: 64, offset: 448)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !62, file: !4, line: 568, baseType: !61, size: 64, offset: 512)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !62, file: !4, line: 571, baseType: !113, size: 32, offset: 576)
!113 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !62, file: !4, line: 572, baseType: !113, size: 32, offset: 608)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !62, file: !4, line: 578, baseType: !116, size: 64, offset: 640)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !118)
!118 = !{!119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !117, file: !4, line: 406, baseType: !46, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !117, file: !4, line: 407, baseType: !56, size: 32, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !117, file: !4, line: 408, baseType: !41, size: 64, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !117, file: !4, line: 409, baseType: !70, size: 64, offset: 192)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !117, file: !4, line: 410, baseType: !70, size: 64, offset: 256)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !117, file: !4, line: 411, baseType: !61, size: 64, offset: 320)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !117, file: !4, line: 412, baseType: !70, size: 64, offset: 384)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !117, file: !4, line: 413, baseType: !70, size: 64, offset: 448)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !117, file: !4, line: 414, baseType: !61, size: 64, offset: 512)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !117, file: !4, line: 417, baseType: !46, size: 64, offset: 576)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !117, file: !4, line: 418, baseType: !46, size: 64, offset: 640)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !117, file: !4, line: 419, baseType: !46, size: 64, offset: 704)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !117, file: !4, line: 420, baseType: !46, size: 64, offset: 768)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !117, file: !4, line: 421, baseType: !41, size: 64, offset: 832)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !117, file: !4, line: 422, baseType: !41, size: 64, offset: 896)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !117, file: !4, line: 423, baseType: !46, size: 64, offset: 960)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !62, file: !4, line: 579, baseType: !116, size: 64, offset: 704)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !62, file: !4, line: 580, baseType: !53, size: 64, offset: 768)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !62, file: !4, line: 581, baseType: !41, size: 64, offset: 832)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !62, file: !4, line: 582, baseType: !41, size: 64, offset: 896)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !62, file: !4, line: 583, baseType: !46, size: 64, offset: 960)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !62, file: !4, line: 584, baseType: !46, size: 64, offset: 1024)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !62, file: !4, line: 585, baseType: !41, size: 64, offset: 1088)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !62, file: !4, line: 586, baseType: !113, size: 32, offset: 1152)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !62, file: !4, line: 588, baseType: !144, size: 64, offset: 1216)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !146, line: 24, flags: DIFlagFwdDecl)
!146 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!147 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !62, file: !4, line: 589, baseType: !46, size: 64, offset: 1280)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !62, file: !4, line: 590, baseType: !113, size: 32, offset: 1344)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !62, file: !4, line: 592, baseType: !113, size: 32, offset: 1376)
!150 = !{i32 7, !"Dwarf Version", i32 5}
!151 = !{i32 2, !"Debug Info Version", i32 3}
!152 = !{i32 1, !"wchar_size", i32 4}
!153 = !{i32 7, !"PIC Level", i32 2}
!154 = !{i32 7, !"PIE Level", i32 2}
!155 = !{i32 7, !"uwtable", i32 1}
!156 = !{i32 7, !"frame-pointer", i32 2}
!157 = !{!"Ubuntu clang version 14.0.6"}
!158 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 6, type: !159, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !161)
!159 = !DISubroutineType(types: !160)
!160 = !{!113}
!161 = !{}
!162 = !DILocalVariable(name: "doc", scope: !158, file: !1, line: 7, type: !163)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !62)
!166 = !DILocation(line: 7, column: 15, scope: !158)
!167 = !DILocalVariable(name: "node", scope: !158, file: !1, line: 8, type: !168)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !4, line: 491, baseType: !169)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !4, line: 490, baseType: !71)
!171 = !DILocation(line: 8, column: 16, scope: !158)
!172 = !DILocalVariable(name: "ns", scope: !158, file: !1, line: 9, type: !47)
!173 = !DILocation(line: 9, column: 14, scope: !158)
!174 = !DILocation(line: 12, column: 5, scope: !158)
!175 = !DILocation(line: 15, column: 11, scope: !158)
!176 = !DILocation(line: 15, column: 9, scope: !158)
!177 = !DILocation(line: 16, column: 9, scope: !178)
!178 = distinct !DILexicalBlock(scope: !158, file: !1, line: 16, column: 9)
!179 = !DILocation(line: 16, column: 13, scope: !178)
!180 = !DILocation(line: 16, column: 9, scope: !158)
!181 = !DILocation(line: 17, column: 9, scope: !182)
!182 = distinct !DILexicalBlock(scope: !178, file: !1, line: 16, column: 22)
!183 = !DILocalVariable(name: "node_name", scope: !158, file: !1, line: 21, type: !184)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 80, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 10)
!187 = !DILocation(line: 21, column: 10, scope: !158)
!188 = !DILocation(line: 22, column: 24, scope: !158)
!189 = !DILocation(line: 22, column: 5, scope: !158)
!190 = !DILocation(line: 23, column: 5, scope: !158)
!191 = !DILocation(line: 23, column: 36, scope: !158)
!192 = !DILocation(line: 24, column: 46, scope: !158)
!193 = !DILocation(line: 24, column: 12, scope: !158)
!194 = !DILocation(line: 24, column: 10, scope: !158)
!195 = !DILocation(line: 25, column: 9, scope: !196)
!196 = distinct !DILexicalBlock(scope: !158, file: !1, line: 25, column: 9)
!197 = !DILocation(line: 25, column: 14, scope: !196)
!198 = !DILocation(line: 25, column: 9, scope: !158)
!199 = !DILocation(line: 26, column: 20, scope: !200)
!200 = distinct !DILexicalBlock(scope: !196, file: !1, line: 25, column: 23)
!201 = !DILocation(line: 26, column: 9, scope: !200)
!202 = !DILocation(line: 27, column: 9, scope: !200)
!203 = !DILocation(line: 29, column: 26, scope: !158)
!204 = !DILocation(line: 29, column: 31, scope: !158)
!205 = !DILocation(line: 29, column: 5, scope: !158)
!206 = !DILocalVariable(name: "nsDef_ptr", scope: !158, file: !1, line: 32, type: !46)
!207 = !DILocation(line: 32, column: 11, scope: !158)
!208 = !DILocation(line: 33, column: 24, scope: !158)
!209 = !DILocation(line: 33, column: 5, scope: !158)
!210 = !DILocation(line: 34, column: 29, scope: !158)
!211 = !DILocation(line: 34, column: 19, scope: !158)
!212 = !DILocation(line: 34, column: 5, scope: !158)
!213 = !DILocation(line: 34, column: 11, scope: !158)
!214 = !DILocation(line: 34, column: 17, scope: !158)
!215 = !DILocalVariable(name: "doc_ptr", scope: !158, file: !1, line: 37, type: !46)
!216 = !DILocation(line: 37, column: 11, scope: !158)
!217 = !DILocation(line: 38, column: 24, scope: !158)
!218 = !DILocation(line: 38, column: 5, scope: !158)
!219 = !DILocalVariable(name: "href", scope: !158, file: !1, line: 42, type: !220)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 160, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 20)
!223 = !DILocation(line: 42, column: 10, scope: !158)
!224 = !DILocation(line: 43, column: 24, scope: !158)
!225 = !DILocation(line: 43, column: 5, scope: !158)
!226 = !DILocation(line: 44, column: 5, scope: !158)
!227 = !DILocation(line: 44, column: 26, scope: !158)
!228 = !DILocalVariable(name: "prefix", scope: !158, file: !1, line: 47, type: !184)
!229 = !DILocation(line: 47, column: 10, scope: !158)
!230 = !DILocation(line: 48, column: 24, scope: !158)
!231 = !DILocation(line: 48, column: 5, scope: !158)
!232 = !DILocation(line: 49, column: 5, scope: !158)
!233 = !DILocation(line: 49, column: 30, scope: !158)
!234 = !DILocation(line: 53, column: 22, scope: !158)
!235 = !DILocation(line: 53, column: 27, scope: !158)
!236 = !DILocation(line: 53, column: 50, scope: !158)
!237 = !DILocation(line: 53, column: 10, scope: !158)
!238 = !DILocation(line: 53, column: 8, scope: !158)
!239 = !DILocation(line: 57, column: 5, scope: !158)
!240 = !DILocation(line: 60, column: 16, scope: !158)
!241 = !DILocation(line: 60, column: 5, scope: !158)
!242 = !DILocation(line: 61, column: 5, scope: !158)
!243 = !DILocation(line: 63, column: 5, scope: !158)
!244 = !DILocation(line: 64, column: 1, scope: !158)

; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/284_tree.c_2012_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/284_tree.c_2012_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDoc = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, i32, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlNs*, i8*, i8*, i8*, i8*, i8*, i32, %struct._xmlDict*, i8*, i32, i32 }
%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i8*, i16, i16 }
%struct._xmlAttr = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlAttr*, %struct._xmlAttr*, %struct._xmlDoc*, %struct._xmlNs*, i32, i8* }
%struct._xmlDtd = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._xmlNs = type { %struct._xmlNs*, i32, i8*, i8*, i8*, %struct._xmlDoc* }
%struct._xmlDict = type opaque

@.str = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"name_buf\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"value_is_null\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"value_buf\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/284_tree.c_2012_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !55 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlDoc*, align 8
  %3 = alloca %struct._xmlNode*, align 8
  %4 = alloca %struct._xmlAttr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [100 x i8], align 16
  %8 = alloca [200 x i8], align 16
  %9 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %2, metadata !60, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %3, metadata !166, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.declare(metadata %struct._xmlAttr** %4, metadata !171, metadata !DIExpression()), !dbg !175
  call void @llvm.dbg.declare(metadata i8** %5, metadata !176, metadata !DIExpression()), !dbg !177
  call void @llvm.dbg.declare(metadata i8** %6, metadata !178, metadata !DIExpression()), !dbg !179
  call void @xmlInitParser(), !dbg !180
  %10 = call %struct._xmlDoc* @xmlNewDoc(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !181
  store %struct._xmlDoc* %10, %struct._xmlDoc** %2, align 8, !dbg !182
  %11 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !183
  %12 = icmp ne %struct._xmlDoc* %11, null, !dbg !183
  br i1 %12, label %14, label %13, !dbg !185

13:                                               ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !186
  br label %47, !dbg !186

14:                                               ; preds = %0
  %15 = call %struct._xmlNode* @xmlNewNode(%struct._xmlNs* noundef null, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !187
  store %struct._xmlNode* %15, %struct._xmlNode** %3, align 8, !dbg !188
  %16 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !189
  %17 = icmp ne %struct._xmlNode* %16, null, !dbg !189
  br i1 %17, label %20, label %18, !dbg !191

18:                                               ; preds = %14
  %19 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !192
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %19), !dbg !194
  store i32 1, i32* %1, align 4, !dbg !195
  br label %47, !dbg !195

20:                                               ; preds = %14
  %21 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !196
  %22 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !197
  %23 = call %struct._xmlNode* @xmlDocSetRootElement(%struct._xmlDoc* noundef %21, %struct._xmlNode* noundef %22), !dbg !198
  call void @llvm.dbg.declare(metadata [100 x i8]* %7, metadata !199, metadata !DIExpression()), !dbg !203
  %24 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0, !dbg !204
  call void @klee_make_symbolic(i8* noundef %24, i64 noundef 100, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !205
  %25 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 99, !dbg !206
  store i8 0, i8* %25, align 1, !dbg !207
  %26 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0, !dbg !208
  store i8* %26, i8** %5, align 8, !dbg !209
  call void @llvm.dbg.declare(metadata [200 x i8]* %8, metadata !210, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.declare(metadata i32* %9, metadata !215, metadata !DIExpression()), !dbg !216
  %27 = bitcast i32* %9 to i8*, !dbg !217
  call void @klee_make_symbolic(i8* noundef %27, i64 noundef 4, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0)), !dbg !218
  %28 = load i32, i32* %9, align 4, !dbg !219
  %29 = icmp ne i32 %28, 0, !dbg !219
  br i1 %29, label %30, label %31, !dbg !221

30:                                               ; preds = %20
  store i8* null, i8** %6, align 8, !dbg !222
  br label %35, !dbg !224

31:                                               ; preds = %20
  %32 = getelementptr inbounds [200 x i8], [200 x i8]* %8, i64 0, i64 0, !dbg !225
  call void @klee_make_symbolic(i8* noundef %32, i64 noundef 200, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0)), !dbg !227
  %33 = getelementptr inbounds [200 x i8], [200 x i8]* %8, i64 0, i64 199, !dbg !228
  store i8 0, i8* %33, align 1, !dbg !229
  %34 = getelementptr inbounds [200 x i8], [200 x i8]* %8, i64 0, i64 0, !dbg !230
  store i8* %34, i8** %6, align 8, !dbg !231
  br label %35

35:                                               ; preds = %31, %30
  %36 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !232
  %37 = load i8*, i8** %5, align 8, !dbg !233
  %38 = load i8*, i8** %6, align 8, !dbg !234
  %39 = call %struct._xmlAttr* @xmlNewProp(%struct._xmlNode* noundef %36, i8* noundef %37, i8* noundef %38), !dbg !235
  store %struct._xmlAttr* %39, %struct._xmlAttr** %4, align 8, !dbg !236
  %40 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.6, i64 0, i64 0), i32 noundef 50, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !237
  %41 = load %struct._xmlAttr*, %struct._xmlAttr** %4, align 8, !dbg !238
  %42 = icmp ne %struct._xmlAttr* %41, null, !dbg !238
  br i1 %42, label %43, label %45, !dbg !240

43:                                               ; preds = %35
  %44 = load %struct._xmlAttr*, %struct._xmlAttr** %4, align 8, !dbg !241
  call void @xmlFreeProp(%struct._xmlAttr* noundef %44), !dbg !242
  br label %45, !dbg !242

45:                                               ; preds = %43, %35
  %46 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !243
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %46), !dbg !244
  call void @xmlCleanupParser(), !dbg !245
  store i32 0, i32* %1, align 4, !dbg !246
  br label %47, !dbg !246

47:                                               ; preds = %45, %18, %13
  %48 = load i32, i32* %1, align 4, !dbg !247
  ret i32 %48, !dbg !247
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @xmlInitParser() #2

declare %struct._xmlDoc* @xmlNewDoc(i8* noundef) #2

declare %struct._xmlNode* @xmlNewNode(%struct._xmlNs* noundef, i8* noundef) #2

declare void @xmlFreeDoc(%struct._xmlDoc* noundef) #2

declare %struct._xmlNode* @xmlDocSetRootElement(%struct._xmlDoc* noundef, %struct._xmlNode* noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare %struct._xmlAttr* @xmlNewProp(%struct._xmlNode* noundef, i8* noundef, i8* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare void @xmlFreeProp(%struct._xmlAttr* noundef) #2

declare void @xmlCleanupParser() #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !40, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/284_tree.c_2012_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "fecc62437fbce7d0ce47f90083664366")
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
!40 = !{!41, !46}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !44, line: 28, baseType: !45)
!44 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!45 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!47 = !{i32 7, !"Dwarf Version", i32 5}
!48 = !{i32 2, !"Debug Info Version", i32 3}
!49 = !{i32 1, !"wchar_size", i32 4}
!50 = !{i32 7, !"PIC Level", i32 2}
!51 = !{i32 7, !"PIE Level", i32 2}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"Ubuntu clang version 14.0.6"}
!55 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 6, type: !56, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !59)
!56 = !DISubroutineType(types: !57)
!57 = !{!58}
!58 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!59 = !{}
!60 = !DILocalVariable(name: "doc", scope: !55, file: !1, line: 7, type: !61)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !65)
!65 = !{!66, !68, !70, !73, !123, !124, !125, !126, !127, !128, !129, !130, !150, !151, !152, !153, !154, !155, !156, !157, !158, !162, !163, !164}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !64, file: !4, line: 560, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !64, file: !4, line: 561, baseType: !69, size: 32, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !64, file: !4, line: 562, baseType: !71, size: 64, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !64, file: !4, line: 563, baseType: !74, size: 64, offset: 192)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !76)
!76 = !{!77, !78, !79, !80, !81, !82, !83, !84, !85, !87, !100, !101, !118, !119, !120, !122}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !75, file: !4, line: 493, baseType: !67, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !75, file: !4, line: 494, baseType: !69, size: 32, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !75, file: !4, line: 495, baseType: !41, size: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !75, file: !4, line: 496, baseType: !74, size: 64, offset: 192)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !75, file: !4, line: 497, baseType: !74, size: 64, offset: 256)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !75, file: !4, line: 498, baseType: !74, size: 64, offset: 320)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !75, file: !4, line: 499, baseType: !74, size: 64, offset: 384)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !75, file: !4, line: 500, baseType: !74, size: 64, offset: 448)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !75, file: !4, line: 501, baseType: !86, size: 64, offset: 512)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !75, file: !4, line: 504, baseType: !88, size: 64, offset: 576)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !90)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !91)
!91 = !{!92, !94, !96, !97, !98, !99}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !90, file: !4, line: 389, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !90, file: !4, line: 390, baseType: !95, size: 32, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !69)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !90, file: !4, line: 391, baseType: !41, size: 64, offset: 128)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !90, file: !4, line: 392, baseType: !41, size: 64, offset: 192)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !90, file: !4, line: 393, baseType: !67, size: 64, offset: 256)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !90, file: !4, line: 394, baseType: !86, size: 64, offset: 320)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !75, file: !4, line: 505, baseType: !46, size: 64, offset: 640)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !75, file: !4, line: 506, baseType: !102, size: 64, offset: 704)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !104)
!104 = !{!105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !117}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !103, file: !4, line: 434, baseType: !67, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !103, file: !4, line: 435, baseType: !69, size: 32, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !103, file: !4, line: 436, baseType: !41, size: 64, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !103, file: !4, line: 437, baseType: !74, size: 64, offset: 192)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !103, file: !4, line: 438, baseType: !74, size: 64, offset: 256)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !103, file: !4, line: 439, baseType: !74, size: 64, offset: 320)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !103, file: !4, line: 440, baseType: !102, size: 64, offset: 384)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !103, file: !4, line: 441, baseType: !102, size: 64, offset: 448)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !103, file: !4, line: 442, baseType: !86, size: 64, offset: 512)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !103, file: !4, line: 443, baseType: !88, size: 64, offset: 576)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !103, file: !4, line: 444, baseType: !116, size: 32, offset: 640)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !103, file: !4, line: 445, baseType: !67, size: 64, offset: 704)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !75, file: !4, line: 507, baseType: !88, size: 64, offset: 768)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !75, file: !4, line: 508, baseType: !67, size: 64, offset: 832)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !75, file: !4, line: 509, baseType: !121, size: 16, offset: 896)
!121 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !75, file: !4, line: 510, baseType: !121, size: 16, offset: 912)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !64, file: !4, line: 564, baseType: !74, size: 64, offset: 256)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !64, file: !4, line: 565, baseType: !74, size: 64, offset: 320)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !64, file: !4, line: 566, baseType: !74, size: 64, offset: 384)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !64, file: !4, line: 567, baseType: !74, size: 64, offset: 448)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !64, file: !4, line: 568, baseType: !86, size: 64, offset: 512)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !64, file: !4, line: 571, baseType: !58, size: 32, offset: 576)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !64, file: !4, line: 572, baseType: !58, size: 32, offset: 608)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !64, file: !4, line: 578, baseType: !131, size: 64, offset: 640)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !133)
!133 = !{!134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !132, file: !4, line: 406, baseType: !67, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !132, file: !4, line: 407, baseType: !69, size: 32, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !132, file: !4, line: 408, baseType: !41, size: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !132, file: !4, line: 409, baseType: !74, size: 64, offset: 192)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !132, file: !4, line: 410, baseType: !74, size: 64, offset: 256)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !132, file: !4, line: 411, baseType: !86, size: 64, offset: 320)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !132, file: !4, line: 412, baseType: !74, size: 64, offset: 384)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !132, file: !4, line: 413, baseType: !74, size: 64, offset: 448)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !132, file: !4, line: 414, baseType: !86, size: 64, offset: 512)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !132, file: !4, line: 417, baseType: !67, size: 64, offset: 576)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !132, file: !4, line: 418, baseType: !67, size: 64, offset: 640)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !132, file: !4, line: 419, baseType: !67, size: 64, offset: 704)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !132, file: !4, line: 420, baseType: !67, size: 64, offset: 768)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !132, file: !4, line: 421, baseType: !41, size: 64, offset: 832)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !132, file: !4, line: 422, baseType: !41, size: 64, offset: 896)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !132, file: !4, line: 423, baseType: !67, size: 64, offset: 960)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !64, file: !4, line: 579, baseType: !131, size: 64, offset: 704)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !64, file: !4, line: 580, baseType: !93, size: 64, offset: 768)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !64, file: !4, line: 581, baseType: !41, size: 64, offset: 832)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !64, file: !4, line: 582, baseType: !41, size: 64, offset: 896)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !64, file: !4, line: 583, baseType: !67, size: 64, offset: 960)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !64, file: !4, line: 584, baseType: !67, size: 64, offset: 1024)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !64, file: !4, line: 585, baseType: !41, size: 64, offset: 1088)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !64, file: !4, line: 586, baseType: !58, size: 32, offset: 1152)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !64, file: !4, line: 588, baseType: !159, size: 64, offset: 1216)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !161, line: 24, flags: DIFlagFwdDecl)
!161 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!162 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !64, file: !4, line: 589, baseType: !67, size: 64, offset: 1280)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !64, file: !4, line: 590, baseType: !58, size: 32, offset: 1344)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !64, file: !4, line: 592, baseType: !58, size: 32, offset: 1376)
!165 = !DILocation(line: 7, column: 15, scope: !55)
!166 = !DILocalVariable(name: "node", scope: !55, file: !1, line: 8, type: !167)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !4, line: 491, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !4, line: 490, baseType: !75)
!170 = !DILocation(line: 8, column: 16, scope: !55)
!171 = !DILocalVariable(name: "attr", scope: !55, file: !1, line: 9, type: !172)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttrPtr", file: !4, line: 432, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttr", file: !4, line: 431, baseType: !103)
!175 = !DILocation(line: 9, column: 16, scope: !55)
!176 = !DILocalVariable(name: "name", scope: !55, file: !1, line: 10, type: !46)
!177 = !DILocation(line: 10, column: 14, scope: !55)
!178 = !DILocalVariable(name: "value", scope: !55, file: !1, line: 11, type: !46)
!179 = !DILocation(line: 11, column: 14, scope: !55)
!180 = !DILocation(line: 14, column: 5, scope: !55)
!181 = !DILocation(line: 17, column: 11, scope: !55)
!182 = !DILocation(line: 17, column: 9, scope: !55)
!183 = !DILocation(line: 18, column: 10, scope: !184)
!184 = distinct !DILexicalBlock(scope: !55, file: !1, line: 18, column: 9)
!185 = !DILocation(line: 18, column: 9, scope: !55)
!186 = !DILocation(line: 18, column: 15, scope: !184)
!187 = !DILocation(line: 21, column: 12, scope: !55)
!188 = !DILocation(line: 21, column: 10, scope: !55)
!189 = !DILocation(line: 22, column: 10, scope: !190)
!190 = distinct !DILexicalBlock(scope: !55, file: !1, line: 22, column: 9)
!191 = !DILocation(line: 22, column: 9, scope: !55)
!192 = !DILocation(line: 23, column: 20, scope: !193)
!193 = distinct !DILexicalBlock(scope: !190, file: !1, line: 22, column: 16)
!194 = !DILocation(line: 23, column: 9, scope: !193)
!195 = !DILocation(line: 24, column: 9, scope: !193)
!196 = !DILocation(line: 26, column: 26, scope: !55)
!197 = !DILocation(line: 26, column: 31, scope: !55)
!198 = !DILocation(line: 26, column: 5, scope: !55)
!199 = !DILocalVariable(name: "name_buf", scope: !55, file: !1, line: 29, type: !200)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 800, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 100)
!203 = !DILocation(line: 29, column: 10, scope: !55)
!204 = !DILocation(line: 30, column: 24, scope: !55)
!205 = !DILocation(line: 30, column: 5, scope: !55)
!206 = !DILocation(line: 31, column: 5, scope: !55)
!207 = !DILocation(line: 31, column: 34, scope: !55)
!208 = !DILocation(line: 32, column: 22, scope: !55)
!209 = !DILocation(line: 32, column: 10, scope: !55)
!210 = !DILocalVariable(name: "value_buf", scope: !55, file: !1, line: 35, type: !211)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 1600, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 200)
!214 = !DILocation(line: 35, column: 10, scope: !55)
!215 = !DILocalVariable(name: "value_is_null", scope: !55, file: !1, line: 36, type: !58)
!216 = !DILocation(line: 36, column: 9, scope: !55)
!217 = !DILocation(line: 37, column: 24, scope: !55)
!218 = !DILocation(line: 37, column: 5, scope: !55)
!219 = !DILocation(line: 38, column: 9, scope: !220)
!220 = distinct !DILexicalBlock(scope: !55, file: !1, line: 38, column: 9)
!221 = !DILocation(line: 38, column: 9, scope: !55)
!222 = !DILocation(line: 39, column: 15, scope: !223)
!223 = distinct !DILexicalBlock(scope: !220, file: !1, line: 38, column: 24)
!224 = !DILocation(line: 40, column: 5, scope: !223)
!225 = !DILocation(line: 41, column: 28, scope: !226)
!226 = distinct !DILexicalBlock(scope: !220, file: !1, line: 40, column: 12)
!227 = !DILocation(line: 41, column: 9, scope: !226)
!228 = !DILocation(line: 42, column: 9, scope: !226)
!229 = !DILocation(line: 42, column: 40, scope: !226)
!230 = !DILocation(line: 43, column: 27, scope: !226)
!231 = !DILocation(line: 43, column: 15, scope: !226)
!232 = !DILocation(line: 47, column: 23, scope: !55)
!233 = !DILocation(line: 47, column: 29, scope: !55)
!234 = !DILocation(line: 47, column: 35, scope: !55)
!235 = !DILocation(line: 47, column: 12, scope: !55)
!236 = !DILocation(line: 47, column: 10, scope: !55)
!237 = !DILocation(line: 50, column: 5, scope: !55)
!238 = !DILocation(line: 53, column: 9, scope: !239)
!239 = distinct !DILexicalBlock(scope: !55, file: !1, line: 53, column: 9)
!240 = !DILocation(line: 53, column: 9, scope: !55)
!241 = !DILocation(line: 53, column: 27, scope: !239)
!242 = !DILocation(line: 53, column: 15, scope: !239)
!243 = !DILocation(line: 54, column: 16, scope: !55)
!244 = !DILocation(line: 54, column: 5, scope: !55)
!245 = !DILocation(line: 55, column: 5, scope: !55)
!246 = !DILocation(line: 57, column: 5, scope: !55)
!247 = !DILocation(line: 58, column: 1, scope: !55)

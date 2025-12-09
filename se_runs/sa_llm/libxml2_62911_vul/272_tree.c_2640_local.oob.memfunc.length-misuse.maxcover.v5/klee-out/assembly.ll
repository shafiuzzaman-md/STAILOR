; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/272_tree.c_2640_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/272_tree.c_2640_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i8*, i16, i16 }
%struct._xmlDoc = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, i32, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlNs*, i8*, i8*, i8*, i8*, i8*, i32, %struct._xmlDict*, i8*, i32, i32 }
%struct._xmlDtd = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._xmlDict = type opaque
%struct._xmlAttr = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlAttr*, %struct._xmlAttr*, %struct._xmlDoc*, %struct._xmlNs*, i32, i8* }
%struct._xmlNs = type { %struct._xmlNs*, i32, i8*, i8*, i8*, %struct._xmlDoc* }

@.str = private unnamed_addr constant [8 x i8] c"content\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/272_tree.c_2640_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !54 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlNode*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !59, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata i32* %3, metadata !61, metadata !DIExpression()), !dbg !62
  %5 = call noalias i8* @malloc(i64 noundef 1024) #5, !dbg !63
  store i8* %5, i8** %2, align 8, !dbg !64
  %6 = load i8*, i8** %2, align 8, !dbg !65
  %7 = icmp ne i8* %6, null, !dbg !65
  br i1 %7, label %9, label %8, !dbg !67

8:                                                ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !68
  br label %30, !dbg !68

9:                                                ; preds = %0
  %10 = load i8*, i8** %2, align 8, !dbg !69
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 1024, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)), !dbg !70
  %11 = bitcast i32* %3 to i8*, !dbg !71
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !72
  %12 = load i32, i32* %3, align 4, !dbg !73
  %13 = icmp sge i32 %12, 0, !dbg !74
  %14 = zext i1 %13 to i32, !dbg !74
  %15 = sext i32 %14 to i64, !dbg !73
  call void @klee_assume(i64 noundef %15), !dbg !75
  %16 = load i32, i32* %3, align 4, !dbg !76
  %17 = icmp slt i32 %16, 1024, !dbg !77
  %18 = zext i1 %17 to i32, !dbg !77
  %19 = sext i32 %18 to i64, !dbg !76
  call void @klee_assume(i64 noundef %19), !dbg !78
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %4, metadata !79, metadata !DIExpression()), !dbg !185
  %20 = load i8*, i8** %2, align 8, !dbg !186
  %21 = load i32, i32* %3, align 4, !dbg !187
  %22 = call %struct._xmlNode* @xmlNewTextLen(i8* noundef %20, i32 noundef %21), !dbg !188
  store %struct._xmlNode* %22, %struct._xmlNode** %4, align 8, !dbg !185
  %23 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !189
  %24 = icmp ne %struct._xmlNode* %23, null, !dbg !191
  br i1 %24, label %25, label %28, !dbg !192

25:                                               ; preds = %9
  %26 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.3, i64 0, i64 0), i32 noundef 30, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !193
  %27 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !195
  call void @xmlFreeNode(%struct._xmlNode* noundef %27), !dbg !196
  br label %28, !dbg !197

28:                                               ; preds = %25, %9
  %29 = load i8*, i8** %2, align 8, !dbg !198
  call void @free(i8* noundef %29) #5, !dbg !199
  store i32 0, i32* %1, align 4, !dbg !200
  br label %30, !dbg !200

30:                                               ; preds = %28, %8
  %31 = load i32, i32* %1, align 4, !dbg !201
  ret i32 %31, !dbg !201
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

declare %struct._xmlNode* @xmlNewTextLen(i8* noundef, i32 noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

declare void @xmlFreeNode(%struct._xmlNode* noundef) #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !40, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/272_tree.c_2640_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "cc08bd48ffd9dd024b1a817e72e6f6c4")
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
!59 = !DILocalVariable(name: "content", scope: !54, file: !1, line: 7, type: !41)
!60 = !DILocation(line: 7, column: 14, scope: !54)
!61 = !DILocalVariable(name: "len", scope: !54, file: !1, line: 8, type: !57)
!62 = !DILocation(line: 8, column: 9, scope: !54)
!63 = !DILocation(line: 13, column: 25, scope: !54)
!64 = !DILocation(line: 13, column: 13, scope: !54)
!65 = !DILocation(line: 14, column: 10, scope: !66)
!66 = distinct !DILexicalBlock(scope: !54, file: !1, line: 14, column: 9)
!67 = !DILocation(line: 14, column: 9, scope: !54)
!68 = !DILocation(line: 14, column: 19, scope: !66)
!69 = !DILocation(line: 15, column: 24, scope: !54)
!70 = !DILocation(line: 15, column: 5, scope: !54)
!71 = !DILocation(line: 16, column: 24, scope: !54)
!72 = !DILocation(line: 16, column: 5, scope: !54)
!73 = !DILocation(line: 18, column: 17, scope: !54)
!74 = !DILocation(line: 18, column: 21, scope: !54)
!75 = !DILocation(line: 18, column: 5, scope: !54)
!76 = !DILocation(line: 19, column: 17, scope: !54)
!77 = !DILocation(line: 19, column: 21, scope: !54)
!78 = !DILocation(line: 19, column: 5, scope: !54)
!79 = !DILocalVariable(name: "node", scope: !54, file: !1, line: 25, type: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !4, line: 491, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !4, line: 490, baseType: !83)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !84)
!84 = !{!85, !86, !88, !91, !93, !94, !95, !96, !97, !159, !162, !163, !180, !181, !182, !184}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !83, file: !4, line: 493, baseType: !45, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !83, file: !4, line: 494, baseType: !87, size: 32, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !83, file: !4, line: 495, baseType: !89, size: 64, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !83, file: !4, line: 496, baseType: !92, size: 64, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !83, file: !4, line: 497, baseType: !92, size: 64, offset: 256)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !83, file: !4, line: 498, baseType: !92, size: 64, offset: 320)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !83, file: !4, line: 499, baseType: !92, size: 64, offset: 384)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !83, file: !4, line: 500, baseType: !92, size: 64, offset: 448)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !83, file: !4, line: 501, baseType: !98, size: 64, offset: 512)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !100)
!100 = !{!101, !102, !103, !106, !107, !108, !109, !110, !111, !112, !113, !114, !134, !135, !146, !147, !148, !149, !150, !151, !152, !156, !157, !158}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !99, file: !4, line: 560, baseType: !45, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !99, file: !4, line: 561, baseType: !87, size: 32, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !99, file: !4, line: 562, baseType: !104, size: 64, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !99, file: !4, line: 563, baseType: !92, size: 64, offset: 192)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !99, file: !4, line: 564, baseType: !92, size: 64, offset: 256)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !99, file: !4, line: 565, baseType: !92, size: 64, offset: 320)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !99, file: !4, line: 566, baseType: !92, size: 64, offset: 384)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !99, file: !4, line: 567, baseType: !92, size: 64, offset: 448)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !99, file: !4, line: 568, baseType: !98, size: 64, offset: 512)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !99, file: !4, line: 571, baseType: !57, size: 32, offset: 576)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !99, file: !4, line: 572, baseType: !57, size: 32, offset: 608)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !99, file: !4, line: 578, baseType: !115, size: 64, offset: 640)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !116, file: !4, line: 406, baseType: !45, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !116, file: !4, line: 407, baseType: !87, size: 32, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !116, file: !4, line: 408, baseType: !89, size: 64, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !116, file: !4, line: 409, baseType: !92, size: 64, offset: 192)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !116, file: !4, line: 410, baseType: !92, size: 64, offset: 256)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !116, file: !4, line: 411, baseType: !98, size: 64, offset: 320)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !116, file: !4, line: 412, baseType: !92, size: 64, offset: 384)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !116, file: !4, line: 413, baseType: !92, size: 64, offset: 448)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !116, file: !4, line: 414, baseType: !98, size: 64, offset: 512)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !116, file: !4, line: 417, baseType: !45, size: 64, offset: 576)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !116, file: !4, line: 418, baseType: !45, size: 64, offset: 640)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !116, file: !4, line: 419, baseType: !45, size: 64, offset: 704)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !116, file: !4, line: 420, baseType: !45, size: 64, offset: 768)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !116, file: !4, line: 421, baseType: !89, size: 64, offset: 832)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !116, file: !4, line: 422, baseType: !89, size: 64, offset: 896)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !116, file: !4, line: 423, baseType: !45, size: 64, offset: 960)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !99, file: !4, line: 579, baseType: !115, size: 64, offset: 704)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !99, file: !4, line: 580, baseType: !136, size: 64, offset: 768)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !138)
!138 = !{!139, !140, !142, !143, !144, !145}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !137, file: !4, line: 389, baseType: !136, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !137, file: !4, line: 390, baseType: !141, size: 32, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !87)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !137, file: !4, line: 391, baseType: !89, size: 64, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !137, file: !4, line: 392, baseType: !89, size: 64, offset: 192)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !137, file: !4, line: 393, baseType: !45, size: 64, offset: 256)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !137, file: !4, line: 394, baseType: !98, size: 64, offset: 320)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !99, file: !4, line: 581, baseType: !89, size: 64, offset: 832)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !99, file: !4, line: 582, baseType: !89, size: 64, offset: 896)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !99, file: !4, line: 583, baseType: !45, size: 64, offset: 960)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !99, file: !4, line: 584, baseType: !45, size: 64, offset: 1024)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !99, file: !4, line: 585, baseType: !89, size: 64, offset: 1088)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !99, file: !4, line: 586, baseType: !57, size: 32, offset: 1152)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !99, file: !4, line: 588, baseType: !153, size: 64, offset: 1216)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !155, line: 24, flags: DIFlagFwdDecl)
!155 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!156 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !99, file: !4, line: 589, baseType: !45, size: 64, offset: 1280)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !99, file: !4, line: 590, baseType: !57, size: 32, offset: 1344)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !99, file: !4, line: 592, baseType: !57, size: 32, offset: 1376)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !83, file: !4, line: 504, baseType: !160, size: 64, offset: 576)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !137)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !83, file: !4, line: 505, baseType: !41, size: 64, offset: 640)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !83, file: !4, line: 506, baseType: !164, size: 64, offset: 704)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !166)
!166 = !{!167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !179}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !165, file: !4, line: 434, baseType: !45, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !165, file: !4, line: 435, baseType: !87, size: 32, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !165, file: !4, line: 436, baseType: !89, size: 64, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !165, file: !4, line: 437, baseType: !92, size: 64, offset: 192)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !165, file: !4, line: 438, baseType: !92, size: 64, offset: 256)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !165, file: !4, line: 439, baseType: !92, size: 64, offset: 320)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !165, file: !4, line: 440, baseType: !164, size: 64, offset: 384)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !165, file: !4, line: 441, baseType: !164, size: 64, offset: 448)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !165, file: !4, line: 442, baseType: !98, size: 64, offset: 512)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !165, file: !4, line: 443, baseType: !160, size: 64, offset: 576)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !165, file: !4, line: 444, baseType: !178, size: 32, offset: 640)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !165, file: !4, line: 445, baseType: !45, size: 64, offset: 704)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !83, file: !4, line: 507, baseType: !160, size: 64, offset: 768)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !83, file: !4, line: 508, baseType: !45, size: 64, offset: 832)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !83, file: !4, line: 509, baseType: !183, size: 16, offset: 896)
!183 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !83, file: !4, line: 510, baseType: !183, size: 16, offset: 912)
!185 = !DILocation(line: 25, column: 16, scope: !54)
!186 = !DILocation(line: 25, column: 37, scope: !54)
!187 = !DILocation(line: 25, column: 46, scope: !54)
!188 = !DILocation(line: 25, column: 23, scope: !54)
!189 = !DILocation(line: 28, column: 9, scope: !190)
!190 = distinct !DILexicalBlock(scope: !54, file: !1, line: 28, column: 9)
!191 = !DILocation(line: 28, column: 14, scope: !190)
!192 = !DILocation(line: 28, column: 9, scope: !54)
!193 = !DILocation(line: 30, column: 9, scope: !194)
!194 = distinct !DILexicalBlock(scope: !190, file: !1, line: 28, column: 23)
!195 = !DILocation(line: 32, column: 21, scope: !194)
!196 = !DILocation(line: 32, column: 9, scope: !194)
!197 = !DILocation(line: 33, column: 5, scope: !194)
!198 = !DILocation(line: 35, column: 10, scope: !54)
!199 = !DILocation(line: 35, column: 5, scope: !54)
!200 = !DILocation(line: 36, column: 5, scope: !54)
!201 = !DILocation(line: 37, column: 1, scope: !54)

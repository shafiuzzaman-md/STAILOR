; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/277_tree.c_2415_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/277_tree.c_2415_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i8*, i16, i16 }
%struct._xmlDoc = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, i32, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlNs*, i8*, i8*, i8*, i8*, i8*, i32, %struct._xmlDict*, i8*, i32, i32 }
%struct._xmlDtd = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._xmlDict = type opaque
%struct._xmlAttr = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlAttr*, %struct._xmlAttr*, %struct._xmlDoc*, %struct._xmlNs*, i32, i8* }
%struct._xmlNs = type { %struct._xmlNs*, i32, i8*, i8*, i8*, %struct._xmlDoc* }

@.str = private unnamed_addr constant [12 x i8] c"content_len\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"content\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/277_tree.c_2415_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
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
  %5 = bitcast i32* %3 to i8*, !dbg !63
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0)), !dbg !64
  %6 = load i32, i32* %3, align 4, !dbg !65
  %7 = icmp sge i32 %6, 0, !dbg !66
  %8 = zext i1 %7 to i32, !dbg !66
  %9 = sext i32 %8 to i64, !dbg !65
  call void @klee_assume(i64 noundef %9), !dbg !67
  %10 = load i32, i32* %3, align 4, !dbg !68
  %11 = icmp slt i32 %10, 1024, !dbg !69
  %12 = zext i1 %11 to i32, !dbg !69
  %13 = sext i32 %12 to i64, !dbg !68
  call void @klee_assume(i64 noundef %13), !dbg !70
  %14 = load i32, i32* %3, align 4, !dbg !71
  %15 = add nsw i32 %14, 1, !dbg !72
  %16 = sext i32 %15 to i64, !dbg !71
  %17 = call noalias i8* @malloc(i64 noundef %16) #5, !dbg !73
  store i8* %17, i8** %2, align 8, !dbg !74
  %18 = load i8*, i8** %2, align 8, !dbg !75
  %19 = load i32, i32* %3, align 4, !dbg !76
  %20 = add nsw i32 %19, 1, !dbg !77
  %21 = sext i32 %20 to i64, !dbg !76
  call void @klee_make_symbolic(i8* noundef %18, i64 noundef %21, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)), !dbg !78
  %22 = load i8*, i8** %2, align 8, !dbg !79
  %23 = load i32, i32* %3, align 4, !dbg !80
  %24 = sext i32 %23 to i64, !dbg !79
  %25 = getelementptr inbounds i8, i8* %22, i64 %24, !dbg !79
  store i8 0, i8* %25, align 1, !dbg !81
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %4, metadata !82, metadata !DIExpression()), !dbg !188
  %26 = load i8*, i8** %2, align 8, !dbg !189
  %27 = call %struct._xmlNode* @xmlNewText(i8* noundef %26), !dbg !190
  store %struct._xmlNode* %27, %struct._xmlNode** %4, align 8, !dbg !188
  %28 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !191
  %29 = icmp ne %struct._xmlNode* %28, null, !dbg !193
  br i1 %29, label %30, label %33, !dbg !194

30:                                               ; preds = %0
  %31 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.3, i64 0, i64 0), i32 noundef 20, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !195
  %32 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !197
  call void @xmlFreeNode(%struct._xmlNode* noundef %32), !dbg !198
  br label %33, !dbg !199

33:                                               ; preds = %30, %0
  %34 = load i8*, i8** %2, align 8, !dbg !200
  call void @free(i8* noundef %34) #5, !dbg !201
  ret i32 0, !dbg !202
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

declare %struct._xmlNode* @xmlNewText(i8* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

declare void @xmlFreeNode(%struct._xmlNode* noundef) #2

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !40, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/277_tree.c_2415_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "b342a93a7f9437a2f42b794060e19089")
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
!61 = !DILocalVariable(name: "content_len", scope: !54, file: !1, line: 8, type: !57)
!62 = !DILocation(line: 8, column: 9, scope: !54)
!63 = !DILocation(line: 10, column: 24, scope: !54)
!64 = !DILocation(line: 10, column: 5, scope: !54)
!65 = !DILocation(line: 11, column: 17, scope: !54)
!66 = !DILocation(line: 11, column: 29, scope: !54)
!67 = !DILocation(line: 11, column: 5, scope: !54)
!68 = !DILocation(line: 12, column: 17, scope: !54)
!69 = !DILocation(line: 12, column: 29, scope: !54)
!70 = !DILocation(line: 12, column: 5, scope: !54)
!71 = !DILocation(line: 14, column: 32, scope: !54)
!72 = !DILocation(line: 14, column: 44, scope: !54)
!73 = !DILocation(line: 14, column: 25, scope: !54)
!74 = !DILocation(line: 14, column: 13, scope: !54)
!75 = !DILocation(line: 15, column: 24, scope: !54)
!76 = !DILocation(line: 15, column: 33, scope: !54)
!77 = !DILocation(line: 15, column: 45, scope: !54)
!78 = !DILocation(line: 15, column: 5, scope: !54)
!79 = !DILocation(line: 16, column: 5, scope: !54)
!80 = !DILocation(line: 16, column: 13, scope: !54)
!81 = !DILocation(line: 16, column: 26, scope: !54)
!82 = !DILocalVariable(name: "node", scope: !54, file: !1, line: 18, type: !83)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !4, line: 491, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !4, line: 490, baseType: !86)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !87)
!87 = !{!88, !89, !91, !94, !96, !97, !98, !99, !100, !162, !165, !166, !183, !184, !185, !187}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !86, file: !4, line: 493, baseType: !45, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !86, file: !4, line: 494, baseType: !90, size: 32, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !86, file: !4, line: 495, baseType: !92, size: 64, offset: 128)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !86, file: !4, line: 496, baseType: !95, size: 64, offset: 192)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !86, file: !4, line: 497, baseType: !95, size: 64, offset: 256)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !86, file: !4, line: 498, baseType: !95, size: 64, offset: 320)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !86, file: !4, line: 499, baseType: !95, size: 64, offset: 384)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !86, file: !4, line: 500, baseType: !95, size: 64, offset: 448)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !86, file: !4, line: 501, baseType: !101, size: 64, offset: 512)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !103)
!103 = !{!104, !105, !106, !109, !110, !111, !112, !113, !114, !115, !116, !117, !137, !138, !149, !150, !151, !152, !153, !154, !155, !159, !160, !161}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !102, file: !4, line: 560, baseType: !45, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !102, file: !4, line: 561, baseType: !90, size: 32, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !102, file: !4, line: 562, baseType: !107, size: 64, offset: 128)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !102, file: !4, line: 563, baseType: !95, size: 64, offset: 192)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !102, file: !4, line: 564, baseType: !95, size: 64, offset: 256)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !102, file: !4, line: 565, baseType: !95, size: 64, offset: 320)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !102, file: !4, line: 566, baseType: !95, size: 64, offset: 384)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !102, file: !4, line: 567, baseType: !95, size: 64, offset: 448)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !102, file: !4, line: 568, baseType: !101, size: 64, offset: 512)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !102, file: !4, line: 571, baseType: !57, size: 32, offset: 576)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !102, file: !4, line: 572, baseType: !57, size: 32, offset: 608)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !102, file: !4, line: 578, baseType: !118, size: 64, offset: 640)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !120)
!120 = !{!121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !119, file: !4, line: 406, baseType: !45, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !119, file: !4, line: 407, baseType: !90, size: 32, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !119, file: !4, line: 408, baseType: !92, size: 64, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !119, file: !4, line: 409, baseType: !95, size: 64, offset: 192)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !119, file: !4, line: 410, baseType: !95, size: 64, offset: 256)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !119, file: !4, line: 411, baseType: !101, size: 64, offset: 320)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !119, file: !4, line: 412, baseType: !95, size: 64, offset: 384)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !119, file: !4, line: 413, baseType: !95, size: 64, offset: 448)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !119, file: !4, line: 414, baseType: !101, size: 64, offset: 512)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !119, file: !4, line: 417, baseType: !45, size: 64, offset: 576)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !119, file: !4, line: 418, baseType: !45, size: 64, offset: 640)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !119, file: !4, line: 419, baseType: !45, size: 64, offset: 704)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !119, file: !4, line: 420, baseType: !45, size: 64, offset: 768)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !119, file: !4, line: 421, baseType: !92, size: 64, offset: 832)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !119, file: !4, line: 422, baseType: !92, size: 64, offset: 896)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !119, file: !4, line: 423, baseType: !45, size: 64, offset: 960)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !102, file: !4, line: 579, baseType: !118, size: 64, offset: 704)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !102, file: !4, line: 580, baseType: !139, size: 64, offset: 768)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !141)
!141 = !{!142, !143, !145, !146, !147, !148}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !140, file: !4, line: 389, baseType: !139, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !140, file: !4, line: 390, baseType: !144, size: 32, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !90)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !140, file: !4, line: 391, baseType: !92, size: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !140, file: !4, line: 392, baseType: !92, size: 64, offset: 192)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !140, file: !4, line: 393, baseType: !45, size: 64, offset: 256)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !140, file: !4, line: 394, baseType: !101, size: 64, offset: 320)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !102, file: !4, line: 581, baseType: !92, size: 64, offset: 832)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !102, file: !4, line: 582, baseType: !92, size: 64, offset: 896)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !102, file: !4, line: 583, baseType: !45, size: 64, offset: 960)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !102, file: !4, line: 584, baseType: !45, size: 64, offset: 1024)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !102, file: !4, line: 585, baseType: !92, size: 64, offset: 1088)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !102, file: !4, line: 586, baseType: !57, size: 32, offset: 1152)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !102, file: !4, line: 588, baseType: !156, size: 64, offset: 1216)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !158, line: 24, flags: DIFlagFwdDecl)
!158 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!159 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !102, file: !4, line: 589, baseType: !45, size: 64, offset: 1280)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !102, file: !4, line: 590, baseType: !57, size: 32, offset: 1344)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !102, file: !4, line: 592, baseType: !57, size: 32, offset: 1376)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !86, file: !4, line: 504, baseType: !163, size: 64, offset: 576)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !140)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !86, file: !4, line: 505, baseType: !41, size: 64, offset: 640)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !86, file: !4, line: 506, baseType: !167, size: 64, offset: 704)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !169)
!169 = !{!170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !182}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !168, file: !4, line: 434, baseType: !45, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !168, file: !4, line: 435, baseType: !90, size: 32, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !168, file: !4, line: 436, baseType: !92, size: 64, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !168, file: !4, line: 437, baseType: !95, size: 64, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !168, file: !4, line: 438, baseType: !95, size: 64, offset: 256)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !168, file: !4, line: 439, baseType: !95, size: 64, offset: 320)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !168, file: !4, line: 440, baseType: !167, size: 64, offset: 384)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !168, file: !4, line: 441, baseType: !167, size: 64, offset: 448)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !168, file: !4, line: 442, baseType: !101, size: 64, offset: 512)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !168, file: !4, line: 443, baseType: !163, size: 64, offset: 576)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !168, file: !4, line: 444, baseType: !181, size: 32, offset: 640)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !168, file: !4, line: 445, baseType: !45, size: 64, offset: 704)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !86, file: !4, line: 507, baseType: !163, size: 64, offset: 768)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !86, file: !4, line: 508, baseType: !45, size: 64, offset: 832)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !86, file: !4, line: 509, baseType: !186, size: 16, offset: 896)
!186 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !86, file: !4, line: 510, baseType: !186, size: 16, offset: 912)
!188 = !DILocation(line: 18, column: 16, scope: !54)
!189 = !DILocation(line: 18, column: 34, scope: !54)
!190 = !DILocation(line: 18, column: 23, scope: !54)
!191 = !DILocation(line: 19, column: 9, scope: !192)
!192 = distinct !DILexicalBlock(scope: !54, file: !1, line: 19, column: 9)
!193 = !DILocation(line: 19, column: 14, scope: !192)
!194 = !DILocation(line: 19, column: 9, scope: !54)
!195 = !DILocation(line: 20, column: 9, scope: !196)
!196 = distinct !DILexicalBlock(scope: !192, file: !1, line: 19, column: 23)
!197 = !DILocation(line: 21, column: 21, scope: !196)
!198 = !DILocation(line: 21, column: 9, scope: !196)
!199 = !DILocation(line: 22, column: 5, scope: !196)
!200 = !DILocation(line: 24, column: 10, scope: !54)
!201 = !DILocation(line: 24, column: 5, scope: !54)
!202 = !DILocation(line: 25, column: 5, scope: !54)

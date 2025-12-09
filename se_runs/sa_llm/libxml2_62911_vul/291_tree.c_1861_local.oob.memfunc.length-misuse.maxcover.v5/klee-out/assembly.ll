; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/291_tree.c_1861_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/291_tree.c_1861_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDoc = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, i32, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlNs*, i8*, i8*, i8*, i8*, i8*, i32, %struct._xmlDict*, i8*, i32, i32 }
%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i8*, i16, i16 }
%struct._xmlAttr = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlAttr*, %struct._xmlAttr*, %struct._xmlDoc*, %struct._xmlNs*, i32, i8* }
%struct._xmlDtd = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._xmlNs = type { %struct._xmlNs*, i32, i8*, i8*, i8*, %struct._xmlDoc* }
%struct._xmlDict = type opaque

@.str = private unnamed_addr constant [8 x i8] c"eatname\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"dict_owns\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"name_buf\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"value_buf\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.8 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/291_tree.c_1861_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !56 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlDoc*, align 8
  %3 = alloca %struct._xmlNode*, align 8
  %4 = alloca %struct._xmlAttr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._xmlNs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [11 x i8], align 1
  %13 = alloca [11 x i8], align 1
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %2, metadata !61, metadata !DIExpression()), !dbg !165
  store %struct._xmlDoc* null, %struct._xmlDoc** %2, align 8, !dbg !165
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %3, metadata !166, metadata !DIExpression()), !dbg !170
  store %struct._xmlNode* null, %struct._xmlNode** %3, align 8, !dbg !170
  call void @llvm.dbg.declare(metadata %struct._xmlAttr** %4, metadata !171, metadata !DIExpression()), !dbg !175
  store %struct._xmlAttr* null, %struct._xmlAttr** %4, align 8, !dbg !175
  call void @llvm.dbg.declare(metadata i8** %5, metadata !176, metadata !DIExpression()), !dbg !177
  store i8* null, i8** %5, align 8, !dbg !177
  call void @llvm.dbg.declare(metadata %struct._xmlNs** %6, metadata !178, metadata !DIExpression()), !dbg !180
  store %struct._xmlNs* null, %struct._xmlNs** %6, align 8, !dbg !180
  call void @llvm.dbg.declare(metadata i32* %7, metadata !181, metadata !DIExpression()), !dbg !182
  call void @xmlInitParser(), !dbg !183
  %14 = bitcast i32* %7 to i8*, !dbg !184
  call void @klee_make_symbolic(i8* noundef %14, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)), !dbg !185
  %15 = bitcast i8** %5 to i8*, !dbg !186
  call void @klee_make_symbolic(i8* noundef %15, i64 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !187
  %16 = call %struct._xmlDoc* @xmlNewDoc(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)), !dbg !188
  store %struct._xmlDoc* %16, %struct._xmlDoc** %2, align 8, !dbg !189
  %17 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !190
  %18 = icmp eq %struct._xmlDoc* %17, null, !dbg !192
  br i1 %18, label %19, label %20, !dbg !193

19:                                               ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !194
  br label %48, !dbg !194

20:                                               ; preds = %0
  %21 = call %struct._xmlNode* @xmlNewNode(%struct._xmlNs* noundef null, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)), !dbg !196
  store %struct._xmlNode* %21, %struct._xmlNode** %3, align 8, !dbg !197
  %22 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !198
  %23 = icmp eq %struct._xmlNode* %22, null, !dbg !200
  br i1 %23, label %24, label %26, !dbg !201

24:                                               ; preds = %20
  %25 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !202
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %25), !dbg !204
  store i32 1, i32* %1, align 4, !dbg !205
  br label %48, !dbg !205

26:                                               ; preds = %20
  %27 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !206
  %28 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !207
  %29 = call %struct._xmlNode* @xmlDocSetRootElement(%struct._xmlDoc* noundef %27, %struct._xmlNode* noundef %28), !dbg !208
  call void @llvm.dbg.declare(metadata i32* %8, metadata !209, metadata !DIExpression()), !dbg !210
  %30 = bitcast i32* %8 to i8*, !dbg !211
  call void @klee_make_symbolic(i8* noundef %30, i64 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0)), !dbg !212
  call void @llvm.dbg.declare(metadata i8** %9, metadata !213, metadata !DIExpression()), !dbg !214
  store i8* null, i8** %9, align 8, !dbg !214
  call void @llvm.dbg.declare(metadata i64* %10, metadata !215, metadata !DIExpression()), !dbg !219
  store i64 10, i64* %10, align 8, !dbg !219
  call void @llvm.dbg.declare(metadata i64* %11, metadata !220, metadata !DIExpression()), !dbg !221
  store i64 10, i64* %11, align 8, !dbg !221
  call void @llvm.dbg.declare(metadata [11 x i8]* %12, metadata !222, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.declare(metadata [11 x i8]* %13, metadata !227, metadata !DIExpression()), !dbg !228
  %31 = getelementptr inbounds [11 x i8], [11 x i8]* %12, i64 0, i64 0, !dbg !229
  call void @klee_make_symbolic(i8* noundef %31, i64 noundef 11, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)), !dbg !230
  %32 = getelementptr inbounds [11 x i8], [11 x i8]* %13, i64 0, i64 0, !dbg !231
  call void @klee_make_symbolic(i8* noundef %32, i64 noundef 11, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)), !dbg !232
  %33 = getelementptr inbounds [11 x i8], [11 x i8]* %12, i64 0, i64 10, !dbg !233
  store i8 0, i8* %33, align 1, !dbg !234
  %34 = getelementptr inbounds [11 x i8], [11 x i8]* %13, i64 0, i64 10, !dbg !235
  store i8 0, i8* %34, align 1, !dbg !236
  %35 = getelementptr inbounds [11 x i8], [11 x i8]* %12, i64 0, i64 0, !dbg !237
  store i8* %35, i8** %5, align 8, !dbg !238
  %36 = getelementptr inbounds [11 x i8], [11 x i8]* %13, i64 0, i64 0, !dbg !239
  store i8* %36, i8** %9, align 8, !dbg !240
  %37 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !241
  %38 = load i8*, i8** %5, align 8, !dbg !242
  %39 = load i8*, i8** %9, align 8, !dbg !243
  %40 = call %struct._xmlAttr* @xmlNewProp(%struct._xmlNode* noundef %37, i8* noundef %38, i8* noundef %39), !dbg !244
  store %struct._xmlAttr* %40, %struct._xmlAttr** %4, align 8, !dbg !245
  %41 = load %struct._xmlAttr*, %struct._xmlAttr** %4, align 8, !dbg !246
  %42 = icmp ne %struct._xmlAttr* %41, null, !dbg !248
  br i1 %42, label %43, label %46, !dbg !249

43:                                               ; preds = %26
  %44 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.8, i64 0, i64 0), i32 noundef 84, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !250
  %45 = load %struct._xmlAttr*, %struct._xmlAttr** %4, align 8, !dbg !252
  call void @xmlFreeProp(%struct._xmlAttr* noundef %45), !dbg !253
  br label %46, !dbg !254

46:                                               ; preds = %43, %26
  %47 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !255
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %47), !dbg !256
  call void @xmlCleanupParser(), !dbg !257
  store i32 0, i32* %1, align 4, !dbg !258
  br label %48, !dbg !258

48:                                               ; preds = %46, %24, %19
  %49 = load i32, i32* %1, align 4, !dbg !259
  ret i32 %49, !dbg !259
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @xmlInitParser() #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare %struct._xmlDoc* @xmlNewDoc(i8* noundef) #2

declare %struct._xmlNode* @xmlNewNode(%struct._xmlNs* noundef, i8* noundef) #2

declare void @xmlFreeDoc(%struct._xmlDoc* noundef) #2

declare %struct._xmlNode* @xmlDocSetRootElement(%struct._xmlDoc* noundef, %struct._xmlNode* noundef) #2

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
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !40, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/291_tree.c_1861_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "87b92dab07a281b716cd86e1667b7c9f")
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
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!48 = !{i32 7, !"Dwarf Version", i32 5}
!49 = !{i32 2, !"Debug Info Version", i32 3}
!50 = !{i32 1, !"wchar_size", i32 4}
!51 = !{i32 7, !"PIC Level", i32 2}
!52 = !{i32 7, !"PIE Level", i32 2}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"Ubuntu clang version 14.0.6"}
!56 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 6, type: !57, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !60)
!57 = !DISubroutineType(types: !58)
!58 = !{!59}
!59 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!60 = !{}
!61 = !DILocalVariable(name: "doc", scope: !56, file: !1, line: 7, type: !62)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !65)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !66)
!66 = !{!67, !68, !70, !73, !123, !124, !125, !126, !127, !128, !129, !130, !150, !151, !152, !153, !154, !155, !156, !157, !158, !162, !163, !164}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !65, file: !4, line: 560, baseType: !46, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !65, file: !4, line: 561, baseType: !69, size: 32, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !65, file: !4, line: 562, baseType: !71, size: 64, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !65, file: !4, line: 563, baseType: !74, size: 64, offset: 192)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !76)
!76 = !{!77, !78, !79, !80, !81, !82, !83, !84, !85, !87, !100, !101, !118, !119, !120, !122}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !75, file: !4, line: 493, baseType: !46, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !75, file: !4, line: 494, baseType: !69, size: 32, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !75, file: !4, line: 495, baseType: !41, size: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !75, file: !4, line: 496, baseType: !74, size: 64, offset: 192)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !75, file: !4, line: 497, baseType: !74, size: 64, offset: 256)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !75, file: !4, line: 498, baseType: !74, size: 64, offset: 320)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !75, file: !4, line: 499, baseType: !74, size: 64, offset: 384)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !75, file: !4, line: 500, baseType: !74, size: 64, offset: 448)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !75, file: !4, line: 501, baseType: !86, size: 64, offset: 512)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
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
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !90, file: !4, line: 393, baseType: !46, size: 64, offset: 256)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !90, file: !4, line: 394, baseType: !86, size: 64, offset: 320)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !75, file: !4, line: 505, baseType: !47, size: 64, offset: 640)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !75, file: !4, line: 506, baseType: !102, size: 64, offset: 704)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !104)
!104 = !{!105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !117}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !103, file: !4, line: 434, baseType: !46, size: 64)
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
!117 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !103, file: !4, line: 445, baseType: !46, size: 64, offset: 704)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !75, file: !4, line: 507, baseType: !88, size: 64, offset: 768)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !75, file: !4, line: 508, baseType: !46, size: 64, offset: 832)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !75, file: !4, line: 509, baseType: !121, size: 16, offset: 896)
!121 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !75, file: !4, line: 510, baseType: !121, size: 16, offset: 912)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !65, file: !4, line: 564, baseType: !74, size: 64, offset: 256)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !65, file: !4, line: 565, baseType: !74, size: 64, offset: 320)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !65, file: !4, line: 566, baseType: !74, size: 64, offset: 384)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !65, file: !4, line: 567, baseType: !74, size: 64, offset: 448)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !65, file: !4, line: 568, baseType: !86, size: 64, offset: 512)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !65, file: !4, line: 571, baseType: !59, size: 32, offset: 576)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !65, file: !4, line: 572, baseType: !59, size: 32, offset: 608)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !65, file: !4, line: 578, baseType: !131, size: 64, offset: 640)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !133)
!133 = !{!134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !132, file: !4, line: 406, baseType: !46, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !132, file: !4, line: 407, baseType: !69, size: 32, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !132, file: !4, line: 408, baseType: !41, size: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !132, file: !4, line: 409, baseType: !74, size: 64, offset: 192)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !132, file: !4, line: 410, baseType: !74, size: 64, offset: 256)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !132, file: !4, line: 411, baseType: !86, size: 64, offset: 320)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !132, file: !4, line: 412, baseType: !74, size: 64, offset: 384)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !132, file: !4, line: 413, baseType: !74, size: 64, offset: 448)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !132, file: !4, line: 414, baseType: !86, size: 64, offset: 512)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !132, file: !4, line: 417, baseType: !46, size: 64, offset: 576)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !132, file: !4, line: 418, baseType: !46, size: 64, offset: 640)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !132, file: !4, line: 419, baseType: !46, size: 64, offset: 704)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !132, file: !4, line: 420, baseType: !46, size: 64, offset: 768)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !132, file: !4, line: 421, baseType: !41, size: 64, offset: 832)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !132, file: !4, line: 422, baseType: !41, size: 64, offset: 896)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !132, file: !4, line: 423, baseType: !46, size: 64, offset: 960)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !65, file: !4, line: 579, baseType: !131, size: 64, offset: 704)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !65, file: !4, line: 580, baseType: !93, size: 64, offset: 768)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !65, file: !4, line: 581, baseType: !41, size: 64, offset: 832)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !65, file: !4, line: 582, baseType: !41, size: 64, offset: 896)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !65, file: !4, line: 583, baseType: !46, size: 64, offset: 960)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !65, file: !4, line: 584, baseType: !46, size: 64, offset: 1024)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !65, file: !4, line: 585, baseType: !41, size: 64, offset: 1088)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !65, file: !4, line: 586, baseType: !59, size: 32, offset: 1152)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !65, file: !4, line: 588, baseType: !159, size: 64, offset: 1216)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !161, line: 24, flags: DIFlagFwdDecl)
!161 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!162 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !65, file: !4, line: 589, baseType: !46, size: 64, offset: 1280)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !65, file: !4, line: 590, baseType: !59, size: 32, offset: 1344)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !65, file: !4, line: 592, baseType: !59, size: 32, offset: 1376)
!165 = !DILocation(line: 7, column: 15, scope: !56)
!166 = !DILocalVariable(name: "node", scope: !56, file: !1, line: 8, type: !167)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !4, line: 491, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !4, line: 490, baseType: !75)
!170 = !DILocation(line: 8, column: 16, scope: !56)
!171 = !DILocalVariable(name: "attr", scope: !56, file: !1, line: 9, type: !172)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttrPtr", file: !4, line: 432, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttr", file: !4, line: 431, baseType: !103)
!175 = !DILocation(line: 9, column: 16, scope: !56)
!176 = !DILocalVariable(name: "name", scope: !56, file: !1, line: 10, type: !47)
!177 = !DILocation(line: 10, column: 14, scope: !56)
!178 = !DILocalVariable(name: "ns", scope: !56, file: !1, line: 11, type: !179)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsPtr", file: !4, line: 387, baseType: !88)
!180 = !DILocation(line: 11, column: 14, scope: !56)
!181 = !DILocalVariable(name: "eatname", scope: !56, file: !1, line: 12, type: !59)
!182 = !DILocation(line: 12, column: 9, scope: !56)
!183 = !DILocation(line: 15, column: 5, scope: !56)
!184 = !DILocation(line: 18, column: 24, scope: !56)
!185 = !DILocation(line: 18, column: 5, scope: !56)
!186 = !DILocation(line: 19, column: 24, scope: !56)
!187 = !DILocation(line: 19, column: 5, scope: !56)
!188 = !DILocation(line: 22, column: 11, scope: !56)
!189 = !DILocation(line: 22, column: 9, scope: !56)
!190 = !DILocation(line: 23, column: 9, scope: !191)
!191 = distinct !DILexicalBlock(scope: !56, file: !1, line: 23, column: 9)
!192 = !DILocation(line: 23, column: 13, scope: !191)
!193 = !DILocation(line: 23, column: 9, scope: !56)
!194 = !DILocation(line: 24, column: 9, scope: !195)
!195 = distinct !DILexicalBlock(scope: !191, file: !1, line: 23, column: 22)
!196 = !DILocation(line: 26, column: 12, scope: !56)
!197 = !DILocation(line: 26, column: 10, scope: !56)
!198 = !DILocation(line: 27, column: 9, scope: !199)
!199 = distinct !DILexicalBlock(scope: !56, file: !1, line: 27, column: 9)
!200 = !DILocation(line: 27, column: 14, scope: !199)
!201 = !DILocation(line: 27, column: 9, scope: !56)
!202 = !DILocation(line: 28, column: 20, scope: !203)
!203 = distinct !DILexicalBlock(scope: !199, file: !1, line: 27, column: 23)
!204 = !DILocation(line: 28, column: 9, scope: !203)
!205 = !DILocation(line: 29, column: 9, scope: !203)
!206 = !DILocation(line: 31, column: 26, scope: !56)
!207 = !DILocation(line: 31, column: 31, scope: !56)
!208 = !DILocation(line: 31, column: 5, scope: !56)
!209 = !DILocalVariable(name: "dict_owns", scope: !56, file: !1, line: 37, type: !59)
!210 = !DILocation(line: 37, column: 9, scope: !56)
!211 = !DILocation(line: 38, column: 24, scope: !56)
!212 = !DILocation(line: 38, column: 5, scope: !56)
!213 = !DILocalVariable(name: "value", scope: !56, file: !1, line: 61, type: !47)
!214 = !DILocation(line: 61, column: 14, scope: !56)
!215 = !DILocalVariable(name: "name_len", scope: !56, file: !1, line: 62, type: !216)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !217, line: 46, baseType: !218)
!217 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!218 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!219 = !DILocation(line: 62, column: 12, scope: !56)
!220 = !DILocalVariable(name: "value_len", scope: !56, file: !1, line: 63, type: !216)
!221 = !DILocation(line: 63, column: 12, scope: !56)
!222 = !DILocalVariable(name: "name_buf", scope: !56, file: !1, line: 64, type: !223)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 88, elements: !224)
!224 = !{!225}
!225 = !DISubrange(count: 11)
!226 = !DILocation(line: 64, column: 10, scope: !56)
!227 = !DILocalVariable(name: "value_buf", scope: !56, file: !1, line: 65, type: !223)
!228 = !DILocation(line: 65, column: 10, scope: !56)
!229 = !DILocation(line: 66, column: 24, scope: !56)
!230 = !DILocation(line: 66, column: 5, scope: !56)
!231 = !DILocation(line: 67, column: 24, scope: !56)
!232 = !DILocation(line: 67, column: 5, scope: !56)
!233 = !DILocation(line: 68, column: 5, scope: !56)
!234 = !DILocation(line: 68, column: 18, scope: !56)
!235 = !DILocation(line: 69, column: 5, scope: !56)
!236 = !DILocation(line: 69, column: 19, scope: !56)
!237 = !DILocation(line: 70, column: 22, scope: !56)
!238 = !DILocation(line: 70, column: 10, scope: !56)
!239 = !DILocation(line: 71, column: 23, scope: !56)
!240 = !DILocation(line: 71, column: 11, scope: !56)
!241 = !DILocation(line: 74, column: 23, scope: !56)
!242 = !DILocation(line: 74, column: 29, scope: !56)
!243 = !DILocation(line: 74, column: 35, scope: !56)
!244 = !DILocation(line: 74, column: 12, scope: !56)
!245 = !DILocation(line: 74, column: 10, scope: !56)
!246 = !DILocation(line: 82, column: 9, scope: !247)
!247 = distinct !DILexicalBlock(scope: !56, file: !1, line: 82, column: 9)
!248 = !DILocation(line: 82, column: 14, scope: !247)
!249 = !DILocation(line: 82, column: 9, scope: !56)
!250 = !DILocation(line: 84, column: 9, scope: !251)
!251 = distinct !DILexicalBlock(scope: !247, file: !1, line: 82, column: 23)
!252 = !DILocation(line: 87, column: 21, scope: !251)
!253 = !DILocation(line: 87, column: 9, scope: !251)
!254 = !DILocation(line: 88, column: 5, scope: !251)
!255 = !DILocation(line: 91, column: 16, scope: !56)
!256 = !DILocation(line: 91, column: 5, scope: !56)
!257 = !DILocation(line: 92, column: 5, scope: !56)
!258 = !DILocation(line: 93, column: 5, scope: !56)
!259 = !DILocation(line: 94, column: 1, scope: !56)

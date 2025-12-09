; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/303_tree.c_872_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/303_tree.c_872_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
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
@.str.2 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"ExternalID\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"SystemID\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_62911_vul/303_tree.c_872_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !57 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlDoc*, align 8
  %3 = alloca %struct._xmlDtd*, align 8
  %4 = alloca %struct._xmlNode*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %2, metadata !62, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.declare(metadata %struct._xmlDtd** %3, metadata !168, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %4, metadata !173, metadata !DIExpression()), !dbg !177
  call void @llvm.dbg.declare(metadata i8** %5, metadata !178, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.declare(metadata i8** %6, metadata !180, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.declare(metadata i8** %7, metadata !182, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.declare(metadata i32* %8, metadata !184, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.declare(metadata i32* %9, metadata !186, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.declare(metadata i32* %10, metadata !188, metadata !DIExpression()), !dbg !189
  call void @xmlInitParser(), !dbg !190
  %11 = call %struct._xmlDoc* @xmlNewDoc(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !191
  store %struct._xmlDoc* %11, %struct._xmlDoc** %2, align 8, !dbg !192
  %12 = call %struct._xmlNode* @xmlNewNode(%struct._xmlNs* noundef null, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !193
  store %struct._xmlNode* %12, %struct._xmlNode** %4, align 8, !dbg !194
  %13 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !195
  %14 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !196
  %15 = call %struct._xmlNode* @xmlDocSetRootElement(%struct._xmlDoc* noundef %13, %struct._xmlNode* noundef %14), !dbg !197
  store i32 10, i32* %8, align 4, !dbg !198
  store i32 10, i32* %9, align 4, !dbg !199
  store i32 10, i32* %10, align 4, !dbg !200
  %16 = load i32, i32* %8, align 4, !dbg !201
  %17 = add nsw i32 %16, 1, !dbg !202
  %18 = sext i32 %17 to i64, !dbg !201
  %19 = call noalias i8* @malloc(i64 noundef %18) #5, !dbg !203
  store i8* %19, i8** %5, align 8, !dbg !204
  %20 = load i32, i32* %9, align 4, !dbg !205
  %21 = add nsw i32 %20, 1, !dbg !206
  %22 = sext i32 %21 to i64, !dbg !205
  %23 = call noalias i8* @malloc(i64 noundef %22) #5, !dbg !207
  store i8* %23, i8** %6, align 8, !dbg !208
  %24 = load i32, i32* %10, align 4, !dbg !209
  %25 = add nsw i32 %24, 1, !dbg !210
  %26 = sext i32 %25 to i64, !dbg !209
  %27 = call noalias i8* @malloc(i64 noundef %26) #5, !dbg !211
  store i8* %27, i8** %7, align 8, !dbg !212
  %28 = load i8*, i8** %5, align 8, !dbg !213
  %29 = load i32, i32* %8, align 4, !dbg !214
  %30 = add nsw i32 %29, 1, !dbg !215
  %31 = sext i32 %30 to i64, !dbg !214
  call void @klee_make_symbolic(i8* noundef %28, i64 noundef %31, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !dbg !216
  %32 = load i8*, i8** %6, align 8, !dbg !217
  %33 = load i32, i32* %9, align 4, !dbg !218
  %34 = add nsw i32 %33, 1, !dbg !219
  %35 = sext i32 %34 to i64, !dbg !218
  call void @klee_make_symbolic(i8* noundef %32, i64 noundef %35, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0)), !dbg !220
  %36 = load i8*, i8** %7, align 8, !dbg !221
  %37 = load i32, i32* %10, align 4, !dbg !222
  %38 = add nsw i32 %37, 1, !dbg !223
  %39 = sext i32 %38 to i64, !dbg !222
  call void @klee_make_symbolic(i8* noundef %36, i64 noundef %39, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)), !dbg !224
  %40 = load i8*, i8** %5, align 8, !dbg !225
  %41 = load i32, i32* %8, align 4, !dbg !226
  %42 = sext i32 %41 to i64, !dbg !225
  %43 = getelementptr inbounds i8, i8* %40, i64 %42, !dbg !225
  store i8 0, i8* %43, align 1, !dbg !227
  %44 = load i8*, i8** %6, align 8, !dbg !228
  %45 = load i32, i32* %9, align 4, !dbg !229
  %46 = sext i32 %45 to i64, !dbg !228
  %47 = getelementptr inbounds i8, i8* %44, i64 %46, !dbg !228
  store i8 0, i8* %47, align 1, !dbg !230
  %48 = load i8*, i8** %7, align 8, !dbg !231
  %49 = load i32, i32* %10, align 4, !dbg !232
  %50 = sext i32 %49 to i64, !dbg !231
  %51 = getelementptr inbounds i8, i8* %48, i64 %50, !dbg !231
  store i8 0, i8* %51, align 1, !dbg !233
  %52 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !234
  %53 = load i8*, i8** %5, align 8, !dbg !235
  %54 = load i8*, i8** %6, align 8, !dbg !236
  %55 = load i8*, i8** %7, align 8, !dbg !237
  %56 = call %struct._xmlDtd* @xmlCreateIntSubset(%struct._xmlDoc* noundef %52, i8* noundef %53, i8* noundef %54, i8* noundef %55), !dbg !238
  store %struct._xmlDtd* %56, %struct._xmlDtd** %3, align 8, !dbg !239
  %57 = load %struct._xmlDtd*, %struct._xmlDtd** %3, align 8, !dbg !240
  %58 = icmp ne %struct._xmlDtd* %57, null, !dbg !242
  br i1 %58, label %59, label %61, !dbg !243

59:                                               ; preds = %0
  %60 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.6, i64 0, i64 0), i32 noundef 43, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !244
  br label %61, !dbg !246

61:                                               ; preds = %59, %0
  %62 = load i8*, i8** %5, align 8, !dbg !247
  call void @free(i8* noundef %62) #5, !dbg !248
  %63 = load i8*, i8** %6, align 8, !dbg !249
  call void @free(i8* noundef %63) #5, !dbg !250
  %64 = load i8*, i8** %7, align 8, !dbg !251
  call void @free(i8* noundef %64) #5, !dbg !252
  %65 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !253
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %65), !dbg !254
  call void @xmlCleanupParser(), !dbg !255
  ret i32 0, !dbg !256
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

declare %struct._xmlDtd* @xmlCreateIntSubset(%struct._xmlDoc* noundef, i8* noundef, i8* noundef, i8* noundef) #2

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
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !40, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/303_tree.c_872_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "da01bc131d754903a3c02a527ca35ff1")
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
!40 = !{!41, !45, !48}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !43, line: 28, baseType: !44)
!43 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!44 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!49 = !{i32 7, !"Dwarf Version", i32 5}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = !{i32 7, !"PIC Level", i32 2}
!53 = !{i32 7, !"PIE Level", i32 2}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"Ubuntu clang version 14.0.6"}
!57 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 6, type: !58, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !61)
!58 = !DISubroutineType(types: !59)
!59 = !{!60}
!60 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!61 = !{}
!62 = !DILocalVariable(name: "doc", scope: !57, file: !1, line: 7, type: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !66)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !67)
!67 = !{!68, !69, !71, !73, !125, !126, !127, !128, !129, !130, !131, !132, !152, !153, !154, !155, !156, !157, !158, !159, !160, !164, !165, !166}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !66, file: !4, line: 560, baseType: !48, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !66, file: !4, line: 561, baseType: !70, size: 32, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !66, file: !4, line: 562, baseType: !72, size: 64, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !66, file: !4, line: 563, baseType: !74, size: 64, offset: 192)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !76)
!76 = !{!77, !78, !79, !82, !83, !84, !85, !86, !87, !89, !102, !103, !120, !121, !122, !124}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !75, file: !4, line: 493, baseType: !48, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !75, file: !4, line: 494, baseType: !70, size: 32, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !75, file: !4, line: 495, baseType: !80, size: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !75, file: !4, line: 496, baseType: !74, size: 64, offset: 192)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !75, file: !4, line: 497, baseType: !74, size: 64, offset: 256)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !75, file: !4, line: 498, baseType: !74, size: 64, offset: 320)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !75, file: !4, line: 499, baseType: !74, size: 64, offset: 384)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !75, file: !4, line: 500, baseType: !74, size: 64, offset: 448)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !75, file: !4, line: 501, baseType: !88, size: 64, offset: 512)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !75, file: !4, line: 504, baseType: !90, size: 64, offset: 576)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !92)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !93)
!93 = !{!94, !96, !98, !99, !100, !101}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !92, file: !4, line: 389, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !92, file: !4, line: 390, baseType: !97, size: 32, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !70)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !92, file: !4, line: 391, baseType: !80, size: 64, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !92, file: !4, line: 392, baseType: !80, size: 64, offset: 192)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !92, file: !4, line: 393, baseType: !48, size: 64, offset: 256)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !92, file: !4, line: 394, baseType: !88, size: 64, offset: 320)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !75, file: !4, line: 505, baseType: !41, size: 64, offset: 640)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !75, file: !4, line: 506, baseType: !104, size: 64, offset: 704)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !106)
!106 = !{!107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !119}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !105, file: !4, line: 434, baseType: !48, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !105, file: !4, line: 435, baseType: !70, size: 32, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !105, file: !4, line: 436, baseType: !80, size: 64, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !105, file: !4, line: 437, baseType: !74, size: 64, offset: 192)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !105, file: !4, line: 438, baseType: !74, size: 64, offset: 256)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !105, file: !4, line: 439, baseType: !74, size: 64, offset: 320)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !105, file: !4, line: 440, baseType: !104, size: 64, offset: 384)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !105, file: !4, line: 441, baseType: !104, size: 64, offset: 448)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !105, file: !4, line: 442, baseType: !88, size: 64, offset: 512)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !105, file: !4, line: 443, baseType: !90, size: 64, offset: 576)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !105, file: !4, line: 444, baseType: !118, size: 32, offset: 640)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !105, file: !4, line: 445, baseType: !48, size: 64, offset: 704)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !75, file: !4, line: 507, baseType: !90, size: 64, offset: 768)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !75, file: !4, line: 508, baseType: !48, size: 64, offset: 832)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !75, file: !4, line: 509, baseType: !123, size: 16, offset: 896)
!123 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !75, file: !4, line: 510, baseType: !123, size: 16, offset: 912)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !66, file: !4, line: 564, baseType: !74, size: 64, offset: 256)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !66, file: !4, line: 565, baseType: !74, size: 64, offset: 320)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !66, file: !4, line: 566, baseType: !74, size: 64, offset: 384)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !66, file: !4, line: 567, baseType: !74, size: 64, offset: 448)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !66, file: !4, line: 568, baseType: !88, size: 64, offset: 512)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !66, file: !4, line: 571, baseType: !60, size: 32, offset: 576)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !66, file: !4, line: 572, baseType: !60, size: 32, offset: 608)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !66, file: !4, line: 578, baseType: !133, size: 64, offset: 640)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !135)
!135 = !{!136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !134, file: !4, line: 406, baseType: !48, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !134, file: !4, line: 407, baseType: !70, size: 32, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !134, file: !4, line: 408, baseType: !80, size: 64, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !134, file: !4, line: 409, baseType: !74, size: 64, offset: 192)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !134, file: !4, line: 410, baseType: !74, size: 64, offset: 256)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !134, file: !4, line: 411, baseType: !88, size: 64, offset: 320)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !134, file: !4, line: 412, baseType: !74, size: 64, offset: 384)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !134, file: !4, line: 413, baseType: !74, size: 64, offset: 448)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !134, file: !4, line: 414, baseType: !88, size: 64, offset: 512)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !134, file: !4, line: 417, baseType: !48, size: 64, offset: 576)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !134, file: !4, line: 418, baseType: !48, size: 64, offset: 640)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !134, file: !4, line: 419, baseType: !48, size: 64, offset: 704)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !134, file: !4, line: 420, baseType: !48, size: 64, offset: 768)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !134, file: !4, line: 421, baseType: !80, size: 64, offset: 832)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !134, file: !4, line: 422, baseType: !80, size: 64, offset: 896)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !134, file: !4, line: 423, baseType: !48, size: 64, offset: 960)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !66, file: !4, line: 579, baseType: !133, size: 64, offset: 704)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !66, file: !4, line: 580, baseType: !95, size: 64, offset: 768)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !66, file: !4, line: 581, baseType: !80, size: 64, offset: 832)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !66, file: !4, line: 582, baseType: !80, size: 64, offset: 896)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !66, file: !4, line: 583, baseType: !48, size: 64, offset: 960)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !66, file: !4, line: 584, baseType: !48, size: 64, offset: 1024)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !66, file: !4, line: 585, baseType: !80, size: 64, offset: 1088)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !66, file: !4, line: 586, baseType: !60, size: 32, offset: 1152)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !66, file: !4, line: 588, baseType: !161, size: 64, offset: 1216)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !163, line: 24, flags: DIFlagFwdDecl)
!163 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!164 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !66, file: !4, line: 589, baseType: !48, size: 64, offset: 1280)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !66, file: !4, line: 590, baseType: !60, size: 32, offset: 1344)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !66, file: !4, line: 592, baseType: !60, size: 32, offset: 1376)
!167 = !DILocation(line: 7, column: 15, scope: !57)
!168 = !DILocalVariable(name: "dtd", scope: !57, file: !1, line: 8, type: !169)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDtdPtr", file: !4, line: 404, baseType: !170)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDtd", file: !4, line: 403, baseType: !134)
!172 = !DILocation(line: 8, column: 15, scope: !57)
!173 = !DILocalVariable(name: "root", scope: !57, file: !1, line: 9, type: !174)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !4, line: 491, baseType: !175)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !4, line: 490, baseType: !75)
!177 = !DILocation(line: 9, column: 16, scope: !57)
!178 = !DILocalVariable(name: "name", scope: !57, file: !1, line: 10, type: !41)
!179 = !DILocation(line: 10, column: 14, scope: !57)
!180 = !DILocalVariable(name: "ExternalID", scope: !57, file: !1, line: 11, type: !41)
!181 = !DILocation(line: 11, column: 14, scope: !57)
!182 = !DILocalVariable(name: "SystemID", scope: !57, file: !1, line: 12, type: !41)
!183 = !DILocation(line: 12, column: 14, scope: !57)
!184 = !DILocalVariable(name: "name_len", scope: !57, file: !1, line: 13, type: !60)
!185 = !DILocation(line: 13, column: 9, scope: !57)
!186 = !DILocalVariable(name: "extid_len", scope: !57, file: !1, line: 13, type: !60)
!187 = !DILocation(line: 13, column: 19, scope: !57)
!188 = !DILocalVariable(name: "sysid_len", scope: !57, file: !1, line: 13, type: !60)
!189 = !DILocation(line: 13, column: 30, scope: !57)
!190 = !DILocation(line: 16, column: 5, scope: !57)
!191 = !DILocation(line: 19, column: 11, scope: !57)
!192 = !DILocation(line: 19, column: 9, scope: !57)
!193 = !DILocation(line: 20, column: 12, scope: !57)
!194 = !DILocation(line: 20, column: 10, scope: !57)
!195 = !DILocation(line: 21, column: 26, scope: !57)
!196 = !DILocation(line: 21, column: 31, scope: !57)
!197 = !DILocation(line: 21, column: 5, scope: !57)
!198 = !DILocation(line: 24, column: 14, scope: !57)
!199 = !DILocation(line: 25, column: 15, scope: !57)
!200 = !DILocation(line: 26, column: 15, scope: !57)
!201 = !DILocation(line: 27, column: 29, scope: !57)
!202 = !DILocation(line: 27, column: 38, scope: !57)
!203 = !DILocation(line: 27, column: 22, scope: !57)
!204 = !DILocation(line: 27, column: 10, scope: !57)
!205 = !DILocation(line: 28, column: 35, scope: !57)
!206 = !DILocation(line: 28, column: 45, scope: !57)
!207 = !DILocation(line: 28, column: 28, scope: !57)
!208 = !DILocation(line: 28, column: 16, scope: !57)
!209 = !DILocation(line: 29, column: 33, scope: !57)
!210 = !DILocation(line: 29, column: 43, scope: !57)
!211 = !DILocation(line: 29, column: 26, scope: !57)
!212 = !DILocation(line: 29, column: 14, scope: !57)
!213 = !DILocation(line: 31, column: 24, scope: !57)
!214 = !DILocation(line: 31, column: 30, scope: !57)
!215 = !DILocation(line: 31, column: 39, scope: !57)
!216 = !DILocation(line: 31, column: 5, scope: !57)
!217 = !DILocation(line: 32, column: 24, scope: !57)
!218 = !DILocation(line: 32, column: 36, scope: !57)
!219 = !DILocation(line: 32, column: 46, scope: !57)
!220 = !DILocation(line: 32, column: 5, scope: !57)
!221 = !DILocation(line: 33, column: 24, scope: !57)
!222 = !DILocation(line: 33, column: 34, scope: !57)
!223 = !DILocation(line: 33, column: 44, scope: !57)
!224 = !DILocation(line: 33, column: 5, scope: !57)
!225 = !DILocation(line: 34, column: 5, scope: !57)
!226 = !DILocation(line: 34, column: 10, scope: !57)
!227 = !DILocation(line: 34, column: 20, scope: !57)
!228 = !DILocation(line: 35, column: 5, scope: !57)
!229 = !DILocation(line: 35, column: 16, scope: !57)
!230 = !DILocation(line: 35, column: 27, scope: !57)
!231 = !DILocation(line: 36, column: 5, scope: !57)
!232 = !DILocation(line: 36, column: 14, scope: !57)
!233 = !DILocation(line: 36, column: 25, scope: !57)
!234 = !DILocation(line: 39, column: 30, scope: !57)
!235 = !DILocation(line: 39, column: 48, scope: !57)
!236 = !DILocation(line: 39, column: 67, scope: !57)
!237 = !DILocation(line: 39, column: 92, scope: !57)
!238 = !DILocation(line: 39, column: 11, scope: !57)
!239 = !DILocation(line: 39, column: 9, scope: !57)
!240 = !DILocation(line: 42, column: 9, scope: !241)
!241 = distinct !DILexicalBlock(scope: !57, file: !1, line: 42, column: 9)
!242 = !DILocation(line: 42, column: 13, scope: !241)
!243 = !DILocation(line: 42, column: 9, scope: !57)
!244 = !DILocation(line: 43, column: 9, scope: !245)
!245 = distinct !DILexicalBlock(scope: !241, file: !1, line: 42, column: 22)
!246 = !DILocation(line: 44, column: 5, scope: !245)
!247 = !DILocation(line: 47, column: 10, scope: !57)
!248 = !DILocation(line: 47, column: 5, scope: !57)
!249 = !DILocation(line: 48, column: 10, scope: !57)
!250 = !DILocation(line: 48, column: 5, scope: !57)
!251 = !DILocation(line: 49, column: 10, scope: !57)
!252 = !DILocation(line: 49, column: 5, scope: !57)
!253 = !DILocation(line: 50, column: 16, scope: !57)
!254 = !DILocation(line: 50, column: 5, scope: !57)
!255 = !DILocation(line: 51, column: 5, scope: !57)
!256 = !DILocation(line: 53, column: 5, scope: !57)

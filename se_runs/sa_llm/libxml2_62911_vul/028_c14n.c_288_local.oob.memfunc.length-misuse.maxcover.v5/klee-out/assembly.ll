; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/028_c14n.c_288_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/028_c14n.c_288_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDoc = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, i32, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlNs*, i8*, i8*, i8*, i8*, i8*, i32, %struct._xmlDict*, i8*, i32, i32 }
%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i8*, i16, i16 }
%struct._xmlAttr = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlAttr*, %struct._xmlAttr*, %struct._xmlDoc*, %struct._xmlNs*, i32, i8* }
%struct._xmlDtd = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._xmlNs = type { %struct._xmlNs*, i32, i8*, i8*, i8*, %struct._xmlDoc* }
%struct._xmlDict = type opaque
%struct._xmlNodeSet = type { i32, i32, %struct._xmlNode** }

@.str = private unnamed_addr constant [11 x i8] c"xml_buffer\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"noname.xml\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_62911_vul/028_c14n.c_288_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@xmlFree = external global void (i8*)*, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !63 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlDoc*, align 8
  %3 = alloca %struct._xmlNode*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %2, metadata !68, metadata !DIExpression()), !dbg !173
  store %struct._xmlDoc* null, %struct._xmlDoc** %2, align 8, !dbg !173
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %3, metadata !174, metadata !DIExpression()), !dbg !178
  store %struct._xmlNode* null, %struct._xmlNode** %3, align 8, !dbg !178
  call void @llvm.dbg.declare(metadata i8** %4, metadata !179, metadata !DIExpression()), !dbg !180
  store i8* null, i8** %4, align 8, !dbg !180
  call void @llvm.dbg.declare(metadata i32* %5, metadata !181, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.declare(metadata i32* %6, metadata !183, metadata !DIExpression()), !dbg !184
  call void @xmlInitParser(), !dbg !185
  store i32 100, i32* %5, align 4, !dbg !186
  %7 = load i32, i32* %5, align 4, !dbg !187
  %8 = sext i32 %7 to i64, !dbg !187
  %9 = mul i64 %8, 1, !dbg !188
  %10 = call noalias i8* @malloc(i64 noundef %9) #5, !dbg !189
  store i8* %10, i8** %4, align 8, !dbg !190
  %11 = load i8*, i8** %4, align 8, !dbg !191
  %12 = icmp eq i8* %11, null, !dbg !193
  br i1 %12, label %13, label %14, !dbg !194

13:                                               ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !195
  br label %52, !dbg !195

14:                                               ; preds = %0
  %15 = load i8*, i8** %4, align 8, !dbg !197
  %16 = load i32, i32* %5, align 4, !dbg !198
  %17 = sext i32 %16 to i64, !dbg !198
  %18 = mul i64 %17, 1, !dbg !199
  call void @klee_make_symbolic(i8* noundef %15, i64 noundef %18, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0)), !dbg !200
  %19 = load i8*, i8** %4, align 8, !dbg !201
  %20 = load i32, i32* %5, align 4, !dbg !202
  %21 = sub nsw i32 %20, 1, !dbg !203
  %22 = sext i32 %21 to i64, !dbg !201
  %23 = getelementptr inbounds i8, i8* %19, i64 %22, !dbg !201
  store i8 0, i8* %23, align 1, !dbg !204
  %24 = load i8*, i8** %4, align 8, !dbg !205
  %25 = load i32, i32* %5, align 4, !dbg !206
  %26 = sub nsw i32 %25, 1, !dbg !207
  %27 = call %struct._xmlDoc* @xmlReadMemory(i8* noundef %24, i32 noundef %26, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* noundef null, i32 noundef 0), !dbg !208
  store %struct._xmlDoc* %27, %struct._xmlDoc** %2, align 8, !dbg !209
  %28 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !210
  %29 = icmp eq %struct._xmlDoc* %28, null, !dbg !212
  br i1 %29, label %30, label %32, !dbg !213

30:                                               ; preds = %14
  %31 = load i8*, i8** %4, align 8, !dbg !214
  call void @free(i8* noundef %31) #5, !dbg !216
  call void @xmlCleanupParser(), !dbg !217
  store i32 1, i32* %1, align 4, !dbg !218
  br label %52, !dbg !218

32:                                               ; preds = %14
  %33 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !219
  %34 = call %struct._xmlNode* @xmlDocGetRootElement(%struct._xmlDoc* noundef %33), !dbg !220
  store %struct._xmlNode* %34, %struct._xmlNode** %3, align 8, !dbg !221
  %35 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !222
  %36 = icmp eq %struct._xmlNode* %35, null, !dbg !224
  br i1 %36, label %37, label %40, !dbg !225

37:                                               ; preds = %32
  %38 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !226
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %38), !dbg !228
  %39 = load i8*, i8** %4, align 8, !dbg !229
  call void @free(i8* noundef %39) #5, !dbg !230
  call void @xmlCleanupParser(), !dbg !231
  store i32 1, i32* %1, align 4, !dbg !232
  br label %52, !dbg !232

40:                                               ; preds = %32
  %41 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !233
  %42 = call i32 @xmlC14NDocDumpMemory(%struct._xmlDoc* noundef %41, %struct._xmlNodeSet* noundef null, i32 noundef 0, i8** noundef null, i32 noundef 0, i8** noundef %4), !dbg !234
  store i32 %42, i32* %6, align 4, !dbg !235
  %43 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.3, i64 0, i64 0), i32 noundef 51, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !236
  %44 = load i8*, i8** %4, align 8, !dbg !237
  %45 = icmp ne i8* %44, null, !dbg !239
  br i1 %45, label %46, label %49, !dbg !240

46:                                               ; preds = %40
  %47 = load void (i8*)*, void (i8*)** @xmlFree, align 8, !dbg !241
  %48 = load i8*, i8** %4, align 8, !dbg !243
  call void %47(i8* noundef %48), !dbg !241
  br label %49, !dbg !244

49:                                               ; preds = %46, %40
  %50 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !245
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %50), !dbg !246
  %51 = load i8*, i8** %4, align 8, !dbg !247
  call void @free(i8* noundef %51) #5, !dbg !248
  call void @xmlCleanupParser(), !dbg !249
  store i32 0, i32* %1, align 4, !dbg !250
  br label %52, !dbg !250

52:                                               ; preds = %49, %37, %30, %13
  %53 = load i32, i32* %1, align 4, !dbg !251
  ret i32 %53, !dbg !251
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @xmlInitParser() #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare %struct._xmlDoc* @xmlReadMemory(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef) #2

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

declare void @xmlCleanupParser() #2

declare %struct._xmlNode* @xmlDocGetRootElement(%struct._xmlDoc* noundef) #2

declare void @xmlFreeDoc(%struct._xmlDoc* noundef) #2

declare i32 @xmlC14NDocDumpMemory(%struct._xmlDoc* noundef, %struct._xmlNodeSet* noundef, i32 noundef, i8** noundef, i32 noundef, i8** noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !46, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/028_c14n.c_288_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "1a097866de3d400f6fbc3bd5fe8b1349")
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
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !41, line: 63, baseType: !5, size: 32, elements: !42)
!41 = !DIFile(filename: "/usr/include/libxml2/libxml/c14n.h", directory: "", checksumkind: CSK_MD5, checksum: "f353c229047ccecd79a6c57ba7526ccd")
!42 = !{!43, !44, !45}
!43 = !DIEnumerator(name: "XML_C14N_1_0", value: 0)
!44 = !DIEnumerator(name: "XML_C14N_EXCLUSIVE_1_0", value: 1)
!45 = !DIEnumerator(name: "XML_C14N_1_1", value: 2)
!46 = !{!47, !51, !52}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !49, line: 28, baseType: !50)
!49 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!50 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!54 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!55 = !{i32 7, !"Dwarf Version", i32 5}
!56 = !{i32 2, !"Debug Info Version", i32 3}
!57 = !{i32 1, !"wchar_size", i32 4}
!58 = !{i32 7, !"PIC Level", i32 2}
!59 = !{i32 7, !"PIE Level", i32 2}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"Ubuntu clang version 14.0.6"}
!63 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 7, type: !64, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!64 = !DISubroutineType(types: !65)
!65 = !{!66}
!66 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!67 = !{}
!68 = !DILocalVariable(name: "doc", scope: !63, file: !1, line: 8, type: !69)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !72)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !73)
!73 = !{!74, !75, !77, !79, !131, !132, !133, !134, !135, !136, !137, !138, !158, !159, !160, !161, !162, !163, !164, !165, !166, !170, !171, !172}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !72, file: !4, line: 560, baseType: !51, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !72, file: !4, line: 561, baseType: !76, size: 32, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !72, file: !4, line: 562, baseType: !78, size: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !72, file: !4, line: 563, baseType: !80, size: 64, offset: 192)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !82)
!82 = !{!83, !84, !85, !88, !89, !90, !91, !92, !93, !95, !108, !109, !126, !127, !128, !130}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !81, file: !4, line: 493, baseType: !51, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !81, file: !4, line: 494, baseType: !76, size: 32, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !81, file: !4, line: 495, baseType: !86, size: 64, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !81, file: !4, line: 496, baseType: !80, size: 64, offset: 192)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !81, file: !4, line: 497, baseType: !80, size: 64, offset: 256)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !81, file: !4, line: 498, baseType: !80, size: 64, offset: 320)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !81, file: !4, line: 499, baseType: !80, size: 64, offset: 384)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !81, file: !4, line: 500, baseType: !80, size: 64, offset: 448)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !81, file: !4, line: 501, baseType: !94, size: 64, offset: 512)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !81, file: !4, line: 504, baseType: !96, size: 64, offset: 576)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !98)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !99)
!99 = !{!100, !102, !104, !105, !106, !107}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !98, file: !4, line: 389, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !98, file: !4, line: 390, baseType: !103, size: 32, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !76)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !98, file: !4, line: 391, baseType: !86, size: 64, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !98, file: !4, line: 392, baseType: !86, size: 64, offset: 192)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !98, file: !4, line: 393, baseType: !51, size: 64, offset: 256)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !98, file: !4, line: 394, baseType: !94, size: 64, offset: 320)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !81, file: !4, line: 505, baseType: !47, size: 64, offset: 640)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !81, file: !4, line: 506, baseType: !110, size: 64, offset: 704)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !112)
!112 = !{!113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !125}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !111, file: !4, line: 434, baseType: !51, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !111, file: !4, line: 435, baseType: !76, size: 32, offset: 64)
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
!125 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !111, file: !4, line: 445, baseType: !51, size: 64, offset: 704)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !81, file: !4, line: 507, baseType: !96, size: 64, offset: 768)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !81, file: !4, line: 508, baseType: !51, size: 64, offset: 832)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !81, file: !4, line: 509, baseType: !129, size: 16, offset: 896)
!129 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !81, file: !4, line: 510, baseType: !129, size: 16, offset: 912)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !72, file: !4, line: 564, baseType: !80, size: 64, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !72, file: !4, line: 565, baseType: !80, size: 64, offset: 320)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !72, file: !4, line: 566, baseType: !80, size: 64, offset: 384)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !72, file: !4, line: 567, baseType: !80, size: 64, offset: 448)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !72, file: !4, line: 568, baseType: !94, size: 64, offset: 512)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !72, file: !4, line: 571, baseType: !66, size: 32, offset: 576)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !72, file: !4, line: 572, baseType: !66, size: 32, offset: 608)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !72, file: !4, line: 578, baseType: !139, size: 64, offset: 640)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !141)
!141 = !{!142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !140, file: !4, line: 406, baseType: !51, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !140, file: !4, line: 407, baseType: !76, size: 32, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !140, file: !4, line: 408, baseType: !86, size: 64, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !140, file: !4, line: 409, baseType: !80, size: 64, offset: 192)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !140, file: !4, line: 410, baseType: !80, size: 64, offset: 256)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !140, file: !4, line: 411, baseType: !94, size: 64, offset: 320)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !140, file: !4, line: 412, baseType: !80, size: 64, offset: 384)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !140, file: !4, line: 413, baseType: !80, size: 64, offset: 448)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !140, file: !4, line: 414, baseType: !94, size: 64, offset: 512)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !140, file: !4, line: 417, baseType: !51, size: 64, offset: 576)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !140, file: !4, line: 418, baseType: !51, size: 64, offset: 640)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !140, file: !4, line: 419, baseType: !51, size: 64, offset: 704)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !140, file: !4, line: 420, baseType: !51, size: 64, offset: 768)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !140, file: !4, line: 421, baseType: !86, size: 64, offset: 832)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !140, file: !4, line: 422, baseType: !86, size: 64, offset: 896)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !140, file: !4, line: 423, baseType: !51, size: 64, offset: 960)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !72, file: !4, line: 579, baseType: !139, size: 64, offset: 704)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !72, file: !4, line: 580, baseType: !101, size: 64, offset: 768)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !72, file: !4, line: 581, baseType: !86, size: 64, offset: 832)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !72, file: !4, line: 582, baseType: !86, size: 64, offset: 896)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !72, file: !4, line: 583, baseType: !51, size: 64, offset: 960)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !72, file: !4, line: 584, baseType: !51, size: 64, offset: 1024)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !72, file: !4, line: 585, baseType: !86, size: 64, offset: 1088)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !72, file: !4, line: 586, baseType: !66, size: 32, offset: 1152)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !72, file: !4, line: 588, baseType: !167, size: 64, offset: 1216)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !169, line: 24, flags: DIFlagFwdDecl)
!169 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!170 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !72, file: !4, line: 589, baseType: !51, size: 64, offset: 1280)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !72, file: !4, line: 590, baseType: !66, size: 32, offset: 1344)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !72, file: !4, line: 592, baseType: !66, size: 32, offset: 1376)
!173 = !DILocation(line: 8, column: 15, scope: !63)
!174 = !DILocalVariable(name: "node", scope: !63, file: !1, line: 9, type: !175)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !4, line: 491, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !4, line: 490, baseType: !81)
!178 = !DILocation(line: 9, column: 16, scope: !63)
!179 = !DILocalVariable(name: "buffer", scope: !63, file: !1, line: 10, type: !47)
!180 = !DILocation(line: 10, column: 14, scope: !63)
!181 = !DILocalVariable(name: "buffer_len", scope: !63, file: !1, line: 11, type: !66)
!182 = !DILocation(line: 11, column: 9, scope: !63)
!183 = !DILocalVariable(name: "ret", scope: !63, file: !1, line: 12, type: !66)
!184 = !DILocation(line: 12, column: 9, scope: !63)
!185 = !DILocation(line: 15, column: 5, scope: !63)
!186 = !DILocation(line: 18, column: 16, scope: !63)
!187 = !DILocation(line: 19, column: 32, scope: !63)
!188 = !DILocation(line: 19, column: 43, scope: !63)
!189 = !DILocation(line: 19, column: 25, scope: !63)
!190 = !DILocation(line: 19, column: 12, scope: !63)
!191 = !DILocation(line: 20, column: 9, scope: !192)
!192 = distinct !DILexicalBlock(scope: !63, file: !1, line: 20, column: 9)
!193 = !DILocation(line: 20, column: 16, scope: !192)
!194 = !DILocation(line: 20, column: 9, scope: !63)
!195 = !DILocation(line: 21, column: 9, scope: !196)
!196 = distinct !DILexicalBlock(scope: !192, file: !1, line: 20, column: 25)
!197 = !DILocation(line: 23, column: 24, scope: !63)
!198 = !DILocation(line: 23, column: 32, scope: !63)
!199 = !DILocation(line: 23, column: 43, scope: !63)
!200 = !DILocation(line: 23, column: 5, scope: !63)
!201 = !DILocation(line: 25, column: 5, scope: !63)
!202 = !DILocation(line: 25, column: 12, scope: !63)
!203 = !DILocation(line: 25, column: 23, scope: !63)
!204 = !DILocation(line: 25, column: 28, scope: !63)
!205 = !DILocation(line: 28, column: 39, scope: !63)
!206 = !DILocation(line: 28, column: 47, scope: !63)
!207 = !DILocation(line: 28, column: 58, scope: !63)
!208 = !DILocation(line: 28, column: 11, scope: !63)
!209 = !DILocation(line: 28, column: 9, scope: !63)
!210 = !DILocation(line: 29, column: 9, scope: !211)
!211 = distinct !DILexicalBlock(scope: !63, file: !1, line: 29, column: 9)
!212 = !DILocation(line: 29, column: 13, scope: !211)
!213 = !DILocation(line: 29, column: 9, scope: !63)
!214 = !DILocation(line: 30, column: 14, scope: !215)
!215 = distinct !DILexicalBlock(scope: !211, file: !1, line: 29, column: 22)
!216 = !DILocation(line: 30, column: 9, scope: !215)
!217 = !DILocation(line: 31, column: 9, scope: !215)
!218 = !DILocation(line: 32, column: 9, scope: !215)
!219 = !DILocation(line: 36, column: 33, scope: !63)
!220 = !DILocation(line: 36, column: 12, scope: !63)
!221 = !DILocation(line: 36, column: 10, scope: !63)
!222 = !DILocation(line: 37, column: 9, scope: !223)
!223 = distinct !DILexicalBlock(scope: !63, file: !1, line: 37, column: 9)
!224 = !DILocation(line: 37, column: 14, scope: !223)
!225 = !DILocation(line: 37, column: 9, scope: !63)
!226 = !DILocation(line: 38, column: 20, scope: !227)
!227 = distinct !DILexicalBlock(scope: !223, file: !1, line: 37, column: 23)
!228 = !DILocation(line: 38, column: 9, scope: !227)
!229 = !DILocation(line: 39, column: 14, scope: !227)
!230 = !DILocation(line: 39, column: 9, scope: !227)
!231 = !DILocation(line: 40, column: 9, scope: !227)
!232 = !DILocation(line: 41, column: 9, scope: !227)
!233 = !DILocation(line: 45, column: 32, scope: !63)
!234 = !DILocation(line: 45, column: 11, scope: !63)
!235 = !DILocation(line: 45, column: 9, scope: !63)
!236 = !DILocation(line: 51, column: 5, scope: !63)
!237 = !DILocation(line: 54, column: 9, scope: !238)
!238 = distinct !DILexicalBlock(scope: !63, file: !1, line: 54, column: 9)
!239 = !DILocation(line: 54, column: 16, scope: !238)
!240 = !DILocation(line: 54, column: 9, scope: !63)
!241 = !DILocation(line: 55, column: 9, scope: !242)
!242 = distinct !DILexicalBlock(scope: !238, file: !1, line: 54, column: 25)
!243 = !DILocation(line: 55, column: 17, scope: !242)
!244 = !DILocation(line: 56, column: 5, scope: !242)
!245 = !DILocation(line: 57, column: 16, scope: !63)
!246 = !DILocation(line: 57, column: 5, scope: !63)
!247 = !DILocation(line: 58, column: 10, scope: !63)
!248 = !DILocation(line: 58, column: 5, scope: !63)
!249 = !DILocation(line: 59, column: 5, scope: !63)
!250 = !DILocation(line: 61, column: 5, scope: !63)
!251 = !DILocation(line: 62, column: 1, scope: !63)

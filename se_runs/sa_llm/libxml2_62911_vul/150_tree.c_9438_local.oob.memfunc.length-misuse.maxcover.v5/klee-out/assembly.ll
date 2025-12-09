; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/150_tree.c_9438_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/150_tree.c_9438_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDoc = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, i32, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlNs*, i8*, i8*, i8*, i8*, i8*, i32, %struct._xmlDict*, i8*, i32, i32 }
%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i8*, i16, i16 }
%struct._xmlAttr = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlAttr*, %struct._xmlAttr*, %struct._xmlDoc*, %struct._xmlNs*, i32, i8* }
%struct._xmlDtd = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._xmlNs = type { %struct._xmlNs*, i32, i8*, i8*, i8*, %struct._xmlDoc* }
%struct._xmlDict = type opaque
%struct._xmlDOMWrapCtxt = type { i8*, i32, i8*, %struct._xmlNs* (%struct._xmlDOMWrapCtxt*, %struct._xmlNode*, i8*, i8*)* }

@.str = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"http://example.com\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"pre\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"dest_doc\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"dest_parent\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"options\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.8 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/150_tree.c_9438_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !54 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlDoc*, align 8
  %3 = alloca %struct._xmlNode*, align 8
  %4 = alloca %struct._xmlNode*, align 8
  %5 = alloca %struct._xmlDOMWrapCtxt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._xmlDoc*, align 8
  %8 = alloca %struct._xmlNode*, align 8
  %9 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %2, metadata !59, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %3, metadata !166, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %4, metadata !171, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.declare(metadata %struct._xmlDOMWrapCtxt** %5, metadata !173, metadata !DIExpression()), !dbg !188
  call void @llvm.dbg.declare(metadata i32* %6, metadata !189, metadata !DIExpression()), !dbg !190
  call void @xmlCheckVersion(i32 noundef 20914), !dbg !191
  %10 = call %struct._xmlDOMWrapCtxt* @xmlDOMWrapNewCtxt(), !dbg !192
  store %struct._xmlDOMWrapCtxt* %10, %struct._xmlDOMWrapCtxt** %5, align 8, !dbg !193
  %11 = load %struct._xmlDOMWrapCtxt*, %struct._xmlDOMWrapCtxt** %5, align 8, !dbg !194
  %12 = icmp eq %struct._xmlDOMWrapCtxt* %11, null, !dbg !196
  br i1 %12, label %13, label %14, !dbg !197

13:                                               ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !198
  br label %66, !dbg !198

14:                                               ; preds = %0
  %15 = call %struct._xmlDoc* @xmlNewDoc(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !200
  store %struct._xmlDoc* %15, %struct._xmlDoc** %2, align 8, !dbg !201
  %16 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !202
  %17 = icmp eq %struct._xmlDoc* %16, null, !dbg !204
  br i1 %17, label %18, label %20, !dbg !205

18:                                               ; preds = %14
  %19 = load %struct._xmlDOMWrapCtxt*, %struct._xmlDOMWrapCtxt** %5, align 8, !dbg !206
  call void @xmlDOMWrapFreeCtxt(%struct._xmlDOMWrapCtxt* noundef %19), !dbg !208
  store i32 1, i32* %1, align 4, !dbg !209
  br label %66, !dbg !209

20:                                               ; preds = %14
  %21 = call %struct._xmlNode* @xmlNewNode(%struct._xmlNs* noundef null, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !210
  store %struct._xmlNode* %21, %struct._xmlNode** %3, align 8, !dbg !211
  %22 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !212
  %23 = icmp eq %struct._xmlNode* %22, null, !dbg !214
  br i1 %23, label %24, label %27, !dbg !215

24:                                               ; preds = %20
  %25 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !216
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %25), !dbg !218
  %26 = load %struct._xmlDOMWrapCtxt*, %struct._xmlDOMWrapCtxt** %5, align 8, !dbg !219
  call void @xmlDOMWrapFreeCtxt(%struct._xmlDOMWrapCtxt* noundef %26), !dbg !220
  store i32 1, i32* %1, align 4, !dbg !221
  br label %66, !dbg !221

27:                                               ; preds = %20
  %28 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !222
  %29 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !223
  %30 = call %struct._xmlNode* @xmlDocSetRootElement(%struct._xmlDoc* noundef %28, %struct._xmlNode* noundef %29), !dbg !224
  %31 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !225
  %32 = call %struct._xmlNs* @xmlNewNs(%struct._xmlNode* noundef %31, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)), !dbg !226
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %7, metadata !227, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %8, metadata !229, metadata !DIExpression()), !dbg !230
  call void @llvm.dbg.declare(metadata i32* %9, metadata !231, metadata !DIExpression()), !dbg !232
  %33 = bitcast %struct._xmlDoc** %7 to i8*, !dbg !233
  call void @klee_make_symbolic(i8* noundef %33, i64 noundef 8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)), !dbg !234
  %34 = bitcast %struct._xmlNode** %8 to i8*, !dbg !235
  call void @klee_make_symbolic(i8* noundef %34, i64 noundef 8, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0)), !dbg !236
  %35 = bitcast i32* %9 to i8*, !dbg !237
  call void @klee_make_symbolic(i8* noundef %35, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)), !dbg !238
  %36 = load %struct._xmlDoc*, %struct._xmlDoc** %7, align 8, !dbg !239
  %37 = icmp eq %struct._xmlDoc* %36, null, !dbg !241
  br i1 %37, label %38, label %46, !dbg !242

38:                                               ; preds = %27
  %39 = call %struct._xmlDoc* @xmlNewDoc(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !243
  store %struct._xmlDoc* %39, %struct._xmlDoc** %7, align 8, !dbg !245
  %40 = load %struct._xmlDoc*, %struct._xmlDoc** %7, align 8, !dbg !246
  %41 = icmp eq %struct._xmlDoc* %40, null, !dbg !248
  br i1 %41, label %42, label %45, !dbg !249

42:                                               ; preds = %38
  %43 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !250
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %43), !dbg !252
  %44 = load %struct._xmlDOMWrapCtxt*, %struct._xmlDOMWrapCtxt** %5, align 8, !dbg !253
  call void @xmlDOMWrapFreeCtxt(%struct._xmlDOMWrapCtxt* noundef %44), !dbg !254
  store i32 1, i32* %1, align 4, !dbg !255
  br label %66, !dbg !255

45:                                               ; preds = %38
  br label %46, !dbg !256

46:                                               ; preds = %45, %27
  %47 = load %struct._xmlDOMWrapCtxt*, %struct._xmlDOMWrapCtxt** %5, align 8, !dbg !257
  %48 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !258
  %49 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !259
  %50 = load %struct._xmlDoc*, %struct._xmlDoc** %7, align 8, !dbg !260
  %51 = load %struct._xmlNode*, %struct._xmlNode** %8, align 8, !dbg !261
  %52 = load i32, i32* %9, align 4, !dbg !262
  %53 = call i32 @xmlDOMWrapCloneNode(%struct._xmlDOMWrapCtxt* noundef %47, %struct._xmlDoc* noundef %48, %struct._xmlNode* noundef %49, %struct._xmlNode** noundef %4, %struct._xmlDoc* noundef %50, %struct._xmlNode* noundef %51, i32 noundef 1, i32 noundef %52), !dbg !263
  store i32 %53, i32* %6, align 4, !dbg !264
  %54 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.8, i64 0, i64 0), i32 noundef 62, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !265
  %55 = load %struct._xmlDoc*, %struct._xmlDoc** %7, align 8, !dbg !266
  %56 = icmp ne %struct._xmlDoc* %55, null, !dbg !268
  br i1 %56, label %57, label %63, !dbg !269

57:                                               ; preds = %46
  %58 = load %struct._xmlDoc*, %struct._xmlDoc** %7, align 8, !dbg !270
  %59 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !271
  %60 = icmp ne %struct._xmlDoc* %58, %59, !dbg !272
  br i1 %60, label %61, label %63, !dbg !273

61:                                               ; preds = %57
  %62 = load %struct._xmlDoc*, %struct._xmlDoc** %7, align 8, !dbg !274
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %62), !dbg !276
  br label %63, !dbg !277

63:                                               ; preds = %61, %57, %46
  %64 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !278
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %64), !dbg !279
  %65 = load %struct._xmlDOMWrapCtxt*, %struct._xmlDOMWrapCtxt** %5, align 8, !dbg !280
  call void @xmlDOMWrapFreeCtxt(%struct._xmlDOMWrapCtxt* noundef %65), !dbg !281
  store i32 0, i32* %1, align 4, !dbg !282
  br label %66, !dbg !282

66:                                               ; preds = %63, %42, %24, %18, %13
  %67 = load i32, i32* %1, align 4, !dbg !283
  ret i32 %67, !dbg !283
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @xmlCheckVersion(i32 noundef) #2

declare %struct._xmlDOMWrapCtxt* @xmlDOMWrapNewCtxt() #2

declare %struct._xmlDoc* @xmlNewDoc(i8* noundef) #2

declare void @xmlDOMWrapFreeCtxt(%struct._xmlDOMWrapCtxt* noundef) #2

declare %struct._xmlNode* @xmlNewNode(%struct._xmlNs* noundef, i8* noundef) #2

declare void @xmlFreeDoc(%struct._xmlDoc* noundef) #2

declare %struct._xmlNode* @xmlDocSetRootElement(%struct._xmlDoc* noundef, %struct._xmlNode* noundef) #2

declare %struct._xmlNs* @xmlNewNs(%struct._xmlNode* noundef, i8* noundef, i8* noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare i32 @xmlDOMWrapCloneNode(%struct._xmlDOMWrapCtxt* noundef, %struct._xmlDoc* noundef, %struct._xmlNode* noundef, %struct._xmlNode** noundef, %struct._xmlDoc* noundef, %struct._xmlNode* noundef, i32 noundef, i32 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !40, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/150_tree.c_9438_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "41dec13d58db9a3be26e4446eb6c0081")
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
!40 = !{!41, !42}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !44, line: 28, baseType: !45)
!44 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!45 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!46 = !{i32 7, !"Dwarf Version", i32 5}
!47 = !{i32 2, !"Debug Info Version", i32 3}
!48 = !{i32 1, !"wchar_size", i32 4}
!49 = !{i32 7, !"PIC Level", i32 2}
!50 = !{i32 7, !"PIE Level", i32 2}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"Ubuntu clang version 14.0.6"}
!54 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 5, type: !55, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !58)
!55 = !DISubroutineType(types: !56)
!56 = !{!57}
!57 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!58 = !{}
!59 = !DILocalVariable(name: "doc", scope: !54, file: !1, line: 6, type: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !63)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !64)
!64 = !{!65, !66, !68, !71, !123, !124, !125, !126, !127, !128, !129, !130, !150, !151, !152, !153, !154, !155, !156, !157, !158, !162, !163, !164}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !63, file: !4, line: 560, baseType: !41, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !63, file: !4, line: 561, baseType: !67, size: 32, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !63, file: !4, line: 562, baseType: !69, size: 64, offset: 128)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !63, file: !4, line: 563, baseType: !72, size: 64, offset: 192)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !74)
!74 = !{!75, !76, !77, !80, !81, !82, !83, !84, !85, !87, !100, !101, !118, !119, !120, !122}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !73, file: !4, line: 493, baseType: !41, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !73, file: !4, line: 494, baseType: !67, size: 32, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !73, file: !4, line: 495, baseType: !78, size: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
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
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !90, file: !4, line: 393, baseType: !41, size: 64, offset: 256)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !90, file: !4, line: 394, baseType: !86, size: 64, offset: 320)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !73, file: !4, line: 505, baseType: !42, size: 64, offset: 640)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !73, file: !4, line: 506, baseType: !102, size: 64, offset: 704)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !104)
!104 = !{!105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !117}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !103, file: !4, line: 434, baseType: !41, size: 64)
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
!117 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !103, file: !4, line: 445, baseType: !41, size: 64, offset: 704)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !73, file: !4, line: 507, baseType: !88, size: 64, offset: 768)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !73, file: !4, line: 508, baseType: !41, size: 64, offset: 832)
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
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !132, file: !4, line: 406, baseType: !41, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !132, file: !4, line: 407, baseType: !67, size: 32, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !132, file: !4, line: 408, baseType: !78, size: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !132, file: !4, line: 409, baseType: !72, size: 64, offset: 192)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !132, file: !4, line: 410, baseType: !72, size: 64, offset: 256)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !132, file: !4, line: 411, baseType: !86, size: 64, offset: 320)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !132, file: !4, line: 412, baseType: !72, size: 64, offset: 384)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !132, file: !4, line: 413, baseType: !72, size: 64, offset: 448)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !132, file: !4, line: 414, baseType: !86, size: 64, offset: 512)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !132, file: !4, line: 417, baseType: !41, size: 64, offset: 576)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !132, file: !4, line: 418, baseType: !41, size: 64, offset: 640)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !132, file: !4, line: 419, baseType: !41, size: 64, offset: 704)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !132, file: !4, line: 420, baseType: !41, size: 64, offset: 768)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !132, file: !4, line: 421, baseType: !78, size: 64, offset: 832)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !132, file: !4, line: 422, baseType: !78, size: 64, offset: 896)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !132, file: !4, line: 423, baseType: !41, size: 64, offset: 960)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !63, file: !4, line: 579, baseType: !131, size: 64, offset: 704)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !63, file: !4, line: 580, baseType: !93, size: 64, offset: 768)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !63, file: !4, line: 581, baseType: !78, size: 64, offset: 832)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !63, file: !4, line: 582, baseType: !78, size: 64, offset: 896)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !63, file: !4, line: 583, baseType: !41, size: 64, offset: 960)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !63, file: !4, line: 584, baseType: !41, size: 64, offset: 1024)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !63, file: !4, line: 585, baseType: !78, size: 64, offset: 1088)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !63, file: !4, line: 586, baseType: !57, size: 32, offset: 1152)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !63, file: !4, line: 588, baseType: !159, size: 64, offset: 1216)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !161, line: 24, flags: DIFlagFwdDecl)
!161 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!162 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !63, file: !4, line: 589, baseType: !41, size: 64, offset: 1280)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !63, file: !4, line: 590, baseType: !57, size: 32, offset: 1344)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !63, file: !4, line: 592, baseType: !57, size: 32, offset: 1376)
!165 = !DILocation(line: 6, column: 15, scope: !54)
!166 = !DILocalVariable(name: "node", scope: !54, file: !1, line: 7, type: !167)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !4, line: 491, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !4, line: 490, baseType: !73)
!170 = !DILocation(line: 7, column: 16, scope: !54)
!171 = !DILocalVariable(name: "cloned_node", scope: !54, file: !1, line: 7, type: !167)
!172 = !DILocation(line: 7, column: 22, scope: !54)
!173 = !DILocalVariable(name: "ctxt", scope: !54, file: !1, line: 8, type: !174)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDOMWrapCtxtPtr", file: !4, line: 602, baseType: !175)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDOMWrapCtxt", file: !4, line: 601, baseType: !177)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDOMWrapCtxt", file: !4, line: 625, size: 256, elements: !178)
!178 = !{!179, !180, !181, !182}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !177, file: !4, line: 626, baseType: !41, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !177, file: !4, line: 631, baseType: !57, size: 32, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "namespaceMap", scope: !177, file: !4, line: 635, baseType: !41, size: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "getNsForNodeFunc", scope: !177, file: !4, line: 640, baseType: !183, size: 64, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDOMWrapAcquireNsFunction", file: !4, line: 615, baseType: !184)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{!187, !174, !167, !78, !78}
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsPtr", file: !4, line: 387, baseType: !88)
!188 = !DILocation(line: 8, column: 23, scope: !54)
!189 = !DILocalVariable(name: "ret", scope: !54, file: !1, line: 9, type: !57)
!190 = !DILocation(line: 9, column: 9, scope: !54)
!191 = !DILocation(line: 12, column: 5, scope: !54)
!192 = !DILocation(line: 15, column: 12, scope: !54)
!193 = !DILocation(line: 15, column: 10, scope: !54)
!194 = !DILocation(line: 16, column: 9, scope: !195)
!195 = distinct !DILexicalBlock(scope: !54, file: !1, line: 16, column: 9)
!196 = !DILocation(line: 16, column: 14, scope: !195)
!197 = !DILocation(line: 16, column: 9, scope: !54)
!198 = !DILocation(line: 17, column: 9, scope: !199)
!199 = distinct !DILexicalBlock(scope: !195, file: !1, line: 16, column: 23)
!200 = !DILocation(line: 21, column: 11, scope: !54)
!201 = !DILocation(line: 21, column: 9, scope: !54)
!202 = !DILocation(line: 22, column: 9, scope: !203)
!203 = distinct !DILexicalBlock(scope: !54, file: !1, line: 22, column: 9)
!204 = !DILocation(line: 22, column: 13, scope: !203)
!205 = !DILocation(line: 22, column: 9, scope: !54)
!206 = !DILocation(line: 23, column: 28, scope: !207)
!207 = distinct !DILexicalBlock(scope: !203, file: !1, line: 22, column: 22)
!208 = !DILocation(line: 23, column: 9, scope: !207)
!209 = !DILocation(line: 24, column: 9, scope: !207)
!210 = !DILocation(line: 26, column: 12, scope: !54)
!211 = !DILocation(line: 26, column: 10, scope: !54)
!212 = !DILocation(line: 27, column: 9, scope: !213)
!213 = distinct !DILexicalBlock(scope: !54, file: !1, line: 27, column: 9)
!214 = !DILocation(line: 27, column: 14, scope: !213)
!215 = !DILocation(line: 27, column: 9, scope: !54)
!216 = !DILocation(line: 28, column: 20, scope: !217)
!217 = distinct !DILexicalBlock(scope: !213, file: !1, line: 27, column: 23)
!218 = !DILocation(line: 28, column: 9, scope: !217)
!219 = !DILocation(line: 29, column: 28, scope: !217)
!220 = !DILocation(line: 29, column: 9, scope: !217)
!221 = !DILocation(line: 30, column: 9, scope: !217)
!222 = !DILocation(line: 32, column: 26, scope: !54)
!223 = !DILocation(line: 32, column: 31, scope: !54)
!224 = !DILocation(line: 32, column: 5, scope: !54)
!225 = !DILocation(line: 35, column: 14, scope: !54)
!226 = !DILocation(line: 35, column: 5, scope: !54)
!227 = !DILocalVariable(name: "dest_doc", scope: !54, file: !1, line: 38, type: !60)
!228 = !DILocation(line: 38, column: 15, scope: !54)
!229 = !DILocalVariable(name: "dest_parent", scope: !54, file: !1, line: 39, type: !167)
!230 = !DILocation(line: 39, column: 16, scope: !54)
!231 = !DILocalVariable(name: "options", scope: !54, file: !1, line: 40, type: !57)
!232 = !DILocation(line: 40, column: 9, scope: !54)
!233 = !DILocation(line: 43, column: 24, scope: !54)
!234 = !DILocation(line: 43, column: 5, scope: !54)
!235 = !DILocation(line: 44, column: 24, scope: !54)
!236 = !DILocation(line: 44, column: 5, scope: !54)
!237 = !DILocation(line: 45, column: 24, scope: !54)
!238 = !DILocation(line: 45, column: 5, scope: !54)
!239 = !DILocation(line: 48, column: 9, scope: !240)
!240 = distinct !DILexicalBlock(scope: !54, file: !1, line: 48, column: 9)
!241 = !DILocation(line: 48, column: 18, scope: !240)
!242 = !DILocation(line: 48, column: 9, scope: !54)
!243 = !DILocation(line: 49, column: 20, scope: !244)
!244 = distinct !DILexicalBlock(scope: !240, file: !1, line: 48, column: 27)
!245 = !DILocation(line: 49, column: 18, scope: !244)
!246 = !DILocation(line: 50, column: 13, scope: !247)
!247 = distinct !DILexicalBlock(scope: !244, file: !1, line: 50, column: 13)
!248 = !DILocation(line: 50, column: 22, scope: !247)
!249 = !DILocation(line: 50, column: 13, scope: !244)
!250 = !DILocation(line: 51, column: 24, scope: !251)
!251 = distinct !DILexicalBlock(scope: !247, file: !1, line: 50, column: 31)
!252 = !DILocation(line: 51, column: 13, scope: !251)
!253 = !DILocation(line: 52, column: 32, scope: !251)
!254 = !DILocation(line: 52, column: 13, scope: !251)
!255 = !DILocation(line: 53, column: 13, scope: !251)
!256 = !DILocation(line: 55, column: 5, scope: !244)
!257 = !DILocation(line: 58, column: 31, scope: !54)
!258 = !DILocation(line: 58, column: 37, scope: !54)
!259 = !DILocation(line: 58, column: 42, scope: !54)
!260 = !DILocation(line: 58, column: 62, scope: !54)
!261 = !DILocation(line: 58, column: 72, scope: !54)
!262 = !DILocation(line: 58, column: 88, scope: !54)
!263 = !DILocation(line: 58, column: 11, scope: !54)
!264 = !DILocation(line: 58, column: 9, scope: !54)
!265 = !DILocation(line: 62, column: 5, scope: !54)
!266 = !DILocation(line: 65, column: 9, scope: !267)
!267 = distinct !DILexicalBlock(scope: !54, file: !1, line: 65, column: 9)
!268 = !DILocation(line: 65, column: 18, scope: !267)
!269 = !DILocation(line: 65, column: 26, scope: !267)
!270 = !DILocation(line: 65, column: 29, scope: !267)
!271 = !DILocation(line: 65, column: 41, scope: !267)
!272 = !DILocation(line: 65, column: 38, scope: !267)
!273 = !DILocation(line: 65, column: 9, scope: !54)
!274 = !DILocation(line: 66, column: 20, scope: !275)
!275 = distinct !DILexicalBlock(scope: !267, file: !1, line: 65, column: 46)
!276 = !DILocation(line: 66, column: 9, scope: !275)
!277 = !DILocation(line: 67, column: 5, scope: !275)
!278 = !DILocation(line: 68, column: 16, scope: !54)
!279 = !DILocation(line: 68, column: 5, scope: !54)
!280 = !DILocation(line: 69, column: 24, scope: !54)
!281 = !DILocation(line: 69, column: 5, scope: !54)
!282 = !DILocation(line: 71, column: 5, scope: !54)
!283 = !DILocation(line: 72, column: 1, scope: !54)

; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/011_entities.c_963_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/011_entities.c_963_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
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
@.str.2 = private unnamed_addr constant [4 x i8] c"ent\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"content\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"name_buf\00", align 1
@xmlFree = external global void (i8*)*, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/011_entities.c_963_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !63 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlDoc*, align 8
  %3 = alloca %struct._xmlNode*, align 8
  %4 = alloca %struct._xmlEntity*, align 8
  %5 = alloca %struct._xmlEntity*, align 8
  %6 = alloca [32 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %2, metadata !68, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %3, metadata !175, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.declare(metadata %struct._xmlEntity** %4, metadata !180, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.declare(metadata %struct._xmlEntity** %5, metadata !208, metadata !DIExpression()), !dbg !209
  %7 = call %struct._xmlDoc* @xmlNewDoc(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !210
  store %struct._xmlDoc* %7, %struct._xmlDoc** %2, align 8, !dbg !211
  %8 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !212
  %9 = icmp eq %struct._xmlDoc* %8, null, !dbg !214
  br i1 %9, label %10, label %11, !dbg !215

10:                                               ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !216
  br label %57, !dbg !216

11:                                               ; preds = %0
  %12 = call %struct._xmlNode* @xmlNewNode(%struct._xmlNs* noundef null, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !217
  store %struct._xmlNode* %12, %struct._xmlNode** %3, align 8, !dbg !218
  %13 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !219
  %14 = icmp eq %struct._xmlNode* %13, null, !dbg !221
  br i1 %14, label %15, label %17, !dbg !222

15:                                               ; preds = %11
  %16 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !223
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %16), !dbg !225
  store i32 1, i32* %1, align 4, !dbg !226
  br label %57, !dbg !226

17:                                               ; preds = %11
  %18 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !227
  %19 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !228
  %20 = call %struct._xmlNode* @xmlDocSetRootElement(%struct._xmlDoc* noundef %18, %struct._xmlNode* noundef %19), !dbg !229
  %21 = call %struct._xmlEntity* @xmlNewEntity(%struct._xmlDoc* noundef null, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1, i8* noundef null, i8* noundef null, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)), !dbg !230
  store %struct._xmlEntity* %21, %struct._xmlEntity** %4, align 8, !dbg !231
  %22 = load %struct._xmlEntity*, %struct._xmlEntity** %4, align 8, !dbg !232
  %23 = icmp eq %struct._xmlEntity* %22, null, !dbg !234
  br i1 %23, label %24, label %26, !dbg !235

24:                                               ; preds = %17
  %25 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !236
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %25), !dbg !238
  store i32 1, i32* %1, align 4, !dbg !239
  br label %57, !dbg !239

26:                                               ; preds = %17
  call void @llvm.dbg.declare(metadata [32 x i8]* %6, metadata !240, metadata !DIExpression()), !dbg !244
  %27 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0, !dbg !245
  call void @klee_make_symbolic(i8* noundef %27, i64 noundef 32, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)), !dbg !246
  %28 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 31, !dbg !247
  store i8 0, i8* %28, align 1, !dbg !248
  %29 = load %struct._xmlEntity*, %struct._xmlEntity** %4, align 8, !dbg !249
  %30 = getelementptr inbounds %struct._xmlEntity, %struct._xmlEntity* %29, i32 0, i32 2, !dbg !251
  %31 = load i8*, i8** %30, align 8, !dbg !251
  %32 = icmp ne i8* %31, null, !dbg !249
  br i1 %32, label %33, label %38, !dbg !252

33:                                               ; preds = %26
  %34 = load void (i8*)*, void (i8*)** @xmlFree, align 8, !dbg !253
  %35 = load %struct._xmlEntity*, %struct._xmlEntity** %4, align 8, !dbg !254
  %36 = getelementptr inbounds %struct._xmlEntity, %struct._xmlEntity* %35, i32 0, i32 2, !dbg !255
  %37 = load i8*, i8** %36, align 8, !dbg !255
  call void %34(i8* noundef %37), !dbg !253
  br label %38, !dbg !253

38:                                               ; preds = %33, %26
  %39 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0, !dbg !256
  %40 = call i8* @xmlStrdup(i8* noundef %39), !dbg !257
  %41 = load %struct._xmlEntity*, %struct._xmlEntity** %4, align 8, !dbg !258
  %42 = getelementptr inbounds %struct._xmlEntity, %struct._xmlEntity* %41, i32 0, i32 2, !dbg !259
  store i8* %40, i8** %42, align 8, !dbg !260
  %43 = load %struct._xmlEntity*, %struct._xmlEntity** %4, align 8, !dbg !261
  %44 = call i32 (i8*, %struct._xmlEntity*, ...) bitcast (i32 (...)* @xmlCopyEntity to i32 (i8*, %struct._xmlEntity*, ...)*)(i8* noundef null, %struct._xmlEntity* noundef %43), !dbg !262
  %45 = sext i32 %44 to i64, !dbg !262
  %46 = inttoptr i64 %45 to %struct._xmlEntity*, !dbg !262
  store %struct._xmlEntity* %46, %struct._xmlEntity** %5, align 8, !dbg !263
  %47 = load %struct._xmlEntity*, %struct._xmlEntity** %5, align 8, !dbg !264
  %48 = icmp ne %struct._xmlEntity* %47, null, !dbg !266
  br i1 %48, label %49, label %53, !dbg !267

49:                                               ; preds = %38
  %50 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.6, i64 0, i64 0), i32 noundef 38, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !268
  %51 = load %struct._xmlEntity*, %struct._xmlEntity** %5, align 8, !dbg !270
  %52 = call i32 (%struct._xmlEntity*, ...) bitcast (i32 (...)* @xmlFreeEntity to i32 (%struct._xmlEntity*, ...)*)(%struct._xmlEntity* noundef %51), !dbg !271
  br label %53, !dbg !272

53:                                               ; preds = %49, %38
  %54 = load %struct._xmlEntity*, %struct._xmlEntity** %4, align 8, !dbg !273
  %55 = call i32 (%struct._xmlEntity*, ...) bitcast (i32 (...)* @xmlFreeEntity to i32 (%struct._xmlEntity*, ...)*)(%struct._xmlEntity* noundef %54), !dbg !274
  %56 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !275
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %56), !dbg !276
  store i32 0, i32* %1, align 4, !dbg !277
  br label %57, !dbg !277

57:                                               ; preds = %53, %24, %15, %10
  %58 = load i32, i32* %1, align 4, !dbg !278
  ret i32 %58, !dbg !278
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct._xmlDoc* @xmlNewDoc(i8* noundef) #2

declare %struct._xmlNode* @xmlNewNode(%struct._xmlNs* noundef, i8* noundef) #2

declare void @xmlFreeDoc(%struct._xmlDoc* noundef) #2

declare %struct._xmlNode* @xmlDocSetRootElement(%struct._xmlDoc* noundef, %struct._xmlNode* noundef) #2

declare %struct._xmlEntity* @xmlNewEntity(%struct._xmlDoc* noundef, i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare i8* @xmlStrdup(i8* noundef) #2

declare i32 @xmlCopyEntity(...) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare i32 @xmlFreeEntity(...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !49, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/011_entities.c_963_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "d3b321dda418a08127adb34cf8f7614d")
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
!49 = !{!50, !54}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !52, line: 28, baseType: !53)
!52 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!53 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
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
!73 = !{!74, !75, !77, !80, !132, !133, !134, !135, !136, !137, !138, !139, !159, !160, !161, !162, !163, !164, !165, !166, !167, !171, !172, !173}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !72, file: !4, line: 560, baseType: !54, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !72, file: !4, line: 561, baseType: !76, size: 32, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !72, file: !4, line: 562, baseType: !78, size: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !72, file: !4, line: 563, baseType: !81, size: 64, offset: 192)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !83)
!83 = !{!84, !85, !86, !89, !90, !91, !92, !93, !94, !96, !109, !110, !127, !128, !129, !131}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !82, file: !4, line: 493, baseType: !54, size: 64)
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
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
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
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !99, file: !4, line: 393, baseType: !54, size: 64, offset: 256)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !99, file: !4, line: 394, baseType: !95, size: 64, offset: 320)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !82, file: !4, line: 505, baseType: !50, size: 64, offset: 640)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !82, file: !4, line: 506, baseType: !111, size: 64, offset: 704)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !113)
!113 = !{!114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !126}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !112, file: !4, line: 434, baseType: !54, size: 64)
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
!126 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !112, file: !4, line: 445, baseType: !54, size: 64, offset: 704)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !82, file: !4, line: 507, baseType: !97, size: 64, offset: 768)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !82, file: !4, line: 508, baseType: !54, size: 64, offset: 832)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !82, file: !4, line: 509, baseType: !130, size: 16, offset: 896)
!130 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !82, file: !4, line: 510, baseType: !130, size: 16, offset: 912)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !72, file: !4, line: 564, baseType: !81, size: 64, offset: 256)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !72, file: !4, line: 565, baseType: !81, size: 64, offset: 320)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !72, file: !4, line: 566, baseType: !81, size: 64, offset: 384)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !72, file: !4, line: 567, baseType: !81, size: 64, offset: 448)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !72, file: !4, line: 568, baseType: !95, size: 64, offset: 512)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !72, file: !4, line: 571, baseType: !66, size: 32, offset: 576)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !72, file: !4, line: 572, baseType: !66, size: 32, offset: 608)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !72, file: !4, line: 578, baseType: !140, size: 64, offset: 640)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !142)
!142 = !{!143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !141, file: !4, line: 406, baseType: !54, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !141, file: !4, line: 407, baseType: !76, size: 32, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !141, file: !4, line: 408, baseType: !87, size: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !141, file: !4, line: 409, baseType: !81, size: 64, offset: 192)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !141, file: !4, line: 410, baseType: !81, size: 64, offset: 256)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !141, file: !4, line: 411, baseType: !95, size: 64, offset: 320)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !141, file: !4, line: 412, baseType: !81, size: 64, offset: 384)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !141, file: !4, line: 413, baseType: !81, size: 64, offset: 448)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !141, file: !4, line: 414, baseType: !95, size: 64, offset: 512)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !141, file: !4, line: 417, baseType: !54, size: 64, offset: 576)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !141, file: !4, line: 418, baseType: !54, size: 64, offset: 640)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !141, file: !4, line: 419, baseType: !54, size: 64, offset: 704)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !141, file: !4, line: 420, baseType: !54, size: 64, offset: 768)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !141, file: !4, line: 421, baseType: !87, size: 64, offset: 832)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !141, file: !4, line: 422, baseType: !87, size: 64, offset: 896)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !141, file: !4, line: 423, baseType: !54, size: 64, offset: 960)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !72, file: !4, line: 579, baseType: !140, size: 64, offset: 704)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !72, file: !4, line: 580, baseType: !102, size: 64, offset: 768)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !72, file: !4, line: 581, baseType: !87, size: 64, offset: 832)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !72, file: !4, line: 582, baseType: !87, size: 64, offset: 896)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !72, file: !4, line: 583, baseType: !54, size: 64, offset: 960)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !72, file: !4, line: 584, baseType: !54, size: 64, offset: 1024)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !72, file: !4, line: 585, baseType: !87, size: 64, offset: 1088)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !72, file: !4, line: 586, baseType: !66, size: 32, offset: 1152)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !72, file: !4, line: 588, baseType: !168, size: 64, offset: 1216)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !170, line: 24, flags: DIFlagFwdDecl)
!170 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!171 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !72, file: !4, line: 589, baseType: !54, size: 64, offset: 1280)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !72, file: !4, line: 590, baseType: !66, size: 32, offset: 1344)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !72, file: !4, line: 592, baseType: !66, size: 32, offset: 1376)
!174 = !DILocation(line: 8, column: 15, scope: !63)
!175 = !DILocalVariable(name: "root", scope: !63, file: !1, line: 9, type: !176)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !4, line: 491, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !4, line: 490, baseType: !82)
!179 = !DILocation(line: 9, column: 16, scope: !63)
!180 = !DILocalVariable(name: "ent", scope: !63, file: !1, line: 10, type: !181)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEntityPtr", file: !4, line: 49, baseType: !182)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEntity", file: !4, line: 48, baseType: !184)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlEntity", file: !41, line: 38, size: 1088, elements: !185)
!185 = !{!186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !200, !201, !202, !204, !205, !206}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !184, file: !41, line: 39, baseType: !54, size: 64)
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
!197 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !184, file: !41, line: 51, baseType: !66, size: 32, offset: 704)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "etype", scope: !184, file: !41, line: 52, baseType: !199, size: 32, offset: 736)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEntityType", file: !41, line: 31, baseType: !40)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !184, file: !41, line: 53, baseType: !87, size: 64, offset: 768)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !184, file: !41, line: 54, baseType: !87, size: 64, offset: 832)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "nexte", scope: !184, file: !41, line: 56, baseType: !203, size: 64, offset: 896)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "URI", scope: !184, file: !41, line: 57, baseType: !87, size: 64, offset: 960)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !184, file: !41, line: 58, baseType: !66, size: 32, offset: 1024)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "checked", scope: !184, file: !41, line: 59, baseType: !66, size: 32, offset: 1056)
!207 = !DILocation(line: 10, column: 18, scope: !63)
!208 = !DILocalVariable(name: "copy", scope: !63, file: !1, line: 11, type: !181)
!209 = !DILocation(line: 11, column: 18, scope: !63)
!210 = !DILocation(line: 13, column: 11, scope: !63)
!211 = !DILocation(line: 13, column: 9, scope: !63)
!212 = !DILocation(line: 14, column: 9, scope: !213)
!213 = distinct !DILexicalBlock(scope: !63, file: !1, line: 14, column: 9)
!214 = !DILocation(line: 14, column: 13, scope: !213)
!215 = !DILocation(line: 14, column: 9, scope: !63)
!216 = !DILocation(line: 14, column: 22, scope: !213)
!217 = !DILocation(line: 16, column: 12, scope: !63)
!218 = !DILocation(line: 16, column: 10, scope: !63)
!219 = !DILocation(line: 17, column: 9, scope: !220)
!220 = distinct !DILexicalBlock(scope: !63, file: !1, line: 17, column: 9)
!221 = !DILocation(line: 17, column: 14, scope: !220)
!222 = !DILocation(line: 17, column: 9, scope: !63)
!223 = !DILocation(line: 18, column: 20, scope: !224)
!224 = distinct !DILexicalBlock(scope: !220, file: !1, line: 17, column: 23)
!225 = !DILocation(line: 18, column: 9, scope: !224)
!226 = !DILocation(line: 19, column: 9, scope: !224)
!227 = !DILocation(line: 21, column: 26, scope: !63)
!228 = !DILocation(line: 21, column: 31, scope: !63)
!229 = !DILocation(line: 21, column: 5, scope: !63)
!230 = !DILocation(line: 23, column: 11, scope: !63)
!231 = !DILocation(line: 23, column: 9, scope: !63)
!232 = !DILocation(line: 25, column: 9, scope: !233)
!233 = distinct !DILexicalBlock(scope: !63, file: !1, line: 25, column: 9)
!234 = !DILocation(line: 25, column: 13, scope: !233)
!235 = !DILocation(line: 25, column: 9, scope: !63)
!236 = !DILocation(line: 26, column: 20, scope: !237)
!237 = distinct !DILexicalBlock(scope: !233, file: !1, line: 25, column: 22)
!238 = !DILocation(line: 26, column: 9, scope: !237)
!239 = !DILocation(line: 27, column: 9, scope: !237)
!240 = !DILocalVariable(name: "name_buf", scope: !63, file: !1, line: 30, type: !241)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 256, elements: !242)
!242 = !{!243}
!243 = !DISubrange(count: 32)
!244 = !DILocation(line: 30, column: 10, scope: !63)
!245 = !DILocation(line: 31, column: 24, scope: !63)
!246 = !DILocation(line: 31, column: 5, scope: !63)
!247 = !DILocation(line: 32, column: 5, scope: !63)
!248 = !DILocation(line: 32, column: 34, scope: !63)
!249 = !DILocation(line: 33, column: 9, scope: !250)
!250 = distinct !DILexicalBlock(scope: !63, file: !1, line: 33, column: 9)
!251 = !DILocation(line: 33, column: 14, scope: !250)
!252 = !DILocation(line: 33, column: 9, scope: !63)
!253 = !DILocation(line: 33, column: 20, scope: !250)
!254 = !DILocation(line: 33, column: 38, scope: !250)
!255 = !DILocation(line: 33, column: 43, scope: !250)
!256 = !DILocation(line: 34, column: 36, scope: !63)
!257 = !DILocation(line: 34, column: 17, scope: !63)
!258 = !DILocation(line: 34, column: 5, scope: !63)
!259 = !DILocation(line: 34, column: 10, scope: !63)
!260 = !DILocation(line: 34, column: 15, scope: !63)
!261 = !DILocation(line: 36, column: 32, scope: !63)
!262 = !DILocation(line: 36, column: 12, scope: !63)
!263 = !DILocation(line: 36, column: 10, scope: !63)
!264 = !DILocation(line: 37, column: 9, scope: !265)
!265 = distinct !DILexicalBlock(scope: !63, file: !1, line: 37, column: 9)
!266 = !DILocation(line: 37, column: 14, scope: !265)
!267 = !DILocation(line: 37, column: 9, scope: !63)
!268 = !DILocation(line: 38, column: 9, scope: !269)
!269 = distinct !DILexicalBlock(scope: !265, file: !1, line: 37, column: 23)
!270 = !DILocation(line: 39, column: 23, scope: !269)
!271 = !DILocation(line: 39, column: 9, scope: !269)
!272 = !DILocation(line: 40, column: 5, scope: !269)
!273 = !DILocation(line: 42, column: 19, scope: !63)
!274 = !DILocation(line: 42, column: 5, scope: !63)
!275 = !DILocation(line: 43, column: 16, scope: !63)
!276 = !DILocation(line: 43, column: 5, scope: !63)
!277 = !DILocation(line: 44, column: 5, scope: !63)
!278 = !DILocation(line: 45, column: 1, scope: !63)

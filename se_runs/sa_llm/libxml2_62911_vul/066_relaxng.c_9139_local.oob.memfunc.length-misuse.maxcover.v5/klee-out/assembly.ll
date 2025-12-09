; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/066_relaxng.c_9139_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/066_relaxng.c_9139_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRelaxNGParserCtxt = type opaque
%struct._xmlRelaxNG = type opaque
%struct._xmlRelaxNGValidCtxt = type opaque
%struct._xmlDoc = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, i32, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlNs*, i8*, i8*, i8*, i8*, i8*, i32, %struct._xmlDict*, i8*, i32, i32 }
%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i8*, i16, i16 }
%struct._xmlAttr = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlAttr*, %struct._xmlAttr*, %struct._xmlDoc*, %struct._xmlNs*, i32, i8* }
%struct._xmlDtd = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._xmlNs = type { %struct._xmlNs*, i32, i8*, i8*, i8*, %struct._xmlDoc* }
%struct._xmlDict = type opaque

@.str = private unnamed_addr constant [10 x i8] c"dummy.rng\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"<root/>\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"noname.xml\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/066_relaxng.c_9139_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !50 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlRelaxNGParserCtxt*, align 8
  %3 = alloca %struct._xmlRelaxNG*, align 8
  %4 = alloca %struct._xmlRelaxNGValidCtxt*, align 8
  %5 = alloca %struct._xmlDoc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGParserCtxt** %2, metadata !55, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNG** %3, metadata !62, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidCtxt** %4, metadata !68, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %5, metadata !74, metadata !DIExpression()), !dbg !184
  call void @xmlInitParser(), !dbg !185
  %8 = call %struct._xmlRelaxNGParserCtxt* @xmlRelaxNGNewParserCtxt(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)), !dbg !186
  store %struct._xmlRelaxNGParserCtxt* %8, %struct._xmlRelaxNGParserCtxt** %2, align 8, !dbg !187
  %9 = load %struct._xmlRelaxNGParserCtxt*, %struct._xmlRelaxNGParserCtxt** %2, align 8, !dbg !188
  %10 = icmp eq %struct._xmlRelaxNGParserCtxt* %9, null, !dbg !190
  br i1 %10, label %11, label %12, !dbg !191

11:                                               ; preds = %0
  call void @xmlCleanupParser(), !dbg !192
  store i32 0, i32* %1, align 4, !dbg !194
  br label %48, !dbg !194

12:                                               ; preds = %0
  %13 = load %struct._xmlRelaxNGParserCtxt*, %struct._xmlRelaxNGParserCtxt** %2, align 8, !dbg !195
  %14 = call %struct._xmlRelaxNG* @xmlRelaxNGParse(%struct._xmlRelaxNGParserCtxt* noundef %13), !dbg !196
  store %struct._xmlRelaxNG* %14, %struct._xmlRelaxNG** %3, align 8, !dbg !197
  %15 = load %struct._xmlRelaxNG*, %struct._xmlRelaxNG** %3, align 8, !dbg !198
  %16 = icmp eq %struct._xmlRelaxNG* %15, null, !dbg !200
  br i1 %16, label %17, label %19, !dbg !201

17:                                               ; preds = %12
  %18 = load %struct._xmlRelaxNGParserCtxt*, %struct._xmlRelaxNGParserCtxt** %2, align 8, !dbg !202
  call void @xmlRelaxNGFreeParserCtxt(%struct._xmlRelaxNGParserCtxt* noundef %18), !dbg !204
  call void @xmlCleanupParser(), !dbg !205
  store i32 0, i32* %1, align 4, !dbg !206
  br label %48, !dbg !206

19:                                               ; preds = %12
  %20 = load %struct._xmlRelaxNG*, %struct._xmlRelaxNG** %3, align 8, !dbg !207
  %21 = call %struct._xmlRelaxNGValidCtxt* @xmlRelaxNGNewValidCtxt(%struct._xmlRelaxNG* noundef %20), !dbg !208
  store %struct._xmlRelaxNGValidCtxt* %21, %struct._xmlRelaxNGValidCtxt** %4, align 8, !dbg !209
  %22 = load %struct._xmlRelaxNGValidCtxt*, %struct._xmlRelaxNGValidCtxt** %4, align 8, !dbg !210
  %23 = icmp eq %struct._xmlRelaxNGValidCtxt* %22, null, !dbg !212
  br i1 %23, label %24, label %27, !dbg !213

24:                                               ; preds = %19
  %25 = load %struct._xmlRelaxNG*, %struct._xmlRelaxNG** %3, align 8, !dbg !214
  call void @xmlRelaxNGFree(%struct._xmlRelaxNG* noundef %25), !dbg !216
  %26 = load %struct._xmlRelaxNGParserCtxt*, %struct._xmlRelaxNGParserCtxt** %2, align 8, !dbg !217
  call void @xmlRelaxNGFreeParserCtxt(%struct._xmlRelaxNGParserCtxt* noundef %26), !dbg !218
  call void @xmlCleanupParser(), !dbg !219
  store i32 0, i32* %1, align 4, !dbg !220
  br label %48, !dbg !220

27:                                               ; preds = %19
  call void @llvm.dbg.declare(metadata i8** %6, metadata !221, metadata !DIExpression()), !dbg !224
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8, !dbg !224
  %28 = load i8*, i8** %6, align 8, !dbg !225
  %29 = load i8*, i8** %6, align 8, !dbg !226
  %30 = call i64 @strlen(i8* noundef %29), !dbg !227
  %31 = trunc i64 %30 to i32, !dbg !227
  %32 = call %struct._xmlDoc* @xmlReadMemory(i8* noundef %28, i32 noundef %31, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* noundef null, i32 noundef 0), !dbg !228
  store %struct._xmlDoc* %32, %struct._xmlDoc** %5, align 8, !dbg !229
  %33 = load %struct._xmlDoc*, %struct._xmlDoc** %5, align 8, !dbg !230
  %34 = icmp eq %struct._xmlDoc* %33, null, !dbg !232
  br i1 %34, label %35, label %39, !dbg !233

35:                                               ; preds = %27
  %36 = load %struct._xmlRelaxNGValidCtxt*, %struct._xmlRelaxNGValidCtxt** %4, align 8, !dbg !234
  call void @xmlRelaxNGFreeValidCtxt(%struct._xmlRelaxNGValidCtxt* noundef %36), !dbg !236
  %37 = load %struct._xmlRelaxNG*, %struct._xmlRelaxNG** %3, align 8, !dbg !237
  call void @xmlRelaxNGFree(%struct._xmlRelaxNG* noundef %37), !dbg !238
  %38 = load %struct._xmlRelaxNGParserCtxt*, %struct._xmlRelaxNGParserCtxt** %2, align 8, !dbg !239
  call void @xmlRelaxNGFreeParserCtxt(%struct._xmlRelaxNGParserCtxt* noundef %38), !dbg !240
  call void @xmlCleanupParser(), !dbg !241
  store i32 0, i32* %1, align 4, !dbg !242
  br label %48, !dbg !242

39:                                               ; preds = %27
  %40 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.4, i64 0, i64 0), i32 noundef 57, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !243
  call void @llvm.dbg.declare(metadata i32* %7, metadata !244, metadata !DIExpression()), !dbg !245
  %41 = load %struct._xmlRelaxNGValidCtxt*, %struct._xmlRelaxNGValidCtxt** %4, align 8, !dbg !246
  %42 = load %struct._xmlDoc*, %struct._xmlDoc** %5, align 8, !dbg !247
  %43 = call i32 @xmlRelaxNGValidateDoc(%struct._xmlRelaxNGValidCtxt* noundef %41, %struct._xmlDoc* noundef %42), !dbg !248
  store i32 %43, i32* %7, align 4, !dbg !245
  %44 = load %struct._xmlDoc*, %struct._xmlDoc** %5, align 8, !dbg !249
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %44), !dbg !250
  %45 = load %struct._xmlRelaxNGValidCtxt*, %struct._xmlRelaxNGValidCtxt** %4, align 8, !dbg !251
  call void @xmlRelaxNGFreeValidCtxt(%struct._xmlRelaxNGValidCtxt* noundef %45), !dbg !252
  %46 = load %struct._xmlRelaxNG*, %struct._xmlRelaxNG** %3, align 8, !dbg !253
  call void @xmlRelaxNGFree(%struct._xmlRelaxNG* noundef %46), !dbg !254
  %47 = load %struct._xmlRelaxNGParserCtxt*, %struct._xmlRelaxNGParserCtxt** %2, align 8, !dbg !255
  call void @xmlRelaxNGFreeParserCtxt(%struct._xmlRelaxNGParserCtxt* noundef %47), !dbg !256
  call void @xmlCleanupParser(), !dbg !257
  store i32 0, i32* %1, align 4, !dbg !258
  br label %48, !dbg !258

48:                                               ; preds = %39, %35, %24, %17, %11
  %49 = load i32, i32* %1, align 4, !dbg !259
  ret i32 %49, !dbg !259
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @xmlInitParser() #2

declare %struct._xmlRelaxNGParserCtxt* @xmlRelaxNGNewParserCtxt(i8* noundef) #2

declare void @xmlCleanupParser() #2

declare %struct._xmlRelaxNG* @xmlRelaxNGParse(%struct._xmlRelaxNGParserCtxt* noundef) #2

declare void @xmlRelaxNGFreeParserCtxt(%struct._xmlRelaxNGParserCtxt* noundef) #2

declare %struct._xmlRelaxNGValidCtxt* @xmlRelaxNGNewValidCtxt(%struct._xmlRelaxNG* noundef) #2

declare void @xmlRelaxNGFree(%struct._xmlRelaxNG* noundef) #2

declare %struct._xmlDoc* @xmlReadMemory(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef) #2

declare i64 @strlen(i8* noundef) #2

declare void @xmlRelaxNGFreeValidCtxt(%struct._xmlRelaxNGValidCtxt* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare i32 @xmlRelaxNGValidateDoc(%struct._xmlRelaxNGValidCtxt* noundef, %struct._xmlDoc* noundef) #2

declare void @xmlFreeDoc(%struct._xmlDoc* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !40, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/066_relaxng.c_9139_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "71fc44ea7edfa3b27e22f7370fd96be0")
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
!40 = !{!41}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!42 = !{i32 7, !"Dwarf Version", i32 5}
!43 = !{i32 2, !"Debug Info Version", i32 3}
!44 = !{i32 1, !"wchar_size", i32 4}
!45 = !{i32 7, !"PIC Level", i32 2}
!46 = !{i32 7, !"PIE Level", i32 2}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"Ubuntu clang version 14.0.6"}
!50 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 5, type: !51, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !54)
!51 = !DISubroutineType(types: !52)
!52 = !{!53}
!53 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!54 = !{}
!55 = !DILocalVariable(name: "rng_parser_ctxt", scope: !50, file: !1, line: 6, type: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGParserCtxtPtr", file: !57, line: 55, baseType: !58)
!57 = !DIFile(filename: "/usr/include/libxml2/libxml/relaxng.h", directory: "", checksumkind: CSK_MD5, checksum: "348c151f5b45a3543862c0e280f9fbba")
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGParserCtxt", file: !57, line: 54, baseType: !60)
!60 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRelaxNGParserCtxt", file: !57, line: 54, flags: DIFlagFwdDecl)
!61 = !DILocation(line: 6, column: 29, scope: !50)
!62 = !DILocalVariable(name: "rng_schema", scope: !50, file: !1, line: 7, type: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGPtr", file: !57, line: 24, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNG", file: !57, line: 23, baseType: !66)
!66 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRelaxNG", file: !57, line: 23, flags: DIFlagFwdDecl)
!67 = !DILocation(line: 7, column: 19, scope: !50)
!68 = !DILocalVariable(name: "valid_ctxt", scope: !50, file: !1, line: 8, type: !69)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGValidCtxtPtr", file: !57, line: 58, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGValidCtxt", file: !57, line: 57, baseType: !72)
!72 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRelaxNGValidCtxt", file: !57, line: 57, flags: DIFlagFwdDecl)
!73 = !DILocation(line: 8, column: 28, scope: !50)
!74 = !DILocalVariable(name: "doc", scope: !50, file: !1, line: 9, type: !75)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !76)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !78)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !79)
!79 = !{!80, !81, !83, !86, !142, !143, !144, !145, !146, !147, !148, !149, !169, !170, !171, !172, !173, !174, !175, !176, !177, !181, !182, !183}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !78, file: !4, line: 560, baseType: !41, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !78, file: !4, line: 561, baseType: !82, size: 32, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !78, file: !4, line: 562, baseType: !84, size: 64, offset: 128)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !78, file: !4, line: 563, baseType: !87, size: 64, offset: 192)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !89)
!89 = !{!90, !91, !92, !98, !99, !100, !101, !102, !103, !105, !118, !120, !137, !138, !139, !141}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !88, file: !4, line: 493, baseType: !41, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !88, file: !4, line: 494, baseType: !82, size: 32, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !88, file: !4, line: 495, baseType: !93, size: 64, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !96, line: 28, baseType: !97)
!96 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!97 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !88, file: !4, line: 496, baseType: !87, size: 64, offset: 192)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !88, file: !4, line: 497, baseType: !87, size: 64, offset: 256)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !88, file: !4, line: 498, baseType: !87, size: 64, offset: 320)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !88, file: !4, line: 499, baseType: !87, size: 64, offset: 384)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !88, file: !4, line: 500, baseType: !87, size: 64, offset: 448)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !88, file: !4, line: 501, baseType: !104, size: 64, offset: 512)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !88, file: !4, line: 504, baseType: !106, size: 64, offset: 576)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !108)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !109)
!109 = !{!110, !112, !114, !115, !116, !117}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !108, file: !4, line: 389, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !108, file: !4, line: 390, baseType: !113, size: 32, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !82)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !108, file: !4, line: 391, baseType: !93, size: 64, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !108, file: !4, line: 392, baseType: !93, size: 64, offset: 192)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !108, file: !4, line: 393, baseType: !41, size: 64, offset: 256)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !108, file: !4, line: 394, baseType: !104, size: 64, offset: 320)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !88, file: !4, line: 505, baseType: !119, size: 64, offset: 640)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !88, file: !4, line: 506, baseType: !121, size: 64, offset: 704)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !123)
!123 = !{!124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !136}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !122, file: !4, line: 434, baseType: !41, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !122, file: !4, line: 435, baseType: !82, size: 32, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !122, file: !4, line: 436, baseType: !93, size: 64, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !122, file: !4, line: 437, baseType: !87, size: 64, offset: 192)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !122, file: !4, line: 438, baseType: !87, size: 64, offset: 256)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !122, file: !4, line: 439, baseType: !87, size: 64, offset: 320)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !122, file: !4, line: 440, baseType: !121, size: 64, offset: 384)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !122, file: !4, line: 441, baseType: !121, size: 64, offset: 448)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !122, file: !4, line: 442, baseType: !104, size: 64, offset: 512)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !122, file: !4, line: 443, baseType: !106, size: 64, offset: 576)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !122, file: !4, line: 444, baseType: !135, size: 32, offset: 640)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !122, file: !4, line: 445, baseType: !41, size: 64, offset: 704)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !88, file: !4, line: 507, baseType: !106, size: 64, offset: 768)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !88, file: !4, line: 508, baseType: !41, size: 64, offset: 832)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !88, file: !4, line: 509, baseType: !140, size: 16, offset: 896)
!140 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !88, file: !4, line: 510, baseType: !140, size: 16, offset: 912)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !78, file: !4, line: 564, baseType: !87, size: 64, offset: 256)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !78, file: !4, line: 565, baseType: !87, size: 64, offset: 320)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !78, file: !4, line: 566, baseType: !87, size: 64, offset: 384)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !78, file: !4, line: 567, baseType: !87, size: 64, offset: 448)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !78, file: !4, line: 568, baseType: !104, size: 64, offset: 512)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !78, file: !4, line: 571, baseType: !53, size: 32, offset: 576)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !78, file: !4, line: 572, baseType: !53, size: 32, offset: 608)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !78, file: !4, line: 578, baseType: !150, size: 64, offset: 640)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !152)
!152 = !{!153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !151, file: !4, line: 406, baseType: !41, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !151, file: !4, line: 407, baseType: !82, size: 32, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !151, file: !4, line: 408, baseType: !93, size: 64, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !151, file: !4, line: 409, baseType: !87, size: 64, offset: 192)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !151, file: !4, line: 410, baseType: !87, size: 64, offset: 256)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !151, file: !4, line: 411, baseType: !104, size: 64, offset: 320)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !151, file: !4, line: 412, baseType: !87, size: 64, offset: 384)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !151, file: !4, line: 413, baseType: !87, size: 64, offset: 448)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !151, file: !4, line: 414, baseType: !104, size: 64, offset: 512)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !151, file: !4, line: 417, baseType: !41, size: 64, offset: 576)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !151, file: !4, line: 418, baseType: !41, size: 64, offset: 640)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !151, file: !4, line: 419, baseType: !41, size: 64, offset: 704)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !151, file: !4, line: 420, baseType: !41, size: 64, offset: 768)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !151, file: !4, line: 421, baseType: !93, size: 64, offset: 832)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !151, file: !4, line: 422, baseType: !93, size: 64, offset: 896)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !151, file: !4, line: 423, baseType: !41, size: 64, offset: 960)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !78, file: !4, line: 579, baseType: !150, size: 64, offset: 704)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !78, file: !4, line: 580, baseType: !111, size: 64, offset: 768)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !78, file: !4, line: 581, baseType: !93, size: 64, offset: 832)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !78, file: !4, line: 582, baseType: !93, size: 64, offset: 896)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !78, file: !4, line: 583, baseType: !41, size: 64, offset: 960)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !78, file: !4, line: 584, baseType: !41, size: 64, offset: 1024)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !78, file: !4, line: 585, baseType: !93, size: 64, offset: 1088)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !78, file: !4, line: 586, baseType: !53, size: 32, offset: 1152)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !78, file: !4, line: 588, baseType: !178, size: 64, offset: 1216)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !180, line: 24, flags: DIFlagFwdDecl)
!180 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!181 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !78, file: !4, line: 589, baseType: !41, size: 64, offset: 1280)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !78, file: !4, line: 590, baseType: !53, size: 32, offset: 1344)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !78, file: !4, line: 592, baseType: !53, size: 32, offset: 1376)
!184 = !DILocation(line: 9, column: 15, scope: !50)
!185 = !DILocation(line: 12, column: 5, scope: !50)
!186 = !DILocation(line: 15, column: 23, scope: !50)
!187 = !DILocation(line: 15, column: 21, scope: !50)
!188 = !DILocation(line: 16, column: 9, scope: !189)
!189 = distinct !DILexicalBlock(scope: !50, file: !1, line: 16, column: 9)
!190 = !DILocation(line: 16, column: 25, scope: !189)
!191 = !DILocation(line: 16, column: 9, scope: !50)
!192 = !DILocation(line: 17, column: 9, scope: !193)
!193 = distinct !DILexicalBlock(scope: !189, file: !1, line: 16, column: 34)
!194 = !DILocation(line: 18, column: 9, scope: !193)
!195 = !DILocation(line: 22, column: 34, scope: !50)
!196 = !DILocation(line: 22, column: 18, scope: !50)
!197 = !DILocation(line: 22, column: 16, scope: !50)
!198 = !DILocation(line: 23, column: 9, scope: !199)
!199 = distinct !DILexicalBlock(scope: !50, file: !1, line: 23, column: 9)
!200 = !DILocation(line: 23, column: 20, scope: !199)
!201 = !DILocation(line: 23, column: 9, scope: !50)
!202 = !DILocation(line: 24, column: 34, scope: !203)
!203 = distinct !DILexicalBlock(scope: !199, file: !1, line: 23, column: 29)
!204 = !DILocation(line: 24, column: 9, scope: !203)
!205 = !DILocation(line: 25, column: 9, scope: !203)
!206 = !DILocation(line: 26, column: 9, scope: !203)
!207 = !DILocation(line: 30, column: 41, scope: !50)
!208 = !DILocation(line: 30, column: 18, scope: !50)
!209 = !DILocation(line: 30, column: 16, scope: !50)
!210 = !DILocation(line: 31, column: 9, scope: !211)
!211 = distinct !DILexicalBlock(scope: !50, file: !1, line: 31, column: 9)
!212 = !DILocation(line: 31, column: 20, scope: !211)
!213 = !DILocation(line: 31, column: 9, scope: !50)
!214 = !DILocation(line: 32, column: 24, scope: !215)
!215 = distinct !DILexicalBlock(scope: !211, file: !1, line: 31, column: 29)
!216 = !DILocation(line: 32, column: 9, scope: !215)
!217 = !DILocation(line: 33, column: 34, scope: !215)
!218 = !DILocation(line: 33, column: 9, scope: !215)
!219 = !DILocation(line: 34, column: 9, scope: !215)
!220 = !DILocation(line: 35, column: 9, scope: !215)
!221 = !DILocalVariable(name: "xml_content", scope: !50, file: !1, line: 39, type: !222)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!224 = !DILocation(line: 39, column: 17, scope: !50)
!225 = !DILocation(line: 40, column: 25, scope: !50)
!226 = !DILocation(line: 40, column: 45, scope: !50)
!227 = !DILocation(line: 40, column: 38, scope: !50)
!228 = !DILocation(line: 40, column: 11, scope: !50)
!229 = !DILocation(line: 40, column: 9, scope: !50)
!230 = !DILocation(line: 41, column: 9, scope: !231)
!231 = distinct !DILexicalBlock(scope: !50, file: !1, line: 41, column: 9)
!232 = !DILocation(line: 41, column: 13, scope: !231)
!233 = !DILocation(line: 41, column: 9, scope: !50)
!234 = !DILocation(line: 42, column: 33, scope: !235)
!235 = distinct !DILexicalBlock(scope: !231, file: !1, line: 41, column: 22)
!236 = !DILocation(line: 42, column: 9, scope: !235)
!237 = !DILocation(line: 43, column: 24, scope: !235)
!238 = !DILocation(line: 43, column: 9, scope: !235)
!239 = !DILocation(line: 44, column: 34, scope: !235)
!240 = !DILocation(line: 44, column: 9, scope: !235)
!241 = !DILocation(line: 45, column: 9, scope: !235)
!242 = !DILocation(line: 46, column: 9, scope: !235)
!243 = !DILocation(line: 57, column: 5, scope: !50)
!244 = !DILocalVariable(name: "ret", scope: !50, file: !1, line: 60, type: !53)
!245 = !DILocation(line: 60, column: 9, scope: !50)
!246 = !DILocation(line: 60, column: 37, scope: !50)
!247 = !DILocation(line: 60, column: 49, scope: !50)
!248 = !DILocation(line: 60, column: 15, scope: !50)
!249 = !DILocation(line: 63, column: 16, scope: !50)
!250 = !DILocation(line: 63, column: 5, scope: !50)
!251 = !DILocation(line: 64, column: 29, scope: !50)
!252 = !DILocation(line: 64, column: 5, scope: !50)
!253 = !DILocation(line: 65, column: 20, scope: !50)
!254 = !DILocation(line: 65, column: 5, scope: !50)
!255 = !DILocation(line: 66, column: 30, scope: !50)
!256 = !DILocation(line: 66, column: 5, scope: !50)
!257 = !DILocation(line: 67, column: 5, scope: !50)
!258 = !DILocation(line: 69, column: 5, scope: !50)
!259 = !DILocation(line: 70, column: 1, scope: !50)

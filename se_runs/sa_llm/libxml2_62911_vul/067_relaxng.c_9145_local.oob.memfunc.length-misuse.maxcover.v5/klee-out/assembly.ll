; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/067_relaxng.c_9145_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/067_relaxng.c_9145_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRelaxNGParserCtxt = type opaque
%struct._xmlRelaxNG = type opaque
%struct._xmlDoc = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, i32, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlNs*, i8*, i8*, i8*, i8*, i8*, i32, %struct._xmlDict*, i8*, i32, i32 }
%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i8*, i16, i16 }
%struct._xmlAttr = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlAttr*, %struct._xmlAttr*, %struct._xmlDoc*, %struct._xmlNs*, i32, i8* }
%struct._xmlDtd = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._xmlNs = type { %struct._xmlNs*, i32, i8*, i8*, i8*, %struct._xmlDoc* }
%struct._xmlDict = type opaque
%struct._xmlRelaxNGValidCtxt = type opaque

@.str = private unnamed_addr constant [9 x i8] c"test.rng\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"schema_buf\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"doc_buf\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"noname.xml\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/067_relaxng.c_9145_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !50 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlRelaxNGParserCtxt*, align 8
  %3 = alloca %struct._xmlRelaxNG*, align 8
  %4 = alloca %struct._xmlDoc*, align 8
  %5 = alloca %struct._xmlRelaxNGValidCtxt*, align 8
  %6 = alloca [1024 x i8], align 16
  %7 = alloca [2048 x i8], align 16
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGParserCtxt** %2, metadata !55, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNG** %3, metadata !62, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %4, metadata !68, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidCtxt** %5, metadata !179, metadata !DIExpression()), !dbg !184
  call void @xmlInitParser(), !dbg !185
  %9 = call %struct._xmlRelaxNGParserCtxt* @xmlRelaxNGNewParserCtxt(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !dbg !186
  store %struct._xmlRelaxNGParserCtxt* %9, %struct._xmlRelaxNGParserCtxt** %2, align 8, !dbg !187
  %10 = load %struct._xmlRelaxNGParserCtxt*, %struct._xmlRelaxNGParserCtxt** %2, align 8, !dbg !188
  %11 = icmp eq %struct._xmlRelaxNGParserCtxt* %10, null, !dbg !190
  br i1 %11, label %12, label %13, !dbg !191

12:                                               ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !192
  br label %50, !dbg !192

13:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata [1024 x i8]* %6, metadata !194, metadata !DIExpression()), !dbg !198
  %14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0, !dbg !199
  call void @klee_make_symbolic(i8* noundef %14, i64 noundef 1024, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)), !dbg !200
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 1023, !dbg !201
  store i8 0, i8* %15, align 1, !dbg !202
  %16 = load %struct._xmlRelaxNGParserCtxt*, %struct._xmlRelaxNGParserCtxt** %2, align 8, !dbg !203
  %17 = call %struct._xmlRelaxNG* @xmlRelaxNGParse(%struct._xmlRelaxNGParserCtxt* noundef %16), !dbg !204
  store %struct._xmlRelaxNG* %17, %struct._xmlRelaxNG** %3, align 8, !dbg !205
  %18 = load %struct._xmlRelaxNG*, %struct._xmlRelaxNG** %3, align 8, !dbg !206
  %19 = icmp eq %struct._xmlRelaxNG* %18, null, !dbg !208
  br i1 %19, label %20, label %22, !dbg !209

20:                                               ; preds = %13
  %21 = load %struct._xmlRelaxNGParserCtxt*, %struct._xmlRelaxNGParserCtxt** %2, align 8, !dbg !210
  call void @xmlRelaxNGFreeParserCtxt(%struct._xmlRelaxNGParserCtxt* noundef %21), !dbg !212
  store i32 0, i32* %1, align 4, !dbg !213
  br label %50, !dbg !213

22:                                               ; preds = %13
  %23 = load %struct._xmlRelaxNG*, %struct._xmlRelaxNG** %3, align 8, !dbg !214
  %24 = call %struct._xmlRelaxNGValidCtxt* @xmlRelaxNGNewValidCtxt(%struct._xmlRelaxNG* noundef %23), !dbg !215
  store %struct._xmlRelaxNGValidCtxt* %24, %struct._xmlRelaxNGValidCtxt** %5, align 8, !dbg !216
  %25 = load %struct._xmlRelaxNGValidCtxt*, %struct._xmlRelaxNGValidCtxt** %5, align 8, !dbg !217
  %26 = icmp eq %struct._xmlRelaxNGValidCtxt* %25, null, !dbg !219
  br i1 %26, label %27, label %30, !dbg !220

27:                                               ; preds = %22
  %28 = load %struct._xmlRelaxNG*, %struct._xmlRelaxNG** %3, align 8, !dbg !221
  call void @xmlRelaxNGFree(%struct._xmlRelaxNG* noundef %28), !dbg !223
  %29 = load %struct._xmlRelaxNGParserCtxt*, %struct._xmlRelaxNGParserCtxt** %2, align 8, !dbg !224
  call void @xmlRelaxNGFreeParserCtxt(%struct._xmlRelaxNGParserCtxt* noundef %29), !dbg !225
  store i32 0, i32* %1, align 4, !dbg !226
  br label %50, !dbg !226

30:                                               ; preds = %22
  call void @llvm.dbg.declare(metadata [2048 x i8]* %7, metadata !227, metadata !DIExpression()), !dbg !231
  %31 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0, !dbg !232
  call void @klee_make_symbolic(i8* noundef %31, i64 noundef 2048, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)), !dbg !233
  %32 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 2047, !dbg !234
  store i8 0, i8* %32, align 1, !dbg !235
  %33 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0, !dbg !236
  %34 = call %struct._xmlDoc* @xmlReadMemory(i8* noundef %33, i32 noundef 2047, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* noundef null, i32 noundef 0), !dbg !237
  store %struct._xmlDoc* %34, %struct._xmlDoc** %4, align 8, !dbg !238
  %35 = load %struct._xmlDoc*, %struct._xmlDoc** %4, align 8, !dbg !239
  %36 = icmp eq %struct._xmlDoc* %35, null, !dbg !241
  br i1 %36, label %37, label %41, !dbg !242

37:                                               ; preds = %30
  %38 = load %struct._xmlRelaxNGValidCtxt*, %struct._xmlRelaxNGValidCtxt** %5, align 8, !dbg !243
  call void @xmlRelaxNGFreeValidCtxt(%struct._xmlRelaxNGValidCtxt* noundef %38), !dbg !245
  %39 = load %struct._xmlRelaxNG*, %struct._xmlRelaxNG** %3, align 8, !dbg !246
  call void @xmlRelaxNGFree(%struct._xmlRelaxNG* noundef %39), !dbg !247
  %40 = load %struct._xmlRelaxNGParserCtxt*, %struct._xmlRelaxNGParserCtxt** %2, align 8, !dbg !248
  call void @xmlRelaxNGFreeParserCtxt(%struct._xmlRelaxNGParserCtxt* noundef %40), !dbg !249
  store i32 0, i32* %1, align 4, !dbg !250
  br label %50, !dbg !250

41:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata i32* %8, metadata !251, metadata !DIExpression()), !dbg !252
  %42 = load %struct._xmlRelaxNGValidCtxt*, %struct._xmlRelaxNGValidCtxt** %5, align 8, !dbg !253
  %43 = load %struct._xmlDoc*, %struct._xmlDoc** %4, align 8, !dbg !254
  %44 = call i32 @xmlRelaxNGValidateDoc(%struct._xmlRelaxNGValidCtxt* noundef %42, %struct._xmlDoc* noundef %43), !dbg !255
  store i32 %44, i32* %8, align 4, !dbg !252
  %45 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.5, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !256
  %46 = load %struct._xmlDoc*, %struct._xmlDoc** %4, align 8, !dbg !257
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %46), !dbg !258
  %47 = load %struct._xmlRelaxNGValidCtxt*, %struct._xmlRelaxNGValidCtxt** %5, align 8, !dbg !259
  call void @xmlRelaxNGFreeValidCtxt(%struct._xmlRelaxNGValidCtxt* noundef %47), !dbg !260
  %48 = load %struct._xmlRelaxNG*, %struct._xmlRelaxNG** %3, align 8, !dbg !261
  call void @xmlRelaxNGFree(%struct._xmlRelaxNG* noundef %48), !dbg !262
  %49 = load %struct._xmlRelaxNGParserCtxt*, %struct._xmlRelaxNGParserCtxt** %2, align 8, !dbg !263
  call void @xmlRelaxNGFreeParserCtxt(%struct._xmlRelaxNGParserCtxt* noundef %49), !dbg !264
  call void @xmlCleanupParser(), !dbg !265
  store i32 0, i32* %1, align 4, !dbg !266
  br label %50, !dbg !266

50:                                               ; preds = %41, %37, %27, %20, %12
  %51 = load i32, i32* %1, align 4, !dbg !267
  ret i32 %51, !dbg !267
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @xmlInitParser() #2

declare %struct._xmlRelaxNGParserCtxt* @xmlRelaxNGNewParserCtxt(i8* noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare %struct._xmlRelaxNG* @xmlRelaxNGParse(%struct._xmlRelaxNGParserCtxt* noundef) #2

declare void @xmlRelaxNGFreeParserCtxt(%struct._xmlRelaxNGParserCtxt* noundef) #2

declare %struct._xmlRelaxNGValidCtxt* @xmlRelaxNGNewValidCtxt(%struct._xmlRelaxNG* noundef) #2

declare void @xmlRelaxNGFree(%struct._xmlRelaxNG* noundef) #2

declare %struct._xmlDoc* @xmlReadMemory(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef) #2

declare void @xmlRelaxNGFreeValidCtxt(%struct._xmlRelaxNGValidCtxt* noundef) #2

declare i32 @xmlRelaxNGValidateDoc(%struct._xmlRelaxNGValidCtxt* noundef, %struct._xmlDoc* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare void @xmlFreeDoc(%struct._xmlDoc* noundef) #2

declare void @xmlCleanupParser() #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !40, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/067_relaxng.c_9145_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "aa50648af29f6bd2eb40d7824eb18f1e")
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
!55 = !DILocalVariable(name: "parserCtxt", scope: !50, file: !1, line: 6, type: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGParserCtxtPtr", file: !57, line: 55, baseType: !58)
!57 = !DIFile(filename: "/usr/include/libxml2/libxml/relaxng.h", directory: "", checksumkind: CSK_MD5, checksum: "348c151f5b45a3543862c0e280f9fbba")
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGParserCtxt", file: !57, line: 54, baseType: !60)
!60 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRelaxNGParserCtxt", file: !57, line: 54, flags: DIFlagFwdDecl)
!61 = !DILocation(line: 6, column: 29, scope: !50)
!62 = !DILocalVariable(name: "schema", scope: !50, file: !1, line: 7, type: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGPtr", file: !57, line: 24, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNG", file: !57, line: 23, baseType: !66)
!66 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRelaxNG", file: !57, line: 23, flags: DIFlagFwdDecl)
!67 = !DILocation(line: 7, column: 19, scope: !50)
!68 = !DILocalVariable(name: "doc", scope: !50, file: !1, line: 8, type: !69)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !72)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !73)
!73 = !{!74, !75, !77, !80, !136, !137, !138, !139, !140, !141, !142, !143, !163, !164, !165, !166, !167, !168, !169, !170, !171, !175, !176, !177}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !72, file: !4, line: 560, baseType: !41, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !72, file: !4, line: 561, baseType: !76, size: 32, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !72, file: !4, line: 562, baseType: !78, size: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !72, file: !4, line: 563, baseType: !81, size: 64, offset: 192)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !83)
!83 = !{!84, !85, !86, !92, !93, !94, !95, !96, !97, !99, !112, !114, !131, !132, !133, !135}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !82, file: !4, line: 493, baseType: !41, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !82, file: !4, line: 494, baseType: !76, size: 32, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !82, file: !4, line: 495, baseType: !87, size: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !90, line: 28, baseType: !91)
!90 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!91 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !82, file: !4, line: 496, baseType: !81, size: 64, offset: 192)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !82, file: !4, line: 497, baseType: !81, size: 64, offset: 256)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !82, file: !4, line: 498, baseType: !81, size: 64, offset: 320)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !82, file: !4, line: 499, baseType: !81, size: 64, offset: 384)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !82, file: !4, line: 500, baseType: !81, size: 64, offset: 448)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !82, file: !4, line: 501, baseType: !98, size: 64, offset: 512)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !82, file: !4, line: 504, baseType: !100, size: 64, offset: 576)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !102)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !103)
!103 = !{!104, !106, !108, !109, !110, !111}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !102, file: !4, line: 389, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !102, file: !4, line: 390, baseType: !107, size: 32, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !76)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !102, file: !4, line: 391, baseType: !87, size: 64, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !102, file: !4, line: 392, baseType: !87, size: 64, offset: 192)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !102, file: !4, line: 393, baseType: !41, size: 64, offset: 256)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !102, file: !4, line: 394, baseType: !98, size: 64, offset: 320)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !82, file: !4, line: 505, baseType: !113, size: 64, offset: 640)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !82, file: !4, line: 506, baseType: !115, size: 64, offset: 704)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !130}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !116, file: !4, line: 434, baseType: !41, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !116, file: !4, line: 435, baseType: !76, size: 32, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !116, file: !4, line: 436, baseType: !87, size: 64, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !116, file: !4, line: 437, baseType: !81, size: 64, offset: 192)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !116, file: !4, line: 438, baseType: !81, size: 64, offset: 256)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !116, file: !4, line: 439, baseType: !81, size: 64, offset: 320)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !116, file: !4, line: 440, baseType: !115, size: 64, offset: 384)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !116, file: !4, line: 441, baseType: !115, size: 64, offset: 448)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !116, file: !4, line: 442, baseType: !98, size: 64, offset: 512)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !116, file: !4, line: 443, baseType: !100, size: 64, offset: 576)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !116, file: !4, line: 444, baseType: !129, size: 32, offset: 640)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !116, file: !4, line: 445, baseType: !41, size: 64, offset: 704)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !82, file: !4, line: 507, baseType: !100, size: 64, offset: 768)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !82, file: !4, line: 508, baseType: !41, size: 64, offset: 832)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !82, file: !4, line: 509, baseType: !134, size: 16, offset: 896)
!134 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !82, file: !4, line: 510, baseType: !134, size: 16, offset: 912)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !72, file: !4, line: 564, baseType: !81, size: 64, offset: 256)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !72, file: !4, line: 565, baseType: !81, size: 64, offset: 320)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !72, file: !4, line: 566, baseType: !81, size: 64, offset: 384)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !72, file: !4, line: 567, baseType: !81, size: 64, offset: 448)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !72, file: !4, line: 568, baseType: !98, size: 64, offset: 512)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !72, file: !4, line: 571, baseType: !53, size: 32, offset: 576)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !72, file: !4, line: 572, baseType: !53, size: 32, offset: 608)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !72, file: !4, line: 578, baseType: !144, size: 64, offset: 640)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !146)
!146 = !{!147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !145, file: !4, line: 406, baseType: !41, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !145, file: !4, line: 407, baseType: !76, size: 32, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !145, file: !4, line: 408, baseType: !87, size: 64, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !145, file: !4, line: 409, baseType: !81, size: 64, offset: 192)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !145, file: !4, line: 410, baseType: !81, size: 64, offset: 256)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !145, file: !4, line: 411, baseType: !98, size: 64, offset: 320)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !145, file: !4, line: 412, baseType: !81, size: 64, offset: 384)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !145, file: !4, line: 413, baseType: !81, size: 64, offset: 448)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !145, file: !4, line: 414, baseType: !98, size: 64, offset: 512)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !145, file: !4, line: 417, baseType: !41, size: 64, offset: 576)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !145, file: !4, line: 418, baseType: !41, size: 64, offset: 640)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !145, file: !4, line: 419, baseType: !41, size: 64, offset: 704)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !145, file: !4, line: 420, baseType: !41, size: 64, offset: 768)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !145, file: !4, line: 421, baseType: !87, size: 64, offset: 832)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !145, file: !4, line: 422, baseType: !87, size: 64, offset: 896)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !145, file: !4, line: 423, baseType: !41, size: 64, offset: 960)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !72, file: !4, line: 579, baseType: !144, size: 64, offset: 704)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !72, file: !4, line: 580, baseType: !105, size: 64, offset: 768)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !72, file: !4, line: 581, baseType: !87, size: 64, offset: 832)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !72, file: !4, line: 582, baseType: !87, size: 64, offset: 896)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !72, file: !4, line: 583, baseType: !41, size: 64, offset: 960)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !72, file: !4, line: 584, baseType: !41, size: 64, offset: 1024)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !72, file: !4, line: 585, baseType: !87, size: 64, offset: 1088)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !72, file: !4, line: 586, baseType: !53, size: 32, offset: 1152)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !72, file: !4, line: 588, baseType: !172, size: 64, offset: 1216)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !174, line: 24, flags: DIFlagFwdDecl)
!174 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!175 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !72, file: !4, line: 589, baseType: !41, size: 64, offset: 1280)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !72, file: !4, line: 590, baseType: !53, size: 32, offset: 1344)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !72, file: !4, line: 592, baseType: !53, size: 32, offset: 1376)
!178 = !DILocation(line: 8, column: 15, scope: !50)
!179 = !DILocalVariable(name: "validCtxt", scope: !50, file: !1, line: 9, type: !180)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGValidCtxtPtr", file: !57, line: 58, baseType: !181)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGValidCtxt", file: !57, line: 57, baseType: !183)
!183 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRelaxNGValidCtxt", file: !57, line: 57, flags: DIFlagFwdDecl)
!184 = !DILocation(line: 9, column: 28, scope: !50)
!185 = !DILocation(line: 12, column: 5, scope: !50)
!186 = !DILocation(line: 15, column: 18, scope: !50)
!187 = !DILocation(line: 15, column: 16, scope: !50)
!188 = !DILocation(line: 16, column: 9, scope: !189)
!189 = distinct !DILexicalBlock(scope: !50, file: !1, line: 16, column: 9)
!190 = !DILocation(line: 16, column: 20, scope: !189)
!191 = !DILocation(line: 16, column: 9, scope: !50)
!192 = !DILocation(line: 17, column: 9, scope: !193)
!193 = distinct !DILexicalBlock(scope: !189, file: !1, line: 16, column: 29)
!194 = !DILocalVariable(name: "schema_buf", scope: !50, file: !1, line: 21, type: !195)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 8192, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 1024)
!198 = !DILocation(line: 21, column: 10, scope: !50)
!199 = !DILocation(line: 22, column: 24, scope: !50)
!200 = !DILocation(line: 22, column: 5, scope: !50)
!201 = !DILocation(line: 24, column: 5, scope: !50)
!202 = !DILocation(line: 24, column: 38, scope: !50)
!203 = !DILocation(line: 25, column: 30, scope: !50)
!204 = !DILocation(line: 25, column: 14, scope: !50)
!205 = !DILocation(line: 25, column: 12, scope: !50)
!206 = !DILocation(line: 26, column: 9, scope: !207)
!207 = distinct !DILexicalBlock(scope: !50, file: !1, line: 26, column: 9)
!208 = !DILocation(line: 26, column: 16, scope: !207)
!209 = !DILocation(line: 26, column: 9, scope: !50)
!210 = !DILocation(line: 27, column: 34, scope: !211)
!211 = distinct !DILexicalBlock(scope: !207, file: !1, line: 26, column: 25)
!212 = !DILocation(line: 27, column: 9, scope: !211)
!213 = !DILocation(line: 28, column: 9, scope: !211)
!214 = !DILocation(line: 32, column: 40, scope: !50)
!215 = !DILocation(line: 32, column: 17, scope: !50)
!216 = !DILocation(line: 32, column: 15, scope: !50)
!217 = !DILocation(line: 33, column: 9, scope: !218)
!218 = distinct !DILexicalBlock(scope: !50, file: !1, line: 33, column: 9)
!219 = !DILocation(line: 33, column: 19, scope: !218)
!220 = !DILocation(line: 33, column: 9, scope: !50)
!221 = !DILocation(line: 34, column: 24, scope: !222)
!222 = distinct !DILexicalBlock(scope: !218, file: !1, line: 33, column: 28)
!223 = !DILocation(line: 34, column: 9, scope: !222)
!224 = !DILocation(line: 35, column: 34, scope: !222)
!225 = !DILocation(line: 35, column: 9, scope: !222)
!226 = !DILocation(line: 36, column: 9, scope: !222)
!227 = !DILocalVariable(name: "doc_buf", scope: !50, file: !1, line: 40, type: !228)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 16384, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 2048)
!231 = !DILocation(line: 40, column: 10, scope: !50)
!232 = !DILocation(line: 41, column: 24, scope: !50)
!233 = !DILocation(line: 41, column: 5, scope: !50)
!234 = !DILocation(line: 42, column: 5, scope: !50)
!235 = !DILocation(line: 42, column: 32, scope: !50)
!236 = !DILocation(line: 43, column: 25, scope: !50)
!237 = !DILocation(line: 43, column: 11, scope: !50)
!238 = !DILocation(line: 43, column: 9, scope: !50)
!239 = !DILocation(line: 44, column: 9, scope: !240)
!240 = distinct !DILexicalBlock(scope: !50, file: !1, line: 44, column: 9)
!241 = !DILocation(line: 44, column: 13, scope: !240)
!242 = !DILocation(line: 44, column: 9, scope: !50)
!243 = !DILocation(line: 45, column: 33, scope: !244)
!244 = distinct !DILexicalBlock(scope: !240, file: !1, line: 44, column: 22)
!245 = !DILocation(line: 45, column: 9, scope: !244)
!246 = !DILocation(line: 46, column: 24, scope: !244)
!247 = !DILocation(line: 46, column: 9, scope: !244)
!248 = !DILocation(line: 47, column: 34, scope: !244)
!249 = !DILocation(line: 47, column: 9, scope: !244)
!250 = !DILocation(line: 48, column: 9, scope: !244)
!251 = !DILocalVariable(name: "ret", scope: !50, file: !1, line: 52, type: !53)
!252 = !DILocation(line: 52, column: 9, scope: !50)
!253 = !DILocation(line: 52, column: 37, scope: !50)
!254 = !DILocation(line: 52, column: 48, scope: !50)
!255 = !DILocation(line: 52, column: 15, scope: !50)
!256 = !DILocation(line: 55, column: 5, scope: !50)
!257 = !DILocation(line: 58, column: 16, scope: !50)
!258 = !DILocation(line: 58, column: 5, scope: !50)
!259 = !DILocation(line: 59, column: 29, scope: !50)
!260 = !DILocation(line: 59, column: 5, scope: !50)
!261 = !DILocation(line: 60, column: 20, scope: !50)
!262 = !DILocation(line: 60, column: 5, scope: !50)
!263 = !DILocation(line: 61, column: 30, scope: !50)
!264 = !DILocation(line: 61, column: 5, scope: !50)
!265 = !DILocation(line: 62, column: 5, scope: !50)
!266 = !DILocation(line: 64, column: 5, scope: !50)
!267 = !DILocation(line: 65, column: 1, scope: !50)

; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/240_valid.c_3172_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/240_valid.c_3172_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDoc = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, i32, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlNs*, i8*, i8*, i8*, i8*, i8*, i32, %struct._xmlDict*, i8*, i32, i32 }
%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i8*, i16, i16 }
%struct._xmlAttr = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlAttr*, %struct._xmlAttr*, %struct._xmlDoc*, %struct._xmlNs*, i32, i8* }
%struct._xmlDtd = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._xmlNs = type { %struct._xmlNs*, i32, i8*, i8*, i8*, %struct._xmlDoc* }
%struct._xmlDict = type opaque
%struct._xmlValidCtxt = type { i8*, void (i8*, i8*, ...)*, void (i8*, i8*, ...)*, %struct._xmlNode*, i32, i32, %struct._xmlNode**, i32, %struct._xmlDoc*, i32, %struct._xmlValidState*, i32, i32, %struct._xmlValidState*, %struct._xmlAutomata*, %struct._xmlAutomataState* }
%struct._xmlValidState = type opaque
%struct._xmlAutomata = type opaque
%struct._xmlAutomataState = type opaque
%struct._xmlHashTable = type opaque
%struct._xmlElement = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDtd*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, %struct._xmlElementContent*, %struct._xmlAttribute*, i8*, %struct._xmlRegexp* }
%struct._xmlElementContent = type { i32, i32, i8*, %struct._xmlElementContent*, %struct._xmlElementContent*, %struct._xmlElementContent*, i8* }
%struct._xmlAttribute = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDtd*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlAttribute*, i32, i32, i8*, %struct._xmlEnumeration*, i8*, i8* }
%struct._xmlEnumeration = type { %struct._xmlEnumeration*, i8* }
%struct._xmlRegexp = type opaque

@.str = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"name_buf\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"prefix_buf\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_62911_vul/240_valid.c_3172_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !81 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlDoc*, align 8
  %3 = alloca %struct._xmlValidCtxt*, align 8
  %4 = alloca %struct._xmlHashTable*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [100 x i8], align 16
  %9 = alloca [100 x i8], align 16
  %10 = alloca %struct._xmlElement*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %2, metadata !86, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.declare(metadata %struct._xmlValidCtxt** %3, metadata !191, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata %struct._xmlHashTable** %4, metadata !238, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.declare(metadata i8** %5, metadata !245, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i8** %6, metadata !247, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.declare(metadata i32* %7, metadata !249, metadata !DIExpression()), !dbg !250
  store i32 1, i32* %7, align 4, !dbg !250
  call void @xmlInitParser(), !dbg !251
  %11 = call %struct._xmlValidCtxt* @xmlNewValidCtxt(), !dbg !252
  store %struct._xmlValidCtxt* %11, %struct._xmlValidCtxt** %3, align 8, !dbg !253
  %12 = load %struct._xmlValidCtxt*, %struct._xmlValidCtxt** %3, align 8, !dbg !254
  %13 = icmp eq %struct._xmlValidCtxt* %12, null, !dbg !256
  br i1 %13, label %14, label %15, !dbg !257

14:                                               ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !258
  br label %65, !dbg !258

15:                                               ; preds = %0
  %16 = call %struct._xmlDoc* @xmlNewDoc(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !260
  store %struct._xmlDoc* %16, %struct._xmlDoc** %2, align 8, !dbg !261
  %17 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !262
  %18 = icmp eq %struct._xmlDoc* %17, null, !dbg !264
  br i1 %18, label %19, label %21, !dbg !265

19:                                               ; preds = %15
  %20 = load %struct._xmlValidCtxt*, %struct._xmlValidCtxt** %3, align 8, !dbg !266
  call void @xmlFreeValidCtxt(%struct._xmlValidCtxt* noundef %20), !dbg !268
  store i32 1, i32* %1, align 4, !dbg !269
  br label %65, !dbg !269

21:                                               ; preds = %15
  %22 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !270
  %23 = getelementptr inbounds %struct._xmlDoc, %struct._xmlDoc* %22, i32 0, i32 11, !dbg !272
  %24 = load %struct._xmlDtd*, %struct._xmlDtd** %23, align 8, !dbg !272
  %25 = icmp eq %struct._xmlDtd* %24, null, !dbg !273
  br i1 %25, label %26, label %39, !dbg !274

26:                                               ; preds = %21
  %27 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !275
  %28 = call %struct._xmlDtd* @xmlCreateIntSubset(%struct._xmlDoc* noundef %27, i8* noundef null, i8* noundef null, i8* noundef null), !dbg !277
  %29 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !278
  %30 = getelementptr inbounds %struct._xmlDoc, %struct._xmlDoc* %29, i32 0, i32 11, !dbg !279
  store %struct._xmlDtd* %28, %struct._xmlDtd** %30, align 8, !dbg !280
  %31 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !281
  %32 = getelementptr inbounds %struct._xmlDoc, %struct._xmlDoc* %31, i32 0, i32 11, !dbg !283
  %33 = load %struct._xmlDtd*, %struct._xmlDtd** %32, align 8, !dbg !283
  %34 = icmp eq %struct._xmlDtd* %33, null, !dbg !284
  br i1 %34, label %35, label %38, !dbg !285

35:                                               ; preds = %26
  %36 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !286
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %36), !dbg !288
  %37 = load %struct._xmlValidCtxt*, %struct._xmlValidCtxt** %3, align 8, !dbg !289
  call void @xmlFreeValidCtxt(%struct._xmlValidCtxt* noundef %37), !dbg !290
  store i32 1, i32* %1, align 4, !dbg !291
  br label %65, !dbg !291

38:                                               ; preds = %26
  br label %39, !dbg !292

39:                                               ; preds = %38, %21
  %40 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !293
  %41 = getelementptr inbounds %struct._xmlDoc, %struct._xmlDoc* %40, i32 0, i32 11, !dbg !294
  %42 = load %struct._xmlDtd*, %struct._xmlDtd** %41, align 8, !dbg !294
  %43 = getelementptr inbounds %struct._xmlDtd, %struct._xmlDtd* %42, i32 0, i32 10, !dbg !295
  %44 = bitcast i8** %43 to %struct._xmlHashTable*, !dbg !296
  store %struct._xmlHashTable* %44, %struct._xmlHashTable** %4, align 8, !dbg !297
  call void @llvm.dbg.declare(metadata [100 x i8]* %8, metadata !298, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.declare(metadata [100 x i8]* %9, metadata !303, metadata !DIExpression()), !dbg !304
  %45 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0, !dbg !305
  call void @klee_make_symbolic(i8* noundef %45, i64 noundef 100, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)), !dbg !306
  %46 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0, !dbg !307
  call void @klee_make_symbolic(i8* noundef %46, i64 noundef 100, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)), !dbg !308
  %47 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 99, !dbg !309
  store i8 0, i8* %47, align 1, !dbg !310
  %48 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 99, !dbg !311
  store i8 0, i8* %48, align 1, !dbg !312
  %49 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0, !dbg !313
  store i8* %49, i8** %5, align 8, !dbg !314
  %50 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0, !dbg !315
  store i8* %50, i8** %6, align 8, !dbg !316
  call void @llvm.dbg.declare(metadata %struct._xmlElement** %10, metadata !317, metadata !DIExpression()), !dbg !389
  %51 = load %struct._xmlValidCtxt*, %struct._xmlValidCtxt** %3, align 8, !dbg !390
  %52 = load %struct._xmlHashTable*, %struct._xmlHashTable** %4, align 8, !dbg !391
  %53 = bitcast %struct._xmlHashTable* %52 to %struct._xmlDtd*, !dbg !391
  %54 = load i8*, i8** %5, align 8, !dbg !392
  %55 = load i8*, i8** %6, align 8, !dbg !393
  %56 = ptrtoint i8* %55 to i32, !dbg !393
  %57 = call %struct._xmlElement* @xmlAddElementDecl(%struct._xmlValidCtxt* noundef %51, %struct._xmlDtd* noundef %53, i8* noundef %54, i32 noundef %56, %struct._xmlElementContent* noundef null), !dbg !394
  store %struct._xmlElement* %57, %struct._xmlElement** %10, align 8, !dbg !389
  %58 = load %struct._xmlElement*, %struct._xmlElement** %10, align 8, !dbg !395
  %59 = icmp ne %struct._xmlElement* %58, null, !dbg !397
  br i1 %59, label %60, label %62, !dbg !398

60:                                               ; preds = %39
  %61 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.4, i64 0, i64 0), i32 noundef 66, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !399
  br label %62, !dbg !401

62:                                               ; preds = %60, %39
  %63 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !402
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %63), !dbg !403
  %64 = load %struct._xmlValidCtxt*, %struct._xmlValidCtxt** %3, align 8, !dbg !404
  call void @xmlFreeValidCtxt(%struct._xmlValidCtxt* noundef %64), !dbg !405
  call void @xmlCleanupParser(), !dbg !406
  store i32 0, i32* %1, align 4, !dbg !407
  br label %65, !dbg !407

65:                                               ; preds = %62, %35, %19, %14
  %66 = load i32, i32* %1, align 4, !dbg !408
  ret i32 %66, !dbg !408
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @xmlInitParser() #2

declare %struct._xmlValidCtxt* @xmlNewValidCtxt() #2

declare %struct._xmlDoc* @xmlNewDoc(i8* noundef) #2

declare void @xmlFreeValidCtxt(%struct._xmlValidCtxt* noundef) #2

declare %struct._xmlDtd* @xmlCreateIntSubset(%struct._xmlDoc* noundef, i8* noundef, i8* noundef, i8* noundef) #2

declare void @xmlFreeDoc(%struct._xmlDoc* noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare %struct._xmlElement* @xmlAddElementDecl(%struct._xmlValidCtxt* noundef, %struct._xmlDtd* noundef, i8* noundef, i32 noundef, %struct._xmlElementContent* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare void @xmlCleanupParser() #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !65, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/240_valid.c_3172_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "51e332059e664314f6d1da20df6cfb46")
!2 = !{!3, !28, !40, !47, !53, !59}
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
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 322, baseType: !5, size: 32, elements: !41)
!41 = !{!42, !43, !44, !45, !46}
!42 = !DIEnumerator(name: "XML_ELEMENT_TYPE_UNDEFINED", value: 0)
!43 = !DIEnumerator(name: "XML_ELEMENT_TYPE_EMPTY", value: 1)
!44 = !DIEnumerator(name: "XML_ELEMENT_TYPE_ANY", value: 2)
!45 = !DIEnumerator(name: "XML_ELEMENT_TYPE_MIXED", value: 3)
!46 = !DIEnumerator(name: "XML_ELEMENT_TYPE_ELEMENT", value: 4)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 278, baseType: !5, size: 32, elements: !48)
!48 = !{!49, !50, !51, !52}
!49 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_PCDATA", value: 1)
!50 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_ELEMENT", value: 2)
!51 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_SEQ", value: 3)
!52 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_OR", value: 4)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 290, baseType: !5, size: 32, elements: !54)
!54 = !{!55, !56, !57, !58}
!55 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_ONCE", value: 1)
!56 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_OPT", value: 2)
!57 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_MULT", value: 3)
!58 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_PLUS", value: 4)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 225, baseType: !5, size: 32, elements: !60)
!60 = !{!61, !62, !63, !64}
!61 = !DIEnumerator(name: "XML_ATTRIBUTE_NONE", value: 1)
!62 = !DIEnumerator(name: "XML_ATTRIBUTE_REQUIRED", value: 2)
!63 = !DIEnumerator(name: "XML_ATTRIBUTE_IMPLIED", value: 3)
!64 = !DIEnumerator(name: "XML_ATTRIBUTE_FIXED", value: 4)
!65 = !{!66, !67, !71}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !69, line: 28, baseType: !70)
!69 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!70 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!73 = !{i32 7, !"Dwarf Version", i32 5}
!74 = !{i32 2, !"Debug Info Version", i32 3}
!75 = !{i32 1, !"wchar_size", i32 4}
!76 = !{i32 7, !"PIC Level", i32 2}
!77 = !{i32 7, !"PIE Level", i32 2}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"Ubuntu clang version 14.0.6"}
!81 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 9, type: !82, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !85)
!82 = !DISubroutineType(types: !83)
!83 = !{!84}
!84 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!85 = !{}
!86 = !DILocalVariable(name: "doc", scope: !81, file: !1, line: 10, type: !87)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !90)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !91)
!91 = !{!92, !93, !95, !98, !148, !149, !150, !151, !152, !153, !154, !155, !175, !176, !177, !178, !179, !180, !181, !182, !183, !187, !188, !189}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !90, file: !4, line: 560, baseType: !66, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !90, file: !4, line: 561, baseType: !94, size: 32, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !90, file: !4, line: 562, baseType: !96, size: 64, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !90, file: !4, line: 563, baseType: !99, size: 64, offset: 192)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !101)
!101 = !{!102, !103, !104, !105, !106, !107, !108, !109, !110, !112, !125, !126, !143, !144, !145, !147}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !100, file: !4, line: 493, baseType: !66, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !100, file: !4, line: 494, baseType: !94, size: 32, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !100, file: !4, line: 495, baseType: !71, size: 64, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !100, file: !4, line: 496, baseType: !99, size: 64, offset: 192)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !100, file: !4, line: 497, baseType: !99, size: 64, offset: 256)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !100, file: !4, line: 498, baseType: !99, size: 64, offset: 320)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !100, file: !4, line: 499, baseType: !99, size: 64, offset: 384)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !100, file: !4, line: 500, baseType: !99, size: 64, offset: 448)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !100, file: !4, line: 501, baseType: !111, size: 64, offset: 512)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !100, file: !4, line: 504, baseType: !113, size: 64, offset: 576)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !115)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !116)
!116 = !{!117, !119, !121, !122, !123, !124}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !115, file: !4, line: 389, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !115, file: !4, line: 390, baseType: !120, size: 32, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !94)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !115, file: !4, line: 391, baseType: !71, size: 64, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !115, file: !4, line: 392, baseType: !71, size: 64, offset: 192)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !115, file: !4, line: 393, baseType: !66, size: 64, offset: 256)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !115, file: !4, line: 394, baseType: !111, size: 64, offset: 320)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !100, file: !4, line: 505, baseType: !67, size: 64, offset: 640)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !100, file: !4, line: 506, baseType: !127, size: 64, offset: 704)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !129)
!129 = !{!130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !142}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !128, file: !4, line: 434, baseType: !66, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !128, file: !4, line: 435, baseType: !94, size: 32, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !128, file: !4, line: 436, baseType: !71, size: 64, offset: 128)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !128, file: !4, line: 437, baseType: !99, size: 64, offset: 192)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !128, file: !4, line: 438, baseType: !99, size: 64, offset: 256)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !128, file: !4, line: 439, baseType: !99, size: 64, offset: 320)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !128, file: !4, line: 440, baseType: !127, size: 64, offset: 384)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !128, file: !4, line: 441, baseType: !127, size: 64, offset: 448)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !128, file: !4, line: 442, baseType: !111, size: 64, offset: 512)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !128, file: !4, line: 443, baseType: !113, size: 64, offset: 576)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !128, file: !4, line: 444, baseType: !141, size: 32, offset: 640)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !128, file: !4, line: 445, baseType: !66, size: 64, offset: 704)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !100, file: !4, line: 507, baseType: !113, size: 64, offset: 768)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !100, file: !4, line: 508, baseType: !66, size: 64, offset: 832)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !100, file: !4, line: 509, baseType: !146, size: 16, offset: 896)
!146 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !100, file: !4, line: 510, baseType: !146, size: 16, offset: 912)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !90, file: !4, line: 564, baseType: !99, size: 64, offset: 256)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !90, file: !4, line: 565, baseType: !99, size: 64, offset: 320)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !90, file: !4, line: 566, baseType: !99, size: 64, offset: 384)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !90, file: !4, line: 567, baseType: !99, size: 64, offset: 448)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !90, file: !4, line: 568, baseType: !111, size: 64, offset: 512)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !90, file: !4, line: 571, baseType: !84, size: 32, offset: 576)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !90, file: !4, line: 572, baseType: !84, size: 32, offset: 608)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !90, file: !4, line: 578, baseType: !156, size: 64, offset: 640)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !158)
!158 = !{!159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !157, file: !4, line: 406, baseType: !66, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !157, file: !4, line: 407, baseType: !94, size: 32, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !157, file: !4, line: 408, baseType: !71, size: 64, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !157, file: !4, line: 409, baseType: !99, size: 64, offset: 192)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !157, file: !4, line: 410, baseType: !99, size: 64, offset: 256)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !157, file: !4, line: 411, baseType: !111, size: 64, offset: 320)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !157, file: !4, line: 412, baseType: !99, size: 64, offset: 384)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !157, file: !4, line: 413, baseType: !99, size: 64, offset: 448)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !157, file: !4, line: 414, baseType: !111, size: 64, offset: 512)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !157, file: !4, line: 417, baseType: !66, size: 64, offset: 576)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !157, file: !4, line: 418, baseType: !66, size: 64, offset: 640)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !157, file: !4, line: 419, baseType: !66, size: 64, offset: 704)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !157, file: !4, line: 420, baseType: !66, size: 64, offset: 768)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !157, file: !4, line: 421, baseType: !71, size: 64, offset: 832)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !157, file: !4, line: 422, baseType: !71, size: 64, offset: 896)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !157, file: !4, line: 423, baseType: !66, size: 64, offset: 960)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !90, file: !4, line: 579, baseType: !156, size: 64, offset: 704)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !90, file: !4, line: 580, baseType: !118, size: 64, offset: 768)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !90, file: !4, line: 581, baseType: !71, size: 64, offset: 832)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !90, file: !4, line: 582, baseType: !71, size: 64, offset: 896)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !90, file: !4, line: 583, baseType: !66, size: 64, offset: 960)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !90, file: !4, line: 584, baseType: !66, size: 64, offset: 1024)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !90, file: !4, line: 585, baseType: !71, size: 64, offset: 1088)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !90, file: !4, line: 586, baseType: !84, size: 32, offset: 1152)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !90, file: !4, line: 588, baseType: !184, size: 64, offset: 1216)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !186, line: 24, flags: DIFlagFwdDecl)
!186 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!187 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !90, file: !4, line: 589, baseType: !66, size: 64, offset: 1280)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !90, file: !4, line: 590, baseType: !84, size: 32, offset: 1344)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !90, file: !4, line: 592, baseType: !84, size: 32, offset: 1376)
!190 = !DILocation(line: 10, column: 15, scope: !81)
!191 = !DILocalVariable(name: "ctxt", scope: !81, file: !1, line: 11, type: !192)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlValidCtxtPtr", file: !193, line: 81, baseType: !194)
!193 = !DIFile(filename: "/usr/include/libxml2/libxml/valid.h", directory: "", checksumkind: CSK_MD5, checksum: "3c082c0a5b81e1bc9fd9a21b69014584")
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlValidCtxt", file: !193, line: 80, baseType: !196)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlValidCtxt", file: !193, line: 82, size: 896, elements: !197)
!197 = !{!198, !199, !206, !208, !212, !213, !214, !216, !217, !218, !219, !223, !224, !225, !226, !232}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !196, file: !193, line: 83, baseType: !66, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !196, file: !193, line: 84, baseType: !200, size: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlValidityErrorFunc", file: !193, line: 42, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{null, !66, !204, null}
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "warning", scope: !196, file: !193, line: 85, baseType: !207, size: 64, offset: 128)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlValidityWarningFunc", file: !193, line: 57, baseType: !201)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !196, file: !193, line: 88, baseType: !209, size: 64, offset: 192)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !4, line: 491, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !4, line: 490, baseType: !100)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "nodeNr", scope: !196, file: !193, line: 89, baseType: !84, size: 32, offset: 256)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "nodeMax", scope: !196, file: !193, line: 90, baseType: !84, size: 32, offset: 288)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !196, file: !193, line: 91, baseType: !215, size: 64, offset: 320)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "finishDtd", scope: !196, file: !193, line: 93, baseType: !5, size: 32, offset: 384)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !196, file: !193, line: 94, baseType: !87, size: 64, offset: 448)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !196, file: !193, line: 95, baseType: !84, size: 32, offset: 512)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "vstate", scope: !196, file: !193, line: 98, baseType: !220, size: 64, offset: 576)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlValidState", file: !193, line: 28, baseType: !222)
!222 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlValidState", file: !193, line: 28, flags: DIFlagFwdDecl)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "vstateNr", scope: !196, file: !193, line: 99, baseType: !84, size: 32, offset: 640)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "vstateMax", scope: !196, file: !193, line: 100, baseType: !84, size: 32, offset: 672)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "vstateTab", scope: !196, file: !193, line: 101, baseType: !220, size: 64, offset: 704)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "am", scope: !196, file: !193, line: 104, baseType: !227, size: 64, offset: 768)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAutomataPtr", file: !228, line: 30, baseType: !229)
!228 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlautomata.h", directory: "", checksumkind: CSK_MD5, checksum: "3c3c0a7d353bacfbede7c2decf27e62a")
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAutomata", file: !228, line: 29, baseType: !231)
!231 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAutomata", file: !228, line: 29, flags: DIFlagFwdDecl)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !196, file: !193, line: 105, baseType: !233, size: 64, offset: 832)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAutomataStatePtr", file: !228, line: 38, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAutomataState", file: !228, line: 37, baseType: !236)
!236 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAutomataState", file: !228, line: 37, flags: DIFlagFwdDecl)
!237 = !DILocation(line: 11, column: 21, scope: !81)
!238 = !DILocalVariable(name: "table", scope: !81, file: !1, line: 12, type: !239)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementTablePtr", file: !193, line: 126, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementTable", file: !193, line: 125, baseType: !242)
!242 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlHashTable", file: !243, line: 21, flags: DIFlagFwdDecl)
!243 = !DIFile(filename: "/usr/include/libxml2/libxml/hash.h", directory: "", checksumkind: CSK_MD5, checksum: "af6927d60ab5a971b68a65626d903bb2")
!244 = !DILocation(line: 12, column: 24, scope: !81)
!245 = !DILocalVariable(name: "name", scope: !81, file: !1, line: 13, type: !71)
!246 = !DILocation(line: 13, column: 20, scope: !81)
!247 = !DILocalVariable(name: "prefix", scope: !81, file: !1, line: 14, type: !71)
!248 = !DILocation(line: 14, column: 20, scope: !81)
!249 = !DILocalVariable(name: "create", scope: !81, file: !1, line: 15, type: !84)
!250 = !DILocation(line: 15, column: 9, scope: !81)
!251 = !DILocation(line: 18, column: 5, scope: !81)
!252 = !DILocation(line: 21, column: 12, scope: !81)
!253 = !DILocation(line: 21, column: 10, scope: !81)
!254 = !DILocation(line: 22, column: 9, scope: !255)
!255 = distinct !DILexicalBlock(scope: !81, file: !1, line: 22, column: 9)
!256 = !DILocation(line: 22, column: 14, scope: !255)
!257 = !DILocation(line: 22, column: 9, scope: !81)
!258 = !DILocation(line: 23, column: 9, scope: !259)
!259 = distinct !DILexicalBlock(scope: !255, file: !1, line: 22, column: 23)
!260 = !DILocation(line: 27, column: 11, scope: !81)
!261 = !DILocation(line: 27, column: 9, scope: !81)
!262 = !DILocation(line: 28, column: 9, scope: !263)
!263 = distinct !DILexicalBlock(scope: !81, file: !1, line: 28, column: 9)
!264 = !DILocation(line: 28, column: 13, scope: !263)
!265 = !DILocation(line: 28, column: 9, scope: !81)
!266 = !DILocation(line: 29, column: 26, scope: !267)
!267 = distinct !DILexicalBlock(scope: !263, file: !1, line: 28, column: 22)
!268 = !DILocation(line: 29, column: 9, scope: !267)
!269 = !DILocation(line: 30, column: 9, scope: !267)
!270 = !DILocation(line: 34, column: 9, scope: !271)
!271 = distinct !DILexicalBlock(scope: !81, file: !1, line: 34, column: 9)
!272 = !DILocation(line: 34, column: 14, scope: !271)
!273 = !DILocation(line: 34, column: 24, scope: !271)
!274 = !DILocation(line: 34, column: 9, scope: !81)
!275 = !DILocation(line: 35, column: 45, scope: !276)
!276 = distinct !DILexicalBlock(scope: !271, file: !1, line: 34, column: 33)
!277 = !DILocation(line: 35, column: 26, scope: !276)
!278 = !DILocation(line: 35, column: 9, scope: !276)
!279 = !DILocation(line: 35, column: 14, scope: !276)
!280 = !DILocation(line: 35, column: 24, scope: !276)
!281 = !DILocation(line: 36, column: 13, scope: !282)
!282 = distinct !DILexicalBlock(scope: !276, file: !1, line: 36, column: 13)
!283 = !DILocation(line: 36, column: 18, scope: !282)
!284 = !DILocation(line: 36, column: 28, scope: !282)
!285 = !DILocation(line: 36, column: 13, scope: !276)
!286 = !DILocation(line: 37, column: 24, scope: !287)
!287 = distinct !DILexicalBlock(scope: !282, file: !1, line: 36, column: 37)
!288 = !DILocation(line: 37, column: 13, scope: !287)
!289 = !DILocation(line: 38, column: 30, scope: !287)
!290 = !DILocation(line: 38, column: 13, scope: !287)
!291 = !DILocation(line: 39, column: 13, scope: !287)
!292 = !DILocation(line: 41, column: 5, scope: !276)
!293 = !DILocation(line: 42, column: 15, scope: !81)
!294 = !DILocation(line: 42, column: 20, scope: !81)
!295 = !DILocation(line: 42, column: 31, scope: !81)
!296 = !DILocation(line: 42, column: 13, scope: !81)
!297 = !DILocation(line: 42, column: 11, scope: !81)
!298 = !DILocalVariable(name: "name_buf", scope: !81, file: !1, line: 45, type: !299)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 800, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 100)
!302 = !DILocation(line: 45, column: 10, scope: !81)
!303 = !DILocalVariable(name: "prefix_buf", scope: !81, file: !1, line: 46, type: !299)
!304 = !DILocation(line: 46, column: 10, scope: !81)
!305 = !DILocation(line: 47, column: 24, scope: !81)
!306 = !DILocation(line: 47, column: 5, scope: !81)
!307 = !DILocation(line: 48, column: 24, scope: !81)
!308 = !DILocation(line: 48, column: 5, scope: !81)
!309 = !DILocation(line: 50, column: 5, scope: !81)
!310 = !DILocation(line: 50, column: 34, scope: !81)
!311 = !DILocation(line: 51, column: 5, scope: !81)
!312 = !DILocation(line: 51, column: 38, scope: !81)
!313 = !DILocation(line: 52, column: 29, scope: !81)
!314 = !DILocation(line: 52, column: 10, scope: !81)
!315 = !DILocation(line: 53, column: 31, scope: !81)
!316 = !DILocation(line: 53, column: 12, scope: !81)
!317 = !DILocalVariable(name: "result", scope: !81, file: !1, line: 56, type: !318)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementPtr", file: !4, line: 345, baseType: !319)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElement", file: !4, line: 344, baseType: !321)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlElement", file: !4, line: 346, size: 896, elements: !322)
!322 = !{!323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !334, !350, !382, !383}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !321, file: !4, line: 347, baseType: !66, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !321, file: !4, line: 348, baseType: !94, size: 32, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !321, file: !4, line: 349, baseType: !71, size: 64, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !321, file: !4, line: 350, baseType: !99, size: 64, offset: 192)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !321, file: !4, line: 351, baseType: !99, size: 64, offset: 256)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !321, file: !4, line: 352, baseType: !156, size: 64, offset: 320)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !321, file: !4, line: 353, baseType: !99, size: 64, offset: 384)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !321, file: !4, line: 354, baseType: !99, size: 64, offset: 448)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !321, file: !4, line: 355, baseType: !111, size: 64, offset: 512)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "etype", scope: !321, file: !4, line: 357, baseType: !333, size: 32, offset: 576)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementTypeVal", file: !4, line: 328, baseType: !40)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !321, file: !4, line: 358, baseType: !335, size: 64, offset: 640)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContentPtr", file: !4, line: 305, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContent", file: !4, line: 304, baseType: !338)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlElementContent", file: !4, line: 306, size: 384, elements: !339)
!339 = !{!340, !342, !344, !345, !347, !348, !349}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !338, file: !4, line: 307, baseType: !341, size: 32)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContentType", file: !4, line: 283, baseType: !47)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "ocur", scope: !338, file: !4, line: 308, baseType: !343, size: 32, offset: 32)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContentOccur", file: !4, line: 295, baseType: !53)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !338, file: !4, line: 309, baseType: !71, size: 64, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "c1", scope: !338, file: !4, line: 310, baseType: !346, size: 64, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "c2", scope: !338, file: !4, line: 311, baseType: !346, size: 64, offset: 192)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !338, file: !4, line: 312, baseType: !346, size: 64, offset: 256)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !338, file: !4, line: 313, baseType: !71, size: 64, offset: 320)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !321, file: !4, line: 359, baseType: !351, size: 64, offset: 704)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributePtr", file: !4, line: 252, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttribute", file: !4, line: 251, baseType: !354)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttribute", file: !4, line: 253, size: 960, elements: !355)
!355 = !{!356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !367, !368, !370, !371, !380, !381}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !354, file: !4, line: 254, baseType: !66, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !354, file: !4, line: 255, baseType: !94, size: 32, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !354, file: !4, line: 256, baseType: !71, size: 64, offset: 128)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !354, file: !4, line: 257, baseType: !99, size: 64, offset: 192)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !354, file: !4, line: 258, baseType: !99, size: 64, offset: 256)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !354, file: !4, line: 259, baseType: !156, size: 64, offset: 320)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !354, file: !4, line: 260, baseType: !99, size: 64, offset: 384)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !354, file: !4, line: 261, baseType: !99, size: 64, offset: 448)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !354, file: !4, line: 262, baseType: !111, size: 64, offset: 512)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "nexth", scope: !354, file: !4, line: 264, baseType: !366, size: 64, offset: 576)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !354, file: !4, line: 265, baseType: !141, size: 32, offset: 640)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !354, file: !4, line: 266, baseType: !369, size: 32, offset: 672)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeDefault", file: !4, line: 230, baseType: !59)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "defaultValue", scope: !354, file: !4, line: 267, baseType: !71, size: 64, offset: 704)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !354, file: !4, line: 268, baseType: !372, size: 64, offset: 768)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEnumerationPtr", file: !4, line: 239, baseType: !373)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEnumeration", file: !4, line: 238, baseType: !375)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlEnumeration", file: !4, line: 240, size: 128, elements: !376)
!376 = !{!377, !379}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !375, file: !4, line: 241, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !375, file: !4, line: 242, baseType: !71, size: 64, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !354, file: !4, line: 269, baseType: !71, size: 64, offset: 832)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !354, file: !4, line: 270, baseType: !71, size: 64, offset: 896)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !321, file: !4, line: 360, baseType: !71, size: 64, offset: 768)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "contModel", scope: !321, file: !4, line: 362, baseType: !384, size: 64, offset: 832)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegexpPtr", file: !385, line: 29, baseType: !386)
!385 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlregexp.h", directory: "", checksumkind: CSK_MD5, checksum: "fea3110c96e8cd9013900e1c8e5b6c0b")
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegexp", file: !385, line: 28, baseType: !388)
!388 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegexp", file: !385, line: 28, flags: DIFlagFwdDecl)
!389 = !DILocation(line: 56, column: 19, scope: !81)
!390 = !DILocation(line: 56, column: 46, scope: !81)
!391 = !DILocation(line: 56, column: 52, scope: !81)
!392 = !DILocation(line: 56, column: 59, scope: !81)
!393 = !DILocation(line: 56, column: 65, scope: !81)
!394 = !DILocation(line: 56, column: 28, scope: !81)
!395 = !DILocation(line: 62, column: 9, scope: !396)
!396 = distinct !DILexicalBlock(scope: !81, file: !1, line: 62, column: 9)
!397 = !DILocation(line: 62, column: 16, scope: !396)
!398 = !DILocation(line: 62, column: 9, scope: !81)
!399 = !DILocation(line: 66, column: 9, scope: !400)
!400 = distinct !DILexicalBlock(scope: !396, file: !1, line: 62, column: 25)
!401 = !DILocation(line: 67, column: 5, scope: !400)
!402 = !DILocation(line: 70, column: 16, scope: !81)
!403 = !DILocation(line: 70, column: 5, scope: !81)
!404 = !DILocation(line: 71, column: 22, scope: !81)
!405 = !DILocation(line: 71, column: 5, scope: !81)
!406 = !DILocation(line: 72, column: 5, scope: !81)
!407 = !DILocation(line: 74, column: 5, scope: !81)
!408 = !DILocation(line: 75, column: 1, scope: !81)

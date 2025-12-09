; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/314_xmlschemastypes.c_3892_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/314_xmlschemastypes.c_3892_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaParserCtxt = type opaque
%struct._xmlSchema = type { i8*, i8*, i8*, i8*, %struct._xmlDoc*, %struct._xmlSchemaAnnot*, i32, %struct._xmlHashTable*, %struct._xmlHashTable*, %struct._xmlHashTable*, %struct._xmlHashTable*, %struct._xmlHashTable*, %struct._xmlHashTable*, i8*, %struct._xmlHashTable*, %struct._xmlDict*, i8*, i32, i32, %struct._xmlHashTable*, i8* }
%struct._xmlDoc = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, i32, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlNs*, i8*, i8*, i8*, i8*, i8*, i32, %struct._xmlDict*, i8*, i32, i32 }
%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i8*, i16, i16 }
%struct._xmlAttr = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlAttr*, %struct._xmlAttr*, %struct._xmlDoc*, %struct._xmlNs*, i32, i8* }
%struct._xmlDtd = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._xmlNs = type { %struct._xmlNs*, i32, i8*, i8*, i8*, %struct._xmlDoc* }
%struct._xmlSchemaAnnot = type { %struct._xmlSchemaAnnot*, %struct._xmlNode* }
%struct._xmlDict = type opaque
%struct._xmlHashTable = type opaque
%struct._xmlSchemaVal = type opaque

@__const.main.schemaDoc = private unnamed_addr constant [136 x i8] c"<?xml version=\221.0\22?>\0A<xs:schema xmlns:xs=\22http://www.w3.org/2001/XMLSchema\22>\0A  <xs:element name=\22root\22 type=\22xs:string\22/>\0A</xs:schema>\00", align 16
@.str = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [114 x i8] c"se_runs/sa_llm/libxml2_62911_vul/314_xmlschemastypes.c_3892_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !106 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlSchemaParserCtxt*, align 8
  %3 = alloca %struct._xmlSchema*, align 8
  %4 = alloca %struct._xmlSchemaVal*, align 8
  %5 = alloca %struct._xmlSchemaVal*, align 8
  %6 = alloca [136 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaParserCtxt** %2, metadata !111, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.declare(metadata %struct._xmlSchema** %3, metadata !118, metadata !DIExpression()), !dbg !269
  store %struct._xmlSchema* null, %struct._xmlSchema** %3, align 8, !dbg !269
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaVal** %4, metadata !270, metadata !DIExpression()), !dbg !275
  store %struct._xmlSchemaVal* null, %struct._xmlSchemaVal** %4, align 8, !dbg !275
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaVal** %5, metadata !276, metadata !DIExpression()), !dbg !277
  store %struct._xmlSchemaVal* null, %struct._xmlSchemaVal** %5, align 8, !dbg !277
  call void @xmlInitParser(), !dbg !278
  call void @llvm.dbg.declare(metadata [136 x i8]* %6, metadata !279, metadata !DIExpression()), !dbg !283
  %7 = bitcast [136 x i8]* %6 to i8*, !dbg !283
  %8 = call i8* @memcpy(i8* %7, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @__const.main.schemaDoc, i32 0, i32 0), i64 136), !dbg !283
  %9 = getelementptr inbounds [136 x i8], [136 x i8]* %6, i64 0, i64 0, !dbg !284
  %10 = getelementptr inbounds [136 x i8], [136 x i8]* %6, i64 0, i64 0, !dbg !285
  %11 = call i64 @strlen(i8* noundef %10) #7, !dbg !286
  %12 = trunc i64 %11 to i32, !dbg !286
  %13 = call %struct._xmlSchemaParserCtxt* @xmlSchemaNewMemParserCtxt(i8* noundef %9, i32 noundef %12), !dbg !287
  store %struct._xmlSchemaParserCtxt* %13, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !288
  %14 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !289
  %15 = icmp eq %struct._xmlSchemaParserCtxt* %14, null, !dbg !291
  br i1 %15, label %16, label %17, !dbg !292

16:                                               ; preds = %0
  call void @xmlCleanupParser(), !dbg !293
  store i32 0, i32* %1, align 4, !dbg !295
  br label %41, !dbg !295

17:                                               ; preds = %0
  %18 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !296
  %19 = call %struct._xmlSchema* @xmlSchemaParse(%struct._xmlSchemaParserCtxt* noundef %18), !dbg !297
  store %struct._xmlSchema* %19, %struct._xmlSchema** %3, align 8, !dbg !298
  %20 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !299
  call void @xmlSchemaFreeParserCtxt(%struct._xmlSchemaParserCtxt* noundef %20), !dbg !300
  %21 = load %struct._xmlSchema*, %struct._xmlSchema** %3, align 8, !dbg !301
  %22 = icmp eq %struct._xmlSchema* %21, null, !dbg !303
  br i1 %22, label %23, label %24, !dbg !304

23:                                               ; preds = %17
  call void @xmlCleanupParser(), !dbg !305
  store i32 0, i32* %1, align 4, !dbg !307
  br label %41, !dbg !307

24:                                               ; preds = %17
  %25 = call %struct._xmlSchemaVal* @xmlSchemaNewStringValue(i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !308
  store %struct._xmlSchemaVal* %25, %struct._xmlSchemaVal** %4, align 8, !dbg !309
  %26 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %4, align 8, !dbg !310
  %27 = icmp eq %struct._xmlSchemaVal* %26, null, !dbg !312
  br i1 %27, label %28, label %30, !dbg !313

28:                                               ; preds = %24
  %29 = load %struct._xmlSchema*, %struct._xmlSchema** %3, align 8, !dbg !314
  call void @xmlSchemaFree(%struct._xmlSchema* noundef %29), !dbg !316
  call void @xmlCleanupParser(), !dbg !317
  store i32 0, i32* %1, align 4, !dbg !318
  br label %41, !dbg !318

30:                                               ; preds = %24
  %31 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %4, align 8, !dbg !319
  %32 = call %struct._xmlSchemaVal* @xmlSchemaCopyValue(%struct._xmlSchemaVal* noundef %31), !dbg !320
  store %struct._xmlSchemaVal* %32, %struct._xmlSchemaVal** %5, align 8, !dbg !321
  %33 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %5, align 8, !dbg !322
  %34 = icmp ne %struct._xmlSchemaVal* %33, null, !dbg !324
  br i1 %34, label %35, label %38, !dbg !325

35:                                               ; preds = %30
  %36 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([114 x i8], [114 x i8]* @.str.2, i64 0, i64 0), i32 noundef 49, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !326
  %37 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %5, align 8, !dbg !328
  call void @xmlSchemaFreeValue(%struct._xmlSchemaVal* noundef %37), !dbg !329
  br label %38, !dbg !330

38:                                               ; preds = %35, %30
  %39 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %4, align 8, !dbg !331
  call void @xmlSchemaFreeValue(%struct._xmlSchemaVal* noundef %39), !dbg !332
  %40 = load %struct._xmlSchema*, %struct._xmlSchema** %3, align 8, !dbg !333
  call void @xmlSchemaFree(%struct._xmlSchema* noundef %40), !dbg !334
  call void @xmlCleanupParser(), !dbg !335
  store i32 0, i32* %1, align 4, !dbg !336
  br label %41, !dbg !336

41:                                               ; preds = %38, %28, %23, %16
  %42 = load i32, i32* %1, align 4, !dbg !337
  ret i32 %42, !dbg !337
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @xmlInitParser() #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare %struct._xmlSchemaParserCtxt* @xmlSchemaNewMemParserCtxt(i8* noundef, i32 noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #4

declare void @xmlCleanupParser() #2

declare %struct._xmlSchema* @xmlSchemaParse(%struct._xmlSchemaParserCtxt* noundef) #2

declare void @xmlSchemaFreeParserCtxt(%struct._xmlSchemaParserCtxt* noundef) #2

declare %struct._xmlSchemaVal* @xmlSchemaNewStringValue(i32 noundef, i8* noundef) #2

declare void @xmlSchemaFree(%struct._xmlSchema* noundef) #2

declare %struct._xmlSchemaVal* @xmlSchemaCopyValue(%struct._xmlSchemaVal* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

declare void @xmlSchemaFreeValue(%struct._xmlSchemaVal* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !338 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !347, metadata !DIExpression()), !dbg !348
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !349, metadata !DIExpression()), !dbg !350
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !351, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.declare(metadata i8** %7, metadata !353, metadata !DIExpression()), !dbg !354
  %9 = load i8*, i8** %4, align 8, !dbg !355
  store i8* %9, i8** %7, align 8, !dbg !354
  call void @llvm.dbg.declare(metadata i8** %8, metadata !356, metadata !DIExpression()), !dbg !359
  %10 = load i8*, i8** %5, align 8, !dbg !360
  store i8* %10, i8** %8, align 8, !dbg !359
  br label %11, !dbg !361

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !362
  %13 = add i64 %12, -1, !dbg !362
  store i64 %13, i64* %6, align 8, !dbg !362
  %14 = icmp ugt i64 %12, 0, !dbg !363
  br i1 %14, label %15, label %21, !dbg !361

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !364
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !364
  store i8* %17, i8** %8, align 8, !dbg !364
  %18 = load i8, i8* %16, align 1, !dbg !365
  %19 = load i8*, i8** %7, align 8, !dbg !366
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !366
  store i8* %20, i8** %7, align 8, !dbg !366
  store i8 %18, i8* %19, align 1, !dbg !367
  br label %11, !dbg !361, !llvm.loop !368

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !370
  ret i8* %22, !dbg !371
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !96}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105, !105}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !90, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/314_xmlschemastypes.c_3892_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "77bb08796db93a84bd8577db51d553bc")
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
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !41, line: 29, baseType: !5, size: 32, elements: !42)
!41 = !DIFile(filename: "/usr/include/libxml2/libxml/schemasInternals.h", directory: "", checksumkind: CSK_MD5, checksum: "5072dee68b3423ac6f13185b984cc325")
!42 = !{!43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89}
!43 = !DIEnumerator(name: "XML_SCHEMAS_UNKNOWN", value: 0)
!44 = !DIEnumerator(name: "XML_SCHEMAS_STRING", value: 1)
!45 = !DIEnumerator(name: "XML_SCHEMAS_NORMSTRING", value: 2)
!46 = !DIEnumerator(name: "XML_SCHEMAS_DECIMAL", value: 3)
!47 = !DIEnumerator(name: "XML_SCHEMAS_TIME", value: 4)
!48 = !DIEnumerator(name: "XML_SCHEMAS_GDAY", value: 5)
!49 = !DIEnumerator(name: "XML_SCHEMAS_GMONTH", value: 6)
!50 = !DIEnumerator(name: "XML_SCHEMAS_GMONTHDAY", value: 7)
!51 = !DIEnumerator(name: "XML_SCHEMAS_GYEAR", value: 8)
!52 = !DIEnumerator(name: "XML_SCHEMAS_GYEARMONTH", value: 9)
!53 = !DIEnumerator(name: "XML_SCHEMAS_DATE", value: 10)
!54 = !DIEnumerator(name: "XML_SCHEMAS_DATETIME", value: 11)
!55 = !DIEnumerator(name: "XML_SCHEMAS_DURATION", value: 12)
!56 = !DIEnumerator(name: "XML_SCHEMAS_FLOAT", value: 13)
!57 = !DIEnumerator(name: "XML_SCHEMAS_DOUBLE", value: 14)
!58 = !DIEnumerator(name: "XML_SCHEMAS_BOOLEAN", value: 15)
!59 = !DIEnumerator(name: "XML_SCHEMAS_TOKEN", value: 16)
!60 = !DIEnumerator(name: "XML_SCHEMAS_LANGUAGE", value: 17)
!61 = !DIEnumerator(name: "XML_SCHEMAS_NMTOKEN", value: 18)
!62 = !DIEnumerator(name: "XML_SCHEMAS_NMTOKENS", value: 19)
!63 = !DIEnumerator(name: "XML_SCHEMAS_NAME", value: 20)
!64 = !DIEnumerator(name: "XML_SCHEMAS_QNAME", value: 21)
!65 = !DIEnumerator(name: "XML_SCHEMAS_NCNAME", value: 22)
!66 = !DIEnumerator(name: "XML_SCHEMAS_ID", value: 23)
!67 = !DIEnumerator(name: "XML_SCHEMAS_IDREF", value: 24)
!68 = !DIEnumerator(name: "XML_SCHEMAS_IDREFS", value: 25)
!69 = !DIEnumerator(name: "XML_SCHEMAS_ENTITY", value: 26)
!70 = !DIEnumerator(name: "XML_SCHEMAS_ENTITIES", value: 27)
!71 = !DIEnumerator(name: "XML_SCHEMAS_NOTATION", value: 28)
!72 = !DIEnumerator(name: "XML_SCHEMAS_ANYURI", value: 29)
!73 = !DIEnumerator(name: "XML_SCHEMAS_INTEGER", value: 30)
!74 = !DIEnumerator(name: "XML_SCHEMAS_NPINTEGER", value: 31)
!75 = !DIEnumerator(name: "XML_SCHEMAS_NINTEGER", value: 32)
!76 = !DIEnumerator(name: "XML_SCHEMAS_NNINTEGER", value: 33)
!77 = !DIEnumerator(name: "XML_SCHEMAS_PINTEGER", value: 34)
!78 = !DIEnumerator(name: "XML_SCHEMAS_INT", value: 35)
!79 = !DIEnumerator(name: "XML_SCHEMAS_UINT", value: 36)
!80 = !DIEnumerator(name: "XML_SCHEMAS_LONG", value: 37)
!81 = !DIEnumerator(name: "XML_SCHEMAS_ULONG", value: 38)
!82 = !DIEnumerator(name: "XML_SCHEMAS_SHORT", value: 39)
!83 = !DIEnumerator(name: "XML_SCHEMAS_USHORT", value: 40)
!84 = !DIEnumerator(name: "XML_SCHEMAS_BYTE", value: 41)
!85 = !DIEnumerator(name: "XML_SCHEMAS_UBYTE", value: 42)
!86 = !DIEnumerator(name: "XML_SCHEMAS_HEXBINARY", value: 43)
!87 = !DIEnumerator(name: "XML_SCHEMAS_BASE64BINARY", value: 44)
!88 = !DIEnumerator(name: "XML_SCHEMAS_ANYTYPE", value: 45)
!89 = !DIEnumerator(name: "XML_SCHEMAS_ANYSIMPLETYPE", value: 46)
!90 = !{!91, !92}
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !94, line: 28, baseType: !95)
!94 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!95 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!96 = distinct !DICompileUnit(language: DW_LANG_C99, file: !97, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!97 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!98 = !{i32 7, !"Dwarf Version", i32 5}
!99 = !{i32 2, !"Debug Info Version", i32 3}
!100 = !{i32 1, !"wchar_size", i32 4}
!101 = !{i32 7, !"PIC Level", i32 2}
!102 = !{i32 7, !"PIE Level", i32 2}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"Ubuntu clang version 14.0.6"}
!106 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 6, type: !107, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !110)
!107 = !DISubroutineType(types: !108)
!108 = !{!109}
!109 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!110 = !{}
!111 = !DILocalVariable(name: "parserCtxt", scope: !106, file: !1, line: 7, type: !112)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaParserCtxtPtr", file: !113, line: 113, baseType: !114)
!113 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlschemas.h", directory: "", checksumkind: CSK_MD5, checksum: "c087d0e891d6909b14966bccde02fcfc")
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaParserCtxt", file: !113, line: 112, baseType: !116)
!116 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaParserCtxt", file: !113, line: 112, flags: DIFlagFwdDecl)
!117 = !DILocation(line: 7, column: 28, scope: !106)
!118 = !DILocalVariable(name: "schema", scope: !106, file: !1, line: 8, type: !119)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaPtr", file: !113, line: 85, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchema", file: !113, line: 84, baseType: !122)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchema", file: !41, line: 923, size: 1280, elements: !123)
!123 = !{!124, !127, !128, !129, !130, !234, !246, !247, !253, !254, !255, !256, !257, !258, !259, !260, !264, !265, !266, !267, !268}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !122, file: !41, line: 924, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "targetNamespace", scope: !122, file: !41, line: 925, baseType: !125, size: 64, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !122, file: !41, line: 926, baseType: !125, size: 64, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !122, file: !41, line: 927, baseType: !125, size: 64, offset: 192)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !122, file: !41, line: 928, baseType: !131, size: 64, offset: 256)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !134)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !135)
!135 = !{!136, !137, !139, !142, !192, !193, !194, !195, !196, !197, !198, !199, !219, !220, !221, !222, !223, !224, !225, !226, !227, !231, !232, !233}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !134, file: !4, line: 560, baseType: !91, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !134, file: !4, line: 561, baseType: !138, size: 32, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !134, file: !4, line: 562, baseType: !140, size: 64, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !134, file: !4, line: 563, baseType: !143, size: 64, offset: 192)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !145)
!145 = !{!146, !147, !148, !149, !150, !151, !152, !153, !154, !156, !169, !170, !187, !188, !189, !191}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !144, file: !4, line: 493, baseType: !91, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !144, file: !4, line: 494, baseType: !138, size: 32, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !144, file: !4, line: 495, baseType: !125, size: 64, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !144, file: !4, line: 496, baseType: !143, size: 64, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !144, file: !4, line: 497, baseType: !143, size: 64, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !144, file: !4, line: 498, baseType: !143, size: 64, offset: 320)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !144, file: !4, line: 499, baseType: !143, size: 64, offset: 384)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !144, file: !4, line: 500, baseType: !143, size: 64, offset: 448)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !144, file: !4, line: 501, baseType: !155, size: 64, offset: 512)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !144, file: !4, line: 504, baseType: !157, size: 64, offset: 576)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !159)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !160)
!160 = !{!161, !163, !165, !166, !167, !168}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !159, file: !4, line: 389, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !159, file: !4, line: 390, baseType: !164, size: 32, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !138)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !159, file: !4, line: 391, baseType: !125, size: 64, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !159, file: !4, line: 392, baseType: !125, size: 64, offset: 192)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !159, file: !4, line: 393, baseType: !91, size: 64, offset: 256)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !159, file: !4, line: 394, baseType: !155, size: 64, offset: 320)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !144, file: !4, line: 505, baseType: !92, size: 64, offset: 640)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !144, file: !4, line: 506, baseType: !171, size: 64, offset: 704)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !173)
!173 = !{!174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !186}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !172, file: !4, line: 434, baseType: !91, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !172, file: !4, line: 435, baseType: !138, size: 32, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !172, file: !4, line: 436, baseType: !125, size: 64, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !172, file: !4, line: 437, baseType: !143, size: 64, offset: 192)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !172, file: !4, line: 438, baseType: !143, size: 64, offset: 256)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !172, file: !4, line: 439, baseType: !143, size: 64, offset: 320)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !172, file: !4, line: 440, baseType: !171, size: 64, offset: 384)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !172, file: !4, line: 441, baseType: !171, size: 64, offset: 448)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !172, file: !4, line: 442, baseType: !155, size: 64, offset: 512)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !172, file: !4, line: 443, baseType: !157, size: 64, offset: 576)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !172, file: !4, line: 444, baseType: !185, size: 32, offset: 640)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !172, file: !4, line: 445, baseType: !91, size: 64, offset: 704)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !144, file: !4, line: 507, baseType: !157, size: 64, offset: 768)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !144, file: !4, line: 508, baseType: !91, size: 64, offset: 832)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !144, file: !4, line: 509, baseType: !190, size: 16, offset: 896)
!190 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !144, file: !4, line: 510, baseType: !190, size: 16, offset: 912)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !134, file: !4, line: 564, baseType: !143, size: 64, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !134, file: !4, line: 565, baseType: !143, size: 64, offset: 320)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !134, file: !4, line: 566, baseType: !143, size: 64, offset: 384)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !134, file: !4, line: 567, baseType: !143, size: 64, offset: 448)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !134, file: !4, line: 568, baseType: !155, size: 64, offset: 512)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !134, file: !4, line: 571, baseType: !109, size: 32, offset: 576)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !134, file: !4, line: 572, baseType: !109, size: 32, offset: 608)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !134, file: !4, line: 578, baseType: !200, size: 64, offset: 640)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !202)
!202 = !{!203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !201, file: !4, line: 406, baseType: !91, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !201, file: !4, line: 407, baseType: !138, size: 32, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !201, file: !4, line: 408, baseType: !125, size: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !201, file: !4, line: 409, baseType: !143, size: 64, offset: 192)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !201, file: !4, line: 410, baseType: !143, size: 64, offset: 256)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !201, file: !4, line: 411, baseType: !155, size: 64, offset: 320)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !201, file: !4, line: 412, baseType: !143, size: 64, offset: 384)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !201, file: !4, line: 413, baseType: !143, size: 64, offset: 448)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !201, file: !4, line: 414, baseType: !155, size: 64, offset: 512)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !201, file: !4, line: 417, baseType: !91, size: 64, offset: 576)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !201, file: !4, line: 418, baseType: !91, size: 64, offset: 640)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !201, file: !4, line: 419, baseType: !91, size: 64, offset: 704)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !201, file: !4, line: 420, baseType: !91, size: 64, offset: 768)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !201, file: !4, line: 421, baseType: !125, size: 64, offset: 832)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !201, file: !4, line: 422, baseType: !125, size: 64, offset: 896)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !201, file: !4, line: 423, baseType: !91, size: 64, offset: 960)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !134, file: !4, line: 579, baseType: !200, size: 64, offset: 704)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !134, file: !4, line: 580, baseType: !162, size: 64, offset: 768)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !134, file: !4, line: 581, baseType: !125, size: 64, offset: 832)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !134, file: !4, line: 582, baseType: !125, size: 64, offset: 896)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !134, file: !4, line: 583, baseType: !91, size: 64, offset: 960)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !134, file: !4, line: 584, baseType: !91, size: 64, offset: 1024)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !134, file: !4, line: 585, baseType: !125, size: 64, offset: 1088)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !134, file: !4, line: 586, baseType: !109, size: 32, offset: 1152)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !134, file: !4, line: 588, baseType: !228, size: 64, offset: 1216)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !230, line: 24, flags: DIFlagFwdDecl)
!230 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!231 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !134, file: !4, line: 589, baseType: !91, size: 64, offset: 1280)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !134, file: !4, line: 590, baseType: !109, size: 32, offset: 1344)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !134, file: !4, line: 592, baseType: !109, size: 32, offset: 1376)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "annot", scope: !122, file: !41, line: 929, baseType: !235, size: 64, offset: 320)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaAnnotPtr", file: !41, line: 149, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaAnnot", file: !41, line: 148, baseType: !238)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaAnnot", file: !41, line: 150, size: 128, elements: !239)
!239 = !{!240, !242}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !238, file: !41, line: 151, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !238, file: !41, line: 152, baseType: !243, size: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !4, line: 491, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !4, line: 490, baseType: !144)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !122, file: !41, line: 930, baseType: !109, size: 32, offset: 384)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "typeDecl", scope: !122, file: !41, line: 932, baseType: !248, size: 64, offset: 448)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTablePtr", file: !249, line: 22, baseType: !250)
!249 = !DIFile(filename: "/usr/include/libxml2/libxml/hash.h", directory: "", checksumkind: CSK_MD5, checksum: "af6927d60ab5a971b68a65626d903bb2")
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTable", file: !249, line: 21, baseType: !252)
!252 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlHashTable", file: !249, line: 21, flags: DIFlagFwdDecl)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "attrDecl", scope: !122, file: !41, line: 933, baseType: !248, size: 64, offset: 512)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "attrgrpDecl", scope: !122, file: !41, line: 934, baseType: !248, size: 64, offset: 576)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "elemDecl", scope: !122, file: !41, line: 935, baseType: !248, size: 64, offset: 640)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "notaDecl", scope: !122, file: !41, line: 936, baseType: !248, size: 64, offset: 704)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "schemasImports", scope: !122, file: !41, line: 938, baseType: !248, size: 64, offset: 768)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !122, file: !41, line: 940, baseType: !91, size: 64, offset: 832)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "groupDecl", scope: !122, file: !41, line: 941, baseType: !248, size: 64, offset: 896)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !122, file: !41, line: 942, baseType: !261, size: 64, offset: 960)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDictPtr", file: !230, line: 25, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !230, line: 24, baseType: !229)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "includes", scope: !122, file: !41, line: 943, baseType: !91, size: 64, offset: 1024)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "preserve", scope: !122, file: !41, line: 944, baseType: !109, size: 32, offset: 1088)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !122, file: !41, line: 945, baseType: !109, size: 32, offset: 1120)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "idcDef", scope: !122, file: !41, line: 946, baseType: !248, size: 64, offset: 1152)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "volatiles", scope: !122, file: !41, line: 947, baseType: !91, size: 64, offset: 1216)
!269 = !DILocation(line: 8, column: 18, scope: !106)
!270 = !DILocalVariable(name: "val", scope: !106, file: !1, line: 9, type: !271)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaValPtr", file: !41, line: 137, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaVal", file: !41, line: 136, baseType: !274)
!274 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaVal", file: !41, line: 136, flags: DIFlagFwdDecl)
!275 = !DILocation(line: 9, column: 21, scope: !106)
!276 = !DILocalVariable(name: "dup", scope: !106, file: !1, line: 10, type: !271)
!277 = !DILocation(line: 10, column: 21, scope: !106)
!278 = !DILocation(line: 13, column: 5, scope: !106)
!279 = !DILocalVariable(name: "schemaDoc", scope: !106, file: !1, line: 17, type: !280)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 1088, elements: !281)
!281 = !{!282}
!282 = !DISubrange(count: 136)
!283 = !DILocation(line: 17, column: 10, scope: !106)
!284 = !DILocation(line: 21, column: 44, scope: !106)
!285 = !DILocation(line: 21, column: 62, scope: !106)
!286 = !DILocation(line: 21, column: 55, scope: !106)
!287 = !DILocation(line: 21, column: 18, scope: !106)
!288 = !DILocation(line: 21, column: 16, scope: !106)
!289 = !DILocation(line: 22, column: 9, scope: !290)
!290 = distinct !DILexicalBlock(scope: !106, file: !1, line: 22, column: 9)
!291 = !DILocation(line: 22, column: 20, scope: !290)
!292 = !DILocation(line: 22, column: 9, scope: !106)
!293 = !DILocation(line: 23, column: 9, scope: !294)
!294 = distinct !DILexicalBlock(scope: !290, file: !1, line: 22, column: 29)
!295 = !DILocation(line: 24, column: 9, scope: !294)
!296 = !DILocation(line: 27, column: 29, scope: !106)
!297 = !DILocation(line: 27, column: 14, scope: !106)
!298 = !DILocation(line: 27, column: 12, scope: !106)
!299 = !DILocation(line: 28, column: 29, scope: !106)
!300 = !DILocation(line: 28, column: 5, scope: !106)
!301 = !DILocation(line: 29, column: 9, scope: !302)
!302 = distinct !DILexicalBlock(scope: !106, file: !1, line: 29, column: 9)
!303 = !DILocation(line: 29, column: 16, scope: !302)
!304 = !DILocation(line: 29, column: 9, scope: !106)
!305 = !DILocation(line: 30, column: 9, scope: !306)
!306 = distinct !DILexicalBlock(scope: !302, file: !1, line: 29, column: 25)
!307 = !DILocation(line: 31, column: 9, scope: !306)
!308 = !DILocation(line: 36, column: 11, scope: !106)
!309 = !DILocation(line: 36, column: 9, scope: !106)
!310 = !DILocation(line: 37, column: 9, scope: !311)
!311 = distinct !DILexicalBlock(scope: !106, file: !1, line: 37, column: 9)
!312 = !DILocation(line: 37, column: 13, scope: !311)
!313 = !DILocation(line: 37, column: 9, scope: !106)
!314 = !DILocation(line: 38, column: 23, scope: !315)
!315 = distinct !DILexicalBlock(scope: !311, file: !1, line: 37, column: 22)
!316 = !DILocation(line: 38, column: 9, scope: !315)
!317 = !DILocation(line: 39, column: 9, scope: !315)
!318 = !DILocation(line: 40, column: 9, scope: !315)
!319 = !DILocation(line: 46, column: 30, scope: !106)
!320 = !DILocation(line: 46, column: 11, scope: !106)
!321 = !DILocation(line: 46, column: 9, scope: !106)
!322 = !DILocation(line: 47, column: 9, scope: !323)
!323 = distinct !DILexicalBlock(scope: !106, file: !1, line: 47, column: 9)
!324 = !DILocation(line: 47, column: 13, scope: !323)
!325 = !DILocation(line: 47, column: 9, scope: !106)
!326 = !DILocation(line: 49, column: 9, scope: !327)
!327 = distinct !DILexicalBlock(scope: !323, file: !1, line: 47, column: 22)
!328 = !DILocation(line: 50, column: 28, scope: !327)
!329 = !DILocation(line: 50, column: 9, scope: !327)
!330 = !DILocation(line: 51, column: 5, scope: !327)
!331 = !DILocation(line: 54, column: 24, scope: !106)
!332 = !DILocation(line: 54, column: 5, scope: !106)
!333 = !DILocation(line: 55, column: 19, scope: !106)
!334 = !DILocation(line: 55, column: 5, scope: !106)
!335 = !DILocation(line: 56, column: 5, scope: !106)
!336 = !DILocation(line: 57, column: 5, scope: !106)
!337 = !DILocation(line: 58, column: 1, scope: !106)
!338 = distinct !DISubprogram(name: "memcpy", scope: !339, file: !339, line: 12, type: !340, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !96, retainedNodes: !110)
!339 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!340 = !DISubroutineType(types: !341)
!341 = !{!91, !91, !342, !344}
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !345, line: 46, baseType: !346)
!345 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!346 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!347 = !DILocalVariable(name: "destaddr", arg: 1, scope: !338, file: !339, line: 12, type: !91)
!348 = !DILocation(line: 12, column: 20, scope: !338)
!349 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !338, file: !339, line: 12, type: !342)
!350 = !DILocation(line: 12, column: 42, scope: !338)
!351 = !DILocalVariable(name: "len", arg: 3, scope: !338, file: !339, line: 12, type: !344)
!352 = !DILocation(line: 12, column: 58, scope: !338)
!353 = !DILocalVariable(name: "dest", scope: !338, file: !339, line: 13, type: !140)
!354 = !DILocation(line: 13, column: 9, scope: !338)
!355 = !DILocation(line: 13, column: 16, scope: !338)
!356 = !DILocalVariable(name: "src", scope: !338, file: !339, line: 14, type: !357)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!359 = !DILocation(line: 14, column: 15, scope: !338)
!360 = !DILocation(line: 14, column: 21, scope: !338)
!361 = !DILocation(line: 16, column: 3, scope: !338)
!362 = !DILocation(line: 16, column: 13, scope: !338)
!363 = !DILocation(line: 16, column: 16, scope: !338)
!364 = !DILocation(line: 17, column: 19, scope: !338)
!365 = !DILocation(line: 17, column: 15, scope: !338)
!366 = !DILocation(line: 17, column: 10, scope: !338)
!367 = !DILocation(line: 17, column: 13, scope: !338)
!368 = distinct !{!368, !361, !364, !369}
!369 = !{!"llvm.loop.mustprogress"}
!370 = !DILocation(line: 18, column: 10, scope: !338)
!371 = !DILocation(line: 18, column: 3, scope: !338)

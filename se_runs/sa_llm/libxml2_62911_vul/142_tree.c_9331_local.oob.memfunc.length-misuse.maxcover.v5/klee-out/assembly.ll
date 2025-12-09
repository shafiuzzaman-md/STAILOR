; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/142_tree.c_9331_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/142_tree.c_9331_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
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
@.str.2 = private unnamed_addr constant [17 x i8] c"resultClone_flag\00", align 1
@xmlMalloc = external global i8* (i64)*, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/142_tree.c_9331_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@xmlFree = external global void (i8*)*, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !162 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlDoc*, align 8
  %3 = alloca %struct._xmlNode*, align 8
  %4 = alloca %struct._xmlNode*, align 8
  %5 = alloca %struct._xmlNode*, align 8
  %6 = alloca %struct._xmlNode*, align 8
  %7 = alloca %struct._xmlNode*, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %2, metadata !166, metadata !DIExpression()), !dbg !170
  store %struct._xmlDoc* null, %struct._xmlDoc** %2, align 8, !dbg !170
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %3, metadata !171, metadata !DIExpression()), !dbg !172
  store %struct._xmlNode* null, %struct._xmlNode** %3, align 8, !dbg !172
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %4, metadata !173, metadata !DIExpression()), !dbg !174
  store %struct._xmlNode* null, %struct._xmlNode** %4, align 8, !dbg !174
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %5, metadata !175, metadata !DIExpression()), !dbg !176
  store %struct._xmlNode* null, %struct._xmlNode** %5, align 8, !dbg !176
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %6, metadata !177, metadata !DIExpression()), !dbg !178
  store %struct._xmlNode* null, %struct._xmlNode** %6, align 8, !dbg !178
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %7, metadata !179, metadata !DIExpression()), !dbg !180
  store %struct._xmlNode* null, %struct._xmlNode** %7, align 8, !dbg !180
  call void @xmlInitParser(), !dbg !181
  %9 = call %struct._xmlDoc* @xmlNewDoc(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !182
  store %struct._xmlDoc* %9, %struct._xmlDoc** %2, align 8, !dbg !183
  %10 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !184
  %11 = icmp ne %struct._xmlDoc* %10, null, !dbg !184
  br i1 %11, label %13, label %12, !dbg !186

12:                                               ; preds = %0
  br label %66, !dbg !187

13:                                               ; preds = %0
  %14 = call %struct._xmlNode* @xmlNewNode(%struct._xmlNs* noundef null, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !188
  store %struct._xmlNode* %14, %struct._xmlNode** %3, align 8, !dbg !189
  %15 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !190
  %16 = icmp ne %struct._xmlNode* %15, null, !dbg !190
  br i1 %16, label %18, label %17, !dbg !192

17:                                               ; preds = %13
  br label %66, !dbg !193

18:                                               ; preds = %13
  %19 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !194
  %20 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !195
  %21 = call %struct._xmlNode* @xmlDocSetRootElement(%struct._xmlDoc* noundef %19, %struct._xmlNode* noundef %20), !dbg !196
  call void @llvm.dbg.declare(metadata i32* %8, metadata !197, metadata !DIExpression()), !dbg !198
  %22 = bitcast i32* %8 to i8*, !dbg !199
  call void @klee_make_symbolic(i8* noundef %22, i64 noundef 4, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0)), !dbg !200
  %23 = load i32, i32* %8, align 4, !dbg !201
  %24 = icmp ne i32 %23, 0, !dbg !201
  br i1 %24, label %25, label %28, !dbg !203

25:                                               ; preds = %18
  %26 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !204
  store %struct._xmlNode* %26, %struct._xmlNode** %5, align 8, !dbg !206
  %27 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !207
  store %struct._xmlNode* %27, %struct._xmlNode** %6, align 8, !dbg !208
  store %struct._xmlNode* null, %struct._xmlNode** %7, align 8, !dbg !209
  br label %29, !dbg !210

28:                                               ; preds = %18
  store %struct._xmlNode* null, %struct._xmlNode** %5, align 8, !dbg !211
  br label %29

29:                                               ; preds = %28, %25
  %30 = load i8* (i64)*, i8* (i64)** @xmlMalloc, align 8, !dbg !213
  %31 = call i8* %30(i64 noundef 120), !dbg !213
  %32 = bitcast i8* %31 to %struct._xmlNode*, !dbg !214
  store %struct._xmlNode* %32, %struct._xmlNode** %4, align 8, !dbg !215
  %33 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !216
  %34 = icmp eq %struct._xmlNode* %33, null, !dbg !218
  br i1 %34, label %35, label %36, !dbg !219

35:                                               ; preds = %29
  br label %58, !dbg !220

36:                                               ; preds = %29
  %37 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.4, i64 0, i64 0), i32 noundef 43, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !222
  %38 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !223
  %39 = bitcast %struct._xmlNode* %38 to i8*, !dbg !224
  %40 = call i8* @memset(i8* %39, i32 0, i64 120), !dbg !224
  %41 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !225
  %42 = icmp ne %struct._xmlNode* %41, null, !dbg !227
  br i1 %42, label %43, label %57, !dbg !228

43:                                               ; preds = %36
  %44 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !229
  %45 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !231
  %46 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %45, i32 0, i32 5, !dbg !232
  store %struct._xmlNode* %44, %struct._xmlNode** %46, align 8, !dbg !233
  %47 = load %struct._xmlNode*, %struct._xmlNode** %7, align 8, !dbg !234
  %48 = icmp ne %struct._xmlNode* %47, null, !dbg !234
  br i1 %48, label %49, label %56, !dbg !236

49:                                               ; preds = %43
  %50 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !237
  %51 = load %struct._xmlNode*, %struct._xmlNode** %7, align 8, !dbg !239
  %52 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %51, i32 0, i32 6, !dbg !240
  store %struct._xmlNode* %50, %struct._xmlNode** %52, align 8, !dbg !241
  %53 = load %struct._xmlNode*, %struct._xmlNode** %7, align 8, !dbg !242
  %54 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !243
  %55 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %54, i32 0, i32 7, !dbg !244
  store %struct._xmlNode* %53, %struct._xmlNode** %55, align 8, !dbg !245
  br label %56, !dbg !246

56:                                               ; preds = %49, %43
  br label %57, !dbg !247

57:                                               ; preds = %56, %36
  br label %58, !dbg !248

58:                                               ; preds = %57, %35
  call void @llvm.dbg.label(metadata !249), !dbg !250
  %59 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !251
  %60 = icmp ne %struct._xmlNode* %59, null, !dbg !251
  br i1 %60, label %61, label %65, !dbg !253

61:                                               ; preds = %58
  %62 = load void (i8*)*, void (i8*)** @xmlFree, align 8, !dbg !254
  %63 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !255
  %64 = bitcast %struct._xmlNode* %63 to i8*, !dbg !255
  call void %62(i8* noundef %64), !dbg !254
  br label %65, !dbg !254

65:                                               ; preds = %61, %58
  br label %66, !dbg !251

66:                                               ; preds = %65, %17, %12
  call void @llvm.dbg.label(metadata !256), !dbg !257
  %67 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !258
  %68 = icmp ne %struct._xmlDoc* %67, null, !dbg !258
  br i1 %68, label %69, label %71, !dbg !260

69:                                               ; preds = %66
  %70 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !261
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %70), !dbg !262
  br label %71, !dbg !262

71:                                               ; preds = %69, %66
  call void @xmlCleanupParser(), !dbg !263
  ret i32 0, !dbg !264
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @xmlInitParser() #2

declare %struct._xmlDoc* @xmlNewDoc(i8* noundef) #2

declare %struct._xmlNode* @xmlNewNode(%struct._xmlNs* noundef, i8* noundef) #2

declare %struct._xmlNode* @xmlDocSetRootElement(%struct._xmlDoc* noundef, %struct._xmlNode* noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare void @xmlFreeDoc(%struct._xmlDoc* noundef) #2

declare void @xmlCleanupParser() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #5 !dbg !265 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !272, metadata !DIExpression()), !dbg !273
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !274, metadata !DIExpression()), !dbg !275
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !276, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.declare(metadata i8** %7, metadata !278, metadata !DIExpression()), !dbg !279
  %8 = load i8*, i8** %4, align 8, !dbg !280
  store i8* %8, i8** %7, align 8, !dbg !279
  br label %9, !dbg !281

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !282
  %11 = add i64 %10, -1, !dbg !282
  store i64 %11, i64* %6, align 8, !dbg !282
  %12 = icmp ugt i64 %10, 0, !dbg !283
  br i1 %12, label %13, label %18, !dbg !281

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !284
  %15 = trunc i32 %14 to i8, !dbg !284
  %16 = load i8*, i8** %7, align 8, !dbg !285
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !285
  store i8* %17, i8** %7, align 8, !dbg !285
  store i8 %15, i8* %16, align 1, !dbg !286
  br label %9, !dbg !281, !llvm.loop !287

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !289
  ret i8* %19, !dbg !290
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0, !152}
!llvm.module.flags = !{!154, !155, !156, !157, !158, !159, !160}
!llvm.ident = !{!161, !161}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !40, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/142_tree.c_9331_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "a73e38dddd41ba8caeadb3cd566129ea")
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
!40 = !{!41, !46, !52}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !44, line: 28, baseType: !45)
!44 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!45 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !4, line: 491, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !4, line: 490, baseType: !49)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !50)
!50 = !{!51, !53, !55, !56, !58, !59, !60, !61, !62, !125, !128, !130, !147, !148, !149, !151}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !49, file: !4, line: 493, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !49, file: !4, line: 494, baseType: !54, size: 32, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !49, file: !4, line: 495, baseType: !41, size: 64, offset: 128)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !49, file: !4, line: 496, baseType: !57, size: 64, offset: 192)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !49, file: !4, line: 497, baseType: !57, size: 64, offset: 256)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !49, file: !4, line: 498, baseType: !57, size: 64, offset: 320)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !49, file: !4, line: 499, baseType: !57, size: 64, offset: 384)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !49, file: !4, line: 500, baseType: !57, size: 64, offset: 448)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !49, file: !4, line: 501, baseType: !63, size: 64, offset: 512)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !65)
!65 = !{!66, !67, !68, !71, !72, !73, !74, !75, !76, !77, !79, !80, !100, !101, !112, !113, !114, !115, !116, !117, !118, !122, !123, !124}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !64, file: !4, line: 560, baseType: !52, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !64, file: !4, line: 561, baseType: !54, size: 32, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !64, file: !4, line: 562, baseType: !69, size: 64, offset: 128)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !64, file: !4, line: 563, baseType: !57, size: 64, offset: 192)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !64, file: !4, line: 564, baseType: !57, size: 64, offset: 256)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !64, file: !4, line: 565, baseType: !57, size: 64, offset: 320)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !64, file: !4, line: 566, baseType: !57, size: 64, offset: 384)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !64, file: !4, line: 567, baseType: !57, size: 64, offset: 448)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !64, file: !4, line: 568, baseType: !63, size: 64, offset: 512)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !64, file: !4, line: 571, baseType: !78, size: 32, offset: 576)
!78 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !64, file: !4, line: 572, baseType: !78, size: 32, offset: 608)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !64, file: !4, line: 578, baseType: !81, size: 64, offset: 640)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !83)
!83 = !{!84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !82, file: !4, line: 406, baseType: !52, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !82, file: !4, line: 407, baseType: !54, size: 32, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !82, file: !4, line: 408, baseType: !41, size: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !82, file: !4, line: 409, baseType: !57, size: 64, offset: 192)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !82, file: !4, line: 410, baseType: !57, size: 64, offset: 256)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !82, file: !4, line: 411, baseType: !63, size: 64, offset: 320)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !82, file: !4, line: 412, baseType: !57, size: 64, offset: 384)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !82, file: !4, line: 413, baseType: !57, size: 64, offset: 448)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !82, file: !4, line: 414, baseType: !63, size: 64, offset: 512)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !82, file: !4, line: 417, baseType: !52, size: 64, offset: 576)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !82, file: !4, line: 418, baseType: !52, size: 64, offset: 640)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !82, file: !4, line: 419, baseType: !52, size: 64, offset: 704)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !82, file: !4, line: 420, baseType: !52, size: 64, offset: 768)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !82, file: !4, line: 421, baseType: !41, size: 64, offset: 832)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !82, file: !4, line: 422, baseType: !41, size: 64, offset: 896)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !82, file: !4, line: 423, baseType: !52, size: 64, offset: 960)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !64, file: !4, line: 579, baseType: !81, size: 64, offset: 704)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !64, file: !4, line: 580, baseType: !102, size: 64, offset: 768)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !104)
!104 = !{!105, !106, !108, !109, !110, !111}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !103, file: !4, line: 389, baseType: !102, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !103, file: !4, line: 390, baseType: !107, size: 32, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !54)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !103, file: !4, line: 391, baseType: !41, size: 64, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !103, file: !4, line: 392, baseType: !41, size: 64, offset: 192)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !103, file: !4, line: 393, baseType: !52, size: 64, offset: 256)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !103, file: !4, line: 394, baseType: !63, size: 64, offset: 320)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !64, file: !4, line: 581, baseType: !41, size: 64, offset: 832)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !64, file: !4, line: 582, baseType: !41, size: 64, offset: 896)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !64, file: !4, line: 583, baseType: !52, size: 64, offset: 960)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !64, file: !4, line: 584, baseType: !52, size: 64, offset: 1024)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !64, file: !4, line: 585, baseType: !41, size: 64, offset: 1088)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !64, file: !4, line: 586, baseType: !78, size: 32, offset: 1152)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !64, file: !4, line: 588, baseType: !119, size: 64, offset: 1216)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !121, line: 24, flags: DIFlagFwdDecl)
!121 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!122 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !64, file: !4, line: 589, baseType: !52, size: 64, offset: 1280)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !64, file: !4, line: 590, baseType: !78, size: 32, offset: 1344)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !64, file: !4, line: 592, baseType: !78, size: 32, offset: 1376)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !49, file: !4, line: 504, baseType: !126, size: 64, offset: 576)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !103)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !49, file: !4, line: 505, baseType: !129, size: 64, offset: 640)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !49, file: !4, line: 506, baseType: !131, size: 64, offset: 704)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !133)
!133 = !{!134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !146}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !132, file: !4, line: 434, baseType: !52, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !132, file: !4, line: 435, baseType: !54, size: 32, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !132, file: !4, line: 436, baseType: !41, size: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !132, file: !4, line: 437, baseType: !57, size: 64, offset: 192)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !132, file: !4, line: 438, baseType: !57, size: 64, offset: 256)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !132, file: !4, line: 439, baseType: !57, size: 64, offset: 320)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !132, file: !4, line: 440, baseType: !131, size: 64, offset: 384)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !132, file: !4, line: 441, baseType: !131, size: 64, offset: 448)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !132, file: !4, line: 442, baseType: !63, size: 64, offset: 512)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !132, file: !4, line: 443, baseType: !126, size: 64, offset: 576)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !132, file: !4, line: 444, baseType: !145, size: 32, offset: 640)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !132, file: !4, line: 445, baseType: !52, size: 64, offset: 704)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !49, file: !4, line: 507, baseType: !126, size: 64, offset: 768)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !49, file: !4, line: 508, baseType: !52, size: 64, offset: 832)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !49, file: !4, line: 509, baseType: !150, size: 16, offset: 896)
!150 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !49, file: !4, line: 510, baseType: !150, size: 16, offset: 912)
!152 = distinct !DICompileUnit(language: DW_LANG_C99, file: !153, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!153 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!154 = !{i32 7, !"Dwarf Version", i32 5}
!155 = !{i32 2, !"Debug Info Version", i32 3}
!156 = !{i32 1, !"wchar_size", i32 4}
!157 = !{i32 7, !"PIC Level", i32 2}
!158 = !{i32 7, !"PIE Level", i32 2}
!159 = !{i32 7, !"uwtable", i32 1}
!160 = !{i32 7, !"frame-pointer", i32 2}
!161 = !{!"Ubuntu clang version 14.0.6"}
!162 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 6, type: !163, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !165)
!163 = !DISubroutineType(types: !164)
!164 = !{!78}
!165 = !{}
!166 = !DILocalVariable(name: "doc", scope: !162, file: !1, line: 7, type: !167)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !64)
!170 = !DILocation(line: 7, column: 15, scope: !162)
!171 = !DILocalVariable(name: "root", scope: !162, file: !1, line: 8, type: !46)
!172 = !DILocation(line: 8, column: 16, scope: !162)
!173 = !DILocalVariable(name: "clone", scope: !162, file: !1, line: 9, type: !46)
!174 = !DILocation(line: 9, column: 16, scope: !162)
!175 = !DILocalVariable(name: "resultClone", scope: !162, file: !1, line: 10, type: !46)
!176 = !DILocation(line: 10, column: 16, scope: !162)
!177 = !DILocalVariable(name: "parentClone", scope: !162, file: !1, line: 11, type: !46)
!178 = !DILocation(line: 11, column: 16, scope: !162)
!179 = !DILocalVariable(name: "prevClone", scope: !162, file: !1, line: 12, type: !46)
!180 = !DILocation(line: 12, column: 16, scope: !162)
!181 = !DILocation(line: 15, column: 5, scope: !162)
!182 = !DILocation(line: 18, column: 11, scope: !162)
!183 = !DILocation(line: 18, column: 9, scope: !162)
!184 = !DILocation(line: 19, column: 10, scope: !185)
!185 = distinct !DILexicalBlock(scope: !162, file: !1, line: 19, column: 9)
!186 = !DILocation(line: 19, column: 9, scope: !162)
!187 = !DILocation(line: 19, column: 15, scope: !185)
!188 = !DILocation(line: 20, column: 12, scope: !162)
!189 = !DILocation(line: 20, column: 10, scope: !162)
!190 = !DILocation(line: 21, column: 10, scope: !191)
!191 = distinct !DILexicalBlock(scope: !162, file: !1, line: 21, column: 9)
!192 = !DILocation(line: 21, column: 9, scope: !162)
!193 = !DILocation(line: 21, column: 16, scope: !191)
!194 = !DILocation(line: 22, column: 26, scope: !162)
!195 = !DILocation(line: 22, column: 31, scope: !162)
!196 = !DILocation(line: 22, column: 5, scope: !162)
!197 = !DILocalVariable(name: "resultClone_flag", scope: !162, file: !1, line: 25, type: !78)
!198 = !DILocation(line: 25, column: 9, scope: !162)
!199 = !DILocation(line: 26, column: 24, scope: !162)
!200 = !DILocation(line: 26, column: 5, scope: !162)
!201 = !DILocation(line: 27, column: 9, scope: !202)
!202 = distinct !DILexicalBlock(scope: !162, file: !1, line: 27, column: 9)
!203 = !DILocation(line: 27, column: 9, scope: !162)
!204 = !DILocation(line: 28, column: 23, scope: !205)
!205 = distinct !DILexicalBlock(scope: !202, file: !1, line: 27, column: 27)
!206 = !DILocation(line: 28, column: 21, scope: !205)
!207 = !DILocation(line: 29, column: 23, scope: !205)
!208 = !DILocation(line: 29, column: 21, scope: !205)
!209 = !DILocation(line: 30, column: 19, scope: !205)
!210 = !DILocation(line: 31, column: 5, scope: !205)
!211 = !DILocation(line: 32, column: 21, scope: !212)
!212 = distinct !DILexicalBlock(scope: !202, file: !1, line: 31, column: 12)
!213 = !DILocation(line: 36, column: 26, scope: !162)
!214 = !DILocation(line: 36, column: 13, scope: !162)
!215 = !DILocation(line: 36, column: 11, scope: !162)
!216 = !DILocation(line: 37, column: 9, scope: !217)
!217 = distinct !DILexicalBlock(scope: !162, file: !1, line: 37, column: 9)
!218 = !DILocation(line: 37, column: 15, scope: !217)
!219 = !DILocation(line: 37, column: 9, scope: !162)
!220 = !DILocation(line: 39, column: 9, scope: !221)
!221 = distinct !DILexicalBlock(scope: !217, file: !1, line: 37, column: 24)
!222 = !DILocation(line: 43, column: 5, scope: !162)
!223 = !DILocation(line: 46, column: 12, scope: !162)
!224 = !DILocation(line: 46, column: 5, scope: !162)
!225 = !DILocation(line: 49, column: 9, scope: !226)
!226 = distinct !DILexicalBlock(scope: !162, file: !1, line: 49, column: 9)
!227 = !DILocation(line: 49, column: 21, scope: !226)
!228 = !DILocation(line: 49, column: 9, scope: !162)
!229 = !DILocation(line: 50, column: 25, scope: !230)
!230 = distinct !DILexicalBlock(scope: !226, file: !1, line: 49, column: 30)
!231 = !DILocation(line: 50, column: 9, scope: !230)
!232 = !DILocation(line: 50, column: 16, scope: !230)
!233 = !DILocation(line: 50, column: 23, scope: !230)
!234 = !DILocation(line: 51, column: 13, scope: !235)
!235 = distinct !DILexicalBlock(scope: !230, file: !1, line: 51, column: 13)
!236 = !DILocation(line: 51, column: 13, scope: !230)
!237 = !DILocation(line: 52, column: 31, scope: !238)
!238 = distinct !DILexicalBlock(scope: !235, file: !1, line: 51, column: 24)
!239 = !DILocation(line: 52, column: 13, scope: !238)
!240 = !DILocation(line: 52, column: 24, scope: !238)
!241 = !DILocation(line: 52, column: 29, scope: !238)
!242 = !DILocation(line: 53, column: 27, scope: !238)
!243 = !DILocation(line: 53, column: 13, scope: !238)
!244 = !DILocation(line: 53, column: 20, scope: !238)
!245 = !DILocation(line: 53, column: 25, scope: !238)
!246 = !DILocation(line: 54, column: 9, scope: !238)
!247 = !DILocation(line: 55, column: 5, scope: !230)
!248 = !DILocation(line: 49, column: 24, scope: !226)
!249 = !DILabel(scope: !162, name: "internal_error", file: !1, line: 57)
!250 = !DILocation(line: 57, column: 1, scope: !162)
!251 = !DILocation(line: 59, column: 9, scope: !252)
!252 = distinct !DILexicalBlock(scope: !162, file: !1, line: 59, column: 9)
!253 = !DILocation(line: 59, column: 9, scope: !162)
!254 = !DILocation(line: 59, column: 16, scope: !252)
!255 = !DILocation(line: 59, column: 24, scope: !252)
!256 = !DILabel(scope: !162, name: "cleanup", file: !1, line: 60)
!257 = !DILocation(line: 60, column: 1, scope: !162)
!258 = !DILocation(line: 61, column: 9, scope: !259)
!259 = distinct !DILexicalBlock(scope: !162, file: !1, line: 61, column: 9)
!260 = !DILocation(line: 61, column: 9, scope: !162)
!261 = !DILocation(line: 61, column: 25, scope: !259)
!262 = !DILocation(line: 61, column: 14, scope: !259)
!263 = !DILocation(line: 62, column: 5, scope: !162)
!264 = !DILocation(line: 63, column: 5, scope: !162)
!265 = distinct !DISubprogram(name: "memset", scope: !266, file: !266, line: 12, type: !267, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !152, retainedNodes: !165)
!266 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!267 = !DISubroutineType(types: !268)
!268 = !{!52, !52, !78, !269}
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !270, line: 46, baseType: !271)
!270 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!271 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!272 = !DILocalVariable(name: "dst", arg: 1, scope: !265, file: !266, line: 12, type: !52)
!273 = !DILocation(line: 12, column: 20, scope: !265)
!274 = !DILocalVariable(name: "s", arg: 2, scope: !265, file: !266, line: 12, type: !78)
!275 = !DILocation(line: 12, column: 29, scope: !265)
!276 = !DILocalVariable(name: "count", arg: 3, scope: !265, file: !266, line: 12, type: !269)
!277 = !DILocation(line: 12, column: 39, scope: !265)
!278 = !DILocalVariable(name: "a", scope: !265, file: !266, line: 13, type: !69)
!279 = !DILocation(line: 13, column: 9, scope: !265)
!280 = !DILocation(line: 13, column: 13, scope: !265)
!281 = !DILocation(line: 14, column: 3, scope: !265)
!282 = !DILocation(line: 14, column: 15, scope: !265)
!283 = !DILocation(line: 14, column: 18, scope: !265)
!284 = !DILocation(line: 15, column: 12, scope: !265)
!285 = !DILocation(line: 15, column: 7, scope: !265)
!286 = !DILocation(line: 15, column: 10, scope: !265)
!287 = distinct !{!287, !281, !284, !288}
!288 = !{!"llvm.loop.mustprogress"}
!289 = !DILocation(line: 16, column: 10, scope: !265)
!290 = !DILocation(line: 16, column: 3, scope: !265)

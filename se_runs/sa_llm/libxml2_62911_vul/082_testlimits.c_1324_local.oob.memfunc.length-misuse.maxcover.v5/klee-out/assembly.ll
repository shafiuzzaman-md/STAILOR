; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/082_testlimits.c_1324_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/082_testlimits.c_1324_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._xmlTextReader = type opaque
%struct._xmlDoc = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, i32, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlNs*, i8*, i8*, i8*, i8*, i8*, i32, %struct._xmlDict*, i8*, i32, i32 }
%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i8*, i16, i16 }
%struct._xmlAttr = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlAttr*, %struct._xmlAttr*, %struct._xmlDoc*, %struct._xmlNs*, i32, i8* }
%struct._xmlDtd = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._xmlNs = type { %struct._xmlNs*, i32, i8*, i8*, i8*, %struct._xmlDoc* }
%struct._xmlDict = type opaque

@.str = private unnamed_addr constant [13 x i8] c"filename_buf\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"limit\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"crazy_indx\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"fail\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"<root><elem>test</elem></root>\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [109 x i8] c"se_runs/sa_llm/libxml2_62911_vul/082_testlimits.c_1324_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"crazy:\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.8 = private unnamed_addr constant [25 x i8] c"Failed to parse '%s' %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Failed to parse '%s' %lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !51 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._xmlTextReader*, align 8
  %9 = alloca %struct._xmlDoc*, align 8
  %10 = alloca [256 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !56, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata i64* %3, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata i32* %4, metadata !63, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata i32* %5, metadata !65, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.declare(metadata i32* %6, metadata !67, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.declare(metadata i32* %7, metadata !69, metadata !DIExpression()), !dbg !70
  store i32 0, i32* %7, align 4, !dbg !70
  call void @llvm.dbg.declare(metadata %struct._xmlTextReader** %8, metadata !71, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %9, metadata !78, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.declare(metadata [256 x i8]* %10, metadata !188, metadata !DIExpression()), !dbg !192
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0, !dbg !193
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 256, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0)), !dbg !194
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 255, !dbg !195
  store i8 0, i8* %14, align 1, !dbg !196
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0, !dbg !197
  store i8* %15, i8** %2, align 8, !dbg !198
  %16 = bitcast i64* %3 to i8*, !dbg !199
  call void @klee_make_symbolic(i8* noundef %16, i64 noundef 8, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)), !dbg !200
  %17 = bitcast i32* %4 to i8*, !dbg !201
  call void @klee_make_symbolic(i8* noundef %17, i64 noundef 4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)), !dbg !202
  %18 = bitcast i32* %5 to i8*, !dbg !203
  call void @klee_make_symbolic(i8* noundef %18, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)), !dbg !204
  call void @llvm.dbg.declare(metadata i8** %11, metadata !205, metadata !DIExpression()), !dbg !206
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8** %11, align 8, !dbg !206
  call void @llvm.dbg.declare(metadata i64* %12, metadata !207, metadata !DIExpression()), !dbg !210
  %19 = load i8*, i8** %11, align 8, !dbg !211
  %20 = call i64 @strlen(i8* noundef %19) #5, !dbg !212
  store i64 %20, i64* %12, align 8, !dbg !210
  call void @xmlInitParser(), !dbg !213
  %21 = load i8*, i8** %11, align 8, !dbg !214
  %22 = load i64, i64* %12, align 8, !dbg !215
  %23 = trunc i64 %22 to i32, !dbg !215
  %24 = call %struct._xmlTextReader* @xmlReaderForMemory(i8* noundef %21, i32 noundef %23, i8* noundef null, i8* noundef null, i32 noundef 0), !dbg !216
  store %struct._xmlTextReader* %24, %struct._xmlTextReader** %8, align 8, !dbg !217
  %25 = load %struct._xmlTextReader*, %struct._xmlTextReader** %8, align 8, !dbg !218
  %26 = icmp eq %struct._xmlTextReader* %25, null, !dbg !220
  br i1 %26, label %27, label %28, !dbg !221

27:                                               ; preds = %0
  call void @xmlCleanupParser(), !dbg !222
  store i32 1, i32* %1, align 4, !dbg !224
  br label %65, !dbg !224

28:                                               ; preds = %0
  %29 = load %struct._xmlTextReader*, %struct._xmlTextReader** %8, align 8, !dbg !225
  %30 = call i32 @xmlTextReaderRead(%struct._xmlTextReader* noundef %29), !dbg !226
  store i32 %30, i32* %6, align 4, !dbg !227
  br label %31, !dbg !228

31:                                               ; preds = %34, %28
  %32 = load i32, i32* %6, align 4, !dbg !229
  %33 = icmp eq i32 %32, 1, !dbg !230
  br i1 %33, label %34, label %37, !dbg !228

34:                                               ; preds = %31
  %35 = load %struct._xmlTextReader*, %struct._xmlTextReader** %8, align 8, !dbg !231
  %36 = call i32 @xmlTextReaderRead(%struct._xmlTextReader* noundef %35), !dbg !233
  store i32 %36, i32* %6, align 4, !dbg !234
  br label %31, !dbg !228, !llvm.loop !235

37:                                               ; preds = %31
  %38 = load i32, i32* %6, align 4, !dbg !238
  %39 = icmp ne i32 %38, 0, !dbg !240
  br i1 %39, label %40, label %61, !dbg !241

40:                                               ; preds = %37
  %41 = load i32, i32* %5, align 4, !dbg !242
  %42 = icmp ne i32 %41, 0, !dbg !242
  br i1 %42, label %43, label %44, !dbg !245

43:                                               ; preds = %40
  store i32 0, i32* %7, align 4, !dbg !246
  br label %60, !dbg !248

44:                                               ; preds = %40
  %45 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.6, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !249
  %46 = load i8*, i8** %2, align 8, !dbg !251
  %47 = call i32 @strncmp(i8* noundef %46, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i64 noundef 6) #5, !dbg !253
  %48 = icmp eq i32 %47, 0, !dbg !254
  br i1 %48, label %49, label %54, !dbg !255

49:                                               ; preds = %44
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !256
  %51 = load i8*, i8** %2, align 8, !dbg !258
  %52 = load i32, i32* %4, align 4, !dbg !259
  %53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %50, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* noundef %51, i32 noundef %52), !dbg !260
  br label %59, !dbg !261

54:                                               ; preds = %44
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !262
  %56 = load i8*, i8** %2, align 8, !dbg !264
  %57 = load i64, i64* %3, align 8, !dbg !265
  %58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %55, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i8* noundef %56, i64 noundef %57), !dbg !266
  br label %59

59:                                               ; preds = %54, %49
  store i32 1, i32* %7, align 4, !dbg !267
  br label %60

60:                                               ; preds = %59, %43
  br label %62, !dbg !268

61:                                               ; preds = %37
  store i32 0, i32* %7, align 4, !dbg !269
  br label %62

62:                                               ; preds = %61, %60
  %63 = load %struct._xmlTextReader*, %struct._xmlTextReader** %8, align 8, !dbg !271
  call void @xmlFreeTextReader(%struct._xmlTextReader* noundef %63), !dbg !272
  call void @xmlCleanupParser(), !dbg !273
  %64 = load i32, i32* %7, align 4, !dbg !274
  store i32 %64, i32* %1, align 4, !dbg !275
  br label %65, !dbg !275

65:                                               ; preds = %62, %27
  %66 = load i32, i32* %1, align 4, !dbg !276
  ret i32 %66, !dbg !276
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

declare void @xmlInitParser() #2

declare %struct._xmlTextReader* @xmlReaderForMemory(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef) #2

declare void @xmlCleanupParser() #2

declare i32 @xmlTextReaderRead(%struct._xmlTextReader* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #3

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

declare void @xmlFreeTextReader(%struct._xmlTextReader* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !40, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/082_testlimits.c_1324_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "c20621e3a5df4fc2ebb6910b3d490869")
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
!42 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!43 = !{i32 7, !"Dwarf Version", i32 5}
!44 = !{i32 2, !"Debug Info Version", i32 3}
!45 = !{i32 1, !"wchar_size", i32 4}
!46 = !{i32 7, !"PIC Level", i32 2}
!47 = !{i32 7, !"PIE Level", i32 2}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"Ubuntu clang version 14.0.6"}
!51 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 8, type: !52, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !55)
!52 = !DISubroutineType(types: !53)
!53 = !{!54}
!54 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!55 = !{}
!56 = !DILocalVariable(name: "filename", scope: !51, file: !1, line: 9, type: !57)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!59 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!60 = !DILocation(line: 9, column: 17, scope: !51)
!61 = !DILocalVariable(name: "limit", scope: !51, file: !1, line: 10, type: !42)
!62 = !DILocation(line: 10, column: 19, scope: !51)
!63 = !DILocalVariable(name: "crazy_indx", scope: !51, file: !1, line: 11, type: !5)
!64 = !DILocation(line: 11, column: 18, scope: !51)
!65 = !DILocalVariable(name: "fail", scope: !51, file: !1, line: 12, type: !54)
!66 = !DILocation(line: 12, column: 9, scope: !51)
!67 = !DILocalVariable(name: "ret", scope: !51, file: !1, line: 13, type: !54)
!68 = !DILocation(line: 13, column: 9, scope: !51)
!69 = !DILocalVariable(name: "res", scope: !51, file: !1, line: 14, type: !54)
!70 = !DILocation(line: 14, column: 9, scope: !51)
!71 = !DILocalVariable(name: "reader", scope: !51, file: !1, line: 15, type: !72)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlTextReaderPtr", file: !73, line: 106, baseType: !74)
!73 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlreader.h", directory: "", checksumkind: CSK_MD5, checksum: "f4e1ae61cb2ac0d3ded93985fed902db")
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlTextReader", file: !73, line: 99, baseType: !76)
!76 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlTextReader", file: !73, line: 99, flags: DIFlagFwdDecl)
!77 = !DILocation(line: 15, column: 22, scope: !51)
!78 = !DILocalVariable(name: "doc", scope: !51, file: !1, line: 16, type: !79)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !82)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !83)
!83 = !{!84, !85, !87, !89, !145, !146, !147, !148, !149, !150, !151, !152, !172, !173, !174, !175, !176, !177, !178, !179, !180, !184, !185, !186}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !82, file: !4, line: 560, baseType: !41, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !82, file: !4, line: 561, baseType: !86, size: 32, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !82, file: !4, line: 562, baseType: !88, size: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !82, file: !4, line: 563, baseType: !90, size: 64, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !92)
!92 = !{!93, !94, !95, !101, !102, !103, !104, !105, !106, !108, !121, !123, !140, !141, !142, !144}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !91, file: !4, line: 493, baseType: !41, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !91, file: !4, line: 494, baseType: !86, size: 32, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !91, file: !4, line: 495, baseType: !96, size: 64, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !99, line: 28, baseType: !100)
!99 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!100 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !91, file: !4, line: 496, baseType: !90, size: 64, offset: 192)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !91, file: !4, line: 497, baseType: !90, size: 64, offset: 256)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !91, file: !4, line: 498, baseType: !90, size: 64, offset: 320)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !91, file: !4, line: 499, baseType: !90, size: 64, offset: 384)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !91, file: !4, line: 500, baseType: !90, size: 64, offset: 448)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !91, file: !4, line: 501, baseType: !107, size: 64, offset: 512)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !91, file: !4, line: 504, baseType: !109, size: 64, offset: 576)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !111)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !112)
!112 = !{!113, !115, !117, !118, !119, !120}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !111, file: !4, line: 389, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !111, file: !4, line: 390, baseType: !116, size: 32, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !86)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !111, file: !4, line: 391, baseType: !96, size: 64, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !111, file: !4, line: 392, baseType: !96, size: 64, offset: 192)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !111, file: !4, line: 393, baseType: !41, size: 64, offset: 256)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !111, file: !4, line: 394, baseType: !107, size: 64, offset: 320)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !91, file: !4, line: 505, baseType: !122, size: 64, offset: 640)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !91, file: !4, line: 506, baseType: !124, size: 64, offset: 704)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !126)
!126 = !{!127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !139}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !125, file: !4, line: 434, baseType: !41, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !125, file: !4, line: 435, baseType: !86, size: 32, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !125, file: !4, line: 436, baseType: !96, size: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !125, file: !4, line: 437, baseType: !90, size: 64, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !125, file: !4, line: 438, baseType: !90, size: 64, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !125, file: !4, line: 439, baseType: !90, size: 64, offset: 320)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !125, file: !4, line: 440, baseType: !124, size: 64, offset: 384)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !125, file: !4, line: 441, baseType: !124, size: 64, offset: 448)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !125, file: !4, line: 442, baseType: !107, size: 64, offset: 512)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !125, file: !4, line: 443, baseType: !109, size: 64, offset: 576)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !125, file: !4, line: 444, baseType: !138, size: 32, offset: 640)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !125, file: !4, line: 445, baseType: !41, size: 64, offset: 704)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !91, file: !4, line: 507, baseType: !109, size: 64, offset: 768)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !91, file: !4, line: 508, baseType: !41, size: 64, offset: 832)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !91, file: !4, line: 509, baseType: !143, size: 16, offset: 896)
!143 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !91, file: !4, line: 510, baseType: !143, size: 16, offset: 912)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !82, file: !4, line: 564, baseType: !90, size: 64, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !82, file: !4, line: 565, baseType: !90, size: 64, offset: 320)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !82, file: !4, line: 566, baseType: !90, size: 64, offset: 384)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !82, file: !4, line: 567, baseType: !90, size: 64, offset: 448)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !82, file: !4, line: 568, baseType: !107, size: 64, offset: 512)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !82, file: !4, line: 571, baseType: !54, size: 32, offset: 576)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !82, file: !4, line: 572, baseType: !54, size: 32, offset: 608)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !82, file: !4, line: 578, baseType: !153, size: 64, offset: 640)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !155)
!155 = !{!156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !154, file: !4, line: 406, baseType: !41, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !154, file: !4, line: 407, baseType: !86, size: 32, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !154, file: !4, line: 408, baseType: !96, size: 64, offset: 128)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !154, file: !4, line: 409, baseType: !90, size: 64, offset: 192)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !154, file: !4, line: 410, baseType: !90, size: 64, offset: 256)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !154, file: !4, line: 411, baseType: !107, size: 64, offset: 320)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !154, file: !4, line: 412, baseType: !90, size: 64, offset: 384)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !154, file: !4, line: 413, baseType: !90, size: 64, offset: 448)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !154, file: !4, line: 414, baseType: !107, size: 64, offset: 512)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !154, file: !4, line: 417, baseType: !41, size: 64, offset: 576)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !154, file: !4, line: 418, baseType: !41, size: 64, offset: 640)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !154, file: !4, line: 419, baseType: !41, size: 64, offset: 704)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !154, file: !4, line: 420, baseType: !41, size: 64, offset: 768)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !154, file: !4, line: 421, baseType: !96, size: 64, offset: 832)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !154, file: !4, line: 422, baseType: !96, size: 64, offset: 896)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !154, file: !4, line: 423, baseType: !41, size: 64, offset: 960)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !82, file: !4, line: 579, baseType: !153, size: 64, offset: 704)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !82, file: !4, line: 580, baseType: !114, size: 64, offset: 768)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !82, file: !4, line: 581, baseType: !96, size: 64, offset: 832)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !82, file: !4, line: 582, baseType: !96, size: 64, offset: 896)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !82, file: !4, line: 583, baseType: !41, size: 64, offset: 960)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !82, file: !4, line: 584, baseType: !41, size: 64, offset: 1024)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !82, file: !4, line: 585, baseType: !96, size: 64, offset: 1088)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !82, file: !4, line: 586, baseType: !54, size: 32, offset: 1152)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !82, file: !4, line: 588, baseType: !181, size: 64, offset: 1216)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !183, line: 24, flags: DIFlagFwdDecl)
!183 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!184 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !82, file: !4, line: 589, baseType: !41, size: 64, offset: 1280)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !82, file: !4, line: 590, baseType: !54, size: 32, offset: 1344)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !82, file: !4, line: 592, baseType: !54, size: 32, offset: 1376)
!187 = !DILocation(line: 16, column: 15, scope: !51)
!188 = !DILocalVariable(name: "filename_buf", scope: !51, file: !1, line: 19, type: !189)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 2048, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 256)
!192 = !DILocation(line: 19, column: 10, scope: !51)
!193 = !DILocation(line: 20, column: 24, scope: !51)
!194 = !DILocation(line: 20, column: 5, scope: !51)
!195 = !DILocation(line: 21, column: 5, scope: !51)
!196 = !DILocation(line: 21, column: 23, scope: !51)
!197 = !DILocation(line: 22, column: 16, scope: !51)
!198 = !DILocation(line: 22, column: 14, scope: !51)
!199 = !DILocation(line: 24, column: 24, scope: !51)
!200 = !DILocation(line: 24, column: 5, scope: !51)
!201 = !DILocation(line: 25, column: 24, scope: !51)
!202 = !DILocation(line: 25, column: 5, scope: !51)
!203 = !DILocation(line: 26, column: 24, scope: !51)
!204 = !DILocation(line: 26, column: 5, scope: !51)
!205 = !DILocalVariable(name: "xml_content", scope: !51, file: !1, line: 29, type: !57)
!206 = !DILocation(line: 29, column: 17, scope: !51)
!207 = !DILocalVariable(name: "xml_len", scope: !51, file: !1, line: 30, type: !208)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !209, line: 46, baseType: !42)
!209 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!210 = !DILocation(line: 30, column: 12, scope: !51)
!211 = !DILocation(line: 30, column: 29, scope: !51)
!212 = !DILocation(line: 30, column: 22, scope: !51)
!213 = !DILocation(line: 33, column: 5, scope: !51)
!214 = !DILocation(line: 36, column: 33, scope: !51)
!215 = !DILocation(line: 36, column: 46, scope: !51)
!216 = !DILocation(line: 36, column: 14, scope: !51)
!217 = !DILocation(line: 36, column: 12, scope: !51)
!218 = !DILocation(line: 37, column: 9, scope: !219)
!219 = distinct !DILexicalBlock(scope: !51, file: !1, line: 37, column: 9)
!220 = !DILocation(line: 37, column: 16, scope: !219)
!221 = !DILocation(line: 37, column: 9, scope: !51)
!222 = !DILocation(line: 38, column: 9, scope: !223)
!223 = distinct !DILexicalBlock(scope: !219, file: !1, line: 37, column: 25)
!224 = !DILocation(line: 39, column: 9, scope: !223)
!225 = !DILocation(line: 43, column: 29, scope: !51)
!226 = !DILocation(line: 43, column: 11, scope: !51)
!227 = !DILocation(line: 43, column: 9, scope: !51)
!228 = !DILocation(line: 44, column: 5, scope: !51)
!229 = !DILocation(line: 44, column: 12, scope: !51)
!230 = !DILocation(line: 44, column: 16, scope: !51)
!231 = !DILocation(line: 45, column: 33, scope: !232)
!232 = distinct !DILexicalBlock(scope: !51, file: !1, line: 44, column: 22)
!233 = !DILocation(line: 45, column: 15, scope: !232)
!234 = !DILocation(line: 45, column: 13, scope: !232)
!235 = distinct !{!235, !228, !236, !237}
!236 = !DILocation(line: 46, column: 5, scope: !51)
!237 = !{!"llvm.loop.mustprogress"}
!238 = !DILocation(line: 49, column: 9, scope: !239)
!239 = distinct !DILexicalBlock(scope: !51, file: !1, line: 49, column: 9)
!240 = !DILocation(line: 49, column: 13, scope: !239)
!241 = !DILocation(line: 49, column: 9, scope: !51)
!242 = !DILocation(line: 50, column: 13, scope: !243)
!243 = distinct !DILexicalBlock(scope: !244, file: !1, line: 50, column: 13)
!244 = distinct !DILexicalBlock(scope: !239, file: !1, line: 49, column: 19)
!245 = !DILocation(line: 50, column: 13, scope: !244)
!246 = !DILocation(line: 51, column: 17, scope: !247)
!247 = distinct !DILexicalBlock(scope: !243, file: !1, line: 50, column: 19)
!248 = !DILocation(line: 52, column: 9, scope: !247)
!249 = !DILocation(line: 55, column: 13, scope: !250)
!250 = distinct !DILexicalBlock(scope: !243, file: !1, line: 52, column: 16)
!251 = !DILocation(line: 57, column: 25, scope: !252)
!252 = distinct !DILexicalBlock(scope: !250, file: !1, line: 57, column: 17)
!253 = !DILocation(line: 57, column: 17, scope: !252)
!254 = !DILocation(line: 57, column: 48, scope: !252)
!255 = !DILocation(line: 57, column: 17, scope: !250)
!256 = !DILocation(line: 58, column: 25, scope: !257)
!257 = distinct !DILexicalBlock(scope: !252, file: !1, line: 57, column: 54)
!258 = !DILocation(line: 58, column: 62, scope: !257)
!259 = !DILocation(line: 58, column: 72, scope: !257)
!260 = !DILocation(line: 58, column: 17, scope: !257)
!261 = !DILocation(line: 59, column: 13, scope: !257)
!262 = !DILocation(line: 60, column: 25, scope: !263)
!263 = distinct !DILexicalBlock(scope: !252, file: !1, line: 59, column: 20)
!264 = !DILocation(line: 60, column: 63, scope: !263)
!265 = !DILocation(line: 60, column: 89, scope: !263)
!266 = !DILocation(line: 60, column: 17, scope: !263)
!267 = !DILocation(line: 62, column: 17, scope: !250)
!268 = !DILocation(line: 64, column: 5, scope: !244)
!269 = !DILocation(line: 65, column: 13, scope: !270)
!270 = distinct !DILexicalBlock(scope: !239, file: !1, line: 64, column: 12)
!271 = !DILocation(line: 69, column: 23, scope: !51)
!272 = !DILocation(line: 69, column: 5, scope: !51)
!273 = !DILocation(line: 70, column: 5, scope: !51)
!274 = !DILocation(line: 72, column: 12, scope: !51)
!275 = !DILocation(line: 72, column: 5, scope: !51)
!276 = !DILocation(line: 73, column: 1, scope: !51)

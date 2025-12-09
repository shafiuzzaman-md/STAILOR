; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/225_xmlIO.c_2253_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/225_xmlIO.c_2253_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlParserInputBuffer = type { i8*, i32 (i8*, i8*, i32)*, i32 (i8*)*, %struct._xmlCharEncodingHandler*, %struct._xmlBuf*, %struct._xmlBuf*, i32, i32, i64 }
%struct._xmlCharEncodingHandler = type { i8*, i32 (i8*, i32*, i8*, i32*)*, i32 (i8*, i32*, i8*, i32*)*, i8*, i8*, %struct._uconv_t*, %struct._uconv_t* }
%struct._uconv_t = type { %struct.UConverter*, %struct.UConverter*, [1024 x i16], i16*, i16* }
%struct.UConverter = type opaque
%struct._xmlBuf = type opaque

@.str = private unnamed_addr constant [4 x i8] c"enc\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_62911_vul/225_xmlIO.c_2253_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !41 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct._xmlParserInputBuffer*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !45, metadata !DIExpression()), !dbg !47
  %4 = bitcast i32* %2 to i8*, !dbg !48
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !49
  call void @llvm.dbg.declare(metadata %struct._xmlParserInputBuffer** %3, metadata !50, metadata !DIExpression()), !dbg !130
  %5 = load i32, i32* %2, align 4, !dbg !131
  %6 = call %struct._xmlParserInputBuffer* @xmlAllocParserInputBuffer(i32 noundef %5), !dbg !132
  store %struct._xmlParserInputBuffer* %6, %struct._xmlParserInputBuffer** %3, align 8, !dbg !130
  %7 = load %struct._xmlParserInputBuffer*, %struct._xmlParserInputBuffer** %3, align 8, !dbg !133
  %8 = icmp ne %struct._xmlParserInputBuffer* %7, null, !dbg !135
  br i1 %8, label %9, label %12, !dbg !136

9:                                                ; preds = %0
  %10 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.2, i64 0, i64 0), i32 noundef 11, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !137
  %11 = load %struct._xmlParserInputBuffer*, %struct._xmlParserInputBuffer** %3, align 8, !dbg !139
  call void @xmlFreeParserInputBuffer(%struct._xmlParserInputBuffer* noundef %11), !dbg !140
  br label %12, !dbg !141

12:                                               ; preds = %9, %0
  ret i32 0, !dbg !142
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare %struct._xmlParserInputBuffer* @xmlAllocParserInputBuffer(i32 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare void @xmlFreeParserInputBuffer(%struct._xmlParserInputBuffer* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !31, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/225_xmlIO.c_2253_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "4d00a93a20bd8399714af572dd7f8773")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 58, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/usr/include/libxml2/libxml/encoding.h", directory: "", checksumkind: CSK_MD5, checksum: "807b84fade38abad3ae0d9b6af714dbc")
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30}
!7 = !DIEnumerator(name: "XML_CHAR_ENCODING_ERROR", value: -1)
!8 = !DIEnumerator(name: "XML_CHAR_ENCODING_NONE", value: 0)
!9 = !DIEnumerator(name: "XML_CHAR_ENCODING_UTF8", value: 1)
!10 = !DIEnumerator(name: "XML_CHAR_ENCODING_UTF16LE", value: 2)
!11 = !DIEnumerator(name: "XML_CHAR_ENCODING_UTF16BE", value: 3)
!12 = !DIEnumerator(name: "XML_CHAR_ENCODING_UCS4LE", value: 4)
!13 = !DIEnumerator(name: "XML_CHAR_ENCODING_UCS4BE", value: 5)
!14 = !DIEnumerator(name: "XML_CHAR_ENCODING_EBCDIC", value: 6)
!15 = !DIEnumerator(name: "XML_CHAR_ENCODING_UCS4_2143", value: 7)
!16 = !DIEnumerator(name: "XML_CHAR_ENCODING_UCS4_3412", value: 8)
!17 = !DIEnumerator(name: "XML_CHAR_ENCODING_UCS2", value: 9)
!18 = !DIEnumerator(name: "XML_CHAR_ENCODING_8859_1", value: 10)
!19 = !DIEnumerator(name: "XML_CHAR_ENCODING_8859_2", value: 11)
!20 = !DIEnumerator(name: "XML_CHAR_ENCODING_8859_3", value: 12)
!21 = !DIEnumerator(name: "XML_CHAR_ENCODING_8859_4", value: 13)
!22 = !DIEnumerator(name: "XML_CHAR_ENCODING_8859_5", value: 14)
!23 = !DIEnumerator(name: "XML_CHAR_ENCODING_8859_6", value: 15)
!24 = !DIEnumerator(name: "XML_CHAR_ENCODING_8859_7", value: 16)
!25 = !DIEnumerator(name: "XML_CHAR_ENCODING_8859_8", value: 17)
!26 = !DIEnumerator(name: "XML_CHAR_ENCODING_8859_9", value: 18)
!27 = !DIEnumerator(name: "XML_CHAR_ENCODING_2022_JP", value: 19)
!28 = !DIEnumerator(name: "XML_CHAR_ENCODING_SHIFT_JIS", value: 20)
!29 = !DIEnumerator(name: "XML_CHAR_ENCODING_EUC_JP", value: 21)
!30 = !DIEnumerator(name: "XML_CHAR_ENCODING_ASCII", value: 22)
!31 = !{!32}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = !{i32 7, !"Dwarf Version", i32 5}
!34 = !{i32 2, !"Debug Info Version", i32 3}
!35 = !{i32 1, !"wchar_size", i32 4}
!36 = !{i32 7, !"PIC Level", i32 2}
!37 = !{i32 7, !"PIE Level", i32 2}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"Ubuntu clang version 14.0.6"}
!41 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 5, type: !42, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !44)
!42 = !DISubroutineType(types: !43)
!43 = !{!5}
!44 = !{}
!45 = !DILocalVariable(name: "enc", scope: !41, file: !1, line: 6, type: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncoding", file: !4, line: 83, baseType: !3)
!47 = !DILocation(line: 6, column: 21, scope: !41)
!48 = !DILocation(line: 7, column: 24, scope: !41)
!49 = !DILocation(line: 7, column: 5, scope: !41)
!50 = !DILocalVariable(name: "ret", scope: !41, file: !1, line: 9, type: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputBufferPtr", file: !52, line: 29, baseType: !53)
!52 = !DIFile(filename: "/usr/include/libxml2/libxml/tree.h", directory: "", checksumkind: CSK_MD5, checksum: "750bac4395c48684302094dba58dc4a1")
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputBuffer", file: !52, line: 28, baseType: !55)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserInputBuffer", file: !56, line: 125, size: 512, elements: !57)
!56 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlIO.h", directory: "", checksumkind: CSK_MD5, checksum: "a868e7a396360b2f16d10eac4a34669c")
!57 = !{!58, !59, !66, !71, !120, !125, !126, !127, !128}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !55, file: !56, line: 126, baseType: !32, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "readcallback", scope: !55, file: !56, line: 127, baseType: !60, size: 64, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlInputReadCallback", file: !56, line: 54, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{!5, !32, !64, !5}
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "closecallback", scope: !55, file: !56, line: 128, baseType: !67, size: 64, offset: 128)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlInputCloseCallback", file: !56, line: 63, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{!5, !32}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !55, file: !56, line: 130, baseType: !72, size: 64, offset: 192)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingHandlerPtr", file: !4, line: 145, baseType: !73)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingHandler", file: !4, line: 144, baseType: !75)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlCharEncodingHandler", file: !4, line: 146, size: 448, elements: !76)
!76 = !{!77, !78, !88, !90, !93, !94, !119}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !75, file: !4, line: 147, baseType: !64, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !75, file: !4, line: 148, baseType: !79, size: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingInputFunc", file: !4, line: 101, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DISubroutineType(types: !82)
!82 = !{!5, !83, !85, !86, !85}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !75, file: !4, line: 149, baseType: !89, size: 64, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingOutputFunc", file: !4, line: 123, baseType: !80)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "iconv_in", scope: !75, file: !4, line: 151, baseType: !91, size: 64, offset: 192)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "iconv_t", file: !92, line: 29, baseType: !32)
!92 = !DIFile(filename: "/usr/include/iconv.h", directory: "", checksumkind: CSK_MD5, checksum: "edfee9bcfa398c9184cc8f95deb97c16")
!93 = !DIDerivedType(tag: DW_TAG_member, name: "iconv_out", scope: !75, file: !4, line: 152, baseType: !91, size: 64, offset: 256)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "uconv_in", scope: !75, file: !4, line: 155, baseType: !95, size: 64, offset: 320)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "uconv_t", file: !4, line: 141, baseType: !97)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_uconv_t", file: !4, line: 134, size: 16640, elements: !98)
!98 = !{!99, !104, !105, !116, !118}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "uconv", scope: !97, file: !4, line: 135, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "UConverter", file: !102, line: 96, baseType: !103)
!102 = !DIFile(filename: "/usr/include/unicode/ucnv_err.h", directory: "", checksumkind: CSK_MD5, checksum: "a507bbb125e54d860485ec054a4a55ed")
!103 = !DICompositeType(tag: DW_TAG_structure_type, name: "UConverter", file: !102, line: 93, flags: DIFlagFwdDecl)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "utf8", scope: !97, file: !4, line: 136, baseType: !100, size: 64, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_buf", scope: !97, file: !4, line: 137, baseType: !106, size: 16384, offset: 128)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 16384, elements: !114)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "UChar", file: !108, line: 388, baseType: !109)
!108 = !DIFile(filename: "/usr/include/unicode/umachine.h", directory: "", checksumkind: CSK_MD5, checksum: "2d902ff00eac765b305cb113b74d34df")
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !110, line: 25, baseType: !111)
!110 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "256fcabbefa27ca8cf5e6d37525e6e16")
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !112, line: 40, baseType: !113)
!112 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!113 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!114 = !{!115}
!115 = !DISubrange(count: 1024)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_source", scope: !97, file: !4, line: 138, baseType: !117, size: 64, offset: 16512)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_target", scope: !97, file: !4, line: 139, baseType: !117, size: 64, offset: 16576)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "uconv_out", scope: !75, file: !4, line: 156, baseType: !95, size: 64, offset: 384)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !55, file: !56, line: 132, baseType: !121, size: 64, offset: 256)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBufPtr", file: !52, line: 114, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBuf", file: !52, line: 105, baseType: !124)
!124 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlBuf", file: !52, line: 105, flags: DIFlagFwdDecl)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !55, file: !56, line: 133, baseType: !121, size: 64, offset: 320)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "compressed", scope: !55, file: !56, line: 134, baseType: !5, size: 32, offset: 384)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !55, file: !56, line: 135, baseType: !5, size: 32, offset: 416)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "rawconsumed", scope: !55, file: !56, line: 136, baseType: !129, size: 64, offset: 448)
!129 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!130 = !DILocation(line: 9, column: 29, scope: !41)
!131 = !DILocation(line: 9, column: 61, scope: !41)
!132 = !DILocation(line: 9, column: 35, scope: !41)
!133 = !DILocation(line: 10, column: 9, scope: !134)
!134 = distinct !DILexicalBlock(scope: !41, file: !1, line: 10, column: 9)
!135 = !DILocation(line: 10, column: 13, scope: !134)
!136 = !DILocation(line: 10, column: 9, scope: !41)
!137 = !DILocation(line: 11, column: 9, scope: !138)
!138 = distinct !DILexicalBlock(scope: !134, file: !1, line: 10, column: 22)
!139 = !DILocation(line: 12, column: 34, scope: !138)
!140 = !DILocation(line: 12, column: 9, scope: !138)
!141 = !DILocation(line: 13, column: 5, scope: !138)
!142 = !DILocation(line: 14, column: 5, scope: !41)

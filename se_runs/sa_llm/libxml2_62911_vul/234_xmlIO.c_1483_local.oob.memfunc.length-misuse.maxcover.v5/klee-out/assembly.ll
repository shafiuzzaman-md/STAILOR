; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/234_xmlIO.c_1483_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/234_xmlIO.c_1483_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlParserInputBuffer = type { i8*, i32 (i8*, i8*, i32)*, i32 (i8*)*, %struct._xmlCharEncodingHandler*, %struct._xmlBuf*, %struct._xmlBuf*, i32, i32, i64 }
%struct._xmlCharEncodingHandler = type { i8*, i32 (i8*, i32*, i8*, i32*)*, i32 (i8*, i32*, i8*, i32*)*, i8*, i8*, %struct._uconv_t*, %struct._uconv_t* }
%struct._uconv_t = type { %struct.UConverter*, %struct.UConverter*, [1024 x i16], i16*, i16* }
%struct.UConverter = type opaque
%struct._xmlBuf = type opaque

@.str = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_62911_vul/234_xmlIO.c_1483_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !41 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca %struct._xmlParserInputBuffer*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !45, metadata !DIExpression()), !dbg !50
  %4 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !51
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !dbg !52
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !53
  store i8 0, i8* %5, align 1, !dbg !54
  call void @llvm.dbg.declare(metadata %struct._xmlParserInputBuffer** %3, metadata !55, metadata !DIExpression()), !dbg !134
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !135
  %7 = call %struct._xmlParserInputBuffer* @xmlParserInputBufferCreateFilename(i8* noundef %6, i32 noundef 0), !dbg !136
  store %struct._xmlParserInputBuffer* %7, %struct._xmlParserInputBuffer** %3, align 8, !dbg !134
  %8 = load %struct._xmlParserInputBuffer*, %struct._xmlParserInputBuffer** %3, align 8, !dbg !137
  %9 = icmp ne %struct._xmlParserInputBuffer* %8, null, !dbg !139
  br i1 %9, label %10, label %13, !dbg !140

10:                                               ; preds = %0
  %11 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.2, i64 0, i64 0), i32 noundef 24, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !141
  %12 = load %struct._xmlParserInputBuffer*, %struct._xmlParserInputBuffer** %3, align 8, !dbg !143
  call void @xmlFreeParserInputBuffer(%struct._xmlParserInputBuffer* noundef %12), !dbg !144
  br label %13, !dbg !145

13:                                               ; preds = %10, %0
  ret i32 0, !dbg !146
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare %struct._xmlParserInputBuffer* @xmlParserInputBufferCreateFilename(i8* noundef, i32 noundef) #2

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
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/234_xmlIO.c_1483_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "c61c0d39c3890c2b655ccd46c9a72dff")
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
!41 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 6, type: !42, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !44)
!42 = !DISubroutineType(types: !43)
!43 = !{!5}
!44 = !{}
!45 = !DILocalVariable(name: "filename", scope: !41, file: !1, line: 8, type: !46)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 2048, elements: !48)
!47 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!48 = !{!49}
!49 = !DISubrange(count: 256)
!50 = !DILocation(line: 8, column: 10, scope: !41)
!51 = !DILocation(line: 9, column: 24, scope: !41)
!52 = !DILocation(line: 9, column: 5, scope: !41)
!53 = !DILocation(line: 11, column: 5, scope: !41)
!54 = !DILocation(line: 11, column: 19, scope: !41)
!55 = !DILocalVariable(name: "input", scope: !41, file: !1, line: 17, type: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputBufferPtr", file: !57, line: 29, baseType: !58)
!57 = !DIFile(filename: "/usr/include/libxml2/libxml/tree.h", directory: "", checksumkind: CSK_MD5, checksum: "750bac4395c48684302094dba58dc4a1")
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputBuffer", file: !57, line: 28, baseType: !60)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserInputBuffer", file: !61, line: 125, size: 512, elements: !62)
!61 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlIO.h", directory: "", checksumkind: CSK_MD5, checksum: "a868e7a396360b2f16d10eac4a34669c")
!62 = !{!63, !64, !70, !75, !124, !129, !130, !131, !132}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !60, file: !61, line: 126, baseType: !32, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "readcallback", scope: !60, file: !61, line: 127, baseType: !65, size: 64, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlInputReadCallback", file: !61, line: 54, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DISubroutineType(types: !68)
!68 = !{!5, !32, !69, !5}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "closecallback", scope: !60, file: !61, line: 128, baseType: !71, size: 64, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlInputCloseCallback", file: !61, line: 63, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{!5, !32}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !60, file: !61, line: 130, baseType: !76, size: 64, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingHandlerPtr", file: !4, line: 145, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingHandler", file: !4, line: 144, baseType: !79)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlCharEncodingHandler", file: !4, line: 146, size: 448, elements: !80)
!80 = !{!81, !82, !92, !94, !97, !98, !123}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !79, file: !4, line: 147, baseType: !69, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !79, file: !4, line: 148, baseType: !83, size: 64, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingInputFunc", file: !4, line: 101, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DISubroutineType(types: !86)
!86 = !{!5, !87, !89, !90, !89}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !79, file: !4, line: 149, baseType: !93, size: 64, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingOutputFunc", file: !4, line: 123, baseType: !84)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "iconv_in", scope: !79, file: !4, line: 151, baseType: !95, size: 64, offset: 192)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "iconv_t", file: !96, line: 29, baseType: !32)
!96 = !DIFile(filename: "/usr/include/iconv.h", directory: "", checksumkind: CSK_MD5, checksum: "edfee9bcfa398c9184cc8f95deb97c16")
!97 = !DIDerivedType(tag: DW_TAG_member, name: "iconv_out", scope: !79, file: !4, line: 152, baseType: !95, size: 64, offset: 256)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "uconv_in", scope: !79, file: !4, line: 155, baseType: !99, size: 64, offset: 320)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "uconv_t", file: !4, line: 141, baseType: !101)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_uconv_t", file: !4, line: 134, size: 16640, elements: !102)
!102 = !{!103, !108, !109, !120, !122}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "uconv", scope: !101, file: !4, line: 135, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "UConverter", file: !106, line: 96, baseType: !107)
!106 = !DIFile(filename: "/usr/include/unicode/ucnv_err.h", directory: "", checksumkind: CSK_MD5, checksum: "a507bbb125e54d860485ec054a4a55ed")
!107 = !DICompositeType(tag: DW_TAG_structure_type, name: "UConverter", file: !106, line: 93, flags: DIFlagFwdDecl)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "utf8", scope: !101, file: !4, line: 136, baseType: !104, size: 64, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_buf", scope: !101, file: !4, line: 137, baseType: !110, size: 16384, offset: 128)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 16384, elements: !118)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "UChar", file: !112, line: 388, baseType: !113)
!112 = !DIFile(filename: "/usr/include/unicode/umachine.h", directory: "", checksumkind: CSK_MD5, checksum: "2d902ff00eac765b305cb113b74d34df")
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !114, line: 25, baseType: !115)
!114 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "256fcabbefa27ca8cf5e6d37525e6e16")
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !116, line: 40, baseType: !117)
!116 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!117 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!118 = !{!119}
!119 = !DISubrange(count: 1024)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_source", scope: !101, file: !4, line: 138, baseType: !121, size: 64, offset: 16512)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_target", scope: !101, file: !4, line: 139, baseType: !121, size: 64, offset: 16576)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "uconv_out", scope: !79, file: !4, line: 156, baseType: !99, size: 64, offset: 384)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !60, file: !61, line: 132, baseType: !125, size: 64, offset: 256)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBufPtr", file: !57, line: 114, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBuf", file: !57, line: 105, baseType: !128)
!128 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlBuf", file: !57, line: 105, flags: DIFlagFwdDecl)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !60, file: !61, line: 133, baseType: !125, size: 64, offset: 320)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "compressed", scope: !60, file: !61, line: 134, baseType: !5, size: 32, offset: 384)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !60, file: !61, line: 135, baseType: !5, size: 32, offset: 416)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "rawconsumed", scope: !60, file: !61, line: 136, baseType: !133, size: 64, offset: 448)
!133 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!134 = !DILocation(line: 17, column: 29, scope: !41)
!135 = !DILocation(line: 17, column: 72, scope: !41)
!136 = !DILocation(line: 17, column: 37, scope: !41)
!137 = !DILocation(line: 18, column: 9, scope: !138)
!138 = distinct !DILexicalBlock(scope: !41, file: !1, line: 18, column: 9)
!139 = !DILocation(line: 18, column: 15, scope: !138)
!140 = !DILocation(line: 18, column: 9, scope: !41)
!141 = !DILocation(line: 24, column: 9, scope: !142)
!142 = distinct !DILexicalBlock(scope: !138, file: !1, line: 18, column: 24)
!143 = !DILocation(line: 25, column: 34, scope: !142)
!144 = !DILocation(line: 25, column: 9, scope: !142)
!145 = !DILocation(line: 26, column: 5, scope: !142)
!146 = !DILocation(line: 28, column: 5, scope: !41)

; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/222_xmlIO.c_2291_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/222_xmlIO.c_2291_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlCharEncodingHandler = type { i8*, i32 (i8*, i32*, i8*, i32*)*, i32 (i8*, i32*, i8*, i32*)*, i8*, i8*, %struct._uconv_t*, %struct._uconv_t* }
%struct._uconv_t = type { %struct.UConverter*, %struct.UConverter*, [1024 x i16], i16*, i16* }
%struct.UConverter = type opaque
%struct._xmlOutputBuffer = type { i8*, i32 (i8*, i8*, i32)*, i32 (i8*)*, %struct._xmlCharEncodingHandler*, %struct._xmlBuf*, %struct._xmlBuf*, i32, i32 }
%struct._xmlBuf = type opaque

@.str = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.1 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_62911_vul/222_xmlIO.c_2291_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !12 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlCharEncodingHandler*, align 8
  %3 = alloca %struct._xmlOutputBuffer*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlCharEncodingHandler** %2, metadata !17, metadata !DIExpression()), !dbg !69
  store %struct._xmlCharEncodingHandler* null, %struct._xmlCharEncodingHandler** %2, align 8, !dbg !69
  call void @llvm.dbg.declare(metadata %struct._xmlOutputBuffer** %3, metadata !70, metadata !DIExpression()), !dbg !100
  %4 = load %struct._xmlCharEncodingHandler*, %struct._xmlCharEncodingHandler** %2, align 8, !dbg !101
  %5 = call %struct._xmlOutputBuffer* @xmlAllocOutputBuffer(%struct._xmlCharEncodingHandler* noundef %4), !dbg !102
  store %struct._xmlOutputBuffer* %5, %struct._xmlOutputBuffer** %3, align 8, !dbg !103
  %6 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %3, align 8, !dbg !104
  %7 = icmp ne %struct._xmlOutputBuffer* %6, null, !dbg !106
  br i1 %7, label %8, label %12, !dbg !107

8:                                                ; preds = %0
  %9 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.1, i64 0, i64 0), i32 noundef 13, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !108
  %10 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %3, align 8, !dbg !110
  %11 = call i32 @xmlOutputBufferClose(%struct._xmlOutputBuffer* noundef %10), !dbg !111
  br label %12, !dbg !112

12:                                               ; preds = %8, %0
  ret i32 0, !dbg !113
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct._xmlOutputBuffer* @xmlAllocOutputBuffer(%struct._xmlCharEncodingHandler* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare i32 @xmlOutputBufferClose(%struct._xmlOutputBuffer* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/222_xmlIO.c_2291_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "db80476471d908c4fe92237c396451af")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 7, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"Ubuntu clang version 14.0.6"}
!12 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 7, type: !13, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!13 = !DISubroutineType(types: !14)
!14 = !{!15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{}
!17 = !DILocalVariable(name: "encoder", scope: !12, file: !1, line: 8, type: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingHandlerPtr", file: !19, line: 145, baseType: !20)
!19 = !DIFile(filename: "/usr/include/libxml2/libxml/encoding.h", directory: "", checksumkind: CSK_MD5, checksum: "807b84fade38abad3ae0d9b6af714dbc")
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingHandler", file: !19, line: 144, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlCharEncodingHandler", file: !19, line: 146, size: 448, elements: !23)
!23 = !{!24, !27, !37, !39, !42, !43, !68}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !22, file: !19, line: 147, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !22, file: !19, line: 148, baseType: !28, size: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingInputFunc", file: !19, line: 101, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DISubroutineType(types: !31)
!31 = !{!15, !32, !34, !35, !34}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !22, file: !19, line: 149, baseType: !38, size: 64, offset: 128)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingOutputFunc", file: !19, line: 123, baseType: !29)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "iconv_in", scope: !22, file: !19, line: 151, baseType: !40, size: 64, offset: 192)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "iconv_t", file: !41, line: 29, baseType: !3)
!41 = !DIFile(filename: "/usr/include/iconv.h", directory: "", checksumkind: CSK_MD5, checksum: "edfee9bcfa398c9184cc8f95deb97c16")
!42 = !DIDerivedType(tag: DW_TAG_member, name: "iconv_out", scope: !22, file: !19, line: 152, baseType: !40, size: 64, offset: 256)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "uconv_in", scope: !22, file: !19, line: 155, baseType: !44, size: 64, offset: 320)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "uconv_t", file: !19, line: 141, baseType: !46)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_uconv_t", file: !19, line: 134, size: 16640, elements: !47)
!47 = !{!48, !53, !54, !65, !67}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "uconv", scope: !46, file: !19, line: 135, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "UConverter", file: !51, line: 96, baseType: !52)
!51 = !DIFile(filename: "/usr/include/unicode/ucnv_err.h", directory: "", checksumkind: CSK_MD5, checksum: "a507bbb125e54d860485ec054a4a55ed")
!52 = !DICompositeType(tag: DW_TAG_structure_type, name: "UConverter", file: !51, line: 93, flags: DIFlagFwdDecl)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "utf8", scope: !46, file: !19, line: 136, baseType: !49, size: 64, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_buf", scope: !46, file: !19, line: 137, baseType: !55, size: 16384, offset: 128)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 16384, elements: !63)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "UChar", file: !57, line: 388, baseType: !58)
!57 = !DIFile(filename: "/usr/include/unicode/umachine.h", directory: "", checksumkind: CSK_MD5, checksum: "2d902ff00eac765b305cb113b74d34df")
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !59, line: 25, baseType: !60)
!59 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "256fcabbefa27ca8cf5e6d37525e6e16")
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !61, line: 40, baseType: !62)
!61 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!62 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!63 = !{!64}
!64 = !DISubrange(count: 1024)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_source", scope: !46, file: !19, line: 138, baseType: !66, size: 64, offset: 16512)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_target", scope: !46, file: !19, line: 139, baseType: !66, size: 64, offset: 16576)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "uconv_out", scope: !22, file: !19, line: 156, baseType: !44, size: 64, offset: 384)
!69 = !DILocation(line: 8, column: 31, scope: !12)
!70 = !DILocalVariable(name: "ret", scope: !12, file: !1, line: 9, type: !71)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlOutputBufferPtr", file: !72, line: 32, baseType: !73)
!72 = !DIFile(filename: "/usr/include/libxml2/libxml/tree.h", directory: "", checksumkind: CSK_MD5, checksum: "750bac4395c48684302094dba58dc4a1")
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlOutputBuffer", file: !72, line: 31, baseType: !75)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlOutputBuffer", file: !76, line: 141, size: 448, elements: !77)
!76 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlIO.h", directory: "", checksumkind: CSK_MD5, checksum: "a868e7a396360b2f16d10eac4a34669c")
!77 = !{!78, !79, !86, !91, !92, !97, !98, !99}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !75, file: !76, line: 142, baseType: !3, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "writecallback", scope: !75, file: !76, line: 143, baseType: !80, size: 64, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlOutputWriteCallback", file: !76, line: 100, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DISubroutineType(types: !83)
!83 = !{!15, !3, !84, !15}
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "closecallback", scope: !75, file: !76, line: 144, baseType: !87, size: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlOutputCloseCallback", file: !76, line: 110, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DISubroutineType(types: !90)
!90 = !{!15, !3}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !75, file: !76, line: 146, baseType: !18, size: 64, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !75, file: !76, line: 148, baseType: !93, size: 64, offset: 256)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBufPtr", file: !72, line: 114, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBuf", file: !72, line: 105, baseType: !96)
!96 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlBuf", file: !72, line: 105, flags: DIFlagFwdDecl)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "conv", scope: !75, file: !76, line: 149, baseType: !93, size: 64, offset: 320)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "written", scope: !75, file: !76, line: 150, baseType: !15, size: 32, offset: 384)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !75, file: !76, line: 151, baseType: !15, size: 32, offset: 416)
!100 = !DILocation(line: 9, column: 24, scope: !12)
!101 = !DILocation(line: 11, column: 32, scope: !12)
!102 = !DILocation(line: 11, column: 11, scope: !12)
!103 = !DILocation(line: 11, column: 9, scope: !12)
!104 = !DILocation(line: 12, column: 9, scope: !105)
!105 = distinct !DILexicalBlock(scope: !12, file: !1, line: 12, column: 9)
!106 = !DILocation(line: 12, column: 13, scope: !105)
!107 = !DILocation(line: 12, column: 9, scope: !12)
!108 = !DILocation(line: 13, column: 9, scope: !109)
!109 = distinct !DILexicalBlock(scope: !105, file: !1, line: 12, column: 22)
!110 = !DILocation(line: 14, column: 30, scope: !109)
!111 = !DILocation(line: 14, column: 9, scope: !109)
!112 = !DILocation(line: 15, column: 5, scope: !109)
!113 = !DILocation(line: 17, column: 5, scope: !12)

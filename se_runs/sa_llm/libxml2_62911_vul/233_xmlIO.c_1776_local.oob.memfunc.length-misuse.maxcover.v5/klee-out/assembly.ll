; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/233_xmlIO.c_1776_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/233_xmlIO.c_1776_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlOutputBuffer = type { i8*, i32 (i8*, i8*, i32)*, i32 (i8*)*, %struct._xmlCharEncodingHandler*, %struct._xmlBuf*, %struct._xmlBuf*, i32, i32 }
%struct._xmlCharEncodingHandler = type { i8*, i32 (i8*, i32*, i8*, i32*)*, i32 (i8*, i32*, i8*, i32*)*, i8*, i8*, %struct._uconv_t*, %struct._uconv_t* }
%struct._uconv_t = type { %struct.UConverter*, %struct.UConverter*, [1024 x i16], i16*, i16* }
%struct.UConverter = type opaque
%struct._xmlBuf = type opaque

@.str = private unnamed_addr constant [13 x i8] c"post_uri_len\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"post_uri_buf\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_62911_vul/233_xmlIO.c_1776_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !25 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca [256 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca %struct._xmlOutputBuffer*, align 8
  %6 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !31, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.declare(metadata i32* %4, metadata !36, metadata !DIExpression()), !dbg !37
  %7 = bitcast i32* %4 to i8*, !dbg !38
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0)), !dbg !39
  %8 = load i32, i32* %4, align 4, !dbg !40
  %9 = icmp sge i32 %8, 0, !dbg !41
  br i1 %9, label %10, label %13, !dbg !42

10:                                               ; preds = %0
  %11 = load i32, i32* %4, align 4, !dbg !43
  %12 = icmp slt i32 %11, 256, !dbg !44
  br label %13

13:                                               ; preds = %10, %0
  %14 = phi i1 [ false, %0 ], [ %12, %10 ], !dbg !45
  %15 = zext i1 %14 to i32, !dbg !42
  %16 = sext i32 %15 to i64, !dbg !40
  call void @klee_assume(i64 noundef %16), !dbg !46
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !47
  call void @klee_make_symbolic(i8* noundef %17, i64 noundef 256, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0)), !dbg !48
  %18 = load i32, i32* %4, align 4, !dbg !49
  %19 = sext i32 %18 to i64, !dbg !50
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 %19, !dbg !50
  store i8 0, i8* %20, align 1, !dbg !51
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !52
  store i8* %21, i8** %2, align 8, !dbg !53
  call void @llvm.dbg.declare(metadata %struct._xmlOutputBuffer** %5, metadata !54, metadata !DIExpression()), !dbg !123
  %22 = call %struct._xmlOutputBuffer* @xmlOutputBufferCreateIO(i32 (i8*, i8*, i32)* noundef null, i32 (i8*)* noundef null, i8* noundef null, %struct._xmlCharEncodingHandler* noundef null), !dbg !124
  store %struct._xmlOutputBuffer* %22, %struct._xmlOutputBuffer** %5, align 8, !dbg !123
  %23 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %5, align 8, !dbg !125
  %24 = icmp ne %struct._xmlOutputBuffer* %23, null, !dbg !125
  br i1 %24, label %25, label %28, !dbg !127

25:                                               ; preds = %13
  %26 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %5, align 8, !dbg !128
  %27 = call i32 @xmlOutputBufferClose(%struct._xmlOutputBuffer* noundef %26), !dbg !130
  br label %28, !dbg !131

28:                                               ; preds = %25, %13
  call void @llvm.dbg.declare(metadata i8** %6, metadata !132, metadata !DIExpression()), !dbg !133
  %29 = load i8*, i8** %2, align 8, !dbg !134
  %30 = call i32 (i8*, ...) bitcast (i32 (...)* @xmlIOHTTPWriteOpen to i32 (i8*, ...)*)(i8* noundef %29), !dbg !135
  %31 = sext i32 %30 to i64, !dbg !135
  %32 = inttoptr i64 %31 to i8*, !dbg !135
  store i8* %32, i8** %6, align 8, !dbg !133
  %33 = load i8*, i8** %6, align 8, !dbg !136
  %34 = icmp ne i8* %33, null, !dbg !136
  br i1 %34, label %35, label %39, !dbg !138

35:                                               ; preds = %28
  %36 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.3, i64 0, i64 0), i32 noundef 25, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !139
  %37 = load i8*, i8** %6, align 8, !dbg !141
  %38 = call i32 (i8*, ...) bitcast (i32 (...)* @xmlFreeHTTPWriteCtxt to i32 (i8*, ...)*)(i8* noundef %37), !dbg !142
  br label %39, !dbg !143

39:                                               ; preds = %35, %28
  ret i32 0, !dbg !144
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

declare %struct._xmlOutputBuffer* @xmlOutputBufferCreateIO(i32 (i8*, i8*, i32)* noundef, i32 (i8*)* noundef, i8* noundef, %struct._xmlCharEncodingHandler* noundef) #2

declare i32 @xmlOutputBufferClose(%struct._xmlOutputBuffer* noundef) #2

declare i32 @xmlIOHTTPWriteOpen(...) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare i32 @xmlFreeHTTPWriteCtxt(...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/233_xmlIO.c_1776_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "34f397bbda4969903d0c5314b8497272")
!2 = !{!3, !13, !9}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlOutputWriteCallback", file: !4, line: 100, baseType: !5)
!4 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlIO.h", directory: "", checksumkind: CSK_MD5, checksum: "a868e7a396360b2f16d10eac4a34669c")
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DISubroutineType(types: !7)
!7 = !{!8, !9, !10, !8}
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlOutputCloseCallback", file: !4, line: 110, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{!8, !9}
!17 = !{i32 7, !"Dwarf Version", i32 5}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 4}
!20 = !{i32 7, !"PIC Level", i32 2}
!21 = !{i32 7, !"PIE Level", i32 2}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"Ubuntu clang version 14.0.6"}
!25 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 6, type: !26, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!26 = !DISubroutineType(types: !27)
!27 = !{!8}
!28 = !{}
!29 = !DILocalVariable(name: "post_uri", scope: !25, file: !1, line: 7, type: !10)
!30 = !DILocation(line: 7, column: 17, scope: !25)
!31 = !DILocalVariable(name: "post_uri_buf", scope: !25, file: !1, line: 8, type: !32)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 2048, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 256)
!35 = !DILocation(line: 8, column: 10, scope: !25)
!36 = !DILocalVariable(name: "post_uri_len", scope: !25, file: !1, line: 9, type: !8)
!37 = !DILocation(line: 9, column: 9, scope: !25)
!38 = !DILocation(line: 11, column: 24, scope: !25)
!39 = !DILocation(line: 11, column: 5, scope: !25)
!40 = !DILocation(line: 12, column: 17, scope: !25)
!41 = !DILocation(line: 12, column: 30, scope: !25)
!42 = !DILocation(line: 12, column: 35, scope: !25)
!43 = !DILocation(line: 12, column: 38, scope: !25)
!44 = !DILocation(line: 12, column: 51, scope: !25)
!45 = !DILocation(line: 0, scope: !25)
!46 = !DILocation(line: 12, column: 5, scope: !25)
!47 = !DILocation(line: 13, column: 24, scope: !25)
!48 = !DILocation(line: 13, column: 5, scope: !25)
!49 = !DILocation(line: 14, column: 18, scope: !25)
!50 = !DILocation(line: 14, column: 5, scope: !25)
!51 = !DILocation(line: 14, column: 32, scope: !25)
!52 = !DILocation(line: 15, column: 16, scope: !25)
!53 = !DILocation(line: 15, column: 14, scope: !25)
!54 = !DILocalVariable(name: "outbuf", scope: !25, file: !1, line: 17, type: !55)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlOutputBufferPtr", file: !56, line: 32, baseType: !57)
!56 = !DIFile(filename: "/usr/include/libxml2/libxml/tree.h", directory: "", checksumkind: CSK_MD5, checksum: "750bac4395c48684302094dba58dc4a1")
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlOutputBuffer", file: !56, line: 31, baseType: !59)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlOutputBuffer", file: !4, line: 141, size: 448, elements: !60)
!60 = !{!61, !62, !63, !64, !115, !120, !121, !122}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !59, file: !4, line: 142, baseType: !9, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "writecallback", scope: !59, file: !4, line: 143, baseType: !3, size: 64, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "closecallback", scope: !59, file: !4, line: 144, baseType: !13, size: 64, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !59, file: !4, line: 146, baseType: !65, size: 64, offset: 192)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingHandlerPtr", file: !66, line: 145, baseType: !67)
!66 = !DIFile(filename: "/usr/include/libxml2/libxml/encoding.h", directory: "", checksumkind: CSK_MD5, checksum: "807b84fade38abad3ae0d9b6af714dbc")
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingHandler", file: !66, line: 144, baseType: !69)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlCharEncodingHandler", file: !66, line: 146, size: 448, elements: !70)
!70 = !{!71, !73, !83, !85, !88, !89, !114}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !69, file: !66, line: 147, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !69, file: !66, line: 148, baseType: !74, size: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingInputFunc", file: !66, line: 101, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DISubroutineType(types: !77)
!77 = !{!8, !78, !80, !81, !80}
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !69, file: !66, line: 149, baseType: !84, size: 64, offset: 128)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingOutputFunc", file: !66, line: 123, baseType: !75)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "iconv_in", scope: !69, file: !66, line: 151, baseType: !86, size: 64, offset: 192)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "iconv_t", file: !87, line: 29, baseType: !9)
!87 = !DIFile(filename: "/usr/include/iconv.h", directory: "", checksumkind: CSK_MD5, checksum: "edfee9bcfa398c9184cc8f95deb97c16")
!88 = !DIDerivedType(tag: DW_TAG_member, name: "iconv_out", scope: !69, file: !66, line: 152, baseType: !86, size: 64, offset: 256)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "uconv_in", scope: !69, file: !66, line: 155, baseType: !90, size: 64, offset: 320)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "uconv_t", file: !66, line: 141, baseType: !92)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_uconv_t", file: !66, line: 134, size: 16640, elements: !93)
!93 = !{!94, !99, !100, !111, !113}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "uconv", scope: !92, file: !66, line: 135, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "UConverter", file: !97, line: 96, baseType: !98)
!97 = !DIFile(filename: "/usr/include/unicode/ucnv_err.h", directory: "", checksumkind: CSK_MD5, checksum: "a507bbb125e54d860485ec054a4a55ed")
!98 = !DICompositeType(tag: DW_TAG_structure_type, name: "UConverter", file: !97, line: 93, flags: DIFlagFwdDecl)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "utf8", scope: !92, file: !66, line: 136, baseType: !95, size: 64, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_buf", scope: !92, file: !66, line: 137, baseType: !101, size: 16384, offset: 128)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 16384, elements: !109)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "UChar", file: !103, line: 388, baseType: !104)
!103 = !DIFile(filename: "/usr/include/unicode/umachine.h", directory: "", checksumkind: CSK_MD5, checksum: "2d902ff00eac765b305cb113b74d34df")
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !105, line: 25, baseType: !106)
!105 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "256fcabbefa27ca8cf5e6d37525e6e16")
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !107, line: 40, baseType: !108)
!107 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!108 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!109 = !{!110}
!110 = !DISubrange(count: 1024)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_source", scope: !92, file: !66, line: 138, baseType: !112, size: 64, offset: 16512)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_target", scope: !92, file: !66, line: 139, baseType: !112, size: 64, offset: 16576)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "uconv_out", scope: !69, file: !66, line: 156, baseType: !90, size: 64, offset: 384)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !59, file: !4, line: 148, baseType: !116, size: 64, offset: 256)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBufPtr", file: !56, line: 114, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBuf", file: !56, line: 105, baseType: !119)
!119 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlBuf", file: !56, line: 105, flags: DIFlagFwdDecl)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "conv", scope: !59, file: !4, line: 149, baseType: !116, size: 64, offset: 320)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "written", scope: !59, file: !4, line: 150, baseType: !8, size: 32, offset: 384)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !59, file: !4, line: 151, baseType: !8, size: 32, offset: 416)
!123 = !DILocation(line: 17, column: 24, scope: !25)
!124 = !DILocation(line: 17, column: 33, scope: !25)
!125 = !DILocation(line: 19, column: 9, scope: !126)
!126 = distinct !DILexicalBlock(scope: !25, file: !1, line: 19, column: 9)
!127 = !DILocation(line: 19, column: 9, scope: !25)
!128 = !DILocation(line: 20, column: 30, scope: !129)
!129 = distinct !DILexicalBlock(scope: !126, file: !1, line: 19, column: 17)
!130 = !DILocation(line: 20, column: 9, scope: !129)
!131 = !DILocation(line: 21, column: 5, scope: !129)
!132 = !DILocalVariable(name: "ctxt", scope: !25, file: !1, line: 23, type: !9)
!133 = !DILocation(line: 23, column: 11, scope: !25)
!134 = !DILocation(line: 23, column: 37, scope: !25)
!135 = !DILocation(line: 23, column: 18, scope: !25)
!136 = !DILocation(line: 24, column: 9, scope: !137)
!137 = distinct !DILexicalBlock(scope: !25, file: !1, line: 24, column: 9)
!138 = !DILocation(line: 24, column: 9, scope: !25)
!139 = !DILocation(line: 25, column: 9, scope: !140)
!140 = distinct !DILexicalBlock(scope: !137, file: !1, line: 24, column: 15)
!141 = !DILocation(line: 26, column: 30, scope: !140)
!142 = !DILocation(line: 26, column: 9, scope: !140)
!143 = !DILocation(line: 27, column: 5, scope: !140)
!144 = !DILocation(line: 29, column: 5, scope: !25)

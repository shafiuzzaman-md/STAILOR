; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/155_runtest.c_343_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/155_runtest.c_343_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDoc = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, i32, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlNs*, i8*, i8*, i8*, i8*, i8*, i32, %struct._xmlDict*, i8*, i32, i32 }
%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i8*, i16, i16 }
%struct._xmlAttr = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlAttr*, %struct._xmlAttr*, %struct._xmlDoc*, %struct._xmlNs*, i32, i8* }
%struct._xmlDtd = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._xmlNs = type { %struct._xmlNs*, i32, i8*, i8*, i8*, %struct._xmlDoc* }
%struct._xmlDict = type opaque

@.str = private unnamed_addr constant [13 x i8] c"input_buffer\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"input_len\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"noname.xml\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_62911_vul/155_runtest.c_343_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !56 {
  %1 = alloca i32, align 4
  %2 = alloca [1024 x i8], align 16
  %3 = alloca [2048 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca %struct._xmlDoc*, align 8
  %6 = alloca %struct._xmlNode*, align 8
  %7 = alloca %struct._xmlNode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [1024 x i8]* %2, metadata !61, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.declare(metadata [2048 x i8]* %3, metadata !66, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.declare(metadata i32* %4, metadata !71, metadata !DIExpression()), !dbg !72
  %13 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0, !dbg !73
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 2048, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0)), !dbg !74
  %14 = bitcast i32* %4 to i8*, !dbg !75
  call void @klee_make_symbolic(i8* noundef %14, i64 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)), !dbg !76
  %15 = load i32, i32* %4, align 4, !dbg !77
  %16 = icmp sge i32 %15, 0, !dbg !78
  br i1 %16, label %17, label %21, !dbg !79

17:                                               ; preds = %0
  %18 = load i32, i32* %4, align 4, !dbg !80
  %19 = sext i32 %18 to i64, !dbg !80
  %20 = icmp ult i64 %19, 2048, !dbg !81
  br label %21

21:                                               ; preds = %17, %0
  %22 = phi i1 [ false, %0 ], [ %20, %17 ], !dbg !82
  %23 = zext i1 %22 to i32, !dbg !79
  %24 = sext i32 %23 to i64, !dbg !77
  call void @klee_assume(i64 noundef %24), !dbg !83
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %5, metadata !84, metadata !DIExpression()), !dbg !191
  %25 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0, !dbg !192
  %26 = load i32, i32* %4, align 4, !dbg !193
  %27 = call %struct._xmlDoc* @xmlReadMemory(i8* noundef %25, i32 noundef %26, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* noundef null, i32 noundef 0), !dbg !194
  store %struct._xmlDoc* %27, %struct._xmlDoc** %5, align 8, !dbg !191
  %28 = load %struct._xmlDoc*, %struct._xmlDoc** %5, align 8, !dbg !195
  %29 = icmp eq %struct._xmlDoc* %28, null, !dbg !197
  br i1 %29, label %30, label %31, !dbg !198

30:                                               ; preds = %21
  store i32 0, i32* %1, align 4, !dbg !199
  br label %89, !dbg !199

31:                                               ; preds = %21
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %6, metadata !201, metadata !DIExpression()), !dbg !205
  %32 = load %struct._xmlDoc*, %struct._xmlDoc** %5, align 8, !dbg !206
  %33 = call %struct._xmlNode* @xmlDocGetRootElement(%struct._xmlDoc* noundef %32), !dbg !207
  store %struct._xmlNode* %33, %struct._xmlNode** %6, align 8, !dbg !205
  %34 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !208
  %35 = icmp eq %struct._xmlNode* %34, null, !dbg !210
  br i1 %35, label %36, label %38, !dbg !211

36:                                               ; preds = %31
  %37 = load %struct._xmlDoc*, %struct._xmlDoc** %5, align 8, !dbg !212
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %37), !dbg !214
  store i32 0, i32* %1, align 4, !dbg !215
  br label %89, !dbg !215

38:                                               ; preds = %31
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %7, metadata !216, metadata !DIExpression()), !dbg !217
  %39 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !218
  store %struct._xmlNode* %39, %struct._xmlNode** %7, align 8, !dbg !217
  call void @llvm.dbg.declare(metadata i32* %8, metadata !219, metadata !DIExpression()), !dbg !220
  store i32 0, i32* %8, align 4, !dbg !220
  call void @llvm.dbg.declare(metadata i8** %9, metadata !221, metadata !DIExpression()), !dbg !222
  %40 = load %struct._xmlNode*, %struct._xmlNode** %7, align 8, !dbg !223
  %41 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %40, i32 0, i32 2, !dbg !224
  %42 = load i8*, i8** %41, align 8, !dbg !224
  store i8* %42, i8** %9, align 8, !dbg !222
  call void @llvm.dbg.declare(metadata i8** %10, metadata !225, metadata !DIExpression()), !dbg !226
  %43 = load i8*, i8** %9, align 8, !dbg !227
  store i8* %43, i8** %10, align 8, !dbg !226
  br label %44, !dbg !228

44:                                               ; preds = %70, %38
  %45 = load i8*, i8** %10, align 8, !dbg !229
  %46 = icmp ne i8* %45, null, !dbg !229
  br i1 %46, label %47, label %56, !dbg !230

47:                                               ; preds = %44
  %48 = load i8*, i8** %10, align 8, !dbg !231
  %49 = load i8, i8* %48, align 1, !dbg !232
  %50 = sext i8 %49 to i32, !dbg !232
  %51 = icmp ne i32 %50, 0, !dbg !232
  br i1 %51, label %52, label %56, !dbg !233

52:                                               ; preds = %47
  %53 = load i32, i32* %8, align 4, !dbg !234
  %54 = sext i32 %53 to i64, !dbg !234
  %55 = icmp ult i64 %54, 1023, !dbg !235
  br label %56

56:                                               ; preds = %52, %47, %44
  %57 = phi i1 [ false, %47 ], [ false, %44 ], [ %55, %52 ], !dbg !82
  br i1 %57, label %58, label %78, !dbg !228

58:                                               ; preds = %56
  call void @llvm.dbg.declare(metadata i32* %11, metadata !236, metadata !DIExpression()), !dbg !238
  store i32 1, i32* %11, align 4, !dbg !238
  call void @llvm.dbg.declare(metadata i32* %12, metadata !239, metadata !DIExpression()), !dbg !240
  %59 = load i8*, i8** %10, align 8, !dbg !241
  %60 = call i32 @xmlGetUTF8Char(i8* noundef %59, i32* noundef %11), !dbg !242
  store i32 %60, i32* %12, align 4, !dbg !240
  %61 = load i32, i32* %12, align 4, !dbg !243
  %62 = icmp slt i32 %61, 0, !dbg !245
  br i1 %62, label %69, label %63, !dbg !246

63:                                               ; preds = %58
  %64 = load i32, i32* %8, align 4, !dbg !247
  %65 = load i32, i32* %11, align 4, !dbg !248
  %66 = add nsw i32 %64, %65, !dbg !249
  %67 = sext i32 %66 to i64, !dbg !247
  %68 = icmp ugt i64 %67, 1023, !dbg !250
  br i1 %68, label %69, label %70, !dbg !251

69:                                               ; preds = %63, %58
  br label %78, !dbg !252

70:                                               ; preds = %63
  %71 = load i32, i32* %11, align 4, !dbg !254
  %72 = load i8*, i8** %10, align 8, !dbg !255
  %73 = sext i32 %71 to i64, !dbg !255
  %74 = getelementptr inbounds i8, i8* %72, i64 %73, !dbg !255
  store i8* %74, i8** %10, align 8, !dbg !255
  %75 = load i32, i32* %11, align 4, !dbg !256
  %76 = load i32, i32* %8, align 4, !dbg !257
  %77 = add nsw i32 %76, %75, !dbg !257
  store i32 %77, i32* %8, align 4, !dbg !257
  br label %44, !dbg !228, !llvm.loop !258

78:                                               ; preds = %69, %56
  %79 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.4, i64 0, i64 0), i32 noundef 41, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !261
  %80 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !262
  %81 = load i8*, i8** %9, align 8, !dbg !263
  %82 = load i32, i32* %8, align 4, !dbg !264
  %83 = sext i32 %82 to i64, !dbg !264
  %84 = call i8* @memcpy(i8* %80, i8* %81, i64 %83), !dbg !262
  %85 = load i32, i32* %8, align 4, !dbg !265
  %86 = sext i32 %85 to i64, !dbg !266
  %87 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 %86, !dbg !266
  store i8 0, i8* %87, align 1, !dbg !267
  %88 = load %struct._xmlDoc*, %struct._xmlDoc** %5, align 8, !dbg !268
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %88), !dbg !269
  store i32 0, i32* %1, align 4, !dbg !270
  br label %89, !dbg !270

89:                                               ; preds = %78, %36, %30
  %90 = load i32, i32* %1, align 4, !dbg !271
  ret i32 %90, !dbg !271
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

declare %struct._xmlDoc* @xmlReadMemory(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef) #2

declare %struct._xmlNode* @xmlDocGetRootElement(%struct._xmlDoc* noundef) #2

declare void @xmlFreeDoc(%struct._xmlDoc* noundef) #2

declare i32 @xmlGetUTF8Char(i8* noundef, i32* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #5 !dbg !272 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !281, metadata !DIExpression()), !dbg !282
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !283, metadata !DIExpression()), !dbg !284
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !285, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.declare(metadata i8** %7, metadata !287, metadata !DIExpression()), !dbg !288
  %9 = load i8*, i8** %4, align 8, !dbg !289
  store i8* %9, i8** %7, align 8, !dbg !288
  call void @llvm.dbg.declare(metadata i8** %8, metadata !290, metadata !DIExpression()), !dbg !293
  %10 = load i8*, i8** %5, align 8, !dbg !294
  store i8* %10, i8** %8, align 8, !dbg !293
  br label %11, !dbg !295

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !296
  %13 = add i64 %12, -1, !dbg !296
  store i64 %13, i64* %6, align 8, !dbg !296
  %14 = icmp ugt i64 %12, 0, !dbg !297
  br i1 %14, label %15, label %21, !dbg !295

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !298
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !298
  store i8* %17, i8** %8, align 8, !dbg !298
  %18 = load i8, i8* %16, align 1, !dbg !299
  %19 = load i8*, i8** %7, align 8, !dbg !300
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !300
  store i8* %20, i8** %7, align 8, !dbg !300
  store i8 %18, i8* %19, align 1, !dbg !301
  br label %11, !dbg !295, !llvm.loop !302

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !303
  ret i8* %22, !dbg !304
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55, !55}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !40, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/155_runtest.c_343_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "8ec20e365e9186da7d4e56e1abe88e13")
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
!40 = !{!41, !42, !44}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!46 = distinct !DICompileUnit(language: DW_LANG_C99, file: !47, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!47 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!48 = !{i32 7, !"Dwarf Version", i32 5}
!49 = !{i32 2, !"Debug Info Version", i32 3}
!50 = !{i32 1, !"wchar_size", i32 4}
!51 = !{i32 7, !"PIC Level", i32 2}
!52 = !{i32 7, !"PIE Level", i32 2}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"Ubuntu clang version 14.0.6"}
!56 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 6, type: !57, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !60)
!57 = !DISubroutineType(types: !58)
!58 = !{!59}
!59 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!60 = !{}
!61 = !DILocalVariable(name: "content", scope: !56, file: !1, line: 7, type: !62)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8192, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 1024)
!65 = !DILocation(line: 7, column: 10, scope: !56)
!66 = !DILocalVariable(name: "input_buffer", scope: !56, file: !1, line: 8, type: !67)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 16384, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 2048)
!70 = !DILocation(line: 8, column: 10, scope: !56)
!71 = !DILocalVariable(name: "input_len", scope: !56, file: !1, line: 9, type: !59)
!72 = !DILocation(line: 9, column: 9, scope: !56)
!73 = !DILocation(line: 11, column: 24, scope: !56)
!74 = !DILocation(line: 11, column: 5, scope: !56)
!75 = !DILocation(line: 12, column: 24, scope: !56)
!76 = !DILocation(line: 12, column: 5, scope: !56)
!77 = !DILocation(line: 13, column: 17, scope: !56)
!78 = !DILocation(line: 13, column: 27, scope: !56)
!79 = !DILocation(line: 13, column: 32, scope: !56)
!80 = !DILocation(line: 13, column: 35, scope: !56)
!81 = !DILocation(line: 13, column: 45, scope: !56)
!82 = !DILocation(line: 0, scope: !56)
!83 = !DILocation(line: 13, column: 5, scope: !56)
!84 = !DILocalVariable(name: "doc", scope: !56, file: !1, line: 15, type: !85)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !89)
!89 = !{!90, !91, !93, !94, !149, !150, !151, !152, !153, !154, !155, !156, !176, !177, !178, !179, !180, !181, !182, !183, !184, !188, !189, !190}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !88, file: !4, line: 560, baseType: !41, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !88, file: !4, line: 561, baseType: !92, size: 32, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !88, file: !4, line: 562, baseType: !42, size: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !88, file: !4, line: 563, baseType: !95, size: 64, offset: 192)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !97)
!97 = !{!98, !99, !100, !105, !106, !107, !108, !109, !110, !112, !125, !127, !144, !145, !146, !148}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !96, file: !4, line: 493, baseType: !41, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !96, file: !4, line: 494, baseType: !92, size: 32, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !96, file: !4, line: 495, baseType: !101, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !104, line: 28, baseType: !45)
!104 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!105 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !96, file: !4, line: 496, baseType: !95, size: 64, offset: 192)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !96, file: !4, line: 497, baseType: !95, size: 64, offset: 256)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !96, file: !4, line: 498, baseType: !95, size: 64, offset: 320)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !96, file: !4, line: 499, baseType: !95, size: 64, offset: 384)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !96, file: !4, line: 500, baseType: !95, size: 64, offset: 448)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !96, file: !4, line: 501, baseType: !111, size: 64, offset: 512)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !96, file: !4, line: 504, baseType: !113, size: 64, offset: 576)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !115)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !116)
!116 = !{!117, !119, !121, !122, !123, !124}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !115, file: !4, line: 389, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !115, file: !4, line: 390, baseType: !120, size: 32, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !92)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !115, file: !4, line: 391, baseType: !101, size: 64, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !115, file: !4, line: 392, baseType: !101, size: 64, offset: 192)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !115, file: !4, line: 393, baseType: !41, size: 64, offset: 256)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !115, file: !4, line: 394, baseType: !111, size: 64, offset: 320)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !96, file: !4, line: 505, baseType: !126, size: 64, offset: 640)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !96, file: !4, line: 506, baseType: !128, size: 64, offset: 704)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !130)
!130 = !{!131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !143}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !129, file: !4, line: 434, baseType: !41, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !129, file: !4, line: 435, baseType: !92, size: 32, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !129, file: !4, line: 436, baseType: !101, size: 64, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !129, file: !4, line: 437, baseType: !95, size: 64, offset: 192)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !129, file: !4, line: 438, baseType: !95, size: 64, offset: 256)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !129, file: !4, line: 439, baseType: !95, size: 64, offset: 320)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !129, file: !4, line: 440, baseType: !128, size: 64, offset: 384)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !129, file: !4, line: 441, baseType: !128, size: 64, offset: 448)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !129, file: !4, line: 442, baseType: !111, size: 64, offset: 512)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !129, file: !4, line: 443, baseType: !113, size: 64, offset: 576)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !129, file: !4, line: 444, baseType: !142, size: 32, offset: 640)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !129, file: !4, line: 445, baseType: !41, size: 64, offset: 704)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !96, file: !4, line: 507, baseType: !113, size: 64, offset: 768)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !96, file: !4, line: 508, baseType: !41, size: 64, offset: 832)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !96, file: !4, line: 509, baseType: !147, size: 16, offset: 896)
!147 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !96, file: !4, line: 510, baseType: !147, size: 16, offset: 912)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !88, file: !4, line: 564, baseType: !95, size: 64, offset: 256)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !88, file: !4, line: 565, baseType: !95, size: 64, offset: 320)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !88, file: !4, line: 566, baseType: !95, size: 64, offset: 384)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !88, file: !4, line: 567, baseType: !95, size: 64, offset: 448)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !88, file: !4, line: 568, baseType: !111, size: 64, offset: 512)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !88, file: !4, line: 571, baseType: !59, size: 32, offset: 576)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !88, file: !4, line: 572, baseType: !59, size: 32, offset: 608)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !88, file: !4, line: 578, baseType: !157, size: 64, offset: 640)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !159)
!159 = !{!160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !158, file: !4, line: 406, baseType: !41, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !158, file: !4, line: 407, baseType: !92, size: 32, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !158, file: !4, line: 408, baseType: !101, size: 64, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !158, file: !4, line: 409, baseType: !95, size: 64, offset: 192)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !158, file: !4, line: 410, baseType: !95, size: 64, offset: 256)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !158, file: !4, line: 411, baseType: !111, size: 64, offset: 320)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !158, file: !4, line: 412, baseType: !95, size: 64, offset: 384)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !158, file: !4, line: 413, baseType: !95, size: 64, offset: 448)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !158, file: !4, line: 414, baseType: !111, size: 64, offset: 512)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !158, file: !4, line: 417, baseType: !41, size: 64, offset: 576)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !158, file: !4, line: 418, baseType: !41, size: 64, offset: 640)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !158, file: !4, line: 419, baseType: !41, size: 64, offset: 704)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !158, file: !4, line: 420, baseType: !41, size: 64, offset: 768)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !158, file: !4, line: 421, baseType: !101, size: 64, offset: 832)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !158, file: !4, line: 422, baseType: !101, size: 64, offset: 896)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !158, file: !4, line: 423, baseType: !41, size: 64, offset: 960)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !88, file: !4, line: 579, baseType: !157, size: 64, offset: 704)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !88, file: !4, line: 580, baseType: !118, size: 64, offset: 768)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !88, file: !4, line: 581, baseType: !101, size: 64, offset: 832)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !88, file: !4, line: 582, baseType: !101, size: 64, offset: 896)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !88, file: !4, line: 583, baseType: !41, size: 64, offset: 960)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !88, file: !4, line: 584, baseType: !41, size: 64, offset: 1024)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !88, file: !4, line: 585, baseType: !101, size: 64, offset: 1088)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !88, file: !4, line: 586, baseType: !59, size: 32, offset: 1152)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !88, file: !4, line: 588, baseType: !185, size: 64, offset: 1216)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !187, line: 24, flags: DIFlagFwdDecl)
!187 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!188 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !88, file: !4, line: 589, baseType: !41, size: 64, offset: 1280)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !88, file: !4, line: 590, baseType: !59, size: 32, offset: 1344)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !88, file: !4, line: 592, baseType: !59, size: 32, offset: 1376)
!191 = !DILocation(line: 15, column: 15, scope: !56)
!192 = !DILocation(line: 15, column: 35, scope: !56)
!193 = !DILocation(line: 15, column: 49, scope: !56)
!194 = !DILocation(line: 15, column: 21, scope: !56)
!195 = !DILocation(line: 16, column: 9, scope: !196)
!196 = distinct !DILexicalBlock(scope: !56, file: !1, line: 16, column: 9)
!197 = !DILocation(line: 16, column: 13, scope: !196)
!198 = !DILocation(line: 16, column: 9, scope: !56)
!199 = !DILocation(line: 17, column: 9, scope: !200)
!200 = distinct !DILexicalBlock(scope: !196, file: !1, line: 16, column: 22)
!201 = !DILocalVariable(name: "root", scope: !56, file: !1, line: 20, type: !202)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !4, line: 491, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !4, line: 490, baseType: !96)
!205 = !DILocation(line: 20, column: 16, scope: !56)
!206 = !DILocation(line: 20, column: 44, scope: !56)
!207 = !DILocation(line: 20, column: 23, scope: !56)
!208 = !DILocation(line: 21, column: 9, scope: !209)
!209 = distinct !DILexicalBlock(scope: !56, file: !1, line: 21, column: 9)
!210 = !DILocation(line: 21, column: 14, scope: !209)
!211 = !DILocation(line: 21, column: 9, scope: !56)
!212 = !DILocation(line: 22, column: 20, scope: !213)
!213 = distinct !DILexicalBlock(scope: !209, file: !1, line: 21, column: 23)
!214 = !DILocation(line: 22, column: 9, scope: !213)
!215 = !DILocation(line: 23, column: 9, scope: !213)
!216 = !DILocalVariable(name: "cur", scope: !56, file: !1, line: 26, type: !202)
!217 = !DILocation(line: 26, column: 16, scope: !56)
!218 = !DILocation(line: 26, column: 22, scope: !56)
!219 = !DILocalVariable(name: "n", scope: !56, file: !1, line: 27, type: !59)
!220 = !DILocation(line: 27, column: 9, scope: !56)
!221 = !DILocalVariable(name: "start", scope: !56, file: !1, line: 28, type: !42)
!222 = !DILocation(line: 28, column: 11, scope: !56)
!223 = !DILocation(line: 28, column: 27, scope: !56)
!224 = !DILocation(line: 28, column: 32, scope: !56)
!225 = !DILocalVariable(name: "cur_ptr", scope: !56, file: !1, line: 29, type: !42)
!226 = !DILocation(line: 29, column: 11, scope: !56)
!227 = !DILocation(line: 29, column: 21, scope: !56)
!228 = !DILocation(line: 31, column: 5, scope: !56)
!229 = !DILocation(line: 31, column: 12, scope: !56)
!230 = !DILocation(line: 31, column: 20, scope: !56)
!231 = !DILocation(line: 31, column: 24, scope: !56)
!232 = !DILocation(line: 31, column: 23, scope: !56)
!233 = !DILocation(line: 31, column: 32, scope: !56)
!234 = !DILocation(line: 31, column: 35, scope: !56)
!235 = !DILocation(line: 31, column: 37, scope: !56)
!236 = !DILocalVariable(name: "len", scope: !237, file: !1, line: 32, type: !59)
!237 = distinct !DILexicalBlock(scope: !56, file: !1, line: 31, column: 60)
!238 = !DILocation(line: 32, column: 13, scope: !237)
!239 = !DILocalVariable(name: "c", scope: !237, file: !1, line: 33, type: !59)
!240 = !DILocation(line: 33, column: 13, scope: !237)
!241 = !DILocation(line: 33, column: 49, scope: !237)
!242 = !DILocation(line: 33, column: 17, scope: !237)
!243 = !DILocation(line: 34, column: 14, scope: !244)
!244 = distinct !DILexicalBlock(scope: !237, file: !1, line: 34, column: 13)
!245 = !DILocation(line: 34, column: 16, scope: !244)
!246 = !DILocation(line: 34, column: 21, scope: !244)
!247 = !DILocation(line: 34, column: 25, scope: !244)
!248 = !DILocation(line: 34, column: 29, scope: !244)
!249 = !DILocation(line: 34, column: 27, scope: !244)
!250 = !DILocation(line: 34, column: 33, scope: !244)
!251 = !DILocation(line: 34, column: 13, scope: !237)
!252 = !DILocation(line: 35, column: 13, scope: !253)
!253 = distinct !DILexicalBlock(scope: !244, file: !1, line: 34, column: 57)
!254 = !DILocation(line: 37, column: 20, scope: !237)
!255 = !DILocation(line: 37, column: 17, scope: !237)
!256 = !DILocation(line: 38, column: 14, scope: !237)
!257 = !DILocation(line: 38, column: 11, scope: !237)
!258 = distinct !{!258, !228, !259, !260}
!259 = !DILocation(line: 39, column: 5, scope: !56)
!260 = !{!"llvm.loop.mustprogress"}
!261 = !DILocation(line: 41, column: 5, scope: !56)
!262 = !DILocation(line: 42, column: 5, scope: !56)
!263 = !DILocation(line: 42, column: 21, scope: !56)
!264 = !DILocation(line: 42, column: 28, scope: !56)
!265 = !DILocation(line: 43, column: 13, scope: !56)
!266 = !DILocation(line: 43, column: 5, scope: !56)
!267 = !DILocation(line: 43, column: 16, scope: !56)
!268 = !DILocation(line: 45, column: 16, scope: !56)
!269 = !DILocation(line: 45, column: 5, scope: !56)
!270 = !DILocation(line: 46, column: 5, scope: !56)
!271 = !DILocation(line: 47, column: 1, scope: !56)
!272 = distinct !DISubprogram(name: "memcpy", scope: !273, file: !273, line: 12, type: !274, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !46, retainedNodes: !60)
!273 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!274 = !DISubroutineType(types: !275)
!275 = !{!41, !41, !276, !278}
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !279, line: 46, baseType: !280)
!279 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!280 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!281 = !DILocalVariable(name: "destaddr", arg: 1, scope: !272, file: !273, line: 12, type: !41)
!282 = !DILocation(line: 12, column: 20, scope: !272)
!283 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !272, file: !273, line: 12, type: !276)
!284 = !DILocation(line: 12, column: 42, scope: !272)
!285 = !DILocalVariable(name: "len", arg: 3, scope: !272, file: !273, line: 12, type: !278)
!286 = !DILocation(line: 12, column: 58, scope: !272)
!287 = !DILocalVariable(name: "dest", scope: !272, file: !273, line: 13, type: !42)
!288 = !DILocation(line: 13, column: 9, scope: !272)
!289 = !DILocation(line: 13, column: 16, scope: !272)
!290 = !DILocalVariable(name: "src", scope: !272, file: !273, line: 14, type: !291)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!293 = !DILocation(line: 14, column: 15, scope: !272)
!294 = !DILocation(line: 14, column: 21, scope: !272)
!295 = !DILocation(line: 16, column: 3, scope: !272)
!296 = !DILocation(line: 16, column: 13, scope: !272)
!297 = !DILocation(line: 16, column: 16, scope: !272)
!298 = !DILocation(line: 17, column: 19, scope: !272)
!299 = !DILocation(line: 17, column: 15, scope: !272)
!300 = !DILocation(line: 17, column: 10, scope: !272)
!301 = !DILocation(line: 17, column: 13, scope: !272)
!302 = distinct !{!302, !295, !298, !260}
!303 = !DILocation(line: 18, column: 10, scope: !272)
!304 = !DILocation(line: 18, column: 3, scope: !272)

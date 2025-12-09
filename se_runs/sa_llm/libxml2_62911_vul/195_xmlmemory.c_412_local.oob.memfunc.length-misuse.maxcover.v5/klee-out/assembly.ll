; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/195_xmlmemory.c_412_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/195_xmlmemory.c_412_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDoc = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, i32, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlNs*, i8*, i8*, i8*, i8*, i8*, i32, %struct._xmlDict*, i8*, i32, i32 }
%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i8*, i16, i16 }
%struct._xmlAttr = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlAttr*, %struct._xmlAttr*, %struct._xmlDoc*, %struct._xmlNs*, i32, i8* }
%struct._xmlDtd = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._xmlNs = type { %struct._xmlNs*, i32, i8*, i8*, i8*, %struct._xmlDoc* }
%struct._xmlDict = type opaque

@.str = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@xmlMalloc = external global i8* (i64)*, align 8
@xmlFree = external global void (i8*)*, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [107 x i8] c"se_runs/sa_llm/libxml2_62911_vul/195_xmlmemory.c_412_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"/home/shafi/tools/klee/runtime/Intrinsic/klee_range.c\00", align 1
@.str.1.6 = private unnamed_addr constant [14 x i8] c"invalid range\00", align 1
@.str.2.7 = private unnamed_addr constant [5 x i8] c"user\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !57 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._xmlDoc*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !62, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.declare(metadata i32* %3, metadata !64, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.declare(metadata i8** %4, metadata !66, metadata !DIExpression()), !dbg !69
  store i8* null, i8** %4, align 8, !dbg !69
  call void @llvm.dbg.declare(metadata i8** %5, metadata !70, metadata !DIExpression()), !dbg !71
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %5, align 8, !dbg !71
  call void @llvm.dbg.declare(metadata i32* %6, metadata !72, metadata !DIExpression()), !dbg !73
  store i32 0, i32* %6, align 4, !dbg !73
  %10 = call i32 @klee_range(i32 noundef 1, i32 noundef 1024, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !74
  store i32 %10, i32* %3, align 4, !dbg !75
  %11 = load i32, i32* %3, align 4, !dbg !76
  %12 = sext i32 %11 to i64, !dbg !76
  %13 = call noalias i8* @malloc(i64 noundef %12) #8, !dbg !77
  store i8* %13, i8** %2, align 8, !dbg !78
  %14 = load i8*, i8** %2, align 8, !dbg !79
  %15 = load i32, i32* %3, align 4, !dbg !80
  %16 = sext i32 %15 to i64, !dbg !80
  call void @klee_make_symbolic(i8* noundef %14, i64 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)), !dbg !81
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %7, metadata !82, metadata !DIExpression()), !dbg !190
  %17 = load i8*, i8** %2, align 8, !dbg !191
  %18 = load i32, i32* %3, align 4, !dbg !192
  %19 = load i8*, i8** %4, align 8, !dbg !193
  %20 = load i8*, i8** %5, align 8, !dbg !194
  %21 = load i32, i32* %6, align 4, !dbg !195
  %22 = call %struct._xmlDoc* @xmlReadMemory(i8* noundef %17, i32 noundef %18, i8* noundef %19, i8* noundef %20, i32 noundef %21), !dbg !196
  store %struct._xmlDoc* %22, %struct._xmlDoc** %7, align 8, !dbg !190
  %23 = load %struct._xmlDoc*, %struct._xmlDoc** %7, align 8, !dbg !197
  %24 = icmp eq %struct._xmlDoc* %23, null, !dbg !199
  br i1 %24, label %25, label %36, !dbg !200

25:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata i8** %8, metadata !201, metadata !DIExpression()), !dbg !203
  %26 = load i8* (i64)*, i8* (i64)** @xmlMalloc, align 8, !dbg !204
  %27 = call i8* %26(i64 noundef 100), !dbg !204
  store i8* %27, i8** %8, align 8, !dbg !203
  %28 = load i8*, i8** %8, align 8, !dbg !205
  %29 = icmp ne i8* %28, null, !dbg !205
  br i1 %29, label %30, label %35, !dbg !207

30:                                               ; preds = %25
  %31 = load i8*, i8** %8, align 8, !dbg !208
  %32 = call i8* @memset(i8* %31, i32 0, i64 100), !dbg !210
  %33 = load void (i8*)*, void (i8*)** @xmlFree, align 8, !dbg !211
  %34 = load i8*, i8** %8, align 8, !dbg !212
  call void %33(i8* noundef %34), !dbg !211
  br label %35, !dbg !213

35:                                               ; preds = %30, %25
  br label %38, !dbg !214

36:                                               ; preds = %0
  %37 = load %struct._xmlDoc*, %struct._xmlDoc** %7, align 8, !dbg !215
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %37), !dbg !217
  br label %38

38:                                               ; preds = %36, %35
  call void @llvm.dbg.declare(metadata i8** %9, metadata !218, metadata !DIExpression()), !dbg !219
  %39 = load i8* (i64)*, i8* (i64)** @xmlMalloc, align 8, !dbg !220
  %40 = call i8* %39(i64 noundef 200), !dbg !220
  store i8* %40, i8** %9, align 8, !dbg !219
  %41 = load i8*, i8** %9, align 8, !dbg !221
  %42 = icmp ne i8* %41, null, !dbg !221
  br i1 %42, label %43, label %46, !dbg !223

43:                                               ; preds = %38
  %44 = load void (i8*)*, void (i8*)** @xmlFree, align 8, !dbg !224
  %45 = load i8*, i8** %9, align 8, !dbg !226
  call void %44(i8* noundef %45), !dbg !224
  br label %46, !dbg !227

46:                                               ; preds = %43, %38
  call void @__assert_fail(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.4, i64 0, i64 0), i32 noundef 53, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #9, !dbg !228
  unreachable, !dbg !228
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare %struct._xmlDoc* @xmlReadMemory(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare void @xmlFreeDoc(%struct._xmlDoc* noundef) #3

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @klee_range(i32 noundef %0, i32 noundef %1, i8* noundef %2) #6 !dbg !229 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !233, metadata !DIExpression()), !dbg !234
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !235, metadata !DIExpression()), !dbg !236
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !237, metadata !DIExpression()), !dbg !238
  call void @llvm.dbg.declare(metadata i32* %8, metadata !239, metadata !DIExpression()), !dbg !240
  %9 = load i32, i32* %5, align 4, !dbg !241
  %10 = load i32, i32* %6, align 4, !dbg !243
  %11 = icmp sge i32 %9, %10, !dbg !244
  br i1 %11, label %12, label %13, !dbg !245

12:                                               ; preds = %3
  call void @klee_report_error(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 noundef 16, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.7, i64 0, i64 0)) #10, !dbg !246
  unreachable, !dbg !246

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4, !dbg !247
  %15 = add nsw i32 %14, 1, !dbg !249
  %16 = load i32, i32* %6, align 4, !dbg !250
  %17 = icmp eq i32 %15, %16, !dbg !251
  br i1 %17, label %18, label %20, !dbg !252

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4, !dbg !253
  store i32 %19, i32* %4, align 4, !dbg !255
  br label %44, !dbg !255

20:                                               ; preds = %13
  %21 = bitcast i32* %8 to i8*, !dbg !256
  %22 = load i8*, i8** %7, align 8, !dbg !258
  call void @klee_make_symbolic(i8* noundef %21, i64 noundef 4, i8* noundef %22), !dbg !259
  %23 = load i32, i32* %5, align 4, !dbg !260
  %24 = icmp eq i32 %23, 0, !dbg !262
  br i1 %24, label %25, label %31, !dbg !263

25:                                               ; preds = %20
  %26 = load i32, i32* %8, align 4, !dbg !264
  %27 = load i32, i32* %6, align 4, !dbg !266
  %28 = icmp ult i32 %26, %27, !dbg !267
  %29 = zext i1 %28 to i32, !dbg !267
  %30 = sext i32 %29 to i64, !dbg !268
  call void @klee_assume(i64 noundef %30), !dbg !269
  br label %42, !dbg !270

31:                                               ; preds = %20
  %32 = load i32, i32* %5, align 4, !dbg !271
  %33 = load i32, i32* %8, align 4, !dbg !273
  %34 = icmp sle i32 %32, %33, !dbg !274
  %35 = zext i1 %34 to i32, !dbg !274
  %36 = sext i32 %35 to i64, !dbg !271
  call void @klee_assume(i64 noundef %36), !dbg !275
  %37 = load i32, i32* %8, align 4, !dbg !276
  %38 = load i32, i32* %6, align 4, !dbg !277
  %39 = icmp slt i32 %37, %38, !dbg !278
  %40 = zext i1 %39 to i32, !dbg !278
  %41 = sext i32 %40 to i64, !dbg !276
  call void @klee_assume(i64 noundef %41), !dbg !279
  br label %42

42:                                               ; preds = %31, %25
  %43 = load i32, i32* %8, align 4, !dbg !280
  store i32 %43, i32* %4, align 4, !dbg !281
  br label %44, !dbg !281

44:                                               ; preds = %42, %18
  %45 = load i32, i32* %4, align 4, !dbg !282
  ret i32 %45, !dbg !282
}

; Function Attrs: noreturn
declare void @klee_report_error(i8* noundef, i32 noundef, i8* noundef, i8* noundef) #7

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !283 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !290, metadata !DIExpression()), !dbg !291
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !292, metadata !DIExpression()), !dbg !293
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !294, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.declare(metadata i8** %7, metadata !296, metadata !DIExpression()), !dbg !297
  %8 = load i8*, i8** %4, align 8, !dbg !298
  store i8* %8, i8** %7, align 8, !dbg !297
  br label %9, !dbg !299

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !300
  %11 = add i64 %10, -1, !dbg !300
  store i64 %11, i64* %6, align 8, !dbg !300
  %12 = icmp ugt i64 %10, 0, !dbg !301
  br i1 %12, label %13, label %18, !dbg !299

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !302
  %15 = trunc i32 %14 to i8, !dbg !302
  %16 = load i8*, i8** %7, align 8, !dbg !303
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !303
  store i8* %17, i8** %7, align 8, !dbg !303
  store i8 %15, i8* %16, align 1, !dbg !304
  br label %9, !dbg !299, !llvm.loop !305

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !307
  ret i8* %19, !dbg !308
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { noreturn }

!llvm.dbg.cu = !{!0, !44, !47}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56, !56, !56}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !40, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/195_xmlmemory.c_412_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "1507d1ed5633403f523b1d763a0f172c")
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
!40 = !{!41, !43}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!44 = distinct !DICompileUnit(language: DW_LANG_C89, file: !45, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !46, splitDebugInlining: false, nameTableKind: None)
!45 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Intrinsic/klee_range.c", directory: "/home/shafi/tools/klee/build/runtime/Intrinsic", checksumkind: CSK_MD5, checksum: "967b9ed6e7b3db2f47ee33010ec31c43")
!46 = !{!5}
!47 = distinct !DICompileUnit(language: DW_LANG_C99, file: !48, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!48 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!49 = !{i32 7, !"Dwarf Version", i32 5}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = !{i32 7, !"PIC Level", i32 2}
!53 = !{i32 7, !"PIE Level", i32 2}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"Ubuntu clang version 14.0.6"}
!57 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 7, type: !58, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !61)
!58 = !DISubroutineType(types: !59)
!59 = !{!60}
!60 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!61 = !{}
!62 = !DILocalVariable(name: "buffer", scope: !57, file: !1, line: 9, type: !41)
!63 = !DILocation(line: 9, column: 11, scope: !57)
!64 = !DILocalVariable(name: "size", scope: !57, file: !1, line: 10, type: !60)
!65 = !DILocation(line: 10, column: 9, scope: !57)
!66 = !DILocalVariable(name: "URL", scope: !57, file: !1, line: 11, type: !67)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!69 = !DILocation(line: 11, column: 17, scope: !57)
!70 = !DILocalVariable(name: "encoding", scope: !57, file: !1, line: 12, type: !67)
!71 = !DILocation(line: 12, column: 17, scope: !57)
!72 = !DILocalVariable(name: "options", scope: !57, file: !1, line: 13, type: !60)
!73 = !DILocation(line: 13, column: 9, scope: !57)
!74 = !DILocation(line: 16, column: 12, scope: !57)
!75 = !DILocation(line: 16, column: 10, scope: !57)
!76 = !DILocation(line: 17, column: 28, scope: !57)
!77 = !DILocation(line: 17, column: 21, scope: !57)
!78 = !DILocation(line: 17, column: 12, scope: !57)
!79 = !DILocation(line: 18, column: 24, scope: !57)
!80 = !DILocation(line: 18, column: 32, scope: !57)
!81 = !DILocation(line: 18, column: 5, scope: !57)
!82 = !DILocalVariable(name: "doc", scope: !57, file: !1, line: 21, type: !83)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !86)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !87)
!87 = !{!88, !89, !91, !92, !148, !149, !150, !151, !152, !153, !154, !155, !175, !176, !177, !178, !179, !180, !181, !182, !183, !187, !188, !189}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !86, file: !4, line: 560, baseType: !43, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !86, file: !4, line: 561, baseType: !90, size: 32, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !86, file: !4, line: 562, baseType: !41, size: 64, offset: 128)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !86, file: !4, line: 563, baseType: !93, size: 64, offset: 192)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !95)
!95 = !{!96, !97, !98, !104, !105, !106, !107, !108, !109, !111, !124, !126, !143, !144, !145, !147}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !94, file: !4, line: 493, baseType: !43, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !94, file: !4, line: 494, baseType: !90, size: 32, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !94, file: !4, line: 495, baseType: !99, size: 64, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !102, line: 28, baseType: !103)
!102 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!103 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !94, file: !4, line: 496, baseType: !93, size: 64, offset: 192)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !94, file: !4, line: 497, baseType: !93, size: 64, offset: 256)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !94, file: !4, line: 498, baseType: !93, size: 64, offset: 320)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !94, file: !4, line: 499, baseType: !93, size: 64, offset: 384)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !94, file: !4, line: 500, baseType: !93, size: 64, offset: 448)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !94, file: !4, line: 501, baseType: !110, size: 64, offset: 512)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !94, file: !4, line: 504, baseType: !112, size: 64, offset: 576)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !114)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !115)
!115 = !{!116, !118, !120, !121, !122, !123}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !114, file: !4, line: 389, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !114, file: !4, line: 390, baseType: !119, size: 32, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !90)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !114, file: !4, line: 391, baseType: !99, size: 64, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !114, file: !4, line: 392, baseType: !99, size: 64, offset: 192)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !114, file: !4, line: 393, baseType: !43, size: 64, offset: 256)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !114, file: !4, line: 394, baseType: !110, size: 64, offset: 320)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !94, file: !4, line: 505, baseType: !125, size: 64, offset: 640)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !94, file: !4, line: 506, baseType: !127, size: 64, offset: 704)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !129)
!129 = !{!130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !142}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !128, file: !4, line: 434, baseType: !43, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !128, file: !4, line: 435, baseType: !90, size: 32, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !128, file: !4, line: 436, baseType: !99, size: 64, offset: 128)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !128, file: !4, line: 437, baseType: !93, size: 64, offset: 192)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !128, file: !4, line: 438, baseType: !93, size: 64, offset: 256)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !128, file: !4, line: 439, baseType: !93, size: 64, offset: 320)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !128, file: !4, line: 440, baseType: !127, size: 64, offset: 384)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !128, file: !4, line: 441, baseType: !127, size: 64, offset: 448)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !128, file: !4, line: 442, baseType: !110, size: 64, offset: 512)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !128, file: !4, line: 443, baseType: !112, size: 64, offset: 576)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !128, file: !4, line: 444, baseType: !141, size: 32, offset: 640)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !128, file: !4, line: 445, baseType: !43, size: 64, offset: 704)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !94, file: !4, line: 507, baseType: !112, size: 64, offset: 768)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !94, file: !4, line: 508, baseType: !43, size: 64, offset: 832)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !94, file: !4, line: 509, baseType: !146, size: 16, offset: 896)
!146 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !94, file: !4, line: 510, baseType: !146, size: 16, offset: 912)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !86, file: !4, line: 564, baseType: !93, size: 64, offset: 256)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !86, file: !4, line: 565, baseType: !93, size: 64, offset: 320)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !86, file: !4, line: 566, baseType: !93, size: 64, offset: 384)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !86, file: !4, line: 567, baseType: !93, size: 64, offset: 448)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !86, file: !4, line: 568, baseType: !110, size: 64, offset: 512)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !86, file: !4, line: 571, baseType: !60, size: 32, offset: 576)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !86, file: !4, line: 572, baseType: !60, size: 32, offset: 608)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !86, file: !4, line: 578, baseType: !156, size: 64, offset: 640)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !158)
!158 = !{!159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !157, file: !4, line: 406, baseType: !43, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !157, file: !4, line: 407, baseType: !90, size: 32, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !157, file: !4, line: 408, baseType: !99, size: 64, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !157, file: !4, line: 409, baseType: !93, size: 64, offset: 192)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !157, file: !4, line: 410, baseType: !93, size: 64, offset: 256)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !157, file: !4, line: 411, baseType: !110, size: 64, offset: 320)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !157, file: !4, line: 412, baseType: !93, size: 64, offset: 384)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !157, file: !4, line: 413, baseType: !93, size: 64, offset: 448)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !157, file: !4, line: 414, baseType: !110, size: 64, offset: 512)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !157, file: !4, line: 417, baseType: !43, size: 64, offset: 576)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !157, file: !4, line: 418, baseType: !43, size: 64, offset: 640)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !157, file: !4, line: 419, baseType: !43, size: 64, offset: 704)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !157, file: !4, line: 420, baseType: !43, size: 64, offset: 768)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !157, file: !4, line: 421, baseType: !99, size: 64, offset: 832)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !157, file: !4, line: 422, baseType: !99, size: 64, offset: 896)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !157, file: !4, line: 423, baseType: !43, size: 64, offset: 960)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !86, file: !4, line: 579, baseType: !156, size: 64, offset: 704)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !86, file: !4, line: 580, baseType: !117, size: 64, offset: 768)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !86, file: !4, line: 581, baseType: !99, size: 64, offset: 832)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !86, file: !4, line: 582, baseType: !99, size: 64, offset: 896)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !86, file: !4, line: 583, baseType: !43, size: 64, offset: 960)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !86, file: !4, line: 584, baseType: !43, size: 64, offset: 1024)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !86, file: !4, line: 585, baseType: !99, size: 64, offset: 1088)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !86, file: !4, line: 586, baseType: !60, size: 32, offset: 1152)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !86, file: !4, line: 588, baseType: !184, size: 64, offset: 1216)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !186, line: 24, flags: DIFlagFwdDecl)
!186 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!187 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !86, file: !4, line: 589, baseType: !43, size: 64, offset: 1280)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !86, file: !4, line: 590, baseType: !60, size: 32, offset: 1344)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !86, file: !4, line: 592, baseType: !60, size: 32, offset: 1376)
!190 = !DILocation(line: 21, column: 15, scope: !57)
!191 = !DILocation(line: 21, column: 35, scope: !57)
!192 = !DILocation(line: 21, column: 43, scope: !57)
!193 = !DILocation(line: 21, column: 49, scope: !57)
!194 = !DILocation(line: 21, column: 54, scope: !57)
!195 = !DILocation(line: 21, column: 64, scope: !57)
!196 = !DILocation(line: 21, column: 21, scope: !57)
!197 = !DILocation(line: 22, column: 9, scope: !198)
!198 = distinct !DILexicalBlock(scope: !57, file: !1, line: 22, column: 9)
!199 = !DILocation(line: 22, column: 13, scope: !198)
!200 = !DILocation(line: 22, column: 9, scope: !57)
!201 = !DILocalVariable(name: "ptr", scope: !202, file: !1, line: 30, type: !43)
!202 = distinct !DILexicalBlock(scope: !198, file: !1, line: 22, column: 22)
!203 = !DILocation(line: 30, column: 15, scope: !202)
!204 = !DILocation(line: 30, column: 21, scope: !202)
!205 = !DILocation(line: 31, column: 13, scope: !206)
!206 = distinct !DILexicalBlock(scope: !202, file: !1, line: 31, column: 13)
!207 = !DILocation(line: 31, column: 13, scope: !202)
!208 = !DILocation(line: 33, column: 20, scope: !209)
!209 = distinct !DILexicalBlock(scope: !206, file: !1, line: 31, column: 18)
!210 = !DILocation(line: 33, column: 13, scope: !209)
!211 = !DILocation(line: 37, column: 13, scope: !209)
!212 = !DILocation(line: 37, column: 21, scope: !209)
!213 = !DILocation(line: 38, column: 9, scope: !209)
!214 = !DILocation(line: 39, column: 5, scope: !202)
!215 = !DILocation(line: 41, column: 20, scope: !216)
!216 = distinct !DILexicalBlock(scope: !198, file: !1, line: 39, column: 12)
!217 = !DILocation(line: 41, column: 9, scope: !216)
!218 = !DILocalVariable(name: "extra", scope: !57, file: !1, line: 47, type: !43)
!219 = !DILocation(line: 47, column: 11, scope: !57)
!220 = !DILocation(line: 47, column: 19, scope: !57)
!221 = !DILocation(line: 48, column: 9, scope: !222)
!222 = distinct !DILexicalBlock(scope: !57, file: !1, line: 48, column: 9)
!223 = !DILocation(line: 48, column: 9, scope: !57)
!224 = !DILocation(line: 49, column: 9, scope: !225)
!225 = distinct !DILexicalBlock(scope: !222, file: !1, line: 48, column: 16)
!226 = !DILocation(line: 49, column: 17, scope: !225)
!227 = !DILocation(line: 50, column: 5, scope: !225)
!228 = !DILocation(line: 53, column: 5, scope: !57)
!229 = distinct !DISubprogram(name: "klee_range", scope: !230, file: !230, line: 12, type: !231, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !61)
!230 = !DIFile(filename: "runtime/Intrinsic/klee_range.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "967b9ed6e7b3db2f47ee33010ec31c43")
!231 = !DISubroutineType(types: !232)
!232 = !{!60, !60, !60, !67}
!233 = !DILocalVariable(name: "start", arg: 1, scope: !229, file: !230, line: 12, type: !60)
!234 = !DILocation(line: 12, column: 20, scope: !229)
!235 = !DILocalVariable(name: "end", arg: 2, scope: !229, file: !230, line: 12, type: !60)
!236 = !DILocation(line: 12, column: 31, scope: !229)
!237 = !DILocalVariable(name: "name", arg: 3, scope: !229, file: !230, line: 12, type: !67)
!238 = !DILocation(line: 12, column: 48, scope: !229)
!239 = !DILocalVariable(name: "x", scope: !229, file: !230, line: 13, type: !60)
!240 = !DILocation(line: 13, column: 7, scope: !229)
!241 = !DILocation(line: 15, column: 7, scope: !242)
!242 = distinct !DILexicalBlock(scope: !229, file: !230, line: 15, column: 7)
!243 = !DILocation(line: 15, column: 16, scope: !242)
!244 = !DILocation(line: 15, column: 13, scope: !242)
!245 = !DILocation(line: 15, column: 7, scope: !229)
!246 = !DILocation(line: 16, column: 5, scope: !242)
!247 = !DILocation(line: 18, column: 7, scope: !248)
!248 = distinct !DILexicalBlock(scope: !229, file: !230, line: 18, column: 7)
!249 = !DILocation(line: 18, column: 12, scope: !248)
!250 = !DILocation(line: 18, column: 16, scope: !248)
!251 = !DILocation(line: 18, column: 14, scope: !248)
!252 = !DILocation(line: 18, column: 7, scope: !229)
!253 = !DILocation(line: 19, column: 12, scope: !254)
!254 = distinct !DILexicalBlock(scope: !248, file: !230, line: 18, column: 21)
!255 = !DILocation(line: 19, column: 5, scope: !254)
!256 = !DILocation(line: 21, column: 24, scope: !257)
!257 = distinct !DILexicalBlock(scope: !248, file: !230, line: 20, column: 10)
!258 = !DILocation(line: 21, column: 38, scope: !257)
!259 = !DILocation(line: 21, column: 5, scope: !257)
!260 = !DILocation(line: 24, column: 9, scope: !261)
!261 = distinct !DILexicalBlock(scope: !257, file: !230, line: 24, column: 9)
!262 = !DILocation(line: 24, column: 14, scope: !261)
!263 = !DILocation(line: 24, column: 9, scope: !257)
!264 = !DILocation(line: 25, column: 30, scope: !265)
!265 = distinct !DILexicalBlock(scope: !261, file: !230, line: 24, column: 19)
!266 = !DILocation(line: 25, column: 45, scope: !265)
!267 = !DILocation(line: 25, column: 32, scope: !265)
!268 = !DILocation(line: 25, column: 19, scope: !265)
!269 = !DILocation(line: 25, column: 7, scope: !265)
!270 = !DILocation(line: 26, column: 5, scope: !265)
!271 = !DILocation(line: 27, column: 19, scope: !272)
!272 = distinct !DILexicalBlock(scope: !261, file: !230, line: 26, column: 12)
!273 = !DILocation(line: 27, column: 28, scope: !272)
!274 = !DILocation(line: 27, column: 25, scope: !272)
!275 = !DILocation(line: 27, column: 7, scope: !272)
!276 = !DILocation(line: 28, column: 19, scope: !272)
!277 = !DILocation(line: 28, column: 23, scope: !272)
!278 = !DILocation(line: 28, column: 21, scope: !272)
!279 = !DILocation(line: 28, column: 7, scope: !272)
!280 = !DILocation(line: 31, column: 12, scope: !257)
!281 = !DILocation(line: 31, column: 5, scope: !257)
!282 = !DILocation(line: 33, column: 1, scope: !229)
!283 = distinct !DISubprogram(name: "memset", scope: !284, file: !284, line: 12, type: !285, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !61)
!284 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!285 = !DISubroutineType(types: !286)
!286 = !{!43, !43, !60, !287}
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !288, line: 46, baseType: !289)
!288 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!289 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!290 = !DILocalVariable(name: "dst", arg: 1, scope: !283, file: !284, line: 12, type: !43)
!291 = !DILocation(line: 12, column: 20, scope: !283)
!292 = !DILocalVariable(name: "s", arg: 2, scope: !283, file: !284, line: 12, type: !60)
!293 = !DILocation(line: 12, column: 29, scope: !283)
!294 = !DILocalVariable(name: "count", arg: 3, scope: !283, file: !284, line: 12, type: !287)
!295 = !DILocation(line: 12, column: 39, scope: !283)
!296 = !DILocalVariable(name: "a", scope: !283, file: !284, line: 13, type: !41)
!297 = !DILocation(line: 13, column: 9, scope: !283)
!298 = !DILocation(line: 13, column: 13, scope: !283)
!299 = !DILocation(line: 14, column: 3, scope: !283)
!300 = !DILocation(line: 14, column: 15, scope: !283)
!301 = !DILocation(line: 14, column: 18, scope: !283)
!302 = !DILocation(line: 15, column: 12, scope: !283)
!303 = !DILocation(line: 15, column: 7, scope: !283)
!304 = !DILocation(line: 15, column: 10, scope: !283)
!305 = distinct !{!305, !299, !302, !306}
!306 = !{!"llvm.loop.mustprogress"}
!307 = !DILocation(line: 16, column: 10, scope: !283)
!308 = !DILocation(line: 16, column: 3, scope: !283)

; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/085_runtest.c_3932_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/085_runtest.c_3932_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDoc = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, i32, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlNs*, i8*, i8*, i8*, i8*, i8*, i32, %struct._xmlDict*, i8*, i32, i32 }
%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i8*, i16, i16 }
%struct._xmlAttr = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlAttr*, %struct._xmlAttr*, %struct._xmlDoc*, %struct._xmlNs*, i32, i8* }
%struct._xmlDtd = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._xmlNs = type { %struct._xmlNs*, i32, i8*, i8*, i8*, %struct._xmlDoc* }
%struct._xmlDict = type opaque

@.str = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/085_runtest.c_3932_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"result/pattern/%s\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c".xml\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"<root><child/></root>\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"noname.xml\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @checkTestFile(i8* noundef %0) #0 !dbg !50 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !58, metadata !DIExpression()), !dbg !59
  ret i32 0, !dbg !60
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @baseFilename(i8* noundef %0) #0 !dbg !61 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !65, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.declare(metadata i8** %4, metadata !67, metadata !DIExpression()), !dbg !68
  %5 = load i8*, i8** %3, align 8, !dbg !69
  %6 = call i8* @strrchr(i8* noundef %5, i32 noundef 47) #8, !dbg !70
  store i8* %6, i8** %4, align 8, !dbg !68
  %7 = load i8*, i8** %4, align 8, !dbg !71
  %8 = icmp ne i8* %7, null, !dbg !71
  br i1 %8, label %9, label %12, !dbg !73

9:                                                ; preds = %1
  %10 = load i8*, i8** %4, align 8, !dbg !74
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !75
  store i8* %11, i8** %2, align 8, !dbg !76
  br label %14, !dbg !76

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8, !dbg !77
  store i8* %13, i8** %2, align 8, !dbg !78
  br label %14, !dbg !78

14:                                               ; preds = %12, %9
  %15 = load i8*, i8** %2, align 8, !dbg !79
  ret i8* %15, !dbg !79
}

; Function Attrs: nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !80 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca [512 x i8], align 16
  %4 = alloca [500 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct._xmlDoc*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !83, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.declare(metadata [512 x i8]* %3, metadata !88, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.declare(metadata [500 x i8]* %4, metadata !93, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.declare(metadata i32* %5, metadata !98, metadata !DIExpression()), !dbg !99
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !100
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !dbg !101
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !102
  store i8 0, i8* %9, align 1, !dbg !103
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !104
  %11 = call i64 @strlen(i8* noundef %10) #8, !dbg !105
  %12 = trunc i64 %11 to i32, !dbg !105
  store i32 %12, i32* %5, align 4, !dbg !106
  %13 = load i32, i32* %5, align 4, !dbg !107
  %14 = icmp sge i32 %13, 4, !dbg !108
  %15 = zext i1 %14 to i32, !dbg !108
  %16 = sext i32 %15 to i64, !dbg !107
  call void @klee_assume(i64 noundef %16), !dbg !109
  %17 = load i32, i32* %5, align 4, !dbg !110
  %18 = sext i32 %17 to i64, !dbg !110
  %19 = icmp ult i64 %18, 512, !dbg !111
  %20 = zext i1 %19 to i32, !dbg !111
  %21 = sext i32 %20 to i64, !dbg !110
  call void @klee_assume(i64 noundef %21), !dbg !112
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !113
  %23 = call i64 @strlen(i8* noundef %22) #8, !dbg !114
  %24 = trunc i64 %23 to i32, !dbg !114
  store i32 %24, i32* %5, align 4, !dbg !115
  %25 = load i32, i32* %5, align 4, !dbg !116
  %26 = sub nsw i32 %25, 4, !dbg !116
  store i32 %26, i32* %5, align 4, !dbg !116
  %27 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.2, i64 0, i64 0), i32 noundef 41, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !117
  %28 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0, !dbg !118
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !118
  %30 = load i32, i32* %5, align 4, !dbg !119
  %31 = sext i32 %30 to i64, !dbg !119
  %32 = call i8* @memcpy(i8* %28, i8* %29, i64 %31), !dbg !118
  %33 = load i32, i32* %5, align 4, !dbg !120
  %34 = sext i32 %33 to i64, !dbg !121
  %35 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 %34, !dbg !121
  store i8 0, i8* %35, align 1, !dbg !122
  %36 = getelementptr inbounds [500 x i8], [500 x i8]* %4, i64 0, i64 0, !dbg !123
  %37 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0, !dbg !125
  %38 = call i8* @baseFilename(i8* noundef %37), !dbg !126
  %39 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %36, i64 noundef 499, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* noundef %38) #9, !dbg !127
  %40 = icmp sge i32 %39, 499, !dbg !128
  br i1 %40, label %41, label %43, !dbg !129

41:                                               ; preds = %0
  %42 = getelementptr inbounds [500 x i8], [500 x i8]* %4, i64 0, i64 499, !dbg !130
  store i8 0, i8* %42, align 1, !dbg !131
  br label %43, !dbg !130

43:                                               ; preds = %41, %0
  %44 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0, !dbg !132
  %45 = load i32, i32* %5, align 4, !dbg !133
  %46 = sext i32 %45 to i64, !dbg !134
  %47 = getelementptr inbounds i8, i8* %44, i64 %46, !dbg !134
  %48 = call i8* @memcpy(i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 5), !dbg !135
  %49 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0, !dbg !136
  %50 = call i32 @checkTestFile(i8* noundef %49), !dbg !138
  %51 = icmp ne i32 %50, 0, !dbg !138
  br i1 %51, label %53, label %52, !dbg !139

52:                                               ; preds = %43
  store i32 -1, i32* %1, align 4, !dbg !140
  br label %64, !dbg !140

53:                                               ; preds = %43
  call void @llvm.dbg.declare(metadata i8** %6, metadata !142, metadata !DIExpression()), !dbg !143
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8** %6, align 8, !dbg !143
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %7, metadata !144, metadata !DIExpression()), !dbg !253
  %54 = load i8*, i8** %6, align 8, !dbg !254
  %55 = load i8*, i8** %6, align 8, !dbg !255
  %56 = call i64 @strlen(i8* noundef %55) #8, !dbg !256
  %57 = trunc i64 %56 to i32, !dbg !256
  %58 = call %struct._xmlDoc* @xmlReadMemory(i8* noundef %54, i32 noundef %57, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* noundef null, i32 noundef 0), !dbg !257
  store %struct._xmlDoc* %58, %struct._xmlDoc** %7, align 8, !dbg !253
  %59 = load %struct._xmlDoc*, %struct._xmlDoc** %7, align 8, !dbg !258
  %60 = icmp ne %struct._xmlDoc* %59, null, !dbg !258
  br i1 %60, label %61, label %63, !dbg !260

61:                                               ; preds = %53
  %62 = load %struct._xmlDoc*, %struct._xmlDoc** %7, align 8, !dbg !261
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %62), !dbg !263
  br label %63, !dbg !264

63:                                               ; preds = %61, %53
  call void @xmlCleanupParser(), !dbg !265
  store i32 0, i32* %1, align 4, !dbg !266
  br label %64, !dbg !266

64:                                               ; preds = %63, %52
  %65 = load i32, i32* %1, align 4, !dbg !267
  ret i32 %65, !dbg !267
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #2

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind
declare i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #6

declare %struct._xmlDoc* @xmlReadMemory(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef) #3

declare void @xmlFreeDoc(%struct._xmlDoc* noundef) #3

declare void @xmlCleanupParser() #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !268 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !277, metadata !DIExpression()), !dbg !278
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !279, metadata !DIExpression()), !dbg !280
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !281, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.declare(metadata i8** %7, metadata !283, metadata !DIExpression()), !dbg !284
  %9 = load i8*, i8** %4, align 8, !dbg !285
  store i8* %9, i8** %7, align 8, !dbg !284
  call void @llvm.dbg.declare(metadata i8** %8, metadata !286, metadata !DIExpression()), !dbg !287
  %10 = load i8*, i8** %5, align 8, !dbg !288
  store i8* %10, i8** %8, align 8, !dbg !287
  br label %11, !dbg !289

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !290
  %13 = add i64 %12, -1, !dbg !290
  store i64 %13, i64* %6, align 8, !dbg !290
  %14 = icmp ugt i64 %12, 0, !dbg !291
  br i1 %14, label %15, label %21, !dbg !289

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !292
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !292
  store i8* %17, i8** %8, align 8, !dbg !292
  %18 = load i8, i8* %16, align 1, !dbg !293
  %19 = load i8*, i8** %7, align 8, !dbg !294
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !294
  store i8* %20, i8** %7, align 8, !dbg !294
  store i8 %18, i8* %19, align 1, !dbg !295
  br label %11, !dbg !289, !llvm.loop !296

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !298
  ret i8* %22, !dbg !299
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49, !49}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/085_runtest.c_3932_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "0c924d0df791ee4a5635847ba08cf707")
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
!40 = distinct !DICompileUnit(language: DW_LANG_C99, file: !41, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!41 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!42 = !{i32 7, !"Dwarf Version", i32 5}
!43 = !{i32 2, !"Debug Info Version", i32 3}
!44 = !{i32 1, !"wchar_size", i32 4}
!45 = !{i32 7, !"PIC Level", i32 2}
!46 = !{i32 7, !"PIE Level", i32 2}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"Ubuntu clang version 14.0.6"}
!50 = distinct !DISubprogram(name: "checkTestFile", scope: !1, file: !1, line: 9, type: !51, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !57)
!51 = !DISubroutineType(types: !52)
!52 = !{!53, !54}
!53 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!56 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!57 = !{}
!58 = !DILocalVariable(name: "filename", arg: 1, scope: !50, file: !1, line: 9, type: !54)
!59 = !DILocation(line: 9, column: 31, scope: !50)
!60 = !DILocation(line: 11, column: 5, scope: !50)
!61 = distinct !DISubprogram(name: "baseFilename", scope: !1, file: !1, line: 14, type: !62, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !57)
!62 = !DISubroutineType(types: !63)
!63 = !{!64, !64}
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!65 = !DILocalVariable(name: "path", arg: 1, scope: !61, file: !1, line: 14, type: !64)
!66 = !DILocation(line: 14, column: 26, scope: !61)
!67 = !DILocalVariable(name: "slash", scope: !61, file: !1, line: 16, type: !64)
!68 = !DILocation(line: 16, column: 11, scope: !61)
!69 = !DILocation(line: 16, column: 27, scope: !61)
!70 = !DILocation(line: 16, column: 19, scope: !61)
!71 = !DILocation(line: 17, column: 9, scope: !72)
!72 = distinct !DILexicalBlock(scope: !61, file: !1, line: 17, column: 9)
!73 = !DILocation(line: 17, column: 9, scope: !61)
!74 = !DILocation(line: 17, column: 23, scope: !72)
!75 = !DILocation(line: 17, column: 29, scope: !72)
!76 = !DILocation(line: 17, column: 16, scope: !72)
!77 = !DILocation(line: 18, column: 12, scope: !61)
!78 = !DILocation(line: 18, column: 5, scope: !61)
!79 = !DILocation(line: 19, column: 1, scope: !61)
!80 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 21, type: !81, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !57)
!81 = !DISubroutineType(types: !82)
!82 = !{!53}
!83 = !DILocalVariable(name: "filename", scope: !80, file: !1, line: 22, type: !84)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 2048, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 256)
!87 = !DILocation(line: 22, column: 10, scope: !80)
!88 = !DILocalVariable(name: "xml", scope: !80, file: !1, line: 23, type: !89)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 4096, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 512)
!92 = !DILocation(line: 23, column: 10, scope: !80)
!93 = !DILocalVariable(name: "result", scope: !80, file: !1, line: 24, type: !94)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 4000, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 500)
!97 = !DILocation(line: 24, column: 10, scope: !80)
!98 = !DILocalVariable(name: "len", scope: !80, file: !1, line: 25, type: !53)
!99 = !DILocation(line: 25, column: 9, scope: !80)
!100 = !DILocation(line: 28, column: 24, scope: !80)
!101 = !DILocation(line: 28, column: 5, scope: !80)
!102 = !DILocation(line: 30, column: 5, scope: !80)
!103 = !DILocation(line: 30, column: 34, scope: !80)
!104 = !DILocation(line: 32, column: 18, scope: !80)
!105 = !DILocation(line: 32, column: 11, scope: !80)
!106 = !DILocation(line: 32, column: 9, scope: !80)
!107 = !DILocation(line: 33, column: 17, scope: !80)
!108 = !DILocation(line: 33, column: 21, scope: !80)
!109 = !DILocation(line: 33, column: 5, scope: !80)
!110 = !DILocation(line: 35, column: 17, scope: !80)
!111 = !DILocation(line: 35, column: 21, scope: !80)
!112 = !DILocation(line: 35, column: 5, scope: !80)
!113 = !DILocation(line: 38, column: 18, scope: !80)
!114 = !DILocation(line: 38, column: 11, scope: !80)
!115 = !DILocation(line: 38, column: 9, scope: !80)
!116 = !DILocation(line: 39, column: 9, scope: !80)
!117 = !DILocation(line: 41, column: 5, scope: !80)
!118 = !DILocation(line: 42, column: 5, scope: !80)
!119 = !DILocation(line: 42, column: 27, scope: !80)
!120 = !DILocation(line: 43, column: 9, scope: !80)
!121 = !DILocation(line: 43, column: 5, scope: !80)
!122 = !DILocation(line: 43, column: 14, scope: !80)
!123 = !DILocation(line: 44, column: 18, scope: !124)
!124 = distinct !DILexicalBlock(scope: !80, file: !1, line: 44, column: 9)
!125 = !DILocation(line: 44, column: 65, scope: !124)
!126 = !DILocation(line: 44, column: 52, scope: !124)
!127 = !DILocation(line: 44, column: 9, scope: !124)
!128 = !DILocation(line: 44, column: 71, scope: !124)
!129 = !DILocation(line: 44, column: 9, scope: !80)
!130 = !DILocation(line: 45, column: 9, scope: !124)
!131 = !DILocation(line: 45, column: 21, scope: !124)
!132 = !DILocation(line: 46, column: 12, scope: !80)
!133 = !DILocation(line: 46, column: 18, scope: !80)
!134 = !DILocation(line: 46, column: 16, scope: !80)
!135 = !DILocation(line: 46, column: 5, scope: !80)
!136 = !DILocation(line: 48, column: 24, scope: !137)
!137 = distinct !DILexicalBlock(scope: !80, file: !1, line: 48, column: 9)
!138 = !DILocation(line: 48, column: 10, scope: !137)
!139 = !DILocation(line: 48, column: 9, scope: !80)
!140 = !DILocation(line: 50, column: 9, scope: !141)
!141 = distinct !DILexicalBlock(scope: !137, file: !1, line: 48, column: 30)
!142 = !DILocalVariable(name: "xml_content", scope: !80, file: !1, line: 55, type: !54)
!143 = !DILocation(line: 55, column: 17, scope: !80)
!144 = !DILocalVariable(name: "doc", scope: !80, file: !1, line: 56, type: !145)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !148)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !149)
!149 = !{!150, !152, !154, !155, !211, !212, !213, !214, !215, !216, !217, !218, !238, !239, !240, !241, !242, !243, !244, !245, !246, !250, !251, !252}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !148, file: !4, line: 560, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !148, file: !4, line: 561, baseType: !153, size: 32, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !148, file: !4, line: 562, baseType: !64, size: 64, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !148, file: !4, line: 563, baseType: !156, size: 64, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !158)
!158 = !{!159, !160, !161, !167, !168, !169, !170, !171, !172, !174, !187, !189, !206, !207, !208, !210}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !157, file: !4, line: 493, baseType: !151, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !157, file: !4, line: 494, baseType: !153, size: 32, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !157, file: !4, line: 495, baseType: !162, size: 64, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !165, line: 28, baseType: !166)
!165 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!166 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !157, file: !4, line: 496, baseType: !156, size: 64, offset: 192)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !157, file: !4, line: 497, baseType: !156, size: 64, offset: 256)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !157, file: !4, line: 498, baseType: !156, size: 64, offset: 320)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !157, file: !4, line: 499, baseType: !156, size: 64, offset: 384)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !157, file: !4, line: 500, baseType: !156, size: 64, offset: 448)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !157, file: !4, line: 501, baseType: !173, size: 64, offset: 512)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !157, file: !4, line: 504, baseType: !175, size: 64, offset: 576)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !177)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !178)
!178 = !{!179, !181, !183, !184, !185, !186}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !177, file: !4, line: 389, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !177, file: !4, line: 390, baseType: !182, size: 32, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !153)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !177, file: !4, line: 391, baseType: !162, size: 64, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !177, file: !4, line: 392, baseType: !162, size: 64, offset: 192)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !177, file: !4, line: 393, baseType: !151, size: 64, offset: 256)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !177, file: !4, line: 394, baseType: !173, size: 64, offset: 320)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !157, file: !4, line: 505, baseType: !188, size: 64, offset: 640)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !157, file: !4, line: 506, baseType: !190, size: 64, offset: 704)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !192)
!192 = !{!193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !205}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !191, file: !4, line: 434, baseType: !151, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !191, file: !4, line: 435, baseType: !153, size: 32, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !191, file: !4, line: 436, baseType: !162, size: 64, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !191, file: !4, line: 437, baseType: !156, size: 64, offset: 192)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !191, file: !4, line: 438, baseType: !156, size: 64, offset: 256)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !191, file: !4, line: 439, baseType: !156, size: 64, offset: 320)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !191, file: !4, line: 440, baseType: !190, size: 64, offset: 384)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !191, file: !4, line: 441, baseType: !190, size: 64, offset: 448)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !191, file: !4, line: 442, baseType: !173, size: 64, offset: 512)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !191, file: !4, line: 443, baseType: !175, size: 64, offset: 576)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !191, file: !4, line: 444, baseType: !204, size: 32, offset: 640)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !191, file: !4, line: 445, baseType: !151, size: 64, offset: 704)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !157, file: !4, line: 507, baseType: !175, size: 64, offset: 768)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !157, file: !4, line: 508, baseType: !151, size: 64, offset: 832)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !157, file: !4, line: 509, baseType: !209, size: 16, offset: 896)
!209 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !157, file: !4, line: 510, baseType: !209, size: 16, offset: 912)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !148, file: !4, line: 564, baseType: !156, size: 64, offset: 256)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !148, file: !4, line: 565, baseType: !156, size: 64, offset: 320)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !148, file: !4, line: 566, baseType: !156, size: 64, offset: 384)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !148, file: !4, line: 567, baseType: !156, size: 64, offset: 448)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !148, file: !4, line: 568, baseType: !173, size: 64, offset: 512)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !148, file: !4, line: 571, baseType: !53, size: 32, offset: 576)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !148, file: !4, line: 572, baseType: !53, size: 32, offset: 608)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !148, file: !4, line: 578, baseType: !219, size: 64, offset: 640)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !221)
!221 = !{!222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !220, file: !4, line: 406, baseType: !151, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !220, file: !4, line: 407, baseType: !153, size: 32, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !220, file: !4, line: 408, baseType: !162, size: 64, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !220, file: !4, line: 409, baseType: !156, size: 64, offset: 192)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !220, file: !4, line: 410, baseType: !156, size: 64, offset: 256)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !220, file: !4, line: 411, baseType: !173, size: 64, offset: 320)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !220, file: !4, line: 412, baseType: !156, size: 64, offset: 384)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !220, file: !4, line: 413, baseType: !156, size: 64, offset: 448)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !220, file: !4, line: 414, baseType: !173, size: 64, offset: 512)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !220, file: !4, line: 417, baseType: !151, size: 64, offset: 576)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !220, file: !4, line: 418, baseType: !151, size: 64, offset: 640)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !220, file: !4, line: 419, baseType: !151, size: 64, offset: 704)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !220, file: !4, line: 420, baseType: !151, size: 64, offset: 768)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !220, file: !4, line: 421, baseType: !162, size: 64, offset: 832)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !220, file: !4, line: 422, baseType: !162, size: 64, offset: 896)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !220, file: !4, line: 423, baseType: !151, size: 64, offset: 960)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !148, file: !4, line: 579, baseType: !219, size: 64, offset: 704)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !148, file: !4, line: 580, baseType: !180, size: 64, offset: 768)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !148, file: !4, line: 581, baseType: !162, size: 64, offset: 832)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !148, file: !4, line: 582, baseType: !162, size: 64, offset: 896)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !148, file: !4, line: 583, baseType: !151, size: 64, offset: 960)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !148, file: !4, line: 584, baseType: !151, size: 64, offset: 1024)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !148, file: !4, line: 585, baseType: !162, size: 64, offset: 1088)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !148, file: !4, line: 586, baseType: !53, size: 32, offset: 1152)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !148, file: !4, line: 588, baseType: !247, size: 64, offset: 1216)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !249, line: 24, flags: DIFlagFwdDecl)
!249 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!250 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !148, file: !4, line: 589, baseType: !151, size: 64, offset: 1280)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !148, file: !4, line: 590, baseType: !53, size: 32, offset: 1344)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !148, file: !4, line: 592, baseType: !53, size: 32, offset: 1376)
!253 = !DILocation(line: 56, column: 15, scope: !80)
!254 = !DILocation(line: 56, column: 35, scope: !80)
!255 = !DILocation(line: 56, column: 55, scope: !80)
!256 = !DILocation(line: 56, column: 48, scope: !80)
!257 = !DILocation(line: 56, column: 21, scope: !80)
!258 = !DILocation(line: 57, column: 9, scope: !259)
!259 = distinct !DILexicalBlock(scope: !80, file: !1, line: 57, column: 9)
!260 = !DILocation(line: 57, column: 9, scope: !80)
!261 = !DILocation(line: 58, column: 20, scope: !262)
!262 = distinct !DILexicalBlock(scope: !259, file: !1, line: 57, column: 14)
!263 = !DILocation(line: 58, column: 9, scope: !262)
!264 = !DILocation(line: 59, column: 5, scope: !262)
!265 = !DILocation(line: 60, column: 5, scope: !80)
!266 = !DILocation(line: 62, column: 5, scope: !80)
!267 = !DILocation(line: 63, column: 1, scope: !80)
!268 = distinct !DISubprogram(name: "memcpy", scope: !269, file: !269, line: 12, type: !270, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !57)
!269 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!270 = !DISubroutineType(types: !271)
!271 = !{!151, !151, !272, !274}
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !275, line: 46, baseType: !276)
!275 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!276 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!277 = !DILocalVariable(name: "destaddr", arg: 1, scope: !268, file: !269, line: 12, type: !151)
!278 = !DILocation(line: 12, column: 20, scope: !268)
!279 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !268, file: !269, line: 12, type: !272)
!280 = !DILocation(line: 12, column: 42, scope: !268)
!281 = !DILocalVariable(name: "len", arg: 3, scope: !268, file: !269, line: 12, type: !274)
!282 = !DILocation(line: 12, column: 58, scope: !268)
!283 = !DILocalVariable(name: "dest", scope: !268, file: !269, line: 13, type: !64)
!284 = !DILocation(line: 13, column: 9, scope: !268)
!285 = !DILocation(line: 13, column: 16, scope: !268)
!286 = !DILocalVariable(name: "src", scope: !268, file: !269, line: 14, type: !54)
!287 = !DILocation(line: 14, column: 15, scope: !268)
!288 = !DILocation(line: 14, column: 21, scope: !268)
!289 = !DILocation(line: 16, column: 3, scope: !268)
!290 = !DILocation(line: 16, column: 13, scope: !268)
!291 = !DILocation(line: 16, column: 16, scope: !268)
!292 = !DILocation(line: 17, column: 19, scope: !268)
!293 = !DILocation(line: 17, column: 15, scope: !268)
!294 = !DILocation(line: 17, column: 10, scope: !268)
!295 = !DILocation(line: 17, column: 13, scope: !268)
!296 = distinct !{!296, !289, !292, !297}
!297 = !{!"llvm.loop.mustprogress"}
!298 = !DILocation(line: 18, column: 10, scope: !268)
!299 = !DILocation(line: 18, column: 3, scope: !268)

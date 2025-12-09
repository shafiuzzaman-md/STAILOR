; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/095_runtest.c_3692_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/095_runtest.c_3692_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRelaxNG = type opaque
%struct.glob_t = type { i64, i8**, i64, i32, void (i8*)*, i8* (i8*)*, i8* (i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)* }
%struct._xmlDoc = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, i32, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlNs*, i8*, i8*, i8*, i8*, i8*, i32, %struct._xmlDict*, i8*, i32, i32 }
%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i8*, i16, i16 }
%struct._xmlAttr = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlAttr*, %struct._xmlAttr*, %struct._xmlDoc*, %struct._xmlNs*, i32, i8* }
%struct._xmlDtd = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._xmlNs = type { %struct._xmlNs*, i32, i8*, i8*, i8*, %struct._xmlDoc* }
%struct._xmlDict = type opaque
%struct._xmlRelaxNGValidCtxt = type opaque

@.str = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/095_runtest.c_3692_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"./test/relaxng/%s_?.xml\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !52 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlRelaxNG*, align 8
  %3 = alloca [512 x i8], align 16
  %4 = alloca [512 x i8], align 16
  %5 = alloca [512 x i8], align 16
  %6 = alloca %struct.glob_t, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct._xmlDoc*, align 8
  %11 = alloca %struct._xmlRelaxNGValidCtxt*, align 8
  %12 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNG** %2, metadata !57, metadata !DIExpression()), !dbg !63
  store %struct._xmlRelaxNG* null, %struct._xmlRelaxNG** %2, align 8, !dbg !63
  call void @llvm.dbg.declare(metadata [512 x i8]* %3, metadata !64, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata [512 x i8]* %4, metadata !70, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.declare(metadata [512 x i8]* %5, metadata !72, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.declare(metadata %struct.glob_t* %6, metadata !74, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.declare(metadata i32* %7, metadata !109, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.declare(metadata i32* %8, metadata !111, metadata !DIExpression()), !dbg !112
  %13 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0, !dbg !113
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 512, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !114
  %14 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 511, !dbg !115
  store i8 0, i8* %14, align 1, !dbg !116
  %15 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0, !dbg !117
  %16 = call i64 @strlen(i8* noundef %15) #8, !dbg !118
  %17 = trunc i64 %16 to i32, !dbg !118
  store i32 %17, i32* %8, align 4, !dbg !119
  %18 = load i32, i32* %8, align 4, !dbg !120
  %19 = icmp sgt i32 %18, 499, !dbg !122
  br i1 %19, label %23, label %20, !dbg !123

20:                                               ; preds = %0
  %21 = load i32, i32* %8, align 4, !dbg !124
  %22 = icmp slt i32 %21, 5, !dbg !125
  br i1 %22, label %23, label %25, !dbg !126

23:                                               ; preds = %20, %0
  %24 = load %struct._xmlRelaxNG*, %struct._xmlRelaxNG** %2, align 8, !dbg !127
  call void @xmlRelaxNGFree(%struct._xmlRelaxNG* noundef %24), !dbg !129
  store i32 -1, i32* %1, align 4, !dbg !130
  br label %88, !dbg !130

25:                                               ; preds = %20
  %26 = load i32, i32* %8, align 4, !dbg !131
  %27 = sub nsw i32 %26, 4, !dbg !131
  store i32 %27, i32* %8, align 4, !dbg !131
  %28 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.2, i64 0, i64 0), i32 noundef 29, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !132
  %29 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0, !dbg !133
  %30 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0, !dbg !133
  %31 = load i32, i32* %8, align 4, !dbg !134
  %32 = sext i32 %31 to i64, !dbg !134
  %33 = call i8* @memcpy(i8* %29, i8* %30, i64 %32), !dbg !133
  %34 = load i32, i32* %8, align 4, !dbg !135
  %35 = sext i32 %34 to i64, !dbg !136
  %36 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 %35, !dbg !136
  store i8 0, i8* %36, align 1, !dbg !137
  %37 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0, !dbg !138
  %38 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0, !dbg !140
  %39 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %37, i64 noundef 499, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* noundef %38) #9, !dbg !141
  %40 = icmp sge i32 %39, 499, !dbg !142
  br i1 %40, label %41, label %43, !dbg !143

41:                                               ; preds = %25
  %42 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 499, !dbg !144
  store i8 0, i8* %42, align 1, !dbg !145
  br label %43, !dbg !144

43:                                               ; preds = %41, %25
  %44 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %6, i32 0, i32 2, !dbg !146
  store i64 0, i64* %44, align 8, !dbg !147
  %45 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0, !dbg !148
  %46 = call i32 @glob(i8* noundef %45, i32 noundef 8, i32 (i8*, i32)* noundef null, %struct.glob_t* noundef %6) #9, !dbg !149
  store i32 0, i32* %7, align 4, !dbg !150
  br label %47, !dbg !152

47:                                               ; preds = %78, %43
  %48 = load i32, i32* %7, align 4, !dbg !153
  %49 = sext i32 %48 to i64, !dbg !153
  %50 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %6, i32 0, i32 0, !dbg !155
  %51 = load i64, i64* %50, align 8, !dbg !155
  %52 = icmp ult i64 %49, %51, !dbg !156
  br i1 %52, label %53, label %81, !dbg !157

53:                                               ; preds = %47
  call void @llvm.dbg.declare(metadata i8** %9, metadata !158, metadata !DIExpression()), !dbg !160
  %54 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %6, i32 0, i32 1, !dbg !161
  %55 = load i8**, i8*** %54, align 8, !dbg !161
  %56 = load i32, i32* %7, align 4, !dbg !162
  %57 = sext i32 %56 to i64, !dbg !163
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57, !dbg !163
  %59 = load i8*, i8** %58, align 8, !dbg !163
  store i8* %59, i8** %9, align 8, !dbg !160
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %10, metadata !164, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidCtxt** %11, metadata !273, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.declare(metadata i32* %12, metadata !279, metadata !DIExpression()), !dbg !280
  %60 = load i8*, i8** %9, align 8, !dbg !281
  %61 = call %struct._xmlDoc* @xmlReadFile(i8* noundef %60, i8* noundef null, i32 noundef 0), !dbg !282
  store %struct._xmlDoc* %61, %struct._xmlDoc** %10, align 8, !dbg !283
  %62 = load %struct._xmlDoc*, %struct._xmlDoc** %10, align 8, !dbg !284
  %63 = icmp eq %struct._xmlDoc* %62, null, !dbg !286
  br i1 %63, label %64, label %65, !dbg !287

64:                                               ; preds = %53
  br label %78, !dbg !288

65:                                               ; preds = %53
  %66 = load %struct._xmlRelaxNG*, %struct._xmlRelaxNG** %2, align 8, !dbg !290
  %67 = call %struct._xmlRelaxNGValidCtxt* @xmlRelaxNGNewValidCtxt(%struct._xmlRelaxNG* noundef %66), !dbg !291
  store %struct._xmlRelaxNGValidCtxt* %67, %struct._xmlRelaxNGValidCtxt** %11, align 8, !dbg !292
  %68 = load %struct._xmlRelaxNGValidCtxt*, %struct._xmlRelaxNGValidCtxt** %11, align 8, !dbg !293
  %69 = icmp eq %struct._xmlRelaxNGValidCtxt* %68, null, !dbg !295
  br i1 %69, label %70, label %72, !dbg !296

70:                                               ; preds = %65
  %71 = load %struct._xmlDoc*, %struct._xmlDoc** %10, align 8, !dbg !297
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %71), !dbg !299
  br label %78, !dbg !300

72:                                               ; preds = %65
  %73 = load %struct._xmlRelaxNGValidCtxt*, %struct._xmlRelaxNGValidCtxt** %11, align 8, !dbg !301
  %74 = load %struct._xmlDoc*, %struct._xmlDoc** %10, align 8, !dbg !302
  %75 = call i32 @xmlRelaxNGValidateDoc(%struct._xmlRelaxNGValidCtxt* noundef %73, %struct._xmlDoc* noundef %74), !dbg !303
  store i32 %75, i32* %12, align 4, !dbg !304
  %76 = load %struct._xmlRelaxNGValidCtxt*, %struct._xmlRelaxNGValidCtxt** %11, align 8, !dbg !305
  call void @xmlRelaxNGFreeValidCtxt(%struct._xmlRelaxNGValidCtxt* noundef %76), !dbg !306
  %77 = load %struct._xmlDoc*, %struct._xmlDoc** %10, align 8, !dbg !307
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %77), !dbg !308
  br label %78, !dbg !309

78:                                               ; preds = %72, %70, %64
  %79 = load i32, i32* %7, align 4, !dbg !310
  %80 = add nsw i32 %79, 1, !dbg !310
  store i32 %80, i32* %7, align 4, !dbg !310
  br label %47, !dbg !311, !llvm.loop !312

81:                                               ; preds = %47
  %82 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %6, i32 0, i32 0, !dbg !315
  %83 = load i64, i64* %82, align 8, !dbg !315
  %84 = icmp ugt i64 %83, 0, !dbg !317
  br i1 %84, label %85, label %86, !dbg !318

85:                                               ; preds = %81
  call void @globfree(%struct.glob_t* noundef %6) #9, !dbg !319
  br label %86, !dbg !321

86:                                               ; preds = %85, %81
  %87 = load %struct._xmlRelaxNG*, %struct._xmlRelaxNG** %2, align 8, !dbg !322
  call void @xmlRelaxNGFree(%struct._xmlRelaxNG* noundef %87), !dbg !323
  call void @xmlCleanupParser(), !dbg !324
  store i32 0, i32* %1, align 4, !dbg !325
  br label %88, !dbg !325

88:                                               ; preds = %86, %23
  %89 = load i32, i32* %1, align 4, !dbg !326
  ret i32 %89, !dbg !326
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

declare void @xmlRelaxNGFree(%struct._xmlRelaxNG* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind
declare i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #6

; Function Attrs: nounwind
declare i32 @glob(i8* noundef, i32 noundef, i32 (i8*, i32)* noundef, %struct.glob_t* noundef) #6

declare %struct._xmlDoc* @xmlReadFile(i8* noundef, i8* noundef, i32 noundef) #2

declare %struct._xmlRelaxNGValidCtxt* @xmlRelaxNGNewValidCtxt(%struct._xmlRelaxNG* noundef) #2

declare void @xmlFreeDoc(%struct._xmlDoc* noundef) #2

declare i32 @xmlRelaxNGValidateDoc(%struct._xmlRelaxNGValidCtxt* noundef, %struct._xmlDoc* noundef) #2

declare void @xmlRelaxNGFreeValidCtxt(%struct._xmlRelaxNGValidCtxt* noundef) #2

; Function Attrs: nounwind
declare void @globfree(%struct.glob_t* noundef) #6

declare void @xmlCleanupParser() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !327 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !335, metadata !DIExpression()), !dbg !336
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !337, metadata !DIExpression()), !dbg !338
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !339, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.declare(metadata i8** %7, metadata !341, metadata !DIExpression()), !dbg !342
  %9 = load i8*, i8** %4, align 8, !dbg !343
  store i8* %9, i8** %7, align 8, !dbg !342
  call void @llvm.dbg.declare(metadata i8** %8, metadata !344, metadata !DIExpression()), !dbg !345
  %10 = load i8*, i8** %5, align 8, !dbg !346
  store i8* %10, i8** %8, align 8, !dbg !345
  br label %11, !dbg !347

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !348
  %13 = add i64 %12, -1, !dbg !348
  store i64 %13, i64* %6, align 8, !dbg !348
  %14 = icmp ugt i64 %12, 0, !dbg !349
  br i1 %14, label %15, label %21, !dbg !347

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !350
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !350
  store i8* %17, i8** %8, align 8, !dbg !350
  %18 = load i8, i8* %16, align 1, !dbg !351
  %19 = load i8*, i8** %7, align 8, !dbg !352
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !352
  store i8* %20, i8** %7, align 8, !dbg !352
  store i8 %18, i8* %19, align 1, !dbg !353
  br label %11, !dbg !347, !llvm.loop !354

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !355
  ret i8* %22, !dbg !356
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0, !42}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51, !51}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !40, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/095_runtest.c_3692_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "d34c576381592a156b14717b99c7c87d")
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
!40 = !{!41}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!42 = distinct !DICompileUnit(language: DW_LANG_C99, file: !43, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!43 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!44 = !{i32 7, !"Dwarf Version", i32 5}
!45 = !{i32 2, !"Debug Info Version", i32 3}
!46 = !{i32 1, !"wchar_size", i32 4}
!47 = !{i32 7, !"PIC Level", i32 2}
!48 = !{i32 7, !"PIE Level", i32 2}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"Ubuntu clang version 14.0.6"}
!52 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 10, type: !53, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !56)
!53 = !DISubroutineType(types: !54)
!54 = !{!55}
!55 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!56 = !{}
!57 = !DILocalVariable(name: "schemas", scope: !52, file: !1, line: 11, type: !58)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGPtr", file: !59, line: 24, baseType: !60)
!59 = !DIFile(filename: "/usr/include/libxml2/libxml/relaxng.h", directory: "", checksumkind: CSK_MD5, checksum: "348c151f5b45a3543862c0e280f9fbba")
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNG", file: !59, line: 23, baseType: !62)
!62 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRelaxNG", file: !59, line: 23, flags: DIFlagFwdDecl)
!63 = !DILocation(line: 11, column: 19, scope: !52)
!64 = !DILocalVariable(name: "base", scope: !52, file: !1, line: 12, type: !65)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 4096, elements: !67)
!66 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!67 = !{!68}
!68 = !DISubrange(count: 512)
!69 = !DILocation(line: 12, column: 10, scope: !52)
!70 = !DILocalVariable(name: "prefix", scope: !52, file: !1, line: 13, type: !65)
!71 = !DILocation(line: 13, column: 10, scope: !52)
!72 = !DILocalVariable(name: "pattern", scope: !52, file: !1, line: 14, type: !65)
!73 = !DILocation(line: 14, column: 10, scope: !52)
!74 = !DILocalVariable(name: "globbuf", scope: !52, file: !1, line: 15, type: !75)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "glob_t", file: !76, line: 105, baseType: !77)
!76 = !DIFile(filename: "/usr/include/glob.h", directory: "", checksumkind: CSK_MD5, checksum: "8ea9220296cea36c1e39d29a274cc700")
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !76, line: 82, size: 576, elements: !78)
!78 = !{!79, !82, !85, !86, !87, !91, !95, !101, !107}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "gl_pathc", scope: !77, file: !76, line: 84, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !76, line: 27, baseType: !81)
!81 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "gl_pathv", scope: !77, file: !76, line: 85, baseType: !83, size: 64, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "gl_offs", scope: !77, file: !76, line: 86, baseType: !80, size: 64, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "gl_flags", scope: !77, file: !76, line: 87, baseType: !55, size: 32, offset: 192)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "gl_closedir", scope: !77, file: !76, line: 91, baseType: !88, size: 64, offset: 256)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DISubroutineType(types: !90)
!90 = !{null, !41}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "gl_readdir", scope: !77, file: !76, line: 95, baseType: !92, size: 64, offset: 320)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DISubroutineType(types: !94)
!94 = !{!41, !41}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "gl_opendir", scope: !77, file: !76, line: 97, baseType: !96, size: 64, offset: 384)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DISubroutineType(types: !98)
!98 = !{!41, !99}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "gl_lstat", scope: !77, file: !76, line: 102, baseType: !102, size: 64, offset: 448)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DISubroutineType(types: !104)
!104 = !{!55, !105, !106}
!105 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !99)
!106 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !41)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "gl_stat", scope: !77, file: !76, line: 103, baseType: !102, size: 64, offset: 512)
!108 = !DILocation(line: 15, column: 12, scope: !52)
!109 = !DILocalVariable(name: "i", scope: !52, file: !1, line: 16, type: !55)
!110 = !DILocation(line: 16, column: 9, scope: !52)
!111 = !DILocalVariable(name: "len", scope: !52, file: !1, line: 17, type: !55)
!112 = !DILocation(line: 17, column: 9, scope: !52)
!113 = !DILocation(line: 19, column: 24, scope: !52)
!114 = !DILocation(line: 19, column: 5, scope: !52)
!115 = !DILocation(line: 20, column: 5, scope: !52)
!116 = !DILocation(line: 20, column: 28, scope: !52)
!117 = !DILocation(line: 22, column: 18, scope: !52)
!118 = !DILocation(line: 22, column: 11, scope: !52)
!119 = !DILocation(line: 22, column: 9, scope: !52)
!120 = !DILocation(line: 23, column: 10, scope: !121)
!121 = distinct !DILexicalBlock(scope: !52, file: !1, line: 23, column: 9)
!122 = !DILocation(line: 23, column: 14, scope: !121)
!123 = !DILocation(line: 23, column: 21, scope: !121)
!124 = !DILocation(line: 23, column: 25, scope: !121)
!125 = !DILocation(line: 23, column: 29, scope: !121)
!126 = !DILocation(line: 23, column: 9, scope: !52)
!127 = !DILocation(line: 24, column: 24, scope: !128)
!128 = distinct !DILexicalBlock(scope: !121, file: !1, line: 23, column: 35)
!129 = !DILocation(line: 24, column: 9, scope: !128)
!130 = !DILocation(line: 25, column: 9, scope: !128)
!131 = !DILocation(line: 27, column: 9, scope: !52)
!132 = !DILocation(line: 29, column: 5, scope: !52)
!133 = !DILocation(line: 30, column: 5, scope: !52)
!134 = !DILocation(line: 30, column: 26, scope: !52)
!135 = !DILocation(line: 31, column: 12, scope: !52)
!136 = !DILocation(line: 31, column: 5, scope: !52)
!137 = !DILocation(line: 31, column: 17, scope: !52)
!138 = !DILocation(line: 33, column: 18, scope: !139)
!139 = distinct !DILexicalBlock(scope: !52, file: !1, line: 33, column: 9)
!140 = !DILocation(line: 33, column: 59, scope: !139)
!141 = !DILocation(line: 33, column: 9, scope: !139)
!142 = !DILocation(line: 33, column: 67, scope: !139)
!143 = !DILocation(line: 33, column: 9, scope: !52)
!144 = !DILocation(line: 34, column: 9, scope: !139)
!145 = !DILocation(line: 34, column: 22, scope: !139)
!146 = !DILocation(line: 36, column: 13, scope: !52)
!147 = !DILocation(line: 36, column: 21, scope: !52)
!148 = !DILocation(line: 37, column: 10, scope: !52)
!149 = !DILocation(line: 37, column: 5, scope: !52)
!150 = !DILocation(line: 38, column: 12, scope: !151)
!151 = distinct !DILexicalBlock(scope: !52, file: !1, line: 38, column: 5)
!152 = !DILocation(line: 38, column: 10, scope: !151)
!153 = !DILocation(line: 38, column: 17, scope: !154)
!154 = distinct !DILexicalBlock(scope: !151, file: !1, line: 38, column: 5)
!155 = !DILocation(line: 38, column: 29, scope: !154)
!156 = !DILocation(line: 38, column: 19, scope: !154)
!157 = !DILocation(line: 38, column: 5, scope: !151)
!158 = !DILocalVariable(name: "filename", scope: !159, file: !1, line: 39, type: !99)
!159 = distinct !DILexicalBlock(scope: !154, file: !1, line: 38, column: 44)
!160 = !DILocation(line: 39, column: 21, scope: !159)
!161 = !DILocation(line: 39, column: 40, scope: !159)
!162 = !DILocation(line: 39, column: 49, scope: !159)
!163 = !DILocation(line: 39, column: 32, scope: !159)
!164 = !DILocalVariable(name: "doc", scope: !159, file: !1, line: 40, type: !165)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !166)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !168)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !169)
!169 = !{!170, !171, !173, !174, !230, !231, !232, !233, !234, !235, !236, !237, !257, !258, !259, !260, !261, !262, !263, !264, !265, !269, !270, !271}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !168, file: !4, line: 560, baseType: !41, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !168, file: !4, line: 561, baseType: !172, size: 32, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !168, file: !4, line: 562, baseType: !84, size: 64, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !168, file: !4, line: 563, baseType: !175, size: 64, offset: 192)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !177)
!177 = !{!178, !179, !180, !186, !187, !188, !189, !190, !191, !193, !206, !208, !225, !226, !227, !229}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !176, file: !4, line: 493, baseType: !41, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !176, file: !4, line: 494, baseType: !172, size: 32, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !176, file: !4, line: 495, baseType: !181, size: 64, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !184, line: 28, baseType: !185)
!184 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!185 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !176, file: !4, line: 496, baseType: !175, size: 64, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !176, file: !4, line: 497, baseType: !175, size: 64, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !176, file: !4, line: 498, baseType: !175, size: 64, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !176, file: !4, line: 499, baseType: !175, size: 64, offset: 384)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !176, file: !4, line: 500, baseType: !175, size: 64, offset: 448)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !176, file: !4, line: 501, baseType: !192, size: 64, offset: 512)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !176, file: !4, line: 504, baseType: !194, size: 64, offset: 576)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !196)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !197)
!197 = !{!198, !200, !202, !203, !204, !205}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !196, file: !4, line: 389, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !196, file: !4, line: 390, baseType: !201, size: 32, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !172)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !196, file: !4, line: 391, baseType: !181, size: 64, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !196, file: !4, line: 392, baseType: !181, size: 64, offset: 192)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !196, file: !4, line: 393, baseType: !41, size: 64, offset: 256)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !196, file: !4, line: 394, baseType: !192, size: 64, offset: 320)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !176, file: !4, line: 505, baseType: !207, size: 64, offset: 640)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !176, file: !4, line: 506, baseType: !209, size: 64, offset: 704)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !211)
!211 = !{!212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !224}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !210, file: !4, line: 434, baseType: !41, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !210, file: !4, line: 435, baseType: !172, size: 32, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !210, file: !4, line: 436, baseType: !181, size: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !210, file: !4, line: 437, baseType: !175, size: 64, offset: 192)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !210, file: !4, line: 438, baseType: !175, size: 64, offset: 256)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !210, file: !4, line: 439, baseType: !175, size: 64, offset: 320)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !210, file: !4, line: 440, baseType: !209, size: 64, offset: 384)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !210, file: !4, line: 441, baseType: !209, size: 64, offset: 448)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !210, file: !4, line: 442, baseType: !192, size: 64, offset: 512)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !210, file: !4, line: 443, baseType: !194, size: 64, offset: 576)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !210, file: !4, line: 444, baseType: !223, size: 32, offset: 640)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !210, file: !4, line: 445, baseType: !41, size: 64, offset: 704)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !176, file: !4, line: 507, baseType: !194, size: 64, offset: 768)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !176, file: !4, line: 508, baseType: !41, size: 64, offset: 832)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !176, file: !4, line: 509, baseType: !228, size: 16, offset: 896)
!228 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !176, file: !4, line: 510, baseType: !228, size: 16, offset: 912)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !168, file: !4, line: 564, baseType: !175, size: 64, offset: 256)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !168, file: !4, line: 565, baseType: !175, size: 64, offset: 320)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !168, file: !4, line: 566, baseType: !175, size: 64, offset: 384)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !168, file: !4, line: 567, baseType: !175, size: 64, offset: 448)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !168, file: !4, line: 568, baseType: !192, size: 64, offset: 512)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !168, file: !4, line: 571, baseType: !55, size: 32, offset: 576)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !168, file: !4, line: 572, baseType: !55, size: 32, offset: 608)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !168, file: !4, line: 578, baseType: !238, size: 64, offset: 640)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !240)
!240 = !{!241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !239, file: !4, line: 406, baseType: !41, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !239, file: !4, line: 407, baseType: !172, size: 32, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !239, file: !4, line: 408, baseType: !181, size: 64, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !239, file: !4, line: 409, baseType: !175, size: 64, offset: 192)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !239, file: !4, line: 410, baseType: !175, size: 64, offset: 256)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !239, file: !4, line: 411, baseType: !192, size: 64, offset: 320)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !239, file: !4, line: 412, baseType: !175, size: 64, offset: 384)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !239, file: !4, line: 413, baseType: !175, size: 64, offset: 448)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !239, file: !4, line: 414, baseType: !192, size: 64, offset: 512)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !239, file: !4, line: 417, baseType: !41, size: 64, offset: 576)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !239, file: !4, line: 418, baseType: !41, size: 64, offset: 640)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !239, file: !4, line: 419, baseType: !41, size: 64, offset: 704)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !239, file: !4, line: 420, baseType: !41, size: 64, offset: 768)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !239, file: !4, line: 421, baseType: !181, size: 64, offset: 832)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !239, file: !4, line: 422, baseType: !181, size: 64, offset: 896)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !239, file: !4, line: 423, baseType: !41, size: 64, offset: 960)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !168, file: !4, line: 579, baseType: !238, size: 64, offset: 704)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !168, file: !4, line: 580, baseType: !199, size: 64, offset: 768)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !168, file: !4, line: 581, baseType: !181, size: 64, offset: 832)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !168, file: !4, line: 582, baseType: !181, size: 64, offset: 896)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !168, file: !4, line: 583, baseType: !41, size: 64, offset: 960)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !168, file: !4, line: 584, baseType: !41, size: 64, offset: 1024)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !168, file: !4, line: 585, baseType: !181, size: 64, offset: 1088)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !168, file: !4, line: 586, baseType: !55, size: 32, offset: 1152)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !168, file: !4, line: 588, baseType: !266, size: 64, offset: 1216)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !268, line: 24, flags: DIFlagFwdDecl)
!268 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!269 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !168, file: !4, line: 589, baseType: !41, size: 64, offset: 1280)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !168, file: !4, line: 590, baseType: !55, size: 32, offset: 1344)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !168, file: !4, line: 592, baseType: !55, size: 32, offset: 1376)
!272 = !DILocation(line: 40, column: 19, scope: !159)
!273 = !DILocalVariable(name: "ctxt", scope: !159, file: !1, line: 41, type: !274)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGValidCtxtPtr", file: !59, line: 58, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGValidCtxt", file: !59, line: 57, baseType: !277)
!277 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRelaxNGValidCtxt", file: !59, line: 57, flags: DIFlagFwdDecl)
!278 = !DILocation(line: 41, column: 32, scope: !159)
!279 = !DILocalVariable(name: "ret", scope: !159, file: !1, line: 42, type: !55)
!280 = !DILocation(line: 42, column: 13, scope: !159)
!281 = !DILocation(line: 44, column: 27, scope: !159)
!282 = !DILocation(line: 44, column: 15, scope: !159)
!283 = !DILocation(line: 44, column: 13, scope: !159)
!284 = !DILocation(line: 45, column: 13, scope: !285)
!285 = distinct !DILexicalBlock(scope: !159, file: !1, line: 45, column: 13)
!286 = !DILocation(line: 45, column: 17, scope: !285)
!287 = !DILocation(line: 45, column: 13, scope: !159)
!288 = !DILocation(line: 46, column: 13, scope: !289)
!289 = distinct !DILexicalBlock(scope: !285, file: !1, line: 45, column: 26)
!290 = !DILocation(line: 49, column: 39, scope: !159)
!291 = !DILocation(line: 49, column: 16, scope: !159)
!292 = !DILocation(line: 49, column: 14, scope: !159)
!293 = !DILocation(line: 50, column: 13, scope: !294)
!294 = distinct !DILexicalBlock(scope: !159, file: !1, line: 50, column: 13)
!295 = !DILocation(line: 50, column: 18, scope: !294)
!296 = !DILocation(line: 50, column: 13, scope: !159)
!297 = !DILocation(line: 51, column: 24, scope: !298)
!298 = distinct !DILexicalBlock(scope: !294, file: !1, line: 50, column: 27)
!299 = !DILocation(line: 51, column: 13, scope: !298)
!300 = !DILocation(line: 52, column: 13, scope: !298)
!301 = !DILocation(line: 55, column: 37, scope: !159)
!302 = !DILocation(line: 55, column: 43, scope: !159)
!303 = !DILocation(line: 55, column: 15, scope: !159)
!304 = !DILocation(line: 55, column: 13, scope: !159)
!305 = !DILocation(line: 56, column: 33, scope: !159)
!306 = !DILocation(line: 56, column: 9, scope: !159)
!307 = !DILocation(line: 57, column: 20, scope: !159)
!308 = !DILocation(line: 57, column: 9, scope: !159)
!309 = !DILocation(line: 58, column: 5, scope: !159)
!310 = !DILocation(line: 38, column: 40, scope: !154)
!311 = !DILocation(line: 38, column: 5, scope: !154)
!312 = distinct !{!312, !157, !313, !314}
!313 = !DILocation(line: 58, column: 5, scope: !151)
!314 = !{!"llvm.loop.mustprogress"}
!315 = !DILocation(line: 60, column: 17, scope: !316)
!316 = distinct !DILexicalBlock(scope: !52, file: !1, line: 60, column: 9)
!317 = !DILocation(line: 60, column: 26, scope: !316)
!318 = !DILocation(line: 60, column: 9, scope: !52)
!319 = !DILocation(line: 61, column: 9, scope: !320)
!320 = distinct !DILexicalBlock(scope: !316, file: !1, line: 60, column: 31)
!321 = !DILocation(line: 62, column: 5, scope: !320)
!322 = !DILocation(line: 64, column: 20, scope: !52)
!323 = !DILocation(line: 64, column: 5, scope: !52)
!324 = !DILocation(line: 65, column: 5, scope: !52)
!325 = !DILocation(line: 66, column: 5, scope: !52)
!326 = !DILocation(line: 67, column: 1, scope: !52)
!327 = distinct !DISubprogram(name: "memcpy", scope: !328, file: !328, line: 12, type: !329, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !42, retainedNodes: !56)
!328 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!329 = !DISubroutineType(types: !330)
!330 = !{!41, !41, !331, !333}
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !334, line: 46, baseType: !81)
!334 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!335 = !DILocalVariable(name: "destaddr", arg: 1, scope: !327, file: !328, line: 12, type: !41)
!336 = !DILocation(line: 12, column: 20, scope: !327)
!337 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !327, file: !328, line: 12, type: !331)
!338 = !DILocation(line: 12, column: 42, scope: !327)
!339 = !DILocalVariable(name: "len", arg: 3, scope: !327, file: !328, line: 12, type: !333)
!340 = !DILocation(line: 12, column: 58, scope: !327)
!341 = !DILocalVariable(name: "dest", scope: !327, file: !328, line: 13, type: !84)
!342 = !DILocation(line: 13, column: 9, scope: !327)
!343 = !DILocation(line: 13, column: 16, scope: !327)
!344 = !DILocalVariable(name: "src", scope: !327, file: !328, line: 14, type: !99)
!345 = !DILocation(line: 14, column: 15, scope: !327)
!346 = !DILocation(line: 14, column: 21, scope: !327)
!347 = !DILocation(line: 16, column: 3, scope: !327)
!348 = !DILocation(line: 16, column: 13, scope: !327)
!349 = !DILocation(line: 16, column: 16, scope: !327)
!350 = !DILocation(line: 17, column: 19, scope: !327)
!351 = !DILocation(line: 17, column: 15, scope: !327)
!352 = !DILocation(line: 17, column: 10, scope: !327)
!353 = !DILocation(line: 17, column: 13, scope: !327)
!354 = distinct !{!354, !347, !350, !314}
!355 = !DILocation(line: 18, column: 10, scope: !327)
!356 = !DILocation(line: 18, column: 3, scope: !327)

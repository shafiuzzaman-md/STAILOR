; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/270_tree.c_2693_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/270_tree.c_2693_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i16 }
%struct._xmlDoc = type opaque
%struct._xmlAttr = type opaque
%struct._xmlNs = type opaque

@.str = private unnamed_addr constant [17 x i8] c"building comment\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"content\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"(comment != ((void*)0)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/270_tree.c_2693_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlTreeErrMemory(i8* noundef %0) #0 !dbg !71 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !75, metadata !DIExpression()), !dbg !76
  ret void, !dbg !77
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !78 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !84, metadata !DIExpression()), !dbg !85
  %3 = load i64, i64* %2, align 8, !dbg !86
  %4 = call noalias i8* @malloc(i64 noundef %3) #9, !dbg !87
  ret i8* %4, !dbg !88
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlStrdup(i8* noundef %0) #0 !dbg !89 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !92, metadata !DIExpression()), !dbg !93
  %6 = load i8*, i8** %3, align 8, !dbg !94
  %7 = icmp eq i8* %6, null, !dbg !96
  br i1 %7, label %8, label %9, !dbg !97

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !98
  br label %24, !dbg !98

9:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata i64* %4, metadata !99, metadata !DIExpression()), !dbg !100
  %10 = load i8*, i8** %3, align 8, !dbg !101
  %11 = call i64 @strlen(i8* noundef %10) #10, !dbg !102
  %12 = add i64 %11, 1, !dbg !103
  store i64 %12, i64* %4, align 8, !dbg !100
  call void @llvm.dbg.declare(metadata i8** %5, metadata !104, metadata !DIExpression()), !dbg !105
  %13 = load i64, i64* %4, align 8, !dbg !106
  %14 = call noalias i8* @malloc(i64 noundef %13) #9, !dbg !107
  store i8* %14, i8** %5, align 8, !dbg !105
  %15 = load i8*, i8** %5, align 8, !dbg !108
  %16 = icmp ne i8* %15, null, !dbg !110
  br i1 %16, label %17, label %22, !dbg !111

17:                                               ; preds = %9
  %18 = load i8*, i8** %5, align 8, !dbg !112
  %19 = load i8*, i8** %3, align 8, !dbg !114
  %20 = load i64, i64* %4, align 8, !dbg !115
  %21 = call i8* @memcpy(i8* %18, i8* %19, i64 %20), !dbg !116
  br label %22, !dbg !117

22:                                               ; preds = %17, %9
  %23 = load i8*, i8** %5, align 8, !dbg !118
  store i8* %23, i8** %2, align 8, !dbg !119
  br label %24, !dbg !119

24:                                               ; preds = %22, %8
  %25 = load i8*, i8** %2, align 8, !dbg !120
  ret i8* %25, !dbg !120
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlNode* @xmlNewComment(i8* noundef %0) #0 !dbg !121 {
  %2 = alloca %struct._xmlNode*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._xmlNode*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !124, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %4, metadata !126, metadata !DIExpression()), !dbg !127
  %5 = call i8* @xmlMalloc(i64 noundef 104), !dbg !128
  %6 = bitcast i8* %5 to %struct._xmlNode*, !dbg !129
  store %struct._xmlNode* %6, %struct._xmlNode** %4, align 8, !dbg !130
  %7 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !131
  %8 = icmp eq %struct._xmlNode* %7, null, !dbg !133
  br i1 %8, label %9, label %10, !dbg !134

9:                                                ; preds = %1
  call void @xmlTreeErrMemory(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)), !dbg !135
  store %struct._xmlNode* null, %struct._xmlNode** %2, align 8, !dbg !137
  br label %27, !dbg !137

10:                                               ; preds = %1
  %11 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !138
  %12 = bitcast %struct._xmlNode* %11 to i8*, !dbg !139
  %13 = call i8* @memset(i8* %12, i32 0, i64 104), !dbg !139
  %14 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !140
  %15 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %14, i32 0, i32 1, !dbg !141
  store i32 8, i32* %15, align 8, !dbg !142
  %16 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !143
  %17 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %16, i32 0, i32 2, !dbg !144
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %17, align 8, !dbg !145
  %18 = load i8*, i8** %3, align 8, !dbg !146
  %19 = icmp ne i8* %18, null, !dbg !148
  br i1 %19, label %20, label %25, !dbg !149

20:                                               ; preds = %10
  %21 = load i8*, i8** %3, align 8, !dbg !150
  %22 = call i8* @xmlStrdup(i8* noundef %21), !dbg !152
  %23 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !153
  %24 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %23, i32 0, i32 9, !dbg !154
  store i8* %22, i8** %24, align 8, !dbg !155
  br label %25, !dbg !156

25:                                               ; preds = %20, %10
  %26 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !157
  store %struct._xmlNode* %26, %struct._xmlNode** %2, align 8, !dbg !158
  br label %27, !dbg !158

27:                                               ; preds = %25, %9
  %28 = load %struct._xmlNode*, %struct._xmlNode** %2, align 8, !dbg !159
  ret %struct._xmlNode* %28, !dbg !159
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !160 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca %struct._xmlNode*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !164, metadata !DIExpression()), !dbg !168
  %4 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !169
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 256, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)), !dbg !170
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !171
  store i8 0, i8* %5, align 1, !dbg !172
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %3, metadata !173, metadata !DIExpression()), !dbg !174
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !175
  %7 = call %struct._xmlNode* @xmlNewComment(i8* noundef %6), !dbg !176
  store %struct._xmlNode* %7, %struct._xmlNode** %3, align 8, !dbg !174
  %8 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !177
  %9 = icmp ne %struct._xmlNode* %8, null, !dbg !179
  br i1 %9, label %10, label %24, !dbg !180

10:                                               ; preds = %0
  %11 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !181
  %12 = icmp ne %struct._xmlNode* %11, null, !dbg !181
  br i1 %12, label %13, label %15, !dbg !181

13:                                               ; preds = %10
  br i1 true, label %14, label %15, !dbg !181

14:                                               ; preds = %13
  br label %17, !dbg !181

15:                                               ; preds = %13, %10
  %16 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.5, i64 0, i64 0), i32 noundef 111, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !181
  br label %17, !dbg !181

17:                                               ; preds = %15, %14
  %18 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.5, i64 0, i64 0), i32 noundef 114, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !183
  %19 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !184
  %20 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %19, i32 0, i32 9, !dbg !185
  %21 = load i8*, i8** %20, align 8, !dbg !185
  call void @free(i8* noundef %21) #9, !dbg !186
  %22 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !187
  %23 = bitcast %struct._xmlNode* %22 to i8*, !dbg !187
  call void @free(i8* noundef %23) #9, !dbg !188
  br label %24, !dbg !189

24:                                               ; preds = %17, %0
  ret i32 0, !dbg !190
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #6

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #7

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #8 !dbg !191 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !197, metadata !DIExpression()), !dbg !198
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !199, metadata !DIExpression()), !dbg !200
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !201, metadata !DIExpression()), !dbg !202
  call void @llvm.dbg.declare(metadata i8** %7, metadata !203, metadata !DIExpression()), !dbg !204
  %9 = load i8*, i8** %4, align 8, !dbg !205
  store i8* %9, i8** %7, align 8, !dbg !204
  call void @llvm.dbg.declare(metadata i8** %8, metadata !206, metadata !DIExpression()), !dbg !207
  %10 = load i8*, i8** %5, align 8, !dbg !208
  store i8* %10, i8** %8, align 8, !dbg !207
  br label %11, !dbg !209

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !210
  %13 = add i64 %12, -1, !dbg !210
  store i64 %13, i64* %6, align 8, !dbg !210
  %14 = icmp ugt i64 %12, 0, !dbg !211
  br i1 %14, label %15, label %21, !dbg !209

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !212
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !212
  store i8* %17, i8** %8, align 8, !dbg !212
  %18 = load i8, i8* %16, align 1, !dbg !213
  %19 = load i8*, i8** %7, align 8, !dbg !214
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !214
  store i8* %20, i8** %7, align 8, !dbg !214
  store i8 %18, i8* %19, align 1, !dbg !215
  br label %11, !dbg !209, !llvm.loop !216

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !218
  ret i8* %22, !dbg !219
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #8 !dbg !220 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !224, metadata !DIExpression()), !dbg !225
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !226, metadata !DIExpression()), !dbg !227
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !228, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.declare(metadata i8** %7, metadata !230, metadata !DIExpression()), !dbg !231
  %8 = load i8*, i8** %4, align 8, !dbg !232
  store i8* %8, i8** %7, align 8, !dbg !231
  br label %9, !dbg !233

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !234
  %11 = add i64 %10, -1, !dbg !234
  store i64 %11, i64* %6, align 8, !dbg !234
  %12 = icmp ugt i64 %10, 0, !dbg !235
  br i1 %12, label %13, label %18, !dbg !233

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !236
  %15 = trunc i32 %14 to i8, !dbg !236
  %16 = load i8*, i8** %7, align 8, !dbg !237
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !237
  store i8* %17, i8** %7, align 8, !dbg !237
  store i8 %15, i8* %16, align 1, !dbg !238
  br label %9, !dbg !233, !llvm.loop !239

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !240
  ret i8* %19, !dbg !241
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !59, !61}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70, !70, !70}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !26, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/270_tree.c_2693_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "f1d5303b7c493a7f8db9bf4e5bd285e6")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 13, baseType: !4, size: 32, elements: !5)
!4 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25}
!6 = !DIEnumerator(name: "XML_ELEMENT_NODE", value: 1)
!7 = !DIEnumerator(name: "XML_ATTRIBUTE_NODE", value: 2)
!8 = !DIEnumerator(name: "XML_TEXT_NODE", value: 3)
!9 = !DIEnumerator(name: "XML_CDATA_SECTION_NODE", value: 4)
!10 = !DIEnumerator(name: "XML_ENTITY_REF_NODE", value: 5)
!11 = !DIEnumerator(name: "XML_ENTITY_NODE", value: 6)
!12 = !DIEnumerator(name: "XML_PI_NODE", value: 7)
!13 = !DIEnumerator(name: "XML_COMMENT_NODE", value: 8)
!14 = !DIEnumerator(name: "XML_DOCUMENT_NODE", value: 9)
!15 = !DIEnumerator(name: "XML_DOCUMENT_TYPE_NODE", value: 10)
!16 = !DIEnumerator(name: "XML_DOCUMENT_FRAG_NODE", value: 11)
!17 = !DIEnumerator(name: "XML_NOTATION_NODE", value: 12)
!18 = !DIEnumerator(name: "XML_HTML_DOCUMENT_NODE", value: 13)
!19 = !DIEnumerator(name: "XML_DTD_NODE", value: 14)
!20 = !DIEnumerator(name: "XML_ELEMENT_DECL", value: 15)
!21 = !DIEnumerator(name: "XML_ATTRIBUTE_DECL", value: 16)
!22 = !DIEnumerator(name: "XML_ENTITY_DECL", value: 17)
!23 = !DIEnumerator(name: "XML_NAMESPACE_DECL", value: 18)
!24 = !DIEnumerator(name: "XML_XINCLUDE_START", value: 19)
!25 = !DIEnumerator(name: "XML_XINCLUDE_END", value: 20)
!26 = !{!27, !28, !30}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !1, line: 11, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 10, baseType: !33)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 36, size: 832, elements: !34)
!34 = !{!35, !36, !38, !41, !43, !44, !45, !46, !47, !50, !51, !54, !57}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !33, file: !1, line: 37, baseType: !27, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !33, file: !1, line: 38, baseType: !37, size: 32, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !1, line: 34, baseType: !3)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !33, file: !1, line: 39, baseType: !39, size: 64, offset: 128)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !33, file: !1, line: 40, baseType: !42, size: 64, offset: 192)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !33, file: !1, line: 41, baseType: !42, size: 64, offset: 256)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !33, file: !1, line: 42, baseType: !42, size: 64, offset: 320)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !33, file: !1, line: 43, baseType: !42, size: 64, offset: 384)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !33, file: !1, line: 44, baseType: !42, size: 64, offset: 448)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !33, file: !1, line: 45, baseType: !48, size: 64, offset: 512)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !1, line: 45, flags: DIFlagFwdDecl)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !33, file: !1, line: 46, baseType: !28, size: 64, offset: 576)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !33, file: !1, line: 47, baseType: !52, size: 64, offset: 640)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !1, line: 47, flags: DIFlagFwdDecl)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !33, file: !1, line: 48, baseType: !55, size: 64, offset: 704)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !1, line: 48, flags: DIFlagFwdDecl)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !33, file: !1, line: 49, baseType: !58, size: 16, offset: 768)
!58 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!59 = distinct !DICompileUnit(language: DW_LANG_C99, file: !60, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!60 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!61 = distinct !DICompileUnit(language: DW_LANG_C99, file: !62, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!62 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!63 = !{i32 7, !"Dwarf Version", i32 5}
!64 = !{i32 2, !"Debug Info Version", i32 3}
!65 = !{i32 1, !"wchar_size", i32 4}
!66 = !{i32 7, !"PIC Level", i32 2}
!67 = !{i32 7, !"PIE Level", i32 2}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"Ubuntu clang version 14.0.6"}
!71 = distinct !DISubprogram(name: "xmlTreeErrMemory", scope: !1, file: !1, line: 53, type: !72, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !74)
!72 = !DISubroutineType(types: !73)
!73 = !{null, !39}
!74 = !{}
!75 = !DILocalVariable(name: "extra", arg: 1, scope: !71, file: !1, line: 53, type: !39)
!76 = !DILocation(line: 53, column: 35, scope: !71)
!77 = !DILocation(line: 55, column: 1, scope: !71)
!78 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 57, type: !79, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !74)
!79 = !DISubroutineType(types: !80)
!80 = !{!27, !81}
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !82, line: 46, baseType: !83)
!82 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!83 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!84 = !DILocalVariable(name: "size", arg: 1, scope: !78, file: !1, line: 57, type: !81)
!85 = !DILocation(line: 57, column: 24, scope: !78)
!86 = !DILocation(line: 58, column: 19, scope: !78)
!87 = !DILocation(line: 58, column: 12, scope: !78)
!88 = !DILocation(line: 58, column: 5, scope: !78)
!89 = distinct !DISubprogram(name: "xmlStrdup", scope: !1, file: !1, line: 61, type: !90, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !74)
!90 = !DISubroutineType(types: !91)
!91 = !{!28, !39}
!92 = !DILocalVariable(name: "cur", arg: 1, scope: !89, file: !1, line: 61, type: !39)
!93 = !DILocation(line: 61, column: 29, scope: !89)
!94 = !DILocation(line: 62, column: 9, scope: !95)
!95 = distinct !DILexicalBlock(scope: !89, file: !1, line: 62, column: 9)
!96 = !DILocation(line: 62, column: 13, scope: !95)
!97 = !DILocation(line: 62, column: 9, scope: !89)
!98 = !DILocation(line: 62, column: 22, scope: !95)
!99 = !DILocalVariable(name: "len", scope: !89, file: !1, line: 63, type: !81)
!100 = !DILocation(line: 63, column: 12, scope: !89)
!101 = !DILocation(line: 63, column: 25, scope: !89)
!102 = !DILocation(line: 63, column: 18, scope: !89)
!103 = !DILocation(line: 63, column: 30, scope: !89)
!104 = !DILocalVariable(name: "copy", scope: !89, file: !1, line: 64, type: !28)
!105 = !DILocation(line: 64, column: 11, scope: !89)
!106 = !DILocation(line: 64, column: 33, scope: !89)
!107 = !DILocation(line: 64, column: 26, scope: !89)
!108 = !DILocation(line: 65, column: 9, scope: !109)
!109 = distinct !DILexicalBlock(scope: !89, file: !1, line: 65, column: 9)
!110 = !DILocation(line: 65, column: 14, scope: !109)
!111 = !DILocation(line: 65, column: 9, scope: !89)
!112 = !DILocation(line: 66, column: 16, scope: !113)
!113 = distinct !DILexicalBlock(scope: !109, file: !1, line: 65, column: 23)
!114 = !DILocation(line: 66, column: 22, scope: !113)
!115 = !DILocation(line: 66, column: 27, scope: !113)
!116 = !DILocation(line: 66, column: 9, scope: !113)
!117 = !DILocation(line: 67, column: 5, scope: !113)
!118 = !DILocation(line: 68, column: 12, scope: !89)
!119 = !DILocation(line: 68, column: 5, scope: !89)
!120 = !DILocation(line: 69, column: 1, scope: !89)
!121 = distinct !DISubprogram(name: "xmlNewComment", scope: !1, file: !1, line: 72, type: !122, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !74)
!122 = !DISubroutineType(types: !123)
!123 = !{!30, !39}
!124 = !DILocalVariable(name: "content", arg: 1, scope: !121, file: !1, line: 72, type: !39)
!125 = !DILocation(line: 72, column: 38, scope: !121)
!126 = !DILocalVariable(name: "cur", scope: !121, file: !1, line: 73, type: !30)
!127 = !DILocation(line: 73, column: 16, scope: !121)
!128 = !DILocation(line: 75, column: 24, scope: !121)
!129 = !DILocation(line: 75, column: 11, scope: !121)
!130 = !DILocation(line: 75, column: 9, scope: !121)
!131 = !DILocation(line: 76, column: 9, scope: !132)
!132 = distinct !DILexicalBlock(scope: !121, file: !1, line: 76, column: 9)
!133 = !DILocation(line: 76, column: 13, scope: !132)
!134 = !DILocation(line: 76, column: 9, scope: !121)
!135 = !DILocation(line: 77, column: 9, scope: !136)
!136 = distinct !DILexicalBlock(scope: !132, file: !1, line: 76, column: 22)
!137 = !DILocation(line: 78, column: 9, scope: !136)
!138 = !DILocation(line: 80, column: 12, scope: !121)
!139 = !DILocation(line: 80, column: 5, scope: !121)
!140 = !DILocation(line: 81, column: 5, scope: !121)
!141 = !DILocation(line: 81, column: 10, scope: !121)
!142 = !DILocation(line: 81, column: 15, scope: !121)
!143 = !DILocation(line: 83, column: 5, scope: !121)
!144 = !DILocation(line: 83, column: 10, scope: !121)
!145 = !DILocation(line: 83, column: 15, scope: !121)
!146 = !DILocation(line: 84, column: 9, scope: !147)
!147 = distinct !DILexicalBlock(scope: !121, file: !1, line: 84, column: 9)
!148 = !DILocation(line: 84, column: 17, scope: !147)
!149 = !DILocation(line: 84, column: 9, scope: !121)
!150 = !DILocation(line: 85, column: 34, scope: !151)
!151 = distinct !DILexicalBlock(scope: !147, file: !1, line: 84, column: 26)
!152 = !DILocation(line: 85, column: 24, scope: !151)
!153 = !DILocation(line: 85, column: 9, scope: !151)
!154 = !DILocation(line: 85, column: 14, scope: !151)
!155 = !DILocation(line: 85, column: 22, scope: !151)
!156 = !DILocation(line: 86, column: 5, scope: !151)
!157 = !DILocation(line: 88, column: 12, scope: !121)
!158 = !DILocation(line: 88, column: 5, scope: !121)
!159 = !DILocation(line: 89, column: 1, scope: !121)
!160 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 92, type: !161, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !74)
!161 = !DISubroutineType(types: !162)
!162 = !{!163}
!163 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!164 = !DILocalVariable(name: "content", scope: !160, file: !1, line: 94, type: !165)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 2048, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 256)
!168 = !DILocation(line: 94, column: 10, scope: !160)
!169 = !DILocation(line: 95, column: 24, scope: !160)
!170 = !DILocation(line: 95, column: 5, scope: !160)
!171 = !DILocation(line: 98, column: 5, scope: !160)
!172 = !DILocation(line: 98, column: 18, scope: !160)
!173 = !DILocalVariable(name: "comment", scope: !160, file: !1, line: 101, type: !30)
!174 = !DILocation(line: 101, column: 16, scope: !160)
!175 = !DILocation(line: 101, column: 40, scope: !160)
!176 = !DILocation(line: 101, column: 26, scope: !160)
!177 = !DILocation(line: 104, column: 9, scope: !178)
!178 = distinct !DILexicalBlock(scope: !160, file: !1, line: 104, column: 9)
!179 = !DILocation(line: 104, column: 17, scope: !178)
!180 = !DILocation(line: 104, column: 9, scope: !160)
!181 = !DILocation(line: 111, column: 9, scope: !182)
!182 = distinct !DILexicalBlock(scope: !178, file: !1, line: 104, column: 26)
!183 = !DILocation(line: 114, column: 9, scope: !182)
!184 = !DILocation(line: 117, column: 14, scope: !182)
!185 = !DILocation(line: 117, column: 23, scope: !182)
!186 = !DILocation(line: 117, column: 9, scope: !182)
!187 = !DILocation(line: 118, column: 14, scope: !182)
!188 = !DILocation(line: 118, column: 9, scope: !182)
!189 = !DILocation(line: 119, column: 5, scope: !182)
!190 = !DILocation(line: 121, column: 5, scope: !160)
!191 = distinct !DISubprogram(name: "memcpy", scope: !192, file: !192, line: 12, type: !193, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !59, retainedNodes: !74)
!192 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!193 = !DISubroutineType(types: !194)
!194 = !{!27, !27, !195, !81}
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!197 = !DILocalVariable(name: "destaddr", arg: 1, scope: !191, file: !192, line: 12, type: !27)
!198 = !DILocation(line: 12, column: 20, scope: !191)
!199 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !191, file: !192, line: 12, type: !195)
!200 = !DILocation(line: 12, column: 42, scope: !191)
!201 = !DILocalVariable(name: "len", arg: 3, scope: !191, file: !192, line: 12, type: !81)
!202 = !DILocation(line: 12, column: 58, scope: !191)
!203 = !DILocalVariable(name: "dest", scope: !191, file: !192, line: 13, type: !28)
!204 = !DILocation(line: 13, column: 9, scope: !191)
!205 = !DILocation(line: 13, column: 16, scope: !191)
!206 = !DILocalVariable(name: "src", scope: !191, file: !192, line: 14, type: !39)
!207 = !DILocation(line: 14, column: 15, scope: !191)
!208 = !DILocation(line: 14, column: 21, scope: !191)
!209 = !DILocation(line: 16, column: 3, scope: !191)
!210 = !DILocation(line: 16, column: 13, scope: !191)
!211 = !DILocation(line: 16, column: 16, scope: !191)
!212 = !DILocation(line: 17, column: 19, scope: !191)
!213 = !DILocation(line: 17, column: 15, scope: !191)
!214 = !DILocation(line: 17, column: 10, scope: !191)
!215 = !DILocation(line: 17, column: 13, scope: !191)
!216 = distinct !{!216, !209, !212, !217}
!217 = !{!"llvm.loop.mustprogress"}
!218 = !DILocation(line: 18, column: 10, scope: !191)
!219 = !DILocation(line: 18, column: 3, scope: !191)
!220 = distinct !DISubprogram(name: "memset", scope: !221, file: !221, line: 12, type: !222, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !61, retainedNodes: !74)
!221 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!222 = !DISubroutineType(types: !223)
!223 = !{!27, !27, !163, !81}
!224 = !DILocalVariable(name: "dst", arg: 1, scope: !220, file: !221, line: 12, type: !27)
!225 = !DILocation(line: 12, column: 20, scope: !220)
!226 = !DILocalVariable(name: "s", arg: 2, scope: !220, file: !221, line: 12, type: !163)
!227 = !DILocation(line: 12, column: 29, scope: !220)
!228 = !DILocalVariable(name: "count", arg: 3, scope: !220, file: !221, line: 12, type: !81)
!229 = !DILocation(line: 12, column: 39, scope: !220)
!230 = !DILocalVariable(name: "a", scope: !220, file: !221, line: 13, type: !28)
!231 = !DILocation(line: 13, column: 9, scope: !220)
!232 = !DILocation(line: 13, column: 13, scope: !220)
!233 = !DILocation(line: 14, column: 3, scope: !220)
!234 = !DILocation(line: 14, column: 15, scope: !220)
!235 = !DILocation(line: 14, column: 18, scope: !220)
!236 = !DILocation(line: 15, column: 12, scope: !220)
!237 = !DILocation(line: 15, column: 7, scope: !220)
!238 = !DILocation(line: 15, column: 10, scope: !220)
!239 = distinct !{!239, !233, !236, !217}
!240 = !DILocation(line: 16, column: 10, scope: !220)
!241 = !DILocation(line: 16, column: 3, scope: !220)

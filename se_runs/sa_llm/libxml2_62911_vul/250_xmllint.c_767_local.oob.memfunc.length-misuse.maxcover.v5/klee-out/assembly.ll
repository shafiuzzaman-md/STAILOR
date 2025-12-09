; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/250_xmllint.c_767_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/250_xmllint.c_767_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._xmlXPathObject = type { i32, %struct._xmlNodeSet*, i32, double, i8*, i8*, i32, i8*, i32 }
%struct._xmlNodeSet = type { i32, i32, %struct._xmlNode** }
%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i8*, i16, i16 }
%struct._xmlDoc = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, i32, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlNs*, i8*, i8*, i8*, i8*, i8*, i32, %struct._xmlDict*, i8*, i32, i32 }
%struct._xmlDtd = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._xmlDict = type opaque
%struct._xmlAttr = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlAttr*, %struct._xmlAttr*, %struct._xmlDoc*, %struct._xmlNs*, i32, i8* }
%struct._xmlNs = type { %struct._xmlNs*, i32, i8*, i8*, i8*, %struct._xmlDoc* }

@xmlXPathDebugDumpObject.line_read = internal global [501 x i8] zeroinitializer, align 16, !dbg !0
@.str = private unnamed_addr constant [8 x i8] c"XPATH> \00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_62911_vul/250_xmllint.c_767_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlXPathDebugDumpObject = private unnamed_addr constant [54 x i8] c"char *xmlXPathDebugDumpObject(xmlXPathObjectPtr, int)\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"input_buf\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlXPathDebugDumpObject(%struct._xmlXPathObject* noundef %0, i32 noundef %1) #0 !dbg !2 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._xmlXPathObject*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct._xmlXPathObject* %0, %struct._xmlXPathObject** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlXPathObject** %4, metadata !210, metadata !DIExpression()), !dbg !211
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !212, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.declare(metadata i8** %6, metadata !214, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.declare(metadata i64* %7, metadata !216, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.declare(metadata i8** %8, metadata !221, metadata !DIExpression()), !dbg !224
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %8, align 8, !dbg !224
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !225
  %10 = load i8*, i8** %8, align 8, !dbg !226
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %9, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* noundef %10), !dbg !227
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !228
  %13 = call i32 @fflush(%struct._IO_FILE* noundef %12), !dbg !229
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !230
  %15 = call i8* @fgets(i8* noundef getelementptr inbounds ([501 x i8], [501 x i8]* @xmlXPathDebugDumpObject.line_read, i64 0, i64 0), i32 noundef 500, %struct._IO_FILE* noundef %14), !dbg !232
  %16 = icmp ne i8* %15, null, !dbg !232
  br i1 %16, label %18, label %17, !dbg !233

17:                                               ; preds = %2
  store i8* null, i8** %3, align 8, !dbg !234
  br label %33, !dbg !234

18:                                               ; preds = %2
  store i8 0, i8* getelementptr inbounds ([501 x i8], [501 x i8]* @xmlXPathDebugDumpObject.line_read, i64 0, i64 500), align 4, !dbg !235
  %19 = call i64 @strlen(i8* noundef getelementptr inbounds ([501 x i8], [501 x i8]* @xmlXPathDebugDumpObject.line_read, i64 0, i64 0)) #8, !dbg !236
  store i64 %19, i64* %7, align 8, !dbg !237
  %20 = load i64, i64* %7, align 8, !dbg !238
  %21 = add i64 %20, 1, !dbg !239
  %22 = call noalias i8* @malloc(i64 noundef %21) #9, !dbg !240
  store i8* %22, i8** %6, align 8, !dbg !241
  %23 = load i8*, i8** %6, align 8, !dbg !242
  %24 = icmp ne i8* %23, null, !dbg !244
  br i1 %24, label %25, label %31, !dbg !245

25:                                               ; preds = %18
  %26 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.3, i64 0, i64 0), i32 noundef 25, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.xmlXPathDebugDumpObject, i64 0, i64 0)), !dbg !246
  %27 = load i8*, i8** %6, align 8, !dbg !248
  %28 = load i64, i64* %7, align 8, !dbg !249
  %29 = add i64 %28, 1, !dbg !250
  %30 = call i8* @memcpy(i8* %27, i8* getelementptr inbounds ([501 x i8], [501 x i8]* @xmlXPathDebugDumpObject.line_read, i64 0, i64 0), i64 %29), !dbg !251
  br label %31, !dbg !252

31:                                               ; preds = %25, %18
  %32 = load i8*, i8** %6, align 8, !dbg !253
  store i8* %32, i8** %3, align 8, !dbg !254
  br label %33, !dbg !254

33:                                               ; preds = %31, %17
  %34 = load i8*, i8** %3, align 8, !dbg !255
  ret i8* %34, !dbg !255
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

declare i32 @fflush(%struct._IO_FILE* noundef) #2

declare i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !256 {
  %1 = alloca i32, align 4
  %2 = alloca [501 x i8], align 16
  %3 = alloca %struct._IO_FILE*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [501 x i8]* %2, metadata !259, metadata !DIExpression()), !dbg !260
  %4 = getelementptr inbounds [501 x i8], [501 x i8]* %2, i64 0, i64 0, !dbg !261
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 501, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0)), !dbg !262
  %5 = getelementptr inbounds [501 x i8], [501 x i8]* %2, i64 0, i64 500, !dbg !263
  %6 = load i8, i8* %5, align 4, !dbg !263
  %7 = sext i8 %6 to i32, !dbg !263
  %8 = icmp eq i32 %7, 0, !dbg !264
  %9 = zext i1 %8 to i32, !dbg !264
  %10 = sext i32 %9 to i64, !dbg !263
  call void @klee_assume(i64 noundef %10), !dbg !265
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !266, metadata !DIExpression()), !dbg !322
  %11 = getelementptr inbounds [501 x i8], [501 x i8]* %2, i64 0, i64 0, !dbg !323
  %12 = call noalias %struct._IO_FILE* @fmemopen(i8* noundef %11, i64 noundef 501, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #9, !dbg !324
  store %struct._IO_FILE* %12, %struct._IO_FILE** %3, align 8, !dbg !322
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !325
  %14 = icmp ne %struct._IO_FILE* %13, null, !dbg !325
  br i1 %14, label %16, label %15, !dbg !327

15:                                               ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !328
  br label %21, !dbg !328

16:                                               ; preds = %0
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !329
  store %struct._IO_FILE* %17, %struct._IO_FILE** @stdin, align 8, !dbg !330
  %18 = call i8* @xmlXPathDebugDumpObject(%struct._xmlXPathObject* noundef null, i32 noundef 0), !dbg !331
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !332
  %20 = call i32 @fclose(%struct._IO_FILE* noundef %19), !dbg !333
  store i32 0, i32* %1, align 4, !dbg !334
  br label %21, !dbg !334

21:                                               ; preds = %16, %15
  %22 = load i32, i32* %1, align 4, !dbg !335
  ret i32 %22, !dbg !335
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fmemopen(i8* noundef, i64 noundef, i8* noundef) #4

declare i32 @fclose(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !336 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !342, metadata !DIExpression()), !dbg !343
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !344, metadata !DIExpression()), !dbg !345
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !346, metadata !DIExpression()), !dbg !347
  call void @llvm.dbg.declare(metadata i8** %7, metadata !348, metadata !DIExpression()), !dbg !349
  %9 = load i8*, i8** %4, align 8, !dbg !350
  store i8* %9, i8** %7, align 8, !dbg !349
  call void @llvm.dbg.declare(metadata i8** %8, metadata !351, metadata !DIExpression()), !dbg !352
  %10 = load i8*, i8** %5, align 8, !dbg !353
  store i8* %10, i8** %8, align 8, !dbg !352
  br label %11, !dbg !354

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !355
  %13 = add i64 %12, -1, !dbg !355
  store i64 %13, i64* %6, align 8, !dbg !355
  %14 = icmp ugt i64 %12, 0, !dbg !356
  br i1 %14, label %15, label %21, !dbg !354

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !357
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !357
  store i8* %17, i8** %8, align 8, !dbg !357
  %18 = load i8, i8* %16, align 1, !dbg !358
  %19 = load i8*, i8** %7, align 8, !dbg !359
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !359
  store i8* %20, i8** %7, align 8, !dbg !359
  store i8 %18, i8* %19, align 1, !dbg !360
  br label %11, !dbg !354, !llvm.loop !361

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !363
  ret i8* %22, !dbg !364
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!192, !200}
!llvm.module.flags = !{!202, !203, !204, !205, !206, !207, !208}
!llvm.ident = !{!209, !209}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "line_read", scope: !2, file: !3, line: 12, type: !197, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "xmlXPathDebugDumpObject", scope: !3, file: !3, line: 11, type: !4, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !192, retainedNodes: !196)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/250_xmllint.c_767_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "7638f54d6d376a0171a6da4608c469b0")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !8, !36}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObjectPtr", file: !9, line: 115, baseType: !10)
!9 = !DIFile(filename: "/usr/include/libxml2/libxml/xpath.h", directory: "", checksumkind: CSK_MD5, checksum: "cfaed99b28e3427ed83cde3f31c59a84")
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObject", file: !9, line: 114, baseType: !12)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathObject", file: !9, line: 116, size: 576, elements: !13)
!13 = !{!14, !29, !184, !185, !187, !188, !189, !190, !191}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !12, file: !9, line: 117, baseType: !15, size: 32)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObjectType", file: !9, line: 112, baseType: !16)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !9, line: 101, baseType: !17, size: 32, elements: !18)
!17 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!18 = !{!19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!19 = !DIEnumerator(name: "XPATH_UNDEFINED", value: 0)
!20 = !DIEnumerator(name: "XPATH_NODESET", value: 1)
!21 = !DIEnumerator(name: "XPATH_BOOLEAN", value: 2)
!22 = !DIEnumerator(name: "XPATH_NUMBER", value: 3)
!23 = !DIEnumerator(name: "XPATH_STRING", value: 4)
!24 = !DIEnumerator(name: "XPATH_POINT", value: 5)
!25 = !DIEnumerator(name: "XPATH_RANGE", value: 6)
!26 = !DIEnumerator(name: "XPATH_LOCATIONSET", value: 7)
!27 = !DIEnumerator(name: "XPATH_USERS", value: 8)
!28 = !DIEnumerator(name: "XPATH_XSLT_TREE", value: 9)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "nodesetval", scope: !12, file: !9, line: 118, baseType: !30, size: 64, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodeSetPtr", file: !9, line: 82, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodeSet", file: !9, line: 81, baseType: !33)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNodeSet", file: !9, line: 83, size: 128, elements: !34)
!34 = !{!35, !37, !38}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "nodeNr", scope: !33, file: !9, line: 84, baseType: !36, size: 32)
!36 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "nodeMax", scope: !33, file: !9, line: 85, baseType: !36, size: 32, offset: 32)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !33, file: !9, line: 86, baseType: !39, size: 64, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !41, line: 491, baseType: !42)
!41 = !DIFile(filename: "/usr/include/libxml2/libxml/tree.h", directory: "", checksumkind: CSK_MD5, checksum: "750bac4395c48684302094dba58dc4a1")
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !41, line: 490, baseType: !44)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !41, line: 492, size: 960, elements: !45)
!45 = !{!46, !48, !73, !79, !81, !82, !83, !84, !85, !145, !148, !150, !179, !180, !181, !183}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !44, file: !41, line: 493, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !44, file: !41, line: 494, baseType: !49, size: 32, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !41, line: 183, baseType: !50)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !41, line: 159, baseType: !17, size: 32, elements: !51)
!51 = !{!52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72}
!52 = !DIEnumerator(name: "XML_ELEMENT_NODE", value: 1)
!53 = !DIEnumerator(name: "XML_ATTRIBUTE_NODE", value: 2)
!54 = !DIEnumerator(name: "XML_TEXT_NODE", value: 3)
!55 = !DIEnumerator(name: "XML_CDATA_SECTION_NODE", value: 4)
!56 = !DIEnumerator(name: "XML_ENTITY_REF_NODE", value: 5)
!57 = !DIEnumerator(name: "XML_ENTITY_NODE", value: 6)
!58 = !DIEnumerator(name: "XML_PI_NODE", value: 7)
!59 = !DIEnumerator(name: "XML_COMMENT_NODE", value: 8)
!60 = !DIEnumerator(name: "XML_DOCUMENT_NODE", value: 9)
!61 = !DIEnumerator(name: "XML_DOCUMENT_TYPE_NODE", value: 10)
!62 = !DIEnumerator(name: "XML_DOCUMENT_FRAG_NODE", value: 11)
!63 = !DIEnumerator(name: "XML_NOTATION_NODE", value: 12)
!64 = !DIEnumerator(name: "XML_HTML_DOCUMENT_NODE", value: 13)
!65 = !DIEnumerator(name: "XML_DTD_NODE", value: 14)
!66 = !DIEnumerator(name: "XML_ELEMENT_DECL", value: 15)
!67 = !DIEnumerator(name: "XML_ATTRIBUTE_DECL", value: 16)
!68 = !DIEnumerator(name: "XML_ENTITY_DECL", value: 17)
!69 = !DIEnumerator(name: "XML_NAMESPACE_DECL", value: 18)
!70 = !DIEnumerator(name: "XML_XINCLUDE_START", value: 19)
!71 = !DIEnumerator(name: "XML_XINCLUDE_END", value: 20)
!72 = !DIEnumerator(name: "XML_DOCB_DOCUMENT_NODE", value: 21)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !44, file: !41, line: 495, baseType: !74, size: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !77, line: 28, baseType: !78)
!77 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!78 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !44, file: !41, line: 496, baseType: !80, size: 64, offset: 192)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !44, file: !41, line: 497, baseType: !80, size: 64, offset: 256)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !44, file: !41, line: 498, baseType: !80, size: 64, offset: 320)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !44, file: !41, line: 499, baseType: !80, size: 64, offset: 384)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !44, file: !41, line: 500, baseType: !80, size: 64, offset: 448)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !44, file: !41, line: 501, baseType: !86, size: 64, offset: 512)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !41, line: 559, size: 1408, elements: !88)
!88 = !{!89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !120, !121, !132, !133, !134, !135, !136, !137, !138, !142, !143, !144}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !87, file: !41, line: 560, baseType: !47, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !87, file: !41, line: 561, baseType: !49, size: 32, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !87, file: !41, line: 562, baseType: !6, size: 64, offset: 128)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !87, file: !41, line: 563, baseType: !80, size: 64, offset: 192)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !87, file: !41, line: 564, baseType: !80, size: 64, offset: 256)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !87, file: !41, line: 565, baseType: !80, size: 64, offset: 320)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !87, file: !41, line: 566, baseType: !80, size: 64, offset: 384)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !87, file: !41, line: 567, baseType: !80, size: 64, offset: 448)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !87, file: !41, line: 568, baseType: !86, size: 64, offset: 512)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !87, file: !41, line: 571, baseType: !36, size: 32, offset: 576)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !87, file: !41, line: 572, baseType: !36, size: 32, offset: 608)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !87, file: !41, line: 578, baseType: !101, size: 64, offset: 640)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !41, line: 405, size: 1024, elements: !103)
!103 = !{!104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !102, file: !41, line: 406, baseType: !47, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !102, file: !41, line: 407, baseType: !49, size: 32, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !102, file: !41, line: 408, baseType: !74, size: 64, offset: 128)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !102, file: !41, line: 409, baseType: !80, size: 64, offset: 192)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !102, file: !41, line: 410, baseType: !80, size: 64, offset: 256)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !102, file: !41, line: 411, baseType: !86, size: 64, offset: 320)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !102, file: !41, line: 412, baseType: !80, size: 64, offset: 384)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !102, file: !41, line: 413, baseType: !80, size: 64, offset: 448)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !102, file: !41, line: 414, baseType: !86, size: 64, offset: 512)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !102, file: !41, line: 417, baseType: !47, size: 64, offset: 576)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !102, file: !41, line: 418, baseType: !47, size: 64, offset: 640)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !102, file: !41, line: 419, baseType: !47, size: 64, offset: 704)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !102, file: !41, line: 420, baseType: !47, size: 64, offset: 768)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !102, file: !41, line: 421, baseType: !74, size: 64, offset: 832)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !102, file: !41, line: 422, baseType: !74, size: 64, offset: 896)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !102, file: !41, line: 423, baseType: !47, size: 64, offset: 960)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !87, file: !41, line: 579, baseType: !101, size: 64, offset: 704)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !87, file: !41, line: 580, baseType: !122, size: 64, offset: 768)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !41, line: 388, size: 384, elements: !124)
!124 = !{!125, !126, !128, !129, !130, !131}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !123, file: !41, line: 389, baseType: !122, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !123, file: !41, line: 390, baseType: !127, size: 32, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !41, line: 374, baseType: !49)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !123, file: !41, line: 391, baseType: !74, size: 64, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !123, file: !41, line: 392, baseType: !74, size: 64, offset: 192)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !123, file: !41, line: 393, baseType: !47, size: 64, offset: 256)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !123, file: !41, line: 394, baseType: !86, size: 64, offset: 320)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !87, file: !41, line: 581, baseType: !74, size: 64, offset: 832)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !87, file: !41, line: 582, baseType: !74, size: 64, offset: 896)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !87, file: !41, line: 583, baseType: !47, size: 64, offset: 960)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !87, file: !41, line: 584, baseType: !47, size: 64, offset: 1024)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !87, file: !41, line: 585, baseType: !74, size: 64, offset: 1088)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !87, file: !41, line: 586, baseType: !36, size: 32, offset: 1152)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !87, file: !41, line: 588, baseType: !139, size: 64, offset: 1216)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !141, line: 24, flags: DIFlagFwdDecl)
!141 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!142 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !87, file: !41, line: 589, baseType: !47, size: 64, offset: 1280)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !87, file: !41, line: 590, baseType: !36, size: 32, offset: 1344)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !87, file: !41, line: 592, baseType: !36, size: 32, offset: 1376)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !44, file: !41, line: 504, baseType: !146, size: 64, offset: 576)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !41, line: 386, baseType: !123)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !44, file: !41, line: 505, baseType: !149, size: 64, offset: 640)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !44, file: !41, line: 506, baseType: !151, size: 64, offset: 704)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !41, line: 433, size: 768, elements: !153)
!153 = !{!154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !178}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !152, file: !41, line: 434, baseType: !47, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !152, file: !41, line: 435, baseType: !49, size: 32, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !152, file: !41, line: 436, baseType: !74, size: 64, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !152, file: !41, line: 437, baseType: !80, size: 64, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !152, file: !41, line: 438, baseType: !80, size: 64, offset: 256)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !152, file: !41, line: 439, baseType: !80, size: 64, offset: 320)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !152, file: !41, line: 440, baseType: !151, size: 64, offset: 384)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !152, file: !41, line: 441, baseType: !151, size: 64, offset: 448)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !152, file: !41, line: 442, baseType: !86, size: 64, offset: 512)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !152, file: !41, line: 443, baseType: !146, size: 64, offset: 576)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !152, file: !41, line: 444, baseType: !165, size: 32, offset: 640)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !41, line: 217, baseType: !166)
!166 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !41, line: 206, baseType: !17, size: 32, elements: !167)
!167 = !{!168, !169, !170, !171, !172, !173, !174, !175, !176, !177}
!168 = !DIEnumerator(name: "XML_ATTRIBUTE_CDATA", value: 1)
!169 = !DIEnumerator(name: "XML_ATTRIBUTE_ID", value: 2)
!170 = !DIEnumerator(name: "XML_ATTRIBUTE_IDREF", value: 3)
!171 = !DIEnumerator(name: "XML_ATTRIBUTE_IDREFS", value: 4)
!172 = !DIEnumerator(name: "XML_ATTRIBUTE_ENTITY", value: 5)
!173 = !DIEnumerator(name: "XML_ATTRIBUTE_ENTITIES", value: 6)
!174 = !DIEnumerator(name: "XML_ATTRIBUTE_NMTOKEN", value: 7)
!175 = !DIEnumerator(name: "XML_ATTRIBUTE_NMTOKENS", value: 8)
!176 = !DIEnumerator(name: "XML_ATTRIBUTE_ENUMERATION", value: 9)
!177 = !DIEnumerator(name: "XML_ATTRIBUTE_NOTATION", value: 10)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !152, file: !41, line: 445, baseType: !47, size: 64, offset: 704)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !44, file: !41, line: 507, baseType: !146, size: 64, offset: 768)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !44, file: !41, line: 508, baseType: !47, size: 64, offset: 832)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !44, file: !41, line: 509, baseType: !182, size: 16, offset: 896)
!182 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !44, file: !41, line: 510, baseType: !182, size: 16, offset: 912)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "boolval", scope: !12, file: !9, line: 119, baseType: !36, size: 32, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "floatval", scope: !12, file: !9, line: 120, baseType: !186, size: 64, offset: 192)
!186 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "stringval", scope: !12, file: !9, line: 121, baseType: !149, size: 64, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !12, file: !9, line: 122, baseType: !47, size: 64, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !12, file: !9, line: 123, baseType: !36, size: 32, offset: 384)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "user2", scope: !12, file: !9, line: 124, baseType: !47, size: 64, offset: 448)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "index2", scope: !12, file: !9, line: 125, baseType: !36, size: 32, offset: 512)
!192 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !193, retainedTypes: !194, globals: !195, splitDebugInlining: false, nameTableKind: None)
!193 = !{!16, !50, !166}
!194 = !{!6, !47}
!195 = !{!0}
!196 = !{}
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 4008, elements: !198)
!198 = !{!199}
!199 = !DISubrange(count: 501)
!200 = distinct !DICompileUnit(language: DW_LANG_C99, file: !201, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!201 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!202 = !{i32 7, !"Dwarf Version", i32 5}
!203 = !{i32 2, !"Debug Info Version", i32 3}
!204 = !{i32 1, !"wchar_size", i32 4}
!205 = !{i32 7, !"PIC Level", i32 2}
!206 = !{i32 7, !"PIE Level", i32 2}
!207 = !{i32 7, !"uwtable", i32 1}
!208 = !{i32 7, !"frame-pointer", i32 2}
!209 = !{!"Ubuntu clang version 14.0.6"}
!210 = !DILocalVariable(name: "cur", arg: 1, scope: !2, file: !3, line: 11, type: !8)
!211 = !DILocation(line: 11, column: 49, scope: !2)
!212 = !DILocalVariable(name: "depth", arg: 2, scope: !2, file: !3, line: 11, type: !36)
!213 = !DILocation(line: 11, column: 58, scope: !2)
!214 = !DILocalVariable(name: "ret", scope: !2, file: !3, line: 13, type: !6)
!215 = !DILocation(line: 13, column: 11, scope: !2)
!216 = !DILocalVariable(name: "len", scope: !2, file: !3, line: 14, type: !217)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !218, line: 46, baseType: !219)
!218 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!219 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!220 = !DILocation(line: 14, column: 12, scope: !2)
!221 = !DILocalVariable(name: "prompt", scope: !2, file: !3, line: 15, type: !222)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!224 = !DILocation(line: 15, column: 17, scope: !2)
!225 = !DILocation(line: 17, column: 13, scope: !2)
!226 = !DILocation(line: 17, column: 27, scope: !2)
!227 = !DILocation(line: 17, column: 5, scope: !2)
!228 = !DILocation(line: 18, column: 12, scope: !2)
!229 = !DILocation(line: 18, column: 5, scope: !2)
!230 = !DILocation(line: 19, column: 32, scope: !231)
!231 = distinct !DILexicalBlock(scope: !2, file: !3, line: 19, column: 9)
!232 = !DILocation(line: 19, column: 10, scope: !231)
!233 = !DILocation(line: 19, column: 9, scope: !2)
!234 = !DILocation(line: 20, column: 9, scope: !231)
!235 = !DILocation(line: 21, column: 20, scope: !2)
!236 = !DILocation(line: 22, column: 11, scope: !2)
!237 = !DILocation(line: 22, column: 9, scope: !2)
!238 = !DILocation(line: 23, column: 27, scope: !2)
!239 = !DILocation(line: 23, column: 31, scope: !2)
!240 = !DILocation(line: 23, column: 20, scope: !2)
!241 = !DILocation(line: 23, column: 9, scope: !2)
!242 = !DILocation(line: 24, column: 9, scope: !243)
!243 = distinct !DILexicalBlock(scope: !2, file: !3, line: 24, column: 9)
!244 = !DILocation(line: 24, column: 13, scope: !243)
!245 = !DILocation(line: 24, column: 9, scope: !2)
!246 = !DILocation(line: 25, column: 9, scope: !247)
!247 = distinct !DILexicalBlock(scope: !243, file: !3, line: 24, column: 22)
!248 = !DILocation(line: 26, column: 17, scope: !247)
!249 = !DILocation(line: 26, column: 33, scope: !247)
!250 = !DILocation(line: 26, column: 37, scope: !247)
!251 = !DILocation(line: 26, column: 9, scope: !247)
!252 = !DILocation(line: 27, column: 5, scope: !247)
!253 = !DILocation(line: 28, column: 12, scope: !2)
!254 = !DILocation(line: 28, column: 5, scope: !2)
!255 = !DILocation(line: 31, column: 1, scope: !2)
!256 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 33, type: !257, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !192, retainedNodes: !196)
!257 = !DISubroutineType(types: !258)
!258 = !{!36}
!259 = !DILocalVariable(name: "input_buf", scope: !256, file: !3, line: 34, type: !197)
!260 = !DILocation(line: 34, column: 10, scope: !256)
!261 = !DILocation(line: 35, column: 24, scope: !256)
!262 = !DILocation(line: 35, column: 5, scope: !256)
!263 = !DILocation(line: 36, column: 17, scope: !256)
!264 = !DILocation(line: 36, column: 32, scope: !256)
!265 = !DILocation(line: 36, column: 5, scope: !256)
!266 = !DILocalVariable(name: "fake_stdin", scope: !256, file: !3, line: 37, type: !267)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !269, line: 7, baseType: !270)
!269 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !271, line: 49, size: 1728, elements: !272)
!271 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "7a6d4a00a37ee6b9a40cd04bd01f5d00")
!272 = !{!273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !288, !290, !291, !292, !296, !297, !299, !303, !306, !308, !311, !314, !315, !316, !317, !318}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !270, file: !271, line: 51, baseType: !36, size: 32)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !270, file: !271, line: 54, baseType: !6, size: 64, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !270, file: !271, line: 55, baseType: !6, size: 64, offset: 128)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !270, file: !271, line: 56, baseType: !6, size: 64, offset: 192)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !270, file: !271, line: 57, baseType: !6, size: 64, offset: 256)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !270, file: !271, line: 58, baseType: !6, size: 64, offset: 320)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !270, file: !271, line: 59, baseType: !6, size: 64, offset: 384)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !270, file: !271, line: 60, baseType: !6, size: 64, offset: 448)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !270, file: !271, line: 61, baseType: !6, size: 64, offset: 512)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !270, file: !271, line: 64, baseType: !6, size: 64, offset: 576)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !270, file: !271, line: 65, baseType: !6, size: 64, offset: 640)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !270, file: !271, line: 66, baseType: !6, size: 64, offset: 704)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !270, file: !271, line: 68, baseType: !286, size: 64, offset: 768)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !271, line: 36, flags: DIFlagFwdDecl)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !270, file: !271, line: 70, baseType: !289, size: 64, offset: 832)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !270, file: !271, line: 72, baseType: !36, size: 32, offset: 896)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !270, file: !271, line: 73, baseType: !36, size: 32, offset: 928)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !270, file: !271, line: 74, baseType: !293, size: 64, offset: 960)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !294, line: 152, baseType: !295)
!294 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!295 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !270, file: !271, line: 77, baseType: !182, size: 16, offset: 1024)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !270, file: !271, line: 78, baseType: !298, size: 8, offset: 1040)
!298 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !270, file: !271, line: 79, baseType: !300, size: 8, offset: 1048)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, elements: !301)
!301 = !{!302}
!302 = !DISubrange(count: 1)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !270, file: !271, line: 81, baseType: !304, size: 64, offset: 1088)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !271, line: 43, baseType: null)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !270, file: !271, line: 89, baseType: !307, size: 64, offset: 1152)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !294, line: 153, baseType: !295)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !270, file: !271, line: 91, baseType: !309, size: 64, offset: 1216)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !271, line: 37, flags: DIFlagFwdDecl)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !270, file: !271, line: 92, baseType: !312, size: 64, offset: 1280)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !271, line: 38, flags: DIFlagFwdDecl)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !270, file: !271, line: 93, baseType: !289, size: 64, offset: 1344)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !270, file: !271, line: 94, baseType: !47, size: 64, offset: 1408)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !270, file: !271, line: 95, baseType: !217, size: 64, offset: 1472)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !270, file: !271, line: 96, baseType: !36, size: 32, offset: 1536)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !270, file: !271, line: 98, baseType: !319, size: 160, offset: 1568)
!319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !320)
!320 = !{!321}
!321 = !DISubrange(count: 20)
!322 = !DILocation(line: 37, column: 11, scope: !256)
!323 = !DILocation(line: 37, column: 33, scope: !256)
!324 = !DILocation(line: 37, column: 24, scope: !256)
!325 = !DILocation(line: 38, column: 10, scope: !326)
!326 = distinct !DILexicalBlock(scope: !256, file: !3, line: 38, column: 9)
!327 = !DILocation(line: 38, column: 9, scope: !256)
!328 = !DILocation(line: 38, column: 22, scope: !326)
!329 = !DILocation(line: 39, column: 13, scope: !256)
!330 = !DILocation(line: 39, column: 11, scope: !256)
!331 = !DILocation(line: 40, column: 5, scope: !256)
!332 = !DILocation(line: 41, column: 12, scope: !256)
!333 = !DILocation(line: 41, column: 5, scope: !256)
!334 = !DILocation(line: 42, column: 5, scope: !256)
!335 = !DILocation(line: 43, column: 1, scope: !256)
!336 = distinct !DISubprogram(name: "memcpy", scope: !337, file: !337, line: 12, type: !338, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !200, retainedNodes: !196)
!337 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!338 = !DISubroutineType(types: !339)
!339 = !{!47, !47, !340, !217}
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!342 = !DILocalVariable(name: "destaddr", arg: 1, scope: !336, file: !337, line: 12, type: !47)
!343 = !DILocation(line: 12, column: 20, scope: !336)
!344 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !336, file: !337, line: 12, type: !340)
!345 = !DILocation(line: 12, column: 42, scope: !336)
!346 = !DILocalVariable(name: "len", arg: 3, scope: !336, file: !337, line: 12, type: !217)
!347 = !DILocation(line: 12, column: 58, scope: !336)
!348 = !DILocalVariable(name: "dest", scope: !336, file: !337, line: 13, type: !6)
!349 = !DILocation(line: 13, column: 9, scope: !336)
!350 = !DILocation(line: 13, column: 16, scope: !336)
!351 = !DILocalVariable(name: "src", scope: !336, file: !337, line: 14, type: !222)
!352 = !DILocation(line: 14, column: 15, scope: !336)
!353 = !DILocation(line: 14, column: 21, scope: !336)
!354 = !DILocation(line: 16, column: 3, scope: !336)
!355 = !DILocation(line: 16, column: 13, scope: !336)
!356 = !DILocation(line: 16, column: 16, scope: !336)
!357 = !DILocation(line: 17, column: 19, scope: !336)
!358 = !DILocation(line: 17, column: 15, scope: !336)
!359 = !DILocation(line: 17, column: 10, scope: !336)
!360 = !DILocation(line: 17, column: 13, scope: !336)
!361 = distinct !{!361, !354, !357, !362}
!362 = !{!"llvm.loop.mustprogress"}
!363 = !DILocation(line: 18, column: 10, scope: !336)
!364 = !DILocation(line: 18, column: 3, scope: !336)

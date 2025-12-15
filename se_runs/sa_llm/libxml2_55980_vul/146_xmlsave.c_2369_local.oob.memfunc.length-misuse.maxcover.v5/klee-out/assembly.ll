; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/146_xmlsave.c_2369_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/146_xmlsave.c_2369_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlOutputBuffer = type { i8*, i32 }
%struct._xmlCharEncodingHandler = type opaque
%struct._xmlSaveCtxt = type { %struct._xmlOutputBuffer*, i32, i32, i8*, i32 }
%struct._xmlDoc = type opaque

@.str = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"creating buffer\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_55980_vul/146_xmlsave.c_2369_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.target_function = private unnamed_addr constant [78 x i8] c"void target_function(xmlCharEncodingHandlerPtr, int, const char *, xmlDocPtr)\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"conv_hdlr\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"txt_encoding\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"out_doc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlOutputBuffer* @xmlAllocOutputBuffer(%struct._xmlCharEncodingHandler* noundef %0) #0 !dbg !18 {
  %2 = alloca %struct._xmlCharEncodingHandler*, align 8
  %3 = alloca %struct._xmlOutputBuffer*, align 8
  store %struct._xmlCharEncodingHandler* %0, %struct._xmlCharEncodingHandler** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlCharEncodingHandler** %2, metadata !34, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.declare(metadata %struct._xmlOutputBuffer** %3, metadata !36, metadata !DIExpression()), !dbg !37
  %4 = bitcast %struct._xmlOutputBuffer** %3 to i8*, !dbg !38
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !39
  %5 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %3, align 8, !dbg !40
  %6 = icmp ne %struct._xmlOutputBuffer* %5, null, !dbg !41
  %7 = zext i1 %6 to i32, !dbg !41
  %8 = sext i32 %7 to i64, !dbg !40
  call void @klee_assume(i64 noundef %8), !dbg !42
  %9 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %3, align 8, !dbg !43
  ret %struct._xmlOutputBuffer* %9, !dbg !44
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSaveErrMemory(i8* noundef %0) #0 !dbg !45 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !51, metadata !DIExpression()), !dbg !52
  ret void, !dbg !53
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSaveCtxtInit(%struct._xmlSaveCtxt* noundef %0) #0 !dbg !54 {
  %2 = alloca %struct._xmlSaveCtxt*, align 8
  store %struct._xmlSaveCtxt* %0, %struct._xmlSaveCtxt** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSaveCtxt** %2, metadata !66, metadata !DIExpression()), !dbg !67
  %3 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !68
  %4 = icmp ne %struct._xmlSaveCtxt* %3, null, !dbg !68
  br i1 %4, label %5, label %8, !dbg !70

5:                                                ; preds = %1
  %6 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !71
  %7 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %6, i32 0, i32 4, !dbg !73
  store i32 0, i32* %7, align 8, !dbg !74
  br label %8, !dbg !75

8:                                                ; preds = %5, %1
  ret void, !dbg !76
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlDocContentDumpOutput(%struct._xmlSaveCtxt* noundef %0, %struct._xmlDoc* noundef %1) #0 !dbg !77 {
  %3 = alloca %struct._xmlSaveCtxt*, align 8
  %4 = alloca %struct._xmlDoc*, align 8
  store %struct._xmlSaveCtxt* %0, %struct._xmlSaveCtxt** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSaveCtxt** %3, metadata !84, metadata !DIExpression()), !dbg !85
  store %struct._xmlDoc* %1, %struct._xmlDoc** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %4, metadata !86, metadata !DIExpression()), !dbg !87
  ret void, !dbg !88
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlOutputBufferFlush(%struct._xmlOutputBuffer* noundef %0) #0 !dbg !89 {
  %2 = alloca %struct._xmlOutputBuffer*, align 8
  store %struct._xmlOutputBuffer* %0, %struct._xmlOutputBuffer** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlOutputBuffer** %2, metadata !92, metadata !DIExpression()), !dbg !93
  ret void, !dbg !94
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @target_function(%struct._xmlCharEncodingHandler* noundef %0, i32 noundef %1, i8* noundef %2, %struct._xmlDoc* noundef %3) #0 !dbg !95 {
  %5 = alloca %struct._xmlCharEncodingHandler*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct._xmlDoc*, align 8
  %9 = alloca %struct._xmlOutputBuffer*, align 8
  %10 = alloca %struct._xmlSaveCtxt, align 8
  store %struct._xmlCharEncodingHandler* %0, %struct._xmlCharEncodingHandler** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlCharEncodingHandler** %5, metadata !98, metadata !DIExpression()), !dbg !99
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !100, metadata !DIExpression()), !dbg !101
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !102, metadata !DIExpression()), !dbg !103
  store %struct._xmlDoc* %3, %struct._xmlDoc** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %8, metadata !104, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata %struct._xmlOutputBuffer** %9, metadata !106, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.declare(metadata %struct._xmlSaveCtxt* %10, metadata !108, metadata !DIExpression()), !dbg !109
  %11 = load %struct._xmlCharEncodingHandler*, %struct._xmlCharEncodingHandler** %5, align 8, !dbg !110
  %12 = call %struct._xmlOutputBuffer* @xmlAllocOutputBuffer(%struct._xmlCharEncodingHandler* noundef %11), !dbg !112
  store %struct._xmlOutputBuffer* %12, %struct._xmlOutputBuffer** %9, align 8, !dbg !113
  %13 = icmp eq %struct._xmlOutputBuffer* %12, null, !dbg !114
  br i1 %13, label %14, label %15, !dbg !115

14:                                               ; preds = %4
  call void @xmlSaveErrMemory(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)), !dbg !116
  br label %34, !dbg !118

15:                                               ; preds = %4
  %16 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.3, i64 0, i64 0), i32 noundef 82, i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !119
  %17 = bitcast %struct._xmlSaveCtxt* %10 to i8*, !dbg !120
  %18 = call i8* @memset(i8* %17, i32 0, i64 32), !dbg !120
  %19 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %9, align 8, !dbg !121
  %20 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %10, i32 0, i32 0, !dbg !122
  store %struct._xmlOutputBuffer* %19, %struct._xmlOutputBuffer** %20, align 8, !dbg !123
  %21 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %10, i32 0, i32 1, !dbg !124
  store i32 0, i32* %21, align 8, !dbg !125
  %22 = load i32, i32* %6, align 4, !dbg !126
  %23 = icmp ne i32 %22, 0, !dbg !126
  %24 = zext i1 %23 to i64, !dbg !126
  %25 = select i1 %23, i32 1, i32 0, !dbg !126
  %26 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %10, i32 0, i32 2, !dbg !127
  store i32 %25, i32* %26, align 4, !dbg !128
  %27 = load i8*, i8** %7, align 8, !dbg !129
  %28 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %10, i32 0, i32 3, !dbg !130
  store i8* %27, i8** %28, align 8, !dbg !131
  call void @xmlSaveCtxtInit(%struct._xmlSaveCtxt* noundef %10), !dbg !132
  %29 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %10, i32 0, i32 4, !dbg !133
  %30 = load i32, i32* %29, align 8, !dbg !134
  %31 = or i32 %30, 1, !dbg !134
  store i32 %31, i32* %29, align 8, !dbg !134
  %32 = load %struct._xmlDoc*, %struct._xmlDoc** %8, align 8, !dbg !135
  call void @xmlDocContentDumpOutput(%struct._xmlSaveCtxt* noundef %10, %struct._xmlDoc* noundef %32), !dbg !136
  %33 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %9, align 8, !dbg !137
  call void @xmlOutputBufferFlush(%struct._xmlOutputBuffer* noundef %33), !dbg !138
  br label %34, !dbg !139

34:                                               ; preds = %15, %14
  ret void, !dbg !139
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !140 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlCharEncodingHandler*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [32 x i8], align 16
  %5 = alloca %struct._xmlDoc*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlCharEncodingHandler** %2, metadata !143, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.declare(metadata i32* %3, metadata !145, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.declare(metadata [32 x i8]* %4, metadata !147, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %5, metadata !152, metadata !DIExpression()), !dbg !153
  %6 = bitcast %struct._xmlCharEncodingHandler** %2 to i8*, !dbg !154
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 8, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0)), !dbg !155
  %7 = bitcast i32* %3 to i8*, !dbg !156
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)), !dbg !157
  %8 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0, !dbg !158
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 32, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0)), !dbg !159
  %9 = bitcast %struct._xmlDoc** %5 to i8*, !dbg !160
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)), !dbg !161
  %10 = load %struct._xmlCharEncodingHandler*, %struct._xmlCharEncodingHandler** %2, align 8, !dbg !162
  %11 = icmp ne %struct._xmlCharEncodingHandler* %10, null, !dbg !163
  %12 = zext i1 %11 to i32, !dbg !163
  %13 = sext i32 %12 to i64, !dbg !162
  call void @klee_assume(i64 noundef %13), !dbg !164
  %14 = load %struct._xmlDoc*, %struct._xmlDoc** %5, align 8, !dbg !165
  %15 = icmp ne %struct._xmlDoc* %14, null, !dbg !166
  %16 = zext i1 %15 to i32, !dbg !166
  %17 = sext i32 %16 to i64, !dbg !165
  call void @klee_assume(i64 noundef %17), !dbg !167
  %18 = load %struct._xmlCharEncodingHandler*, %struct._xmlCharEncodingHandler** %2, align 8, !dbg !168
  %19 = load i32, i32* %3, align 4, !dbg !169
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0, !dbg !170
  %21 = load %struct._xmlDoc*, %struct._xmlDoc** %5, align 8, !dbg !171
  call void @target_function(%struct._xmlCharEncodingHandler* noundef %18, i32 noundef %19, i8* noundef %20, %struct._xmlDoc* noundef %21), !dbg !172
  ret i32 0, !dbg !173
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #5 !dbg !174 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !181, metadata !DIExpression()), !dbg !182
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !183, metadata !DIExpression()), !dbg !184
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !185, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.declare(metadata i8** %7, metadata !187, metadata !DIExpression()), !dbg !189
  %8 = load i8*, i8** %4, align 8, !dbg !190
  store i8* %8, i8** %7, align 8, !dbg !189
  br label %9, !dbg !191

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !192
  %11 = add i64 %10, -1, !dbg !192
  store i64 %11, i64* %6, align 8, !dbg !192
  %12 = icmp ugt i64 %10, 0, !dbg !193
  br i1 %12, label %13, label %18, !dbg !191

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !194
  %15 = trunc i32 %14 to i8, !dbg !194
  %16 = load i8*, i8** %7, align 8, !dbg !195
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !195
  store i8* %17, i8** %7, align 8, !dbg !195
  store i8 %15, i8* %16, align 1, !dbg !196
  br label %9, !dbg !191, !llvm.loop !197

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !199
  ret i8* %19, !dbg !200
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17, !17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/146_xmlsave.c_2369_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "907a9acf58f9b41d55a9470914198567")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !1, line: 17, baseType: !7)
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = distinct !DICompileUnit(language: DW_LANG_C99, file: !9, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!9 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!10 = !{i32 7, !"Dwarf Version", i32 5}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{i32 7, !"PIC Level", i32 2}
!14 = !{i32 7, !"PIE Level", i32 2}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"Ubuntu clang version 14.0.6"}
!18 = distinct !DISubprogram(name: "xmlAllocOutputBuffer", scope: !1, file: !1, line: 34, type: !19, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!19 = !DISubroutineType(types: !20)
!20 = !{!21, !29}
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlOutputBufferPtr", file: !1, line: 11, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlOutputBuffer", file: !1, line: 10, baseType: !24)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlOutputBuffer", file: !1, line: 20, size: 128, elements: !25)
!25 = !{!26, !27}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !24, file: !1, line: 21, baseType: !3, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "written", scope: !24, file: !1, line: 22, baseType: !28, size: 32, offset: 64)
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingHandlerPtr", file: !1, line: 13, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingHandler", file: !1, line: 12, baseType: !32)
!32 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlCharEncodingHandler", file: !1, line: 12, flags: DIFlagFwdDecl)
!33 = !{}
!34 = !DILocalVariable(name: "handler", arg: 1, scope: !18, file: !1, line: 34, type: !29)
!35 = !DILocation(line: 34, column: 67, scope: !18)
!36 = !DILocalVariable(name: "buf", scope: !18, file: !1, line: 35, type: !21)
!37 = !DILocation(line: 35, column: 24, scope: !18)
!38 = !DILocation(line: 36, column: 24, scope: !18)
!39 = !DILocation(line: 36, column: 5, scope: !18)
!40 = !DILocation(line: 38, column: 17, scope: !18)
!41 = !DILocation(line: 38, column: 21, scope: !18)
!42 = !DILocation(line: 38, column: 5, scope: !18)
!43 = !DILocation(line: 39, column: 12, scope: !18)
!44 = !DILocation(line: 39, column: 5, scope: !18)
!45 = distinct !DISubprogram(name: "xmlSaveErrMemory", scope: !1, file: !1, line: 42, type: !46, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !48}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!50 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!51 = !DILocalVariable(name: "msg", arg: 1, scope: !45, file: !1, line: 42, type: !48)
!52 = !DILocation(line: 42, column: 35, scope: !45)
!53 = !DILocation(line: 44, column: 1, scope: !45)
!54 = distinct !DISubprogram(name: "xmlSaveCtxtInit", scope: !1, file: !1, line: 46, type: !55, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!55 = !DISubroutineType(types: !56)
!56 = !{null, !57}
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSaveCtxt", file: !1, line: 16, baseType: !59)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSaveCtxt", file: !1, line: 25, size: 256, elements: !60)
!60 = !{!61, !62, !63, !64, !65}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !59, file: !1, line: 26, baseType: !21, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !59, file: !1, line: 27, baseType: !28, size: 32, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !59, file: !1, line: 28, baseType: !28, size: 32, offset: 96)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !59, file: !1, line: 29, baseType: !4, size: 64, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !59, file: !1, line: 30, baseType: !28, size: 32, offset: 192)
!66 = !DILocalVariable(name: "ctxt", arg: 1, scope: !54, file: !1, line: 46, type: !57)
!67 = !DILocation(line: 46, column: 35, scope: !54)
!68 = !DILocation(line: 48, column: 9, scope: !69)
!69 = distinct !DILexicalBlock(scope: !54, file: !1, line: 48, column: 9)
!70 = !DILocation(line: 48, column: 9, scope: !54)
!71 = !DILocation(line: 49, column: 9, scope: !72)
!72 = distinct !DILexicalBlock(scope: !69, file: !1, line: 48, column: 15)
!73 = !DILocation(line: 49, column: 15, scope: !72)
!74 = !DILocation(line: 49, column: 23, scope: !72)
!75 = !DILocation(line: 50, column: 5, scope: !72)
!76 = !DILocation(line: 51, column: 1, scope: !54)
!77 = distinct !DISubprogram(name: "xmlDocContentDumpOutput", scope: !1, file: !1, line: 53, type: !78, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!78 = !DISubroutineType(types: !79)
!79 = !{null, !57, !80}
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !1, line: 15, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !1, line: 14, baseType: !83)
!83 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !1, line: 14, flags: DIFlagFwdDecl)
!84 = !DILocalVariable(name: "ctxt", arg: 1, scope: !77, file: !1, line: 53, type: !57)
!85 = !DILocation(line: 53, column: 43, scope: !77)
!86 = !DILocalVariable(name: "doc", arg: 2, scope: !77, file: !1, line: 53, type: !80)
!87 = !DILocation(line: 53, column: 59, scope: !77)
!88 = !DILocation(line: 55, column: 1, scope: !77)
!89 = distinct !DISubprogram(name: "xmlOutputBufferFlush", scope: !1, file: !1, line: 57, type: !90, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!90 = !DISubroutineType(types: !91)
!91 = !{null, !21}
!92 = !DILocalVariable(name: "out_buff", arg: 1, scope: !89, file: !1, line: 57, type: !21)
!93 = !DILocation(line: 57, column: 46, scope: !89)
!94 = !DILocation(line: 59, column: 1, scope: !89)
!95 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 62, type: !96, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!96 = !DISubroutineType(types: !97)
!97 = !{null, !29, !28, !48, !80}
!98 = !DILocalVariable(name: "conv_hdlr", arg: 1, scope: !95, file: !1, line: 62, type: !29)
!99 = !DILocation(line: 62, column: 48, scope: !95)
!100 = !DILocalVariable(name: "format", arg: 2, scope: !95, file: !1, line: 62, type: !28)
!101 = !DILocation(line: 62, column: 63, scope: !95)
!102 = !DILocalVariable(name: "txt_encoding", arg: 3, scope: !95, file: !1, line: 62, type: !48)
!103 = !DILocation(line: 62, column: 83, scope: !95)
!104 = !DILocalVariable(name: "out_doc", arg: 4, scope: !95, file: !1, line: 62, type: !80)
!105 = !DILocation(line: 62, column: 107, scope: !95)
!106 = !DILocalVariable(name: "out_buff", scope: !95, file: !1, line: 63, type: !21)
!107 = !DILocation(line: 63, column: 24, scope: !95)
!108 = !DILocalVariable(name: "ctxt", scope: !95, file: !1, line: 64, type: !58)
!109 = !DILocation(line: 64, column: 17, scope: !95)
!110 = !DILocation(line: 66, column: 42, scope: !111)
!111 = distinct !DILexicalBlock(scope: !95, file: !1, line: 66, column: 9)
!112 = !DILocation(line: 66, column: 21, scope: !111)
!113 = !DILocation(line: 66, column: 19, scope: !111)
!114 = !DILocation(line: 66, column: 54, scope: !111)
!115 = !DILocation(line: 66, column: 9, scope: !95)
!116 = !DILocation(line: 67, column: 9, scope: !117)
!117 = distinct !DILexicalBlock(scope: !111, file: !1, line: 66, column: 63)
!118 = !DILocation(line: 68, column: 9, scope: !117)
!119 = !DILocation(line: 82, column: 5, scope: !95)
!120 = !DILocation(line: 84, column: 5, scope: !95)
!121 = !DILocation(line: 85, column: 16, scope: !95)
!122 = !DILocation(line: 85, column: 10, scope: !95)
!123 = !DILocation(line: 85, column: 14, scope: !95)
!124 = !DILocation(line: 86, column: 10, scope: !95)
!125 = !DILocation(line: 86, column: 16, scope: !95)
!126 = !DILocation(line: 87, column: 19, scope: !95)
!127 = !DILocation(line: 87, column: 10, scope: !95)
!128 = !DILocation(line: 87, column: 17, scope: !95)
!129 = !DILocation(line: 88, column: 39, scope: !95)
!130 = !DILocation(line: 88, column: 10, scope: !95)
!131 = !DILocation(line: 88, column: 19, scope: !95)
!132 = !DILocation(line: 89, column: 5, scope: !95)
!133 = !DILocation(line: 90, column: 10, scope: !95)
!134 = !DILocation(line: 90, column: 18, scope: !95)
!135 = !DILocation(line: 91, column: 36, scope: !95)
!136 = !DILocation(line: 91, column: 5, scope: !95)
!137 = !DILocation(line: 92, column: 26, scope: !95)
!138 = !DILocation(line: 92, column: 5, scope: !95)
!139 = !DILocation(line: 93, column: 1, scope: !95)
!140 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 95, type: !141, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!141 = !DISubroutineType(types: !142)
!142 = !{!28}
!143 = !DILocalVariable(name: "conv_hdlr", scope: !140, file: !1, line: 97, type: !29)
!144 = !DILocation(line: 97, column: 31, scope: !140)
!145 = !DILocalVariable(name: "format", scope: !140, file: !1, line: 98, type: !28)
!146 = !DILocation(line: 98, column: 9, scope: !140)
!147 = !DILocalVariable(name: "txt_encoding", scope: !140, file: !1, line: 99, type: !148)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 256, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 32)
!151 = !DILocation(line: 99, column: 10, scope: !140)
!152 = !DILocalVariable(name: "out_doc", scope: !140, file: !1, line: 100, type: !80)
!153 = !DILocation(line: 100, column: 15, scope: !140)
!154 = !DILocation(line: 102, column: 24, scope: !140)
!155 = !DILocation(line: 102, column: 5, scope: !140)
!156 = !DILocation(line: 103, column: 24, scope: !140)
!157 = !DILocation(line: 103, column: 5, scope: !140)
!158 = !DILocation(line: 104, column: 24, scope: !140)
!159 = !DILocation(line: 104, column: 5, scope: !140)
!160 = !DILocation(line: 105, column: 24, scope: !140)
!161 = !DILocation(line: 105, column: 5, scope: !140)
!162 = !DILocation(line: 108, column: 17, scope: !140)
!163 = !DILocation(line: 108, column: 27, scope: !140)
!164 = !DILocation(line: 108, column: 5, scope: !140)
!165 = !DILocation(line: 109, column: 17, scope: !140)
!166 = !DILocation(line: 109, column: 25, scope: !140)
!167 = !DILocation(line: 109, column: 5, scope: !140)
!168 = !DILocation(line: 112, column: 21, scope: !140)
!169 = !DILocation(line: 112, column: 32, scope: !140)
!170 = !DILocation(line: 112, column: 40, scope: !140)
!171 = !DILocation(line: 112, column: 54, scope: !140)
!172 = !DILocation(line: 112, column: 5, scope: !140)
!173 = !DILocation(line: 114, column: 5, scope: !140)
!174 = distinct !DISubprogram(name: "memset", scope: !175, file: !175, line: 12, type: !176, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !33)
!175 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!176 = !DISubroutineType(types: !177)
!177 = !{!3, !3, !28, !178}
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !179, line: 46, baseType: !180)
!179 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!180 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!181 = !DILocalVariable(name: "dst", arg: 1, scope: !174, file: !175, line: 12, type: !3)
!182 = !DILocation(line: 12, column: 20, scope: !174)
!183 = !DILocalVariable(name: "s", arg: 2, scope: !174, file: !175, line: 12, type: !28)
!184 = !DILocation(line: 12, column: 29, scope: !174)
!185 = !DILocalVariable(name: "count", arg: 3, scope: !174, file: !175, line: 12, type: !178)
!186 = !DILocation(line: 12, column: 39, scope: !174)
!187 = !DILocalVariable(name: "a", scope: !174, file: !175, line: 13, type: !188)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!189 = !DILocation(line: 13, column: 9, scope: !174)
!190 = !DILocation(line: 13, column: 13, scope: !174)
!191 = !DILocation(line: 14, column: 3, scope: !174)
!192 = !DILocation(line: 14, column: 15, scope: !174)
!193 = !DILocation(line: 14, column: 18, scope: !174)
!194 = !DILocation(line: 15, column: 12, scope: !174)
!195 = !DILocation(line: 15, column: 7, scope: !174)
!196 = !DILocation(line: 15, column: 10, scope: !174)
!197 = distinct !{!197, !191, !194, !198}
!198 = !{!"llvm.loop.mustprogress"}
!199 = !DILocation(line: 16, column: 10, scope: !174)
!200 = !DILocation(line: 16, column: 3, scope: !174)

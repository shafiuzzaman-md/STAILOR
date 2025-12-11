; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/185_xmlsave.c_2610_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/185_xmlsave.c_2610_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlOutputBuffer = type { i8*, i32, i32, i8*, i32, i32 }
%struct._xmlSaveCtxt = type { %struct._xmlOutputBuffer*, i32, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, %struct._xmlAttr*, i8*, i16 }
%struct._xmlDoc = type opaque
%struct._xmlAttr = type opaque

@.str = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/185_xmlsave.c_2610_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlNodeDumpOutputInternal = private unnamed_addr constant [87 x i8] c"int xmlNodeDumpOutputInternal(xmlOutputBuffer *, xmlNode *, int, int, const xmlChar *)\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"compression\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"cur\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlOutputBuffer* @xmlOutputBufferCreateFilename(i8* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !28 {
  %4 = alloca %struct._xmlOutputBuffer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._xmlOutputBuffer*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !35, metadata !DIExpression()), !dbg !36
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !37, metadata !DIExpression()), !dbg !38
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !39, metadata !DIExpression()), !dbg !40
  %9 = load i32, i32* %7, align 4, !dbg !41
  %10 = icmp slt i32 %9, 0, !dbg !43
  br i1 %10, label %11, label %12, !dbg !44

11:                                               ; preds = %3
  store %struct._xmlOutputBuffer* null, %struct._xmlOutputBuffer** %4, align 8, !dbg !45
  br label %26, !dbg !45

12:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata %struct._xmlOutputBuffer** %8, metadata !46, metadata !DIExpression()), !dbg !47
  %13 = call noalias i8* @malloc(i64 noundef 32) #7, !dbg !48
  %14 = bitcast i8* %13 to %struct._xmlOutputBuffer*, !dbg !49
  store %struct._xmlOutputBuffer* %14, %struct._xmlOutputBuffer** %8, align 8, !dbg !47
  %15 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %8, align 8, !dbg !50
  %16 = icmp ne %struct._xmlOutputBuffer* %15, null, !dbg !50
  br i1 %16, label %17, label %24, !dbg !52

17:                                               ; preds = %12
  %18 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %8, align 8, !dbg !53
  %19 = bitcast %struct._xmlOutputBuffer* %18 to i8*, !dbg !53
  call void @klee_make_symbolic(i8* noundef %19, i64 noundef 32, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !55
  %20 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %8, align 8, !dbg !56
  %21 = icmp ne %struct._xmlOutputBuffer* %20, null, !dbg !57
  %22 = zext i1 %21 to i32, !dbg !57
  %23 = sext i32 %22 to i64, !dbg !56
  call void @klee_assume(i64 noundef %23), !dbg !58
  br label %24, !dbg !59

24:                                               ; preds = %17, %12
  %25 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %8, align 8, !dbg !60
  store %struct._xmlOutputBuffer* %25, %struct._xmlOutputBuffer** %4, align 8, !dbg !61
  br label %26, !dbg !61

26:                                               ; preds = %24, %11
  %27 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %4, align 8, !dbg !62
  ret %struct._xmlOutputBuffer* %27, !dbg !62
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSaveCtxtInit(%struct._xmlSaveCtxt* noundef %0) #0 !dbg !63 {
  %2 = alloca %struct._xmlSaveCtxt*, align 8
  store %struct._xmlSaveCtxt* %0, %struct._xmlSaveCtxt** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSaveCtxt** %2, metadata !87, metadata !DIExpression()), !dbg !88
  %3 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !89
  %4 = icmp ne %struct._xmlSaveCtxt* %3, null, !dbg !89
  br i1 %4, label %5, label %28, !dbg !91

5:                                                ; preds = %1
  %6 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !92
  %7 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %6, i32 0, i32 4, !dbg !94
  store i32 0, i32* %7, align 8, !dbg !95
  %8 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !96
  %9 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %8, i32 0, i32 5, !dbg !97
  store i8* null, i8** %9, align 8, !dbg !98
  %10 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !99
  %11 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %10, i32 0, i32 6, !dbg !100
  store i32 0, i32* %11, align 8, !dbg !101
  %12 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !102
  %13 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %12, i32 0, i32 7, !dbg !103
  store i32 0, i32* %13, align 4, !dbg !104
  %14 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !105
  %15 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %14, i32 0, i32 8, !dbg !106
  store i32 0, i32* %15, align 8, !dbg !107
  %16 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !108
  %17 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %16, i32 0, i32 9, !dbg !109
  store i32 0, i32* %17, align 4, !dbg !110
  %18 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !111
  %19 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %18, i32 0, i32 10, !dbg !112
  store i32 0, i32* %19, align 8, !dbg !113
  %20 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !114
  %21 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %20, i32 0, i32 11, !dbg !115
  store i32 0, i32* %21, align 4, !dbg !116
  %22 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !117
  %23 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %22, i32 0, i32 12, !dbg !118
  store i32 0, i32* %23, align 8, !dbg !119
  %24 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !120
  %25 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %24, i32 0, i32 13, !dbg !121
  store i32 0, i32* %25, align 4, !dbg !122
  %26 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !123
  %27 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %26, i32 0, i32 14, !dbg !124
  store i32 0, i32* %27, align 8, !dbg !125
  br label %28, !dbg !126

28:                                               ; preds = %5, %1
  ret void, !dbg !127
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlNodeDumpOutputInternal(%struct._xmlOutputBuffer* noundef %0, %struct._xmlNode* noundef %1, i32 noundef %2, i32 noundef %3, i8* noundef %4) #0 !dbg !128 {
  %6 = alloca %struct._xmlOutputBuffer*, align 8
  %7 = alloca %struct._xmlNode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct._xmlSaveCtxt, align 8
  store %struct._xmlOutputBuffer* %0, %struct._xmlOutputBuffer** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlOutputBuffer** %6, metadata !154, metadata !DIExpression()), !dbg !155
  store %struct._xmlNode* %1, %struct._xmlNode** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %7, metadata !156, metadata !DIExpression()), !dbg !157
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !158, metadata !DIExpression()), !dbg !159
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !160, metadata !DIExpression()), !dbg !161
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !162, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.declare(metadata %struct._xmlSaveCtxt* %11, metadata !164, metadata !DIExpression()), !dbg !165
  %12 = bitcast %struct._xmlSaveCtxt* %11 to i8*, !dbg !166
  %13 = call i8* @memset(i8* %12, i32 0, i64 80), !dbg !166
  %14 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.2, i64 0, i64 0), i32 noundef 98, i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @__PRETTY_FUNCTION__.xmlNodeDumpOutputInternal, i64 0, i64 0)), !dbg !167
  ret i32 0, !dbg !168
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !169 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlNode*, align 8
  %5 = alloca %struct._xmlOutputBuffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [256 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !172, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.declare(metadata i32* %3, metadata !177, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %4, metadata !179, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.declare(metadata %struct._xmlOutputBuffer** %5, metadata !181, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.declare(metadata i32* %6, metadata !183, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.declare(metadata [256 x i8]* %7, metadata !185, metadata !DIExpression()), !dbg !187
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !188
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !189
  %9 = bitcast i32* %3 to i8*, !dbg !190
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0)), !dbg !191
  %10 = bitcast %struct._xmlNode** %4 to i8*, !dbg !192
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)), !dbg !193
  %11 = bitcast i32* %6 to i8*, !dbg !194
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)), !dbg !195
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0, !dbg !196
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)), !dbg !197
  %13 = load i32, i32* %3, align 4, !dbg !198
  %14 = icmp sge i32 %13, 0, !dbg !199
  %15 = zext i1 %14 to i32, !dbg !199
  %16 = sext i32 %15 to i64, !dbg !198
  call void @klee_assume(i64 noundef %16), !dbg !200
  %17 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !201
  %18 = icmp ne %struct._xmlNode* %17, null, !dbg !202
  %19 = zext i1 %18 to i32, !dbg !202
  %20 = sext i32 %19 to i64, !dbg !201
  call void @klee_assume(i64 noundef %20), !dbg !203
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !204
  %22 = load i32, i32* %3, align 4, !dbg !205
  %23 = call %struct._xmlOutputBuffer* @xmlOutputBufferCreateFilename(i8* noundef %21, i8* noundef null, i32 noundef %22), !dbg !206
  store %struct._xmlOutputBuffer* %23, %struct._xmlOutputBuffer** %5, align 8, !dbg !207
  %24 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %5, align 8, !dbg !208
  %25 = icmp eq %struct._xmlOutputBuffer* %24, null, !dbg !210
  br i1 %25, label %26, label %27, !dbg !211

26:                                               ; preds = %0
  store i32 -1, i32* %1, align 4, !dbg !212
  br label %35, !dbg !212

27:                                               ; preds = %0
  %28 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %5, align 8, !dbg !214
  %29 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !215
  %30 = load i32, i32* %6, align 4, !dbg !216
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0, !dbg !217
  %32 = call i32 @xmlNodeDumpOutputInternal(%struct._xmlOutputBuffer* noundef %28, %struct._xmlNode* noundef %29, i32 noundef 0, i32 noundef %30, i8* noundef %31), !dbg !218
  %33 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %5, align 8, !dbg !219
  %34 = bitcast %struct._xmlOutputBuffer* %33 to i8*, !dbg !219
  call void @free(i8* noundef %34) #7, !dbg !220
  store i32 0, i32* %1, align 4, !dbg !221
  br label %35, !dbg !221

35:                                               ; preds = %27, %26
  %36 = load i32, i32* %1, align 4, !dbg !222
  ret i32 %36, !dbg !222
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !223 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !230, metadata !DIExpression()), !dbg !231
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !232, metadata !DIExpression()), !dbg !233
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !234, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i8** %7, metadata !236, metadata !DIExpression()), !dbg !238
  %8 = load i8*, i8** %4, align 8, !dbg !239
  store i8* %8, i8** %7, align 8, !dbg !238
  br label %9, !dbg !240

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !241
  %11 = add i64 %10, -1, !dbg !241
  store i64 %11, i64* %6, align 8, !dbg !241
  %12 = icmp ugt i64 %10, 0, !dbg !242
  br i1 %12, label %13, label %18, !dbg !240

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !243
  %15 = trunc i32 %14 to i8, !dbg !243
  %16 = load i8*, i8** %7, align 8, !dbg !244
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !244
  store i8* %17, i8** %7, align 8, !dbg !244
  store i8 %15, i8* %16, align 1, !dbg !245
  br label %9, !dbg !240, !llvm.loop !246

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !248
  ret i8* %19, !dbg !249
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27, !27}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/185_xmlsave.c_2610_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "3ee1c8609ac3146376bf1a6a7b52d032")
!2 = !{!3, !8}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlOutputBuffer", file: !1, line: 10, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlOutputBuffer", file: !1, line: 16, size: 256, elements: !6)
!6 = !{!7, !9, !11, !12, !16, !17}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !5, file: !1, line: 17, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_member, name: "writecallback", scope: !5, file: !1, line: 18, baseType: !10, size: 32, offset: 64)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "closecallback", scope: !5, file: !1, line: 19, baseType: !10, size: 32, offset: 96)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !5, file: !1, line: 20, baseType: !13, size: 64, offset: 128)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !1, line: 13, baseType: !15)
!15 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "written", scope: !5, file: !1, line: 21, baseType: !10, size: 32, offset: 192)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !5, file: !1, line: 22, baseType: !10, size: 32, offset: 224)
!18 = distinct !DICompileUnit(language: DW_LANG_C99, file: !19, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!19 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!20 = !{i32 7, !"Dwarf Version", i32 5}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"wchar_size", i32 4}
!23 = !{i32 7, !"PIC Level", i32 2}
!24 = !{i32 7, !"PIE Level", i32 2}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"Ubuntu clang version 14.0.6"}
!28 = distinct !DISubprogram(name: "xmlOutputBufferCreateFilename", scope: !1, file: !1, line: 60, type: !29, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!29 = !DISubroutineType(types: !30)
!30 = !{!3, !31, !8, !10}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!33 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!34 = !{}
!35 = !DILocalVariable(name: "filename", arg: 1, scope: !28, file: !1, line: 60, type: !31)
!36 = !DILocation(line: 60, column: 60, scope: !28)
!37 = !DILocalVariable(name: "handler", arg: 2, scope: !28, file: !1, line: 60, type: !8)
!38 = !DILocation(line: 60, column: 76, scope: !28)
!39 = !DILocalVariable(name: "compression", arg: 3, scope: !28, file: !1, line: 60, type: !10)
!40 = !DILocation(line: 60, column: 89, scope: !28)
!41 = !DILocation(line: 61, column: 9, scope: !42)
!42 = distinct !DILexicalBlock(scope: !28, file: !1, line: 61, column: 9)
!43 = !DILocation(line: 61, column: 21, scope: !42)
!44 = !DILocation(line: 61, column: 9, scope: !28)
!45 = !DILocation(line: 61, column: 26, scope: !42)
!46 = !DILocalVariable(name: "buf", scope: !28, file: !1, line: 62, type: !3)
!47 = !DILocation(line: 62, column: 22, scope: !28)
!48 = !DILocation(line: 62, column: 46, scope: !28)
!49 = !DILocation(line: 62, column: 28, scope: !28)
!50 = !DILocation(line: 63, column: 9, scope: !51)
!51 = distinct !DILexicalBlock(scope: !28, file: !1, line: 63, column: 9)
!52 = !DILocation(line: 63, column: 9, scope: !28)
!53 = !DILocation(line: 64, column: 28, scope: !54)
!54 = distinct !DILexicalBlock(scope: !51, file: !1, line: 63, column: 14)
!55 = !DILocation(line: 64, column: 9, scope: !54)
!56 = !DILocation(line: 65, column: 21, scope: !54)
!57 = !DILocation(line: 65, column: 25, scope: !54)
!58 = !DILocation(line: 65, column: 9, scope: !54)
!59 = !DILocation(line: 66, column: 5, scope: !54)
!60 = !DILocation(line: 67, column: 12, scope: !28)
!61 = !DILocation(line: 67, column: 5, scope: !28)
!62 = !DILocation(line: 68, column: 1, scope: !28)
!63 = distinct !DISubprogram(name: "xmlSaveCtxtInit", scope: !1, file: !1, line: 70, type: !64, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !66}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSaveCtxt", file: !1, line: 11, baseType: !68)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSaveCtxt", file: !1, line: 25, size: 640, elements: !69)
!69 = !{!70, !71, !72, !73, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !68, file: !1, line: 26, baseType: !3, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !68, file: !1, line: 27, baseType: !10, size: 32, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !68, file: !1, line: 28, baseType: !10, size: 32, offset: 96)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !68, file: !1, line: 29, baseType: !74, size: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "indent", scope: !68, file: !1, line: 30, baseType: !10, size: 32, offset: 192)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "indent_str", scope: !68, file: !1, line: 31, baseType: !13, size: 64, offset: 256)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !68, file: !1, line: 32, baseType: !10, size: 32, offset: 320)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "is_html", scope: !68, file: !1, line: 33, baseType: !10, size: 32, offset: 352)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "noent", scope: !68, file: !1, line: 34, baseType: !10, size: 32, offset: 384)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "noenc", scope: !68, file: !1, line: 35, baseType: !10, size: 32, offset: 416)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "nowrite", scope: !68, file: !1, line: 36, baseType: !10, size: 32, offset: 448)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "nocdata", scope: !68, file: !1, line: 37, baseType: !10, size: 32, offset: 480)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "noblanks", scope: !68, file: !1, line: 38, baseType: !10, size: 32, offset: 512)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "asxml", scope: !68, file: !1, line: 39, baseType: !10, size: 32, offset: 544)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !68, file: !1, line: 40, baseType: !10, size: 32, offset: 576)
!87 = !DILocalVariable(name: "ctxt", arg: 1, scope: !63, file: !1, line: 70, type: !66)
!88 = !DILocation(line: 70, column: 35, scope: !63)
!89 = !DILocation(line: 72, column: 9, scope: !90)
!90 = distinct !DILexicalBlock(scope: !63, file: !1, line: 72, column: 9)
!91 = !DILocation(line: 72, column: 9, scope: !63)
!92 = !DILocation(line: 73, column: 9, scope: !93)
!93 = distinct !DILexicalBlock(scope: !90, file: !1, line: 72, column: 15)
!94 = !DILocation(line: 73, column: 15, scope: !93)
!95 = !DILocation(line: 73, column: 22, scope: !93)
!96 = !DILocation(line: 74, column: 9, scope: !93)
!97 = !DILocation(line: 74, column: 15, scope: !93)
!98 = !DILocation(line: 74, column: 26, scope: !93)
!99 = !DILocation(line: 75, column: 9, scope: !93)
!100 = !DILocation(line: 75, column: 15, scope: !93)
!101 = !DILocation(line: 75, column: 20, scope: !93)
!102 = !DILocation(line: 76, column: 9, scope: !93)
!103 = !DILocation(line: 76, column: 15, scope: !93)
!104 = !DILocation(line: 76, column: 23, scope: !93)
!105 = !DILocation(line: 77, column: 9, scope: !93)
!106 = !DILocation(line: 77, column: 15, scope: !93)
!107 = !DILocation(line: 77, column: 21, scope: !93)
!108 = !DILocation(line: 78, column: 9, scope: !93)
!109 = !DILocation(line: 78, column: 15, scope: !93)
!110 = !DILocation(line: 78, column: 21, scope: !93)
!111 = !DILocation(line: 79, column: 9, scope: !93)
!112 = !DILocation(line: 79, column: 15, scope: !93)
!113 = !DILocation(line: 79, column: 23, scope: !93)
!114 = !DILocation(line: 80, column: 9, scope: !93)
!115 = !DILocation(line: 80, column: 15, scope: !93)
!116 = !DILocation(line: 80, column: 23, scope: !93)
!117 = !DILocation(line: 81, column: 9, scope: !93)
!118 = !DILocation(line: 81, column: 15, scope: !93)
!119 = !DILocation(line: 81, column: 24, scope: !93)
!120 = !DILocation(line: 82, column: 9, scope: !93)
!121 = !DILocation(line: 82, column: 15, scope: !93)
!122 = !DILocation(line: 82, column: 21, scope: !93)
!123 = !DILocation(line: 83, column: 9, scope: !93)
!124 = !DILocation(line: 83, column: 15, scope: !93)
!125 = !DILocation(line: 83, column: 20, scope: !93)
!126 = !DILocation(line: 84, column: 5, scope: !93)
!127 = !DILocation(line: 85, column: 1, scope: !63)
!128 = distinct !DISubprogram(name: "xmlNodeDumpOutputInternal", scope: !1, file: !1, line: 88, type: !129, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!129 = !DISubroutineType(types: !130)
!130 = !{!10, !3, !131, !10, !10, !74}
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 12, baseType: !133)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 43, size: 832, elements: !134)
!134 = !{!135, !136, !137, !138, !140, !141, !142, !143, !144, !147, !148, !151, !152}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !133, file: !1, line: 44, baseType: !8, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !133, file: !1, line: 45, baseType: !10, size: 32, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !133, file: !1, line: 46, baseType: !74, size: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !133, file: !1, line: 47, baseType: !139, size: 64, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !133, file: !1, line: 48, baseType: !139, size: 64, offset: 256)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !133, file: !1, line: 49, baseType: !139, size: 64, offset: 320)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !133, file: !1, line: 50, baseType: !139, size: 64, offset: 384)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !133, file: !1, line: 51, baseType: !139, size: 64, offset: 448)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !133, file: !1, line: 52, baseType: !145, size: 64, offset: 512)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !1, line: 52, flags: DIFlagFwdDecl)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !133, file: !1, line: 53, baseType: !13, size: 64, offset: 576)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !133, file: !1, line: 54, baseType: !149, size: 64, offset: 640)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !1, line: 54, flags: DIFlagFwdDecl)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !133, file: !1, line: 55, baseType: !13, size: 64, offset: 704)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !133, file: !1, line: 56, baseType: !153, size: 16, offset: 768)
!153 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!154 = !DILocalVariable(name: "buf", arg: 1, scope: !128, file: !1, line: 88, type: !3)
!155 = !DILocation(line: 88, column: 48, scope: !128)
!156 = !DILocalVariable(name: "cur", arg: 2, scope: !128, file: !1, line: 88, type: !131)
!157 = !DILocation(line: 88, column: 62, scope: !128)
!158 = !DILocalVariable(name: "level", arg: 3, scope: !128, file: !1, line: 88, type: !10)
!159 = !DILocation(line: 88, column: 71, scope: !128)
!160 = !DILocalVariable(name: "format", arg: 4, scope: !128, file: !1, line: 88, type: !10)
!161 = !DILocation(line: 88, column: 82, scope: !128)
!162 = !DILocalVariable(name: "encoding", arg: 5, scope: !128, file: !1, line: 88, type: !74)
!163 = !DILocation(line: 88, column: 105, scope: !128)
!164 = !DILocalVariable(name: "ctxt", scope: !128, file: !1, line: 89, type: !67)
!165 = !DILocation(line: 89, column: 17, scope: !128)
!166 = !DILocation(line: 92, column: 5, scope: !128)
!167 = !DILocation(line: 98, column: 5, scope: !128)
!168 = !DILocation(line: 100, column: 5, scope: !128)
!169 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 103, type: !170, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!170 = !DISubroutineType(types: !171)
!171 = !{!10}
!172 = !DILocalVariable(name: "filename", scope: !169, file: !1, line: 105, type: !173)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 2048, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 256)
!176 = !DILocation(line: 105, column: 10, scope: !169)
!177 = !DILocalVariable(name: "compression", scope: !169, file: !1, line: 106, type: !10)
!178 = !DILocation(line: 106, column: 9, scope: !169)
!179 = !DILocalVariable(name: "cur", scope: !169, file: !1, line: 107, type: !131)
!180 = !DILocation(line: 107, column: 14, scope: !169)
!181 = !DILocalVariable(name: "buf", scope: !169, file: !1, line: 108, type: !3)
!182 = !DILocation(line: 108, column: 22, scope: !169)
!183 = !DILocalVariable(name: "format", scope: !169, file: !1, line: 109, type: !10)
!184 = !DILocation(line: 109, column: 9, scope: !169)
!185 = !DILocalVariable(name: "encoding", scope: !169, file: !1, line: 110, type: !186)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 2048, elements: !174)
!187 = !DILocation(line: 110, column: 13, scope: !169)
!188 = !DILocation(line: 113, column: 24, scope: !169)
!189 = !DILocation(line: 113, column: 5, scope: !169)
!190 = !DILocation(line: 114, column: 24, scope: !169)
!191 = !DILocation(line: 114, column: 5, scope: !169)
!192 = !DILocation(line: 115, column: 24, scope: !169)
!193 = !DILocation(line: 115, column: 5, scope: !169)
!194 = !DILocation(line: 116, column: 24, scope: !169)
!195 = !DILocation(line: 116, column: 5, scope: !169)
!196 = !DILocation(line: 117, column: 24, scope: !169)
!197 = !DILocation(line: 117, column: 5, scope: !169)
!198 = !DILocation(line: 120, column: 17, scope: !169)
!199 = !DILocation(line: 120, column: 29, scope: !169)
!200 = !DILocation(line: 120, column: 5, scope: !169)
!201 = !DILocation(line: 121, column: 17, scope: !169)
!202 = !DILocation(line: 121, column: 21, scope: !169)
!203 = !DILocation(line: 121, column: 5, scope: !169)
!204 = !DILocation(line: 124, column: 41, scope: !169)
!205 = !DILocation(line: 124, column: 57, scope: !169)
!206 = !DILocation(line: 124, column: 11, scope: !169)
!207 = !DILocation(line: 124, column: 9, scope: !169)
!208 = !DILocation(line: 125, column: 9, scope: !209)
!209 = distinct !DILexicalBlock(scope: !169, file: !1, line: 125, column: 9)
!210 = !DILocation(line: 125, column: 13, scope: !209)
!211 = !DILocation(line: 125, column: 9, scope: !169)
!212 = !DILocation(line: 126, column: 9, scope: !213)
!213 = distinct !DILexicalBlock(scope: !209, file: !1, line: 125, column: 22)
!214 = !DILocation(line: 130, column: 31, scope: !169)
!215 = !DILocation(line: 130, column: 36, scope: !169)
!216 = !DILocation(line: 130, column: 44, scope: !169)
!217 = !DILocation(line: 130, column: 52, scope: !169)
!218 = !DILocation(line: 130, column: 5, scope: !169)
!219 = !DILocation(line: 133, column: 10, scope: !169)
!220 = !DILocation(line: 133, column: 5, scope: !169)
!221 = !DILocation(line: 135, column: 5, scope: !169)
!222 = !DILocation(line: 136, column: 1, scope: !169)
!223 = distinct !DISubprogram(name: "memset", scope: !224, file: !224, line: 12, type: !225, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !34)
!224 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!225 = !DISubroutineType(types: !226)
!226 = !{!8, !8, !10, !227}
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !228, line: 46, baseType: !229)
!228 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!229 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!230 = !DILocalVariable(name: "dst", arg: 1, scope: !223, file: !224, line: 12, type: !8)
!231 = !DILocation(line: 12, column: 20, scope: !223)
!232 = !DILocalVariable(name: "s", arg: 2, scope: !223, file: !224, line: 12, type: !10)
!233 = !DILocation(line: 12, column: 29, scope: !223)
!234 = !DILocalVariable(name: "count", arg: 3, scope: !223, file: !224, line: 12, type: !227)
!235 = !DILocation(line: 12, column: 39, scope: !223)
!236 = !DILocalVariable(name: "a", scope: !223, file: !224, line: 13, type: !237)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!238 = !DILocation(line: 13, column: 9, scope: !223)
!239 = !DILocation(line: 13, column: 13, scope: !223)
!240 = !DILocation(line: 14, column: 3, scope: !223)
!241 = !DILocation(line: 14, column: 15, scope: !223)
!242 = !DILocation(line: 14, column: 18, scope: !223)
!243 = !DILocation(line: 15, column: 12, scope: !223)
!244 = !DILocation(line: 15, column: 7, scope: !223)
!245 = !DILocation(line: 15, column: 10, scope: !223)
!246 = distinct !{!246, !240, !243, !247}
!247 = !{!"llvm.loop.mustprogress"}
!248 = !DILocation(line: 16, column: 10, scope: !223)
!249 = !DILocation(line: 16, column: 3, scope: !223)

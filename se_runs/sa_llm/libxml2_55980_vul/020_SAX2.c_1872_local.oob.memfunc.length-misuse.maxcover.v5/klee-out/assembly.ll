; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/020_SAX2.c_1872_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/020_SAX2.c_1872_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlParserCtxt = type { i8*, i32, %struct._xmlDict*, i32, %struct._xmlNode*, i32 }
%struct._xmlDict = type opaque
%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc* }
%struct._xmlDoc = type opaque

@.str = private unnamed_addr constant [18 x i8] c"xmlSAX2Characters\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"(len >= 0 && len < 100) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_55980_vul/020_SAX2.c_1872_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlSAX2Characters = private unnamed_addr constant [66 x i8] c"xmlNode *xmlSAX2Characters(xmlParserCtxt *, const xmlChar *, int)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"dictNames\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"len\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlErrMemory(%struct._xmlParserCtxt* noundef %0, i8* noundef %1) #0 !dbg !35 {
  %3 = alloca %struct._xmlParserCtxt*, align 8
  %4 = alloca i8*, align 8
  store %struct._xmlParserCtxt* %0, %struct._xmlParserCtxt** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %3, metadata !55, metadata !DIExpression()), !dbg !56
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !57, metadata !DIExpression()), !dbg !58
  %5 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %3, align 8, !dbg !59
  %6 = load i8*, i8** %4, align 8, !dbg !60
  ret void, !dbg !61
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlNode* @xmlMalloc(i64 noundef %0) #0 !dbg !62 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !68, metadata !DIExpression()), !dbg !69
  %3 = load i64, i64* %2, align 8, !dbg !70
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !71
  %5 = bitcast i8* %4 to %struct._xmlNode*, !dbg !71
  ret %struct._xmlNode* %5, !dbg !72
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlNode* @xmlSAX2Characters(%struct._xmlParserCtxt* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !73 {
  %4 = alloca %struct._xmlNode*, align 8
  %5 = alloca %struct._xmlParserCtxt*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._xmlNode*, align 8
  %9 = alloca i8, align 1
  store %struct._xmlParserCtxt* %0, %struct._xmlParserCtxt** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %5, metadata !76, metadata !DIExpression()), !dbg !77
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !78, metadata !DIExpression()), !dbg !79
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !80, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %8, metadata !82, metadata !DIExpression()), !dbg !83
  %10 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %5, align 8, !dbg !84
  %11 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %10, i32 0, i32 5, !dbg !86
  %12 = load i32, i32* %11, align 8, !dbg !86
  %13 = icmp sgt i32 %12, 0, !dbg !87
  br i1 %13, label %14, label %29, !dbg !88

14:                                               ; preds = %3
  %15 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %5, align 8, !dbg !89
  %16 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %15, i32 0, i32 4, !dbg !91
  %17 = load %struct._xmlNode*, %struct._xmlNode** %16, align 8, !dbg !91
  store %struct._xmlNode* %17, %struct._xmlNode** %8, align 8, !dbg !92
  %18 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %5, align 8, !dbg !93
  %19 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %18, i32 0, i32 4, !dbg !94
  %20 = load %struct._xmlNode*, %struct._xmlNode** %19, align 8, !dbg !94
  %21 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %20, i32 0, i32 6, !dbg !95
  %22 = load %struct._xmlNode*, %struct._xmlNode** %21, align 8, !dbg !95
  %23 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %5, align 8, !dbg !96
  %24 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %23, i32 0, i32 4, !dbg !97
  store %struct._xmlNode* %22, %struct._xmlNode** %24, align 8, !dbg !98
  %25 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %5, align 8, !dbg !99
  %26 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %25, i32 0, i32 5, !dbg !100
  %27 = load i32, i32* %26, align 8, !dbg !101
  %28 = add nsw i32 %27, -1, !dbg !101
  store i32 %28, i32* %26, align 8, !dbg !101
  br label %31, !dbg !102

29:                                               ; preds = %3
  %30 = call %struct._xmlNode* @xmlMalloc(i64 noundef 72), !dbg !103
  store %struct._xmlNode* %30, %struct._xmlNode** %8, align 8, !dbg !105
  br label %31

31:                                               ; preds = %29, %14
  %32 = load %struct._xmlNode*, %struct._xmlNode** %8, align 8, !dbg !106
  %33 = icmp eq %struct._xmlNode* %32, null, !dbg !108
  br i1 %33, label %34, label %36, !dbg !109

34:                                               ; preds = %31
  %35 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %5, align 8, !dbg !110
  call void @xmlErrMemory(%struct._xmlParserCtxt* noundef %35, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0)), !dbg !112
  store %struct._xmlNode* null, %struct._xmlNode** %4, align 8, !dbg !113
  br label %63, !dbg !113

36:                                               ; preds = %31
  %37 = load %struct._xmlNode*, %struct._xmlNode** %8, align 8, !dbg !114
  %38 = bitcast %struct._xmlNode* %37 to i8*, !dbg !115
  %39 = call i8* @memset(i8* %38, i32 0, i64 72), !dbg !115
  %40 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %5, align 8, !dbg !116
  %41 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %40, i32 0, i32 3, !dbg !118
  %42 = load i32, i32* %41, align 8, !dbg !118
  %43 = icmp ne i32 %42, 0, !dbg !116
  br i1 %43, label %44, label %61, !dbg !119

44:                                               ; preds = %36
  call void @llvm.dbg.declare(metadata i8* %9, metadata !120, metadata !DIExpression()), !dbg !122
  %45 = load i8*, i8** %6, align 8, !dbg !123
  %46 = load i32, i32* %7, align 4, !dbg !124
  %47 = sext i32 %46 to i64, !dbg !123
  %48 = getelementptr inbounds i8, i8* %45, i64 %47, !dbg !123
  %49 = load i8, i8* %48, align 1, !dbg !123
  store i8 %49, i8* %9, align 1, !dbg !122
  %50 = load i32, i32* %7, align 4, !dbg !125
  %51 = icmp sge i32 %50, 0, !dbg !125
  br i1 %51, label %52, label %57, !dbg !125

52:                                               ; preds = %44
  %53 = load i32, i32* %7, align 4, !dbg !125
  %54 = icmp slt i32 %53, 100, !dbg !125
  br i1 %54, label %55, label %57, !dbg !125

55:                                               ; preds = %52
  br i1 true, label %56, label %57, !dbg !125

56:                                               ; preds = %55
  br label %59, !dbg !125

57:                                               ; preds = %55, %52, %44
  %58 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.3, i64 0, i64 0), i32 noundef 83, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @__PRETTY_FUNCTION__.xmlSAX2Characters, i64 0, i64 0)), !dbg !125
  br label %59, !dbg !125

59:                                               ; preds = %57, %56
  %60 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.3, i64 0, i64 0), i32 noundef 86, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @__PRETTY_FUNCTION__.xmlSAX2Characters, i64 0, i64 0)), !dbg !126
  br label %61, !dbg !127

61:                                               ; preds = %59, %36
  %62 = load %struct._xmlNode*, %struct._xmlNode** %8, align 8, !dbg !128
  store %struct._xmlNode* %62, %struct._xmlNode** %4, align 8, !dbg !129
  br label %63, !dbg !129

63:                                               ; preds = %61, %34
  %64 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !130
  ret %struct._xmlNode* %64, !dbg !130
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !131 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlParserCtxt, align 8
  %3 = alloca [100 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca %struct._xmlNode*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt* %2, metadata !134, metadata !DIExpression()), !dbg !135
  %6 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 3, !dbg !136
  %7 = bitcast i32* %6 to i8*, !dbg !137
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)), !dbg !138
  %8 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 3, !dbg !139
  %9 = load i32, i32* %8, align 8, !dbg !139
  %10 = icmp ne i32 %9, 0, !dbg !140
  %11 = zext i1 %10 to i32, !dbg !140
  %12 = sext i32 %11 to i64, !dbg !141
  call void @klee_assume(i64 noundef %12), !dbg !142
  %13 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 5, !dbg !143
  store i32 0, i32* %13, align 8, !dbg !144
  %14 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 4, !dbg !145
  store %struct._xmlNode* null, %struct._xmlNode** %14, align 8, !dbg !146
  call void @llvm.dbg.declare(metadata [100 x i8]* %3, metadata !147, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.declare(metadata i32* %4, metadata !152, metadata !DIExpression()), !dbg !153
  %15 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0, !dbg !154
  call void @klee_make_symbolic(i8* noundef %15, i64 noundef 100, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)), !dbg !155
  %16 = bitcast i32* %4 to i8*, !dbg !156
  call void @klee_make_symbolic(i8* noundef %16, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)), !dbg !157
  %17 = load i32, i32* %4, align 4, !dbg !158
  %18 = icmp sge i32 %17, 0, !dbg !159
  %19 = zext i1 %18 to i32, !dbg !159
  %20 = sext i32 %19 to i64, !dbg !158
  call void @klee_assume(i64 noundef %20), !dbg !160
  %21 = load i32, i32* %4, align 4, !dbg !161
  %22 = icmp slt i32 %21, 100, !dbg !162
  %23 = zext i1 %22 to i32, !dbg !162
  %24 = sext i32 %23 to i64, !dbg !161
  call void @klee_assume(i64 noundef %24), !dbg !163
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %5, metadata !164, metadata !DIExpression()), !dbg !165
  %25 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0, !dbg !166
  %26 = load i32, i32* %4, align 4, !dbg !167
  %27 = call %struct._xmlNode* @xmlSAX2Characters(%struct._xmlParserCtxt* noundef %2, i8* noundef %25, i32 noundef %26), !dbg !168
  store %struct._xmlNode* %27, %struct._xmlNode** %5, align 8, !dbg !165
  %28 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !169
  %29 = icmp ne %struct._xmlNode* %28, null, !dbg !171
  br i1 %29, label %30, label %33, !dbg !172

30:                                               ; preds = %0
  %31 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !173
  %32 = bitcast %struct._xmlNode* %31 to i8*, !dbg !173
  call void @free(i8* noundef %32) #7, !dbg !175
  br label %33, !dbg !176

33:                                               ; preds = %30, %0
  ret i32 0, !dbg !177
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !178 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !182, metadata !DIExpression()), !dbg !183
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !184, metadata !DIExpression()), !dbg !185
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !186, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.declare(metadata i8** %7, metadata !188, metadata !DIExpression()), !dbg !190
  %8 = load i8*, i8** %4, align 8, !dbg !191
  store i8* %8, i8** %7, align 8, !dbg !190
  br label %9, !dbg !192

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !193
  %11 = add i64 %10, -1, !dbg !193
  store i64 %11, i64* %6, align 8, !dbg !193
  %12 = icmp ugt i64 %10, 0, !dbg !194
  br i1 %12, label %13, label %18, !dbg !192

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !195
  %15 = trunc i32 %14 to i8, !dbg !195
  %16 = load i8*, i8** %7, align 8, !dbg !196
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !196
  store i8* %17, i8** %7, align 8, !dbg !196
  store i8 %15, i8* %16, align 1, !dbg !197
  br label %9, !dbg !192, !llvm.loop !198

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !200
  ret i8* %19, !dbg !201
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34, !34}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/020_SAX2.c_1872_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "057a9c4d1bb83a49957e57278c3138b1")
!2 = !{!3, !8}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 12, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 32, size: 576, elements: !6)
!6 = !{!7, !9, !11, !16, !18, !19, !20, !21, !22}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !5, file: !1, line: 33, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5, file: !1, line: 34, baseType: !10, size: 32, offset: 64)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5, file: !1, line: 35, baseType: !12, size: 64, offset: 128)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !1, line: 13, baseType: !15)
!15 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !5, file: !1, line: 36, baseType: !17, size: 64, offset: 192)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !5, file: !1, line: 37, baseType: !17, size: 64, offset: 256)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5, file: !1, line: 38, baseType: !17, size: 64, offset: 320)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5, file: !1, line: 39, baseType: !17, size: 64, offset: 384)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !5, file: !1, line: 40, baseType: !17, size: 64, offset: 448)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !5, file: !1, line: 41, baseType: !23, size: 64, offset: 512)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !1, line: 41, flags: DIFlagFwdDecl)
!25 = distinct !DICompileUnit(language: DW_LANG_C99, file: !26, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!26 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!27 = !{i32 7, !"Dwarf Version", i32 5}
!28 = !{i32 2, !"Debug Info Version", i32 3}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"Ubuntu clang version 14.0.6"}
!35 = distinct !DISubprogram(name: "xmlErrMemory", scope: !1, file: !1, line: 21, type: !36, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !54)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !38, !51}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxt", file: !1, line: 11, baseType: !40)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserCtxt", file: !1, line: 45, size: 384, elements: !41)
!41 = !{!42, !43, !44, !48, !49, !50}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !40, file: !1, line: 46, baseType: !8, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "errNo", scope: !40, file: !1, line: 47, baseType: !10, size: 32, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !40, file: !1, line: 48, baseType: !45, size: 64, offset: 128)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !1, line: 10, baseType: !47)
!47 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !1, line: 10, flags: DIFlagFwdDecl)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "dictNames", scope: !40, file: !1, line: 49, baseType: !10, size: 32, offset: 192)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "freeElems", scope: !40, file: !1, line: 50, baseType: !3, size: 64, offset: 256)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "freeElemsNr", scope: !40, file: !1, line: 51, baseType: !10, size: 32, offset: 320)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!53 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!54 = !{}
!55 = !DILocalVariable(name: "ctxt", arg: 1, scope: !35, file: !1, line: 21, type: !38)
!56 = !DILocation(line: 21, column: 34, scope: !35)
!57 = !DILocalVariable(name: "msg", arg: 2, scope: !35, file: !1, line: 21, type: !51)
!58 = !DILocation(line: 21, column: 52, scope: !35)
!59 = !DILocation(line: 23, column: 11, scope: !35)
!60 = !DILocation(line: 24, column: 11, scope: !35)
!61 = !DILocation(line: 25, column: 1, scope: !35)
!62 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 27, type: !63, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !54)
!63 = !DISubroutineType(types: !64)
!64 = !{!3, !65}
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !66, line: 46, baseType: !67)
!66 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!67 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!68 = !DILocalVariable(name: "size", arg: 1, scope: !62, file: !1, line: 27, type: !65)
!69 = !DILocation(line: 27, column: 27, scope: !62)
!70 = !DILocation(line: 28, column: 19, scope: !62)
!71 = !DILocation(line: 28, column: 12, scope: !62)
!72 = !DILocation(line: 28, column: 5, scope: !62)
!73 = distinct !DISubprogram(name: "xmlSAX2Characters", scope: !1, file: !1, line: 56, type: !74, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !54)
!74 = !DISubroutineType(types: !75)
!75 = !{!3, !38, !12, !10}
!76 = !DILocalVariable(name: "ctxt", arg: 1, scope: !73, file: !1, line: 56, type: !38)
!77 = !DILocation(line: 56, column: 43, scope: !73)
!78 = !DILocalVariable(name: "str", arg: 2, scope: !73, file: !1, line: 56, type: !12)
!79 = !DILocation(line: 56, column: 64, scope: !73)
!80 = !DILocalVariable(name: "len", arg: 3, scope: !73, file: !1, line: 56, type: !10)
!81 = !DILocation(line: 56, column: 73, scope: !73)
!82 = !DILocalVariable(name: "ret", scope: !73, file: !1, line: 57, type: !3)
!83 = !DILocation(line: 57, column: 14, scope: !73)
!84 = !DILocation(line: 60, column: 9, scope: !85)
!85 = distinct !DILexicalBlock(scope: !73, file: !1, line: 60, column: 9)
!86 = !DILocation(line: 60, column: 15, scope: !85)
!87 = !DILocation(line: 60, column: 27, scope: !85)
!88 = !DILocation(line: 60, column: 9, scope: !73)
!89 = !DILocation(line: 61, column: 15, scope: !90)
!90 = distinct !DILexicalBlock(scope: !85, file: !1, line: 60, column: 32)
!91 = !DILocation(line: 61, column: 21, scope: !90)
!92 = !DILocation(line: 61, column: 13, scope: !90)
!93 = !DILocation(line: 62, column: 38, scope: !90)
!94 = !DILocation(line: 62, column: 44, scope: !90)
!95 = !DILocation(line: 62, column: 56, scope: !90)
!96 = !DILocation(line: 62, column: 9, scope: !90)
!97 = !DILocation(line: 62, column: 15, scope: !90)
!98 = !DILocation(line: 62, column: 25, scope: !90)
!99 = !DILocation(line: 63, column: 9, scope: !90)
!100 = !DILocation(line: 63, column: 15, scope: !90)
!101 = !DILocation(line: 63, column: 26, scope: !90)
!102 = !DILocation(line: 64, column: 5, scope: !90)
!103 = !DILocation(line: 65, column: 25, scope: !104)
!104 = distinct !DILexicalBlock(scope: !85, file: !1, line: 64, column: 12)
!105 = !DILocation(line: 65, column: 13, scope: !104)
!106 = !DILocation(line: 68, column: 9, scope: !107)
!107 = distinct !DILexicalBlock(scope: !73, file: !1, line: 68, column: 9)
!108 = !DILocation(line: 68, column: 13, scope: !107)
!109 = !DILocation(line: 68, column: 9, scope: !73)
!110 = !DILocation(line: 69, column: 22, scope: !111)
!111 = distinct !DILexicalBlock(scope: !107, file: !1, line: 68, column: 22)
!112 = !DILocation(line: 69, column: 9, scope: !111)
!113 = !DILocation(line: 70, column: 9, scope: !111)
!114 = !DILocation(line: 74, column: 12, scope: !73)
!115 = !DILocation(line: 74, column: 5, scope: !73)
!116 = !DILocation(line: 80, column: 9, scope: !117)
!117 = distinct !DILexicalBlock(scope: !73, file: !1, line: 80, column: 9)
!118 = !DILocation(line: 80, column: 15, scope: !117)
!119 = !DILocation(line: 80, column: 9, scope: !73)
!120 = !DILocalVariable(name: "cur", scope: !121, file: !1, line: 81, type: !14)
!121 = distinct !DILexicalBlock(scope: !117, file: !1, line: 80, column: 26)
!122 = !DILocation(line: 81, column: 17, scope: !121)
!123 = !DILocation(line: 81, column: 23, scope: !121)
!124 = !DILocation(line: 81, column: 27, scope: !121)
!125 = !DILocation(line: 83, column: 9, scope: !121)
!126 = !DILocation(line: 86, column: 9, scope: !121)
!127 = !DILocation(line: 87, column: 5, scope: !121)
!128 = !DILocation(line: 89, column: 12, scope: !73)
!129 = !DILocation(line: 89, column: 5, scope: !73)
!130 = !DILocation(line: 90, column: 1, scope: !73)
!131 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 92, type: !132, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !54)
!132 = !DISubroutineType(types: !133)
!133 = !{!10}
!134 = !DILocalVariable(name: "ctxt", scope: !131, file: !1, line: 94, type: !39)
!135 = !DILocation(line: 94, column: 19, scope: !131)
!136 = !DILocation(line: 97, column: 30, scope: !131)
!137 = !DILocation(line: 97, column: 24, scope: !131)
!138 = !DILocation(line: 97, column: 5, scope: !131)
!139 = !DILocation(line: 100, column: 22, scope: !131)
!140 = !DILocation(line: 100, column: 32, scope: !131)
!141 = !DILocation(line: 100, column: 17, scope: !131)
!142 = !DILocation(line: 100, column: 5, scope: !131)
!143 = !DILocation(line: 103, column: 10, scope: !131)
!144 = !DILocation(line: 103, column: 22, scope: !131)
!145 = !DILocation(line: 104, column: 10, scope: !131)
!146 = !DILocation(line: 104, column: 20, scope: !131)
!147 = !DILocalVariable(name: "str", scope: !131, file: !1, line: 107, type: !148)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 800, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 100)
!151 = !DILocation(line: 107, column: 13, scope: !131)
!152 = !DILocalVariable(name: "len", scope: !131, file: !1, line: 108, type: !10)
!153 = !DILocation(line: 108, column: 9, scope: !131)
!154 = !DILocation(line: 110, column: 24, scope: !131)
!155 = !DILocation(line: 110, column: 5, scope: !131)
!156 = !DILocation(line: 111, column: 24, scope: !131)
!157 = !DILocation(line: 111, column: 5, scope: !131)
!158 = !DILocation(line: 114, column: 17, scope: !131)
!159 = !DILocation(line: 114, column: 21, scope: !131)
!160 = !DILocation(line: 114, column: 5, scope: !131)
!161 = !DILocation(line: 115, column: 17, scope: !131)
!162 = !DILocation(line: 115, column: 21, scope: !131)
!163 = !DILocation(line: 115, column: 5, scope: !131)
!164 = !DILocalVariable(name: "result", scope: !131, file: !1, line: 118, type: !3)
!165 = !DILocation(line: 118, column: 14, scope: !131)
!166 = !DILocation(line: 118, column: 48, scope: !131)
!167 = !DILocation(line: 118, column: 53, scope: !131)
!168 = !DILocation(line: 118, column: 23, scope: !131)
!169 = !DILocation(line: 121, column: 9, scope: !170)
!170 = distinct !DILexicalBlock(scope: !131, file: !1, line: 121, column: 9)
!171 = !DILocation(line: 121, column: 16, scope: !170)
!172 = !DILocation(line: 121, column: 9, scope: !131)
!173 = !DILocation(line: 122, column: 14, scope: !174)
!174 = distinct !DILexicalBlock(scope: !170, file: !1, line: 121, column: 25)
!175 = !DILocation(line: 122, column: 9, scope: !174)
!176 = !DILocation(line: 123, column: 5, scope: !174)
!177 = !DILocation(line: 125, column: 5, scope: !131)
!178 = distinct !DISubprogram(name: "memset", scope: !179, file: !179, line: 12, type: !180, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !54)
!179 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!180 = !DISubroutineType(types: !181)
!181 = !{!8, !8, !10, !65}
!182 = !DILocalVariable(name: "dst", arg: 1, scope: !178, file: !179, line: 12, type: !8)
!183 = !DILocation(line: 12, column: 20, scope: !178)
!184 = !DILocalVariable(name: "s", arg: 2, scope: !178, file: !179, line: 12, type: !10)
!185 = !DILocation(line: 12, column: 29, scope: !178)
!186 = !DILocalVariable(name: "count", arg: 3, scope: !178, file: !179, line: 12, type: !65)
!187 = !DILocation(line: 12, column: 39, scope: !178)
!188 = !DILocalVariable(name: "a", scope: !178, file: !179, line: 13, type: !189)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!190 = !DILocation(line: 13, column: 9, scope: !178)
!191 = !DILocation(line: 13, column: 13, scope: !178)
!192 = !DILocation(line: 14, column: 3, scope: !178)
!193 = !DILocation(line: 14, column: 15, scope: !178)
!194 = !DILocation(line: 14, column: 18, scope: !178)
!195 = !DILocation(line: 15, column: 12, scope: !178)
!196 = !DILocation(line: 15, column: 7, scope: !178)
!197 = !DILocation(line: 15, column: 10, scope: !178)
!198 = distinct !{!198, !192, !195, !199}
!199 = !{!"llvm.loop.mustprogress"}
!200 = !DILocation(line: 16, column: 10, scope: !178)
!201 = !DILocation(line: 16, column: 3, scope: !178)

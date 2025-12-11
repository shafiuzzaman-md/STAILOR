; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/165_valid.c_6881_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/165_valid.c_6881_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i16 }
%struct._xmlDoc = type opaque
%struct._xmlAttr = type opaque
%struct._xmlNs = type opaque
%struct._xmlValidCtxt = type { i8*, i32, i32, i32, i32, %struct._xmlNode**, i32, i32, i32, %struct._xmlNode*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"names\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"prev\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_62911_vul/165_valid.c_6881_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlAddElementDecl = private unnamed_addr constant [73 x i8] c"int xmlAddElementDecl(void *, void *, const char *, int, void *, void *)\00", align 1
@xmlNoValidityErr = internal global i32 0, align 4, !dbg !0
@nb_valid_elements = internal global i32 0, align 4, !dbg !9
@ref_node = internal global %struct._xmlNode* null, align 8, !dbg !12
@parent = internal global %struct._xmlNode* null, align 8, !dbg !41
@.str.6 = private unnamed_addr constant [5 x i8] c"ctxt\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"dtd\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"content\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"attributes\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlAddElementDecl(i8* noundef %0, i8* noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, i8* noundef %5) #0 !dbg !53 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct._xmlValidCtxt, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct._xmlNode*, align 8
  %18 = alloca %struct._xmlNode*, align 8
  store i8* %0, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !57, metadata !DIExpression()), !dbg !58
  store i8* %1, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !59, metadata !DIExpression()), !dbg !60
  store i8* %2, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !61, metadata !DIExpression()), !dbg !62
  store i32 %3, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !63, metadata !DIExpression()), !dbg !64
  store i8* %4, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !65, metadata !DIExpression()), !dbg !66
  store i8* %5, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !67, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.declare(metadata %struct._xmlValidCtxt* %14, metadata !69, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.declare(metadata i32* %15, metadata !86, metadata !DIExpression()), !dbg !87
  store i32 0, i32* %15, align 4, !dbg !87
  call void @llvm.dbg.declare(metadata i32** %16, metadata !88, metadata !DIExpression()), !dbg !90
  store i32* null, i32** %16, align 8, !dbg !90
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %17, metadata !91, metadata !DIExpression()), !dbg !92
  store %struct._xmlNode* null, %struct._xmlNode** %17, align 8, !dbg !92
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %18, metadata !93, metadata !DIExpression()), !dbg !94
  store %struct._xmlNode* null, %struct._xmlNode** %18, align 8, !dbg !94
  %19 = bitcast i32* %15 to i8*, !dbg !95
  call void @klee_make_symbolic(i8* noundef %19, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !96
  %20 = bitcast i32** %16 to i8*, !dbg !97
  call void @klee_make_symbolic(i8* noundef %20, i64 noundef 8, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)), !dbg !98
  %21 = bitcast %struct._xmlNode** %17 to i8*, !dbg !99
  call void @klee_make_symbolic(i8* noundef %21, i64 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !dbg !100
  %22 = bitcast %struct._xmlNode** %18 to i8*, !dbg !101
  call void @klee_make_symbolic(i8* noundef %22, i64 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)), !dbg !102
  %23 = load i32*, i32** %16, align 8, !dbg !103
  %24 = icmp eq i32* %23, null, !dbg !105
  br i1 %24, label %25, label %26, !dbg !106

25:                                               ; preds = %6
  store i32 -1, i32* %7, align 4, !dbg !107
  br label %51, !dbg !107

26:                                               ; preds = %6
  %27 = load i32, i32* %15, align 4, !dbg !108
  %28 = icmp sle i32 %27, 0, !dbg !110
  br i1 %28, label %29, label %30, !dbg !111

29:                                               ; preds = %26
  store i32 -1, i32* %7, align 4, !dbg !112
  br label %51, !dbg !112

30:                                               ; preds = %26
  %31 = bitcast %struct._xmlValidCtxt* %14 to i8*, !dbg !113
  %32 = call i8* @memset(i8* %31, i32 0, i64 64), !dbg !113
  %33 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.5, i64 0, i64 0), i32 noundef 113, i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.xmlAddElementDecl, i64 0, i64 0)), !dbg !114
  %34 = load i32, i32* @xmlNoValidityErr, align 4, !dbg !115
  %35 = getelementptr inbounds %struct._xmlValidCtxt, %struct._xmlValidCtxt* %14, i32 0, i32 1, !dbg !116
  store i32 %34, i32* %35, align 8, !dbg !117
  store i32 0, i32* @nb_valid_elements, align 4, !dbg !118
  %36 = load %struct._xmlNode*, %struct._xmlNode** %17, align 8, !dbg !119
  %37 = icmp ne %struct._xmlNode* %36, null, !dbg !119
  br i1 %37, label %38, label %40, !dbg !119

38:                                               ; preds = %30
  %39 = load %struct._xmlNode*, %struct._xmlNode** %17, align 8, !dbg !120
  br label %42, !dbg !119

40:                                               ; preds = %30
  %41 = load %struct._xmlNode*, %struct._xmlNode** %18, align 8, !dbg !121
  br label %42, !dbg !119

42:                                               ; preds = %40, %38
  %43 = phi %struct._xmlNode* [ %39, %38 ], [ %41, %40 ], !dbg !119
  store %struct._xmlNode* %43, %struct._xmlNode** @ref_node, align 8, !dbg !122
  %44 = load %struct._xmlNode*, %struct._xmlNode** @ref_node, align 8, !dbg !123
  %45 = icmp ne %struct._xmlNode* %44, null, !dbg !123
  br i1 %45, label %46, label %50, !dbg !125

46:                                               ; preds = %42
  %47 = load %struct._xmlNode*, %struct._xmlNode** @ref_node, align 8, !dbg !126
  %48 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %47, i32 0, i32 5, !dbg !128
  %49 = load %struct._xmlNode*, %struct._xmlNode** %48, align 8, !dbg !128
  store %struct._xmlNode* %49, %struct._xmlNode** @parent, align 8, !dbg !129
  br label %50, !dbg !130

50:                                               ; preds = %46, %42
  store i32 0, i32* %7, align 4, !dbg !131
  br label %51, !dbg !131

51:                                               ; preds = %50, %29, %25
  %52 = load i32, i32* %7, align 4, !dbg !132
  ret i32 %52, !dbg !132
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !133 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !136, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.declare(metadata i8** %3, metadata !138, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.declare(metadata i8** %4, metadata !140, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.declare(metadata i32* %5, metadata !142, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.declare(metadata i8** %6, metadata !144, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.declare(metadata i8** %7, metadata !146, metadata !DIExpression()), !dbg !147
  %8 = bitcast i8** %2 to i8*, !dbg !148
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)), !dbg !149
  %9 = bitcast i8** %3 to i8*, !dbg !150
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)), !dbg !151
  %10 = call noalias i8* @malloc(i64 noundef 64) #7, !dbg !152
  store i8* %10, i8** %4, align 8, !dbg !153
  %11 = load i8*, i8** %4, align 8, !dbg !154
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 64, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)), !dbg !155
  %12 = load i8*, i8** %4, align 8, !dbg !156
  %13 = getelementptr inbounds i8, i8* %12, i64 63, !dbg !157
  store i8 0, i8* %13, align 1, !dbg !158
  %14 = bitcast i32* %5 to i8*, !dbg !159
  call void @klee_make_symbolic(i8* noundef %14, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0)), !dbg !160
  %15 = call noalias i8* @malloc(i64 noundef 128) #7, !dbg !161
  store i8* %15, i8** %6, align 8, !dbg !162
  %16 = load i8*, i8** %6, align 8, !dbg !163
  call void @klee_make_symbolic(i8* noundef %16, i64 noundef 128, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0)), !dbg !164
  %17 = call noalias i8* @malloc(i64 noundef 128) #7, !dbg !165
  store i8* %17, i8** %7, align 8, !dbg !166
  %18 = load i8*, i8** %7, align 8, !dbg !167
  call void @klee_make_symbolic(i8* noundef %18, i64 noundef 128, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0)), !dbg !168
  %19 = load i8*, i8** %2, align 8, !dbg !169
  %20 = load i8*, i8** %3, align 8, !dbg !170
  %21 = load i8*, i8** %4, align 8, !dbg !171
  %22 = load i32, i32* %5, align 4, !dbg !172
  %23 = load i8*, i8** %6, align 8, !dbg !173
  %24 = load i8*, i8** %7, align 8, !dbg !174
  %25 = call i32 @xmlAddElementDecl(i8* noundef %19, i8* noundef %20, i8* noundef %21, i32 noundef %22, i8* noundef %23, i8* noundef %24), !dbg !175
  %26 = load i8*, i8** %4, align 8, !dbg !176
  call void @free(i8* noundef %26) #7, !dbg !177
  %27 = load i8*, i8** %6, align 8, !dbg !178
  call void @free(i8* noundef %27) #7, !dbg !179
  %28 = load i8*, i8** %7, align 8, !dbg !180
  call void @free(i8* noundef %28) #7, !dbg !181
  ret i32 0, !dbg !182
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !183 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !190, metadata !DIExpression()), !dbg !191
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !192, metadata !DIExpression()), !dbg !193
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !194, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.declare(metadata i8** %7, metadata !196, metadata !DIExpression()), !dbg !197
  %8 = load i8*, i8** %4, align 8, !dbg !198
  store i8* %8, i8** %7, align 8, !dbg !197
  br label %9, !dbg !199

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !200
  %11 = add i64 %10, -1, !dbg !200
  store i64 %11, i64* %6, align 8, !dbg !200
  %12 = icmp ugt i64 %10, 0, !dbg !201
  br i1 %12, label %13, label %18, !dbg !199

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !202
  %15 = trunc i32 %14 to i8, !dbg !202
  %16 = load i8*, i8** %7, align 8, !dbg !203
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !203
  store i8* %17, i8** %7, align 8, !dbg !203
  store i8 %15, i8* %16, align 1, !dbg !204
  br label %9, !dbg !199, !llvm.loop !205

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !207
  ret i8* %19, !dbg !208
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2, !43}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52, !52}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "xmlNoValidityErr", scope: !2, file: !3, line: 71, type: !11, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/165_valid.c_6881_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "25cb0aaff2ba12f1de48899b20dbfa41")
!4 = !{!5, !6}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !{!9, !12, !41, !0}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "nb_valid_elements", scope: !2, file: !3, line: 74, type: !11, isLocal: true, isDefinition: true)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "ref_node", scope: !2, file: !3, line: 75, type: !14, isLocal: true, isDefinition: true)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !3, line: 11, baseType: !16)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !3, line: 29, size: 832, elements: !17)
!17 = !{!18, !19, !20, !23, !25, !26, !27, !28, !29, !32, !33, !36, !39}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !16, file: !3, line: 30, baseType: !5, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !16, file: !3, line: 31, baseType: !11, size: 32, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !16, file: !3, line: 32, baseType: !21, size: 64, offset: 128)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !16, file: !3, line: 33, baseType: !24, size: 64, offset: 192)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !16, file: !3, line: 34, baseType: !24, size: 64, offset: 256)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !16, file: !3, line: 35, baseType: !24, size: 64, offset: 320)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !16, file: !3, line: 36, baseType: !24, size: 64, offset: 384)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !16, file: !3, line: 37, baseType: !24, size: 64, offset: 448)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !16, file: !3, line: 38, baseType: !30, size: 64, offset: 512)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !3, line: 38, flags: DIFlagFwdDecl)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !16, file: !3, line: 39, baseType: !6, size: 64, offset: 576)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !16, file: !3, line: 40, baseType: !34, size: 64, offset: 640)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !3, line: 40, flags: DIFlagFwdDecl)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !16, file: !3, line: 41, baseType: !37, size: 64, offset: 704)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !3, line: 41, flags: DIFlagFwdDecl)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !16, file: !3, line: 42, baseType: !40, size: 16, offset: 768)
!40 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "parent", scope: !2, file: !3, line: 76, type: !14, isLocal: true, isDefinition: true)
!43 = distinct !DICompileUnit(language: DW_LANG_C99, file: !44, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!44 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!45 = !{i32 7, !"Dwarf Version", i32 5}
!46 = !{i32 2, !"Debug Info Version", i32 3}
!47 = !{i32 1, !"wchar_size", i32 4}
!48 = !{i32 7, !"PIC Level", i32 2}
!49 = !{i32 7, !"PIE Level", i32 2}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"Ubuntu clang version 14.0.6"}
!53 = distinct !DISubprogram(name: "xmlAddElementDecl", scope: !3, file: !3, line: 79, type: !54, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !56)
!54 = !DISubroutineType(types: !55)
!55 = !{!11, !5, !5, !21, !11, !5, !5}
!56 = !{}
!57 = !DILocalVariable(name: "ctxt", arg: 1, scope: !53, file: !3, line: 79, type: !5)
!58 = !DILocation(line: 79, column: 29, scope: !53)
!59 = !DILocalVariable(name: "dtd", arg: 2, scope: !53, file: !3, line: 79, type: !5)
!60 = !DILocation(line: 79, column: 41, scope: !53)
!61 = !DILocalVariable(name: "name", arg: 3, scope: !53, file: !3, line: 79, type: !21)
!62 = !DILocation(line: 79, column: 58, scope: !53)
!63 = !DILocalVariable(name: "type", arg: 4, scope: !53, file: !3, line: 79, type: !11)
!64 = !DILocation(line: 79, column: 68, scope: !53)
!65 = !DILocalVariable(name: "content", arg: 5, scope: !53, file: !3, line: 80, type: !5)
!66 = !DILocation(line: 80, column: 29, scope: !53)
!67 = !DILocalVariable(name: "attributes", arg: 6, scope: !53, file: !3, line: 80, type: !5)
!68 = !DILocation(line: 80, column: 44, scope: !53)
!69 = !DILocalVariable(name: "vctxt", scope: !53, file: !3, line: 82, type: !70)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlValidCtxt", file: !3, line: 10, baseType: !71)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlValidCtxt", file: !3, line: 15, size: 512, elements: !72)
!72 = !{!73, !74, !75, !76, !77, !78, !80, !81, !82, !83, !84}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !71, file: !3, line: 16, baseType: !5, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !71, file: !3, line: 17, baseType: !11, size: 32, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "warning", scope: !71, file: !3, line: 18, baseType: !11, size: 32, offset: 96)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "nodeMax", scope: !71, file: !3, line: 19, baseType: !11, size: 32, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "nodeNr", scope: !71, file: !3, line: 20, baseType: !11, size: 32, offset: 160)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !71, file: !3, line: 21, baseType: !79, size: 64, offset: 192)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "finishDtd", scope: !71, file: !3, line: 22, baseType: !11, size: 32, offset: 256)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !71, file: !3, line: 23, baseType: !11, size: 32, offset: 288)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !71, file: !3, line: 24, baseType: !11, size: 32, offset: 320)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "vstate", scope: !71, file: !3, line: 25, baseType: !14, size: 64, offset: 384)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "am", scope: !71, file: !3, line: 26, baseType: !11, size: 32, offset: 448)
!85 = !DILocation(line: 82, column: 18, scope: !53)
!86 = !DILocalVariable(name: "max", scope: !53, file: !3, line: 83, type: !11)
!87 = !DILocation(line: 83, column: 9, scope: !53)
!88 = !DILocalVariable(name: "names", scope: !53, file: !3, line: 84, type: !89)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!90 = !DILocation(line: 84, column: 10, scope: !53)
!91 = !DILocalVariable(name: "prev", scope: !53, file: !3, line: 85, type: !14)
!92 = !DILocation(line: 85, column: 14, scope: !53)
!93 = !DILocalVariable(name: "next", scope: !53, file: !3, line: 86, type: !14)
!94 = !DILocation(line: 86, column: 14, scope: !53)
!95 = !DILocation(line: 89, column: 24, scope: !53)
!96 = !DILocation(line: 89, column: 5, scope: !53)
!97 = !DILocation(line: 90, column: 24, scope: !53)
!98 = !DILocation(line: 90, column: 5, scope: !53)
!99 = !DILocation(line: 91, column: 24, scope: !53)
!100 = !DILocation(line: 91, column: 5, scope: !53)
!101 = !DILocation(line: 92, column: 24, scope: !53)
!102 = !DILocation(line: 92, column: 5, scope: !53)
!103 = !DILocation(line: 95, column: 9, scope: !104)
!104 = distinct !DILexicalBlock(scope: !53, file: !3, line: 95, column: 9)
!105 = !DILocation(line: 95, column: 15, scope: !104)
!106 = !DILocation(line: 95, column: 9, scope: !53)
!107 = !DILocation(line: 95, column: 24, scope: !104)
!108 = !DILocation(line: 96, column: 9, scope: !109)
!109 = distinct !DILexicalBlock(scope: !53, file: !3, line: 96, column: 9)
!110 = !DILocation(line: 96, column: 13, scope: !109)
!111 = !DILocation(line: 96, column: 9, scope: !53)
!112 = !DILocation(line: 96, column: 19, scope: !109)
!113 = !DILocation(line: 99, column: 5, scope: !53)
!114 = !DILocation(line: 113, column: 5, scope: !53)
!115 = !DILocation(line: 115, column: 19, scope: !53)
!116 = !DILocation(line: 115, column: 11, scope: !53)
!117 = !DILocation(line: 115, column: 17, scope: !53)
!118 = !DILocation(line: 117, column: 23, scope: !53)
!119 = !DILocation(line: 118, column: 16, scope: !53)
!120 = !DILocation(line: 118, column: 23, scope: !53)
!121 = !DILocation(line: 118, column: 30, scope: !53)
!122 = !DILocation(line: 118, column: 14, scope: !53)
!123 = !DILocation(line: 119, column: 9, scope: !124)
!124 = distinct !DILexicalBlock(scope: !53, file: !3, line: 119, column: 9)
!125 = !DILocation(line: 119, column: 9, scope: !53)
!126 = !DILocation(line: 120, column: 18, scope: !127)
!127 = distinct !DILexicalBlock(scope: !124, file: !3, line: 119, column: 19)
!128 = !DILocation(line: 120, column: 28, scope: !127)
!129 = !DILocation(line: 120, column: 16, scope: !127)
!130 = !DILocation(line: 121, column: 5, scope: !127)
!131 = !DILocation(line: 123, column: 5, scope: !53)
!132 = !DILocation(line: 124, column: 1, scope: !53)
!133 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 127, type: !134, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !56)
!134 = !DISubroutineType(types: !135)
!135 = !{!11}
!136 = !DILocalVariable(name: "ctxt", scope: !133, file: !3, line: 128, type: !5)
!137 = !DILocation(line: 128, column: 11, scope: !133)
!138 = !DILocalVariable(name: "dtd", scope: !133, file: !3, line: 128, type: !5)
!139 = !DILocation(line: 128, column: 18, scope: !133)
!140 = !DILocalVariable(name: "name", scope: !133, file: !3, line: 129, type: !21)
!141 = !DILocation(line: 129, column: 17, scope: !133)
!142 = !DILocalVariable(name: "type", scope: !133, file: !3, line: 130, type: !11)
!143 = !DILocation(line: 130, column: 9, scope: !133)
!144 = !DILocalVariable(name: "content", scope: !133, file: !3, line: 131, type: !5)
!145 = !DILocation(line: 131, column: 11, scope: !133)
!146 = !DILocalVariable(name: "attributes", scope: !133, file: !3, line: 131, type: !5)
!147 = !DILocation(line: 131, column: 21, scope: !133)
!148 = !DILocation(line: 134, column: 24, scope: !133)
!149 = !DILocation(line: 134, column: 5, scope: !133)
!150 = !DILocation(line: 135, column: 24, scope: !133)
!151 = !DILocation(line: 135, column: 5, scope: !133)
!152 = !DILocation(line: 138, column: 12, scope: !133)
!153 = !DILocation(line: 138, column: 10, scope: !133)
!154 = !DILocation(line: 139, column: 31, scope: !133)
!155 = !DILocation(line: 139, column: 5, scope: !133)
!156 = !DILocation(line: 141, column: 13, scope: !133)
!157 = !DILocation(line: 141, column: 5, scope: !133)
!158 = !DILocation(line: 141, column: 23, scope: !133)
!159 = !DILocation(line: 143, column: 24, scope: !133)
!160 = !DILocation(line: 143, column: 5, scope: !133)
!161 = !DILocation(line: 146, column: 15, scope: !133)
!162 = !DILocation(line: 146, column: 13, scope: !133)
!163 = !DILocation(line: 147, column: 24, scope: !133)
!164 = !DILocation(line: 147, column: 5, scope: !133)
!165 = !DILocation(line: 149, column: 18, scope: !133)
!166 = !DILocation(line: 149, column: 16, scope: !133)
!167 = !DILocation(line: 150, column: 24, scope: !133)
!168 = !DILocation(line: 150, column: 5, scope: !133)
!169 = !DILocation(line: 153, column: 23, scope: !133)
!170 = !DILocation(line: 153, column: 29, scope: !133)
!171 = !DILocation(line: 153, column: 34, scope: !133)
!172 = !DILocation(line: 153, column: 40, scope: !133)
!173 = !DILocation(line: 153, column: 46, scope: !133)
!174 = !DILocation(line: 153, column: 55, scope: !133)
!175 = !DILocation(line: 153, column: 5, scope: !133)
!176 = !DILocation(line: 156, column: 17, scope: !133)
!177 = !DILocation(line: 156, column: 5, scope: !133)
!178 = !DILocation(line: 157, column: 10, scope: !133)
!179 = !DILocation(line: 157, column: 5, scope: !133)
!180 = !DILocation(line: 158, column: 10, scope: !133)
!181 = !DILocation(line: 158, column: 5, scope: !133)
!182 = !DILocation(line: 160, column: 5, scope: !133)
!183 = distinct !DISubprogram(name: "memset", scope: !184, file: !184, line: 12, type: !185, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !56)
!184 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!185 = !DISubroutineType(types: !186)
!186 = !{!5, !5, !11, !187}
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !188, line: 46, baseType: !189)
!188 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!189 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!190 = !DILocalVariable(name: "dst", arg: 1, scope: !183, file: !184, line: 12, type: !5)
!191 = !DILocation(line: 12, column: 20, scope: !183)
!192 = !DILocalVariable(name: "s", arg: 2, scope: !183, file: !184, line: 12, type: !11)
!193 = !DILocation(line: 12, column: 29, scope: !183)
!194 = !DILocalVariable(name: "count", arg: 3, scope: !183, file: !184, line: 12, type: !187)
!195 = !DILocation(line: 12, column: 39, scope: !183)
!196 = !DILocalVariable(name: "a", scope: !183, file: !184, line: 13, type: !6)
!197 = !DILocation(line: 13, column: 9, scope: !183)
!198 = !DILocation(line: 13, column: 13, scope: !183)
!199 = !DILocation(line: 14, column: 3, scope: !183)
!200 = !DILocation(line: 14, column: 15, scope: !183)
!201 = !DILocation(line: 14, column: 18, scope: !183)
!202 = !DILocation(line: 15, column: 12, scope: !183)
!203 = !DILocation(line: 15, column: 7, scope: !183)
!204 = !DILocation(line: 15, column: 10, scope: !183)
!205 = distinct !{!205, !199, !202, !206}
!206 = !{!"llvm.loop.mustprogress"}
!207 = !DILocation(line: 16, column: 10, scope: !183)
!208 = !DILocation(line: 16, column: 3, scope: !183)

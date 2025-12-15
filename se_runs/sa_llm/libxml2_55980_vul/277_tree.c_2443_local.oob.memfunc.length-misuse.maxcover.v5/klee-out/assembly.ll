; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/277_tree.c_2443_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/277_tree.c_2443_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, %struct._xmlAttr*, i8*, i8*, i16, i16 }
%struct._xmlDoc = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, i32, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlNs*, i8*, i8*, i8*, i8*, i8*, i32, %struct._xmlDict*, i8*, i32, i32 }
%struct._xmlDtd = type opaque
%struct._xmlNs = type opaque
%struct._xmlDict = type opaque
%struct._xmlAttr = type opaque

@__xmlRegisterCallbacks = dso_local global i32 0, align 4, !dbg !0
@xmlRegisterNodeDefaultValue = dso_local global void (%struct._xmlNode*)* null, align 8, !dbg !73
@.str = private unnamed_addr constant [17 x i8] c"xmlMalloc_buffer\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"building fragment\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [126 x i8] c"(__builtin_object_size(cur, 0) >= sizeof(xmlNode) || __builtin_object_size(cur, 1) >= sizeof(xmlNode)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_55980_vul/277_tree.c_2443_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlNewDocFragment = private unnamed_addr constant [40 x i8] c"xmlNodePtr xmlNewDocFragment(xmlDocPtr)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"doc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlTreeErrMemory(i8* noundef %0) #0 !dbg !88 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !92, metadata !DIExpression()), !dbg !93
  ret void, !dbg !94
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !95 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !101, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.declare(metadata i8** %3, metadata !103, metadata !DIExpression()), !dbg !104
  %4 = load i64, i64* %2, align 8, !dbg !105
  %5 = call noalias i8* @malloc(i64 noundef %4) #7, !dbg !106
  store i8* %5, i8** %3, align 8, !dbg !104
  %6 = load i8*, i8** %3, align 8, !dbg !107
  %7 = icmp ne i8* %6, null, !dbg !107
  br i1 %7, label %8, label %11, !dbg !109

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8, !dbg !110
  %10 = load i64, i64* %2, align 8, !dbg !112
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef %10, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)), !dbg !113
  br label %11, !dbg !114

11:                                               ; preds = %8, %1
  %12 = load i8*, i8** %3, align 8, !dbg !115
  ret i8* %12, !dbg !116
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlNode* @xmlNewDocFragment(%struct._xmlDoc* noundef %0) #0 !dbg !117 {
  %2 = alloca %struct._xmlNode*, align 8
  %3 = alloca %struct._xmlDoc*, align 8
  %4 = alloca %struct._xmlNode*, align 8
  store %struct._xmlDoc* %0, %struct._xmlDoc** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %3, metadata !120, metadata !DIExpression()), !dbg !121
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %4, metadata !122, metadata !DIExpression()), !dbg !123
  %5 = call i8* @xmlMalloc(i64 noundef 120), !dbg !124
  %6 = bitcast i8* %5 to %struct._xmlNode*, !dbg !125
  store %struct._xmlNode* %6, %struct._xmlNode** %4, align 8, !dbg !126
  %7 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !127
  %8 = icmp eq %struct._xmlNode* %7, null, !dbg !129
  br i1 %8, label %9, label %10, !dbg !130

9:                                                ; preds = %1
  call void @xmlTreeErrMemory(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0)), !dbg !131
  store %struct._xmlNode* null, %struct._xmlNode** %2, align 8, !dbg !133
  br label %42, !dbg !133

10:                                               ; preds = %1
  %11 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !134
  %12 = bitcast %struct._xmlNode* %11 to i8*, !dbg !135
  %13 = call i8* @memset(i8* %12, i32 0, i64 120), !dbg !135
  %14 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !136
  %15 = bitcast %struct._xmlNode* %14 to i8*, !dbg !136
  %16 = icmp uge i64 -1, 120, !dbg !136
  br i1 %16, label %21, label %17, !dbg !136

17:                                               ; preds = %10
  %18 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !136
  %19 = bitcast %struct._xmlNode* %18 to i8*, !dbg !136
  %20 = icmp uge i64 -1, 120, !dbg !136
  br i1 %20, label %21, label %23, !dbg !136

21:                                               ; preds = %17, %10
  br i1 true, label %22, label %23, !dbg !136

22:                                               ; preds = %21
  br label %25, !dbg !136

23:                                               ; preds = %21, %17
  %24 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([126 x i8], [126 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.4, i64 0, i64 0), i32 noundef 96, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.xmlNewDocFragment, i64 0, i64 0)), !dbg !136
  br label %25, !dbg !136

25:                                               ; preds = %23, %22
  %26 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.4, i64 0, i64 0), i32 noundef 99, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.xmlNewDocFragment, i64 0, i64 0)), !dbg !137
  %27 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !138
  %28 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %27, i32 0, i32 1, !dbg !139
  store i32 11, i32* %28, align 8, !dbg !140
  %29 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !141
  %30 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !142
  %31 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %30, i32 0, i32 8, !dbg !143
  store %struct._xmlDoc* %29, %struct._xmlDoc** %31, align 8, !dbg !144
  %32 = load i32, i32* @__xmlRegisterCallbacks, align 4, !dbg !145
  %33 = icmp ne i32 %32, 0, !dbg !147
  br i1 %33, label %34, label %40, !dbg !148

34:                                               ; preds = %25
  %35 = load void (%struct._xmlNode*)*, void (%struct._xmlNode*)** @xmlRegisterNodeDefaultValue, align 8, !dbg !149
  %36 = icmp ne void (%struct._xmlNode*)* %35, null, !dbg !150
  br i1 %36, label %37, label %40, !dbg !151

37:                                               ; preds = %34
  %38 = load void (%struct._xmlNode*)*, void (%struct._xmlNode*)** @xmlRegisterNodeDefaultValue, align 8, !dbg !152
  %39 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !153
  call void %38(%struct._xmlNode* noundef %39), !dbg !152
  br label %40, !dbg !152

40:                                               ; preds = %37, %34, %25
  %41 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !154
  store %struct._xmlNode* %41, %struct._xmlNode** %2, align 8, !dbg !155
  br label %42, !dbg !155

42:                                               ; preds = %40, %9
  %43 = load %struct._xmlNode*, %struct._xmlNode** %2, align 8, !dbg !156
  ret %struct._xmlNode* %43, !dbg !156
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !157 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlDoc*, align 8
  %3 = alloca %struct._xmlNode*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %2, metadata !160, metadata !DIExpression()), !dbg !161
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %3, metadata !162, metadata !DIExpression()), !dbg !163
  %4 = call noalias i8* @malloc(i64 noundef 176) #7, !dbg !164
  %5 = bitcast i8* %4 to %struct._xmlDoc*, !dbg !165
  store %struct._xmlDoc* %5, %struct._xmlDoc** %2, align 8, !dbg !166
  %6 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !167
  %7 = bitcast %struct._xmlDoc* %6 to i8*, !dbg !167
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 176, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)), !dbg !168
  %8 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !169
  %9 = icmp ne %struct._xmlDoc* %8, null, !dbg !170
  %10 = zext i1 %9 to i32, !dbg !170
  %11 = sext i32 %10 to i64, !dbg !169
  call void @klee_assume(i64 noundef %11), !dbg !171
  %12 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !172
  %13 = call %struct._xmlNode* @xmlNewDocFragment(%struct._xmlDoc* noundef %12), !dbg !173
  store %struct._xmlNode* %13, %struct._xmlNode** %3, align 8, !dbg !174
  %14 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !175
  %15 = icmp ne %struct._xmlNode* %14, null, !dbg !175
  br i1 %15, label %16, label %19, !dbg !177

16:                                               ; preds = %0
  %17 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !178
  %18 = bitcast %struct._xmlNode* %17 to i8*, !dbg !178
  call void @free(i8* noundef %18) #7, !dbg !180
  br label %19, !dbg !181

19:                                               ; preds = %16, %0
  %20 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !182
  %21 = bitcast %struct._xmlDoc* %20 to i8*, !dbg !182
  call void @free(i8* noundef %21) #7, !dbg !183
  ret i32 0, !dbg !184
}

declare void @klee_assume(i64 noundef) #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !185 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !189, metadata !DIExpression()), !dbg !190
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !191, metadata !DIExpression()), !dbg !192
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !193, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.declare(metadata i8** %7, metadata !195, metadata !DIExpression()), !dbg !196
  %8 = load i8*, i8** %4, align 8, !dbg !197
  store i8* %8, i8** %7, align 8, !dbg !196
  br label %9, !dbg !198

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !199
  %11 = add i64 %10, -1, !dbg !199
  store i64 %11, i64* %6, align 8, !dbg !199
  %12 = icmp ugt i64 %10, 0, !dbg !200
  br i1 %12, label %13, label %18, !dbg !198

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !201
  %15 = trunc i32 %14 to i8, !dbg !201
  %16 = load i8*, i8** %7, align 8, !dbg !202
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !202
  store i8* %17, i8** %7, align 8, !dbg !202
  store i8 %15, i8* %16, align 1, !dbg !203
  br label %9, !dbg !198, !llvm.loop !204

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !206
  ret i8* %19, !dbg !207
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2, !78}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87, !87}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__xmlRegisterCallbacks", scope: !2, file: !3, line: 62, type: !13, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !72, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/277_tree.c_2443_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "ff174bc664154aa522d4056629cf7072")
!4 = !{!5, !11, !69}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !3, line: 11, baseType: !6)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !3, line: 10, baseType: !8)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !3, line: 15, size: 960, elements: !9)
!9 = !{!10, !12, !14, !18, !20, !21, !22, !23, !24, !59, !60, !61, !64, !65, !66, !68}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !8, file: !3, line: 16, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !8, file: !3, line: 17, baseType: !13, size: 32, offset: 64)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !8, file: !3, line: 18, baseType: !15, size: 64, offset: 128)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !8, file: !3, line: 19, baseType: !19, size: 64, offset: 192)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !8, file: !3, line: 20, baseType: !19, size: 64, offset: 256)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !8, file: !3, line: 21, baseType: !19, size: 64, offset: 320)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !8, file: !3, line: 22, baseType: !19, size: 64, offset: 384)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !8, file: !3, line: 23, baseType: !19, size: 64, offset: 448)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !8, file: !3, line: 24, baseType: !25, size: 64, offset: 512)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !3, line: 34, size: 1408, elements: !27)
!27 = !{!28, !29, !30, !32, !33, !34, !35, !36, !37, !38, !39, !40, !43, !44, !47, !48, !49, !50, !51, !52, !53, !56, !57, !58}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !26, file: !3, line: 35, baseType: !11, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !26, file: !3, line: 36, baseType: !13, size: 32, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !26, file: !3, line: 37, baseType: !31, size: 64, offset: 128)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !26, file: !3, line: 38, baseType: !19, size: 64, offset: 192)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !26, file: !3, line: 39, baseType: !19, size: 64, offset: 256)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !26, file: !3, line: 40, baseType: !19, size: 64, offset: 320)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !26, file: !3, line: 41, baseType: !19, size: 64, offset: 384)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !26, file: !3, line: 42, baseType: !19, size: 64, offset: 448)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !26, file: !3, line: 43, baseType: !25, size: 64, offset: 512)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !26, file: !3, line: 44, baseType: !13, size: 32, offset: 576)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !26, file: !3, line: 45, baseType: !13, size: 32, offset: 608)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !26, file: !3, line: 46, baseType: !41, size: 64, offset: 640)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !3, line: 46, flags: DIFlagFwdDecl)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !26, file: !3, line: 47, baseType: !41, size: 64, offset: 704)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !26, file: !3, line: 48, baseType: !45, size: 64, offset: 768)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !3, line: 48, flags: DIFlagFwdDecl)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !26, file: !3, line: 49, baseType: !15, size: 64, offset: 832)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !26, file: !3, line: 50, baseType: !15, size: 64, offset: 896)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !26, file: !3, line: 51, baseType: !11, size: 64, offset: 960)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !26, file: !3, line: 52, baseType: !11, size: 64, offset: 1024)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !26, file: !3, line: 53, baseType: !15, size: 64, offset: 1088)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !26, file: !3, line: 54, baseType: !13, size: 32, offset: 1152)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !26, file: !3, line: 55, baseType: !54, size: 64, offset: 1216)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !3, line: 55, flags: DIFlagFwdDecl)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !26, file: !3, line: 56, baseType: !11, size: 64, offset: 1280)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !26, file: !3, line: 57, baseType: !13, size: 32, offset: 1344)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !26, file: !3, line: 58, baseType: !13, size: 32, offset: 1376)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !8, file: !3, line: 25, baseType: !11, size: 64, offset: 576)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !8, file: !3, line: 26, baseType: !31, size: 64, offset: 640)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !8, file: !3, line: 27, baseType: !62, size: 64, offset: 704)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !3, line: 27, flags: DIFlagFwdDecl)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !8, file: !3, line: 28, baseType: !11, size: 64, offset: 768)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !8, file: !3, line: 29, baseType: !11, size: 64, offset: 832)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !8, file: !3, line: 30, baseType: !67, size: 16, offset: 896)
!67 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !8, file: !3, line: 31, baseType: !67, size: 16, offset: 912)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !3, line: 13, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !3, line: 12, baseType: !26)
!72 = !{!0, !73}
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "xmlRegisterNodeDefaultValue", scope: !2, file: !3, line: 63, type: !75, isLocal: false, isDefinition: true)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DISubroutineType(types: !77)
!77 = !{null, !5}
!78 = distinct !DICompileUnit(language: DW_LANG_C99, file: !79, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!79 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!80 = !{i32 7, !"Dwarf Version", i32 5}
!81 = !{i32 2, !"Debug Info Version", i32 3}
!82 = !{i32 1, !"wchar_size", i32 4}
!83 = !{i32 7, !"PIC Level", i32 2}
!84 = !{i32 7, !"PIE Level", i32 2}
!85 = !{i32 7, !"uwtable", i32 1}
!86 = !{i32 7, !"frame-pointer", i32 2}
!87 = !{!"Ubuntu clang version 14.0.6"}
!88 = distinct !DISubprogram(name: "xmlTreeErrMemory", scope: !3, file: !3, line: 66, type: !89, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !91)
!89 = !DISubroutineType(types: !90)
!90 = !{null, !15}
!91 = !{}
!92 = !DILocalVariable(name: "msg", arg: 1, scope: !88, file: !3, line: 66, type: !15)
!93 = !DILocation(line: 66, column: 35, scope: !88)
!94 = !DILocation(line: 68, column: 1, scope: !88)
!95 = distinct !DISubprogram(name: "xmlMalloc", scope: !3, file: !3, line: 70, type: !96, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !91)
!96 = !DISubroutineType(types: !97)
!97 = !{!11, !98}
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !99, line: 46, baseType: !100)
!99 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!100 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!101 = !DILocalVariable(name: "size", arg: 1, scope: !95, file: !3, line: 70, type: !98)
!102 = !DILocation(line: 70, column: 24, scope: !95)
!103 = !DILocalVariable(name: "ptr", scope: !95, file: !3, line: 71, type: !11)
!104 = !DILocation(line: 71, column: 11, scope: !95)
!105 = !DILocation(line: 71, column: 24, scope: !95)
!106 = !DILocation(line: 71, column: 17, scope: !95)
!107 = !DILocation(line: 72, column: 9, scope: !108)
!108 = distinct !DILexicalBlock(scope: !95, file: !3, line: 72, column: 9)
!109 = !DILocation(line: 72, column: 9, scope: !95)
!110 = !DILocation(line: 73, column: 28, scope: !111)
!111 = distinct !DILexicalBlock(scope: !108, file: !3, line: 72, column: 14)
!112 = !DILocation(line: 73, column: 33, scope: !111)
!113 = !DILocation(line: 73, column: 9, scope: !111)
!114 = !DILocation(line: 74, column: 5, scope: !111)
!115 = !DILocation(line: 75, column: 12, scope: !95)
!116 = !DILocation(line: 75, column: 5, scope: !95)
!117 = distinct !DISubprogram(name: "xmlNewDocFragment", scope: !3, file: !3, line: 79, type: !118, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !91)
!118 = !DISubroutineType(types: !119)
!119 = !{!5, !69}
!120 = !DILocalVariable(name: "doc", arg: 1, scope: !117, file: !3, line: 79, type: !69)
!121 = !DILocation(line: 79, column: 40, scope: !117)
!122 = !DILocalVariable(name: "cur", scope: !117, file: !3, line: 80, type: !5)
!123 = !DILocation(line: 80, column: 16, scope: !117)
!124 = !DILocation(line: 85, column: 24, scope: !117)
!125 = !DILocation(line: 85, column: 11, scope: !117)
!126 = !DILocation(line: 85, column: 9, scope: !117)
!127 = !DILocation(line: 86, column: 9, scope: !128)
!128 = distinct !DILexicalBlock(scope: !117, file: !3, line: 86, column: 9)
!129 = !DILocation(line: 86, column: 13, scope: !128)
!130 = !DILocation(line: 86, column: 9, scope: !117)
!131 = !DILocation(line: 87, column: 9, scope: !132)
!132 = distinct !DILexicalBlock(scope: !128, file: !3, line: 86, column: 22)
!133 = !DILocation(line: 88, column: 9, scope: !132)
!134 = !DILocation(line: 92, column: 12, scope: !117)
!135 = !DILocation(line: 92, column: 5, scope: !117)
!136 = !DILocation(line: 95, column: 5, scope: !117)
!137 = !DILocation(line: 99, column: 5, scope: !117)
!138 = !DILocation(line: 101, column: 5, scope: !117)
!139 = !DILocation(line: 101, column: 10, scope: !117)
!140 = !DILocation(line: 101, column: 15, scope: !117)
!141 = !DILocation(line: 102, column: 16, scope: !117)
!142 = !DILocation(line: 102, column: 5, scope: !117)
!143 = !DILocation(line: 102, column: 10, scope: !117)
!144 = !DILocation(line: 102, column: 14, scope: !117)
!145 = !DILocation(line: 104, column: 10, scope: !146)
!146 = distinct !DILexicalBlock(scope: !117, file: !3, line: 104, column: 9)
!147 = !DILocation(line: 104, column: 9, scope: !146)
!148 = !DILocation(line: 104, column: 34, scope: !146)
!149 = !DILocation(line: 104, column: 38, scope: !146)
!150 = !DILocation(line: 104, column: 37, scope: !146)
!151 = !DILocation(line: 104, column: 9, scope: !117)
!152 = !DILocation(line: 105, column: 9, scope: !146)
!153 = !DILocation(line: 105, column: 37, scope: !146)
!154 = !DILocation(line: 106, column: 12, scope: !117)
!155 = !DILocation(line: 106, column: 5, scope: !117)
!156 = !DILocation(line: 107, column: 1, scope: !117)
!157 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 110, type: !158, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !91)
!158 = !DISubroutineType(types: !159)
!159 = !{!13}
!160 = !DILocalVariable(name: "doc", scope: !157, file: !3, line: 111, type: !69)
!161 = !DILocation(line: 111, column: 15, scope: !157)
!162 = !DILocalVariable(name: "result", scope: !157, file: !3, line: 112, type: !5)
!163 = !DILocation(line: 112, column: 16, scope: !157)
!164 = !DILocation(line: 115, column: 22, scope: !157)
!165 = !DILocation(line: 115, column: 11, scope: !157)
!166 = !DILocation(line: 115, column: 9, scope: !157)
!167 = !DILocation(line: 116, column: 24, scope: !157)
!168 = !DILocation(line: 116, column: 5, scope: !157)
!169 = !DILocation(line: 119, column: 17, scope: !157)
!170 = !DILocation(line: 119, column: 21, scope: !157)
!171 = !DILocation(line: 119, column: 5, scope: !157)
!172 = !DILocation(line: 122, column: 32, scope: !157)
!173 = !DILocation(line: 122, column: 14, scope: !157)
!174 = !DILocation(line: 122, column: 12, scope: !157)
!175 = !DILocation(line: 125, column: 9, scope: !176)
!176 = distinct !DILexicalBlock(scope: !157, file: !3, line: 125, column: 9)
!177 = !DILocation(line: 125, column: 9, scope: !157)
!178 = !DILocation(line: 126, column: 14, scope: !179)
!179 = distinct !DILexicalBlock(scope: !176, file: !3, line: 125, column: 17)
!180 = !DILocation(line: 126, column: 9, scope: !179)
!181 = !DILocation(line: 127, column: 5, scope: !179)
!182 = !DILocation(line: 128, column: 10, scope: !157)
!183 = !DILocation(line: 128, column: 5, scope: !157)
!184 = !DILocation(line: 130, column: 5, scope: !157)
!185 = distinct !DISubprogram(name: "memset", scope: !186, file: !186, line: 12, type: !187, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !78, retainedNodes: !91)
!186 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!187 = !DISubroutineType(types: !188)
!188 = !{!11, !11, !13, !98}
!189 = !DILocalVariable(name: "dst", arg: 1, scope: !185, file: !186, line: 12, type: !11)
!190 = !DILocation(line: 12, column: 20, scope: !185)
!191 = !DILocalVariable(name: "s", arg: 2, scope: !185, file: !186, line: 12, type: !13)
!192 = !DILocation(line: 12, column: 29, scope: !185)
!193 = !DILocalVariable(name: "count", arg: 3, scope: !185, file: !186, line: 12, type: !98)
!194 = !DILocation(line: 12, column: 39, scope: !185)
!195 = !DILocalVariable(name: "a", scope: !185, file: !186, line: 13, type: !31)
!196 = !DILocation(line: 13, column: 9, scope: !185)
!197 = !DILocation(line: 13, column: 13, scope: !185)
!198 = !DILocation(line: 14, column: 3, scope: !185)
!199 = !DILocation(line: 14, column: 15, scope: !185)
!200 = !DILocation(line: 14, column: 18, scope: !185)
!201 = !DILocation(line: 15, column: 12, scope: !185)
!202 = !DILocation(line: 15, column: 7, scope: !185)
!203 = !DILocation(line: 15, column: 10, scope: !185)
!204 = distinct !{!204, !198, !201, !205}
!205 = !{!"llvm.loop.mustprogress"}
!206 = !DILocation(line: 16, column: 10, scope: !185)
!207 = !DILocation(line: 16, column: 3, scope: !185)

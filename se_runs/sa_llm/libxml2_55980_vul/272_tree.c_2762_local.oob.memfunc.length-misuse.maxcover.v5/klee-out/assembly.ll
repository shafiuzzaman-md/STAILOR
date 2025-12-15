; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/272_tree.c_2762_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/272_tree.c_2762_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i16 }
%struct._xmlDoc = type opaque
%struct._xmlAttr = type opaque
%struct._xmlNs = type opaque

@__xmlRegisterCallbacks = dso_local global i32 0, align 4, !dbg !0
@xmlRegisterNodeDefaultValue = dso_local global void ()* null, align 8, !dbg !38
@.str = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@xmlStringComment = dso_local global i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), align 8, !dbg !43
@.str.1 = private unnamed_addr constant [17 x i8] c"building comment\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_55980_vul/272_tree.c_2762_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlNewComment = private unnamed_addr constant [39 x i8] c"xmlNodePtr xmlNewComment(const char *)\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"content\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlTreeErrMemory(i8* noundef %0) #0 !dbg !57 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !61, metadata !DIExpression()), !dbg !62
  ret void, !dbg !63
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !64 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !70, metadata !DIExpression()), !dbg !71
  %3 = load i64, i64* %2, align 8, !dbg !72
  %4 = call noalias i8* @malloc(i64 noundef %3) #9, !dbg !73
  ret i8* %4, !dbg !74
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlStrdup(i8* noundef %0) #0 !dbg !75 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !78, metadata !DIExpression()), !dbg !79
  %6 = load i8*, i8** %3, align 8, !dbg !80
  %7 = icmp eq i8* %6, null, !dbg !82
  br i1 %7, label %8, label %9, !dbg !83

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !84
  br label %24, !dbg !84

9:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata i64* %4, metadata !85, metadata !DIExpression()), !dbg !86
  %10 = load i8*, i8** %3, align 8, !dbg !87
  %11 = call i64 @strlen(i8* noundef %10) #10, !dbg !88
  %12 = add i64 %11, 1, !dbg !89
  store i64 %12, i64* %4, align 8, !dbg !86
  call void @llvm.dbg.declare(metadata i8** %5, metadata !90, metadata !DIExpression()), !dbg !91
  %13 = load i64, i64* %4, align 8, !dbg !92
  %14 = call noalias i8* @malloc(i64 noundef %13) #9, !dbg !93
  store i8* %14, i8** %5, align 8, !dbg !91
  %15 = load i8*, i8** %5, align 8, !dbg !94
  %16 = icmp ne i8* %15, null, !dbg !94
  br i1 %16, label %17, label %22, !dbg !96

17:                                               ; preds = %9
  %18 = load i8*, i8** %5, align 8, !dbg !97
  %19 = load i8*, i8** %3, align 8, !dbg !98
  %20 = load i64, i64* %4, align 8, !dbg !99
  %21 = call i8* @memcpy(i8* %18, i8* %19, i64 %20), !dbg !100
  br label %22, !dbg !100

22:                                               ; preds = %17, %9
  %23 = load i8*, i8** %5, align 8, !dbg !101
  store i8* %23, i8** %2, align 8, !dbg !102
  br label %24, !dbg !102

24:                                               ; preds = %22, %8
  %25 = load i8*, i8** %2, align 8, !dbg !103
  ret i8* %25, !dbg !103
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlNode* @xmlNewComment(i8* noundef %0) #0 !dbg !104 {
  %2 = alloca %struct._xmlNode*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._xmlNode*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !107, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %4, metadata !109, metadata !DIExpression()), !dbg !110
  %5 = call i8* @xmlMalloc(i64 noundef 104), !dbg !111
  %6 = bitcast i8* %5 to %struct._xmlNode*, !dbg !112
  store %struct._xmlNode* %6, %struct._xmlNode** %4, align 8, !dbg !113
  %7 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !114
  %8 = icmp eq %struct._xmlNode* %7, null, !dbg !116
  br i1 %8, label %9, label %10, !dbg !117

9:                                                ; preds = %1
  call void @xmlTreeErrMemory(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0)), !dbg !118
  store %struct._xmlNode* null, %struct._xmlNode** %2, align 8, !dbg !120
  br label %36, !dbg !120

10:                                               ; preds = %1
  %11 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !121
  %12 = bitcast %struct._xmlNode* %11 to i8*, !dbg !122
  %13 = call i8* @memset(i8* %12, i32 0, i64 104), !dbg !122
  %14 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.3, i64 0, i64 0), i32 noundef 71, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.xmlNewComment, i64 0, i64 0)), !dbg !123
  %15 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !124
  %16 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %15, i32 0, i32 1, !dbg !125
  store i32 8, i32* %16, align 8, !dbg !126
  %17 = load i8*, i8** @xmlStringComment, align 8, !dbg !127
  %18 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !128
  %19 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %18, i32 0, i32 2, !dbg !129
  store i8* %17, i8** %19, align 8, !dbg !130
  %20 = load i8*, i8** %3, align 8, !dbg !131
  %21 = icmp ne i8* %20, null, !dbg !133
  br i1 %21, label %22, label %27, !dbg !134

22:                                               ; preds = %10
  %23 = load i8*, i8** %3, align 8, !dbg !135
  %24 = call i8* @xmlStrdup(i8* noundef %23), !dbg !137
  %25 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !138
  %26 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %25, i32 0, i32 9, !dbg !139
  store i8* %24, i8** %26, align 8, !dbg !140
  br label %27, !dbg !141

27:                                               ; preds = %22, %10
  %28 = load i32, i32* @__xmlRegisterCallbacks, align 4, !dbg !142
  %29 = icmp ne i32 %28, 0, !dbg !144
  br i1 %29, label %30, label %34, !dbg !145

30:                                               ; preds = %27
  %31 = load void ()*, void ()** @xmlRegisterNodeDefaultValue, align 8, !dbg !146
  %32 = icmp ne void ()* %31, null, !dbg !147
  br i1 %32, label %33, label %34, !dbg !148

33:                                               ; preds = %30
  br label %34, !dbg !149

34:                                               ; preds = %33, %30, %27
  %35 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !151
  store %struct._xmlNode* %35, %struct._xmlNode** %2, align 8, !dbg !152
  br label %36, !dbg !152

36:                                               ; preds = %34, %9
  %37 = load %struct._xmlNode*, %struct._xmlNode** %2, align 8, !dbg !153
  ret %struct._xmlNode* %37, !dbg !153
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !154 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca %struct._xmlNode*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !157, metadata !DIExpression()), !dbg !161
  %4 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !162
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 256, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)), !dbg !163
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !164
  store i8 0, i8* %5, align 1, !dbg !165
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %3, metadata !166, metadata !DIExpression()), !dbg !167
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !168
  %7 = call %struct._xmlNode* @xmlNewComment(i8* noundef %6), !dbg !169
  store %struct._xmlNode* %7, %struct._xmlNode** %3, align 8, !dbg !167
  %8 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !170
  %9 = icmp ne %struct._xmlNode* %8, null, !dbg !172
  br i1 %9, label %10, label %22, !dbg !173

10:                                               ; preds = %0
  %11 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !174
  %12 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %11, i32 0, i32 9, !dbg !177
  %13 = load i8*, i8** %12, align 8, !dbg !177
  %14 = icmp ne i8* %13, null, !dbg !178
  br i1 %14, label %15, label %19, !dbg !179

15:                                               ; preds = %10
  %16 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !180
  %17 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %16, i32 0, i32 9, !dbg !182
  %18 = load i8*, i8** %17, align 8, !dbg !182
  call void @free(i8* noundef %18) #9, !dbg !183
  br label %19, !dbg !184

19:                                               ; preds = %15, %10
  %20 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !185
  %21 = bitcast %struct._xmlNode* %20 to i8*, !dbg !185
  call void @free(i8* noundef %21) #9, !dbg !186
  br label %22, !dbg !187

22:                                               ; preds = %19, %0
  ret i32 0, !dbg !188
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #7

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #8 !dbg !189 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !195, metadata !DIExpression()), !dbg !196
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !197, metadata !DIExpression()), !dbg !198
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !199, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.declare(metadata i8** %7, metadata !201, metadata !DIExpression()), !dbg !202
  %9 = load i8*, i8** %4, align 8, !dbg !203
  store i8* %9, i8** %7, align 8, !dbg !202
  call void @llvm.dbg.declare(metadata i8** %8, metadata !204, metadata !DIExpression()), !dbg !205
  %10 = load i8*, i8** %5, align 8, !dbg !206
  store i8* %10, i8** %8, align 8, !dbg !205
  br label %11, !dbg !207

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !208
  %13 = add i64 %12, -1, !dbg !208
  store i64 %13, i64* %6, align 8, !dbg !208
  %14 = icmp ugt i64 %12, 0, !dbg !209
  br i1 %14, label %15, label %21, !dbg !207

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !210
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !210
  store i8* %17, i8** %8, align 8, !dbg !210
  %18 = load i8, i8* %16, align 1, !dbg !211
  %19 = load i8*, i8** %7, align 8, !dbg !212
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !212
  store i8* %20, i8** %7, align 8, !dbg !212
  store i8 %18, i8* %19, align 1, !dbg !213
  br label %11, !dbg !207, !llvm.loop !214

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !216
  ret i8* %22, !dbg !217
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #8 !dbg !218 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !222, metadata !DIExpression()), !dbg !223
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !224, metadata !DIExpression()), !dbg !225
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !226, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.declare(metadata i8** %7, metadata !228, metadata !DIExpression()), !dbg !229
  %8 = load i8*, i8** %4, align 8, !dbg !230
  store i8* %8, i8** %7, align 8, !dbg !229
  br label %9, !dbg !231

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !232
  %11 = add i64 %10, -1, !dbg !232
  store i64 %11, i64* %6, align 8, !dbg !232
  %12 = icmp ugt i64 %10, 0, !dbg !233
  br i1 %12, label %13, label %18, !dbg !231

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !234
  %15 = trunc i32 %14 to i8, !dbg !234
  %16 = load i8*, i8** %7, align 8, !dbg !235
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !235
  store i8* %17, i8** %7, align 8, !dbg !235
  store i8 %15, i8* %16, align 1, !dbg !236
  br label %9, !dbg !231, !llvm.loop !237

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !238
  ret i8* %19, !dbg !239
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2, !45, !47}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56, !56, !56}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__xmlRegisterCallbacks", scope: !2, file: !3, line: 30, type: !15, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !37, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/272_tree.c_2762_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "5c8e0cd8a2b5eb34d59e0354398df3e5")
!4 = !{!5, !6, !8}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !3, line: 11, baseType: !9)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !3, line: 10, baseType: !11)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !3, line: 13, size: 832, elements: !12)
!12 = !{!13, !14, !16, !19, !21, !22, !23, !24, !25, !28, !29, !32, !35}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !11, file: !3, line: 14, baseType: !5, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !11, file: !3, line: 15, baseType: !15, size: 32, offset: 64)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !11, file: !3, line: 16, baseType: !17, size: 64, offset: 128)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !11, file: !3, line: 17, baseType: !20, size: 64, offset: 192)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !11, file: !3, line: 18, baseType: !20, size: 64, offset: 256)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !11, file: !3, line: 19, baseType: !20, size: 64, offset: 320)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !11, file: !3, line: 20, baseType: !20, size: 64, offset: 384)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !11, file: !3, line: 21, baseType: !20, size: 64, offset: 448)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !11, file: !3, line: 22, baseType: !26, size: 64, offset: 512)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !3, line: 22, flags: DIFlagFwdDecl)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !11, file: !3, line: 23, baseType: !6, size: 64, offset: 576)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !11, file: !3, line: 24, baseType: !30, size: 64, offset: 640)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !3, line: 24, flags: DIFlagFwdDecl)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !11, file: !3, line: 25, baseType: !33, size: 64, offset: 704)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !3, line: 25, flags: DIFlagFwdDecl)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !11, file: !3, line: 26, baseType: !36, size: 16, offset: 768)
!36 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!37 = !{!0, !38, !43}
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "xmlRegisterNodeDefaultValue", scope: !2, file: !3, line: 31, type: !40, isLocal: false, isDefinition: true)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DISubroutineType(types: !42)
!42 = !{null}
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "xmlStringComment", scope: !2, file: !3, line: 32, type: !17, isLocal: false, isDefinition: true)
!45 = distinct !DICompileUnit(language: DW_LANG_C99, file: !46, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!46 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
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
!57 = distinct !DISubprogram(name: "xmlTreeErrMemory", scope: !3, file: !3, line: 35, type: !58, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !60)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !17}
!60 = !{}
!61 = !DILocalVariable(name: "msg", arg: 1, scope: !57, file: !3, line: 35, type: !17)
!62 = !DILocation(line: 35, column: 35, scope: !57)
!63 = !DILocation(line: 37, column: 1, scope: !57)
!64 = distinct !DISubprogram(name: "xmlMalloc", scope: !3, file: !3, line: 39, type: !65, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !60)
!65 = !DISubroutineType(types: !66)
!66 = !{!5, !67}
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !68, line: 46, baseType: !69)
!68 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!69 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!70 = !DILocalVariable(name: "size", arg: 1, scope: !64, file: !3, line: 39, type: !67)
!71 = !DILocation(line: 39, column: 24, scope: !64)
!72 = !DILocation(line: 40, column: 19, scope: !64)
!73 = !DILocation(line: 40, column: 12, scope: !64)
!74 = !DILocation(line: 40, column: 5, scope: !64)
!75 = distinct !DISubprogram(name: "xmlStrdup", scope: !3, file: !3, line: 43, type: !76, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !60)
!76 = !DISubroutineType(types: !77)
!77 = !{!6, !17}
!78 = !DILocalVariable(name: "str", arg: 1, scope: !75, file: !3, line: 43, type: !17)
!79 = !DILocation(line: 43, column: 29, scope: !75)
!80 = !DILocation(line: 44, column: 9, scope: !81)
!81 = distinct !DILexicalBlock(scope: !75, file: !3, line: 44, column: 9)
!82 = !DILocation(line: 44, column: 13, scope: !81)
!83 = !DILocation(line: 44, column: 9, scope: !75)
!84 = !DILocation(line: 44, column: 22, scope: !81)
!85 = !DILocalVariable(name: "len", scope: !75, file: !3, line: 45, type: !67)
!86 = !DILocation(line: 45, column: 12, scope: !75)
!87 = !DILocation(line: 45, column: 25, scope: !75)
!88 = !DILocation(line: 45, column: 18, scope: !75)
!89 = !DILocation(line: 45, column: 30, scope: !75)
!90 = !DILocalVariable(name: "copy", scope: !75, file: !3, line: 46, type: !6)
!91 = !DILocation(line: 46, column: 11, scope: !75)
!92 = !DILocation(line: 46, column: 33, scope: !75)
!93 = !DILocation(line: 46, column: 26, scope: !75)
!94 = !DILocation(line: 47, column: 9, scope: !95)
!95 = distinct !DILexicalBlock(scope: !75, file: !3, line: 47, column: 9)
!96 = !DILocation(line: 47, column: 9, scope: !75)
!97 = !DILocation(line: 47, column: 22, scope: !95)
!98 = !DILocation(line: 47, column: 28, scope: !95)
!99 = !DILocation(line: 47, column: 33, scope: !95)
!100 = !DILocation(line: 47, column: 15, scope: !95)
!101 = !DILocation(line: 48, column: 12, scope: !75)
!102 = !DILocation(line: 48, column: 5, scope: !75)
!103 = !DILocation(line: 49, column: 1, scope: !75)
!104 = distinct !DISubprogram(name: "xmlNewComment", scope: !3, file: !3, line: 52, type: !105, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !60)
!105 = !DISubroutineType(types: !106)
!106 = !{!8, !17}
!107 = !DILocalVariable(name: "content", arg: 1, scope: !104, file: !3, line: 52, type: !17)
!108 = !DILocation(line: 52, column: 38, scope: !104)
!109 = !DILocalVariable(name: "cur", scope: !104, file: !3, line: 53, type: !8)
!110 = !DILocation(line: 53, column: 16, scope: !104)
!111 = !DILocation(line: 58, column: 24, scope: !104)
!112 = !DILocation(line: 58, column: 11, scope: !104)
!113 = !DILocation(line: 58, column: 9, scope: !104)
!114 = !DILocation(line: 59, column: 9, scope: !115)
!115 = distinct !DILexicalBlock(scope: !104, file: !3, line: 59, column: 9)
!116 = !DILocation(line: 59, column: 13, scope: !115)
!117 = !DILocation(line: 59, column: 9, scope: !104)
!118 = !DILocation(line: 60, column: 9, scope: !119)
!119 = distinct !DILexicalBlock(scope: !115, file: !3, line: 59, column: 22)
!120 = !DILocation(line: 61, column: 9, scope: !119)
!121 = !DILocation(line: 65, column: 12, scope: !104)
!122 = !DILocation(line: 65, column: 5, scope: !104)
!123 = !DILocation(line: 71, column: 5, scope: !104)
!124 = !DILocation(line: 73, column: 5, scope: !104)
!125 = !DILocation(line: 73, column: 10, scope: !104)
!126 = !DILocation(line: 73, column: 15, scope: !104)
!127 = !DILocation(line: 74, column: 17, scope: !104)
!128 = !DILocation(line: 74, column: 5, scope: !104)
!129 = !DILocation(line: 74, column: 10, scope: !104)
!130 = !DILocation(line: 74, column: 15, scope: !104)
!131 = !DILocation(line: 75, column: 9, scope: !132)
!132 = distinct !DILexicalBlock(scope: !104, file: !3, line: 75, column: 9)
!133 = !DILocation(line: 75, column: 17, scope: !132)
!134 = !DILocation(line: 75, column: 9, scope: !104)
!135 = !DILocation(line: 76, column: 34, scope: !136)
!136 = distinct !DILexicalBlock(scope: !132, file: !3, line: 75, column: 26)
!137 = !DILocation(line: 76, column: 24, scope: !136)
!138 = !DILocation(line: 76, column: 9, scope: !136)
!139 = !DILocation(line: 76, column: 14, scope: !136)
!140 = !DILocation(line: 76, column: 22, scope: !136)
!141 = !DILocation(line: 77, column: 5, scope: !136)
!142 = !DILocation(line: 79, column: 10, scope: !143)
!143 = distinct !DILexicalBlock(scope: !104, file: !3, line: 79, column: 9)
!144 = !DILocation(line: 79, column: 9, scope: !143)
!145 = !DILocation(line: 79, column: 34, scope: !143)
!146 = !DILocation(line: 79, column: 38, scope: !143)
!147 = !DILocation(line: 79, column: 37, scope: !143)
!148 = !DILocation(line: 79, column: 9, scope: !104)
!149 = !DILocation(line: 81, column: 5, scope: !150)
!150 = distinct !DILexicalBlock(scope: !143, file: !3, line: 79, column: 68)
!151 = !DILocation(line: 83, column: 12, scope: !104)
!152 = !DILocation(line: 83, column: 5, scope: !104)
!153 = !DILocation(line: 84, column: 1, scope: !104)
!154 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 87, type: !155, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !60)
!155 = !DISubroutineType(types: !156)
!156 = !{!15}
!157 = !DILocalVariable(name: "content", scope: !154, file: !3, line: 88, type: !158)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 256)
!161 = !DILocation(line: 88, column: 10, scope: !154)
!162 = !DILocation(line: 91, column: 24, scope: !154)
!163 = !DILocation(line: 91, column: 5, scope: !154)
!164 = !DILocation(line: 94, column: 5, scope: !154)
!165 = !DILocation(line: 94, column: 18, scope: !154)
!166 = !DILocalVariable(name: "result", scope: !154, file: !3, line: 97, type: !8)
!167 = !DILocation(line: 97, column: 16, scope: !154)
!168 = !DILocation(line: 97, column: 39, scope: !154)
!169 = !DILocation(line: 97, column: 25, scope: !154)
!170 = !DILocation(line: 100, column: 9, scope: !171)
!171 = distinct !DILexicalBlock(scope: !154, file: !3, line: 100, column: 9)
!172 = !DILocation(line: 100, column: 16, scope: !171)
!173 = !DILocation(line: 100, column: 9, scope: !154)
!174 = !DILocation(line: 101, column: 13, scope: !175)
!175 = distinct !DILexicalBlock(scope: !176, file: !3, line: 101, column: 13)
!176 = distinct !DILexicalBlock(scope: !171, file: !3, line: 100, column: 25)
!177 = !DILocation(line: 101, column: 21, scope: !175)
!178 = !DILocation(line: 101, column: 29, scope: !175)
!179 = !DILocation(line: 101, column: 13, scope: !176)
!180 = !DILocation(line: 102, column: 18, scope: !181)
!181 = distinct !DILexicalBlock(scope: !175, file: !3, line: 101, column: 38)
!182 = !DILocation(line: 102, column: 26, scope: !181)
!183 = !DILocation(line: 102, column: 13, scope: !181)
!184 = !DILocation(line: 103, column: 9, scope: !181)
!185 = !DILocation(line: 104, column: 14, scope: !176)
!186 = !DILocation(line: 104, column: 9, scope: !176)
!187 = !DILocation(line: 105, column: 5, scope: !176)
!188 = !DILocation(line: 107, column: 5, scope: !154)
!189 = distinct !DISubprogram(name: "memcpy", scope: !190, file: !190, line: 12, type: !191, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !60)
!190 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!191 = !DISubroutineType(types: !192)
!192 = !{!5, !5, !193, !67}
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!195 = !DILocalVariable(name: "destaddr", arg: 1, scope: !189, file: !190, line: 12, type: !5)
!196 = !DILocation(line: 12, column: 20, scope: !189)
!197 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !189, file: !190, line: 12, type: !193)
!198 = !DILocation(line: 12, column: 42, scope: !189)
!199 = !DILocalVariable(name: "len", arg: 3, scope: !189, file: !190, line: 12, type: !67)
!200 = !DILocation(line: 12, column: 58, scope: !189)
!201 = !DILocalVariable(name: "dest", scope: !189, file: !190, line: 13, type: !6)
!202 = !DILocation(line: 13, column: 9, scope: !189)
!203 = !DILocation(line: 13, column: 16, scope: !189)
!204 = !DILocalVariable(name: "src", scope: !189, file: !190, line: 14, type: !17)
!205 = !DILocation(line: 14, column: 15, scope: !189)
!206 = !DILocation(line: 14, column: 21, scope: !189)
!207 = !DILocation(line: 16, column: 3, scope: !189)
!208 = !DILocation(line: 16, column: 13, scope: !189)
!209 = !DILocation(line: 16, column: 16, scope: !189)
!210 = !DILocation(line: 17, column: 19, scope: !189)
!211 = !DILocation(line: 17, column: 15, scope: !189)
!212 = !DILocation(line: 17, column: 10, scope: !189)
!213 = !DILocation(line: 17, column: 13, scope: !189)
!214 = distinct !{!214, !207, !210, !215}
!215 = !{!"llvm.loop.mustprogress"}
!216 = !DILocation(line: 18, column: 10, scope: !189)
!217 = !DILocation(line: 18, column: 3, scope: !189)
!218 = distinct !DISubprogram(name: "memset", scope: !219, file: !219, line: 12, type: !220, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !60)
!219 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!220 = !DISubroutineType(types: !221)
!221 = !{!5, !5, !15, !67}
!222 = !DILocalVariable(name: "dst", arg: 1, scope: !218, file: !219, line: 12, type: !5)
!223 = !DILocation(line: 12, column: 20, scope: !218)
!224 = !DILocalVariable(name: "s", arg: 2, scope: !218, file: !219, line: 12, type: !15)
!225 = !DILocation(line: 12, column: 29, scope: !218)
!226 = !DILocalVariable(name: "count", arg: 3, scope: !218, file: !219, line: 12, type: !67)
!227 = !DILocation(line: 12, column: 39, scope: !218)
!228 = !DILocalVariable(name: "a", scope: !218, file: !219, line: 13, type: !6)
!229 = !DILocation(line: 13, column: 9, scope: !218)
!230 = !DILocation(line: 13, column: 13, scope: !218)
!231 = !DILocation(line: 14, column: 3, scope: !218)
!232 = !DILocation(line: 14, column: 15, scope: !218)
!233 = !DILocation(line: 14, column: 18, scope: !218)
!234 = !DILocation(line: 15, column: 12, scope: !218)
!235 = !DILocation(line: 15, column: 7, scope: !218)
!236 = !DILocation(line: 15, column: 10, scope: !218)
!237 = distinct !{!237, !231, !234, !215}
!238 = !DILocation(line: 16, column: 10, scope: !218)
!239 = !DILocation(line: 16, column: 3, scope: !218)

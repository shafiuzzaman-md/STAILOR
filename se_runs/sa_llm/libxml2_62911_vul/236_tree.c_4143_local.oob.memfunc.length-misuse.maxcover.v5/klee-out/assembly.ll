; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/236_tree.c_4143_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/236_tree.c_4143_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDoc = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc* }
%struct._xmlNode = type { i32, %struct._xmlDoc*, %struct._xmlNode*, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, i16 }

@.str = private unnamed_addr constant [8 x i8] c"content\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"malloc_fails\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/236_tree.c_4143_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"copying node\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"xmlStringText\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlTreeErrMemory(i8* noundef %0) #0 !dbg !49 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !53, metadata !DIExpression()), !dbg !54
  %3 = load i8*, i8** %2, align 8, !dbg !55
  ret void, !dbg !56
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !57 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !63, metadata !DIExpression()), !dbg !64
  %3 = load i64, i64* %2, align 8, !dbg !65
  %4 = call noalias i8* @malloc(i64 noundef %3) #8, !dbg !66
  ret i8* %4, !dbg !67
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !68 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlDoc, align 8
  %3 = alloca %struct._xmlNode, align 8
  %4 = alloca [256 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca %struct._xmlNode*, align 8
  %7 = alloca %struct._xmlNode*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlDoc* %2, metadata !71, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.declare(metadata %struct._xmlNode* %3, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.declare(metadata [256 x i8]* %4, metadata !75, metadata !DIExpression()), !dbg !79
  %8 = bitcast %struct._xmlDoc* %2 to i8*, !dbg !80
  %9 = call i8* @memset(i8* %8, i32 0, i64 72), !dbg !80
  %10 = bitcast %struct._xmlNode* %3 to i8*, !dbg !81
  %11 = call i8* @memset(i8* %10, i32 0, i64 80), !dbg !81
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !82
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 256, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)), !dbg !83
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 255, !dbg !84
  store i8 0, i8* %13, align 1, !dbg !85
  call void @llvm.dbg.declare(metadata i32* %5, metadata !86, metadata !DIExpression()), !dbg !87
  %14 = bitcast i32* %5 to i8*, !dbg !88
  call void @klee_make_symbolic(i8* noundef %14, i64 noundef 4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0)), !dbg !89
  %15 = load i32, i32* %5, align 4, !dbg !90
  %16 = icmp eq i32 %15, 0, !dbg !91
  br i1 %16, label %20, label %17, !dbg !92

17:                                               ; preds = %0
  %18 = load i32, i32* %5, align 4, !dbg !93
  %19 = icmp eq i32 %18, 1, !dbg !94
  br label %20, !dbg !92

20:                                               ; preds = %17, %0
  %21 = phi i1 [ true, %0 ], [ %19, %17 ]
  %22 = zext i1 %21 to i32, !dbg !92
  %23 = sext i32 %22 to i64, !dbg !90
  call void @klee_assume(i64 noundef %23), !dbg !95
  %24 = load i32, i32* %5, align 4, !dbg !96
  %25 = icmp ne i32 %24, 0, !dbg !96
  br i1 %25, label %26, label %30, !dbg !98

26:                                               ; preds = %20
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %6, metadata !99, metadata !DIExpression()), !dbg !101
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !102
  %28 = call %struct._xmlNode* @xmlStringGetNodeList(%struct._xmlDoc* noundef %2, %struct._xmlNode* noundef %3, i8* noundef %27), !dbg !103
  store %struct._xmlNode* %28, %struct._xmlNode** %6, align 8, !dbg !101
  %29 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.3, i64 0, i64 0), i32 noundef 81, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !104
  store i32 0, i32* %1, align 4, !dbg !105
  br label %40, !dbg !105

30:                                               ; preds = %20
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %7, metadata !106, metadata !DIExpression()), !dbg !107
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !108
  %32 = call %struct._xmlNode* @xmlStringGetNodeList(%struct._xmlDoc* noundef %2, %struct._xmlNode* noundef %3, i8* noundef %31), !dbg !109
  store %struct._xmlNode* %32, %struct._xmlNode** %7, align 8, !dbg !107
  %33 = load %struct._xmlNode*, %struct._xmlNode** %7, align 8, !dbg !110
  %34 = icmp ne %struct._xmlNode* %33, null, !dbg !112
  br i1 %34, label %35, label %39, !dbg !113

35:                                               ; preds = %30
  %36 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.3, i64 0, i64 0), i32 noundef 94, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !114
  %37 = load %struct._xmlNode*, %struct._xmlNode** %7, align 8, !dbg !116
  %38 = bitcast %struct._xmlNode* %37 to i8*, !dbg !116
  call void @free(i8* noundef %38) #8, !dbg !117
  br label %39, !dbg !118

39:                                               ; preds = %35, %30
  store i32 0, i32* %1, align 4, !dbg !119
  br label %40, !dbg !119

40:                                               ; preds = %39, %26
  %41 = load i32, i32* %1, align 4, !dbg !120
  ret i32 %41, !dbg !120
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlNode* @xmlStringGetNodeList(%struct._xmlDoc* noundef %0, %struct._xmlNode* noundef %1, i8* noundef %2) #0 !dbg !121 {
  %4 = alloca %struct._xmlNode*, align 8
  %5 = alloca %struct._xmlDoc*, align 8
  %6 = alloca %struct._xmlNode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._xmlNode*, align 8
  store %struct._xmlDoc* %0, %struct._xmlDoc** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %5, metadata !124, metadata !DIExpression()), !dbg !125
  store %struct._xmlNode* %1, %struct._xmlNode** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %6, metadata !126, metadata !DIExpression()), !dbg !127
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !128, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %8, metadata !130, metadata !DIExpression()), !dbg !131
  %9 = call i8* @xmlMalloc(i64 noundef 80), !dbg !132
  %10 = bitcast i8* %9 to %struct._xmlNode*, !dbg !133
  store %struct._xmlNode* %10, %struct._xmlNode** %8, align 8, !dbg !134
  %11 = load %struct._xmlNode*, %struct._xmlNode** %8, align 8, !dbg !135
  %12 = icmp eq %struct._xmlNode* %11, null, !dbg !137
  br i1 %12, label %13, label %14, !dbg !138

13:                                               ; preds = %3
  call void @xmlTreeErrMemory(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0)), !dbg !139
  store %struct._xmlNode* null, %struct._xmlNode** %4, align 8, !dbg !141
  br label %38, !dbg !141

14:                                               ; preds = %3
  %15 = load %struct._xmlNode*, %struct._xmlNode** %8, align 8, !dbg !142
  %16 = bitcast %struct._xmlNode* %15 to i8*, !dbg !143
  %17 = call i8* @memset(i8* %16, i32 0, i64 80), !dbg !143
  %18 = load %struct._xmlNode*, %struct._xmlNode** %8, align 8, !dbg !144
  %19 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %18, i32 0, i32 0, !dbg !145
  store i32 1, i32* %19, align 8, !dbg !146
  %20 = load %struct._xmlDoc*, %struct._xmlDoc** %5, align 8, !dbg !147
  %21 = load %struct._xmlNode*, %struct._xmlNode** %8, align 8, !dbg !148
  %22 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %21, i32 0, i32 1, !dbg !149
  store %struct._xmlDoc* %20, %struct._xmlDoc** %22, align 8, !dbg !150
  %23 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !151
  %24 = load %struct._xmlNode*, %struct._xmlNode** %8, align 8, !dbg !152
  %25 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %24, i32 0, i32 2, !dbg !153
  store %struct._xmlNode* %23, %struct._xmlNode** %25, align 8, !dbg !154
  %26 = load i8*, i8** %7, align 8, !dbg !155
  %27 = icmp ne i8* %26, null, !dbg !157
  br i1 %27, label %28, label %36, !dbg !158

28:                                               ; preds = %14
  %29 = load i8*, i8** %7, align 8, !dbg !159
  %30 = call i32 @strcmp(i8* noundef %29, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0)) #9, !dbg !160
  %31 = icmp eq i32 %30, 0, !dbg !161
  br i1 %31, label %32, label %36, !dbg !162

32:                                               ; preds = %28
  %33 = load i8*, i8** %7, align 8, !dbg !163
  %34 = load %struct._xmlNode*, %struct._xmlNode** %8, align 8, !dbg !165
  %35 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %34, i32 0, i32 3, !dbg !166
  store i8* %33, i8** %35, align 8, !dbg !167
  br label %36, !dbg !168

36:                                               ; preds = %32, %28, %14
  %37 = load %struct._xmlNode*, %struct._xmlNode** %8, align 8, !dbg !169
  store %struct._xmlNode* %37, %struct._xmlNode** %4, align 8, !dbg !170
  br label %38, !dbg !170

38:                                               ; preds = %36, %13
  %39 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !171
  ret %struct._xmlNode* %39, !dbg !171
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #7 !dbg !172 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !176, metadata !DIExpression()), !dbg !177
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !178, metadata !DIExpression()), !dbg !179
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !180, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.declare(metadata i8** %7, metadata !182, metadata !DIExpression()), !dbg !183
  %8 = load i8*, i8** %4, align 8, !dbg !184
  store i8* %8, i8** %7, align 8, !dbg !183
  br label %9, !dbg !185

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !186
  %11 = add i64 %10, -1, !dbg !186
  store i64 %11, i64* %6, align 8, !dbg !186
  %12 = icmp ugt i64 %10, 0, !dbg !187
  br i1 %12, label %13, label %18, !dbg !185

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !188
  %15 = trunc i32 %14 to i8, !dbg !188
  %16 = load i8*, i8** %7, align 8, !dbg !189
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !189
  store i8* %17, i8** %7, align 8, !dbg !189
  store i8 %15, i8* %16, align 1, !dbg !190
  br label %9, !dbg !185, !llvm.loop !191

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !193
  ret i8* %19, !dbg !194
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !39}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48, !48}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/236_tree.c_4143_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "78f376ff4f2f55f1e4ab30da03aacbc6")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !1, line: 11, baseType: !5)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 10, baseType: !7)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 15, size: 640, elements: !8)
!8 = !{!9, !11, !28, !29, !32, !33, !34, !35, !36, !37}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !7, file: !1, line: 16, baseType: !10, size: 32)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !7, file: !1, line: 17, baseType: !12, size: 64, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !1, line: 13, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !1, line: 12, baseType: !15)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !1, line: 28, size: 576, elements: !16)
!16 = !{!17, !18, !19, !22, !23, !24, !25, !26, !27}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !15, file: !1, line: 29, baseType: !3, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !15, file: !1, line: 30, baseType: !10, size: 32, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !15, file: !1, line: 31, baseType: !20, size: 64, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !15, file: !1, line: 32, baseType: !4, size: 64, offset: 192)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !15, file: !1, line: 33, baseType: !4, size: 64, offset: 256)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !15, file: !1, line: 34, baseType: !4, size: 64, offset: 320)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !15, file: !1, line: 35, baseType: !4, size: 64, offset: 384)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !15, file: !1, line: 36, baseType: !4, size: 64, offset: 448)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !15, file: !1, line: 37, baseType: !12, size: 64, offset: 512)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !7, file: !1, line: 18, baseType: !4, size: 64, offset: 128)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !7, file: !1, line: 19, baseType: !30, size: 64, offset: 192)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !7, file: !1, line: 20, baseType: !4, size: 64, offset: 256)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !7, file: !1, line: 21, baseType: !4, size: 64, offset: 320)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !7, file: !1, line: 22, baseType: !4, size: 64, offset: 384)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !7, file: !1, line: 23, baseType: !4, size: 64, offset: 448)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !7, file: !1, line: 24, baseType: !4, size: 64, offset: 512)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !7, file: !1, line: 25, baseType: !38, size: 16, offset: 576)
!38 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!39 = distinct !DICompileUnit(language: DW_LANG_C99, file: !40, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!40 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!41 = !{i32 7, !"Dwarf Version", i32 5}
!42 = !{i32 2, !"Debug Info Version", i32 3}
!43 = !{i32 1, !"wchar_size", i32 4}
!44 = !{i32 7, !"PIC Level", i32 2}
!45 = !{i32 7, !"PIE Level", i32 2}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"Ubuntu clang version 14.0.6"}
!49 = distinct !DISubprogram(name: "xmlTreeErrMemory", scope: !1, file: !1, line: 41, type: !50, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !52)
!50 = !DISubroutineType(types: !51)
!51 = !{null, !30}
!52 = !{}
!53 = !DILocalVariable(name: "msg", arg: 1, scope: !49, file: !1, line: 41, type: !30)
!54 = !DILocation(line: 41, column: 35, scope: !49)
!55 = !DILocation(line: 42, column: 11, scope: !49)
!56 = !DILocation(line: 43, column: 1, scope: !49)
!57 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 45, type: !58, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !52)
!58 = !DISubroutineType(types: !59)
!59 = !{!3, !60}
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !61, line: 46, baseType: !62)
!61 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!62 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!63 = !DILocalVariable(name: "size", arg: 1, scope: !57, file: !1, line: 45, type: !60)
!64 = !DILocation(line: 45, column: 24, scope: !57)
!65 = !DILocation(line: 46, column: 19, scope: !57)
!66 = !DILocation(line: 46, column: 12, scope: !57)
!67 = !DILocation(line: 46, column: 5, scope: !57)
!68 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 53, type: !69, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !52)
!69 = !DISubroutineType(types: !70)
!70 = !{!10}
!71 = !DILocalVariable(name: "doc", scope: !68, file: !1, line: 55, type: !14)
!72 = !DILocation(line: 55, column: 12, scope: !68)
!73 = !DILocalVariable(name: "parent", scope: !68, file: !1, line: 56, type: !6)
!74 = !DILocation(line: 56, column: 13, scope: !68)
!75 = !DILocalVariable(name: "content", scope: !68, file: !1, line: 57, type: !76)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 2048, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 256)
!79 = !DILocation(line: 57, column: 10, scope: !68)
!80 = !DILocation(line: 60, column: 5, scope: !68)
!81 = !DILocation(line: 61, column: 5, scope: !68)
!82 = !DILocation(line: 64, column: 24, scope: !68)
!83 = !DILocation(line: 64, column: 5, scope: !68)
!84 = !DILocation(line: 65, column: 5, scope: !68)
!85 = !DILocation(line: 65, column: 18, scope: !68)
!86 = !DILocalVariable(name: "malloc_fails", scope: !68, file: !1, line: 68, type: !10)
!87 = !DILocation(line: 68, column: 9, scope: !68)
!88 = !DILocation(line: 69, column: 24, scope: !68)
!89 = !DILocation(line: 69, column: 5, scope: !68)
!90 = !DILocation(line: 70, column: 17, scope: !68)
!91 = !DILocation(line: 70, column: 30, scope: !68)
!92 = !DILocation(line: 70, column: 35, scope: !68)
!93 = !DILocation(line: 70, column: 38, scope: !68)
!94 = !DILocation(line: 70, column: 51, scope: !68)
!95 = !DILocation(line: 70, column: 5, scope: !68)
!96 = !DILocation(line: 73, column: 9, scope: !97)
!97 = distinct !DILexicalBlock(scope: !68, file: !1, line: 73, column: 9)
!98 = !DILocation(line: 73, column: 9, scope: !68)
!99 = !DILocalVariable(name: "result", scope: !100, file: !1, line: 75, type: !4)
!100 = distinct !DILexicalBlock(scope: !97, file: !1, line: 73, column: 23)
!101 = !DILocation(line: 75, column: 20, scope: !100)
!102 = !DILocation(line: 75, column: 65, scope: !100)
!103 = !DILocation(line: 75, column: 29, scope: !100)
!104 = !DILocation(line: 81, column: 9, scope: !100)
!105 = !DILocation(line: 82, column: 9, scope: !100)
!106 = !DILocalVariable(name: "result", scope: !68, file: !1, line: 86, type: !4)
!107 = !DILocation(line: 86, column: 16, scope: !68)
!108 = !DILocation(line: 86, column: 61, scope: !68)
!109 = !DILocation(line: 86, column: 25, scope: !68)
!110 = !DILocation(line: 88, column: 9, scope: !111)
!111 = distinct !DILexicalBlock(scope: !68, file: !1, line: 88, column: 9)
!112 = !DILocation(line: 88, column: 16, scope: !111)
!113 = !DILocation(line: 88, column: 9, scope: !68)
!114 = !DILocation(line: 94, column: 9, scope: !115)
!115 = distinct !DILexicalBlock(scope: !111, file: !1, line: 88, column: 25)
!116 = !DILocation(line: 97, column: 14, scope: !115)
!117 = !DILocation(line: 97, column: 9, scope: !115)
!118 = !DILocation(line: 98, column: 5, scope: !115)
!119 = !DILocation(line: 100, column: 5, scope: !68)
!120 = !DILocation(line: 101, column: 1, scope: !68)
!121 = distinct !DISubprogram(name: "xmlStringGetNodeList", scope: !1, file: !1, line: 104, type: !122, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !52)
!122 = !DISubroutineType(types: !123)
!123 = !{!4, !12, !4, !30}
!124 = !DILocalVariable(name: "doc", arg: 1, scope: !121, file: !1, line: 104, type: !12)
!125 = !DILocation(line: 104, column: 43, scope: !121)
!126 = !DILocalVariable(name: "parent", arg: 2, scope: !121, file: !1, line: 104, type: !4)
!127 = !DILocation(line: 104, column: 59, scope: !121)
!128 = !DILocalVariable(name: "content", arg: 3, scope: !121, file: !1, line: 104, type: !30)
!129 = !DILocation(line: 104, column: 79, scope: !121)
!130 = !DILocalVariable(name: "ret", scope: !121, file: !1, line: 105, type: !4)
!131 = !DILocation(line: 105, column: 16, scope: !121)
!132 = !DILocation(line: 108, column: 24, scope: !121)
!133 = !DILocation(line: 108, column: 11, scope: !121)
!134 = !DILocation(line: 108, column: 9, scope: !121)
!135 = !DILocation(line: 109, column: 9, scope: !136)
!136 = distinct !DILexicalBlock(scope: !121, file: !1, line: 109, column: 9)
!137 = !DILocation(line: 109, column: 13, scope: !136)
!138 = !DILocation(line: 109, column: 9, scope: !121)
!139 = !DILocation(line: 110, column: 9, scope: !140)
!140 = distinct !DILexicalBlock(scope: !136, file: !1, line: 109, column: 22)
!141 = !DILocation(line: 111, column: 9, scope: !140)
!142 = !DILocation(line: 115, column: 12, scope: !121)
!143 = !DILocation(line: 115, column: 5, scope: !121)
!144 = !DILocation(line: 117, column: 5, scope: !121)
!145 = !DILocation(line: 117, column: 10, scope: !121)
!146 = !DILocation(line: 117, column: 15, scope: !121)
!147 = !DILocation(line: 118, column: 16, scope: !121)
!148 = !DILocation(line: 118, column: 5, scope: !121)
!149 = !DILocation(line: 118, column: 10, scope: !121)
!150 = !DILocation(line: 118, column: 14, scope: !121)
!151 = !DILocation(line: 119, column: 19, scope: !121)
!152 = !DILocation(line: 119, column: 5, scope: !121)
!153 = !DILocation(line: 119, column: 10, scope: !121)
!154 = !DILocation(line: 119, column: 17, scope: !121)
!155 = !DILocation(line: 122, column: 9, scope: !156)
!156 = distinct !DILexicalBlock(scope: !121, file: !1, line: 122, column: 9)
!157 = !DILocation(line: 122, column: 17, scope: !156)
!158 = !DILocation(line: 122, column: 25, scope: !156)
!159 = !DILocation(line: 122, column: 35, scope: !156)
!160 = !DILocation(line: 122, column: 28, scope: !156)
!161 = !DILocation(line: 122, column: 61, scope: !156)
!162 = !DILocation(line: 122, column: 9, scope: !121)
!163 = !DILocation(line: 123, column: 21, scope: !164)
!164 = distinct !DILexicalBlock(scope: !156, file: !1, line: 122, column: 67)
!165 = !DILocation(line: 123, column: 9, scope: !164)
!166 = !DILocation(line: 123, column: 14, scope: !164)
!167 = !DILocation(line: 123, column: 19, scope: !164)
!168 = !DILocation(line: 124, column: 5, scope: !164)
!169 = !DILocation(line: 126, column: 12, scope: !121)
!170 = !DILocation(line: 126, column: 5, scope: !121)
!171 = !DILocation(line: 127, column: 1, scope: !121)
!172 = distinct !DISubprogram(name: "memset", scope: !173, file: !173, line: 12, type: !174, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !39, retainedNodes: !52)
!173 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!174 = !DISubroutineType(types: !175)
!175 = !{!3, !3, !10, !60}
!176 = !DILocalVariable(name: "dst", arg: 1, scope: !172, file: !173, line: 12, type: !3)
!177 = !DILocation(line: 12, column: 20, scope: !172)
!178 = !DILocalVariable(name: "s", arg: 2, scope: !172, file: !173, line: 12, type: !10)
!179 = !DILocation(line: 12, column: 29, scope: !172)
!180 = !DILocalVariable(name: "count", arg: 3, scope: !172, file: !173, line: 12, type: !60)
!181 = !DILocation(line: 12, column: 39, scope: !172)
!182 = !DILocalVariable(name: "a", scope: !172, file: !173, line: 13, type: !20)
!183 = !DILocation(line: 13, column: 9, scope: !172)
!184 = !DILocation(line: 13, column: 13, scope: !172)
!185 = !DILocation(line: 14, column: 3, scope: !172)
!186 = !DILocation(line: 14, column: 15, scope: !172)
!187 = !DILocation(line: 14, column: 18, scope: !172)
!188 = !DILocation(line: 15, column: 12, scope: !172)
!189 = !DILocation(line: 15, column: 7, scope: !172)
!190 = !DILocation(line: 15, column: 10, scope: !172)
!191 = distinct !{!191, !185, !188, !192}
!192 = !{!"llvm.loop.mustprogress"}
!193 = !DILocation(line: 16, column: 10, scope: !172)
!194 = !DILocation(line: 16, column: 3, scope: !172)

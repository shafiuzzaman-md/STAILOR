; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/271_tree.c_2796_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/271_tree.c_2796_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlNode = type { i32, i8*, %struct._xmlDoc* }
%struct._xmlDoc = type {}

@.str = private unnamed_addr constant [15 x i8] c"building CDATA\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_55980_vul/271_tree.c_2796_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlNewCDataBlock = private unnamed_addr constant [58 x i8] c"xmlNodePtr xmlNewCDataBlock(xmlDocPtr, const char *, int)\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"doc\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"content\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !32 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !38, metadata !DIExpression()), !dbg !39
  %3 = load i64, i64* %2, align 8, !dbg !40
  %4 = call noalias i8* @malloc(i64 noundef %3) #8, !dbg !41
  ret i8* %4, !dbg !42
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlTreeErrMemory(i8* noundef %0) #0 !dbg !43 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !48, metadata !DIExpression()), !dbg !49
  ret void, !dbg !50
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlStrndup(i8* noundef %0, i32 noundef %1) #0 !dbg !51 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !54, metadata !DIExpression()), !dbg !55
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !56, metadata !DIExpression()), !dbg !57
  %7 = load i8*, i8** %4, align 8, !dbg !58
  %8 = icmp eq i8* %7, null, !dbg !60
  br i1 %8, label %12, label %9, !dbg !61

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4, !dbg !62
  %11 = icmp slt i32 %10, 0, !dbg !63
  br i1 %11, label %12, label %13, !dbg !64

12:                                               ; preds = %9, %2
  store i8* null, i8** %3, align 8, !dbg !65
  br label %32, !dbg !65

13:                                               ; preds = %9
  call void @llvm.dbg.declare(metadata i8** %6, metadata !66, metadata !DIExpression()), !dbg !67
  %14 = load i32, i32* %5, align 4, !dbg !68
  %15 = add nsw i32 %14, 1, !dbg !69
  %16 = sext i32 %15 to i64, !dbg !68
  %17 = call noalias i8* @malloc(i64 noundef %16) #8, !dbg !70
  store i8* %17, i8** %6, align 8, !dbg !67
  %18 = load i8*, i8** %6, align 8, !dbg !71
  %19 = icmp eq i8* %18, null, !dbg !73
  br i1 %19, label %20, label %21, !dbg !74

20:                                               ; preds = %13
  store i8* null, i8** %3, align 8, !dbg !75
  br label %32, !dbg !75

21:                                               ; preds = %13
  %22 = load i8*, i8** %6, align 8, !dbg !76
  %23 = load i8*, i8** %4, align 8, !dbg !77
  %24 = load i32, i32* %5, align 4, !dbg !78
  %25 = sext i32 %24 to i64, !dbg !78
  %26 = call i8* @memcpy(i8* %22, i8* %23, i64 %25), !dbg !79
  %27 = load i8*, i8** %6, align 8, !dbg !80
  %28 = load i32, i32* %5, align 4, !dbg !81
  %29 = sext i32 %28 to i64, !dbg !80
  %30 = getelementptr inbounds i8, i8* %27, i64 %29, !dbg !80
  store i8 0, i8* %30, align 1, !dbg !82
  %31 = load i8*, i8** %6, align 8, !dbg !83
  store i8* %31, i8** %3, align 8, !dbg !84
  br label %32, !dbg !84

32:                                               ; preds = %21, %20, %12
  %33 = load i8*, i8** %3, align 8, !dbg !85
  ret i8* %33, !dbg !85
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlNode* @xmlNewCDataBlock(%struct._xmlDoc* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !86 {
  %4 = alloca %struct._xmlNode*, align 8
  %5 = alloca %struct._xmlDoc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._xmlNode*, align 8
  store %struct._xmlDoc* %0, %struct._xmlDoc** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %5, metadata !89, metadata !DIExpression()), !dbg !90
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !91, metadata !DIExpression()), !dbg !92
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !93, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %8, metadata !95, metadata !DIExpression()), !dbg !96
  %9 = call i8* @xmlMalloc(i64 noundef 24), !dbg !97
  %10 = bitcast i8* %9 to %struct._xmlNode*, !dbg !98
  store %struct._xmlNode* %10, %struct._xmlNode** %8, align 8, !dbg !99
  %11 = load %struct._xmlNode*, %struct._xmlNode** %8, align 8, !dbg !100
  %12 = icmp eq %struct._xmlNode* %11, null, !dbg !102
  br i1 %12, label %13, label %14, !dbg !103

13:                                               ; preds = %3
  call void @xmlTreeErrMemory(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !104
  store %struct._xmlNode* null, %struct._xmlNode** %4, align 8, !dbg !106
  br label %34, !dbg !106

14:                                               ; preds = %3
  %15 = load %struct._xmlNode*, %struct._xmlNode** %8, align 8, !dbg !107
  %16 = bitcast %struct._xmlNode* %15 to i8*, !dbg !108
  %17 = call i8* @memset(i8* %16, i32 0, i64 24), !dbg !108
  %18 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.2, i64 0, i64 0), i32 noundef 71, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.xmlNewCDataBlock, i64 0, i64 0)), !dbg !109
  %19 = load %struct._xmlNode*, %struct._xmlNode** %8, align 8, !dbg !110
  %20 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %19, i32 0, i32 0, !dbg !111
  store i32 4, i32* %20, align 8, !dbg !112
  %21 = load %struct._xmlDoc*, %struct._xmlDoc** %5, align 8, !dbg !113
  %22 = load %struct._xmlNode*, %struct._xmlNode** %8, align 8, !dbg !114
  %23 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %22, i32 0, i32 2, !dbg !115
  store %struct._xmlDoc* %21, %struct._xmlDoc** %23, align 8, !dbg !116
  %24 = load i8*, i8** %6, align 8, !dbg !117
  %25 = icmp ne i8* %24, null, !dbg !119
  br i1 %25, label %26, label %32, !dbg !120

26:                                               ; preds = %14
  %27 = load i8*, i8** %6, align 8, !dbg !121
  %28 = load i32, i32* %7, align 4, !dbg !123
  %29 = call i8* @xmlStrndup(i8* noundef %27, i32 noundef %28), !dbg !124
  %30 = load %struct._xmlNode*, %struct._xmlNode** %8, align 8, !dbg !125
  %31 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %30, i32 0, i32 1, !dbg !126
  store i8* %29, i8** %31, align 8, !dbg !127
  br label %32, !dbg !128

32:                                               ; preds = %26, %14
  %33 = load %struct._xmlNode*, %struct._xmlNode** %8, align 8, !dbg !129
  store %struct._xmlNode* %33, %struct._xmlNode** %4, align 8, !dbg !130
  br label %34, !dbg !130

34:                                               ; preds = %32, %13
  %35 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !131
  ret %struct._xmlNode* %35, !dbg !131
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !132 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlDoc*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._xmlNode*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %2, metadata !135, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.declare(metadata i8** %3, metadata !137, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.declare(metadata i32* %4, metadata !139, metadata !DIExpression()), !dbg !140
  %6 = bitcast %struct._xmlDoc** %2 to i8*, !dbg !141
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)), !dbg !142
  %7 = bitcast i32* %4 to i8*, !dbg !143
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)), !dbg !144
  %8 = call noalias i8* @malloc(i64 noundef 256) #8, !dbg !145
  store i8* %8, i8** %3, align 8, !dbg !146
  %9 = load i8*, i8** %3, align 8, !dbg !147
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 256, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)), !dbg !148
  %10 = load i32, i32* %4, align 4, !dbg !149
  %11 = icmp sge i32 %10, 0, !dbg !150
  %12 = zext i1 %11 to i32, !dbg !150
  %13 = sext i32 %12 to i64, !dbg !149
  call void @klee_assume(i64 noundef %13), !dbg !151
  %14 = load i32, i32* %4, align 4, !dbg !152
  %15 = icmp sle i32 %14, 255, !dbg !153
  %16 = zext i1 %15 to i32, !dbg !153
  %17 = sext i32 %16 to i64, !dbg !152
  call void @klee_assume(i64 noundef %17), !dbg !154
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %5, metadata !155, metadata !DIExpression()), !dbg !156
  %18 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !157
  %19 = load i8*, i8** %3, align 8, !dbg !158
  %20 = load i32, i32* %4, align 4, !dbg !159
  %21 = call %struct._xmlNode* @xmlNewCDataBlock(%struct._xmlDoc* noundef %18, i8* noundef %19, i32 noundef %20), !dbg !160
  store %struct._xmlNode* %21, %struct._xmlNode** %5, align 8, !dbg !156
  %22 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !161
  %23 = icmp ne %struct._xmlNode* %22, null, !dbg !161
  br i1 %23, label %24, label %36, !dbg !163

24:                                               ; preds = %0
  %25 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !164
  %26 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %25, i32 0, i32 1, !dbg !167
  %27 = load i8*, i8** %26, align 8, !dbg !167
  %28 = icmp ne i8* %27, null, !dbg !164
  br i1 %28, label %29, label %33, !dbg !168

29:                                               ; preds = %24
  %30 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !169
  %31 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %30, i32 0, i32 1, !dbg !171
  %32 = load i8*, i8** %31, align 8, !dbg !171
  call void @free(i8* noundef %32) #8, !dbg !172
  br label %33, !dbg !173

33:                                               ; preds = %29, %24
  %34 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !174
  %35 = bitcast %struct._xmlNode* %34 to i8*, !dbg !174
  call void @free(i8* noundef %35) #8, !dbg !175
  br label %36, !dbg !176

36:                                               ; preds = %33, %0
  %37 = load i8*, i8** %3, align 8, !dbg !177
  call void @free(i8* noundef %37) #8, !dbg !178
  ret i32 0, !dbg !179
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #6

declare void @klee_assume(i64 noundef) #6

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !180 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !186, metadata !DIExpression()), !dbg !187
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !188, metadata !DIExpression()), !dbg !189
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !190, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.declare(metadata i8** %7, metadata !192, metadata !DIExpression()), !dbg !193
  %9 = load i8*, i8** %4, align 8, !dbg !194
  store i8* %9, i8** %7, align 8, !dbg !193
  call void @llvm.dbg.declare(metadata i8** %8, metadata !195, metadata !DIExpression()), !dbg !196
  %10 = load i8*, i8** %5, align 8, !dbg !197
  store i8* %10, i8** %8, align 8, !dbg !196
  br label %11, !dbg !198

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !199
  %13 = add i64 %12, -1, !dbg !199
  store i64 %13, i64* %6, align 8, !dbg !199
  %14 = icmp ugt i64 %12, 0, !dbg !200
  br i1 %14, label %15, label %21, !dbg !198

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !201
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !201
  store i8* %17, i8** %8, align 8, !dbg !201
  %18 = load i8, i8* %16, align 1, !dbg !202
  %19 = load i8*, i8** %7, align 8, !dbg !203
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !203
  store i8* %20, i8** %7, align 8, !dbg !203
  store i8 %18, i8* %19, align 1, !dbg !204
  br label %11, !dbg !198, !llvm.loop !205

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !207
  ret i8* %22, !dbg !208
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #7 !dbg !209 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !213, metadata !DIExpression()), !dbg !214
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !215, metadata !DIExpression()), !dbg !216
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !217, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.declare(metadata i8** %7, metadata !219, metadata !DIExpression()), !dbg !220
  %8 = load i8*, i8** %4, align 8, !dbg !221
  store i8* %8, i8** %7, align 8, !dbg !220
  br label %9, !dbg !222

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !223
  %11 = add i64 %10, -1, !dbg !223
  store i64 %11, i64* %6, align 8, !dbg !223
  %12 = icmp ugt i64 %10, 0, !dbg !224
  br i1 %12, label %13, label %18, !dbg !222

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !225
  %15 = trunc i32 %14 to i8, !dbg !225
  %16 = load i8*, i8** %7, align 8, !dbg !226
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !226
  store i8* %17, i8** %7, align 8, !dbg !226
  store i8 %15, i8* %16, align 1, !dbg !227
  br label %9, !dbg !222, !llvm.loop !228

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !229
  ret i8* %19, !dbg !230
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31, !31, !31}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/271_tree.c_2796_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "f1a336b76722e37e0ffb9856ac1442a2")
!2 = !{!3, !4, !6}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !1, line: 11, baseType: !7)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 10, baseType: !9)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 15, size: 192, elements: !10)
!10 = !{!11, !13, !14}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !9, file: !1, line: 16, baseType: !12, size: 32)
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !9, file: !1, line: 17, baseType: !3, size: 64, offset: 64)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !9, file: !1, line: 18, baseType: !15, size: 64, offset: 128)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !1, line: 13, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !1, line: 12, baseType: !18)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !1, line: 22, elements: !19)
!19 = !{}
!20 = distinct !DICompileUnit(language: DW_LANG_C99, file: !21, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!21 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!22 = distinct !DICompileUnit(language: DW_LANG_C99, file: !23, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!23 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!24 = !{i32 7, !"Dwarf Version", i32 5}
!25 = !{i32 2, !"Debug Info Version", i32 3}
!26 = !{i32 1, !"wchar_size", i32 4}
!27 = !{i32 7, !"PIC Level", i32 2}
!28 = !{i32 7, !"PIE Level", i32 2}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"Ubuntu clang version 14.0.6"}
!32 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 32, type: !33, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !19)
!33 = !DISubroutineType(types: !34)
!34 = !{!3, !35}
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !36, line: 46, baseType: !37)
!36 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!37 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!38 = !DILocalVariable(name: "size", arg: 1, scope: !32, file: !1, line: 32, type: !35)
!39 = !DILocation(line: 32, column: 24, scope: !32)
!40 = !DILocation(line: 33, column: 19, scope: !32)
!41 = !DILocation(line: 33, column: 12, scope: !32)
!42 = !DILocation(line: 33, column: 5, scope: !32)
!43 = distinct !DISubprogram(name: "xmlTreeErrMemory", scope: !1, file: !1, line: 36, type: !44, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !19)
!44 = !DISubroutineType(types: !45)
!45 = !{null, !46}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!48 = !DILocalVariable(name: "msg", arg: 1, scope: !43, file: !1, line: 36, type: !46)
!49 = !DILocation(line: 36, column: 35, scope: !43)
!50 = !DILocation(line: 38, column: 1, scope: !43)
!51 = distinct !DISubprogram(name: "xmlStrndup", scope: !1, file: !1, line: 40, type: !52, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !19)
!52 = !DISubroutineType(types: !53)
!53 = !{!4, !46, !12}
!54 = !DILocalVariable(name: "str", arg: 1, scope: !51, file: !1, line: 40, type: !46)
!55 = !DILocation(line: 40, column: 30, scope: !51)
!56 = !DILocalVariable(name: "len", arg: 2, scope: !51, file: !1, line: 40, type: !12)
!57 = !DILocation(line: 40, column: 39, scope: !51)
!58 = !DILocation(line: 41, column: 9, scope: !59)
!59 = distinct !DILexicalBlock(scope: !51, file: !1, line: 41, column: 9)
!60 = !DILocation(line: 41, column: 13, scope: !59)
!61 = !DILocation(line: 41, column: 21, scope: !59)
!62 = !DILocation(line: 41, column: 24, scope: !59)
!63 = !DILocation(line: 41, column: 28, scope: !59)
!64 = !DILocation(line: 41, column: 9, scope: !51)
!65 = !DILocation(line: 41, column: 33, scope: !59)
!66 = !DILocalVariable(name: "dup", scope: !51, file: !1, line: 43, type: !4)
!67 = !DILocation(line: 43, column: 11, scope: !51)
!68 = !DILocation(line: 43, column: 32, scope: !51)
!69 = !DILocation(line: 43, column: 36, scope: !51)
!70 = !DILocation(line: 43, column: 25, scope: !51)
!71 = !DILocation(line: 44, column: 9, scope: !72)
!72 = distinct !DILexicalBlock(scope: !51, file: !1, line: 44, column: 9)
!73 = !DILocation(line: 44, column: 13, scope: !72)
!74 = !DILocation(line: 44, column: 9, scope: !51)
!75 = !DILocation(line: 44, column: 22, scope: !72)
!76 = !DILocation(line: 46, column: 12, scope: !51)
!77 = !DILocation(line: 46, column: 17, scope: !51)
!78 = !DILocation(line: 46, column: 22, scope: !51)
!79 = !DILocation(line: 46, column: 5, scope: !51)
!80 = !DILocation(line: 47, column: 5, scope: !51)
!81 = !DILocation(line: 47, column: 9, scope: !51)
!82 = !DILocation(line: 47, column: 14, scope: !51)
!83 = !DILocation(line: 48, column: 12, scope: !51)
!84 = !DILocation(line: 48, column: 5, scope: !51)
!85 = !DILocation(line: 49, column: 1, scope: !51)
!86 = distinct !DISubprogram(name: "xmlNewCDataBlock", scope: !1, file: !1, line: 52, type: !87, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !19)
!87 = !DISubroutineType(types: !88)
!88 = !{!6, !15, !46, !12}
!89 = !DILocalVariable(name: "doc", arg: 1, scope: !86, file: !1, line: 52, type: !15)
!90 = !DILocation(line: 52, column: 39, scope: !86)
!91 = !DILocalVariable(name: "content", arg: 2, scope: !86, file: !1, line: 52, type: !46)
!92 = !DILocation(line: 52, column: 56, scope: !86)
!93 = !DILocalVariable(name: "len", arg: 3, scope: !86, file: !1, line: 52, type: !12)
!94 = !DILocation(line: 52, column: 69, scope: !86)
!95 = !DILocalVariable(name: "cur", scope: !86, file: !1, line: 53, type: !6)
!96 = !DILocation(line: 53, column: 16, scope: !86)
!97 = !DILocation(line: 58, column: 24, scope: !86)
!98 = !DILocation(line: 58, column: 11, scope: !86)
!99 = !DILocation(line: 58, column: 9, scope: !86)
!100 = !DILocation(line: 59, column: 9, scope: !101)
!101 = distinct !DILexicalBlock(scope: !86, file: !1, line: 59, column: 9)
!102 = !DILocation(line: 59, column: 13, scope: !101)
!103 = !DILocation(line: 59, column: 9, scope: !86)
!104 = !DILocation(line: 60, column: 9, scope: !105)
!105 = distinct !DILexicalBlock(scope: !101, file: !1, line: 59, column: 22)
!106 = !DILocation(line: 61, column: 9, scope: !105)
!107 = !DILocation(line: 65, column: 12, scope: !86)
!108 = !DILocation(line: 65, column: 5, scope: !86)
!109 = !DILocation(line: 71, column: 5, scope: !86)
!110 = !DILocation(line: 73, column: 5, scope: !86)
!111 = !DILocation(line: 73, column: 10, scope: !86)
!112 = !DILocation(line: 73, column: 15, scope: !86)
!113 = !DILocation(line: 74, column: 16, scope: !86)
!114 = !DILocation(line: 74, column: 5, scope: !86)
!115 = !DILocation(line: 74, column: 10, scope: !86)
!116 = !DILocation(line: 74, column: 14, scope: !86)
!117 = !DILocation(line: 76, column: 9, scope: !118)
!118 = distinct !DILexicalBlock(scope: !86, file: !1, line: 76, column: 9)
!119 = !DILocation(line: 76, column: 17, scope: !118)
!120 = !DILocation(line: 76, column: 9, scope: !86)
!121 = !DILocation(line: 77, column: 35, scope: !122)
!122 = distinct !DILexicalBlock(scope: !118, file: !1, line: 76, column: 26)
!123 = !DILocation(line: 77, column: 44, scope: !122)
!124 = !DILocation(line: 77, column: 24, scope: !122)
!125 = !DILocation(line: 77, column: 9, scope: !122)
!126 = !DILocation(line: 77, column: 14, scope: !122)
!127 = !DILocation(line: 77, column: 22, scope: !122)
!128 = !DILocation(line: 78, column: 5, scope: !122)
!129 = !DILocation(line: 80, column: 12, scope: !86)
!130 = !DILocation(line: 80, column: 5, scope: !86)
!131 = !DILocation(line: 81, column: 1, scope: !86)
!132 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 84, type: !133, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !19)
!133 = !DISubroutineType(types: !134)
!134 = !{!12}
!135 = !DILocalVariable(name: "doc", scope: !132, file: !1, line: 85, type: !15)
!136 = !DILocation(line: 85, column: 15, scope: !132)
!137 = !DILocalVariable(name: "content", scope: !132, file: !1, line: 86, type: !4)
!138 = !DILocation(line: 86, column: 11, scope: !132)
!139 = !DILocalVariable(name: "len", scope: !132, file: !1, line: 87, type: !12)
!140 = !DILocation(line: 87, column: 9, scope: !132)
!141 = !DILocation(line: 90, column: 24, scope: !132)
!142 = !DILocation(line: 90, column: 5, scope: !132)
!143 = !DILocation(line: 91, column: 24, scope: !132)
!144 = !DILocation(line: 91, column: 5, scope: !132)
!145 = !DILocation(line: 94, column: 23, scope: !132)
!146 = !DILocation(line: 94, column: 13, scope: !132)
!147 = !DILocation(line: 95, column: 24, scope: !132)
!148 = !DILocation(line: 95, column: 5, scope: !132)
!149 = !DILocation(line: 98, column: 17, scope: !132)
!150 = !DILocation(line: 98, column: 21, scope: !132)
!151 = !DILocation(line: 98, column: 5, scope: !132)
!152 = !DILocation(line: 99, column: 17, scope: !132)
!153 = !DILocation(line: 99, column: 21, scope: !132)
!154 = !DILocation(line: 99, column: 5, scope: !132)
!155 = !DILocalVariable(name: "result", scope: !132, file: !1, line: 102, type: !6)
!156 = !DILocation(line: 102, column: 16, scope: !132)
!157 = !DILocation(line: 102, column: 42, scope: !132)
!158 = !DILocation(line: 102, column: 47, scope: !132)
!159 = !DILocation(line: 102, column: 56, scope: !132)
!160 = !DILocation(line: 102, column: 25, scope: !132)
!161 = !DILocation(line: 105, column: 9, scope: !162)
!162 = distinct !DILexicalBlock(scope: !132, file: !1, line: 105, column: 9)
!163 = !DILocation(line: 105, column: 9, scope: !132)
!164 = !DILocation(line: 106, column: 13, scope: !165)
!165 = distinct !DILexicalBlock(scope: !166, file: !1, line: 106, column: 13)
!166 = distinct !DILexicalBlock(scope: !162, file: !1, line: 105, column: 17)
!167 = !DILocation(line: 106, column: 21, scope: !165)
!168 = !DILocation(line: 106, column: 13, scope: !166)
!169 = !DILocation(line: 107, column: 18, scope: !170)
!170 = distinct !DILexicalBlock(scope: !165, file: !1, line: 106, column: 30)
!171 = !DILocation(line: 107, column: 26, scope: !170)
!172 = !DILocation(line: 107, column: 13, scope: !170)
!173 = !DILocation(line: 108, column: 9, scope: !170)
!174 = !DILocation(line: 109, column: 14, scope: !166)
!175 = !DILocation(line: 109, column: 9, scope: !166)
!176 = !DILocation(line: 110, column: 5, scope: !166)
!177 = !DILocation(line: 111, column: 10, scope: !132)
!178 = !DILocation(line: 111, column: 5, scope: !132)
!179 = !DILocation(line: 113, column: 5, scope: !132)
!180 = distinct !DISubprogram(name: "memcpy", scope: !181, file: !181, line: 12, type: !182, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !20, retainedNodes: !19)
!181 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!182 = !DISubroutineType(types: !183)
!183 = !{!3, !3, !184, !35}
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!186 = !DILocalVariable(name: "destaddr", arg: 1, scope: !180, file: !181, line: 12, type: !3)
!187 = !DILocation(line: 12, column: 20, scope: !180)
!188 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !180, file: !181, line: 12, type: !184)
!189 = !DILocation(line: 12, column: 42, scope: !180)
!190 = !DILocalVariable(name: "len", arg: 3, scope: !180, file: !181, line: 12, type: !35)
!191 = !DILocation(line: 12, column: 58, scope: !180)
!192 = !DILocalVariable(name: "dest", scope: !180, file: !181, line: 13, type: !4)
!193 = !DILocation(line: 13, column: 9, scope: !180)
!194 = !DILocation(line: 13, column: 16, scope: !180)
!195 = !DILocalVariable(name: "src", scope: !180, file: !181, line: 14, type: !46)
!196 = !DILocation(line: 14, column: 15, scope: !180)
!197 = !DILocation(line: 14, column: 21, scope: !180)
!198 = !DILocation(line: 16, column: 3, scope: !180)
!199 = !DILocation(line: 16, column: 13, scope: !180)
!200 = !DILocation(line: 16, column: 16, scope: !180)
!201 = !DILocation(line: 17, column: 19, scope: !180)
!202 = !DILocation(line: 17, column: 15, scope: !180)
!203 = !DILocation(line: 17, column: 10, scope: !180)
!204 = !DILocation(line: 17, column: 13, scope: !180)
!205 = distinct !{!205, !198, !201, !206}
!206 = !{!"llvm.loop.mustprogress"}
!207 = !DILocation(line: 18, column: 10, scope: !180)
!208 = !DILocation(line: 18, column: 3, scope: !180)
!209 = distinct !DISubprogram(name: "memset", scope: !210, file: !210, line: 12, type: !211, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !19)
!210 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!211 = !DISubroutineType(types: !212)
!212 = !{!3, !3, !12, !35}
!213 = !DILocalVariable(name: "dst", arg: 1, scope: !209, file: !210, line: 12, type: !3)
!214 = !DILocation(line: 12, column: 20, scope: !209)
!215 = !DILocalVariable(name: "s", arg: 2, scope: !209, file: !210, line: 12, type: !12)
!216 = !DILocation(line: 12, column: 29, scope: !209)
!217 = !DILocalVariable(name: "count", arg: 3, scope: !209, file: !210, line: 12, type: !35)
!218 = !DILocation(line: 12, column: 39, scope: !209)
!219 = !DILocalVariable(name: "a", scope: !209, file: !210, line: 13, type: !4)
!220 = !DILocation(line: 13, column: 9, scope: !209)
!221 = !DILocation(line: 13, column: 13, scope: !209)
!222 = !DILocation(line: 14, column: 3, scope: !209)
!223 = !DILocation(line: 14, column: 15, scope: !209)
!224 = !DILocation(line: 14, column: 18, scope: !209)
!225 = !DILocation(line: 15, column: 12, scope: !209)
!226 = !DILocation(line: 15, column: 7, scope: !209)
!227 = !DILocation(line: 15, column: 10, scope: !209)
!228 = distinct !{!228, !222, !225, !206}
!229 = !DILocation(line: 16, column: 10, scope: !209)
!230 = !DILocation(line: 16, column: 3, scope: !209)

; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/272_tree.c_2640_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/272_tree.c_2640_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i64 }
%struct._xmlDoc = type opaque

@.str = private unnamed_addr constant [14 x i8] c"building text\00", align 1
@xmlStringText = dso_local global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), align 8, !dbg !0
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"(len >= 0) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/272_tree.c_2640_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlStringGetNodeList = private unnamed_addr constant [51 x i8] c"xmlNodePtr xmlStringGetNodeList(const char *, int)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"content\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlNode* @xmlStringGetNodeList(i8* noundef %0, i32 noundef %1) #0 !dbg !44 {
  %3 = alloca %struct._xmlNode*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._xmlNode*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !48, metadata !DIExpression()), !dbg !49
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !50, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %6, metadata !52, metadata !DIExpression()), !dbg !53
  %7 = call i8* @xmlMalloc(i64 noundef 88), !dbg !54
  %8 = bitcast i8* %7 to %struct._xmlNode*, !dbg !55
  store %struct._xmlNode* %8, %struct._xmlNode** %6, align 8, !dbg !56
  %9 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !57
  %10 = icmp eq %struct._xmlNode* %9, null, !dbg !59
  br i1 %10, label %11, label %12, !dbg !60

11:                                               ; preds = %2
  call void @xmlTreeErrMemory(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)), !dbg !61
  store %struct._xmlNode* null, %struct._xmlNode** %3, align 8, !dbg !63
  br label %39, !dbg !63

12:                                               ; preds = %2
  %13 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !64
  %14 = bitcast %struct._xmlNode* %13 to i8*, !dbg !65
  %15 = call i8* @memset(i8* %14, i32 0, i64 88), !dbg !65
  %16 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !66
  %17 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %16, i32 0, i32 1, !dbg !67
  store i32 3, i32* %17, align 8, !dbg !68
  %18 = load i8*, i8** @xmlStringText, align 8, !dbg !69
  %19 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !70
  %20 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %19, i32 0, i32 2, !dbg !71
  store i8* %18, i8** %20, align 8, !dbg !72
  %21 = load i8*, i8** %4, align 8, !dbg !73
  %22 = icmp ne i8* %21, null, !dbg !75
  br i1 %22, label %23, label %37, !dbg !76

23:                                               ; preds = %12
  %24 = load i8*, i8** %4, align 8, !dbg !77
  %25 = load i32, i32* %5, align 4, !dbg !79
  %26 = call i8* @xmlStrndup(i8* noundef %24, i32 noundef %25), !dbg !80
  %27 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !81
  %28 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %27, i32 0, i32 9, !dbg !82
  store i8* %26, i8** %28, align 8, !dbg !83
  %29 = load i32, i32* %5, align 4, !dbg !84
  %30 = icmp sge i32 %29, 0, !dbg !84
  br i1 %30, label %31, label %33, !dbg !84

31:                                               ; preds = %23
  br i1 true, label %32, label %33, !dbg !84

32:                                               ; preds = %31
  br label %35, !dbg !84

33:                                               ; preds = %31, %23
  %34 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.3, i64 0, i64 0), i32 noundef 46, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.xmlStringGetNodeList, i64 0, i64 0)), !dbg !84
  br label %35, !dbg !84

35:                                               ; preds = %33, %32
  %36 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.3, i64 0, i64 0), i32 noundef 47, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.xmlStringGetNodeList, i64 0, i64 0)), !dbg !85
  br label %37, !dbg !86

37:                                               ; preds = %35, %12
  %38 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !87
  store %struct._xmlNode* %38, %struct._xmlNode** %3, align 8, !dbg !88
  br label %39, !dbg !88

39:                                               ; preds = %37, %11
  %40 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !89
  ret %struct._xmlNode* %40, !dbg !89
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !90 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !95, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.declare(metadata i8** %3, metadata !97, metadata !DIExpression()), !dbg !98
  %4 = load i64, i64* %2, align 8, !dbg !99
  %5 = call noalias i8* @malloc(i64 noundef %4) #8, !dbg !100
  store i8* %5, i8** %3, align 8, !dbg !98
  %6 = load i8*, i8** %3, align 8, !dbg !101
  %7 = icmp ne i8* %6, null, !dbg !101
  br i1 %7, label %8, label %13, !dbg !103

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8, !dbg !104
  %10 = icmp ne i8* %9, null, !dbg !105
  %11 = zext i1 %10 to i32, !dbg !105
  %12 = sext i32 %11 to i64, !dbg !104
  call void @klee_assume(i64 noundef %12), !dbg !106
  br label %13, !dbg !106

13:                                               ; preds = %8, %1
  %14 = load i8*, i8** %3, align 8, !dbg !107
  ret i8* %14, !dbg !108
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlTreeErrMemory(i8* noundef %0) #0 !dbg !109 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !112, metadata !DIExpression()), !dbg !113
  ret void, !dbg !114
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlStrndup(i8* noundef %0, i32 noundef %1) #0 !dbg !115 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !118, metadata !DIExpression()), !dbg !119
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !120, metadata !DIExpression()), !dbg !121
  call void @llvm.dbg.declare(metadata i8** %6, metadata !122, metadata !DIExpression()), !dbg !123
  %7 = load i8*, i8** %4, align 8, !dbg !124
  %8 = icmp eq i8* %7, null, !dbg !126
  br i1 %8, label %9, label %10, !dbg !127

9:                                                ; preds = %2
  store i8* null, i8** %3, align 8, !dbg !128
  br label %33, !dbg !128

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4, !dbg !129
  %12 = icmp slt i32 %11, 0, !dbg !131
  br i1 %12, label %13, label %14, !dbg !132

13:                                               ; preds = %10
  store i8* null, i8** %3, align 8, !dbg !133
  br label %33, !dbg !133

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4, !dbg !134
  %16 = add nsw i32 %15, 1, !dbg !135
  %17 = sext i32 %16 to i64, !dbg !134
  %18 = call noalias i8* @malloc(i64 noundef %17) #8, !dbg !136
  store i8* %18, i8** %6, align 8, !dbg !137
  %19 = load i8*, i8** %6, align 8, !dbg !138
  %20 = icmp eq i8* %19, null, !dbg !140
  br i1 %20, label %21, label %22, !dbg !141

21:                                               ; preds = %14
  store i8* null, i8** %3, align 8, !dbg !142
  br label %33, !dbg !142

22:                                               ; preds = %14
  %23 = load i8*, i8** %6, align 8, !dbg !143
  %24 = load i8*, i8** %4, align 8, !dbg !144
  %25 = load i32, i32* %5, align 4, !dbg !145
  %26 = sext i32 %25 to i64, !dbg !145
  %27 = call i8* @memcpy(i8* %23, i8* %24, i64 %26), !dbg !146
  %28 = load i8*, i8** %6, align 8, !dbg !147
  %29 = load i32, i32* %5, align 4, !dbg !148
  %30 = sext i32 %29 to i64, !dbg !147
  %31 = getelementptr inbounds i8, i8* %28, i64 %30, !dbg !147
  store i8 0, i8* %31, align 1, !dbg !149
  %32 = load i8*, i8** %6, align 8, !dbg !150
  store i8* %32, i8** %3, align 8, !dbg !151
  br label %33, !dbg !151

33:                                               ; preds = %22, %21, %13, %9
  %34 = load i8*, i8** %3, align 8, !dbg !152
  ret i8* %34, !dbg !152
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

declare void @klee_assume(i64 noundef) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !153 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [256 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !156, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !158, metadata !DIExpression()), !dbg !162
  %4 = bitcast i32* %2 to i8*, !dbg !163
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)), !dbg !164
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !165
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 256, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)), !dbg !166
  %6 = load i32, i32* %2, align 4, !dbg !167
  %7 = icmp sge i32 %6, 0, !dbg !168
  %8 = zext i1 %7 to i32, !dbg !168
  %9 = sext i32 %8 to i64, !dbg !167
  call void @klee_assume(i64 noundef %9), !dbg !169
  %10 = load i32, i32* %2, align 4, !dbg !170
  %11 = icmp sle i32 %10, 256, !dbg !171
  %12 = zext i1 %11 to i32, !dbg !171
  %13 = sext i32 %12 to i64, !dbg !170
  call void @klee_assume(i64 noundef %13), !dbg !172
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !173
  %15 = load i32, i32* %2, align 4, !dbg !174
  %16 = call %struct._xmlNode* @xmlStringGetNodeList(i8* noundef %14, i32 noundef %15), !dbg !175
  ret i32 0, !dbg !176
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !177 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !183, metadata !DIExpression()), !dbg !184
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !185, metadata !DIExpression()), !dbg !186
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !187, metadata !DIExpression()), !dbg !188
  call void @llvm.dbg.declare(metadata i8** %7, metadata !189, metadata !DIExpression()), !dbg !190
  %9 = load i8*, i8** %4, align 8, !dbg !191
  store i8* %9, i8** %7, align 8, !dbg !190
  call void @llvm.dbg.declare(metadata i8** %8, metadata !192, metadata !DIExpression()), !dbg !193
  %10 = load i8*, i8** %5, align 8, !dbg !194
  store i8* %10, i8** %8, align 8, !dbg !193
  br label %11, !dbg !195

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !196
  %13 = add i64 %12, -1, !dbg !196
  store i64 %13, i64* %6, align 8, !dbg !196
  %14 = icmp ugt i64 %12, 0, !dbg !197
  br i1 %14, label %15, label %21, !dbg !195

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !198
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !198
  store i8* %17, i8** %8, align 8, !dbg !198
  %18 = load i8, i8* %16, align 1, !dbg !199
  %19 = load i8*, i8** %7, align 8, !dbg !200
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !200
  store i8* %20, i8** %7, align 8, !dbg !200
  store i8 %18, i8* %19, align 1, !dbg !201
  br label %11, !dbg !195, !llvm.loop !202

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !204
  ret i8* %22, !dbg !205
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #7 !dbg !206 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !210, metadata !DIExpression()), !dbg !211
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !212, metadata !DIExpression()), !dbg !213
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !214, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.declare(metadata i8** %7, metadata !216, metadata !DIExpression()), !dbg !217
  %8 = load i8*, i8** %4, align 8, !dbg !218
  store i8* %8, i8** %7, align 8, !dbg !217
  br label %9, !dbg !219

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !220
  %11 = add i64 %10, -1, !dbg !220
  store i64 %11, i64* %6, align 8, !dbg !220
  %12 = icmp ugt i64 %10, 0, !dbg !221
  br i1 %12, label %13, label %18, !dbg !219

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !222
  %15 = trunc i32 %14 to i8, !dbg !222
  %16 = load i8*, i8** %7, align 8, !dbg !223
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !223
  store i8* %17, i8** %7, align 8, !dbg !223
  store i8 %15, i8* %16, align 1, !dbg !224
  br label %9, !dbg !219, !llvm.loop !225

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !226
  ret i8* %19, !dbg !227
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43, !43, !43}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "xmlStringText", scope: !2, file: !3, line: 73, type: !15, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !31, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/272_tree.c_2640_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "cfb847b2680845e2e11531e23c06c079")
!4 = !{!5, !11, !28}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !3, line: 24, baseType: !6)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !3, line: 9, baseType: !8)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !3, line: 10, size: 704, elements: !9)
!9 = !{!10, !12, !14, !18, !20, !21, !22, !23, !24, !27, !29}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !8, file: !3, line: 11, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !8, file: !3, line: 12, baseType: !13, size: 32, offset: 64)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !8, file: !3, line: 13, baseType: !15, size: 64, offset: 128)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !8, file: !3, line: 14, baseType: !19, size: 64, offset: 192)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !8, file: !3, line: 15, baseType: !19, size: 64, offset: 256)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !8, file: !3, line: 16, baseType: !19, size: 64, offset: 320)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !8, file: !3, line: 17, baseType: !19, size: 64, offset: 384)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !8, file: !3, line: 18, baseType: !19, size: 64, offset: 448)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !8, file: !3, line: 19, baseType: !25, size: 64, offset: 512)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !3, line: 19, flags: DIFlagFwdDecl)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !8, file: !3, line: 20, baseType: !28, size: 64, offset: 576)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !8, file: !3, line: 21, baseType: !30, size: 64, offset: 640)
!30 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!31 = !{!0}
!32 = distinct !DICompileUnit(language: DW_LANG_C99, file: !33, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!33 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!34 = distinct !DICompileUnit(language: DW_LANG_C99, file: !35, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!35 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!36 = !{i32 7, !"Dwarf Version", i32 5}
!37 = !{i32 2, !"Debug Info Version", i32 3}
!38 = !{i32 1, !"wchar_size", i32 4}
!39 = !{i32 7, !"PIC Level", i32 2}
!40 = !{i32 7, !"PIE Level", i32 2}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"Ubuntu clang version 14.0.6"}
!44 = distinct !DISubprogram(name: "xmlStringGetNodeList", scope: !3, file: !3, line: 32, type: !45, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !47)
!45 = !DISubroutineType(types: !46)
!46 = !{!5, !15, !13}
!47 = !{}
!48 = !DILocalVariable(name: "content", arg: 1, scope: !44, file: !3, line: 32, type: !15)
!49 = !DILocation(line: 32, column: 45, scope: !44)
!50 = !DILocalVariable(name: "len", arg: 2, scope: !44, file: !3, line: 32, type: !13)
!51 = !DILocation(line: 32, column: 58, scope: !44)
!52 = !DILocalVariable(name: "cur", scope: !44, file: !3, line: 33, type: !5)
!53 = !DILocation(line: 33, column: 16, scope: !44)
!54 = !DILocation(line: 35, column: 24, scope: !44)
!55 = !DILocation(line: 35, column: 11, scope: !44)
!56 = !DILocation(line: 35, column: 9, scope: !44)
!57 = !DILocation(line: 36, column: 9, scope: !58)
!58 = distinct !DILexicalBlock(scope: !44, file: !3, line: 36, column: 9)
!59 = !DILocation(line: 36, column: 13, scope: !58)
!60 = !DILocation(line: 36, column: 9, scope: !44)
!61 = !DILocation(line: 37, column: 9, scope: !62)
!62 = distinct !DILexicalBlock(scope: !58, file: !3, line: 36, column: 22)
!63 = !DILocation(line: 38, column: 9, scope: !62)
!64 = !DILocation(line: 40, column: 12, scope: !44)
!65 = !DILocation(line: 40, column: 5, scope: !44)
!66 = !DILocation(line: 41, column: 5, scope: !44)
!67 = !DILocation(line: 41, column: 10, scope: !44)
!68 = !DILocation(line: 41, column: 15, scope: !44)
!69 = !DILocation(line: 43, column: 17, scope: !44)
!70 = !DILocation(line: 43, column: 5, scope: !44)
!71 = !DILocation(line: 43, column: 10, scope: !44)
!72 = !DILocation(line: 43, column: 15, scope: !44)
!73 = !DILocation(line: 44, column: 9, scope: !74)
!74 = distinct !DILexicalBlock(scope: !44, file: !3, line: 44, column: 9)
!75 = !DILocation(line: 44, column: 17, scope: !74)
!76 = !DILocation(line: 44, column: 9, scope: !44)
!77 = !DILocation(line: 45, column: 35, scope: !78)
!78 = distinct !DILexicalBlock(scope: !74, file: !3, line: 44, column: 26)
!79 = !DILocation(line: 45, column: 44, scope: !78)
!80 = !DILocation(line: 45, column: 24, scope: !78)
!81 = !DILocation(line: 45, column: 9, scope: !78)
!82 = !DILocation(line: 45, column: 14, scope: !78)
!83 = !DILocation(line: 45, column: 22, scope: !78)
!84 = !DILocation(line: 46, column: 9, scope: !78)
!85 = !DILocation(line: 47, column: 9, scope: !78)
!86 = !DILocation(line: 48, column: 5, scope: !78)
!87 = !DILocation(line: 50, column: 12, scope: !44)
!88 = !DILocation(line: 50, column: 5, scope: !44)
!89 = !DILocation(line: 51, column: 1, scope: !44)
!90 = distinct !DISubprogram(name: "xmlMalloc", scope: !3, file: !3, line: 53, type: !91, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !47)
!91 = !DISubroutineType(types: !92)
!92 = !{!11, !93}
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !94, line: 46, baseType: !30)
!94 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!95 = !DILocalVariable(name: "size", arg: 1, scope: !90, file: !3, line: 53, type: !93)
!96 = !DILocation(line: 53, column: 24, scope: !90)
!97 = !DILocalVariable(name: "ptr", scope: !90, file: !3, line: 54, type: !11)
!98 = !DILocation(line: 54, column: 11, scope: !90)
!99 = !DILocation(line: 54, column: 24, scope: !90)
!100 = !DILocation(line: 54, column: 17, scope: !90)
!101 = !DILocation(line: 55, column: 9, scope: !102)
!102 = distinct !DILexicalBlock(scope: !90, file: !3, line: 55, column: 9)
!103 = !DILocation(line: 55, column: 9, scope: !90)
!104 = !DILocation(line: 55, column: 26, scope: !102)
!105 = !DILocation(line: 55, column: 30, scope: !102)
!106 = !DILocation(line: 55, column: 14, scope: !102)
!107 = !DILocation(line: 56, column: 12, scope: !90)
!108 = !DILocation(line: 56, column: 5, scope: !90)
!109 = distinct !DISubprogram(name: "xmlTreeErrMemory", scope: !3, file: !3, line: 59, type: !110, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !47)
!110 = !DISubroutineType(types: !111)
!111 = !{null, !15}
!112 = !DILocalVariable(name: "extra", arg: 1, scope: !109, file: !3, line: 59, type: !15)
!113 = !DILocation(line: 59, column: 35, scope: !109)
!114 = !DILocation(line: 60, column: 1, scope: !109)
!115 = distinct !DISubprogram(name: "xmlStrndup", scope: !3, file: !3, line: 62, type: !116, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !47)
!116 = !DISubroutineType(types: !117)
!117 = !{!28, !15, !13}
!118 = !DILocalVariable(name: "cur", arg: 1, scope: !115, file: !3, line: 62, type: !15)
!119 = !DILocation(line: 62, column: 30, scope: !115)
!120 = !DILocalVariable(name: "len", arg: 2, scope: !115, file: !3, line: 62, type: !13)
!121 = !DILocation(line: 62, column: 39, scope: !115)
!122 = !DILocalVariable(name: "dup", scope: !115, file: !3, line: 63, type: !28)
!123 = !DILocation(line: 63, column: 11, scope: !115)
!124 = !DILocation(line: 64, column: 9, scope: !125)
!125 = distinct !DILexicalBlock(scope: !115, file: !3, line: 64, column: 9)
!126 = !DILocation(line: 64, column: 13, scope: !125)
!127 = !DILocation(line: 64, column: 9, scope: !115)
!128 = !DILocation(line: 64, column: 22, scope: !125)
!129 = !DILocation(line: 65, column: 9, scope: !130)
!130 = distinct !DILexicalBlock(scope: !115, file: !3, line: 65, column: 9)
!131 = !DILocation(line: 65, column: 13, scope: !130)
!132 = !DILocation(line: 65, column: 9, scope: !115)
!133 = !DILocation(line: 65, column: 18, scope: !130)
!134 = !DILocation(line: 66, column: 25, scope: !115)
!135 = !DILocation(line: 66, column: 29, scope: !115)
!136 = !DILocation(line: 66, column: 18, scope: !115)
!137 = !DILocation(line: 66, column: 9, scope: !115)
!138 = !DILocation(line: 67, column: 9, scope: !139)
!139 = distinct !DILexicalBlock(scope: !115, file: !3, line: 67, column: 9)
!140 = !DILocation(line: 67, column: 13, scope: !139)
!141 = !DILocation(line: 67, column: 9, scope: !115)
!142 = !DILocation(line: 67, column: 22, scope: !139)
!143 = !DILocation(line: 68, column: 12, scope: !115)
!144 = !DILocation(line: 68, column: 17, scope: !115)
!145 = !DILocation(line: 68, column: 22, scope: !115)
!146 = !DILocation(line: 68, column: 5, scope: !115)
!147 = !DILocation(line: 69, column: 5, scope: !115)
!148 = !DILocation(line: 69, column: 9, scope: !115)
!149 = !DILocation(line: 69, column: 14, scope: !115)
!150 = !DILocation(line: 70, column: 12, scope: !115)
!151 = !DILocation(line: 70, column: 5, scope: !115)
!152 = !DILocation(line: 71, column: 1, scope: !115)
!153 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 75, type: !154, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !47)
!154 = !DISubroutineType(types: !155)
!155 = !{!13}
!156 = !DILocalVariable(name: "len", scope: !153, file: !3, line: 76, type: !13)
!157 = !DILocation(line: 76, column: 9, scope: !153)
!158 = !DILocalVariable(name: "content", scope: !153, file: !3, line: 77, type: !159)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 2048, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 256)
!162 = !DILocation(line: 77, column: 10, scope: !153)
!163 = !DILocation(line: 79, column: 24, scope: !153)
!164 = !DILocation(line: 79, column: 5, scope: !153)
!165 = !DILocation(line: 80, column: 24, scope: !153)
!166 = !DILocation(line: 80, column: 5, scope: !153)
!167 = !DILocation(line: 82, column: 17, scope: !153)
!168 = !DILocation(line: 82, column: 21, scope: !153)
!169 = !DILocation(line: 82, column: 5, scope: !153)
!170 = !DILocation(line: 83, column: 17, scope: !153)
!171 = !DILocation(line: 83, column: 21, scope: !153)
!172 = !DILocation(line: 83, column: 5, scope: !153)
!173 = !DILocation(line: 85, column: 32, scope: !153)
!174 = !DILocation(line: 85, column: 41, scope: !153)
!175 = !DILocation(line: 85, column: 11, scope: !153)
!176 = !DILocation(line: 86, column: 5, scope: !153)
!177 = distinct !DISubprogram(name: "memcpy", scope: !178, file: !178, line: 12, type: !179, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !32, retainedNodes: !47)
!178 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!179 = !DISubroutineType(types: !180)
!180 = !{!11, !11, !181, !93}
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!183 = !DILocalVariable(name: "destaddr", arg: 1, scope: !177, file: !178, line: 12, type: !11)
!184 = !DILocation(line: 12, column: 20, scope: !177)
!185 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !177, file: !178, line: 12, type: !181)
!186 = !DILocation(line: 12, column: 42, scope: !177)
!187 = !DILocalVariable(name: "len", arg: 3, scope: !177, file: !178, line: 12, type: !93)
!188 = !DILocation(line: 12, column: 58, scope: !177)
!189 = !DILocalVariable(name: "dest", scope: !177, file: !178, line: 13, type: !28)
!190 = !DILocation(line: 13, column: 9, scope: !177)
!191 = !DILocation(line: 13, column: 16, scope: !177)
!192 = !DILocalVariable(name: "src", scope: !177, file: !178, line: 14, type: !15)
!193 = !DILocation(line: 14, column: 15, scope: !177)
!194 = !DILocation(line: 14, column: 21, scope: !177)
!195 = !DILocation(line: 16, column: 3, scope: !177)
!196 = !DILocation(line: 16, column: 13, scope: !177)
!197 = !DILocation(line: 16, column: 16, scope: !177)
!198 = !DILocation(line: 17, column: 19, scope: !177)
!199 = !DILocation(line: 17, column: 15, scope: !177)
!200 = !DILocation(line: 17, column: 10, scope: !177)
!201 = !DILocation(line: 17, column: 13, scope: !177)
!202 = distinct !{!202, !195, !198, !203}
!203 = !{!"llvm.loop.mustprogress"}
!204 = !DILocation(line: 18, column: 10, scope: !177)
!205 = !DILocation(line: 18, column: 3, scope: !177)
!206 = distinct !DISubprogram(name: "memset", scope: !207, file: !207, line: 12, type: !208, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !47)
!207 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!208 = !DISubroutineType(types: !209)
!209 = !{!11, !11, !13, !93}
!210 = !DILocalVariable(name: "dst", arg: 1, scope: !206, file: !207, line: 12, type: !11)
!211 = !DILocation(line: 12, column: 20, scope: !206)
!212 = !DILocalVariable(name: "s", arg: 2, scope: !206, file: !207, line: 12, type: !13)
!213 = !DILocation(line: 12, column: 29, scope: !206)
!214 = !DILocalVariable(name: "count", arg: 3, scope: !206, file: !207, line: 12, type: !93)
!215 = !DILocation(line: 12, column: 39, scope: !206)
!216 = !DILocalVariable(name: "a", scope: !206, file: !207, line: 13, type: !28)
!217 = !DILocation(line: 13, column: 9, scope: !206)
!218 = !DILocation(line: 13, column: 13, scope: !206)
!219 = !DILocation(line: 14, column: 3, scope: !206)
!220 = !DILocation(line: 14, column: 15, scope: !206)
!221 = !DILocation(line: 14, column: 18, scope: !206)
!222 = !DILocation(line: 15, column: 12, scope: !206)
!223 = !DILocation(line: 15, column: 7, scope: !206)
!224 = !DILocation(line: 15, column: 10, scope: !206)
!225 = distinct !{!225, !219, !222, !203}
!226 = !DILocation(line: 16, column: 10, scope: !206)
!227 = !DILocation(line: 16, column: 3, scope: !206)

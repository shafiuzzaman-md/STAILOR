; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/277_tree.c_2415_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/277_tree.c_2415_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlNode = type { i32, i8*, i8* }

@.str = private unnamed_addr constant [14 x i8] c"building text\00", align 1
@xmlStringText = internal constant [5 x i8] c"text\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [12 x i8] c"content_buf\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/277_tree.c_2415_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlTreeErrMemory(i8* noundef %0) #0 !dbg !38 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !42, metadata !DIExpression()), !dbg !43
  ret void, !dbg !44
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !45 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !51, metadata !DIExpression()), !dbg !52
  %3 = load i64, i64* %2, align 8, !dbg !53
  %4 = call noalias i8* @malloc(i64 noundef %3) #9, !dbg !54
  ret i8* %4, !dbg !55
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlStrdup(i8* noundef %0) #0 !dbg !56 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !59, metadata !DIExpression()), !dbg !60
  %6 = load i8*, i8** %3, align 8, !dbg !61
  %7 = icmp eq i8* %6, null, !dbg !63
  br i1 %7, label %8, label %9, !dbg !64

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !65
  br label %24, !dbg !65

9:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata i64* %4, metadata !66, metadata !DIExpression()), !dbg !67
  %10 = load i8*, i8** %3, align 8, !dbg !68
  %11 = call i64 @strlen(i8* noundef %10) #10, !dbg !69
  %12 = add i64 %11, 1, !dbg !70
  store i64 %12, i64* %4, align 8, !dbg !67
  call void @llvm.dbg.declare(metadata i8** %5, metadata !71, metadata !DIExpression()), !dbg !72
  %13 = load i64, i64* %4, align 8, !dbg !73
  %14 = call noalias i8* @malloc(i64 noundef %13) #9, !dbg !74
  store i8* %14, i8** %5, align 8, !dbg !72
  %15 = load i8*, i8** %5, align 8, !dbg !75
  %16 = icmp ne i8* %15, null, !dbg !75
  br i1 %16, label %17, label %22, !dbg !77

17:                                               ; preds = %9
  %18 = load i8*, i8** %5, align 8, !dbg !78
  %19 = load i8*, i8** %3, align 8, !dbg !79
  %20 = load i64, i64* %4, align 8, !dbg !80
  %21 = call i8* @memcpy(i8* %18, i8* %19, i64 %20), !dbg !81
  br label %22, !dbg !81

22:                                               ; preds = %17, %9
  %23 = load i8*, i8** %5, align 8, !dbg !82
  store i8* %23, i8** %2, align 8, !dbg !83
  br label %24, !dbg !83

24:                                               ; preds = %22, %8
  %25 = load i8*, i8** %2, align 8, !dbg !84
  ret i8* %25, !dbg !84
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlNode* @xmlStringGetNodeList(i8* noundef %0) #0 !dbg !85 {
  %2 = alloca %struct._xmlNode*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._xmlNode*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !88, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %4, metadata !90, metadata !DIExpression()), !dbg !91
  %5 = call i8* @xmlMalloc(i64 noundef 24), !dbg !92
  %6 = bitcast i8* %5 to %struct._xmlNode*, !dbg !93
  store %struct._xmlNode* %6, %struct._xmlNode** %4, align 8, !dbg !94
  %7 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !95
  %8 = icmp eq %struct._xmlNode* %7, null, !dbg !97
  br i1 %8, label %9, label %10, !dbg !98

9:                                                ; preds = %1
  call void @xmlTreeErrMemory(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)), !dbg !99
  store %struct._xmlNode* null, %struct._xmlNode** %2, align 8, !dbg !101
  br label %27, !dbg !101

10:                                               ; preds = %1
  %11 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !102
  %12 = bitcast %struct._xmlNode* %11 to i8*, !dbg !103
  %13 = call i8* @memset(i8* %12, i32 0, i64 24), !dbg !103
  %14 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !104
  %15 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %14, i32 0, i32 0, !dbg !105
  store i32 3, i32* %15, align 8, !dbg !106
  %16 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !107
  %17 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %16, i32 0, i32 1, !dbg !108
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @xmlStringText, i64 0, i64 0), i8** %17, align 8, !dbg !109
  %18 = load i8*, i8** %3, align 8, !dbg !110
  %19 = icmp ne i8* %18, null, !dbg !112
  br i1 %19, label %20, label %25, !dbg !113

20:                                               ; preds = %10
  %21 = load i8*, i8** %3, align 8, !dbg !114
  %22 = call i8* @xmlStrdup(i8* noundef %21), !dbg !116
  %23 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !117
  %24 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %23, i32 0, i32 2, !dbg !118
  store i8* %22, i8** %24, align 8, !dbg !119
  br label %25, !dbg !120

25:                                               ; preds = %20, %10
  %26 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !121
  store %struct._xmlNode* %26, %struct._xmlNode** %2, align 8, !dbg !122
  br label %27, !dbg !122

27:                                               ; preds = %25, %9
  %28 = load %struct._xmlNode*, %struct._xmlNode** %2, align 8, !dbg !123
  ret %struct._xmlNode* %28, !dbg !123
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !124 {
  %1 = alloca i32, align 4
  %2 = alloca [1024 x i8], align 16
  %3 = alloca %struct._xmlNode*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [1024 x i8]* %2, metadata !127, metadata !DIExpression()), !dbg !131
  %4 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !132
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 1024, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)), !dbg !133
  %5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 1023, !dbg !134
  %6 = load i8, i8* %5, align 1, !dbg !134
  %7 = sext i8 %6 to i32, !dbg !134
  %8 = icmp eq i32 %7, 0, !dbg !135
  %9 = zext i1 %8 to i32, !dbg !135
  %10 = sext i32 %9 to i64, !dbg !134
  call void @klee_assume(i64 noundef %10), !dbg !136
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %3, metadata !137, metadata !DIExpression()), !dbg !138
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !139
  %12 = call %struct._xmlNode* @xmlStringGetNodeList(i8* noundef %11), !dbg !140
  store %struct._xmlNode* %12, %struct._xmlNode** %3, align 8, !dbg !138
  %13 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !141
  %14 = icmp ne %struct._xmlNode* %13, null, !dbg !143
  br i1 %14, label %15, label %17, !dbg !144

15:                                               ; preds = %0
  %16 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.3, i64 0, i64 0), i32 noundef 83, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !145
  br label %17, !dbg !147

17:                                               ; preds = %15, %0
  %18 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !148
  %19 = icmp ne %struct._xmlNode* %18, null, !dbg !148
  br i1 %19, label %20, label %26, !dbg !150

20:                                               ; preds = %17
  %21 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !151
  %22 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %21, i32 0, i32 2, !dbg !153
  %23 = load i8*, i8** %22, align 8, !dbg !153
  call void @free(i8* noundef %23) #9, !dbg !154
  %24 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !155
  %25 = bitcast %struct._xmlNode* %24 to i8*, !dbg !155
  call void @free(i8* noundef %25) #9, !dbg !156
  br label %26, !dbg !157

26:                                               ; preds = %20, %17
  ret i32 0, !dbg !158
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #6

declare void @klee_assume(i64 noundef) #6

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #7

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #8 !dbg !159 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !165, metadata !DIExpression()), !dbg !166
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !167, metadata !DIExpression()), !dbg !168
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !169, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.declare(metadata i8** %7, metadata !171, metadata !DIExpression()), !dbg !173
  %9 = load i8*, i8** %4, align 8, !dbg !174
  store i8* %9, i8** %7, align 8, !dbg !173
  call void @llvm.dbg.declare(metadata i8** %8, metadata !175, metadata !DIExpression()), !dbg !176
  %10 = load i8*, i8** %5, align 8, !dbg !177
  store i8* %10, i8** %8, align 8, !dbg !176
  br label %11, !dbg !178

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !179
  %13 = add i64 %12, -1, !dbg !179
  store i64 %13, i64* %6, align 8, !dbg !179
  %14 = icmp ugt i64 %12, 0, !dbg !180
  br i1 %14, label %15, label %21, !dbg !178

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !181
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !181
  store i8* %17, i8** %8, align 8, !dbg !181
  %18 = load i8, i8* %16, align 1, !dbg !182
  %19 = load i8*, i8** %7, align 8, !dbg !183
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !183
  store i8* %20, i8** %7, align 8, !dbg !183
  store i8 %18, i8* %19, align 1, !dbg !184
  br label %11, !dbg !178, !llvm.loop !185

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !187
  ret i8* %22, !dbg !188
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #8 !dbg !189 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !193, metadata !DIExpression()), !dbg !194
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !195, metadata !DIExpression()), !dbg !196
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !197, metadata !DIExpression()), !dbg !198
  call void @llvm.dbg.declare(metadata i8** %7, metadata !199, metadata !DIExpression()), !dbg !200
  %8 = load i8*, i8** %4, align 8, !dbg !201
  store i8* %8, i8** %7, align 8, !dbg !200
  br label %9, !dbg !202

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !203
  %11 = add i64 %10, -1, !dbg !203
  store i64 %11, i64* %6, align 8, !dbg !203
  %12 = icmp ugt i64 %10, 0, !dbg !204
  br i1 %12, label %13, label %18, !dbg !202

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !205
  %15 = trunc i32 %14 to i8, !dbg !205
  %16 = load i8*, i8** %7, align 8, !dbg !206
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !206
  store i8* %17, i8** %7, align 8, !dbg !206
  store i8 %15, i8* %16, align 1, !dbg !207
  br label %9, !dbg !202, !llvm.loop !208

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !209
  ret i8* %19, !dbg !210
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37, !37, !37}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "xmlStringText", scope: !2, file: !3, line: 40, type: !23, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !22, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/277_tree.c_2415_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "e1e1f344879282f64cd3dcfebdaf7fd6")
!4 = !{!5, !6, !9, !11, !19}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !3, line: 12, baseType: !8)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !3, line: 11, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !3, line: 10, baseType: !14)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !3, line: 15, size: 192, elements: !15)
!15 = !{!16, !18, !21}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !14, file: !3, line: 16, baseType: !17, size: 32)
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !14, file: !3, line: 17, baseType: !19, size: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !14, file: !3, line: 18, baseType: !9, size: 64, offset: 128)
!22 = !{!0}
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 40, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 5)
!26 = distinct !DICompileUnit(language: DW_LANG_C99, file: !27, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!27 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!28 = distinct !DICompileUnit(language: DW_LANG_C99, file: !29, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!29 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!30 = !{i32 7, !"Dwarf Version", i32 5}
!31 = !{i32 2, !"Debug Info Version", i32 3}
!32 = !{i32 1, !"wchar_size", i32 4}
!33 = !{i32 7, !"PIC Level", i32 2}
!34 = !{i32 7, !"PIE Level", i32 2}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"Ubuntu clang version 14.0.6"}
!38 = distinct !DISubprogram(name: "xmlTreeErrMemory", scope: !3, file: !3, line: 23, type: !39, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !41)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !6}
!41 = !{}
!42 = !DILocalVariable(name: "msg", arg: 1, scope: !38, file: !3, line: 23, type: !6)
!43 = !DILocation(line: 23, column: 35, scope: !38)
!44 = !DILocation(line: 25, column: 1, scope: !38)
!45 = distinct !DISubprogram(name: "xmlMalloc", scope: !3, file: !3, line: 27, type: !46, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !41)
!46 = !DISubroutineType(types: !47)
!47 = !{!5, !48}
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !49, line: 46, baseType: !50)
!49 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!50 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!51 = !DILocalVariable(name: "size", arg: 1, scope: !45, file: !3, line: 27, type: !48)
!52 = !DILocation(line: 27, column: 24, scope: !45)
!53 = !DILocation(line: 28, column: 19, scope: !45)
!54 = !DILocation(line: 28, column: 12, scope: !45)
!55 = !DILocation(line: 28, column: 5, scope: !45)
!56 = distinct !DISubprogram(name: "xmlStrdup", scope: !3, file: !3, line: 31, type: !57, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !41)
!57 = !DISubroutineType(types: !58)
!58 = !{!9, !19}
!59 = !DILocalVariable(name: "cur", arg: 1, scope: !56, file: !3, line: 31, type: !19)
!60 = !DILocation(line: 31, column: 35, scope: !56)
!61 = !DILocation(line: 32, column: 9, scope: !62)
!62 = distinct !DILexicalBlock(scope: !56, file: !3, line: 32, column: 9)
!63 = !DILocation(line: 32, column: 13, scope: !62)
!64 = !DILocation(line: 32, column: 9, scope: !56)
!65 = !DILocation(line: 32, column: 22, scope: !62)
!66 = !DILocalVariable(name: "len", scope: !56, file: !3, line: 33, type: !48)
!67 = !DILocation(line: 33, column: 12, scope: !56)
!68 = !DILocation(line: 33, column: 39, scope: !56)
!69 = !DILocation(line: 33, column: 18, scope: !56)
!70 = !DILocation(line: 33, column: 44, scope: !56)
!71 = !DILocalVariable(name: "res", scope: !56, file: !3, line: 34, type: !9)
!72 = !DILocation(line: 34, column: 14, scope: !56)
!73 = !DILocation(line: 34, column: 38, scope: !56)
!74 = !DILocation(line: 34, column: 31, scope: !56)
!75 = !DILocation(line: 35, column: 9, scope: !76)
!76 = distinct !DILexicalBlock(scope: !56, file: !3, line: 35, column: 9)
!77 = !DILocation(line: 35, column: 9, scope: !56)
!78 = !DILocation(line: 35, column: 21, scope: !76)
!79 = !DILocation(line: 35, column: 26, scope: !76)
!80 = !DILocation(line: 35, column: 31, scope: !76)
!81 = !DILocation(line: 35, column: 14, scope: !76)
!82 = !DILocation(line: 36, column: 12, scope: !56)
!83 = !DILocation(line: 36, column: 5, scope: !56)
!84 = !DILocation(line: 37, column: 1, scope: !56)
!85 = distinct !DISubprogram(name: "xmlStringGetNodeList", scope: !3, file: !3, line: 43, type: !86, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !41)
!86 = !DISubroutineType(types: !87)
!87 = !{!11, !19}
!88 = !DILocalVariable(name: "content", arg: 1, scope: !85, file: !3, line: 43, type: !19)
!89 = !DILocation(line: 43, column: 48, scope: !85)
!90 = !DILocalVariable(name: "cur", scope: !85, file: !3, line: 44, type: !11)
!91 = !DILocation(line: 44, column: 16, scope: !85)
!92 = !DILocation(line: 46, column: 24, scope: !85)
!93 = !DILocation(line: 46, column: 11, scope: !85)
!94 = !DILocation(line: 46, column: 9, scope: !85)
!95 = !DILocation(line: 47, column: 9, scope: !96)
!96 = distinct !DILexicalBlock(scope: !85, file: !3, line: 47, column: 9)
!97 = !DILocation(line: 47, column: 13, scope: !96)
!98 = !DILocation(line: 47, column: 9, scope: !85)
!99 = !DILocation(line: 48, column: 9, scope: !100)
!100 = distinct !DILexicalBlock(scope: !96, file: !3, line: 47, column: 22)
!101 = !DILocation(line: 49, column: 9, scope: !100)
!102 = !DILocation(line: 51, column: 12, scope: !85)
!103 = !DILocation(line: 51, column: 5, scope: !85)
!104 = !DILocation(line: 52, column: 5, scope: !85)
!105 = !DILocation(line: 52, column: 10, scope: !85)
!106 = !DILocation(line: 52, column: 15, scope: !85)
!107 = !DILocation(line: 54, column: 5, scope: !85)
!108 = !DILocation(line: 54, column: 10, scope: !85)
!109 = !DILocation(line: 54, column: 15, scope: !85)
!110 = !DILocation(line: 55, column: 9, scope: !111)
!111 = distinct !DILexicalBlock(scope: !85, file: !3, line: 55, column: 9)
!112 = !DILocation(line: 55, column: 17, scope: !111)
!113 = !DILocation(line: 55, column: 9, scope: !85)
!114 = !DILocation(line: 56, column: 34, scope: !115)
!115 = distinct !DILexicalBlock(scope: !111, file: !3, line: 55, column: 26)
!116 = !DILocation(line: 56, column: 24, scope: !115)
!117 = !DILocation(line: 56, column: 9, scope: !115)
!118 = !DILocation(line: 56, column: 14, scope: !115)
!119 = !DILocation(line: 56, column: 22, scope: !115)
!120 = !DILocation(line: 57, column: 5, scope: !115)
!121 = !DILocation(line: 59, column: 12, scope: !85)
!122 = !DILocation(line: 59, column: 5, scope: !85)
!123 = !DILocation(line: 60, column: 1, scope: !85)
!124 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 62, type: !125, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !41)
!125 = !DISubroutineType(types: !126)
!126 = !{!17}
!127 = !DILocalVariable(name: "content_buf", scope: !124, file: !3, line: 64, type: !128)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8192, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 1024)
!131 = !DILocation(line: 64, column: 10, scope: !124)
!132 = !DILocation(line: 65, column: 24, scope: !124)
!133 = !DILocation(line: 65, column: 5, scope: !124)
!134 = !DILocation(line: 68, column: 17, scope: !124)
!135 = !DILocation(line: 68, column: 52, scope: !124)
!136 = !DILocation(line: 68, column: 5, scope: !124)
!137 = !DILocalVariable(name: "result", scope: !124, file: !3, line: 71, type: !11)
!138 = !DILocation(line: 71, column: 16, scope: !124)
!139 = !DILocation(line: 71, column: 63, scope: !124)
!140 = !DILocation(line: 71, column: 25, scope: !124)
!141 = !DILocation(line: 76, column: 9, scope: !142)
!142 = distinct !DILexicalBlock(scope: !124, file: !3, line: 76, column: 9)
!143 = !DILocation(line: 76, column: 16, scope: !142)
!144 = !DILocation(line: 76, column: 9, scope: !124)
!145 = !DILocation(line: 83, column: 9, scope: !146)
!146 = distinct !DILexicalBlock(scope: !142, file: !3, line: 76, column: 25)
!147 = !DILocation(line: 84, column: 5, scope: !146)
!148 = !DILocation(line: 87, column: 9, scope: !149)
!149 = distinct !DILexicalBlock(scope: !124, file: !3, line: 87, column: 9)
!150 = !DILocation(line: 87, column: 9, scope: !124)
!151 = !DILocation(line: 88, column: 14, scope: !152)
!152 = distinct !DILexicalBlock(scope: !149, file: !3, line: 87, column: 17)
!153 = !DILocation(line: 88, column: 22, scope: !152)
!154 = !DILocation(line: 88, column: 9, scope: !152)
!155 = !DILocation(line: 89, column: 14, scope: !152)
!156 = !DILocation(line: 89, column: 9, scope: !152)
!157 = !DILocation(line: 90, column: 5, scope: !152)
!158 = !DILocation(line: 92, column: 5, scope: !124)
!159 = distinct !DISubprogram(name: "memcpy", scope: !160, file: !160, line: 12, type: !161, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !41)
!160 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!161 = !DISubroutineType(types: !162)
!162 = !{!5, !5, !163, !48}
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!165 = !DILocalVariable(name: "destaddr", arg: 1, scope: !159, file: !160, line: 12, type: !5)
!166 = !DILocation(line: 12, column: 20, scope: !159)
!167 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !159, file: !160, line: 12, type: !163)
!168 = !DILocation(line: 12, column: 42, scope: !159)
!169 = !DILocalVariable(name: "len", arg: 3, scope: !159, file: !160, line: 12, type: !48)
!170 = !DILocation(line: 12, column: 58, scope: !159)
!171 = !DILocalVariable(name: "dest", scope: !159, file: !160, line: 13, type: !172)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!173 = !DILocation(line: 13, column: 9, scope: !159)
!174 = !DILocation(line: 13, column: 16, scope: !159)
!175 = !DILocalVariable(name: "src", scope: !159, file: !160, line: 14, type: !6)
!176 = !DILocation(line: 14, column: 15, scope: !159)
!177 = !DILocation(line: 14, column: 21, scope: !159)
!178 = !DILocation(line: 16, column: 3, scope: !159)
!179 = !DILocation(line: 16, column: 13, scope: !159)
!180 = !DILocation(line: 16, column: 16, scope: !159)
!181 = !DILocation(line: 17, column: 19, scope: !159)
!182 = !DILocation(line: 17, column: 15, scope: !159)
!183 = !DILocation(line: 17, column: 10, scope: !159)
!184 = !DILocation(line: 17, column: 13, scope: !159)
!185 = distinct !{!185, !178, !181, !186}
!186 = !{!"llvm.loop.mustprogress"}
!187 = !DILocation(line: 18, column: 10, scope: !159)
!188 = !DILocation(line: 18, column: 3, scope: !159)
!189 = distinct !DISubprogram(name: "memset", scope: !190, file: !190, line: 12, type: !191, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !41)
!190 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!191 = !DISubroutineType(types: !192)
!192 = !{!5, !5, !17, !48}
!193 = !DILocalVariable(name: "dst", arg: 1, scope: !189, file: !190, line: 12, type: !5)
!194 = !DILocation(line: 12, column: 20, scope: !189)
!195 = !DILocalVariable(name: "s", arg: 2, scope: !189, file: !190, line: 12, type: !17)
!196 = !DILocation(line: 12, column: 29, scope: !189)
!197 = !DILocalVariable(name: "count", arg: 3, scope: !189, file: !190, line: 12, type: !48)
!198 = !DILocation(line: 12, column: 39, scope: !189)
!199 = !DILocalVariable(name: "a", scope: !189, file: !190, line: 13, type: !172)
!200 = !DILocation(line: 13, column: 9, scope: !189)
!201 = !DILocation(line: 13, column: 13, scope: !189)
!202 = !DILocation(line: 14, column: 3, scope: !189)
!203 = !DILocation(line: 14, column: 15, scope: !189)
!204 = !DILocation(line: 14, column: 18, scope: !189)
!205 = !DILocation(line: 15, column: 12, scope: !189)
!206 = !DILocation(line: 15, column: 7, scope: !189)
!207 = !DILocation(line: 15, column: 10, scope: !189)
!208 = distinct !{!208, !202, !205, !186}
!209 = !DILocation(line: 16, column: 10, scope: !189)
!210 = !DILocation(line: 16, column: 3, scope: !189)

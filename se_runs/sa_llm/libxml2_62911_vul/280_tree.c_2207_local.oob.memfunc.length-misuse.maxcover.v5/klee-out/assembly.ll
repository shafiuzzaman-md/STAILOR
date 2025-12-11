; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/280_tree.c_2207_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/280_tree.c_2207_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlNode = type { i32, i8*, %struct._xmlNs* }
%struct._xmlNs = type { i8*, i8* }

@.str = private unnamed_addr constant [14 x i8] c"building node\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/280_tree.c_2207_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlTreeErrMemory(i8* noundef %0) #0 !dbg !34 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !40, metadata !DIExpression()), !dbg !41
  ret void, !dbg !42
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !43 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !49, metadata !DIExpression()), !dbg !50
  %3 = load i64, i64* %2, align 8, !dbg !51
  %4 = call noalias i8* @malloc(i64 noundef %3) #9, !dbg !52
  ret i8* %4, !dbg !53
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlStrdup(i8* noundef %0) #0 !dbg !54 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !57, metadata !DIExpression()), !dbg !58
  %6 = load i8*, i8** %3, align 8, !dbg !59
  %7 = icmp eq i8* %6, null, !dbg !61
  br i1 %7, label %8, label %9, !dbg !62

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !63
  br label %24, !dbg !63

9:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata i64* %4, metadata !64, metadata !DIExpression()), !dbg !65
  %10 = load i8*, i8** %3, align 8, !dbg !66
  %11 = call i64 @strlen(i8* noundef %10) #10, !dbg !67
  %12 = add i64 %11, 1, !dbg !68
  store i64 %12, i64* %4, align 8, !dbg !65
  call void @llvm.dbg.declare(metadata i8** %5, metadata !69, metadata !DIExpression()), !dbg !70
  %13 = load i64, i64* %4, align 8, !dbg !71
  %14 = call noalias i8* @malloc(i64 noundef %13) #9, !dbg !72
  store i8* %14, i8** %5, align 8, !dbg !70
  %15 = load i8*, i8** %5, align 8, !dbg !73
  %16 = icmp ne i8* %15, null, !dbg !73
  br i1 %16, label %17, label %22, !dbg !75

17:                                               ; preds = %9
  %18 = load i8*, i8** %5, align 8, !dbg !76
  %19 = load i8*, i8** %3, align 8, !dbg !77
  %20 = load i64, i64* %4, align 8, !dbg !78
  %21 = call i8* @memcpy(i8* %18, i8* %19, i64 %20), !dbg !79
  br label %22, !dbg !79

22:                                               ; preds = %17, %9
  %23 = load i8*, i8** %5, align 8, !dbg !80
  store i8* %23, i8** %2, align 8, !dbg !81
  br label %24, !dbg !81

24:                                               ; preds = %22, %8
  %25 = load i8*, i8** %2, align 8, !dbg !82
  ret i8* %25, !dbg !82
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlNode* @xmlNewNode(%struct._xmlNs* noundef %0, i8* noundef %1) #0 !dbg !83 {
  %3 = alloca %struct._xmlNode*, align 8
  %4 = alloca %struct._xmlNs*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._xmlNode*, align 8
  store %struct._xmlNs* %0, %struct._xmlNs** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNs** %4, metadata !86, metadata !DIExpression()), !dbg !87
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !88, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %6, metadata !90, metadata !DIExpression()), !dbg !91
  %7 = load i8*, i8** %5, align 8, !dbg !92
  %8 = icmp eq i8* %7, null, !dbg !94
  br i1 %8, label %9, label %10, !dbg !95

9:                                                ; preds = %2
  store %struct._xmlNode* null, %struct._xmlNode** %3, align 8, !dbg !96
  br label %30, !dbg !96

10:                                               ; preds = %2
  %11 = call i8* @xmlMalloc(i64 noundef 24), !dbg !97
  %12 = bitcast i8* %11 to %struct._xmlNode*, !dbg !98
  store %struct._xmlNode* %12, %struct._xmlNode** %6, align 8, !dbg !99
  %13 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !100
  %14 = icmp eq %struct._xmlNode* %13, null, !dbg !102
  br i1 %14, label %15, label %16, !dbg !103

15:                                               ; preds = %10
  call void @xmlTreeErrMemory(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)), !dbg !104
  store %struct._xmlNode* null, %struct._xmlNode** %3, align 8, !dbg !106
  br label %30, !dbg !106

16:                                               ; preds = %10
  %17 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !107
  %18 = bitcast %struct._xmlNode* %17 to i8*, !dbg !108
  %19 = call i8* @memset(i8* %18, i32 0, i64 24), !dbg !108
  %20 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !109
  %21 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %20, i32 0, i32 0, !dbg !110
  store i32 1, i32* %21, align 8, !dbg !111
  %22 = load i8*, i8** %5, align 8, !dbg !112
  %23 = call i8* @xmlStrdup(i8* noundef %22), !dbg !113
  %24 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !114
  %25 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %24, i32 0, i32 1, !dbg !115
  store i8* %23, i8** %25, align 8, !dbg !116
  %26 = load %struct._xmlNs*, %struct._xmlNs** %4, align 8, !dbg !117
  %27 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !118
  %28 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %27, i32 0, i32 2, !dbg !119
  store %struct._xmlNs* %26, %struct._xmlNs** %28, align 8, !dbg !120
  %29 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !121
  store %struct._xmlNode* %29, %struct._xmlNode** %3, align 8, !dbg !122
  br label %30, !dbg !122

30:                                               ; preds = %16, %15, %9
  %31 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !123
  ret %struct._xmlNode* %31, !dbg !123
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlNode* @xmlStringGetNodeList(i8* noundef %0) #0 !dbg !124 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !127, metadata !DIExpression()), !dbg !128
  %3 = load i8*, i8** %2, align 8, !dbg !129
  %4 = call %struct._xmlNode* @xmlNewNode(%struct._xmlNs* noundef null, i8* noundef %3), !dbg !130
  ret %struct._xmlNode* %4, !dbg !131
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !132 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca %struct._xmlNode*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !135, metadata !DIExpression()), !dbg !139
  %4 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !140
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 256, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !141
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !142
  store i8 0, i8* %5, align 1, !dbg !143
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %3, metadata !144, metadata !DIExpression()), !dbg !145
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !146
  %7 = call %struct._xmlNode* @xmlStringGetNodeList(i8* noundef %6), !dbg !147
  store %struct._xmlNode* %7, %struct._xmlNode** %3, align 8, !dbg !145
  %8 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !148
  %9 = icmp ne %struct._xmlNode* %8, null, !dbg !150
  br i1 %9, label %10, label %17, !dbg !151

10:                                               ; preds = %0
  %11 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.3, i64 0, i64 0), i32 noundef 94, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !152
  %12 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !154
  %13 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %12, i32 0, i32 1, !dbg !155
  %14 = load i8*, i8** %13, align 8, !dbg !155
  call void @free(i8* noundef %14) #9, !dbg !156
  %15 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !157
  %16 = bitcast %struct._xmlNode* %15 to i8*, !dbg !157
  call void @free(i8* noundef %16) #9, !dbg !158
  br label %17, !dbg !159

17:                                               ; preds = %10, %0
  ret i32 0, !dbg !160
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #6

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #7

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #8 !dbg !161 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !167, metadata !DIExpression()), !dbg !168
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !169, metadata !DIExpression()), !dbg !170
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !171, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.declare(metadata i8** %7, metadata !173, metadata !DIExpression()), !dbg !174
  %9 = load i8*, i8** %4, align 8, !dbg !175
  store i8* %9, i8** %7, align 8, !dbg !174
  call void @llvm.dbg.declare(metadata i8** %8, metadata !176, metadata !DIExpression()), !dbg !177
  %10 = load i8*, i8** %5, align 8, !dbg !178
  store i8* %10, i8** %8, align 8, !dbg !177
  br label %11, !dbg !179

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !180
  %13 = add i64 %12, -1, !dbg !180
  store i64 %13, i64* %6, align 8, !dbg !180
  %14 = icmp ugt i64 %12, 0, !dbg !181
  br i1 %14, label %15, label %21, !dbg !179

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !182
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !182
  store i8* %17, i8** %8, align 8, !dbg !182
  %18 = load i8, i8* %16, align 1, !dbg !183
  %19 = load i8*, i8** %7, align 8, !dbg !184
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !184
  store i8* %20, i8** %7, align 8, !dbg !184
  store i8 %18, i8* %19, align 1, !dbg !185
  br label %11, !dbg !179, !llvm.loop !186

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !188
  ret i8* %22, !dbg !189
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #8 !dbg !190 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !194, metadata !DIExpression()), !dbg !195
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !196, metadata !DIExpression()), !dbg !197
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !198, metadata !DIExpression()), !dbg !199
  call void @llvm.dbg.declare(metadata i8** %7, metadata !200, metadata !DIExpression()), !dbg !201
  %8 = load i8*, i8** %4, align 8, !dbg !202
  store i8* %8, i8** %7, align 8, !dbg !201
  br label %9, !dbg !203

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !204
  %11 = add i64 %10, -1, !dbg !204
  store i64 %11, i64* %6, align 8, !dbg !204
  %12 = icmp ugt i64 %10, 0, !dbg !205
  br i1 %12, label %13, label %18, !dbg !203

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !206
  %15 = trunc i32 %14 to i8, !dbg !206
  %16 = load i8*, i8** %7, align 8, !dbg !207
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !207
  store i8* %17, i8** %7, align 8, !dbg !207
  store i8 %15, i8* %16, align 1, !dbg !208
  br label %9, !dbg !203, !llvm.loop !209

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !210
  ret i8* %19, !dbg !211
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

!llvm.dbg.cu = !{!0, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33, !33, !33}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/280_tree.c_2207_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "ef94b24963cbffc6d588be1eadefa308")
!2 = !{!3, !4, !6}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !1, line: 11, baseType: !7)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 10, baseType: !9)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 16, size: 192, elements: !10)
!10 = !{!11, !13, !14}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !9, file: !1, line: 17, baseType: !12, size: 32)
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !9, file: !1, line: 18, baseType: !4, size: 64, offset: 64)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !9, file: !1, line: 19, baseType: !15, size: 64, offset: 128)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsPtr", file: !1, line: 13, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !1, line: 12, baseType: !18)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !1, line: 23, size: 128, elements: !19)
!19 = !{!20, !21}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !18, file: !1, line: 24, baseType: !4, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !18, file: !1, line: 25, baseType: !4, size: 64, offset: 64)
!22 = distinct !DICompileUnit(language: DW_LANG_C99, file: !23, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!23 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!24 = distinct !DICompileUnit(language: DW_LANG_C99, file: !25, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!25 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!26 = !{i32 7, !"Dwarf Version", i32 5}
!27 = !{i32 2, !"Debug Info Version", i32 3}
!28 = !{i32 1, !"wchar_size", i32 4}
!29 = !{i32 7, !"PIC Level", i32 2}
!30 = !{i32 7, !"PIE Level", i32 2}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"Ubuntu clang version 14.0.6"}
!34 = distinct !DISubprogram(name: "xmlTreeErrMemory", scope: !1, file: !1, line: 30, type: !35, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !39)
!35 = !DISubroutineType(types: !36)
!36 = !{null, !37}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!39 = !{}
!40 = !DILocalVariable(name: "msg", arg: 1, scope: !34, file: !1, line: 30, type: !37)
!41 = !DILocation(line: 30, column: 35, scope: !34)
!42 = !DILocation(line: 32, column: 1, scope: !34)
!43 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 34, type: !44, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !39)
!44 = !DISubroutineType(types: !45)
!45 = !{!3, !46}
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !47, line: 46, baseType: !48)
!47 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!48 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!49 = !DILocalVariable(name: "size", arg: 1, scope: !43, file: !1, line: 34, type: !46)
!50 = !DILocation(line: 34, column: 24, scope: !43)
!51 = !DILocation(line: 35, column: 19, scope: !43)
!52 = !DILocation(line: 35, column: 12, scope: !43)
!53 = !DILocation(line: 35, column: 5, scope: !43)
!54 = distinct !DISubprogram(name: "xmlStrdup", scope: !1, file: !1, line: 38, type: !55, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !39)
!55 = !DISubroutineType(types: !56)
!56 = !{!4, !37}
!57 = !DILocalVariable(name: "cur", arg: 1, scope: !54, file: !1, line: 38, type: !37)
!58 = !DILocation(line: 38, column: 29, scope: !54)
!59 = !DILocation(line: 39, column: 9, scope: !60)
!60 = distinct !DILexicalBlock(scope: !54, file: !1, line: 39, column: 9)
!61 = !DILocation(line: 39, column: 13, scope: !60)
!62 = !DILocation(line: 39, column: 9, scope: !54)
!63 = !DILocation(line: 39, column: 22, scope: !60)
!64 = !DILocalVariable(name: "len", scope: !54, file: !1, line: 40, type: !46)
!65 = !DILocation(line: 40, column: 12, scope: !54)
!66 = !DILocation(line: 40, column: 25, scope: !54)
!67 = !DILocation(line: 40, column: 18, scope: !54)
!68 = !DILocation(line: 40, column: 30, scope: !54)
!69 = !DILocalVariable(name: "res", scope: !54, file: !1, line: 41, type: !4)
!70 = !DILocation(line: 41, column: 11, scope: !54)
!71 = !DILocation(line: 41, column: 31, scope: !54)
!72 = !DILocation(line: 41, column: 24, scope: !54)
!73 = !DILocation(line: 42, column: 9, scope: !74)
!74 = distinct !DILexicalBlock(scope: !54, file: !1, line: 42, column: 9)
!75 = !DILocation(line: 42, column: 9, scope: !54)
!76 = !DILocation(line: 42, column: 21, scope: !74)
!77 = !DILocation(line: 42, column: 26, scope: !74)
!78 = !DILocation(line: 42, column: 31, scope: !74)
!79 = !DILocation(line: 42, column: 14, scope: !74)
!80 = !DILocation(line: 43, column: 12, scope: !54)
!81 = !DILocation(line: 43, column: 5, scope: !54)
!82 = !DILocation(line: 44, column: 1, scope: !54)
!83 = distinct !DISubprogram(name: "xmlNewNode", scope: !1, file: !1, line: 47, type: !84, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !39)
!84 = !DISubroutineType(types: !85)
!85 = !{!6, !15, !37}
!86 = !DILocalVariable(name: "ns", arg: 1, scope: !83, file: !1, line: 47, type: !15)
!87 = !DILocation(line: 47, column: 32, scope: !83)
!88 = !DILocalVariable(name: "name", arg: 2, scope: !83, file: !1, line: 47, type: !37)
!89 = !DILocation(line: 47, column: 48, scope: !83)
!90 = !DILocalVariable(name: "cur", scope: !83, file: !1, line: 48, type: !6)
!91 = !DILocation(line: 48, column: 16, scope: !83)
!92 = !DILocation(line: 50, column: 9, scope: !93)
!93 = distinct !DILexicalBlock(scope: !83, file: !1, line: 50, column: 9)
!94 = !DILocation(line: 50, column: 14, scope: !93)
!95 = !DILocation(line: 50, column: 9, scope: !83)
!96 = !DILocation(line: 50, column: 23, scope: !93)
!97 = !DILocation(line: 52, column: 24, scope: !83)
!98 = !DILocation(line: 52, column: 11, scope: !83)
!99 = !DILocation(line: 52, column: 9, scope: !83)
!100 = !DILocation(line: 53, column: 9, scope: !101)
!101 = distinct !DILexicalBlock(scope: !83, file: !1, line: 53, column: 9)
!102 = !DILocation(line: 53, column: 13, scope: !101)
!103 = !DILocation(line: 53, column: 9, scope: !83)
!104 = !DILocation(line: 54, column: 9, scope: !105)
!105 = distinct !DILexicalBlock(scope: !101, file: !1, line: 53, column: 22)
!106 = !DILocation(line: 55, column: 9, scope: !105)
!107 = !DILocation(line: 59, column: 12, scope: !83)
!108 = !DILocation(line: 59, column: 5, scope: !83)
!109 = !DILocation(line: 61, column: 5, scope: !83)
!110 = !DILocation(line: 61, column: 10, scope: !83)
!111 = !DILocation(line: 61, column: 15, scope: !83)
!112 = !DILocation(line: 62, column: 27, scope: !83)
!113 = !DILocation(line: 62, column: 17, scope: !83)
!114 = !DILocation(line: 62, column: 5, scope: !83)
!115 = !DILocation(line: 62, column: 10, scope: !83)
!116 = !DILocation(line: 62, column: 15, scope: !83)
!117 = !DILocation(line: 63, column: 15, scope: !83)
!118 = !DILocation(line: 63, column: 5, scope: !83)
!119 = !DILocation(line: 63, column: 10, scope: !83)
!120 = !DILocation(line: 63, column: 13, scope: !83)
!121 = !DILocation(line: 65, column: 12, scope: !83)
!122 = !DILocation(line: 65, column: 5, scope: !83)
!123 = !DILocation(line: 66, column: 1, scope: !83)
!124 = distinct !DISubprogram(name: "xmlStringGetNodeList", scope: !1, file: !1, line: 69, type: !125, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !39)
!125 = !DISubroutineType(types: !126)
!126 = !{!6, !37}
!127 = !DILocalVariable(name: "str", arg: 1, scope: !124, file: !1, line: 69, type: !37)
!128 = !DILocation(line: 69, column: 45, scope: !124)
!129 = !DILocation(line: 71, column: 29, scope: !124)
!130 = !DILocation(line: 71, column: 12, scope: !124)
!131 = !DILocation(line: 71, column: 5, scope: !124)
!132 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 74, type: !133, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !39)
!133 = !DISubroutineType(types: !134)
!134 = !{!12}
!135 = !DILocalVariable(name: "name", scope: !132, file: !1, line: 76, type: !136)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 2048, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 256)
!139 = !DILocation(line: 76, column: 10, scope: !132)
!140 = !DILocation(line: 77, column: 24, scope: !132)
!141 = !DILocation(line: 77, column: 5, scope: !132)
!142 = !DILocation(line: 80, column: 5, scope: !132)
!143 = !DILocation(line: 80, column: 15, scope: !132)
!144 = !DILocalVariable(name: "result", scope: !132, file: !1, line: 83, type: !6)
!145 = !DILocation(line: 83, column: 16, scope: !132)
!146 = !DILocation(line: 83, column: 46, scope: !132)
!147 = !DILocation(line: 83, column: 25, scope: !132)
!148 = !DILocation(line: 86, column: 9, scope: !149)
!149 = distinct !DILexicalBlock(scope: !132, file: !1, line: 86, column: 9)
!150 = !DILocation(line: 86, column: 16, scope: !149)
!151 = !DILocation(line: 86, column: 9, scope: !132)
!152 = !DILocation(line: 94, column: 9, scope: !153)
!153 = distinct !DILexicalBlock(scope: !149, file: !1, line: 86, column: 25)
!154 = !DILocation(line: 97, column: 14, scope: !153)
!155 = !DILocation(line: 97, column: 22, scope: !153)
!156 = !DILocation(line: 97, column: 9, scope: !153)
!157 = !DILocation(line: 98, column: 14, scope: !153)
!158 = !DILocation(line: 98, column: 9, scope: !153)
!159 = !DILocation(line: 99, column: 5, scope: !153)
!160 = !DILocation(line: 101, column: 5, scope: !132)
!161 = distinct !DISubprogram(name: "memcpy", scope: !162, file: !162, line: 12, type: !163, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !39)
!162 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!163 = !DISubroutineType(types: !164)
!164 = !{!3, !3, !165, !46}
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!167 = !DILocalVariable(name: "destaddr", arg: 1, scope: !161, file: !162, line: 12, type: !3)
!168 = !DILocation(line: 12, column: 20, scope: !161)
!169 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !161, file: !162, line: 12, type: !165)
!170 = !DILocation(line: 12, column: 42, scope: !161)
!171 = !DILocalVariable(name: "len", arg: 3, scope: !161, file: !162, line: 12, type: !46)
!172 = !DILocation(line: 12, column: 58, scope: !161)
!173 = !DILocalVariable(name: "dest", scope: !161, file: !162, line: 13, type: !4)
!174 = !DILocation(line: 13, column: 9, scope: !161)
!175 = !DILocation(line: 13, column: 16, scope: !161)
!176 = !DILocalVariable(name: "src", scope: !161, file: !162, line: 14, type: !37)
!177 = !DILocation(line: 14, column: 15, scope: !161)
!178 = !DILocation(line: 14, column: 21, scope: !161)
!179 = !DILocation(line: 16, column: 3, scope: !161)
!180 = !DILocation(line: 16, column: 13, scope: !161)
!181 = !DILocation(line: 16, column: 16, scope: !161)
!182 = !DILocation(line: 17, column: 19, scope: !161)
!183 = !DILocation(line: 17, column: 15, scope: !161)
!184 = !DILocation(line: 17, column: 10, scope: !161)
!185 = !DILocation(line: 17, column: 13, scope: !161)
!186 = distinct !{!186, !179, !182, !187}
!187 = !{!"llvm.loop.mustprogress"}
!188 = !DILocation(line: 18, column: 10, scope: !161)
!189 = !DILocation(line: 18, column: 3, scope: !161)
!190 = distinct !DISubprogram(name: "memset", scope: !191, file: !191, line: 12, type: !192, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !39)
!191 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!192 = !DISubroutineType(types: !193)
!193 = !{!3, !3, !12, !46}
!194 = !DILocalVariable(name: "dst", arg: 1, scope: !190, file: !191, line: 12, type: !3)
!195 = !DILocation(line: 12, column: 20, scope: !190)
!196 = !DILocalVariable(name: "s", arg: 2, scope: !190, file: !191, line: 12, type: !12)
!197 = !DILocation(line: 12, column: 29, scope: !190)
!198 = !DILocalVariable(name: "count", arg: 3, scope: !190, file: !191, line: 12, type: !46)
!199 = !DILocation(line: 12, column: 39, scope: !190)
!200 = !DILocalVariable(name: "a", scope: !190, file: !191, line: 13, type: !4)
!201 = !DILocation(line: 13, column: 9, scope: !190)
!202 = !DILocation(line: 13, column: 13, scope: !190)
!203 = !DILocation(line: 14, column: 3, scope: !190)
!204 = !DILocation(line: 14, column: 15, scope: !190)
!205 = !DILocation(line: 14, column: 18, scope: !190)
!206 = !DILocation(line: 15, column: 12, scope: !190)
!207 = !DILocation(line: 15, column: 7, scope: !190)
!208 = !DILocation(line: 15, column: 10, scope: !190)
!209 = distinct !{!209, !203, !206, !187}
!210 = !DILocation(line: 16, column: 10, scope: !190)
!211 = !DILocation(line: 16, column: 3, scope: !190)

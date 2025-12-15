; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/311_relaxng.c_1221_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/311_relaxng.c_1221_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRelaxNGValidCtxt = type { %struct._xmlDoc*, %struct._xmlRelaxNG*, i32 }
%struct._xmlDoc = type { i32, i8* }
%struct._xmlRelaxNG = type { i32, i8* }
%struct._xmlRelaxNGValidState = type { i8*, i8*, %struct._xmlNode*, i8*, i32, i32 }
%struct._xmlNode = type { i32, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [19 x i8] c"allocating states\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ctxt\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"doc\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"node\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"node_is_null\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_55980_vul/311_relaxng.c_1221_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlRngVErrMemory(%struct._xmlRelaxNGValidCtxt* noundef %0, i8* noundef %1) #0 !dbg !36 {
  %3 = alloca %struct._xmlRelaxNGValidCtxt*, align 8
  %4 = alloca i8*, align 8
  store %struct._xmlRelaxNGValidCtxt* %0, %struct._xmlRelaxNGValidCtxt** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidCtxt** %3, metadata !65, metadata !DIExpression()), !dbg !66
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !67, metadata !DIExpression()), !dbg !68
  %5 = load %struct._xmlRelaxNGValidCtxt*, %struct._xmlRelaxNGValidCtxt** %3, align 8, !dbg !69
  %6 = load i8*, i8** %4, align 8, !dbg !70
  ret void, !dbg !71
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !72 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !78, metadata !DIExpression()), !dbg !79
  %3 = load i64, i64* %2, align 8, !dbg !80
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !81
  ret i8* %4, !dbg !82
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlRelaxNGValidState* @xmlRelaxNGNewValidState(%struct._xmlRelaxNGValidCtxt* noundef %0, %struct._xmlNode* noundef %1, i8* noundef %2) #0 !dbg !83 {
  %4 = alloca %struct._xmlRelaxNGValidState*, align 8
  %5 = alloca %struct._xmlRelaxNGValidCtxt*, align 8
  %6 = alloca %struct._xmlNode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._xmlRelaxNGValidState*, align 8
  store %struct._xmlRelaxNGValidCtxt* %0, %struct._xmlRelaxNGValidCtxt** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidCtxt** %5, metadata !86, metadata !DIExpression()), !dbg !87
  store %struct._xmlNode* %1, %struct._xmlNode** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %6, metadata !88, metadata !DIExpression()), !dbg !89
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !90, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidState** %8, metadata !92, metadata !DIExpression()), !dbg !93
  %9 = load %struct._xmlRelaxNGValidCtxt*, %struct._xmlRelaxNGValidCtxt** %5, align 8, !dbg !94
  %10 = icmp eq %struct._xmlRelaxNGValidCtxt* %9, null, !dbg !96
  br i1 %10, label %11, label %12, !dbg !97

11:                                               ; preds = %3
  store %struct._xmlRelaxNGValidState* null, %struct._xmlRelaxNGValidState** %4, align 8, !dbg !98
  br label %48, !dbg !98

12:                                               ; preds = %3
  %13 = call i8* @xmlMalloc(i64 noundef 40), !dbg !100
  %14 = bitcast i8* %13 to %struct._xmlRelaxNGValidState*, !dbg !101
  store %struct._xmlRelaxNGValidState* %14, %struct._xmlRelaxNGValidState** %8, align 8, !dbg !102
  %15 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %8, align 8, !dbg !103
  %16 = icmp eq %struct._xmlRelaxNGValidState* %15, null, !dbg !105
  br i1 %16, label %17, label %19, !dbg !106

17:                                               ; preds = %12
  %18 = load %struct._xmlRelaxNGValidCtxt*, %struct._xmlRelaxNGValidCtxt** %5, align 8, !dbg !107
  call void @xmlRngVErrMemory(%struct._xmlRelaxNGValidCtxt* noundef %18, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0)), !dbg !109
  store %struct._xmlRelaxNGValidState* null, %struct._xmlRelaxNGValidState** %4, align 8, !dbg !110
  br label %48, !dbg !110

19:                                               ; preds = %12
  %20 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %8, align 8, !dbg !111
  %21 = bitcast %struct._xmlRelaxNGValidState* %20 to i8*, !dbg !112
  %22 = call i8* @memset(i8* %21, i32 0, i64 40), !dbg !112
  %23 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %8, align 8, !dbg !113
  %24 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %23, i32 0, i32 0, !dbg !114
  store i8* null, i8** %24, align 8, !dbg !115
  %25 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %8, align 8, !dbg !116
  %26 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %25, i32 0, i32 1, !dbg !117
  store i8* null, i8** %26, align 8, !dbg !118
  %27 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !119
  %28 = icmp eq %struct._xmlNode* %27, null, !dbg !121
  br i1 %28, label %29, label %39, !dbg !122

29:                                               ; preds = %19
  %30 = load %struct._xmlRelaxNGValidCtxt*, %struct._xmlRelaxNGValidCtxt** %5, align 8, !dbg !123
  %31 = getelementptr inbounds %struct._xmlRelaxNGValidCtxt, %struct._xmlRelaxNGValidCtxt* %30, i32 0, i32 0, !dbg !125
  %32 = load %struct._xmlDoc*, %struct._xmlDoc** %31, align 8, !dbg !125
  %33 = bitcast %struct._xmlDoc* %32 to %struct._xmlNode*, !dbg !126
  %34 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %8, align 8, !dbg !127
  %35 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %34, i32 0, i32 2, !dbg !128
  store %struct._xmlNode* %33, %struct._xmlNode** %35, align 8, !dbg !129
  %36 = load i8*, i8** %7, align 8, !dbg !130
  %37 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %8, align 8, !dbg !131
  %38 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %37, i32 0, i32 3, !dbg !132
  store i8* %36, i8** %38, align 8, !dbg !133
  br label %46, !dbg !134

39:                                               ; preds = %19
  %40 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !135
  %41 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %8, align 8, !dbg !137
  %42 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %41, i32 0, i32 2, !dbg !138
  store %struct._xmlNode* %40, %struct._xmlNode** %42, align 8, !dbg !139
  %43 = load i8*, i8** %7, align 8, !dbg !140
  %44 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %8, align 8, !dbg !141
  %45 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %44, i32 0, i32 3, !dbg !142
  store i8* %43, i8** %45, align 8, !dbg !143
  br label %46

46:                                               ; preds = %39, %29
  %47 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %8, align 8, !dbg !144
  store %struct._xmlRelaxNGValidState* %47, %struct._xmlRelaxNGValidState** %4, align 8, !dbg !145
  br label %48, !dbg !145

48:                                               ; preds = %46, %17, %11
  %49 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %4, align 8, !dbg !146
  ret %struct._xmlRelaxNGValidState* %49, !dbg !146
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !147 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlRelaxNGValidCtxt, align 8
  %3 = alloca %struct._xmlDoc, align 8
  %4 = alloca %struct._xmlNode, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._xmlNode*, align 8
  %7 = alloca %struct._xmlRelaxNGValidState*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidCtxt* %2, metadata !150, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.declare(metadata %struct._xmlDoc* %3, metadata !152, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.declare(metadata %struct._xmlNode* %4, metadata !154, metadata !DIExpression()), !dbg !155
  %8 = bitcast %struct._xmlRelaxNGValidCtxt* %2 to i8*, !dbg !156
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 24, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !157
  %9 = bitcast %struct._xmlDoc* %3 to i8*, !dbg !158
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 16, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)), !dbg !159
  %10 = bitcast %struct._xmlNode* %4 to i8*, !dbg !160
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 40, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)), !dbg !161
  %11 = icmp ne %struct._xmlRelaxNGValidCtxt* %2, null, !dbg !162
  %12 = zext i1 %11 to i32, !dbg !162
  %13 = sext i32 %12 to i64, !dbg !163
  call void @klee_assume(i64 noundef %13), !dbg !164
  %14 = getelementptr inbounds %struct._xmlRelaxNGValidCtxt, %struct._xmlRelaxNGValidCtxt* %2, i32 0, i32 0, !dbg !165
  store %struct._xmlDoc* %3, %struct._xmlDoc** %14, align 8, !dbg !166
  call void @llvm.dbg.declare(metadata i32* %5, metadata !167, metadata !DIExpression()), !dbg !168
  %15 = bitcast i32* %5 to i8*, !dbg !169
  call void @klee_make_symbolic(i8* noundef %15, i64 noundef 4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0)), !dbg !170
  %16 = load i32, i32* %5, align 4, !dbg !171
  %17 = icmp eq i32 %16, 0, !dbg !172
  br i1 %17, label %21, label %18, !dbg !173

18:                                               ; preds = %0
  %19 = load i32, i32* %5, align 4, !dbg !174
  %20 = icmp eq i32 %19, 1, !dbg !175
  br label %21, !dbg !173

21:                                               ; preds = %18, %0
  %22 = phi i1 [ true, %0 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32, !dbg !173
  %24 = sext i32 %23 to i64, !dbg !171
  call void @klee_assume(i64 noundef %24), !dbg !176
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %6, metadata !177, metadata !DIExpression()), !dbg !178
  %25 = load i32, i32* %5, align 4, !dbg !179
  %26 = icmp ne i32 %25, 0, !dbg !179
  br i1 %26, label %27, label %28, !dbg !179

27:                                               ; preds = %21
  br label %29, !dbg !179

28:                                               ; preds = %21
  br label %29, !dbg !179

29:                                               ; preds = %28, %27
  %30 = phi %struct._xmlNode* [ null, %27 ], [ %4, %28 ], !dbg !179
  store %struct._xmlNode* %30, %struct._xmlNode** %6, align 8, !dbg !178
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidState** %7, metadata !180, metadata !DIExpression()), !dbg !181
  %31 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !182
  %32 = call %struct._xmlRelaxNGValidState* @xmlRelaxNGNewValidState(%struct._xmlRelaxNGValidCtxt* noundef %2, %struct._xmlNode* noundef %31, i8* noundef null), !dbg !183
  store %struct._xmlRelaxNGValidState* %32, %struct._xmlRelaxNGValidState** %7, align 8, !dbg !181
  %33 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %7, align 8, !dbg !184
  %34 = icmp ne %struct._xmlRelaxNGValidState* %33, null, !dbg !186
  br i1 %34, label %35, label %39, !dbg !187

35:                                               ; preds = %29
  %36 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.6, i64 0, i64 0), i32 noundef 135, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !188
  %37 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %7, align 8, !dbg !190
  %38 = bitcast %struct._xmlRelaxNGValidState* %37 to i8*, !dbg !190
  call void @free(i8* noundef %38) #7, !dbg !191
  br label %39, !dbg !192

39:                                               ; preds = %35, %29
  ret i32 0, !dbg !193
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !194 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !198, metadata !DIExpression()), !dbg !199
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !200, metadata !DIExpression()), !dbg !201
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !202, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.declare(metadata i8** %7, metadata !204, metadata !DIExpression()), !dbg !206
  %8 = load i8*, i8** %4, align 8, !dbg !207
  store i8* %8, i8** %7, align 8, !dbg !206
  br label %9, !dbg !208

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !209
  %11 = add i64 %10, -1, !dbg !209
  store i64 %11, i64* %6, align 8, !dbg !209
  %12 = icmp ugt i64 %10, 0, !dbg !210
  br i1 %12, label %13, label %18, !dbg !208

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !211
  %15 = trunc i32 %14 to i8, !dbg !211
  %16 = load i8*, i8** %7, align 8, !dbg !212
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !212
  store i8* %17, i8** %7, align 8, !dbg !212
  store i8 %15, i8* %16, align 1, !dbg !213
  br label %9, !dbg !208, !llvm.loop !214

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !216
  ret i8* %19, !dbg !217
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35, !35}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/311_relaxng.c_1221_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "8ab4ef506320b680e7f8da84c481145a")
!2 = !{!3, !4, !12}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGValidStatePtr", file: !1, line: 13, baseType: !5)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGValidState", file: !1, line: 12, baseType: !7)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRelaxNGValidState", file: !1, line: 28, size: 320, elements: !8)
!8 = !{!9, !10, !11, !23, !24, !25}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !7, file: !1, line: 29, baseType: !3, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "endvalue", scope: !7, file: !1, line: 30, baseType: !3, size: 64, offset: 64)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !7, file: !1, line: 31, baseType: !12, size: 64, offset: 128)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !1, line: 17, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 16, baseType: !15)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 42, size: 320, elements: !16)
!16 = !{!17, !19, !20, !21, !22}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !15, file: !1, line: 43, baseType: !18, size: 32)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !15, file: !1, line: 44, baseType: !3, size: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !15, file: !1, line: 45, baseType: !3, size: 64, offset: 128)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !15, file: !1, line: 46, baseType: !3, size: 64, offset: 192)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !15, file: !1, line: 47, baseType: !3, size: 64, offset: 256)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !7, file: !1, line: 32, baseType: !3, size: 64, offset: 192)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !7, file: !1, line: 33, baseType: !18, size: 32, offset: 256)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !7, file: !1, line: 34, baseType: !18, size: 32, offset: 288)
!26 = distinct !DICompileUnit(language: DW_LANG_C99, file: !27, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!27 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!28 = !{i32 7, !"Dwarf Version", i32 5}
!29 = !{i32 2, !"Debug Info Version", i32 3}
!30 = !{i32 1, !"wchar_size", i32 4}
!31 = !{i32 7, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"Ubuntu clang version 14.0.6"}
!36 = distinct !DISubprogram(name: "xmlRngVErrMemory", scope: !1, file: !1, line: 56, type: !37, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !64)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !39, !61}
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGValidCtxtPtr", file: !1, line: 11, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGValidCtxt", file: !1, line: 10, baseType: !42)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRelaxNGValidCtxt", file: !1, line: 22, size: 192, elements: !43)
!43 = !{!44, !52, !60}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !42, file: !1, line: 23, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !1, line: 15, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !1, line: 14, baseType: !48)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !1, line: 37, size: 128, elements: !49)
!49 = !{!50, !51}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !48, file: !1, line: 38, baseType: !18, size: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !48, file: !1, line: 39, baseType: !3, size: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "schema", scope: !42, file: !1, line: 24, baseType: !53, size: 64, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGPtr", file: !1, line: 19, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNG", file: !1, line: 18, baseType: !56)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRelaxNG", file: !1, line: 50, size: 128, elements: !57)
!57 = !{!58, !59}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !56, file: !1, line: 51, baseType: !18, size: 32)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !56, file: !1, line: 52, baseType: !3, size: 64, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !42, file: !1, line: 25, baseType: !18, size: 32, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!63 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!64 = !{}
!65 = !DILocalVariable(name: "ctxt", arg: 1, scope: !36, file: !1, line: 56, type: !39)
!66 = !DILocation(line: 56, column: 46, scope: !36)
!67 = !DILocalVariable(name: "msg", arg: 2, scope: !36, file: !1, line: 56, type: !61)
!68 = !DILocation(line: 56, column: 64, scope: !36)
!69 = !DILocation(line: 57, column: 11, scope: !36)
!70 = !DILocation(line: 58, column: 11, scope: !36)
!71 = !DILocation(line: 59, column: 1, scope: !36)
!72 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 61, type: !73, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !64)
!73 = !DISubroutineType(types: !74)
!74 = !{!3, !75}
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !76, line: 46, baseType: !77)
!76 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!77 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!78 = !DILocalVariable(name: "size", arg: 1, scope: !72, file: !1, line: 61, type: !75)
!79 = !DILocation(line: 61, column: 24, scope: !72)
!80 = !DILocation(line: 62, column: 19, scope: !72)
!81 = !DILocation(line: 62, column: 12, scope: !72)
!82 = !DILocation(line: 62, column: 5, scope: !72)
!83 = distinct !DISubprogram(name: "xmlRelaxNGNewValidState", scope: !1, file: !1, line: 66, type: !84, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !64)
!84 = !DISubroutineType(types: !85)
!85 = !{!4, !39, !12, !3}
!86 = !DILocalVariable(name: "ctxt", arg: 1, scope: !83, file: !1, line: 66, type: !39)
!87 = !DILocation(line: 66, column: 72, scope: !83)
!88 = !DILocalVariable(name: "node", arg: 2, scope: !83, file: !1, line: 67, type: !12)
!89 = !DILocation(line: 67, column: 60, scope: !83)
!90 = !DILocalVariable(name: "root", arg: 3, scope: !83, file: !1, line: 68, type: !3)
!91 = !DILocation(line: 68, column: 55, scope: !83)
!92 = !DILocalVariable(name: "ret", scope: !83, file: !1, line: 69, type: !4)
!93 = !DILocation(line: 69, column: 29, scope: !83)
!94 = !DILocation(line: 71, column: 9, scope: !95)
!95 = distinct !DILexicalBlock(scope: !83, file: !1, line: 71, column: 9)
!96 = !DILocation(line: 71, column: 14, scope: !95)
!97 = !DILocation(line: 71, column: 9, scope: !83)
!98 = !DILocation(line: 72, column: 9, scope: !99)
!99 = distinct !DILexicalBlock(scope: !95, file: !1, line: 71, column: 23)
!100 = !DILocation(line: 76, column: 36, scope: !83)
!101 = !DILocation(line: 76, column: 11, scope: !83)
!102 = !DILocation(line: 76, column: 9, scope: !83)
!103 = !DILocation(line: 77, column: 9, scope: !104)
!104 = distinct !DILexicalBlock(scope: !83, file: !1, line: 77, column: 9)
!105 = !DILocation(line: 77, column: 13, scope: !104)
!106 = !DILocation(line: 77, column: 9, scope: !83)
!107 = !DILocation(line: 78, column: 26, scope: !108)
!108 = distinct !DILexicalBlock(scope: !104, file: !1, line: 77, column: 22)
!109 = !DILocation(line: 78, column: 9, scope: !108)
!110 = !DILocation(line: 79, column: 9, scope: !108)
!111 = !DILocation(line: 83, column: 12, scope: !83)
!112 = !DILocation(line: 83, column: 5, scope: !83)
!113 = !DILocation(line: 85, column: 5, scope: !83)
!114 = !DILocation(line: 85, column: 10, scope: !83)
!115 = !DILocation(line: 85, column: 16, scope: !83)
!116 = !DILocation(line: 86, column: 5, scope: !83)
!117 = !DILocation(line: 86, column: 10, scope: !83)
!118 = !DILocation(line: 86, column: 19, scope: !83)
!119 = !DILocation(line: 87, column: 9, scope: !120)
!120 = distinct !DILexicalBlock(scope: !83, file: !1, line: 87, column: 9)
!121 = !DILocation(line: 87, column: 14, scope: !120)
!122 = !DILocation(line: 87, column: 9, scope: !83)
!123 = !DILocation(line: 88, column: 33, scope: !124)
!124 = distinct !DILexicalBlock(scope: !120, file: !1, line: 87, column: 23)
!125 = !DILocation(line: 88, column: 39, scope: !124)
!126 = !DILocation(line: 88, column: 21, scope: !124)
!127 = !DILocation(line: 88, column: 9, scope: !124)
!128 = !DILocation(line: 88, column: 14, scope: !124)
!129 = !DILocation(line: 88, column: 19, scope: !124)
!130 = !DILocation(line: 89, column: 20, scope: !124)
!131 = !DILocation(line: 89, column: 9, scope: !124)
!132 = !DILocation(line: 89, column: 14, scope: !124)
!133 = !DILocation(line: 89, column: 18, scope: !124)
!134 = !DILocation(line: 90, column: 5, scope: !124)
!135 = !DILocation(line: 91, column: 21, scope: !136)
!136 = distinct !DILexicalBlock(scope: !120, file: !1, line: 90, column: 12)
!137 = !DILocation(line: 91, column: 9, scope: !136)
!138 = !DILocation(line: 91, column: 14, scope: !136)
!139 = !DILocation(line: 91, column: 19, scope: !136)
!140 = !DILocation(line: 92, column: 20, scope: !136)
!141 = !DILocation(line: 92, column: 9, scope: !136)
!142 = !DILocation(line: 92, column: 14, scope: !136)
!143 = !DILocation(line: 92, column: 18, scope: !136)
!144 = !DILocation(line: 95, column: 12, scope: !83)
!145 = !DILocation(line: 95, column: 5, scope: !83)
!146 = !DILocation(line: 96, column: 1, scope: !83)
!147 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 98, type: !148, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !64)
!148 = !DISubroutineType(types: !149)
!149 = !{!18}
!150 = !DILocalVariable(name: "ctxt", scope: !147, file: !1, line: 100, type: !41)
!151 = !DILocation(line: 100, column: 25, scope: !147)
!152 = !DILocalVariable(name: "doc", scope: !147, file: !1, line: 101, type: !47)
!153 = !DILocation(line: 101, column: 12, scope: !147)
!154 = !DILocalVariable(name: "node", scope: !147, file: !1, line: 102, type: !14)
!155 = !DILocation(line: 102, column: 13, scope: !147)
!156 = !DILocation(line: 105, column: 24, scope: !147)
!157 = !DILocation(line: 105, column: 5, scope: !147)
!158 = !DILocation(line: 106, column: 24, scope: !147)
!159 = !DILocation(line: 106, column: 5, scope: !147)
!160 = !DILocation(line: 107, column: 24, scope: !147)
!161 = !DILocation(line: 107, column: 5, scope: !147)
!162 = !DILocation(line: 110, column: 23, scope: !147)
!163 = !DILocation(line: 110, column: 17, scope: !147)
!164 = !DILocation(line: 110, column: 5, scope: !147)
!165 = !DILocation(line: 113, column: 10, scope: !147)
!166 = !DILocation(line: 113, column: 14, scope: !147)
!167 = !DILocalVariable(name: "node_is_null", scope: !147, file: !1, line: 116, type: !18)
!168 = !DILocation(line: 116, column: 9, scope: !147)
!169 = !DILocation(line: 117, column: 24, scope: !147)
!170 = !DILocation(line: 117, column: 5, scope: !147)
!171 = !DILocation(line: 118, column: 17, scope: !147)
!172 = !DILocation(line: 118, column: 30, scope: !147)
!173 = !DILocation(line: 118, column: 35, scope: !147)
!174 = !DILocation(line: 118, column: 38, scope: !147)
!175 = !DILocation(line: 118, column: 51, scope: !147)
!176 = !DILocation(line: 118, column: 5, scope: !147)
!177 = !DILocalVariable(name: "node_ptr", scope: !147, file: !1, line: 120, type: !12)
!178 = !DILocation(line: 120, column: 16, scope: !147)
!179 = !DILocation(line: 120, column: 27, scope: !147)
!180 = !DILocalVariable(name: "state", scope: !147, file: !1, line: 123, type: !4)
!181 = !DILocation(line: 123, column: 29, scope: !147)
!182 = !DILocation(line: 123, column: 68, scope: !147)
!183 = !DILocation(line: 123, column: 37, scope: !147)
!184 = !DILocation(line: 129, column: 9, scope: !185)
!185 = distinct !DILexicalBlock(scope: !147, file: !1, line: 129, column: 9)
!186 = !DILocation(line: 129, column: 15, scope: !185)
!187 = !DILocation(line: 129, column: 9, scope: !147)
!188 = !DILocation(line: 135, column: 9, scope: !189)
!189 = distinct !DILexicalBlock(scope: !185, file: !1, line: 129, column: 24)
!190 = !DILocation(line: 138, column: 14, scope: !189)
!191 = !DILocation(line: 138, column: 9, scope: !189)
!192 = !DILocation(line: 139, column: 5, scope: !189)
!193 = !DILocation(line: 141, column: 5, scope: !147)
!194 = distinct !DISubprogram(name: "memset", scope: !195, file: !195, line: 12, type: !196, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !64)
!195 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!196 = !DISubroutineType(types: !197)
!197 = !{!3, !3, !18, !75}
!198 = !DILocalVariable(name: "dst", arg: 1, scope: !194, file: !195, line: 12, type: !3)
!199 = !DILocation(line: 12, column: 20, scope: !194)
!200 = !DILocalVariable(name: "s", arg: 2, scope: !194, file: !195, line: 12, type: !18)
!201 = !DILocation(line: 12, column: 29, scope: !194)
!202 = !DILocalVariable(name: "count", arg: 3, scope: !194, file: !195, line: 12, type: !75)
!203 = !DILocation(line: 12, column: 39, scope: !194)
!204 = !DILocalVariable(name: "a", scope: !194, file: !195, line: 13, type: !205)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!206 = !DILocation(line: 13, column: 9, scope: !194)
!207 = !DILocation(line: 13, column: 13, scope: !194)
!208 = !DILocation(line: 14, column: 3, scope: !194)
!209 = !DILocation(line: 14, column: 15, scope: !194)
!210 = !DILocation(line: 14, column: 18, scope: !194)
!211 = !DILocation(line: 15, column: 12, scope: !194)
!212 = !DILocation(line: 15, column: 7, scope: !194)
!213 = !DILocation(line: 15, column: 10, scope: !194)
!214 = distinct !{!214, !208, !211, !215}
!215 = !{!"llvm.loop.mustprogress"}
!216 = !DILocation(line: 16, column: 10, scope: !194)
!217 = !DILocation(line: 16, column: 3, scope: !194)

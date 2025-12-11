; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/238_relaxng.c_904_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/238_relaxng.c_904_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRelaxNGValidCtxt = type { %struct._xmlRelaxNGDefine**, i32, i32 }
%struct._xmlRelaxNGDefine = type { %struct._xmlNode*, i32 }
%struct._xmlNode = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"allocating define\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [77 x i8] c"(sizeof(xmlRelaxNGDefine) <= malloc_usable_size(ret)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_62911_vul/238_relaxng.c_904_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlRelaxNGCopyDefine = private unnamed_addr constant [75 x i8] c"xmlRelaxNGDefinePtr xmlRelaxNGCopyDefine(xmlRelaxNGValidCtxt *, xmlNode *)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"defTab\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"defNr\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"defMax\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlRngPErrMemory(%struct._xmlRelaxNGValidCtxt* noundef %0, i8* noundef %1) #0 !dbg !35 {
  %3 = alloca %struct._xmlRelaxNGValidCtxt*, align 8
  %4 = alloca i8*, align 8
  store %struct._xmlRelaxNGValidCtxt* %0, %struct._xmlRelaxNGValidCtxt** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidCtxt** %3, metadata !42, metadata !DIExpression()), !dbg !43
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !44, metadata !DIExpression()), !dbg !45
  ret void, !dbg !46
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !47 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !53, metadata !DIExpression()), !dbg !54
  %3 = load i64, i64* %2, align 8, !dbg !55
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !56
  ret i8* %4, !dbg !57
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlRelaxNGDefine* @xmlRelaxNGCopyDefine(%struct._xmlRelaxNGValidCtxt* noundef %0, %struct._xmlNode* noundef %1) #0 !dbg !58 {
  %3 = alloca %struct._xmlRelaxNGDefine*, align 8
  %4 = alloca %struct._xmlRelaxNGValidCtxt*, align 8
  %5 = alloca %struct._xmlNode*, align 8
  %6 = alloca %struct._xmlRelaxNGDefine*, align 8
  store %struct._xmlRelaxNGValidCtxt* %0, %struct._xmlRelaxNGValidCtxt** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidCtxt** %4, metadata !61, metadata !DIExpression()), !dbg !62
  store %struct._xmlNode* %1, %struct._xmlNode** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %5, metadata !63, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGDefine** %6, metadata !65, metadata !DIExpression()), !dbg !66
  %7 = call i8* @xmlMalloc(i64 noundef 16), !dbg !67
  %8 = bitcast i8* %7 to %struct._xmlRelaxNGDefine*, !dbg !68
  store %struct._xmlRelaxNGDefine* %8, %struct._xmlRelaxNGDefine** %6, align 8, !dbg !69
  %9 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %6, align 8, !dbg !70
  %10 = icmp eq %struct._xmlRelaxNGDefine* %9, null, !dbg !72
  br i1 %10, label %11, label %13, !dbg !73

11:                                               ; preds = %2
  %12 = load %struct._xmlRelaxNGValidCtxt*, %struct._xmlRelaxNGValidCtxt** %4, align 8, !dbg !74
  call void @xmlRngPErrMemory(%struct._xmlRelaxNGValidCtxt* noundef %12, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0)), !dbg !76
  store %struct._xmlRelaxNGDefine* null, %struct._xmlRelaxNGDefine** %3, align 8, !dbg !77
  br label %43, !dbg !77

13:                                               ; preds = %2
  %14 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %6, align 8, !dbg !78
  %15 = bitcast %struct._xmlRelaxNGDefine* %14 to i8*, !dbg !79
  %16 = call i8* @memset(i8* %15, i32 0, i64 16), !dbg !79
  %17 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %6, align 8, !dbg !80
  %18 = call i32 (%struct._xmlRelaxNGDefine*, ...) bitcast (i32 (...)* @malloc_usable_size to i32 (%struct._xmlRelaxNGDefine*, ...)*)(%struct._xmlRelaxNGDefine* noundef %17), !dbg !80
  %19 = sext i32 %18 to i64, !dbg !80
  %20 = icmp ule i64 16, %19, !dbg !80
  br i1 %20, label %21, label %23, !dbg !80

21:                                               ; preds = %13
  br i1 true, label %22, label %23, !dbg !80

22:                                               ; preds = %21
  br label %25, !dbg !80

23:                                               ; preds = %21, %13
  %24 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.3, i64 0, i64 0), i32 noundef 57, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @__PRETTY_FUNCTION__.xmlRelaxNGCopyDefine, i64 0, i64 0)), !dbg !80
  br label %25, !dbg !80

25:                                               ; preds = %23, %22
  %26 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.3, i64 0, i64 0), i32 noundef 60, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @__PRETTY_FUNCTION__.xmlRelaxNGCopyDefine, i64 0, i64 0)), !dbg !81
  %27 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %6, align 8, !dbg !82
  %28 = load %struct._xmlRelaxNGValidCtxt*, %struct._xmlRelaxNGValidCtxt** %4, align 8, !dbg !83
  %29 = getelementptr inbounds %struct._xmlRelaxNGValidCtxt, %struct._xmlRelaxNGValidCtxt* %28, i32 0, i32 0, !dbg !84
  %30 = load %struct._xmlRelaxNGDefine**, %struct._xmlRelaxNGDefine*** %29, align 8, !dbg !84
  %31 = load %struct._xmlRelaxNGValidCtxt*, %struct._xmlRelaxNGValidCtxt** %4, align 8, !dbg !85
  %32 = getelementptr inbounds %struct._xmlRelaxNGValidCtxt, %struct._xmlRelaxNGValidCtxt* %31, i32 0, i32 1, !dbg !86
  %33 = load i32, i32* %32, align 8, !dbg !87
  %34 = add nsw i32 %33, 1, !dbg !87
  store i32 %34, i32* %32, align 8, !dbg !87
  %35 = sext i32 %33 to i64, !dbg !83
  %36 = getelementptr inbounds %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %30, i64 %35, !dbg !83
  store %struct._xmlRelaxNGDefine* %27, %struct._xmlRelaxNGDefine** %36, align 8, !dbg !88
  %37 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !89
  %38 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %6, align 8, !dbg !90
  %39 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %38, i32 0, i32 0, !dbg !91
  store %struct._xmlNode* %37, %struct._xmlNode** %39, align 8, !dbg !92
  %40 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %6, align 8, !dbg !93
  %41 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %40, i32 0, i32 1, !dbg !94
  store i32 -1, i32* %41, align 8, !dbg !95
  %42 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %6, align 8, !dbg !96
  store %struct._xmlRelaxNGDefine* %42, %struct._xmlRelaxNGDefine** %3, align 8, !dbg !97
  br label %43, !dbg !97

43:                                               ; preds = %25, %11
  %44 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %3, align 8, !dbg !98
  ret %struct._xmlRelaxNGDefine* %44, !dbg !98
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare i32 @malloc_usable_size(...) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlRelaxNGValidCtxt* @xmlRelaxNGCopyValidState(%struct._xmlRelaxNGValidCtxt* noundef %0) #0 !dbg !99 {
  %2 = alloca %struct._xmlRelaxNGValidCtxt*, align 8
  %3 = alloca %struct._xmlRelaxNGValidCtxt*, align 8
  %4 = alloca %struct._xmlNode*, align 8
  store %struct._xmlRelaxNGValidCtxt* %0, %struct._xmlRelaxNGValidCtxt** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidCtxt** %3, metadata !102, metadata !DIExpression()), !dbg !103
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %4, metadata !104, metadata !DIExpression()), !dbg !105
  %5 = call noalias i8* @malloc(i64 noundef 4) #7, !dbg !106
  %6 = bitcast i8* %5 to %struct._xmlNode*, !dbg !107
  store %struct._xmlNode* %6, %struct._xmlNode** %4, align 8, !dbg !105
  %7 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !108
  %8 = icmp ne %struct._xmlNode* %7, null, !dbg !108
  br i1 %8, label %10, label %9, !dbg !110

9:                                                ; preds = %1
  store %struct._xmlRelaxNGValidCtxt* null, %struct._xmlRelaxNGValidCtxt** %2, align 8, !dbg !111
  br label %15, !dbg !111

10:                                               ; preds = %1
  %11 = load %struct._xmlRelaxNGValidCtxt*, %struct._xmlRelaxNGValidCtxt** %3, align 8, !dbg !112
  %12 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !113
  %13 = call %struct._xmlRelaxNGDefine* @xmlRelaxNGCopyDefine(%struct._xmlRelaxNGValidCtxt* noundef %11, %struct._xmlNode* noundef %12), !dbg !114
  %14 = bitcast %struct._xmlRelaxNGDefine* %13 to %struct._xmlRelaxNGValidCtxt*, !dbg !115
  store %struct._xmlRelaxNGValidCtxt* %14, %struct._xmlRelaxNGValidCtxt** %2, align 8, !dbg !116
  br label %15, !dbg !116

15:                                               ; preds = %10, %9
  %16 = load %struct._xmlRelaxNGValidCtxt*, %struct._xmlRelaxNGValidCtxt** %2, align 8, !dbg !117
  ret %struct._xmlRelaxNGValidCtxt* %16, !dbg !117
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !118 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlRelaxNGValidCtxt, align 8
  %3 = alloca %struct._xmlRelaxNGDefine**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidCtxt* %2, metadata !121, metadata !DIExpression()), !dbg !122
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGDefine*** %3, metadata !123, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.declare(metadata i32* %4, metadata !125, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.declare(metadata i32* %5, metadata !127, metadata !DIExpression()), !dbg !128
  %6 = call noalias i8* @malloc(i64 noundef 80) #7, !dbg !129
  %7 = bitcast i8* %6 to %struct._xmlRelaxNGDefine**, !dbg !130
  store %struct._xmlRelaxNGDefine** %7, %struct._xmlRelaxNGDefine*** %3, align 8, !dbg !131
  %8 = load %struct._xmlRelaxNGDefine**, %struct._xmlRelaxNGDefine*** %3, align 8, !dbg !132
  %9 = bitcast %struct._xmlRelaxNGDefine** %8 to i8*, !dbg !132
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 80, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)), !dbg !133
  %10 = load %struct._xmlRelaxNGDefine**, %struct._xmlRelaxNGDefine*** %3, align 8, !dbg !134
  %11 = getelementptr inbounds %struct._xmlRelaxNGValidCtxt, %struct._xmlRelaxNGValidCtxt* %2, i32 0, i32 0, !dbg !135
  store %struct._xmlRelaxNGDefine** %10, %struct._xmlRelaxNGDefine*** %11, align 8, !dbg !136
  %12 = bitcast i32* %4 to i8*, !dbg !137
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)), !dbg !138
  %13 = bitcast i32* %5 to i8*, !dbg !139
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)), !dbg !140
  %14 = load i32, i32* %4, align 4, !dbg !141
  %15 = icmp sge i32 %14, 0, !dbg !142
  br i1 %15, label %16, label %19, !dbg !143

16:                                               ; preds = %0
  %17 = load i32, i32* %4, align 4, !dbg !144
  %18 = icmp slt i32 %17, 10, !dbg !145
  br label %19

19:                                               ; preds = %16, %0
  %20 = phi i1 [ false, %0 ], [ %18, %16 ], !dbg !146
  %21 = zext i1 %20 to i32, !dbg !143
  %22 = sext i32 %21 to i64, !dbg !141
  call void @klee_assume(i64 noundef %22), !dbg !147
  %23 = load i32, i32* %5, align 4, !dbg !148
  %24 = icmp sge i32 %23, 10, !dbg !149
  %25 = zext i1 %24 to i32, !dbg !149
  %26 = sext i32 %25 to i64, !dbg !148
  call void @klee_assume(i64 noundef %26), !dbg !150
  %27 = load i32, i32* %4, align 4, !dbg !151
  %28 = getelementptr inbounds %struct._xmlRelaxNGValidCtxt, %struct._xmlRelaxNGValidCtxt* %2, i32 0, i32 1, !dbg !152
  store i32 %27, i32* %28, align 8, !dbg !153
  %29 = load i32, i32* %5, align 4, !dbg !154
  %30 = getelementptr inbounds %struct._xmlRelaxNGValidCtxt, %struct._xmlRelaxNGValidCtxt* %2, i32 0, i32 2, !dbg !155
  store i32 %29, i32* %30, align 4, !dbg !156
  %31 = call %struct._xmlRelaxNGDefine* @xmlRelaxNGCopyDefine(%struct._xmlRelaxNGValidCtxt* noundef %2, %struct._xmlNode* noundef null), !dbg !157
  %32 = load %struct._xmlRelaxNGDefine**, %struct._xmlRelaxNGDefine*** %3, align 8, !dbg !158
  %33 = bitcast %struct._xmlRelaxNGDefine** %32 to i8*, !dbg !158
  call void @free(i8* noundef %33) #7, !dbg !159
  ret i32 0, !dbg !160
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !161 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !165, metadata !DIExpression()), !dbg !166
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !167, metadata !DIExpression()), !dbg !168
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !169, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.declare(metadata i8** %7, metadata !171, metadata !DIExpression()), !dbg !173
  %8 = load i8*, i8** %4, align 8, !dbg !174
  store i8* %8, i8** %7, align 8, !dbg !173
  br label %9, !dbg !175

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !176
  %11 = add i64 %10, -1, !dbg !176
  store i64 %11, i64* %6, align 8, !dbg !176
  %12 = icmp ugt i64 %10, 0, !dbg !177
  br i1 %12, label %13, label %18, !dbg !175

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !178
  %15 = trunc i32 %14 to i8, !dbg !178
  %16 = load i8*, i8** %7, align 8, !dbg !179
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !179
  store i8* %17, i8** %7, align 8, !dbg !179
  store i8 %15, i8* %16, align 1, !dbg !180
  br label %9, !dbg !175, !llvm.loop !181

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !183
  ret i8* %19, !dbg !184
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34, !34}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/238_relaxng.c_904_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "52931c9d3bd5fc846266d53ffd82e519")
!2 = !{!3, !16, !9, !17, !22}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGDefinePtr", file: !1, line: 11, baseType: !4)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGDefine", file: !1, line: 10, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRelaxNGDefine", file: !1, line: 16, size: 128, elements: !7)
!7 = !{!8, !15}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !6, file: !1, line: 17, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 13, baseType: !11)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 29, size: 32, elements: !12)
!12 = !{!13}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !11, file: !1, line: 31, baseType: !14, size: 32)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !6, file: !1, line: 18, baseType: !14, size: 32, offset: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGValidCtxt", file: !1, line: 12, baseType: !19)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRelaxNGValidCtxt", file: !1, line: 22, size: 128, elements: !20)
!20 = !{!21, !23, !24}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "defTab", scope: !19, file: !1, line: 23, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "defNr", scope: !19, file: !1, line: 24, baseType: !14, size: 32, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "defMax", scope: !19, file: !1, line: 25, baseType: !14, size: 32, offset: 96)
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
!35 = distinct !DISubprogram(name: "xmlRngPErrMemory", scope: !1, file: !1, line: 35, type: !36, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !41)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !17, !38}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!40 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!41 = !{}
!42 = !DILocalVariable(name: "ctxt", arg: 1, scope: !35, file: !1, line: 35, type: !17)
!43 = !DILocation(line: 35, column: 44, scope: !35)
!44 = !DILocalVariable(name: "msg", arg: 2, scope: !35, file: !1, line: 35, type: !38)
!45 = !DILocation(line: 35, column: 62, scope: !35)
!46 = !DILocation(line: 37, column: 1, scope: !35)
!47 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 39, type: !48, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !41)
!48 = !DISubroutineType(types: !49)
!49 = !{!16, !50}
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !51, line: 46, baseType: !52)
!51 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!52 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!53 = !DILocalVariable(name: "size", arg: 1, scope: !47, file: !1, line: 39, type: !50)
!54 = !DILocation(line: 39, column: 24, scope: !47)
!55 = !DILocation(line: 40, column: 19, scope: !47)
!56 = !DILocation(line: 40, column: 12, scope: !47)
!57 = !DILocation(line: 40, column: 5, scope: !47)
!58 = distinct !DISubprogram(name: "xmlRelaxNGCopyDefine", scope: !1, file: !1, line: 44, type: !59, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !41)
!59 = !DISubroutineType(types: !60)
!60 = !{!3, !17, !9}
!61 = !DILocalVariable(name: "ctxt", arg: 1, scope: !58, file: !1, line: 44, type: !17)
!62 = !DILocation(line: 44, column: 63, scope: !58)
!63 = !DILocalVariable(name: "node", arg: 2, scope: !58, file: !1, line: 44, type: !9)
!64 = !DILocation(line: 44, column: 78, scope: !58)
!65 = !DILocalVariable(name: "ret", scope: !58, file: !1, line: 45, type: !3)
!66 = !DILocation(line: 45, column: 25, scope: !58)
!67 = !DILocation(line: 47, column: 33, scope: !58)
!68 = !DILocation(line: 47, column: 11, scope: !58)
!69 = !DILocation(line: 47, column: 9, scope: !58)
!70 = !DILocation(line: 48, column: 9, scope: !71)
!71 = distinct !DILexicalBlock(scope: !58, file: !1, line: 48, column: 9)
!72 = !DILocation(line: 48, column: 13, scope: !71)
!73 = !DILocation(line: 48, column: 9, scope: !58)
!74 = !DILocation(line: 49, column: 26, scope: !75)
!75 = distinct !DILexicalBlock(scope: !71, file: !1, line: 48, column: 22)
!76 = !DILocation(line: 49, column: 9, scope: !75)
!77 = !DILocation(line: 50, column: 9, scope: !75)
!78 = !DILocation(line: 54, column: 12, scope: !58)
!79 = !DILocation(line: 54, column: 5, scope: !58)
!80 = !DILocation(line: 57, column: 5, scope: !58)
!81 = !DILocation(line: 60, column: 5, scope: !58)
!82 = !DILocation(line: 62, column: 35, scope: !58)
!83 = !DILocation(line: 62, column: 5, scope: !58)
!84 = !DILocation(line: 62, column: 11, scope: !58)
!85 = !DILocation(line: 62, column: 18, scope: !58)
!86 = !DILocation(line: 62, column: 24, scope: !58)
!87 = !DILocation(line: 62, column: 29, scope: !58)
!88 = !DILocation(line: 62, column: 33, scope: !58)
!89 = !DILocation(line: 63, column: 17, scope: !58)
!90 = !DILocation(line: 63, column: 5, scope: !58)
!91 = !DILocation(line: 63, column: 10, scope: !58)
!92 = !DILocation(line: 63, column: 15, scope: !58)
!93 = !DILocation(line: 64, column: 5, scope: !58)
!94 = !DILocation(line: 64, column: 10, scope: !58)
!95 = !DILocation(line: 64, column: 16, scope: !58)
!96 = !DILocation(line: 65, column: 13, scope: !58)
!97 = !DILocation(line: 65, column: 5, scope: !58)
!98 = !DILocation(line: 66, column: 1, scope: !58)
!99 = distinct !DISubprogram(name: "xmlRelaxNGCopyValidState", scope: !1, file: !1, line: 69, type: !100, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !41)
!100 = !DISubroutineType(types: !101)
!101 = !{!17, !17}
!102 = !DILocalVariable(name: "ctxt", arg: 1, scope: !99, file: !1, line: 69, type: !17)
!103 = !DILocation(line: 69, column: 68, scope: !99)
!104 = !DILocalVariable(name: "node", scope: !99, file: !1, line: 71, type: !9)
!105 = !DILocation(line: 71, column: 14, scope: !99)
!106 = !DILocation(line: 71, column: 32, scope: !99)
!107 = !DILocation(line: 71, column: 21, scope: !99)
!108 = !DILocation(line: 72, column: 10, scope: !109)
!109 = distinct !DILexicalBlock(scope: !99, file: !1, line: 72, column: 9)
!110 = !DILocation(line: 72, column: 9, scope: !99)
!111 = !DILocation(line: 72, column: 16, scope: !109)
!112 = !DILocation(line: 74, column: 56, scope: !99)
!113 = !DILocation(line: 74, column: 62, scope: !99)
!114 = !DILocation(line: 74, column: 35, scope: !99)
!115 = !DILocation(line: 74, column: 12, scope: !99)
!116 = !DILocation(line: 74, column: 5, scope: !99)
!117 = !DILocation(line: 75, column: 1, scope: !99)
!118 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 77, type: !119, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !41)
!119 = !DISubroutineType(types: !120)
!120 = !{!14}
!121 = !DILocalVariable(name: "ctxt", scope: !118, file: !1, line: 79, type: !18)
!122 = !DILocation(line: 79, column: 25, scope: !118)
!123 = !DILocalVariable(name: "defTab", scope: !118, file: !1, line: 80, type: !22)
!124 = !DILocation(line: 80, column: 26, scope: !118)
!125 = !DILocalVariable(name: "defNr", scope: !118, file: !1, line: 81, type: !14)
!126 = !DILocation(line: 81, column: 9, scope: !118)
!127 = !DILocalVariable(name: "defMax", scope: !118, file: !1, line: 81, type: !14)
!128 = !DILocation(line: 81, column: 16, scope: !118)
!129 = !DILocation(line: 84, column: 37, scope: !118)
!130 = !DILocation(line: 84, column: 14, scope: !118)
!131 = !DILocation(line: 84, column: 12, scope: !118)
!132 = !DILocation(line: 85, column: 24, scope: !118)
!133 = !DILocation(line: 85, column: 5, scope: !118)
!134 = !DILocation(line: 88, column: 19, scope: !118)
!135 = !DILocation(line: 88, column: 10, scope: !118)
!136 = !DILocation(line: 88, column: 17, scope: !118)
!137 = !DILocation(line: 89, column: 24, scope: !118)
!138 = !DILocation(line: 89, column: 5, scope: !118)
!139 = !DILocation(line: 90, column: 24, scope: !118)
!140 = !DILocation(line: 90, column: 5, scope: !118)
!141 = !DILocation(line: 93, column: 17, scope: !118)
!142 = !DILocation(line: 93, column: 23, scope: !118)
!143 = !DILocation(line: 93, column: 28, scope: !118)
!144 = !DILocation(line: 93, column: 31, scope: !118)
!145 = !DILocation(line: 93, column: 37, scope: !118)
!146 = !DILocation(line: 0, scope: !118)
!147 = !DILocation(line: 93, column: 5, scope: !118)
!148 = !DILocation(line: 94, column: 17, scope: !118)
!149 = !DILocation(line: 94, column: 24, scope: !118)
!150 = !DILocation(line: 94, column: 5, scope: !118)
!151 = !DILocation(line: 95, column: 18, scope: !118)
!152 = !DILocation(line: 95, column: 10, scope: !118)
!153 = !DILocation(line: 95, column: 16, scope: !118)
!154 = !DILocation(line: 96, column: 19, scope: !118)
!155 = !DILocation(line: 96, column: 10, scope: !118)
!156 = !DILocation(line: 96, column: 17, scope: !118)
!157 = !DILocation(line: 99, column: 5, scope: !118)
!158 = !DILocation(line: 102, column: 10, scope: !118)
!159 = !DILocation(line: 102, column: 5, scope: !118)
!160 = !DILocation(line: 104, column: 5, scope: !118)
!161 = distinct !DISubprogram(name: "memset", scope: !162, file: !162, line: 12, type: !163, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !41)
!162 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!163 = !DISubroutineType(types: !164)
!164 = !{!16, !16, !14, !50}
!165 = !DILocalVariable(name: "dst", arg: 1, scope: !161, file: !162, line: 12, type: !16)
!166 = !DILocation(line: 12, column: 20, scope: !161)
!167 = !DILocalVariable(name: "s", arg: 2, scope: !161, file: !162, line: 12, type: !14)
!168 = !DILocation(line: 12, column: 29, scope: !161)
!169 = !DILocalVariable(name: "count", arg: 3, scope: !161, file: !162, line: 12, type: !50)
!170 = !DILocation(line: 12, column: 39, scope: !161)
!171 = !DILocalVariable(name: "a", scope: !161, file: !162, line: 13, type: !172)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!173 = !DILocation(line: 13, column: 9, scope: !161)
!174 = !DILocation(line: 13, column: 13, scope: !161)
!175 = !DILocation(line: 14, column: 3, scope: !161)
!176 = !DILocation(line: 14, column: 15, scope: !161)
!177 = !DILocation(line: 14, column: 18, scope: !161)
!178 = !DILocation(line: 15, column: 12, scope: !161)
!179 = !DILocation(line: 15, column: 7, scope: !161)
!180 = !DILocation(line: 15, column: 10, scope: !161)
!181 = distinct !{!181, !175, !178, !182}
!182 = !{!"llvm.loop.mustprogress"}
!183 = !DILocation(line: 16, column: 10, scope: !161)
!184 = !DILocation(line: 16, column: 3, scope: !161)

; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/324_xmlschemas.c_23207_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/324_xmlschemas.c_23207_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaValidCtxt = type { %struct._xmlSchemaInode* }
%struct._xmlSchemaInode = type { %struct._xmlSchemaIDCMatcher* }
%struct._xmlSchemaIDCMatcher = type { %struct._xmlSchemaIDCMatcher* }

@.str = private unnamed_addr constant [3 x i8] c"an\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"(an <= 0 || result != -1) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [110 x i8] c"se_runs/sa_llm/libxml2_62911_vul/324_xmlschemas.c_23207_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"allocating an IDC matcher\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchemaVErrMemory(%struct._xmlSchemaValidCtxt* noundef %0, i8* noundef %1, i8* noundef %2) #0 !dbg !19 {
  %4 = alloca %struct._xmlSchemaValidCtxt*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._xmlSchemaValidCtxt* %0, %struct._xmlSchemaValidCtxt** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaValidCtxt** %4, metadata !36, metadata !DIExpression()), !dbg !37
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !38, metadata !DIExpression()), !dbg !39
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !40, metadata !DIExpression()), !dbg !41
  ret void, !dbg !42
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlSchemaFormatQName(i8* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !43 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !48, metadata !DIExpression()), !dbg !49
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !50, metadata !DIExpression()), !dbg !51
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !52, metadata !DIExpression()), !dbg !53
  %7 = load i32, i32* %6, align 4, !dbg !54
  %8 = icmp sgt i32 %7, 0, !dbg !56
  br i1 %8, label %9, label %15, !dbg !57

9:                                                ; preds = %3
  %10 = load i8*, i8** %5, align 8, !dbg !58
  %11 = icmp ne i8* %10, null, !dbg !58
  br i1 %11, label %12, label %15, !dbg !59

12:                                               ; preds = %9
  %13 = load i8*, i8** %5, align 8, !dbg !60
  %14 = getelementptr inbounds i8, i8* %13, i64 0, !dbg !60
  store i8 0, i8* %14, align 1, !dbg !62
  br label %15, !dbg !63

15:                                               ; preds = %12, %9, %3
  ret i32 0, !dbg !64
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !65 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlSchemaValidCtxt, align 8
  %5 = alloca %struct._xmlSchemaInode, align 8
  %6 = alloca %struct._xmlSchemaIDCMatcher, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._xmlSchemaIDCMatcher*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !68, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata i32* %3, metadata !70, metadata !DIExpression()), !dbg !71
  %9 = bitcast i32* %2 to i8*, !dbg !72
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !73
  %10 = bitcast i32* %3 to i8*, !dbg !74
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !75
  %11 = load i32, i32* %2, align 4, !dbg !76
  %12 = icmp sge i32 %11, 0, !dbg !77
  %13 = zext i1 %12 to i32, !dbg !77
  %14 = sext i32 %13 to i64, !dbg !76
  call void @klee_assume(i64 noundef %14), !dbg !78
  %15 = load i32, i32* %3, align 4, !dbg !79
  %16 = icmp sge i32 %15, 0, !dbg !80
  %17 = zext i1 %16 to i32, !dbg !80
  %18 = sext i32 %17 to i64, !dbg !79
  call void @klee_assume(i64 noundef %18), !dbg !81
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaValidCtxt* %4, metadata !82, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaInode* %5, metadata !84, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaIDCMatcher* %6, metadata !86, metadata !DIExpression()), !dbg !87
  %19 = getelementptr inbounds %struct._xmlSchemaValidCtxt, %struct._xmlSchemaValidCtxt* %4, i32 0, i32 0, !dbg !88
  store %struct._xmlSchemaInode* %5, %struct._xmlSchemaInode** %19, align 8, !dbg !89
  %20 = getelementptr inbounds %struct._xmlSchemaInode, %struct._xmlSchemaInode* %5, i32 0, i32 0, !dbg !90
  store %struct._xmlSchemaIDCMatcher* null, %struct._xmlSchemaIDCMatcher** %20, align 8, !dbg !91
  %21 = getelementptr inbounds %struct._xmlSchemaIDCMatcher, %struct._xmlSchemaIDCMatcher* %6, i32 0, i32 0, !dbg !92
  store %struct._xmlSchemaIDCMatcher* null, %struct._xmlSchemaIDCMatcher** %21, align 8, !dbg !93
  call void @llvm.dbg.declare(metadata i32* %7, metadata !94, metadata !DIExpression()), !dbg !95
  %22 = load i32, i32* %2, align 4, !dbg !96
  %23 = load i32, i32* %3, align 4, !dbg !97
  %24 = call i32 @target_function(%struct._xmlSchemaValidCtxt* noundef %4, %struct._xmlSchemaIDCMatcher* noundef %6, i32 noundef %22, i32 noundef %23), !dbg !98
  store i32 %24, i32* %7, align 4, !dbg !95
  %25 = load i32, i32* %2, align 4, !dbg !99
  %26 = icmp sle i32 %25, 0, !dbg !99
  br i1 %26, label %30, label %27, !dbg !99

27:                                               ; preds = %0
  %28 = load i32, i32* %7, align 4, !dbg !99
  %29 = icmp ne i32 %28, -1, !dbg !99
  br i1 %29, label %30, label %32, !dbg !99

30:                                               ; preds = %27, %0
  br i1 true, label %31, label %32, !dbg !99

31:                                               ; preds = %30
  br label %34, !dbg !99

32:                                               ; preds = %30, %27
  %33 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([110 x i8], [110 x i8]* @.str.4, i64 0, i64 0), i32 noundef 95, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !99
  br label %34, !dbg !99

34:                                               ; preds = %32, %31
  %35 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([110 x i8], [110 x i8]* @.str.4, i64 0, i64 0), i32 noundef 98, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !100
  %36 = load i32, i32* %2, align 4, !dbg !101
  %37 = icmp sgt i32 %36, 0, !dbg !103
  br i1 %37, label %38, label %59, !dbg !104

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4, !dbg !105
  %40 = icmp ne i32 %39, -1, !dbg !106
  br i1 %40, label %41, label %59, !dbg !107

41:                                               ; preds = %38
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaIDCMatcher** %8, metadata !108, metadata !DIExpression()), !dbg !110
  %42 = getelementptr inbounds %struct._xmlSchemaIDCMatcher, %struct._xmlSchemaIDCMatcher* %6, i32 0, i32 0, !dbg !111
  %43 = load %struct._xmlSchemaIDCMatcher*, %struct._xmlSchemaIDCMatcher** %42, align 8, !dbg !111
  %44 = icmp ne %struct._xmlSchemaIDCMatcher* %43, null, !dbg !112
  br i1 %44, label %45, label %48, !dbg !113

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct._xmlSchemaIDCMatcher, %struct._xmlSchemaIDCMatcher* %6, i32 0, i32 0, !dbg !114
  %47 = load %struct._xmlSchemaIDCMatcher*, %struct._xmlSchemaIDCMatcher** %46, align 8, !dbg !114
  br label %51, !dbg !113

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct._xmlSchemaInode, %struct._xmlSchemaInode* %5, i32 0, i32 0, !dbg !115
  %50 = load %struct._xmlSchemaIDCMatcher*, %struct._xmlSchemaIDCMatcher** %49, align 8, !dbg !115
  br label %51, !dbg !113

51:                                               ; preds = %48, %45
  %52 = phi %struct._xmlSchemaIDCMatcher* [ %47, %45 ], [ %50, %48 ], !dbg !113
  store %struct._xmlSchemaIDCMatcher* %52, %struct._xmlSchemaIDCMatcher** %8, align 8, !dbg !110
  %53 = load %struct._xmlSchemaIDCMatcher*, %struct._xmlSchemaIDCMatcher** %8, align 8, !dbg !116
  %54 = icmp ne %struct._xmlSchemaIDCMatcher* %53, null, !dbg !118
  br i1 %54, label %55, label %58, !dbg !119

55:                                               ; preds = %51
  %56 = load %struct._xmlSchemaIDCMatcher*, %struct._xmlSchemaIDCMatcher** %8, align 8, !dbg !120
  %57 = bitcast %struct._xmlSchemaIDCMatcher* %56 to i8*, !dbg !120
  call void @free(i8* noundef %57) #7, !dbg !122
  br label %58, !dbg !123

58:                                               ; preds = %55, %51
  br label %59, !dbg !124

59:                                               ; preds = %58, %38, %34
  ret i32 0, !dbg !125
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_function(%struct._xmlSchemaValidCtxt* noundef %0, %struct._xmlSchemaIDCMatcher* noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !126 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._xmlSchemaValidCtxt*, align 8
  %7 = alloca %struct._xmlSchemaIDCMatcher*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct._xmlSchemaIDCMatcher*, align 8
  store %struct._xmlSchemaValidCtxt* %0, %struct._xmlSchemaValidCtxt** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaValidCtxt** %6, metadata !129, metadata !DIExpression()), !dbg !130
  store %struct._xmlSchemaIDCMatcher* %1, %struct._xmlSchemaIDCMatcher** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaIDCMatcher** %7, metadata !131, metadata !DIExpression()), !dbg !132
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !133, metadata !DIExpression()), !dbg !134
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !135, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaIDCMatcher** %10, metadata !137, metadata !DIExpression()), !dbg !138
  store %struct._xmlSchemaIDCMatcher* null, %struct._xmlSchemaIDCMatcher** %10, align 8, !dbg !138
  %11 = load i32, i32* %8, align 4, !dbg !139
  %12 = icmp sgt i32 %11, 0, !dbg !141
  br i1 %12, label %13, label %24, !dbg !142

13:                                               ; preds = %4
  %14 = call noalias i8* @malloc(i64 noundef 8) #7, !dbg !143
  %15 = bitcast i8* %14 to %struct._xmlSchemaIDCMatcher*, !dbg !145
  store %struct._xmlSchemaIDCMatcher* %15, %struct._xmlSchemaIDCMatcher** %10, align 8, !dbg !146
  %16 = load %struct._xmlSchemaIDCMatcher*, %struct._xmlSchemaIDCMatcher** %10, align 8, !dbg !147
  %17 = icmp eq %struct._xmlSchemaIDCMatcher* %16, null, !dbg !149
  br i1 %17, label %18, label %20, !dbg !150

18:                                               ; preds = %13
  %19 = load %struct._xmlSchemaValidCtxt*, %struct._xmlSchemaValidCtxt** %6, align 8, !dbg !151
  call void @xmlSchemaVErrMemory(%struct._xmlSchemaValidCtxt* noundef %19, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef null), !dbg !153
  store i32 -1, i32* %5, align 4, !dbg !154
  br label %39, !dbg !154

20:                                               ; preds = %13
  %21 = load %struct._xmlSchemaIDCMatcher*, %struct._xmlSchemaIDCMatcher** %10, align 8, !dbg !155
  %22 = bitcast %struct._xmlSchemaIDCMatcher* %21 to i8*, !dbg !156
  %23 = call i8* @memset(i8* %22, i32 0, i64 8), !dbg !156
  br label %24, !dbg !157

24:                                               ; preds = %20, %4
  %25 = load %struct._xmlSchemaIDCMatcher*, %struct._xmlSchemaIDCMatcher** %7, align 8, !dbg !158
  %26 = icmp eq %struct._xmlSchemaIDCMatcher* %25, null, !dbg !160
  br i1 %26, label %27, label %33, !dbg !161

27:                                               ; preds = %24
  %28 = load %struct._xmlSchemaIDCMatcher*, %struct._xmlSchemaIDCMatcher** %10, align 8, !dbg !162
  %29 = load %struct._xmlSchemaValidCtxt*, %struct._xmlSchemaValidCtxt** %6, align 8, !dbg !164
  %30 = getelementptr inbounds %struct._xmlSchemaValidCtxt, %struct._xmlSchemaValidCtxt* %29, i32 0, i32 0, !dbg !165
  %31 = load %struct._xmlSchemaInode*, %struct._xmlSchemaInode** %30, align 8, !dbg !165
  %32 = getelementptr inbounds %struct._xmlSchemaInode, %struct._xmlSchemaInode* %31, i32 0, i32 0, !dbg !166
  store %struct._xmlSchemaIDCMatcher* %28, %struct._xmlSchemaIDCMatcher** %32, align 8, !dbg !167
  br label %37, !dbg !168

33:                                               ; preds = %24
  %34 = load %struct._xmlSchemaIDCMatcher*, %struct._xmlSchemaIDCMatcher** %10, align 8, !dbg !169
  %35 = load %struct._xmlSchemaIDCMatcher*, %struct._xmlSchemaIDCMatcher** %7, align 8, !dbg !171
  %36 = getelementptr inbounds %struct._xmlSchemaIDCMatcher, %struct._xmlSchemaIDCMatcher* %35, i32 0, i32 0, !dbg !172
  store %struct._xmlSchemaIDCMatcher* %34, %struct._xmlSchemaIDCMatcher** %36, align 8, !dbg !173
  br label %37

37:                                               ; preds = %33, %27
  %38 = load i32, i32* %9, align 4, !dbg !174
  store i32 %38, i32* %5, align 4, !dbg !175
  br label %39, !dbg !175

39:                                               ; preds = %37, %18
  %40 = load i32, i32* %5, align 4, !dbg !176
  ret i32 %40, !dbg !176
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !177 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !184, metadata !DIExpression()), !dbg !185
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !186, metadata !DIExpression()), !dbg !187
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !188, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.declare(metadata i8** %7, metadata !190, metadata !DIExpression()), !dbg !191
  %8 = load i8*, i8** %4, align 8, !dbg !192
  store i8* %8, i8** %7, align 8, !dbg !191
  br label %9, !dbg !193

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !194
  %11 = add i64 %10, -1, !dbg !194
  store i64 %11, i64* %6, align 8, !dbg !194
  %12 = icmp ugt i64 %10, 0, !dbg !195
  br i1 %12, label %13, label %18, !dbg !193

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !196
  %15 = trunc i32 %14 to i8, !dbg !196
  %16 = load i8*, i8** %7, align 8, !dbg !197
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !197
  store i8* %17, i8** %7, align 8, !dbg !197
  store i8 %15, i8* %16, align 1, !dbg !198
  br label %9, !dbg !193, !llvm.loop !199

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !201
  ret i8* %19, !dbg !202
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18, !18}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/324_xmlschemas.c_23207_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "b32316f109c52d270418bc93b502c7e0")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaIDCMatcher", file: !1, line: 10, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaIDCMatcher", file: !1, line: 11, size: 64, elements: !7)
!7 = !{!8}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6, file: !1, line: 12, baseType: !4, size: 64)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!11 = !{i32 7, !"Dwarf Version", i32 5}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{i32 7, !"PIC Level", i32 2}
!15 = !{i32 7, !"PIE Level", i32 2}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"Ubuntu clang version 14.0.6"}
!19 = distinct !DISubprogram(name: "xmlSchemaVErrMemory", scope: !1, file: !1, line: 29, type: !20, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!20 = !DISubroutineType(types: !21)
!21 = !{null, !22, !32, !32}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaValidCtxt", file: !1, line: 22, baseType: !24)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaValidCtxt", file: !1, line: 23, size: 64, elements: !25)
!25 = !{!26}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "inode", scope: !24, file: !1, line: 24, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaInode", file: !1, line: 16, baseType: !29)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaInode", file: !1, line: 17, size: 64, elements: !30)
!30 = !{!31}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "idcMatchers", scope: !29, file: !1, line: 18, baseType: !4, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!35 = !{}
!36 = !DILocalVariable(name: "vctxt", arg: 1, scope: !19, file: !1, line: 29, type: !22)
!37 = !DILocation(line: 29, column: 46, scope: !19)
!38 = !DILocalVariable(name: "msg", arg: 2, scope: !19, file: !1, line: 29, type: !32)
!39 = !DILocation(line: 29, column: 65, scope: !19)
!40 = !DILocalVariable(name: "extra", arg: 3, scope: !19, file: !1, line: 29, type: !32)
!41 = !DILocation(line: 29, column: 82, scope: !19)
!42 = !DILocation(line: 31, column: 1, scope: !19)
!43 = distinct !DISubprogram(name: "xmlSchemaFormatQName", scope: !1, file: !1, line: 33, type: !44, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!44 = !DISubroutineType(types: !45)
!45 = !{!46, !32, !47, !46}
!46 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!48 = !DILocalVariable(name: "name", arg: 1, scope: !43, file: !1, line: 33, type: !32)
!49 = !DILocation(line: 33, column: 38, scope: !43)
!50 = !DILocalVariable(name: "buffer", arg: 2, scope: !43, file: !1, line: 33, type: !47)
!51 = !DILocation(line: 33, column: 50, scope: !43)
!52 = !DILocalVariable(name: "size", arg: 3, scope: !43, file: !1, line: 33, type: !46)
!53 = !DILocation(line: 33, column: 62, scope: !43)
!54 = !DILocation(line: 35, column: 9, scope: !55)
!55 = distinct !DILexicalBlock(scope: !43, file: !1, line: 35, column: 9)
!56 = !DILocation(line: 35, column: 14, scope: !55)
!57 = !DILocation(line: 35, column: 18, scope: !55)
!58 = !DILocation(line: 35, column: 21, scope: !55)
!59 = !DILocation(line: 35, column: 9, scope: !43)
!60 = !DILocation(line: 36, column: 9, scope: !61)
!61 = distinct !DILexicalBlock(scope: !55, file: !1, line: 35, column: 29)
!62 = !DILocation(line: 36, column: 19, scope: !61)
!63 = !DILocation(line: 37, column: 5, scope: !61)
!64 = !DILocation(line: 38, column: 5, scope: !43)
!65 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 65, type: !66, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!66 = !DISubroutineType(types: !67)
!67 = !{!46}
!68 = !DILocalVariable(name: "an", scope: !65, file: !1, line: 67, type: !46)
!69 = !DILocation(line: 67, column: 9, scope: !65)
!70 = !DILocalVariable(name: "ret", scope: !65, file: !1, line: 68, type: !46)
!71 = !DILocation(line: 68, column: 9, scope: !65)
!72 = !DILocation(line: 71, column: 24, scope: !65)
!73 = !DILocation(line: 71, column: 5, scope: !65)
!74 = !DILocation(line: 72, column: 24, scope: !65)
!75 = !DILocation(line: 72, column: 5, scope: !65)
!76 = !DILocation(line: 75, column: 17, scope: !65)
!77 = !DILocation(line: 75, column: 20, scope: !65)
!78 = !DILocation(line: 75, column: 5, scope: !65)
!79 = !DILocation(line: 76, column: 17, scope: !65)
!80 = !DILocation(line: 76, column: 21, scope: !65)
!81 = !DILocation(line: 76, column: 5, scope: !65)
!82 = !DILocalVariable(name: "vctxt", scope: !65, file: !1, line: 79, type: !23)
!83 = !DILocation(line: 79, column: 24, scope: !65)
!84 = !DILocalVariable(name: "inode", scope: !65, file: !1, line: 80, type: !28)
!85 = !DILocation(line: 80, column: 20, scope: !65)
!86 = !DILocalVariable(name: "last", scope: !65, file: !1, line: 81, type: !5)
!87 = !DILocation(line: 81, column: 25, scope: !65)
!88 = !DILocation(line: 83, column: 11, scope: !65)
!89 = !DILocation(line: 83, column: 17, scope: !65)
!90 = !DILocation(line: 84, column: 11, scope: !65)
!91 = !DILocation(line: 84, column: 23, scope: !65)
!92 = !DILocation(line: 85, column: 10, scope: !65)
!93 = !DILocation(line: 85, column: 15, scope: !65)
!94 = !DILocalVariable(name: "result", scope: !65, file: !1, line: 88, type: !46)
!95 = !DILocation(line: 88, column: 9, scope: !65)
!96 = !DILocation(line: 88, column: 49, scope: !65)
!97 = !DILocation(line: 88, column: 53, scope: !65)
!98 = !DILocation(line: 88, column: 18, scope: !65)
!99 = !DILocation(line: 95, column: 5, scope: !65)
!100 = !DILocation(line: 98, column: 5, scope: !65)
!101 = !DILocation(line: 101, column: 9, scope: !102)
!102 = distinct !DILexicalBlock(scope: !65, file: !1, line: 101, column: 9)
!103 = !DILocation(line: 101, column: 12, scope: !102)
!104 = !DILocation(line: 101, column: 16, scope: !102)
!105 = !DILocation(line: 101, column: 19, scope: !102)
!106 = !DILocation(line: 101, column: 26, scope: !102)
!107 = !DILocation(line: 101, column: 9, scope: !65)
!108 = !DILocalVariable(name: "matcher", scope: !109, file: !1, line: 103, type: !4)
!109 = distinct !DILexicalBlock(scope: !102, file: !1, line: 101, column: 33)
!110 = !DILocation(line: 103, column: 30, scope: !109)
!111 = !DILocation(line: 103, column: 46, scope: !109)
!112 = !DILocation(line: 103, column: 51, scope: !109)
!113 = !DILocation(line: 103, column: 40, scope: !109)
!114 = !DILocation(line: 103, column: 67, scope: !109)
!115 = !DILocation(line: 103, column: 80, scope: !109)
!116 = !DILocation(line: 104, column: 13, scope: !117)
!117 = distinct !DILexicalBlock(scope: !109, file: !1, line: 104, column: 13)
!118 = !DILocation(line: 104, column: 21, scope: !117)
!119 = !DILocation(line: 104, column: 13, scope: !109)
!120 = !DILocation(line: 105, column: 18, scope: !121)
!121 = distinct !DILexicalBlock(scope: !117, file: !1, line: 104, column: 30)
!122 = !DILocation(line: 105, column: 13, scope: !121)
!123 = !DILocation(line: 106, column: 9, scope: !121)
!124 = !DILocation(line: 107, column: 5, scope: !109)
!125 = !DILocation(line: 109, column: 5, scope: !65)
!126 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 42, type: !127, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !35)
!127 = !DISubroutineType(types: !128)
!128 = !{!46, !22, !4, !46, !46}
!129 = !DILocalVariable(name: "vctxt", arg: 1, scope: !126, file: !1, line: 42, type: !22)
!130 = !DILocation(line: 42, column: 48, scope: !126)
!131 = !DILocalVariable(name: "last", arg: 2, scope: !126, file: !1, line: 42, type: !4)
!132 = !DILocation(line: 42, column: 76, scope: !126)
!133 = !DILocalVariable(name: "an", arg: 3, scope: !126, file: !1, line: 42, type: !46)
!134 = !DILocation(line: 42, column: 86, scope: !126)
!135 = !DILocalVariable(name: "ret", arg: 4, scope: !126, file: !1, line: 42, type: !46)
!136 = !DILocation(line: 42, column: 94, scope: !126)
!137 = !DILocalVariable(name: "matcher", scope: !126, file: !1, line: 43, type: !4)
!138 = !DILocation(line: 43, column: 26, scope: !126)
!139 = !DILocation(line: 46, column: 9, scope: !140)
!140 = distinct !DILexicalBlock(scope: !126, file: !1, line: 46, column: 9)
!141 = !DILocation(line: 46, column: 12, scope: !140)
!142 = !DILocation(line: 46, column: 9, scope: !126)
!143 = !DILocation(line: 47, column: 41, scope: !144)
!144 = distinct !DILexicalBlock(scope: !140, file: !1, line: 46, column: 17)
!145 = !DILocation(line: 47, column: 19, scope: !144)
!146 = !DILocation(line: 47, column: 17, scope: !144)
!147 = !DILocation(line: 48, column: 13, scope: !148)
!148 = distinct !DILexicalBlock(scope: !144, file: !1, line: 48, column: 13)
!149 = !DILocation(line: 48, column: 21, scope: !148)
!150 = !DILocation(line: 48, column: 13, scope: !144)
!151 = !DILocation(line: 49, column: 33, scope: !152)
!152 = distinct !DILexicalBlock(scope: !148, file: !1, line: 48, column: 30)
!153 = !DILocation(line: 49, column: 13, scope: !152)
!154 = !DILocation(line: 50, column: 13, scope: !152)
!155 = !DILocation(line: 53, column: 16, scope: !144)
!156 = !DILocation(line: 53, column: 9, scope: !144)
!157 = !DILocation(line: 54, column: 5, scope: !144)
!158 = !DILocation(line: 56, column: 9, scope: !159)
!159 = distinct !DILexicalBlock(scope: !126, file: !1, line: 56, column: 9)
!160 = !DILocation(line: 56, column: 14, scope: !159)
!161 = !DILocation(line: 56, column: 9, scope: !126)
!162 = !DILocation(line: 57, column: 37, scope: !163)
!163 = distinct !DILexicalBlock(scope: !159, file: !1, line: 56, column: 23)
!164 = !DILocation(line: 57, column: 9, scope: !163)
!165 = !DILocation(line: 57, column: 16, scope: !163)
!166 = !DILocation(line: 57, column: 23, scope: !163)
!167 = !DILocation(line: 57, column: 35, scope: !163)
!168 = !DILocation(line: 58, column: 5, scope: !163)
!169 = !DILocation(line: 59, column: 22, scope: !170)
!170 = distinct !DILexicalBlock(scope: !159, file: !1, line: 58, column: 12)
!171 = !DILocation(line: 59, column: 9, scope: !170)
!172 = !DILocation(line: 59, column: 15, scope: !170)
!173 = !DILocation(line: 59, column: 20, scope: !170)
!174 = !DILocation(line: 62, column: 12, scope: !126)
!175 = !DILocation(line: 62, column: 5, scope: !126)
!176 = !DILocation(line: 63, column: 1, scope: !126)
!177 = distinct !DISubprogram(name: "memset", scope: !178, file: !178, line: 12, type: !179, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !35)
!178 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!179 = !DISubroutineType(types: !180)
!180 = !{!3, !3, !46, !181}
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !182, line: 46, baseType: !183)
!182 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!183 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!184 = !DILocalVariable(name: "dst", arg: 1, scope: !177, file: !178, line: 12, type: !3)
!185 = !DILocation(line: 12, column: 20, scope: !177)
!186 = !DILocalVariable(name: "s", arg: 2, scope: !177, file: !178, line: 12, type: !46)
!187 = !DILocation(line: 12, column: 29, scope: !177)
!188 = !DILocalVariable(name: "count", arg: 3, scope: !177, file: !178, line: 12, type: !181)
!189 = !DILocation(line: 12, column: 39, scope: !177)
!190 = !DILocalVariable(name: "a", scope: !177, file: !178, line: 13, type: !47)
!191 = !DILocation(line: 13, column: 9, scope: !177)
!192 = !DILocation(line: 13, column: 13, scope: !177)
!193 = !DILocation(line: 14, column: 3, scope: !177)
!194 = !DILocation(line: 14, column: 15, scope: !177)
!195 = !DILocation(line: 14, column: 18, scope: !177)
!196 = !DILocation(line: 15, column: 12, scope: !177)
!197 = !DILocation(line: 15, column: 7, scope: !177)
!198 = !DILocation(line: 15, column: 10, scope: !177)
!199 = distinct !{!199, !193, !196, !200}
!200 = !{!"llvm.loop.mustprogress"}
!201 = !DILocation(line: 16, column: 10, scope: !177)
!202 = !DILocation(line: 16, column: 3, scope: !177)

; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/322_xmlschemas.c_23065_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/322_xmlschemas.c_23065_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaIDCMatcher = type { %struct._xmlSchemaIDC*, %struct._xmlSchemaPSVIIDCKey*** }
%struct._xmlSchemaIDC = type { %struct.anon* }
%struct.anon = type { i32 }
%struct._xmlSchemaPSVIIDCKey = type opaque
%struct.anon.0 = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"allocating an IDC key-sequence\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"(matcher->aidc->def->nbFields >= 0) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [110 x i8] c"se_runs/sa_llm/libxml2_55980_vul/322_xmlschemas.c_23065_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.target_function = private unnamed_addr constant [48 x i8] c"int target_function(xmlSchemaIDCMatcher *, int)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"nbFields\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"pos\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !19 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !26, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata i8** %4, metadata !28, metadata !DIExpression()), !dbg !29
  %5 = load i64, i64* %3, align 8, !dbg !30
  %6 = call noalias i8* @malloc(i64 noundef %5) #7, !dbg !31
  store i8* %6, i8** %4, align 8, !dbg !29
  %7 = load i8*, i8** %4, align 8, !dbg !32
  %8 = icmp eq i8* %7, null, !dbg !34
  br i1 %8, label %9, label %10, !dbg !35

9:                                                ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !36
  br label %12, !dbg !36

10:                                               ; preds = %1
  %11 = load i8*, i8** %4, align 8, !dbg !38
  store i8* %11, i8** %2, align 8, !dbg !39
  br label %12, !dbg !39

12:                                               ; preds = %10, %9
  %13 = load i8*, i8** %2, align 8, !dbg !40
  ret i8* %13, !dbg !40
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchemaVErrMemory(i8* noundef %0, i8* noundef %1, i8* noundef %2) #0 !dbg !41 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !47, metadata !DIExpression()), !dbg !48
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !49, metadata !DIExpression()), !dbg !50
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !51, metadata !DIExpression()), !dbg !52
  ret void, !dbg !53
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_function(%struct._xmlSchemaIDCMatcher* noundef %0, i32 noundef %1) #0 !dbg !54 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlSchemaIDCMatcher*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._xmlSchemaPSVIIDCKey**, align 8
  %7 = alloca %struct._xmlSchemaPSVIIDCKey*, align 8
  store %struct._xmlSchemaIDCMatcher* %0, %struct._xmlSchemaIDCMatcher** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaIDCMatcher** %4, metadata !73, metadata !DIExpression()), !dbg !74
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !75, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaPSVIIDCKey*** %6, metadata !77, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaPSVIIDCKey** %7, metadata !79, metadata !DIExpression()), !dbg !80
  store %struct._xmlSchemaPSVIIDCKey* null, %struct._xmlSchemaPSVIIDCKey** %7, align 8, !dbg !80
  %8 = load %struct._xmlSchemaIDCMatcher*, %struct._xmlSchemaIDCMatcher** %4, align 8, !dbg !81
  %9 = icmp eq %struct._xmlSchemaIDCMatcher* %8, null, !dbg !83
  br i1 %9, label %22, label %10, !dbg !84

10:                                               ; preds = %2
  %11 = load %struct._xmlSchemaIDCMatcher*, %struct._xmlSchemaIDCMatcher** %4, align 8, !dbg !85
  %12 = getelementptr inbounds %struct._xmlSchemaIDCMatcher, %struct._xmlSchemaIDCMatcher* %11, i32 0, i32 0, !dbg !86
  %13 = load %struct._xmlSchemaIDC*, %struct._xmlSchemaIDC** %12, align 8, !dbg !86
  %14 = icmp eq %struct._xmlSchemaIDC* %13, null, !dbg !87
  br i1 %14, label %22, label %15, !dbg !88

15:                                               ; preds = %10
  %16 = load %struct._xmlSchemaIDCMatcher*, %struct._xmlSchemaIDCMatcher** %4, align 8, !dbg !89
  %17 = getelementptr inbounds %struct._xmlSchemaIDCMatcher, %struct._xmlSchemaIDCMatcher* %16, i32 0, i32 0, !dbg !90
  %18 = load %struct._xmlSchemaIDC*, %struct._xmlSchemaIDC** %17, align 8, !dbg !90
  %19 = getelementptr inbounds %struct._xmlSchemaIDC, %struct._xmlSchemaIDC* %18, i32 0, i32 0, !dbg !91
  %20 = load %struct.anon*, %struct.anon** %19, align 8, !dbg !91
  %21 = icmp eq %struct.anon* %20, null, !dbg !92
  br i1 %21, label %22, label %23, !dbg !93

22:                                               ; preds = %15, %10, %2
  store i32 -1, i32* %3, align 4, !dbg !94
  br label %72, !dbg !94

23:                                               ; preds = %15
  %24 = load %struct._xmlSchemaIDCMatcher*, %struct._xmlSchemaIDCMatcher** %4, align 8, !dbg !96
  %25 = getelementptr inbounds %struct._xmlSchemaIDCMatcher, %struct._xmlSchemaIDCMatcher* %24, i32 0, i32 0, !dbg !97
  %26 = load %struct._xmlSchemaIDC*, %struct._xmlSchemaIDC** %25, align 8, !dbg !97
  %27 = getelementptr inbounds %struct._xmlSchemaIDC, %struct._xmlSchemaIDC* %26, i32 0, i32 0, !dbg !98
  %28 = load %struct.anon*, %struct.anon** %27, align 8, !dbg !98
  %29 = getelementptr inbounds %struct.anon, %struct.anon* %28, i32 0, i32 0, !dbg !99
  %30 = load i32, i32* %29, align 4, !dbg !99
  %31 = sext i32 %30 to i64, !dbg !96
  %32 = mul i64 %31, 8, !dbg !100
  %33 = call i8* @xmlMalloc(i64 noundef %32), !dbg !101
  %34 = bitcast i8* %33 to %struct._xmlSchemaPSVIIDCKey**, !dbg !102
  store %struct._xmlSchemaPSVIIDCKey** %34, %struct._xmlSchemaPSVIIDCKey*** %6, align 8, !dbg !103
  %35 = load %struct._xmlSchemaPSVIIDCKey**, %struct._xmlSchemaPSVIIDCKey*** %6, align 8, !dbg !104
  %36 = icmp eq %struct._xmlSchemaPSVIIDCKey** %35, null, !dbg !106
  br i1 %36, label %37, label %38, !dbg !107

37:                                               ; preds = %23
  call void @xmlSchemaVErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* noundef null), !dbg !108
  store i32 -1, i32* %3, align 4, !dbg !110
  br label %72, !dbg !110

38:                                               ; preds = %23
  %39 = load %struct._xmlSchemaPSVIIDCKey**, %struct._xmlSchemaPSVIIDCKey*** %6, align 8, !dbg !111
  %40 = bitcast %struct._xmlSchemaPSVIIDCKey** %39 to i8*, !dbg !112
  %41 = load %struct._xmlSchemaIDCMatcher*, %struct._xmlSchemaIDCMatcher** %4, align 8, !dbg !113
  %42 = getelementptr inbounds %struct._xmlSchemaIDCMatcher, %struct._xmlSchemaIDCMatcher* %41, i32 0, i32 0, !dbg !114
  %43 = load %struct._xmlSchemaIDC*, %struct._xmlSchemaIDC** %42, align 8, !dbg !114
  %44 = getelementptr inbounds %struct._xmlSchemaIDC, %struct._xmlSchemaIDC* %43, i32 0, i32 0, !dbg !115
  %45 = load %struct.anon*, %struct.anon** %44, align 8, !dbg !115
  %46 = getelementptr inbounds %struct.anon, %struct.anon* %45, i32 0, i32 0, !dbg !116
  %47 = load i32, i32* %46, align 4, !dbg !116
  %48 = sext i32 %47 to i64, !dbg !113
  %49 = mul i64 %48, 8, !dbg !117
  %50 = call i8* @memset(i8* %40, i32 0, i64 %49), !dbg !112
  %51 = load %struct._xmlSchemaIDCMatcher*, %struct._xmlSchemaIDCMatcher** %4, align 8, !dbg !118
  %52 = getelementptr inbounds %struct._xmlSchemaIDCMatcher, %struct._xmlSchemaIDCMatcher* %51, i32 0, i32 0, !dbg !118
  %53 = load %struct._xmlSchemaIDC*, %struct._xmlSchemaIDC** %52, align 8, !dbg !118
  %54 = getelementptr inbounds %struct._xmlSchemaIDC, %struct._xmlSchemaIDC* %53, i32 0, i32 0, !dbg !118
  %55 = load %struct.anon*, %struct.anon** %54, align 8, !dbg !118
  %56 = getelementptr inbounds %struct.anon, %struct.anon* %55, i32 0, i32 0, !dbg !118
  %57 = load i32, i32* %56, align 4, !dbg !118
  %58 = icmp sge i32 %57, 0, !dbg !118
  br i1 %58, label %59, label %61, !dbg !118

59:                                               ; preds = %38
  br i1 true, label %60, label %61, !dbg !118

60:                                               ; preds = %59
  br label %63, !dbg !118

61:                                               ; preds = %59, %38
  %62 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([110 x i8], [110 x i8]* @.str.3, i64 0, i64 0), i32 noundef 58, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !118
  br label %63, !dbg !118

63:                                               ; preds = %61, %60
  %64 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([110 x i8], [110 x i8]* @.str.3, i64 0, i64 0), i32 noundef 61, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !119
  %65 = load %struct._xmlSchemaPSVIIDCKey**, %struct._xmlSchemaPSVIIDCKey*** %6, align 8, !dbg !120
  %66 = load %struct._xmlSchemaIDCMatcher*, %struct._xmlSchemaIDCMatcher** %4, align 8, !dbg !121
  %67 = getelementptr inbounds %struct._xmlSchemaIDCMatcher, %struct._xmlSchemaIDCMatcher* %66, i32 0, i32 1, !dbg !122
  %68 = load %struct._xmlSchemaPSVIIDCKey***, %struct._xmlSchemaPSVIIDCKey**** %67, align 8, !dbg !122
  %69 = load i32, i32* %5, align 4, !dbg !123
  %70 = sext i32 %69 to i64, !dbg !121
  %71 = getelementptr inbounds %struct._xmlSchemaPSVIIDCKey**, %struct._xmlSchemaPSVIIDCKey*** %68, i64 %70, !dbg !121
  store %struct._xmlSchemaPSVIIDCKey** %65, %struct._xmlSchemaPSVIIDCKey*** %71, align 8, !dbg !124
  store i32 0, i32* %3, align 4, !dbg !125
  br label %72, !dbg !125

72:                                               ; preds = %63, %37, %22
  %73 = load i32, i32* %3, align 4, !dbg !126
  ret i32 %73, !dbg !126
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !127 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlSchemaIDCMatcher, align 8
  %3 = alloca %struct._xmlSchemaIDC, align 8
  %4 = alloca %struct.anon.0, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaIDCMatcher* %2, metadata !130, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaIDC* %3, metadata !132, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.declare(metadata %struct.anon.0* %4, metadata !134, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.declare(metadata i32* %5, metadata !139, metadata !DIExpression()), !dbg !140
  %6 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %4, i32 0, i32 0, !dbg !141
  %7 = bitcast i32* %6 to i8*, !dbg !142
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)), !dbg !143
  %8 = bitcast i32* %5 to i8*, !dbg !144
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)), !dbg !145
  %9 = bitcast %struct.anon.0* %4 to %struct.anon*, !dbg !146
  %10 = getelementptr inbounds %struct._xmlSchemaIDC, %struct._xmlSchemaIDC* %3, i32 0, i32 0, !dbg !147
  store %struct.anon* %9, %struct.anon** %10, align 8, !dbg !148
  %11 = getelementptr inbounds %struct._xmlSchemaIDCMatcher, %struct._xmlSchemaIDCMatcher* %2, i32 0, i32 0, !dbg !149
  store %struct._xmlSchemaIDC* %3, %struct._xmlSchemaIDC** %11, align 8, !dbg !150
  %12 = call noalias i8* @malloc(i64 noundef 80) #7, !dbg !151
  %13 = bitcast i8* %12 to %struct._xmlSchemaPSVIIDCKey***, !dbg !152
  %14 = getelementptr inbounds %struct._xmlSchemaIDCMatcher, %struct._xmlSchemaIDCMatcher* %2, i32 0, i32 1, !dbg !153
  store %struct._xmlSchemaPSVIIDCKey*** %13, %struct._xmlSchemaPSVIIDCKey**** %14, align 8, !dbg !154
  %15 = getelementptr inbounds %struct._xmlSchemaIDCMatcher, %struct._xmlSchemaIDCMatcher* %2, i32 0, i32 1, !dbg !155
  %16 = load %struct._xmlSchemaPSVIIDCKey***, %struct._xmlSchemaPSVIIDCKey**** %15, align 8, !dbg !155
  %17 = icmp eq %struct._xmlSchemaPSVIIDCKey*** %16, null, !dbg !157
  br i1 %17, label %18, label %19, !dbg !158

18:                                               ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !159
  br label %34, !dbg !159

19:                                               ; preds = %0
  %20 = load i32, i32* %5, align 4, !dbg !161
  %21 = icmp sge i32 %20, 0, !dbg !162
  br i1 %21, label %22, label %25, !dbg !163

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4, !dbg !164
  %24 = icmp slt i32 %23, 10, !dbg !165
  br label %25

25:                                               ; preds = %22, %19
  %26 = phi i1 [ false, %19 ], [ %24, %22 ], !dbg !166
  %27 = zext i1 %26 to i32, !dbg !163
  %28 = sext i32 %27 to i64, !dbg !161
  call void @klee_assume(i64 noundef %28), !dbg !167
  %29 = load i32, i32* %5, align 4, !dbg !168
  %30 = call i32 @target_function(%struct._xmlSchemaIDCMatcher* noundef %2, i32 noundef %29), !dbg !169
  %31 = getelementptr inbounds %struct._xmlSchemaIDCMatcher, %struct._xmlSchemaIDCMatcher* %2, i32 0, i32 1, !dbg !170
  %32 = load %struct._xmlSchemaPSVIIDCKey***, %struct._xmlSchemaPSVIIDCKey**** %31, align 8, !dbg !170
  %33 = bitcast %struct._xmlSchemaPSVIIDCKey*** %32 to i8*, !dbg !171
  call void @free(i8* noundef %33) #7, !dbg !172
  store i32 0, i32* %1, align 4, !dbg !173
  br label %34, !dbg !173

34:                                               ; preds = %25, %18
  %35 = load i32, i32* %1, align 4, !dbg !174
  ret i32 %35, !dbg !174
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !175 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !179, metadata !DIExpression()), !dbg !180
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !181, metadata !DIExpression()), !dbg !182
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !183, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.declare(metadata i8** %7, metadata !185, metadata !DIExpression()), !dbg !187
  %8 = load i8*, i8** %4, align 8, !dbg !188
  store i8* %8, i8** %7, align 8, !dbg !187
  br label %9, !dbg !189

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !190
  %11 = add i64 %10, -1, !dbg !190
  store i64 %11, i64* %6, align 8, !dbg !190
  %12 = icmp ugt i64 %10, 0, !dbg !191
  br i1 %12, label %13, label %18, !dbg !189

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !192
  %15 = trunc i32 %14 to i8, !dbg !192
  %16 = load i8*, i8** %7, align 8, !dbg !193
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !193
  store i8* %17, i8** %7, align 8, !dbg !193
  store i8 %15, i8* %16, align 1, !dbg !194
  br label %9, !dbg !189, !llvm.loop !195

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !197
  ret i8* %19, !dbg !198
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18, !18}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/322_xmlschemas.c_23065_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "eb2ce6eb7f5b4f7329fcce940e1cb7d5")
!2 = !{!3, !4, !8}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaPSVIIDCKeyPtr", file: !1, line: 10, baseType: !6)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaPSVIIDCKey", file: !1, line: 10, flags: DIFlagFwdDecl)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
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
!19 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 22, type: !20, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!20 = !DISubroutineType(types: !21)
!21 = !{!3, !22}
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !23, line: 46, baseType: !24)
!23 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!24 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!25 = !{}
!26 = !DILocalVariable(name: "size", arg: 1, scope: !19, file: !1, line: 22, type: !22)
!27 = !DILocation(line: 22, column: 24, scope: !19)
!28 = !DILocalVariable(name: "ptr", scope: !19, file: !1, line: 23, type: !3)
!29 = !DILocation(line: 23, column: 11, scope: !19)
!30 = !DILocation(line: 23, column: 24, scope: !19)
!31 = !DILocation(line: 23, column: 17, scope: !19)
!32 = !DILocation(line: 24, column: 9, scope: !33)
!33 = distinct !DILexicalBlock(scope: !19, file: !1, line: 24, column: 9)
!34 = !DILocation(line: 24, column: 13, scope: !33)
!35 = !DILocation(line: 24, column: 9, scope: !19)
!36 = !DILocation(line: 25, column: 9, scope: !37)
!37 = distinct !DILexicalBlock(scope: !33, file: !1, line: 24, column: 22)
!38 = !DILocation(line: 27, column: 12, scope: !19)
!39 = !DILocation(line: 27, column: 5, scope: !19)
!40 = !DILocation(line: 28, column: 1, scope: !19)
!41 = distinct !DISubprogram(name: "xmlSchemaVErrMemory", scope: !1, file: !1, line: 31, type: !42, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!42 = !DISubroutineType(types: !43)
!43 = !{null, !3, !44, !44}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!46 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!47 = !DILocalVariable(name: "ctxt", arg: 1, scope: !41, file: !1, line: 31, type: !3)
!48 = !DILocation(line: 31, column: 32, scope: !41)
!49 = !DILocalVariable(name: "msg", arg: 2, scope: !41, file: !1, line: 31, type: !44)
!50 = !DILocation(line: 31, column: 50, scope: !41)
!51 = !DILocalVariable(name: "extra", arg: 3, scope: !41, file: !1, line: 31, type: !44)
!52 = !DILocation(line: 31, column: 67, scope: !41)
!53 = !DILocation(line: 33, column: 1, scope: !41)
!54 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 36, type: !55, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!55 = !DISubroutineType(types: !56)
!56 = !{!57, !58, !57}
!57 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaIDCMatcher", file: !1, line: 19, baseType: !60)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaIDCMatcher", file: !1, line: 16, size: 128, elements: !61)
!61 = !{!62, !72}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "aidc", scope: !60, file: !1, line: 17, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaIDC", file: !1, line: 15, baseType: !65)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaIDC", file: !1, line: 11, size: 64, elements: !66)
!66 = !{!67}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !65, file: !1, line: 14, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !65, file: !1, line: 12, size: 32, elements: !70)
!70 = !{!71}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "nbFields", scope: !69, file: !1, line: 13, baseType: !57, size: 32)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "keySeqs", scope: !60, file: !1, line: 18, baseType: !8, size: 64, offset: 64)
!73 = !DILocalVariable(name: "matcher", arg: 1, scope: !54, file: !1, line: 36, type: !58)
!74 = !DILocation(line: 36, column: 42, scope: !54)
!75 = !DILocalVariable(name: "pos", arg: 2, scope: !54, file: !1, line: 36, type: !57)
!76 = !DILocation(line: 36, column: 55, scope: !54)
!77 = !DILocalVariable(name: "keySeq", scope: !54, file: !1, line: 37, type: !4)
!78 = !DILocation(line: 37, column: 29, scope: !54)
!79 = !DILocalVariable(name: "key", scope: !54, file: !1, line: 38, type: !5)
!80 = !DILocation(line: 38, column: 28, scope: !54)
!81 = !DILocation(line: 40, column: 9, scope: !82)
!82 = distinct !DILexicalBlock(scope: !54, file: !1, line: 40, column: 9)
!83 = !DILocation(line: 40, column: 17, scope: !82)
!84 = !DILocation(line: 40, column: 25, scope: !82)
!85 = !DILocation(line: 40, column: 28, scope: !82)
!86 = !DILocation(line: 40, column: 37, scope: !82)
!87 = !DILocation(line: 40, column: 42, scope: !82)
!88 = !DILocation(line: 40, column: 50, scope: !82)
!89 = !DILocation(line: 40, column: 53, scope: !82)
!90 = !DILocation(line: 40, column: 62, scope: !82)
!91 = !DILocation(line: 40, column: 68, scope: !82)
!92 = !DILocation(line: 40, column: 72, scope: !82)
!93 = !DILocation(line: 40, column: 9, scope: !54)
!94 = !DILocation(line: 41, column: 9, scope: !95)
!95 = distinct !DILexicalBlock(scope: !82, file: !1, line: 40, column: 81)
!96 = !DILocation(line: 45, column: 9, scope: !54)
!97 = !DILocation(line: 45, column: 18, scope: !54)
!98 = !DILocation(line: 45, column: 24, scope: !54)
!99 = !DILocation(line: 45, column: 29, scope: !54)
!100 = !DILocation(line: 45, column: 38, scope: !54)
!101 = !DILocation(line: 44, column: 41, scope: !54)
!102 = !DILocation(line: 44, column: 14, scope: !54)
!103 = !DILocation(line: 44, column: 12, scope: !54)
!104 = !DILocation(line: 47, column: 9, scope: !105)
!105 = distinct !DILexicalBlock(scope: !54, file: !1, line: 47, column: 9)
!106 = !DILocation(line: 47, column: 16, scope: !105)
!107 = !DILocation(line: 47, column: 9, scope: !54)
!108 = !DILocation(line: 48, column: 9, scope: !109)
!109 = distinct !DILexicalBlock(scope: !105, file: !1, line: 47, column: 25)
!110 = !DILocation(line: 50, column: 9, scope: !109)
!111 = !DILocation(line: 54, column: 12, scope: !54)
!112 = !DILocation(line: 54, column: 5, scope: !54)
!113 = !DILocation(line: 54, column: 23, scope: !54)
!114 = !DILocation(line: 54, column: 32, scope: !54)
!115 = !DILocation(line: 54, column: 38, scope: !54)
!116 = !DILocation(line: 54, column: 43, scope: !54)
!117 = !DILocation(line: 54, column: 52, scope: !54)
!118 = !DILocation(line: 58, column: 5, scope: !54)
!119 = !DILocation(line: 61, column: 5, scope: !54)
!120 = !DILocation(line: 63, column: 29, scope: !54)
!121 = !DILocation(line: 63, column: 5, scope: !54)
!122 = !DILocation(line: 63, column: 14, scope: !54)
!123 = !DILocation(line: 63, column: 22, scope: !54)
!124 = !DILocation(line: 63, column: 27, scope: !54)
!125 = !DILocation(line: 65, column: 5, scope: !54)
!126 = !DILocation(line: 66, column: 1, scope: !54)
!127 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 68, type: !128, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!128 = !DISubroutineType(types: !129)
!129 = !{!57}
!130 = !DILocalVariable(name: "matcher", scope: !127, file: !1, line: 69, type: !59)
!131 = !DILocation(line: 69, column: 25, scope: !127)
!132 = !DILocalVariable(name: "aidc", scope: !127, file: !1, line: 70, type: !64)
!133 = !DILocation(line: 70, column: 18, scope: !127)
!134 = !DILocalVariable(name: "def", scope: !127, file: !1, line: 73, type: !135)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !127, file: !1, line: 71, size: 32, elements: !136)
!136 = !{!137}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nbFields", scope: !135, file: !1, line: 72, baseType: !57, size: 32)
!138 = !DILocation(line: 73, column: 7, scope: !127)
!139 = !DILocalVariable(name: "pos", scope: !127, file: !1, line: 75, type: !57)
!140 = !DILocation(line: 75, column: 9, scope: !127)
!141 = !DILocation(line: 78, column: 29, scope: !127)
!142 = !DILocation(line: 78, column: 24, scope: !127)
!143 = !DILocation(line: 78, column: 5, scope: !127)
!144 = !DILocation(line: 79, column: 24, scope: !127)
!145 = !DILocation(line: 79, column: 5, scope: !127)
!146 = !DILocation(line: 82, column: 16, scope: !127)
!147 = !DILocation(line: 82, column: 10, scope: !127)
!148 = !DILocation(line: 82, column: 14, scope: !127)
!149 = !DILocation(line: 83, column: 13, scope: !127)
!150 = !DILocation(line: 83, column: 18, scope: !127)
!151 = !DILocation(line: 86, column: 50, scope: !127)
!152 = !DILocation(line: 86, column: 23, scope: !127)
!153 = !DILocation(line: 86, column: 13, scope: !127)
!154 = !DILocation(line: 86, column: 21, scope: !127)
!155 = !DILocation(line: 87, column: 17, scope: !156)
!156 = distinct !DILexicalBlock(scope: !127, file: !1, line: 87, column: 9)
!157 = !DILocation(line: 87, column: 25, scope: !156)
!158 = !DILocation(line: 87, column: 9, scope: !127)
!159 = !DILocation(line: 88, column: 9, scope: !160)
!160 = distinct !DILexicalBlock(scope: !156, file: !1, line: 87, column: 34)
!161 = !DILocation(line: 92, column: 17, scope: !127)
!162 = !DILocation(line: 92, column: 21, scope: !127)
!163 = !DILocation(line: 92, column: 26, scope: !127)
!164 = !DILocation(line: 92, column: 29, scope: !127)
!165 = !DILocation(line: 92, column: 33, scope: !127)
!166 = !DILocation(line: 0, scope: !127)
!167 = !DILocation(line: 92, column: 5, scope: !127)
!168 = !DILocation(line: 95, column: 31, scope: !127)
!169 = !DILocation(line: 95, column: 5, scope: !127)
!170 = !DILocation(line: 98, column: 18, scope: !127)
!171 = !DILocation(line: 98, column: 10, scope: !127)
!172 = !DILocation(line: 98, column: 5, scope: !127)
!173 = !DILocation(line: 100, column: 5, scope: !127)
!174 = !DILocation(line: 101, column: 1, scope: !127)
!175 = distinct !DISubprogram(name: "memset", scope: !176, file: !176, line: 12, type: !177, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !25)
!176 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!177 = !DISubroutineType(types: !178)
!178 = !{!3, !3, !57, !22}
!179 = !DILocalVariable(name: "dst", arg: 1, scope: !175, file: !176, line: 12, type: !3)
!180 = !DILocation(line: 12, column: 20, scope: !175)
!181 = !DILocalVariable(name: "s", arg: 2, scope: !175, file: !176, line: 12, type: !57)
!182 = !DILocation(line: 12, column: 29, scope: !175)
!183 = !DILocalVariable(name: "count", arg: 3, scope: !175, file: !176, line: 12, type: !22)
!184 = !DILocation(line: 12, column: 39, scope: !175)
!185 = !DILocalVariable(name: "a", scope: !175, file: !176, line: 13, type: !186)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!187 = !DILocation(line: 13, column: 9, scope: !175)
!188 = !DILocation(line: 13, column: 13, scope: !175)
!189 = !DILocation(line: 14, column: 3, scope: !175)
!190 = !DILocation(line: 14, column: 15, scope: !175)
!191 = !DILocation(line: 14, column: 18, scope: !175)
!192 = !DILocation(line: 15, column: 12, scope: !175)
!193 = !DILocation(line: 15, column: 7, scope: !175)
!194 = !DILocation(line: 15, column: 10, scope: !175)
!195 = distinct !{!195, !189, !192, !196}
!196 = !{!"llvm.loop.mustprogress"}
!197 = !DILocation(line: 16, column: 10, scope: !175)
!198 = !DILocation(line: 16, column: 3, scope: !175)

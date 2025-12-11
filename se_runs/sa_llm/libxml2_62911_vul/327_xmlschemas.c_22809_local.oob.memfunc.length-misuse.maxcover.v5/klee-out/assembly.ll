; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/327_xmlschemas.c_22809_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/327_xmlschemas.c_22809_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.xmlSchemaIDCMatcher = type { %struct.xmlSchemaIDCAttr*, %struct.xmlSchemaPSVIIDCKey** }
%struct.xmlSchemaIDCAttr = type { %struct.xmlSchemaIDCAttrDef* }
%struct.xmlSchemaIDCAttrDef = type { i32 }
%struct.xmlSchemaPSVIIDCKey = type opaque

@.str = private unnamed_addr constant [31 x i8] c"allocating an IDC key-sequence\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"(matcher->aidc->def->nbFields >= 0) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [110 x i8] c"se_runs/sa_llm/libxml2_62911_vul/327_xmlschemas.c_22809_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlSchemaFormatQName = private unnamed_addr constant [53 x i8] c"int xmlSchemaFormatQName(xmlSchemaIDCMatcher *, int)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"nbFields\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"pos\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchemaVErrMemory(i8* noundef %0, i8* noundef %1, i8* noundef %2) #0 !dbg !18 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !25, metadata !DIExpression()), !dbg !26
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !27, metadata !DIExpression()), !dbg !28
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !29, metadata !DIExpression()), !dbg !30
  ret void, !dbg !31
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlSchemaFormatQName(%struct.xmlSchemaIDCMatcher* noundef %0, i32 noundef %1) #0 !dbg !32 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xmlSchemaIDCMatcher*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xmlSchemaPSVIIDCKey**, align 8
  store %struct.xmlSchemaIDCMatcher* %0, %struct.xmlSchemaIDCMatcher** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.xmlSchemaIDCMatcher** %4, metadata !52, metadata !DIExpression()), !dbg !53
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !54, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata %struct.xmlSchemaPSVIIDCKey*** %6, metadata !56, metadata !DIExpression()), !dbg !57
  %7 = load %struct.xmlSchemaIDCMatcher*, %struct.xmlSchemaIDCMatcher** %4, align 8, !dbg !58
  %8 = icmp eq %struct.xmlSchemaIDCMatcher* %7, null, !dbg !60
  br i1 %8, label %21, label %9, !dbg !61

9:                                                ; preds = %2
  %10 = load %struct.xmlSchemaIDCMatcher*, %struct.xmlSchemaIDCMatcher** %4, align 8, !dbg !62
  %11 = getelementptr inbounds %struct.xmlSchemaIDCMatcher, %struct.xmlSchemaIDCMatcher* %10, i32 0, i32 0, !dbg !63
  %12 = load %struct.xmlSchemaIDCAttr*, %struct.xmlSchemaIDCAttr** %11, align 8, !dbg !63
  %13 = icmp eq %struct.xmlSchemaIDCAttr* %12, null, !dbg !64
  br i1 %13, label %21, label %14, !dbg !65

14:                                               ; preds = %9
  %15 = load %struct.xmlSchemaIDCMatcher*, %struct.xmlSchemaIDCMatcher** %4, align 8, !dbg !66
  %16 = getelementptr inbounds %struct.xmlSchemaIDCMatcher, %struct.xmlSchemaIDCMatcher* %15, i32 0, i32 0, !dbg !67
  %17 = load %struct.xmlSchemaIDCAttr*, %struct.xmlSchemaIDCAttr** %16, align 8, !dbg !67
  %18 = getelementptr inbounds %struct.xmlSchemaIDCAttr, %struct.xmlSchemaIDCAttr* %17, i32 0, i32 0, !dbg !68
  %19 = load %struct.xmlSchemaIDCAttrDef*, %struct.xmlSchemaIDCAttrDef** %18, align 8, !dbg !68
  %20 = icmp eq %struct.xmlSchemaIDCAttrDef* %19, null, !dbg !69
  br i1 %20, label %21, label %22, !dbg !70

21:                                               ; preds = %14, %9, %2
  store i32 -1, i32* %3, align 4, !dbg !71
  br label %74, !dbg !71

22:                                               ; preds = %14
  %23 = load %struct.xmlSchemaIDCMatcher*, %struct.xmlSchemaIDCMatcher** %4, align 8, !dbg !73
  %24 = getelementptr inbounds %struct.xmlSchemaIDCMatcher, %struct.xmlSchemaIDCMatcher* %23, i32 0, i32 0, !dbg !74
  %25 = load %struct.xmlSchemaIDCAttr*, %struct.xmlSchemaIDCAttr** %24, align 8, !dbg !74
  %26 = getelementptr inbounds %struct.xmlSchemaIDCAttr, %struct.xmlSchemaIDCAttr* %25, i32 0, i32 0, !dbg !75
  %27 = load %struct.xmlSchemaIDCAttrDef*, %struct.xmlSchemaIDCAttrDef** %26, align 8, !dbg !75
  %28 = getelementptr inbounds %struct.xmlSchemaIDCAttrDef, %struct.xmlSchemaIDCAttrDef* %27, i32 0, i32 0, !dbg !76
  %29 = load i32, i32* %28, align 4, !dbg !76
  %30 = sext i32 %29 to i64, !dbg !73
  %31 = mul i64 %30, 8, !dbg !77
  %32 = call noalias i8* @malloc(i64 noundef %31) #7, !dbg !78
  %33 = bitcast i8* %32 to %struct.xmlSchemaPSVIIDCKey**, !dbg !79
  store %struct.xmlSchemaPSVIIDCKey** %33, %struct.xmlSchemaPSVIIDCKey*** %6, align 8, !dbg !80
  %34 = load %struct.xmlSchemaPSVIIDCKey**, %struct.xmlSchemaPSVIIDCKey*** %6, align 8, !dbg !81
  %35 = icmp eq %struct.xmlSchemaPSVIIDCKey** %34, null, !dbg !83
  br i1 %35, label %36, label %37, !dbg !84

36:                                               ; preds = %22
  call void @xmlSchemaVErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* noundef null), !dbg !85
  store i32 -1, i32* %3, align 4, !dbg !87
  br label %74, !dbg !87

37:                                               ; preds = %22
  %38 = load %struct.xmlSchemaPSVIIDCKey**, %struct.xmlSchemaPSVIIDCKey*** %6, align 8, !dbg !88
  %39 = bitcast %struct.xmlSchemaPSVIIDCKey** %38 to i8*, !dbg !89
  %40 = load %struct.xmlSchemaIDCMatcher*, %struct.xmlSchemaIDCMatcher** %4, align 8, !dbg !90
  %41 = getelementptr inbounds %struct.xmlSchemaIDCMatcher, %struct.xmlSchemaIDCMatcher* %40, i32 0, i32 0, !dbg !91
  %42 = load %struct.xmlSchemaIDCAttr*, %struct.xmlSchemaIDCAttr** %41, align 8, !dbg !91
  %43 = getelementptr inbounds %struct.xmlSchemaIDCAttr, %struct.xmlSchemaIDCAttr* %42, i32 0, i32 0, !dbg !92
  %44 = load %struct.xmlSchemaIDCAttrDef*, %struct.xmlSchemaIDCAttrDef** %43, align 8, !dbg !92
  %45 = getelementptr inbounds %struct.xmlSchemaIDCAttrDef, %struct.xmlSchemaIDCAttrDef* %44, i32 0, i32 0, !dbg !93
  %46 = load i32, i32* %45, align 4, !dbg !93
  %47 = sext i32 %46 to i64, !dbg !90
  %48 = mul i64 %47, 8, !dbg !94
  %49 = call i8* @memset(i8* %39, i32 0, i64 %48), !dbg !89
  %50 = load %struct.xmlSchemaIDCMatcher*, %struct.xmlSchemaIDCMatcher** %4, align 8, !dbg !95
  %51 = getelementptr inbounds %struct.xmlSchemaIDCMatcher, %struct.xmlSchemaIDCMatcher* %50, i32 0, i32 0, !dbg !95
  %52 = load %struct.xmlSchemaIDCAttr*, %struct.xmlSchemaIDCAttr** %51, align 8, !dbg !95
  %53 = getelementptr inbounds %struct.xmlSchemaIDCAttr, %struct.xmlSchemaIDCAttr* %52, i32 0, i32 0, !dbg !95
  %54 = load %struct.xmlSchemaIDCAttrDef*, %struct.xmlSchemaIDCAttrDef** %53, align 8, !dbg !95
  %55 = getelementptr inbounds %struct.xmlSchemaIDCAttrDef, %struct.xmlSchemaIDCAttrDef* %54, i32 0, i32 0, !dbg !95
  %56 = load i32, i32* %55, align 4, !dbg !95
  %57 = icmp sge i32 %56, 0, !dbg !95
  br i1 %57, label %58, label %60, !dbg !95

58:                                               ; preds = %37
  br i1 true, label %59, label %60, !dbg !95

59:                                               ; preds = %58
  br label %62, !dbg !95

60:                                               ; preds = %58, %37
  %61 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([110 x i8], [110 x i8]* @.str.3, i64 0, i64 0), i32 noundef 49, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.xmlSchemaFormatQName, i64 0, i64 0)), !dbg !95
  br label %62, !dbg !95

62:                                               ; preds = %60, %59
  %63 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([110 x i8], [110 x i8]* @.str.3, i64 0, i64 0), i32 noundef 52, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.xmlSchemaFormatQName, i64 0, i64 0)), !dbg !96
  %64 = load %struct.xmlSchemaPSVIIDCKey**, %struct.xmlSchemaPSVIIDCKey*** %6, align 8, !dbg !97
  %65 = bitcast %struct.xmlSchemaPSVIIDCKey** %64 to %struct.xmlSchemaPSVIIDCKey*, !dbg !97
  %66 = load %struct.xmlSchemaIDCMatcher*, %struct.xmlSchemaIDCMatcher** %4, align 8, !dbg !98
  %67 = getelementptr inbounds %struct.xmlSchemaIDCMatcher, %struct.xmlSchemaIDCMatcher* %66, i32 0, i32 1, !dbg !99
  %68 = load %struct.xmlSchemaPSVIIDCKey**, %struct.xmlSchemaPSVIIDCKey*** %67, align 8, !dbg !99
  %69 = load i32, i32* %5, align 4, !dbg !100
  %70 = sext i32 %69 to i64, !dbg !98
  %71 = getelementptr inbounds %struct.xmlSchemaPSVIIDCKey*, %struct.xmlSchemaPSVIIDCKey** %68, i64 %70, !dbg !98
  store %struct.xmlSchemaPSVIIDCKey* %65, %struct.xmlSchemaPSVIIDCKey** %71, align 8, !dbg !101
  %72 = load %struct.xmlSchemaPSVIIDCKey**, %struct.xmlSchemaPSVIIDCKey*** %6, align 8, !dbg !102
  %73 = bitcast %struct.xmlSchemaPSVIIDCKey** %72 to i8*, !dbg !102
  call void @free(i8* noundef %73) #7, !dbg !103
  store i32 0, i32* %3, align 4, !dbg !104
  br label %74, !dbg !104

74:                                               ; preds = %62, %36, %21
  %75 = load i32, i32* %3, align 4, !dbg !105
  ret i32 %75, !dbg !105
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !106 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.xmlSchemaIDCMatcher, align 8
  %3 = alloca %struct.xmlSchemaIDCAttr, align 8
  %4 = alloca %struct.xmlSchemaIDCAttrDef, align 4
  %5 = alloca %struct.xmlSchemaPSVIIDCKey**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.xmlSchemaIDCMatcher* %2, metadata !109, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.declare(metadata %struct.xmlSchemaIDCAttr* %3, metadata !111, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata %struct.xmlSchemaIDCAttrDef* %4, metadata !114, metadata !DIExpression()), !dbg !116
  call void @llvm.dbg.declare(metadata %struct.xmlSchemaPSVIIDCKey*** %5, metadata !117, metadata !DIExpression()), !dbg !118
  call void @llvm.dbg.declare(metadata i32* %6, metadata !119, metadata !DIExpression()), !dbg !120
  %8 = getelementptr inbounds %struct.xmlSchemaIDCAttrDef, %struct.xmlSchemaIDCAttrDef* %4, i32 0, i32 0, !dbg !121
  %9 = bitcast i32* %8 to i8*, !dbg !122
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)), !dbg !123
  %10 = bitcast i32* %6 to i8*, !dbg !124
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)), !dbg !125
  %11 = getelementptr inbounds %struct.xmlSchemaIDCAttrDef, %struct.xmlSchemaIDCAttrDef* %4, i32 0, i32 0, !dbg !126
  %12 = load i32, i32* %11, align 4, !dbg !126
  %13 = icmp sge i32 %12, 0, !dbg !127
  br i1 %13, label %14, label %18, !dbg !128

14:                                               ; preds = %0
  %15 = getelementptr inbounds %struct.xmlSchemaIDCAttrDef, %struct.xmlSchemaIDCAttrDef* %4, i32 0, i32 0, !dbg !129
  %16 = load i32, i32* %15, align 4, !dbg !129
  %17 = icmp slt i32 %16, 1000, !dbg !130
  br label %18

18:                                               ; preds = %14, %0
  %19 = phi i1 [ false, %0 ], [ %17, %14 ], !dbg !131
  %20 = zext i1 %19 to i32, !dbg !128
  %21 = sext i32 %20 to i64, !dbg !132
  call void @klee_assume(i64 noundef %21), !dbg !133
  %22 = load i32, i32* %6, align 4, !dbg !134
  %23 = icmp sge i32 %22, 0, !dbg !135
  br i1 %23, label %24, label %27, !dbg !136

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4, !dbg !137
  %26 = icmp slt i32 %25, 100, !dbg !138
  br label %27

27:                                               ; preds = %24, %18
  %28 = phi i1 [ false, %18 ], [ %26, %24 ], !dbg !131
  %29 = zext i1 %28 to i32, !dbg !136
  %30 = sext i32 %29 to i64, !dbg !134
  call void @klee_assume(i64 noundef %30), !dbg !139
  %31 = getelementptr inbounds %struct.xmlSchemaIDCAttrDef, %struct.xmlSchemaIDCAttrDef* %4, i32 0, i32 0, !dbg !140
  %32 = load i32, i32* %31, align 4, !dbg !140
  %33 = getelementptr inbounds %struct.xmlSchemaIDCAttrDef, %struct.xmlSchemaIDCAttrDef* %4, i32 0, i32 0, !dbg !141
  store i32 %32, i32* %33, align 4, !dbg !142
  %34 = getelementptr inbounds %struct.xmlSchemaIDCAttr, %struct.xmlSchemaIDCAttr* %3, i32 0, i32 0, !dbg !143
  store %struct.xmlSchemaIDCAttrDef* %4, %struct.xmlSchemaIDCAttrDef** %34, align 8, !dbg !144
  %35 = getelementptr inbounds %struct.xmlSchemaIDCMatcher, %struct.xmlSchemaIDCMatcher* %2, i32 0, i32 0, !dbg !145
  store %struct.xmlSchemaIDCAttr* %3, %struct.xmlSchemaIDCAttr** %35, align 8, !dbg !146
  %36 = call noalias i8* @malloc(i64 noundef 800) #7, !dbg !147
  %37 = bitcast i8* %36 to %struct.xmlSchemaPSVIIDCKey**, !dbg !148
  store %struct.xmlSchemaPSVIIDCKey** %37, %struct.xmlSchemaPSVIIDCKey*** %5, align 8, !dbg !149
  %38 = load %struct.xmlSchemaPSVIIDCKey**, %struct.xmlSchemaPSVIIDCKey*** %5, align 8, !dbg !150
  %39 = icmp eq %struct.xmlSchemaPSVIIDCKey** %38, null, !dbg !152
  br i1 %39, label %40, label %41, !dbg !153

40:                                               ; preds = %27
  store i32 -1, i32* %1, align 4, !dbg !154
  br label %49, !dbg !154

41:                                               ; preds = %27
  %42 = load %struct.xmlSchemaPSVIIDCKey**, %struct.xmlSchemaPSVIIDCKey*** %5, align 8, !dbg !156
  %43 = getelementptr inbounds %struct.xmlSchemaIDCMatcher, %struct.xmlSchemaIDCMatcher* %2, i32 0, i32 1, !dbg !157
  store %struct.xmlSchemaPSVIIDCKey** %42, %struct.xmlSchemaPSVIIDCKey*** %43, align 8, !dbg !158
  call void @llvm.dbg.declare(metadata i32* %7, metadata !159, metadata !DIExpression()), !dbg !160
  %44 = load i32, i32* %6, align 4, !dbg !161
  %45 = call i32 @xmlSchemaFormatQName(%struct.xmlSchemaIDCMatcher* noundef %2, i32 noundef %44), !dbg !162
  store i32 %45, i32* %7, align 4, !dbg !160
  %46 = load %struct.xmlSchemaPSVIIDCKey**, %struct.xmlSchemaPSVIIDCKey*** %5, align 8, !dbg !163
  %47 = bitcast %struct.xmlSchemaPSVIIDCKey** %46 to i8*, !dbg !163
  call void @free(i8* noundef %47) #7, !dbg !164
  %48 = load i32, i32* %7, align 4, !dbg !165
  store i32 %48, i32* %1, align 4, !dbg !166
  br label %49, !dbg !166

49:                                               ; preds = %41, %40
  %50 = load i32, i32* %1, align 4, !dbg !167
  ret i32 %50, !dbg !167
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !168 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !175, metadata !DIExpression()), !dbg !176
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !177, metadata !DIExpression()), !dbg !178
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !179, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.declare(metadata i8** %7, metadata !181, metadata !DIExpression()), !dbg !183
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
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17, !17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/327_xmlschemas.c_22809_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "4330a3052a9c2d88aff6c2c2804d1a26")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaPSVIIDCKeyPtr", file: !1, line: 10, baseType: !6)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DICompositeType(tag: DW_TAG_structure_type, name: "xmlSchemaPSVIIDCKey", file: !1, line: 10, flags: DIFlagFwdDecl)
!8 = distinct !DICompileUnit(language: DW_LANG_C99, file: !9, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!9 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!10 = !{i32 7, !"Dwarf Version", i32 5}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{i32 7, !"PIC Level", i32 2}
!14 = !{i32 7, !"PIE Level", i32 2}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"Ubuntu clang version 14.0.6"}
!18 = distinct !DISubprogram(name: "xmlSchemaVErrMemory", scope: !1, file: !1, line: 25, type: !19, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!19 = !DISubroutineType(types: !20)
!20 = !{null, !3, !21, !21}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!24 = !{}
!25 = !DILocalVariable(name: "ctxt", arg: 1, scope: !18, file: !1, line: 25, type: !3)
!26 = !DILocation(line: 25, column: 32, scope: !18)
!27 = !DILocalVariable(name: "msg", arg: 2, scope: !18, file: !1, line: 25, type: !21)
!28 = !DILocation(line: 25, column: 50, scope: !18)
!29 = !DILocalVariable(name: "extra", arg: 3, scope: !18, file: !1, line: 25, type: !21)
!30 = !DILocation(line: 25, column: 67, scope: !18)
!31 = !DILocation(line: 27, column: 1, scope: !18)
!32 = distinct !DISubprogram(name: "xmlSchemaFormatQName", scope: !1, file: !1, line: 30, type: !33, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!33 = !DISubroutineType(types: !34)
!34 = !{!35, !36, !35}
!35 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaIDCMatcher", file: !1, line: 22, baseType: !38)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xmlSchemaIDCMatcher", file: !1, line: 19, size: 128, elements: !39)
!39 = !{!40, !51}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "aidc", scope: !38, file: !1, line: 20, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaIDCAttrPtr", file: !1, line: 18, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xmlSchemaIDCAttr", file: !1, line: 15, size: 64, elements: !44)
!44 = !{!45}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !43, file: !1, line: 16, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaIDCAttrDefPtr", file: !1, line: 14, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xmlSchemaIDCAttrDef", file: !1, line: 11, size: 32, elements: !49)
!49 = !{!50}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "nbFields", scope: !48, file: !1, line: 12, baseType: !35, size: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "keySeqs", scope: !38, file: !1, line: 21, baseType: !4, size: 64, offset: 64)
!52 = !DILocalVariable(name: "matcher", arg: 1, scope: !32, file: !1, line: 30, type: !36)
!53 = !DILocation(line: 30, column: 47, scope: !32)
!54 = !DILocalVariable(name: "pos", arg: 2, scope: !32, file: !1, line: 30, type: !35)
!55 = !DILocation(line: 30, column: 60, scope: !32)
!56 = !DILocalVariable(name: "keySeq", scope: !32, file: !1, line: 31, type: !4)
!57 = !DILocation(line: 31, column: 29, scope: !32)
!58 = !DILocation(line: 33, column: 9, scope: !59)
!59 = distinct !DILexicalBlock(scope: !32, file: !1, line: 33, column: 9)
!60 = !DILocation(line: 33, column: 17, scope: !59)
!61 = !DILocation(line: 33, column: 25, scope: !59)
!62 = !DILocation(line: 33, column: 28, scope: !59)
!63 = !DILocation(line: 33, column: 37, scope: !59)
!64 = !DILocation(line: 33, column: 42, scope: !59)
!65 = !DILocation(line: 33, column: 50, scope: !59)
!66 = !DILocation(line: 33, column: 53, scope: !59)
!67 = !DILocation(line: 33, column: 62, scope: !59)
!68 = !DILocation(line: 33, column: 68, scope: !59)
!69 = !DILocation(line: 33, column: 72, scope: !59)
!70 = !DILocation(line: 33, column: 9, scope: !32)
!71 = !DILocation(line: 34, column: 9, scope: !72)
!72 = distinct !DILexicalBlock(scope: !59, file: !1, line: 33, column: 81)
!73 = !DILocation(line: 38, column: 9, scope: !32)
!74 = !DILocation(line: 38, column: 18, scope: !32)
!75 = !DILocation(line: 38, column: 24, scope: !32)
!76 = !DILocation(line: 38, column: 29, scope: !32)
!77 = !DILocation(line: 38, column: 38, scope: !32)
!78 = !DILocation(line: 37, column: 40, scope: !32)
!79 = !DILocation(line: 37, column: 14, scope: !32)
!80 = !DILocation(line: 37, column: 12, scope: !32)
!81 = !DILocation(line: 40, column: 9, scope: !82)
!82 = distinct !DILexicalBlock(scope: !32, file: !1, line: 40, column: 9)
!83 = !DILocation(line: 40, column: 16, scope: !82)
!84 = !DILocation(line: 40, column: 9, scope: !32)
!85 = !DILocation(line: 41, column: 9, scope: !86)
!86 = distinct !DILexicalBlock(scope: !82, file: !1, line: 40, column: 25)
!87 = !DILocation(line: 42, column: 9, scope: !86)
!88 = !DILocation(line: 46, column: 12, scope: !32)
!89 = !DILocation(line: 46, column: 5, scope: !32)
!90 = !DILocation(line: 46, column: 23, scope: !32)
!91 = !DILocation(line: 46, column: 32, scope: !32)
!92 = !DILocation(line: 46, column: 38, scope: !32)
!93 = !DILocation(line: 46, column: 43, scope: !32)
!94 = !DILocation(line: 46, column: 52, scope: !32)
!95 = !DILocation(line: 49, column: 5, scope: !32)
!96 = !DILocation(line: 52, column: 5, scope: !32)
!97 = !DILocation(line: 54, column: 29, scope: !32)
!98 = !DILocation(line: 54, column: 5, scope: !32)
!99 = !DILocation(line: 54, column: 14, scope: !32)
!100 = !DILocation(line: 54, column: 22, scope: !32)
!101 = !DILocation(line: 54, column: 27, scope: !32)
!102 = !DILocation(line: 57, column: 10, scope: !32)
!103 = !DILocation(line: 57, column: 5, scope: !32)
!104 = !DILocation(line: 58, column: 5, scope: !32)
!105 = !DILocation(line: 59, column: 1, scope: !32)
!106 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 61, type: !107, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!107 = !DISubroutineType(types: !108)
!108 = !{!35}
!109 = !DILocalVariable(name: "matcher", scope: !106, file: !1, line: 62, type: !37)
!110 = !DILocation(line: 62, column: 25, scope: !106)
!111 = !DILocalVariable(name: "attr", scope: !106, file: !1, line: 63, type: !112)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaIDCAttr", file: !1, line: 17, baseType: !43)
!113 = !DILocation(line: 63, column: 22, scope: !106)
!114 = !DILocalVariable(name: "def", scope: !106, file: !1, line: 64, type: !115)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaIDCAttrDef", file: !1, line: 13, baseType: !48)
!116 = !DILocation(line: 64, column: 25, scope: !106)
!117 = !DILocalVariable(name: "keySeqsArray", scope: !106, file: !1, line: 65, type: !4)
!118 = !DILocation(line: 65, column: 29, scope: !106)
!119 = !DILocalVariable(name: "pos", scope: !106, file: !1, line: 66, type: !35)
!120 = !DILocation(line: 66, column: 9, scope: !106)
!121 = !DILocation(line: 69, column: 29, scope: !106)
!122 = !DILocation(line: 69, column: 24, scope: !106)
!123 = !DILocation(line: 69, column: 5, scope: !106)
!124 = !DILocation(line: 70, column: 24, scope: !106)
!125 = !DILocation(line: 70, column: 5, scope: !106)
!126 = !DILocation(line: 73, column: 21, scope: !106)
!127 = !DILocation(line: 73, column: 30, scope: !106)
!128 = !DILocation(line: 73, column: 35, scope: !106)
!129 = !DILocation(line: 73, column: 42, scope: !106)
!130 = !DILocation(line: 73, column: 51, scope: !106)
!131 = !DILocation(line: 0, scope: !106)
!132 = !DILocation(line: 73, column: 17, scope: !106)
!133 = !DILocation(line: 73, column: 5, scope: !106)
!134 = !DILocation(line: 74, column: 17, scope: !106)
!135 = !DILocation(line: 74, column: 21, scope: !106)
!136 = !DILocation(line: 74, column: 26, scope: !106)
!137 = !DILocation(line: 74, column: 29, scope: !106)
!138 = !DILocation(line: 74, column: 33, scope: !106)
!139 = !DILocation(line: 74, column: 5, scope: !106)
!140 = !DILocation(line: 77, column: 24, scope: !106)
!141 = !DILocation(line: 77, column: 9, scope: !106)
!142 = !DILocation(line: 77, column: 18, scope: !106)
!143 = !DILocation(line: 78, column: 10, scope: !106)
!144 = !DILocation(line: 78, column: 14, scope: !106)
!145 = !DILocation(line: 79, column: 13, scope: !106)
!146 = !DILocation(line: 79, column: 18, scope: !106)
!147 = !DILocation(line: 82, column: 46, scope: !106)
!148 = !DILocation(line: 82, column: 20, scope: !106)
!149 = !DILocation(line: 82, column: 18, scope: !106)
!150 = !DILocation(line: 83, column: 9, scope: !151)
!151 = distinct !DILexicalBlock(scope: !106, file: !1, line: 83, column: 9)
!152 = !DILocation(line: 83, column: 22, scope: !151)
!153 = !DILocation(line: 83, column: 9, scope: !106)
!154 = !DILocation(line: 84, column: 9, scope: !155)
!155 = distinct !DILexicalBlock(scope: !151, file: !1, line: 83, column: 31)
!156 = !DILocation(line: 86, column: 23, scope: !106)
!157 = !DILocation(line: 86, column: 13, scope: !106)
!158 = !DILocation(line: 86, column: 21, scope: !106)
!159 = !DILocalVariable(name: "result", scope: !106, file: !1, line: 89, type: !35)
!160 = !DILocation(line: 89, column: 9, scope: !106)
!161 = !DILocation(line: 89, column: 49, scope: !106)
!162 = !DILocation(line: 89, column: 18, scope: !106)
!163 = !DILocation(line: 92, column: 10, scope: !106)
!164 = !DILocation(line: 92, column: 5, scope: !106)
!165 = !DILocation(line: 94, column: 12, scope: !106)
!166 = !DILocation(line: 94, column: 5, scope: !106)
!167 = !DILocation(line: 95, column: 1, scope: !106)
!168 = distinct !DISubprogram(name: "memset", scope: !169, file: !169, line: 12, type: !170, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !24)
!169 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!170 = !DISubroutineType(types: !171)
!171 = !{!3, !3, !35, !172}
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !173, line: 46, baseType: !174)
!173 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!174 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!175 = !DILocalVariable(name: "dst", arg: 1, scope: !168, file: !169, line: 12, type: !3)
!176 = !DILocation(line: 12, column: 20, scope: !168)
!177 = !DILocalVariable(name: "s", arg: 2, scope: !168, file: !169, line: 12, type: !35)
!178 = !DILocation(line: 12, column: 29, scope: !168)
!179 = !DILocalVariable(name: "count", arg: 3, scope: !168, file: !169, line: 12, type: !172)
!180 = !DILocation(line: 12, column: 39, scope: !168)
!181 = !DILocalVariable(name: "a", scope: !168, file: !169, line: 13, type: !182)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!183 = !DILocation(line: 13, column: 9, scope: !168)
!184 = !DILocation(line: 13, column: 13, scope: !168)
!185 = !DILocation(line: 14, column: 3, scope: !168)
!186 = !DILocation(line: 14, column: 15, scope: !168)
!187 = !DILocation(line: 14, column: 18, scope: !168)
!188 = !DILocation(line: 15, column: 12, scope: !168)
!189 = !DILocation(line: 15, column: 7, scope: !168)
!190 = !DILocation(line: 15, column: 10, scope: !168)
!191 = distinct !{!191, !185, !188, !192}
!192 = !{!"llvm.loop.mustprogress"}
!193 = !DILocation(line: 16, column: 10, scope: !168)
!194 = !DILocation(line: 16, column: 3, scope: !168)

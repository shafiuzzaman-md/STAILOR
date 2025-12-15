; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/313_xmlschemas.c_23962_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/313_xmlschemas.c_23962_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.xmlSchemaIDCBinding = type { i32, i32, %struct.xmlSchemaPSVIIDCNode**, i8* }
%struct.xmlSchemaPSVIIDCNode = type opaque

@.str = private unnamed_addr constant [13 x i8] c"bind_nbNodes\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"parBind_alloc_success\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"allocating an array of IDC node-table items\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"(bind.nbNodes <= parBind->sizeNodes) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [110 x i8] c"se_runs/sa_llm/libxml2_55980_vul/313_xmlschemas.c_23962_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchemaVErrMemory(i8* noundef %0, i8* noundef %1, i8* noundef %2) #0 !dbg !14 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !21, metadata !DIExpression()), !dbg !22
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !23, metadata !DIExpression()), !dbg !24
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !25, metadata !DIExpression()), !dbg !26
  ret void, !dbg !27
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchemaIDCFreeBinding(%struct.xmlSchemaIDCBinding* noundef %0) #0 !dbg !28 {
  %2 = alloca %struct.xmlSchemaIDCBinding*, align 8
  store %struct.xmlSchemaIDCBinding* %0, %struct.xmlSchemaIDCBinding** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.xmlSchemaIDCBinding** %2, metadata !45, metadata !DIExpression()), !dbg !46
  %3 = load %struct.xmlSchemaIDCBinding*, %struct.xmlSchemaIDCBinding** %2, align 8, !dbg !47
  %4 = icmp ne %struct.xmlSchemaIDCBinding* %3, null, !dbg !47
  br i1 %4, label %5, label %15, !dbg !49

5:                                                ; preds = %1
  %6 = load %struct.xmlSchemaIDCBinding*, %struct.xmlSchemaIDCBinding** %2, align 8, !dbg !50
  %7 = getelementptr inbounds %struct.xmlSchemaIDCBinding, %struct.xmlSchemaIDCBinding* %6, i32 0, i32 2, !dbg !51
  %8 = load %struct.xmlSchemaPSVIIDCNode**, %struct.xmlSchemaPSVIIDCNode*** %7, align 8, !dbg !51
  %9 = icmp ne %struct.xmlSchemaPSVIIDCNode** %8, null, !dbg !50
  br i1 %9, label %10, label %15, !dbg !52

10:                                               ; preds = %5
  %11 = load %struct.xmlSchemaIDCBinding*, %struct.xmlSchemaIDCBinding** %2, align 8, !dbg !53
  %12 = getelementptr inbounds %struct.xmlSchemaIDCBinding, %struct.xmlSchemaIDCBinding* %11, i32 0, i32 2, !dbg !55
  %13 = load %struct.xmlSchemaPSVIIDCNode**, %struct.xmlSchemaPSVIIDCNode*** %12, align 8, !dbg !55
  %14 = bitcast %struct.xmlSchemaPSVIIDCNode** %13 to i8*, !dbg !53
  call void @free(i8* noundef %14) #7, !dbg !56
  br label %15, !dbg !57

15:                                               ; preds = %10, %5, %1
  %16 = load %struct.xmlSchemaIDCBinding*, %struct.xmlSchemaIDCBinding** %2, align 8, !dbg !58
  %17 = bitcast %struct.xmlSchemaIDCBinding* %16 to i8*, !dbg !58
  call void @free(i8* noundef %17) #7, !dbg !59
  ret void, !dbg !60
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xmlSchemaIDCBinding* @allocate_parBind_with_table(i32 noundef %0) #0 !dbg !61 {
  %2 = alloca %struct.xmlSchemaIDCBinding*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.xmlSchemaIDCBinding*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !64, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.declare(metadata %struct.xmlSchemaIDCBinding** %4, metadata !66, metadata !DIExpression()), !dbg !67
  %5 = call noalias i8* @malloc(i64 noundef 24) #7, !dbg !68
  %6 = bitcast i8* %5 to %struct.xmlSchemaIDCBinding*, !dbg !68
  store %struct.xmlSchemaIDCBinding* %6, %struct.xmlSchemaIDCBinding** %4, align 8, !dbg !67
  %7 = load %struct.xmlSchemaIDCBinding*, %struct.xmlSchemaIDCBinding** %4, align 8, !dbg !69
  %8 = icmp ne %struct.xmlSchemaIDCBinding* %7, null, !dbg !69
  br i1 %8, label %10, label %9, !dbg !71

9:                                                ; preds = %1
  store %struct.xmlSchemaIDCBinding* null, %struct.xmlSchemaIDCBinding** %2, align 8, !dbg !72
  br label %43, !dbg !72

10:                                               ; preds = %1
  %11 = load %struct.xmlSchemaIDCBinding*, %struct.xmlSchemaIDCBinding** %4, align 8, !dbg !73
  %12 = getelementptr inbounds %struct.xmlSchemaIDCBinding, %struct.xmlSchemaIDCBinding* %11, i32 0, i32 0, !dbg !74
  store i32 0, i32* %12, align 8, !dbg !75
  %13 = load %struct.xmlSchemaIDCBinding*, %struct.xmlSchemaIDCBinding** %4, align 8, !dbg !76
  %14 = getelementptr inbounds %struct.xmlSchemaIDCBinding, %struct.xmlSchemaIDCBinding* %13, i32 0, i32 1, !dbg !77
  store i32 0, i32* %14, align 4, !dbg !78
  %15 = load %struct.xmlSchemaIDCBinding*, %struct.xmlSchemaIDCBinding** %4, align 8, !dbg !79
  %16 = getelementptr inbounds %struct.xmlSchemaIDCBinding, %struct.xmlSchemaIDCBinding* %15, i32 0, i32 3, !dbg !80
  store i8* null, i8** %16, align 8, !dbg !81
  %17 = load i32, i32* %3, align 4, !dbg !82
  %18 = icmp sgt i32 %17, 0, !dbg !84
  br i1 %18, label %19, label %38, !dbg !85

19:                                               ; preds = %10
  %20 = load i32, i32* %3, align 4, !dbg !86
  %21 = sext i32 %20 to i64, !dbg !86
  %22 = mul i64 %21, 8, !dbg !88
  %23 = call noalias i8* @malloc(i64 noundef %22) #7, !dbg !89
  %24 = bitcast i8* %23 to %struct.xmlSchemaPSVIIDCNode**, !dbg !89
  %25 = load %struct.xmlSchemaIDCBinding*, %struct.xmlSchemaIDCBinding** %4, align 8, !dbg !90
  %26 = getelementptr inbounds %struct.xmlSchemaIDCBinding, %struct.xmlSchemaIDCBinding* %25, i32 0, i32 2, !dbg !91
  store %struct.xmlSchemaPSVIIDCNode** %24, %struct.xmlSchemaPSVIIDCNode*** %26, align 8, !dbg !92
  %27 = load %struct.xmlSchemaIDCBinding*, %struct.xmlSchemaIDCBinding** %4, align 8, !dbg !93
  %28 = getelementptr inbounds %struct.xmlSchemaIDCBinding, %struct.xmlSchemaIDCBinding* %27, i32 0, i32 2, !dbg !95
  %29 = load %struct.xmlSchemaPSVIIDCNode**, %struct.xmlSchemaPSVIIDCNode*** %28, align 8, !dbg !95
  %30 = icmp ne %struct.xmlSchemaPSVIIDCNode** %29, null, !dbg !93
  br i1 %30, label %34, label %31, !dbg !96

31:                                               ; preds = %19
  %32 = load %struct.xmlSchemaIDCBinding*, %struct.xmlSchemaIDCBinding** %4, align 8, !dbg !97
  %33 = bitcast %struct.xmlSchemaIDCBinding* %32 to i8*, !dbg !97
  call void @free(i8* noundef %33) #7, !dbg !99
  store %struct.xmlSchemaIDCBinding* null, %struct.xmlSchemaIDCBinding** %2, align 8, !dbg !100
  br label %43, !dbg !100

34:                                               ; preds = %19
  %35 = load i32, i32* %3, align 4, !dbg !101
  %36 = load %struct.xmlSchemaIDCBinding*, %struct.xmlSchemaIDCBinding** %4, align 8, !dbg !102
  %37 = getelementptr inbounds %struct.xmlSchemaIDCBinding, %struct.xmlSchemaIDCBinding* %36, i32 0, i32 1, !dbg !103
  store i32 %35, i32* %37, align 4, !dbg !104
  br label %41, !dbg !105

38:                                               ; preds = %10
  %39 = load %struct.xmlSchemaIDCBinding*, %struct.xmlSchemaIDCBinding** %4, align 8, !dbg !106
  %40 = getelementptr inbounds %struct.xmlSchemaIDCBinding, %struct.xmlSchemaIDCBinding* %39, i32 0, i32 2, !dbg !108
  store %struct.xmlSchemaPSVIIDCNode** null, %struct.xmlSchemaPSVIIDCNode*** %40, align 8, !dbg !109
  br label %41

41:                                               ; preds = %38, %34
  %42 = load %struct.xmlSchemaIDCBinding*, %struct.xmlSchemaIDCBinding** %4, align 8, !dbg !110
  store %struct.xmlSchemaIDCBinding* %42, %struct.xmlSchemaIDCBinding** %2, align 8, !dbg !111
  br label %43, !dbg !111

43:                                               ; preds = %41, %31, %9
  %44 = load %struct.xmlSchemaIDCBinding*, %struct.xmlSchemaIDCBinding** %2, align 8, !dbg !112
  ret %struct.xmlSchemaIDCBinding* %44, !dbg !112
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !113 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.xmlSchemaIDCBinding, align 8
  %5 = alloca %struct.xmlSchemaIDCBinding*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !116, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.declare(metadata i32* %3, metadata !118, metadata !DIExpression()), !dbg !119
  %6 = bitcast i32* %2 to i8*, !dbg !120
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0)), !dbg !121
  %7 = bitcast i32* %3 to i8*, !dbg !122
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)), !dbg !123
  %8 = load i32, i32* %2, align 4, !dbg !124
  %9 = icmp sge i32 %8, 0, !dbg !125
  br i1 %9, label %10, label %13, !dbg !126

10:                                               ; preds = %0
  %11 = load i32, i32* %2, align 4, !dbg !127
  %12 = icmp slt i32 %11, 1024, !dbg !128
  br label %13

13:                                               ; preds = %10, %0
  %14 = phi i1 [ false, %0 ], [ %12, %10 ], !dbg !129
  %15 = zext i1 %14 to i32, !dbg !126
  %16 = sext i32 %15 to i64, !dbg !124
  call void @klee_assume(i64 noundef %16), !dbg !130
  %17 = load i32, i32* %3, align 4, !dbg !131
  %18 = icmp eq i32 %17, 0, !dbg !132
  br i1 %18, label %22, label %19, !dbg !133

19:                                               ; preds = %13
  %20 = load i32, i32* %3, align 4, !dbg !134
  %21 = icmp eq i32 %20, 1, !dbg !135
  br label %22, !dbg !133

22:                                               ; preds = %19, %13
  %23 = phi i1 [ true, %13 ], [ %21, %19 ]
  %24 = zext i1 %23 to i32, !dbg !133
  %25 = sext i32 %24 to i64, !dbg !131
  call void @klee_assume(i64 noundef %25), !dbg !136
  call void @llvm.dbg.declare(metadata %struct.xmlSchemaIDCBinding* %4, metadata !137, metadata !DIExpression()), !dbg !138
  %26 = load i32, i32* %2, align 4, !dbg !139
  %27 = getelementptr inbounds %struct.xmlSchemaIDCBinding, %struct.xmlSchemaIDCBinding* %4, i32 0, i32 0, !dbg !140
  store i32 %26, i32* %27, align 8, !dbg !141
  %28 = getelementptr inbounds %struct.xmlSchemaIDCBinding, %struct.xmlSchemaIDCBinding* %4, i32 0, i32 2, !dbg !142
  store %struct.xmlSchemaPSVIIDCNode** null, %struct.xmlSchemaPSVIIDCNode*** %28, align 8, !dbg !143
  call void @llvm.dbg.declare(metadata %struct.xmlSchemaIDCBinding** %5, metadata !144, metadata !DIExpression()), !dbg !145
  store %struct.xmlSchemaIDCBinding* null, %struct.xmlSchemaIDCBinding** %5, align 8, !dbg !145
  %29 = load i32, i32* %3, align 4, !dbg !146
  %30 = icmp ne i32 %29, 0, !dbg !146
  br i1 %30, label %31, label %38, !dbg !148

31:                                               ; preds = %22
  %32 = load i32, i32* %2, align 4, !dbg !149
  %33 = call %struct.xmlSchemaIDCBinding* @allocate_parBind_with_table(i32 noundef %32), !dbg !151
  store %struct.xmlSchemaIDCBinding* %33, %struct.xmlSchemaIDCBinding** %5, align 8, !dbg !152
  %34 = load %struct.xmlSchemaIDCBinding*, %struct.xmlSchemaIDCBinding** %5, align 8, !dbg !153
  %35 = icmp ne %struct.xmlSchemaIDCBinding* %34, null, !dbg !153
  br i1 %35, label %37, label %36, !dbg !155

36:                                               ; preds = %31
  store i32 0, i32* %1, align 4, !dbg !156
  br label %85, !dbg !156

37:                                               ; preds = %31
  br label %40, !dbg !158

38:                                               ; preds = %22
  call void @xmlSchemaVErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* noundef null), !dbg !159
  %39 = load %struct.xmlSchemaIDCBinding*, %struct.xmlSchemaIDCBinding** %5, align 8, !dbg !161
  call void @xmlSchemaIDCFreeBinding(%struct.xmlSchemaIDCBinding* noundef %39), !dbg !162
  br label %84, !dbg !163

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.xmlSchemaIDCBinding, %struct.xmlSchemaIDCBinding* %4, i32 0, i32 0, !dbg !164
  %42 = load i32, i32* %41, align 8, !dbg !164
  %43 = load %struct.xmlSchemaIDCBinding*, %struct.xmlSchemaIDCBinding** %5, align 8, !dbg !165
  %44 = getelementptr inbounds %struct.xmlSchemaIDCBinding, %struct.xmlSchemaIDCBinding* %43, i32 0, i32 1, !dbg !166
  store i32 %42, i32* %44, align 4, !dbg !167
  %45 = getelementptr inbounds %struct.xmlSchemaIDCBinding, %struct.xmlSchemaIDCBinding* %4, i32 0, i32 0, !dbg !168
  %46 = load i32, i32* %45, align 8, !dbg !168
  %47 = load %struct.xmlSchemaIDCBinding*, %struct.xmlSchemaIDCBinding** %5, align 8, !dbg !169
  %48 = getelementptr inbounds %struct.xmlSchemaIDCBinding, %struct.xmlSchemaIDCBinding* %47, i32 0, i32 0, !dbg !170
  store i32 %46, i32* %48, align 8, !dbg !171
  %49 = getelementptr inbounds %struct.xmlSchemaIDCBinding, %struct.xmlSchemaIDCBinding* %4, i32 0, i32 0, !dbg !172
  %50 = load i32, i32* %49, align 8, !dbg !172
  %51 = load %struct.xmlSchemaIDCBinding*, %struct.xmlSchemaIDCBinding** %5, align 8, !dbg !172
  %52 = getelementptr inbounds %struct.xmlSchemaIDCBinding, %struct.xmlSchemaIDCBinding* %51, i32 0, i32 1, !dbg !172
  %53 = load i32, i32* %52, align 4, !dbg !172
  %54 = icmp sle i32 %50, %53, !dbg !172
  br i1 %54, label %55, label %57, !dbg !172

55:                                               ; preds = %40
  br i1 true, label %56, label %57, !dbg !172

56:                                               ; preds = %55
  br label %59, !dbg !172

57:                                               ; preds = %55, %40
  %58 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([110 x i8], [110 x i8]* @.str.5, i64 0, i64 0), i32 noundef 96, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !172
  br label %59, !dbg !172

59:                                               ; preds = %57, %56
  %60 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([110 x i8], [110 x i8]* @.str.5, i64 0, i64 0), i32 noundef 99, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !173
  %61 = load %struct.xmlSchemaIDCBinding*, %struct.xmlSchemaIDCBinding** %5, align 8, !dbg !174
  %62 = getelementptr inbounds %struct.xmlSchemaIDCBinding, %struct.xmlSchemaIDCBinding* %61, i32 0, i32 2, !dbg !176
  %63 = load %struct.xmlSchemaPSVIIDCNode**, %struct.xmlSchemaPSVIIDCNode*** %62, align 8, !dbg !176
  %64 = icmp ne %struct.xmlSchemaPSVIIDCNode** %63, null, !dbg !174
  br i1 %64, label %65, label %82, !dbg !177

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.xmlSchemaIDCBinding, %struct.xmlSchemaIDCBinding* %4, i32 0, i32 2, !dbg !178
  %67 = load %struct.xmlSchemaPSVIIDCNode**, %struct.xmlSchemaPSVIIDCNode*** %66, align 8, !dbg !178
  %68 = icmp ne %struct.xmlSchemaPSVIIDCNode** %67, null, !dbg !179
  br i1 %68, label %69, label %82, !dbg !180

69:                                               ; preds = %65
  %70 = load %struct.xmlSchemaIDCBinding*, %struct.xmlSchemaIDCBinding** %5, align 8, !dbg !181
  %71 = getelementptr inbounds %struct.xmlSchemaIDCBinding, %struct.xmlSchemaIDCBinding* %70, i32 0, i32 2, !dbg !183
  %72 = load %struct.xmlSchemaPSVIIDCNode**, %struct.xmlSchemaPSVIIDCNode*** %71, align 8, !dbg !183
  %73 = bitcast %struct.xmlSchemaPSVIIDCNode** %72 to i8*, !dbg !184
  %74 = getelementptr inbounds %struct.xmlSchemaIDCBinding, %struct.xmlSchemaIDCBinding* %4, i32 0, i32 2, !dbg !185
  %75 = load %struct.xmlSchemaPSVIIDCNode**, %struct.xmlSchemaPSVIIDCNode*** %74, align 8, !dbg !185
  %76 = bitcast %struct.xmlSchemaPSVIIDCNode** %75 to i8*, !dbg !184
  %77 = getelementptr inbounds %struct.xmlSchemaIDCBinding, %struct.xmlSchemaIDCBinding* %4, i32 0, i32 0, !dbg !186
  %78 = load i32, i32* %77, align 8, !dbg !186
  %79 = sext i32 %78 to i64, !dbg !187
  %80 = mul i64 %79, 8, !dbg !188
  %81 = call i8* @memcpy(i8* %73, i8* %76, i64 %80), !dbg !184
  br label %82, !dbg !189

82:                                               ; preds = %69, %65, %59
  %83 = load %struct.xmlSchemaIDCBinding*, %struct.xmlSchemaIDCBinding** %5, align 8, !dbg !190
  call void @xmlSchemaIDCFreeBinding(%struct.xmlSchemaIDCBinding* noundef %83), !dbg !191
  store i32 0, i32* %1, align 4, !dbg !192
  br label %85, !dbg !192

84:                                               ; preds = %38
  call void @llvm.dbg.label(metadata !193), !dbg !194
  store i32 0, i32* %1, align 4, !dbg !195
  br label %85, !dbg !195

85:                                               ; preds = %84, %82, %36
  %86 = load i32, i32* %1, align 4, !dbg !196
  ret i32 %86, !dbg !196
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !197 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !206, metadata !DIExpression()), !dbg !207
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !208, metadata !DIExpression()), !dbg !209
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !210, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.declare(metadata i8** %7, metadata !212, metadata !DIExpression()), !dbg !214
  %9 = load i8*, i8** %4, align 8, !dbg !215
  store i8* %9, i8** %7, align 8, !dbg !214
  call void @llvm.dbg.declare(metadata i8** %8, metadata !216, metadata !DIExpression()), !dbg !217
  %10 = load i8*, i8** %5, align 8, !dbg !218
  store i8* %10, i8** %8, align 8, !dbg !217
  br label %11, !dbg !219

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !220
  %13 = add i64 %12, -1, !dbg !220
  store i64 %13, i64* %6, align 8, !dbg !220
  %14 = icmp ugt i64 %12, 0, !dbg !221
  br i1 %14, label %15, label %21, !dbg !219

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !222
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !222
  store i8* %17, i8** %8, align 8, !dbg !222
  %18 = load i8, i8* %16, align 1, !dbg !223
  %19 = load i8*, i8** %7, align 8, !dbg !224
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !224
  store i8* %20, i8** %7, align 8, !dbg !224
  store i8 %18, i8* %19, align 1, !dbg !225
  br label %11, !dbg !219, !llvm.loop !226

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !228
  ret i8* %22, !dbg !229
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13, !13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/313_xmlschemas.c_23962_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "2d575644f03e47b585f5bf319bdef8ba")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = distinct !DICompileUnit(language: DW_LANG_C99, file: !5, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!5 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 7, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"Ubuntu clang version 14.0.6"}
!14 = distinct !DISubprogram(name: "xmlSchemaVErrMemory", scope: !1, file: !1, line: 21, type: !15, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !3, !17, !3}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !{}
!21 = !DILocalVariable(name: "a", arg: 1, scope: !14, file: !1, line: 21, type: !3)
!22 = !DILocation(line: 21, column: 32, scope: !14)
!23 = !DILocalVariable(name: "b", arg: 2, scope: !14, file: !1, line: 21, type: !17)
!24 = !DILocation(line: 21, column: 47, scope: !14)
!25 = !DILocalVariable(name: "c", arg: 3, scope: !14, file: !1, line: 21, type: !3)
!26 = !DILocation(line: 21, column: 56, scope: !14)
!27 = !DILocation(line: 23, column: 1, scope: !14)
!28 = distinct !DISubprogram(name: "xmlSchemaIDCFreeBinding", scope: !1, file: !1, line: 25, type: !29, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!29 = !DISubroutineType(types: !30)
!30 = !{null, !31}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaIDCBinding", file: !1, line: 18, baseType: !33)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xmlSchemaIDCBinding", file: !1, line: 13, size: 192, elements: !34)
!34 = !{!35, !37, !38, !44}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "nbNodes", scope: !33, file: !1, line: 14, baseType: !36, size: 32)
!36 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "sizeNodes", scope: !33, file: !1, line: 15, baseType: !36, size: 32, offset: 32)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTable", scope: !33, file: !1, line: 16, baseType: !39, size: 64, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaPSVIIDCNodePtr", file: !1, line: 11, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaPSVIIDCNode", file: !1, line: 10, baseType: !43)
!43 = !DICompositeType(tag: DW_TAG_structure_type, name: "xmlSchemaPSVIIDCNode", file: !1, line: 10, flags: DIFlagFwdDecl)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "dupls", scope: !33, file: !1, line: 17, baseType: !3, size: 64, offset: 128)
!45 = !DILocalVariable(name: "bind", arg: 1, scope: !28, file: !1, line: 25, type: !31)
!46 = !DILocation(line: 25, column: 51, scope: !28)
!47 = !DILocation(line: 26, column: 9, scope: !48)
!48 = distinct !DILexicalBlock(scope: !28, file: !1, line: 26, column: 9)
!49 = !DILocation(line: 26, column: 14, scope: !48)
!50 = !DILocation(line: 26, column: 17, scope: !48)
!51 = !DILocation(line: 26, column: 23, scope: !48)
!52 = !DILocation(line: 26, column: 9, scope: !28)
!53 = !DILocation(line: 27, column: 14, scope: !54)
!54 = distinct !DILexicalBlock(scope: !48, file: !1, line: 26, column: 34)
!55 = !DILocation(line: 27, column: 20, scope: !54)
!56 = !DILocation(line: 27, column: 9, scope: !54)
!57 = !DILocation(line: 28, column: 5, scope: !54)
!58 = !DILocation(line: 29, column: 10, scope: !28)
!59 = !DILocation(line: 29, column: 5, scope: !28)
!60 = !DILocation(line: 30, column: 1, scope: !28)
!61 = distinct !DISubprogram(name: "allocate_parBind_with_table", scope: !1, file: !1, line: 33, type: !62, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!62 = !DISubroutineType(types: !63)
!63 = !{!31, !36}
!64 = !DILocalVariable(name: "nbNodes", arg: 1, scope: !61, file: !1, line: 33, type: !36)
!65 = !DILocation(line: 33, column: 54, scope: !61)
!66 = !DILocalVariable(name: "parBind", scope: !61, file: !1, line: 34, type: !31)
!67 = !DILocation(line: 34, column: 26, scope: !61)
!68 = !DILocation(line: 34, column: 36, scope: !61)
!69 = !DILocation(line: 35, column: 10, scope: !70)
!70 = distinct !DILexicalBlock(scope: !61, file: !1, line: 35, column: 9)
!71 = !DILocation(line: 35, column: 9, scope: !61)
!72 = !DILocation(line: 35, column: 19, scope: !70)
!73 = !DILocation(line: 37, column: 5, scope: !61)
!74 = !DILocation(line: 37, column: 14, scope: !61)
!75 = !DILocation(line: 37, column: 22, scope: !61)
!76 = !DILocation(line: 38, column: 5, scope: !61)
!77 = !DILocation(line: 38, column: 14, scope: !61)
!78 = !DILocation(line: 38, column: 24, scope: !61)
!79 = !DILocation(line: 39, column: 5, scope: !61)
!80 = !DILocation(line: 39, column: 14, scope: !61)
!81 = !DILocation(line: 39, column: 20, scope: !61)
!82 = !DILocation(line: 41, column: 9, scope: !83)
!83 = distinct !DILexicalBlock(scope: !61, file: !1, line: 41, column: 9)
!84 = !DILocation(line: 41, column: 17, scope: !83)
!85 = !DILocation(line: 41, column: 9, scope: !61)
!86 = !DILocation(line: 42, column: 37, scope: !87)
!87 = distinct !DILexicalBlock(scope: !83, file: !1, line: 41, column: 22)
!88 = !DILocation(line: 42, column: 45, scope: !87)
!89 = !DILocation(line: 42, column: 30, scope: !87)
!90 = !DILocation(line: 42, column: 9, scope: !87)
!91 = !DILocation(line: 42, column: 18, scope: !87)
!92 = !DILocation(line: 42, column: 28, scope: !87)
!93 = !DILocation(line: 43, column: 14, scope: !94)
!94 = distinct !DILexicalBlock(scope: !87, file: !1, line: 43, column: 13)
!95 = !DILocation(line: 43, column: 23, scope: !94)
!96 = !DILocation(line: 43, column: 13, scope: !87)
!97 = !DILocation(line: 44, column: 18, scope: !98)
!98 = distinct !DILexicalBlock(scope: !94, file: !1, line: 43, column: 34)
!99 = !DILocation(line: 44, column: 13, scope: !98)
!100 = !DILocation(line: 45, column: 13, scope: !98)
!101 = !DILocation(line: 47, column: 30, scope: !87)
!102 = !DILocation(line: 47, column: 9, scope: !87)
!103 = !DILocation(line: 47, column: 18, scope: !87)
!104 = !DILocation(line: 47, column: 28, scope: !87)
!105 = !DILocation(line: 48, column: 5, scope: !87)
!106 = !DILocation(line: 49, column: 9, scope: !107)
!107 = distinct !DILexicalBlock(scope: !83, file: !1, line: 48, column: 12)
!108 = !DILocation(line: 49, column: 18, scope: !107)
!109 = !DILocation(line: 49, column: 28, scope: !107)
!110 = !DILocation(line: 52, column: 12, scope: !61)
!111 = !DILocation(line: 52, column: 5, scope: !61)
!112 = !DILocation(line: 53, column: 1, scope: !61)
!113 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 56, type: !114, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!114 = !DISubroutineType(types: !115)
!115 = !{!36}
!116 = !DILocalVariable(name: "bind_nbNodes", scope: !113, file: !1, line: 58, type: !36)
!117 = !DILocation(line: 58, column: 9, scope: !113)
!118 = !DILocalVariable(name: "parBind_alloc_success", scope: !113, file: !1, line: 59, type: !36)
!119 = !DILocation(line: 59, column: 9, scope: !113)
!120 = !DILocation(line: 62, column: 24, scope: !113)
!121 = !DILocation(line: 62, column: 5, scope: !113)
!122 = !DILocation(line: 63, column: 24, scope: !113)
!123 = !DILocation(line: 63, column: 5, scope: !113)
!124 = !DILocation(line: 66, column: 17, scope: !113)
!125 = !DILocation(line: 66, column: 30, scope: !113)
!126 = !DILocation(line: 66, column: 35, scope: !113)
!127 = !DILocation(line: 66, column: 38, scope: !113)
!128 = !DILocation(line: 66, column: 51, scope: !113)
!129 = !DILocation(line: 0, scope: !113)
!130 = !DILocation(line: 66, column: 5, scope: !113)
!131 = !DILocation(line: 67, column: 17, scope: !113)
!132 = !DILocation(line: 67, column: 39, scope: !113)
!133 = !DILocation(line: 67, column: 44, scope: !113)
!134 = !DILocation(line: 67, column: 47, scope: !113)
!135 = !DILocation(line: 67, column: 69, scope: !113)
!136 = !DILocation(line: 67, column: 5, scope: !113)
!137 = !DILocalVariable(name: "bind", scope: !113, file: !1, line: 70, type: !32)
!138 = !DILocation(line: 70, column: 25, scope: !113)
!139 = !DILocation(line: 71, column: 20, scope: !113)
!140 = !DILocation(line: 71, column: 10, scope: !113)
!141 = !DILocation(line: 71, column: 18, scope: !113)
!142 = !DILocation(line: 72, column: 10, scope: !113)
!143 = !DILocation(line: 72, column: 20, scope: !113)
!144 = !DILocalVariable(name: "parBind", scope: !113, file: !1, line: 75, type: !31)
!145 = !DILocation(line: 75, column: 26, scope: !113)
!146 = !DILocation(line: 76, column: 9, scope: !147)
!147 = distinct !DILexicalBlock(scope: !113, file: !1, line: 76, column: 9)
!148 = !DILocation(line: 76, column: 9, scope: !113)
!149 = !DILocation(line: 77, column: 47, scope: !150)
!150 = distinct !DILexicalBlock(scope: !147, file: !1, line: 76, column: 32)
!151 = !DILocation(line: 77, column: 19, scope: !150)
!152 = !DILocation(line: 77, column: 17, scope: !150)
!153 = !DILocation(line: 78, column: 14, scope: !154)
!154 = distinct !DILexicalBlock(scope: !150, file: !1, line: 78, column: 13)
!155 = !DILocation(line: 78, column: 13, scope: !150)
!156 = !DILocation(line: 80, column: 13, scope: !157)
!157 = distinct !DILexicalBlock(scope: !154, file: !1, line: 78, column: 23)
!158 = !DILocation(line: 82, column: 5, scope: !150)
!159 = !DILocation(line: 84, column: 9, scope: !160)
!160 = distinct !DILexicalBlock(scope: !147, file: !1, line: 82, column: 12)
!161 = !DILocation(line: 86, column: 33, scope: !160)
!162 = !DILocation(line: 86, column: 9, scope: !160)
!163 = !DILocation(line: 87, column: 9, scope: !160)
!164 = !DILocation(line: 91, column: 31, scope: !113)
!165 = !DILocation(line: 91, column: 5, scope: !113)
!166 = !DILocation(line: 91, column: 14, scope: !113)
!167 = !DILocation(line: 91, column: 24, scope: !113)
!168 = !DILocation(line: 92, column: 29, scope: !113)
!169 = !DILocation(line: 92, column: 5, scope: !113)
!170 = !DILocation(line: 92, column: 14, scope: !113)
!171 = !DILocation(line: 92, column: 22, scope: !113)
!172 = !DILocation(line: 96, column: 5, scope: !113)
!173 = !DILocation(line: 99, column: 5, scope: !113)
!174 = !DILocation(line: 102, column: 9, scope: !175)
!175 = distinct !DILexicalBlock(scope: !113, file: !1, line: 102, column: 9)
!176 = !DILocation(line: 102, column: 18, scope: !175)
!177 = !DILocation(line: 102, column: 28, scope: !175)
!178 = !DILocation(line: 102, column: 36, scope: !175)
!179 = !DILocation(line: 102, column: 31, scope: !175)
!180 = !DILocation(line: 102, column: 9, scope: !113)
!181 = !DILocation(line: 103, column: 16, scope: !182)
!182 = distinct !DILexicalBlock(scope: !175, file: !1, line: 102, column: 47)
!183 = !DILocation(line: 103, column: 25, scope: !182)
!184 = !DILocation(line: 103, column: 9, scope: !182)
!185 = !DILocation(line: 103, column: 41, scope: !182)
!186 = !DILocation(line: 104, column: 21, scope: !182)
!187 = !DILocation(line: 104, column: 16, scope: !182)
!188 = !DILocation(line: 104, column: 29, scope: !182)
!189 = !DILocation(line: 105, column: 5, scope: !182)
!190 = !DILocation(line: 108, column: 29, scope: !113)
!191 = !DILocation(line: 108, column: 5, scope: !113)
!192 = !DILocation(line: 109, column: 5, scope: !113)
!193 = !DILabel(scope: !113, name: "internal_error", file: !1, line: 111)
!194 = !DILocation(line: 111, column: 1, scope: !113)
!195 = !DILocation(line: 113, column: 5, scope: !113)
!196 = !DILocation(line: 114, column: 1, scope: !113)
!197 = distinct !DISubprogram(name: "memcpy", scope: !198, file: !198, line: 12, type: !199, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !20)
!198 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!199 = !DISubroutineType(types: !200)
!200 = !{!3, !3, !201, !203}
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !204, line: 46, baseType: !205)
!204 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!205 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!206 = !DILocalVariable(name: "destaddr", arg: 1, scope: !197, file: !198, line: 12, type: !3)
!207 = !DILocation(line: 12, column: 20, scope: !197)
!208 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !197, file: !198, line: 12, type: !201)
!209 = !DILocation(line: 12, column: 42, scope: !197)
!210 = !DILocalVariable(name: "len", arg: 3, scope: !197, file: !198, line: 12, type: !203)
!211 = !DILocation(line: 12, column: 58, scope: !197)
!212 = !DILocalVariable(name: "dest", scope: !197, file: !198, line: 13, type: !213)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!214 = !DILocation(line: 13, column: 9, scope: !197)
!215 = !DILocation(line: 13, column: 16, scope: !197)
!216 = !DILocalVariable(name: "src", scope: !197, file: !198, line: 14, type: !17)
!217 = !DILocation(line: 14, column: 15, scope: !197)
!218 = !DILocation(line: 14, column: 21, scope: !197)
!219 = !DILocation(line: 16, column: 3, scope: !197)
!220 = !DILocation(line: 16, column: 13, scope: !197)
!221 = !DILocation(line: 16, column: 16, scope: !197)
!222 = !DILocation(line: 17, column: 19, scope: !197)
!223 = !DILocation(line: 17, column: 15, scope: !197)
!224 = !DILocation(line: 17, column: 10, scope: !197)
!225 = !DILocation(line: 17, column: 13, scope: !197)
!226 = distinct !{!226, !219, !222, !227}
!227 = !{!"llvm.loop.mustprogress"}
!228 = !DILocation(line: 18, column: 10, scope: !197)
!229 = !DILocation(line: 18, column: 3, scope: !197)

; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/317_xmlschemas.c_23689_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/317_xmlschemas.c_23689_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaIDCBinding = type { i32, %struct._xmlSchemaPSVIIDCNode**, i32, i32 }
%struct._xmlSchemaPSVIIDCNode = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"(bind->nbNodes <= parBind->sizeNodes) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [110 x i8] c"se_runs/sa_llm/libxml2_62911_vul/317_xmlschemas.c_23689_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlSchemaParseRedefine = private unnamed_addr constant [51 x i8] c"void xmlSchemaParseRedefine(xmlSchemaIDCBinding *)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"bind.nbNodes\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"bind.nodeTable\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchemaIDCFreeBinding(%struct._xmlSchemaIDCBinding* noundef %0) #0 !dbg !29 {
  %2 = alloca %struct._xmlSchemaIDCBinding*, align 8
  store %struct._xmlSchemaIDCBinding* %0, %struct._xmlSchemaIDCBinding** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaIDCBinding** %2, metadata !33, metadata !DIExpression()), !dbg !34
  %3 = load %struct._xmlSchemaIDCBinding*, %struct._xmlSchemaIDCBinding** %2, align 8, !dbg !35
  %4 = icmp ne %struct._xmlSchemaIDCBinding* %3, null, !dbg !35
  br i1 %4, label %5, label %15, !dbg !37

5:                                                ; preds = %1
  %6 = load %struct._xmlSchemaIDCBinding*, %struct._xmlSchemaIDCBinding** %2, align 8, !dbg !38
  %7 = getelementptr inbounds %struct._xmlSchemaIDCBinding, %struct._xmlSchemaIDCBinding* %6, i32 0, i32 1, !dbg !39
  %8 = load %struct._xmlSchemaPSVIIDCNode**, %struct._xmlSchemaPSVIIDCNode*** %7, align 8, !dbg !39
  %9 = icmp ne %struct._xmlSchemaPSVIIDCNode** %8, null, !dbg !38
  br i1 %9, label %10, label %15, !dbg !40

10:                                               ; preds = %5
  %11 = load %struct._xmlSchemaIDCBinding*, %struct._xmlSchemaIDCBinding** %2, align 8, !dbg !41
  %12 = getelementptr inbounds %struct._xmlSchemaIDCBinding, %struct._xmlSchemaIDCBinding* %11, i32 0, i32 1, !dbg !43
  %13 = load %struct._xmlSchemaPSVIIDCNode**, %struct._xmlSchemaPSVIIDCNode*** %12, align 8, !dbg !43
  %14 = bitcast %struct._xmlSchemaPSVIIDCNode** %13 to i8*, !dbg !41
  call void @free(i8* noundef %14) #7, !dbg !44
  br label %15, !dbg !45

15:                                               ; preds = %10, %5, %1
  ret void, !dbg !46
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchemaParseRedefine(%struct._xmlSchemaIDCBinding* noundef %0) #0 !dbg !47 {
  %2 = alloca %struct._xmlSchemaIDCBinding*, align 8
  %3 = alloca %struct._xmlSchemaIDCBinding*, align 8
  store %struct._xmlSchemaIDCBinding* %0, %struct._xmlSchemaIDCBinding** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaIDCBinding** %2, metadata !48, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaIDCBinding** %3, metadata !50, metadata !DIExpression()), !dbg !51
  %4 = load %struct._xmlSchemaIDCBinding*, %struct._xmlSchemaIDCBinding** %2, align 8, !dbg !52
  %5 = icmp ne %struct._xmlSchemaIDCBinding* %4, null, !dbg !52
  br i1 %5, label %6, label %87, !dbg !54

6:                                                ; preds = %1
  %7 = call noalias i8* @malloc(i64 noundef 24) #7, !dbg !55
  %8 = bitcast i8* %7 to %struct._xmlSchemaIDCBinding*, !dbg !57
  store %struct._xmlSchemaIDCBinding* %8, %struct._xmlSchemaIDCBinding** %3, align 8, !dbg !58
  %9 = load %struct._xmlSchemaIDCBinding*, %struct._xmlSchemaIDCBinding** %3, align 8, !dbg !59
  %10 = icmp ne %struct._xmlSchemaIDCBinding* %9, null, !dbg !59
  br i1 %10, label %12, label %11, !dbg !61

11:                                               ; preds = %6
  br label %88, !dbg !62

12:                                               ; preds = %6
  %13 = load %struct._xmlSchemaIDCBinding*, %struct._xmlSchemaIDCBinding** %3, align 8, !dbg !64
  %14 = getelementptr inbounds %struct._xmlSchemaIDCBinding, %struct._xmlSchemaIDCBinding* %13, i32 0, i32 1, !dbg !65
  store %struct._xmlSchemaPSVIIDCNode** null, %struct._xmlSchemaPSVIIDCNode*** %14, align 8, !dbg !66
  %15 = load %struct._xmlSchemaIDCBinding*, %struct._xmlSchemaIDCBinding** %3, align 8, !dbg !67
  %16 = getelementptr inbounds %struct._xmlSchemaIDCBinding, %struct._xmlSchemaIDCBinding* %15, i32 0, i32 0, !dbg !68
  store i32 0, i32* %16, align 8, !dbg !69
  %17 = load %struct._xmlSchemaIDCBinding*, %struct._xmlSchemaIDCBinding** %3, align 8, !dbg !70
  %18 = getelementptr inbounds %struct._xmlSchemaIDCBinding, %struct._xmlSchemaIDCBinding* %17, i32 0, i32 2, !dbg !71
  store i32 0, i32* %18, align 8, !dbg !72
  %19 = load %struct._xmlSchemaIDCBinding*, %struct._xmlSchemaIDCBinding** %3, align 8, !dbg !73
  %20 = getelementptr inbounds %struct._xmlSchemaIDCBinding, %struct._xmlSchemaIDCBinding* %19, i32 0, i32 3, !dbg !74
  store i32 0, i32* %20, align 4, !dbg !75
  %21 = load %struct._xmlSchemaIDCBinding*, %struct._xmlSchemaIDCBinding** %2, align 8, !dbg !76
  %22 = getelementptr inbounds %struct._xmlSchemaIDCBinding, %struct._xmlSchemaIDCBinding* %21, i32 0, i32 0, !dbg !78
  %23 = load i32, i32* %22, align 8, !dbg !78
  %24 = icmp sgt i32 %23, 0, !dbg !79
  br i1 %24, label %25, label %79, !dbg !80

25:                                               ; preds = %12
  %26 = load %struct._xmlSchemaIDCBinding*, %struct._xmlSchemaIDCBinding** %2, align 8, !dbg !81
  %27 = getelementptr inbounds %struct._xmlSchemaIDCBinding, %struct._xmlSchemaIDCBinding* %26, i32 0, i32 0, !dbg !83
  %28 = load i32, i32* %27, align 8, !dbg !83
  %29 = sext i32 %28 to i64, !dbg !81
  %30 = mul i64 %29, 8, !dbg !84
  %31 = call noalias i8* @malloc(i64 noundef %30) #7, !dbg !85
  %32 = bitcast i8* %31 to %struct._xmlSchemaPSVIIDCNode**, !dbg !86
  %33 = load %struct._xmlSchemaIDCBinding*, %struct._xmlSchemaIDCBinding** %3, align 8, !dbg !87
  %34 = getelementptr inbounds %struct._xmlSchemaIDCBinding, %struct._xmlSchemaIDCBinding* %33, i32 0, i32 1, !dbg !88
  store %struct._xmlSchemaPSVIIDCNode** %32, %struct._xmlSchemaPSVIIDCNode*** %34, align 8, !dbg !89
  %35 = load %struct._xmlSchemaIDCBinding*, %struct._xmlSchemaIDCBinding** %3, align 8, !dbg !90
  %36 = getelementptr inbounds %struct._xmlSchemaIDCBinding, %struct._xmlSchemaIDCBinding* %35, i32 0, i32 1, !dbg !92
  %37 = load %struct._xmlSchemaPSVIIDCNode**, %struct._xmlSchemaPSVIIDCNode*** %36, align 8, !dbg !92
  %38 = icmp ne %struct._xmlSchemaPSVIIDCNode** %37, null, !dbg !90
  br i1 %38, label %41, label %39, !dbg !93

39:                                               ; preds = %25
  %40 = load %struct._xmlSchemaIDCBinding*, %struct._xmlSchemaIDCBinding** %3, align 8, !dbg !94
  call void @xmlSchemaIDCFreeBinding(%struct._xmlSchemaIDCBinding* noundef %40), !dbg !96
  br label %88, !dbg !97

41:                                               ; preds = %25
  %42 = load %struct._xmlSchemaIDCBinding*, %struct._xmlSchemaIDCBinding** %2, align 8, !dbg !98
  %43 = getelementptr inbounds %struct._xmlSchemaIDCBinding, %struct._xmlSchemaIDCBinding* %42, i32 0, i32 0, !dbg !98
  %44 = load i32, i32* %43, align 8, !dbg !98
  %45 = load %struct._xmlSchemaIDCBinding*, %struct._xmlSchemaIDCBinding** %3, align 8, !dbg !98
  %46 = getelementptr inbounds %struct._xmlSchemaIDCBinding, %struct._xmlSchemaIDCBinding* %45, i32 0, i32 2, !dbg !98
  %47 = load i32, i32* %46, align 8, !dbg !98
  %48 = icmp sle i32 %44, %47, !dbg !98
  br i1 %48, label %49, label %51, !dbg !98

49:                                               ; preds = %41
  br i1 true, label %50, label %51, !dbg !98

50:                                               ; preds = %49
  br label %53, !dbg !98

51:                                               ; preds = %49, %41
  %52 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([110 x i8], [110 x i8]* @.str.2, i64 0, i64 0), i32 noundef 62, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.xmlSchemaParseRedefine, i64 0, i64 0)), !dbg !98
  br label %53, !dbg !98

53:                                               ; preds = %51, %50
  %54 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([110 x i8], [110 x i8]* @.str.2, i64 0, i64 0), i32 noundef 65, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.xmlSchemaParseRedefine, i64 0, i64 0)), !dbg !99
  %55 = load %struct._xmlSchemaIDCBinding*, %struct._xmlSchemaIDCBinding** %3, align 8, !dbg !100
  %56 = getelementptr inbounds %struct._xmlSchemaIDCBinding, %struct._xmlSchemaIDCBinding* %55, i32 0, i32 1, !dbg !101
  %57 = load %struct._xmlSchemaPSVIIDCNode**, %struct._xmlSchemaPSVIIDCNode*** %56, align 8, !dbg !101
  %58 = bitcast %struct._xmlSchemaPSVIIDCNode** %57 to i8*, !dbg !102
  %59 = load %struct._xmlSchemaIDCBinding*, %struct._xmlSchemaIDCBinding** %2, align 8, !dbg !103
  %60 = getelementptr inbounds %struct._xmlSchemaIDCBinding, %struct._xmlSchemaIDCBinding* %59, i32 0, i32 1, !dbg !104
  %61 = load %struct._xmlSchemaPSVIIDCNode**, %struct._xmlSchemaPSVIIDCNode*** %60, align 8, !dbg !104
  %62 = bitcast %struct._xmlSchemaPSVIIDCNode** %61 to i8*, !dbg !102
  %63 = load %struct._xmlSchemaIDCBinding*, %struct._xmlSchemaIDCBinding** %2, align 8, !dbg !105
  %64 = getelementptr inbounds %struct._xmlSchemaIDCBinding, %struct._xmlSchemaIDCBinding* %63, i32 0, i32 0, !dbg !106
  %65 = load i32, i32* %64, align 8, !dbg !106
  %66 = sext i32 %65 to i64, !dbg !105
  %67 = mul i64 %66, 8, !dbg !107
  %68 = call i8* @memcpy(i8* %58, i8* %62, i64 %67), !dbg !102
  %69 = load %struct._xmlSchemaIDCBinding*, %struct._xmlSchemaIDCBinding** %2, align 8, !dbg !108
  %70 = getelementptr inbounds %struct._xmlSchemaIDCBinding, %struct._xmlSchemaIDCBinding* %69, i32 0, i32 0, !dbg !109
  %71 = load i32, i32* %70, align 8, !dbg !109
  %72 = load %struct._xmlSchemaIDCBinding*, %struct._xmlSchemaIDCBinding** %3, align 8, !dbg !110
  %73 = getelementptr inbounds %struct._xmlSchemaIDCBinding, %struct._xmlSchemaIDCBinding* %72, i32 0, i32 2, !dbg !111
  store i32 %71, i32* %73, align 8, !dbg !112
  %74 = load %struct._xmlSchemaIDCBinding*, %struct._xmlSchemaIDCBinding** %2, align 8, !dbg !113
  %75 = getelementptr inbounds %struct._xmlSchemaIDCBinding, %struct._xmlSchemaIDCBinding* %74, i32 0, i32 0, !dbg !114
  %76 = load i32, i32* %75, align 8, !dbg !114
  %77 = load %struct._xmlSchemaIDCBinding*, %struct._xmlSchemaIDCBinding** %3, align 8, !dbg !115
  %78 = getelementptr inbounds %struct._xmlSchemaIDCBinding, %struct._xmlSchemaIDCBinding* %77, i32 0, i32 0, !dbg !116
  store i32 %76, i32* %78, align 8, !dbg !117
  br label %79, !dbg !118

79:                                               ; preds = %53, %12
  %80 = load %struct._xmlSchemaIDCBinding*, %struct._xmlSchemaIDCBinding** %2, align 8, !dbg !119
  %81 = getelementptr inbounds %struct._xmlSchemaIDCBinding, %struct._xmlSchemaIDCBinding* %80, i32 0, i32 3, !dbg !121
  %82 = load i32, i32* %81, align 4, !dbg !121
  %83 = icmp ne i32 %82, 0, !dbg !119
  br i1 %83, label %84, label %85, !dbg !122

84:                                               ; preds = %79
  br label %85, !dbg !123

85:                                               ; preds = %84, %79
  %86 = load %struct._xmlSchemaIDCBinding*, %struct._xmlSchemaIDCBinding** %3, align 8, !dbg !125
  call void @xmlSchemaIDCFreeBinding(%struct._xmlSchemaIDCBinding* noundef %86), !dbg !126
  br label %89, !dbg !127

87:                                               ; preds = %1
  br label %88, !dbg !52

88:                                               ; preds = %87, %39, %11
  call void @llvm.dbg.label(metadata !128), !dbg !129
  br label %89, !dbg !130

89:                                               ; preds = %88, %85
  ret void, !dbg !131
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !132 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlSchemaIDCBinding, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaIDCBinding* %2, metadata !135, metadata !DIExpression()), !dbg !136
  %3 = getelementptr inbounds %struct._xmlSchemaIDCBinding, %struct._xmlSchemaIDCBinding* %2, i32 0, i32 0, !dbg !137
  %4 = bitcast i32* %3 to i8*, !dbg !138
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0)), !dbg !139
  %5 = getelementptr inbounds %struct._xmlSchemaIDCBinding, %struct._xmlSchemaIDCBinding* %2, i32 0, i32 0, !dbg !140
  %6 = load i32, i32* %5, align 8, !dbg !140
  %7 = icmp sge i32 %6, 0, !dbg !141
  %8 = zext i1 %7 to i32, !dbg !141
  %9 = sext i32 %8 to i64, !dbg !142
  call void @klee_assume(i64 noundef %9), !dbg !143
  %10 = getelementptr inbounds %struct._xmlSchemaIDCBinding, %struct._xmlSchemaIDCBinding* %2, i32 0, i32 0, !dbg !144
  %11 = load i32, i32* %10, align 8, !dbg !144
  %12 = icmp sle i32 %11, 100, !dbg !145
  %13 = zext i1 %12 to i32, !dbg !145
  %14 = sext i32 %13 to i64, !dbg !146
  call void @klee_assume(i64 noundef %14), !dbg !147
  %15 = getelementptr inbounds %struct._xmlSchemaIDCBinding, %struct._xmlSchemaIDCBinding* %2, i32 0, i32 0, !dbg !148
  %16 = load i32, i32* %15, align 8, !dbg !148
  %17 = icmp sgt i32 %16, 0, !dbg !150
  br i1 %17, label %18, label %33, !dbg !151

18:                                               ; preds = %0
  %19 = getelementptr inbounds %struct._xmlSchemaIDCBinding, %struct._xmlSchemaIDCBinding* %2, i32 0, i32 0, !dbg !152
  %20 = load i32, i32* %19, align 8, !dbg !152
  %21 = sext i32 %20 to i64, !dbg !154
  %22 = mul i64 %21, 8, !dbg !155
  %23 = call noalias i8* @malloc(i64 noundef %22) #7, !dbg !156
  %24 = bitcast i8* %23 to %struct._xmlSchemaPSVIIDCNode**, !dbg !157
  %25 = getelementptr inbounds %struct._xmlSchemaIDCBinding, %struct._xmlSchemaIDCBinding* %2, i32 0, i32 1, !dbg !158
  store %struct._xmlSchemaPSVIIDCNode** %24, %struct._xmlSchemaPSVIIDCNode*** %25, align 8, !dbg !159
  %26 = getelementptr inbounds %struct._xmlSchemaIDCBinding, %struct._xmlSchemaIDCBinding* %2, i32 0, i32 1, !dbg !160
  %27 = load %struct._xmlSchemaPSVIIDCNode**, %struct._xmlSchemaPSVIIDCNode*** %26, align 8, !dbg !160
  %28 = bitcast %struct._xmlSchemaPSVIIDCNode** %27 to i8*, !dbg !161
  %29 = getelementptr inbounds %struct._xmlSchemaIDCBinding, %struct._xmlSchemaIDCBinding* %2, i32 0, i32 0, !dbg !162
  %30 = load i32, i32* %29, align 8, !dbg !162
  %31 = sext i32 %30 to i64, !dbg !163
  %32 = mul i64 %31, 8, !dbg !164
  call void @klee_make_symbolic(i8* noundef %28, i64 noundef %32, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0)), !dbg !165
  br label %35, !dbg !166

33:                                               ; preds = %0
  %34 = getelementptr inbounds %struct._xmlSchemaIDCBinding, %struct._xmlSchemaIDCBinding* %2, i32 0, i32 1, !dbg !167
  store %struct._xmlSchemaPSVIIDCNode** null, %struct._xmlSchemaPSVIIDCNode*** %34, align 8, !dbg !169
  br label %35

35:                                               ; preds = %33, %18
  %36 = getelementptr inbounds %struct._xmlSchemaIDCBinding, %struct._xmlSchemaIDCBinding* %2, i32 0, i32 0, !dbg !170
  %37 = load i32, i32* %36, align 8, !dbg !170
  %38 = getelementptr inbounds %struct._xmlSchemaIDCBinding, %struct._xmlSchemaIDCBinding* %2, i32 0, i32 2, !dbg !171
  store i32 %37, i32* %38, align 8, !dbg !172
  %39 = getelementptr inbounds %struct._xmlSchemaIDCBinding, %struct._xmlSchemaIDCBinding* %2, i32 0, i32 3, !dbg !173
  store i32 0, i32* %39, align 4, !dbg !174
  call void @xmlSchemaParseRedefine(%struct._xmlSchemaIDCBinding* noundef %2), !dbg !175
  %40 = getelementptr inbounds %struct._xmlSchemaIDCBinding, %struct._xmlSchemaIDCBinding* %2, i32 0, i32 1, !dbg !176
  %41 = load %struct._xmlSchemaPSVIIDCNode**, %struct._xmlSchemaPSVIIDCNode*** %40, align 8, !dbg !176
  %42 = icmp ne %struct._xmlSchemaPSVIIDCNode** %41, null, !dbg !178
  br i1 %42, label %43, label %47, !dbg !179

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct._xmlSchemaIDCBinding, %struct._xmlSchemaIDCBinding* %2, i32 0, i32 1, !dbg !180
  %45 = load %struct._xmlSchemaPSVIIDCNode**, %struct._xmlSchemaPSVIIDCNode*** %44, align 8, !dbg !180
  %46 = bitcast %struct._xmlSchemaPSVIIDCNode** %45 to i8*, !dbg !182
  call void @free(i8* noundef %46) #7, !dbg !183
  br label %47, !dbg !184

47:                                               ; preds = %43, %35
  ret i32 0, !dbg !185
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !186 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !196, metadata !DIExpression()), !dbg !197
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !198, metadata !DIExpression()), !dbg !199
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !200, metadata !DIExpression()), !dbg !201
  call void @llvm.dbg.declare(metadata i8** %7, metadata !202, metadata !DIExpression()), !dbg !205
  %9 = load i8*, i8** %4, align 8, !dbg !206
  store i8* %9, i8** %7, align 8, !dbg !205
  call void @llvm.dbg.declare(metadata i8** %8, metadata !207, metadata !DIExpression()), !dbg !210
  %10 = load i8*, i8** %5, align 8, !dbg !211
  store i8* %10, i8** %8, align 8, !dbg !210
  br label %11, !dbg !212

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !213
  %13 = add i64 %12, -1, !dbg !213
  store i64 %13, i64* %6, align 8, !dbg !213
  %14 = icmp ugt i64 %12, 0, !dbg !214
  br i1 %14, label %15, label %21, !dbg !212

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !215
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !215
  store i8* %17, i8** %8, align 8, !dbg !215
  %18 = load i8, i8* %16, align 1, !dbg !216
  %19 = load i8*, i8** %7, align 8, !dbg !217
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !217
  store i8* %20, i8** %7, align 8, !dbg !217
  store i8 %18, i8* %19, align 1, !dbg !218
  br label %11, !dbg !212, !llvm.loop !219

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !221
  ret i8* %22, !dbg !222
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28, !28}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/317_xmlschemas.c_23689_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "3b2bec6b66fce8b86f34398404c9a9eb")
!2 = !{!3, !10}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaIDCBinding", file: !1, line: 10, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaIDCBinding", file: !1, line: 14, size: 192, elements: !6)
!6 = !{!7, !9, !17, !18}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "nbNodes", scope: !5, file: !1, line: 15, baseType: !8, size: 32)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTable", scope: !5, file: !1, line: 16, baseType: !10, size: 64, offset: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaPSVIIDCNodePtr", file: !1, line: 12, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaPSVIIDCNode", file: !1, line: 11, baseType: !14)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaPSVIIDCNode", file: !1, line: 21, size: 32, elements: !15)
!15 = !{!16}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !14, file: !1, line: 23, baseType: !8, size: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "sizeNodes", scope: !5, file: !1, line: 17, baseType: !8, size: 32, offset: 128)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "dupls", scope: !5, file: !1, line: 18, baseType: !8, size: 32, offset: 160)
!19 = distinct !DICompileUnit(language: DW_LANG_C99, file: !20, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!20 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!21 = !{i32 7, !"Dwarf Version", i32 5}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 1, !"wchar_size", i32 4}
!24 = !{i32 7, !"PIC Level", i32 2}
!25 = !{i32 7, !"PIE Level", i32 2}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"Ubuntu clang version 14.0.6"}
!29 = distinct !DISubprogram(name: "xmlSchemaIDCFreeBinding", scope: !1, file: !1, line: 27, type: !30, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !3}
!32 = !{}
!33 = !DILocalVariable(name: "bind", arg: 1, scope: !29, file: !1, line: 27, type: !3)
!34 = !DILocation(line: 27, column: 51, scope: !29)
!35 = !DILocation(line: 29, column: 9, scope: !36)
!36 = distinct !DILexicalBlock(scope: !29, file: !1, line: 29, column: 9)
!37 = !DILocation(line: 29, column: 14, scope: !36)
!38 = !DILocation(line: 29, column: 17, scope: !36)
!39 = !DILocation(line: 29, column: 23, scope: !36)
!40 = !DILocation(line: 29, column: 9, scope: !29)
!41 = !DILocation(line: 30, column: 14, scope: !42)
!42 = distinct !DILexicalBlock(scope: !36, file: !1, line: 29, column: 34)
!43 = !DILocation(line: 30, column: 20, scope: !42)
!44 = !DILocation(line: 30, column: 9, scope: !42)
!45 = !DILocation(line: 31, column: 5, scope: !42)
!46 = !DILocation(line: 32, column: 1, scope: !29)
!47 = distinct !DISubprogram(name: "xmlSchemaParseRedefine", scope: !1, file: !1, line: 35, type: !30, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!48 = !DILocalVariable(name: "bind", arg: 1, scope: !47, file: !1, line: 35, type: !3)
!49 = !DILocation(line: 35, column: 50, scope: !47)
!50 = !DILocalVariable(name: "parBind", scope: !47, file: !1, line: 36, type: !3)
!51 = !DILocation(line: 36, column: 26, scope: !47)
!52 = !DILocation(line: 38, column: 9, scope: !53)
!53 = distinct !DILexicalBlock(scope: !47, file: !1, line: 38, column: 9)
!54 = !DILocation(line: 38, column: 9, scope: !47)
!55 = !DILocation(line: 39, column: 41, scope: !56)
!56 = distinct !DILexicalBlock(scope: !53, file: !1, line: 38, column: 15)
!57 = !DILocation(line: 39, column: 19, scope: !56)
!58 = !DILocation(line: 39, column: 17, scope: !56)
!59 = !DILocation(line: 40, column: 14, scope: !60)
!60 = distinct !DILexicalBlock(scope: !56, file: !1, line: 40, column: 13)
!61 = !DILocation(line: 40, column: 13, scope: !56)
!62 = !DILocation(line: 41, column: 13, scope: !63)
!63 = distinct !DILexicalBlock(scope: !60, file: !1, line: 40, column: 23)
!64 = !DILocation(line: 45, column: 9, scope: !56)
!65 = !DILocation(line: 45, column: 18, scope: !56)
!66 = !DILocation(line: 45, column: 28, scope: !56)
!67 = !DILocation(line: 46, column: 9, scope: !56)
!68 = !DILocation(line: 46, column: 18, scope: !56)
!69 = !DILocation(line: 46, column: 26, scope: !56)
!70 = !DILocation(line: 47, column: 9, scope: !56)
!71 = !DILocation(line: 47, column: 18, scope: !56)
!72 = !DILocation(line: 47, column: 28, scope: !56)
!73 = !DILocation(line: 48, column: 9, scope: !56)
!74 = !DILocation(line: 48, column: 18, scope: !56)
!75 = !DILocation(line: 48, column: 24, scope: !56)
!76 = !DILocation(line: 50, column: 13, scope: !77)
!77 = distinct !DILexicalBlock(scope: !56, file: !1, line: 50, column: 13)
!78 = !DILocation(line: 50, column: 19, scope: !77)
!79 = !DILocation(line: 50, column: 27, scope: !77)
!80 = !DILocation(line: 50, column: 13, scope: !56)
!81 = !DILocation(line: 52, column: 17, scope: !82)
!82 = distinct !DILexicalBlock(scope: !77, file: !1, line: 50, column: 32)
!83 = !DILocation(line: 52, column: 23, scope: !82)
!84 = !DILocation(line: 52, column: 31, scope: !82)
!85 = !DILocation(line: 51, column: 60, scope: !82)
!86 = !DILocation(line: 51, column: 34, scope: !82)
!87 = !DILocation(line: 51, column: 13, scope: !82)
!88 = !DILocation(line: 51, column: 22, scope: !82)
!89 = !DILocation(line: 51, column: 32, scope: !82)
!90 = !DILocation(line: 53, column: 18, scope: !91)
!91 = distinct !DILexicalBlock(scope: !82, file: !1, line: 53, column: 17)
!92 = !DILocation(line: 53, column: 27, scope: !91)
!93 = !DILocation(line: 53, column: 17, scope: !82)
!94 = !DILocation(line: 54, column: 41, scope: !95)
!95 = distinct !DILexicalBlock(scope: !91, file: !1, line: 53, column: 38)
!96 = !DILocation(line: 54, column: 17, scope: !95)
!97 = !DILocation(line: 55, column: 17, scope: !95)
!98 = !DILocation(line: 62, column: 13, scope: !82)
!99 = !DILocation(line: 65, column: 13, scope: !82)
!100 = !DILocation(line: 68, column: 20, scope: !82)
!101 = !DILocation(line: 68, column: 29, scope: !82)
!102 = !DILocation(line: 68, column: 13, scope: !82)
!103 = !DILocation(line: 68, column: 40, scope: !82)
!104 = !DILocation(line: 68, column: 46, scope: !82)
!105 = !DILocation(line: 69, column: 20, scope: !82)
!106 = !DILocation(line: 69, column: 26, scope: !82)
!107 = !DILocation(line: 69, column: 34, scope: !82)
!108 = !DILocation(line: 71, column: 34, scope: !82)
!109 = !DILocation(line: 71, column: 40, scope: !82)
!110 = !DILocation(line: 71, column: 13, scope: !82)
!111 = !DILocation(line: 71, column: 22, scope: !82)
!112 = !DILocation(line: 71, column: 32, scope: !82)
!113 = !DILocation(line: 72, column: 32, scope: !82)
!114 = !DILocation(line: 72, column: 38, scope: !82)
!115 = !DILocation(line: 72, column: 13, scope: !82)
!116 = !DILocation(line: 72, column: 22, scope: !82)
!117 = !DILocation(line: 72, column: 30, scope: !82)
!118 = !DILocation(line: 73, column: 9, scope: !82)
!119 = !DILocation(line: 75, column: 13, scope: !120)
!120 = distinct !DILexicalBlock(scope: !56, file: !1, line: 75, column: 13)
!121 = !DILocation(line: 75, column: 19, scope: !120)
!122 = !DILocation(line: 75, column: 13, scope: !56)
!123 = !DILocation(line: 77, column: 9, scope: !124)
!124 = distinct !DILexicalBlock(scope: !120, file: !1, line: 75, column: 26)
!125 = !DILocation(line: 80, column: 33, scope: !56)
!126 = !DILocation(line: 80, column: 9, scope: !56)
!127 = !DILocation(line: 81, column: 9, scope: !56)
!128 = !DILabel(scope: !47, name: "internal_error", file: !1, line: 84)
!129 = !DILocation(line: 84, column: 1, scope: !47)
!130 = !DILocation(line: 85, column: 5, scope: !47)
!131 = !DILocation(line: 86, column: 1, scope: !47)
!132 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 88, type: !133, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!133 = !DISubroutineType(types: !134)
!134 = !{!8}
!135 = !DILocalVariable(name: "bind", scope: !132, file: !1, line: 89, type: !4)
!136 = !DILocation(line: 89, column: 25, scope: !132)
!137 = !DILocation(line: 92, column: 30, scope: !132)
!138 = !DILocation(line: 92, column: 24, scope: !132)
!139 = !DILocation(line: 92, column: 5, scope: !132)
!140 = !DILocation(line: 95, column: 22, scope: !132)
!141 = !DILocation(line: 95, column: 30, scope: !132)
!142 = !DILocation(line: 95, column: 17, scope: !132)
!143 = !DILocation(line: 95, column: 5, scope: !132)
!144 = !DILocation(line: 96, column: 22, scope: !132)
!145 = !DILocation(line: 96, column: 30, scope: !132)
!146 = !DILocation(line: 96, column: 17, scope: !132)
!147 = !DILocation(line: 96, column: 5, scope: !132)
!148 = !DILocation(line: 99, column: 14, scope: !149)
!149 = distinct !DILexicalBlock(scope: !132, file: !1, line: 99, column: 9)
!150 = !DILocation(line: 99, column: 22, scope: !149)
!151 = !DILocation(line: 99, column: 9, scope: !132)
!152 = !DILocation(line: 101, column: 18, scope: !153)
!153 = distinct !DILexicalBlock(scope: !149, file: !1, line: 99, column: 27)
!154 = !DILocation(line: 101, column: 13, scope: !153)
!155 = !DILocation(line: 101, column: 26, scope: !153)
!156 = !DILocation(line: 100, column: 52, scope: !153)
!157 = !DILocation(line: 100, column: 26, scope: !153)
!158 = !DILocation(line: 100, column: 14, scope: !153)
!159 = !DILocation(line: 100, column: 24, scope: !153)
!160 = !DILocation(line: 104, column: 33, scope: !153)
!161 = !DILocation(line: 104, column: 28, scope: !153)
!162 = !DILocation(line: 105, column: 32, scope: !153)
!163 = !DILocation(line: 105, column: 27, scope: !153)
!164 = !DILocation(line: 105, column: 40, scope: !153)
!165 = !DILocation(line: 104, column: 9, scope: !153)
!166 = !DILocation(line: 107, column: 5, scope: !153)
!167 = !DILocation(line: 108, column: 14, scope: !168)
!168 = distinct !DILexicalBlock(scope: !149, file: !1, line: 107, column: 12)
!169 = !DILocation(line: 108, column: 24, scope: !168)
!170 = !DILocation(line: 111, column: 27, scope: !132)
!171 = !DILocation(line: 111, column: 10, scope: !132)
!172 = !DILocation(line: 111, column: 20, scope: !132)
!173 = !DILocation(line: 112, column: 10, scope: !132)
!174 = !DILocation(line: 112, column: 16, scope: !132)
!175 = !DILocation(line: 115, column: 5, scope: !132)
!176 = !DILocation(line: 118, column: 14, scope: !177)
!177 = distinct !DILexicalBlock(scope: !132, file: !1, line: 118, column: 9)
!178 = !DILocation(line: 118, column: 9, scope: !177)
!179 = !DILocation(line: 118, column: 9, scope: !132)
!180 = !DILocation(line: 119, column: 19, scope: !181)
!181 = distinct !DILexicalBlock(scope: !177, file: !1, line: 118, column: 25)
!182 = !DILocation(line: 119, column: 14, scope: !181)
!183 = !DILocation(line: 119, column: 9, scope: !181)
!184 = !DILocation(line: 120, column: 5, scope: !181)
!185 = !DILocation(line: 122, column: 5, scope: !132)
!186 = distinct !DISubprogram(name: "memcpy", scope: !187, file: !187, line: 12, type: !188, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !32)
!187 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!188 = !DISubroutineType(types: !189)
!189 = !{!190, !190, !191, !193}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !194, line: 46, baseType: !195)
!194 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!195 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!196 = !DILocalVariable(name: "destaddr", arg: 1, scope: !186, file: !187, line: 12, type: !190)
!197 = !DILocation(line: 12, column: 20, scope: !186)
!198 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !186, file: !187, line: 12, type: !191)
!199 = !DILocation(line: 12, column: 42, scope: !186)
!200 = !DILocalVariable(name: "len", arg: 3, scope: !186, file: !187, line: 12, type: !193)
!201 = !DILocation(line: 12, column: 58, scope: !186)
!202 = !DILocalVariable(name: "dest", scope: !186, file: !187, line: 13, type: !203)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!205 = !DILocation(line: 13, column: 9, scope: !186)
!206 = !DILocation(line: 13, column: 16, scope: !186)
!207 = !DILocalVariable(name: "src", scope: !186, file: !187, line: 14, type: !208)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!210 = !DILocation(line: 14, column: 15, scope: !186)
!211 = !DILocation(line: 14, column: 21, scope: !186)
!212 = !DILocation(line: 16, column: 3, scope: !186)
!213 = !DILocation(line: 16, column: 13, scope: !186)
!214 = !DILocation(line: 16, column: 16, scope: !186)
!215 = !DILocation(line: 17, column: 19, scope: !186)
!216 = !DILocation(line: 17, column: 15, scope: !186)
!217 = !DILocation(line: 17, column: 10, scope: !186)
!218 = !DILocation(line: 17, column: 13, scope: !186)
!219 = distinct !{!219, !212, !215, !220}
!220 = !{!"llvm.loop.mustprogress"}
!221 = !DILocation(line: 18, column: 10, scope: !186)
!222 = !DILocation(line: 18, column: 3, scope: !186)

; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/321_xmlschemas.c_22997_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/321_xmlschemas.c_22997_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaPSVIIDCMatcher = type { %struct._xmlSchemaPSVIIDCKey***, i32, i32 }
%struct._xmlSchemaPSVIIDCKey = type opaque

@.str = private unnamed_addr constant [37 x i8] c"allocating an array of key-sequences\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [83 x i8] c"(matcher->sizeKeySeqs >= 0 && matcher->sizeKeySeqs <= 1024) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [110 x i8] c"se_runs/sa_llm/libxml2_55980_vul/321_xmlschemas.c_22997_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.target_function = private unnamed_addr constant [52 x i8] c"int target_function(xmlSchemaPSVIIDCMatcher *, int)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"sizeKeySeqs\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"nbKeySeqs\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"pos\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !20 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !27, metadata !DIExpression()), !dbg !28
  %3 = load i64, i64* %2, align 8, !dbg !29
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !30
  ret i8* %4, !dbg !31
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlRealloc(i8* noundef %0, i64 noundef %1) #0 !dbg !32 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !35, metadata !DIExpression()), !dbg !36
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !37, metadata !DIExpression()), !dbg !38
  %5 = load i8*, i8** %3, align 8, !dbg !39
  %6 = load i64, i64* %4, align 8, !dbg !40
  %7 = call i8* @realloc(i8* noundef %5, i64 noundef %6) #7, !dbg !41
  ret i8* %7, !dbg !42
}

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchemaVErrMemory(i8* noundef %0, i8* noundef %1, i8* noundef %2) #0 !dbg !43 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !49, metadata !DIExpression()), !dbg !50
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !51, metadata !DIExpression()), !dbg !52
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !53, metadata !DIExpression()), !dbg !54
  ret void, !dbg !55
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_function(%struct._xmlSchemaPSVIIDCMatcher* noundef %0, i32 noundef %1) #0 !dbg !56 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlSchemaPSVIIDCMatcher*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._xmlSchemaPSVIIDCMatcher* %0, %struct._xmlSchemaPSVIIDCMatcher** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaPSVIIDCMatcher** %4, metadata !67, metadata !DIExpression()), !dbg !68
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !69, metadata !DIExpression()), !dbg !70
  %7 = load %struct._xmlSchemaPSVIIDCMatcher*, %struct._xmlSchemaPSVIIDCMatcher** %4, align 8, !dbg !71
  %8 = getelementptr inbounds %struct._xmlSchemaPSVIIDCMatcher, %struct._xmlSchemaPSVIIDCMatcher* %7, i32 0, i32 0, !dbg !73
  %9 = load %struct._xmlSchemaPSVIIDCKey***, %struct._xmlSchemaPSVIIDCKey**** %8, align 8, !dbg !73
  %10 = icmp eq %struct._xmlSchemaPSVIIDCKey*** %9, null, !dbg !74
  br i1 %10, label %11, label %52, !dbg !75

11:                                               ; preds = %2
  %12 = load %struct._xmlSchemaPSVIIDCMatcher*, %struct._xmlSchemaPSVIIDCMatcher** %4, align 8, !dbg !76
  %13 = getelementptr inbounds %struct._xmlSchemaPSVIIDCMatcher, %struct._xmlSchemaPSVIIDCMatcher* %12, i32 0, i32 1, !dbg !78
  %14 = load i32, i32* %13, align 8, !dbg !78
  %15 = sext i32 %14 to i64, !dbg !76
  %16 = mul i64 %15, 8, !dbg !79
  %17 = call i8* @xmlMalloc(i64 noundef %16), !dbg !80
  %18 = bitcast i8* %17 to %struct._xmlSchemaPSVIIDCKey***, !dbg !81
  %19 = load %struct._xmlSchemaPSVIIDCMatcher*, %struct._xmlSchemaPSVIIDCMatcher** %4, align 8, !dbg !82
  %20 = getelementptr inbounds %struct._xmlSchemaPSVIIDCMatcher, %struct._xmlSchemaPSVIIDCMatcher* %19, i32 0, i32 0, !dbg !83
  store %struct._xmlSchemaPSVIIDCKey*** %18, %struct._xmlSchemaPSVIIDCKey**** %20, align 8, !dbg !84
  %21 = load %struct._xmlSchemaPSVIIDCMatcher*, %struct._xmlSchemaPSVIIDCMatcher** %4, align 8, !dbg !85
  %22 = getelementptr inbounds %struct._xmlSchemaPSVIIDCMatcher, %struct._xmlSchemaPSVIIDCMatcher* %21, i32 0, i32 0, !dbg !87
  %23 = load %struct._xmlSchemaPSVIIDCKey***, %struct._xmlSchemaPSVIIDCKey**** %22, align 8, !dbg !87
  %24 = icmp eq %struct._xmlSchemaPSVIIDCKey*** %23, null, !dbg !88
  br i1 %24, label %25, label %26, !dbg !89

25:                                               ; preds = %11
  call void @xmlSchemaVErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* noundef null), !dbg !90
  store i32 -1, i32* %3, align 4, !dbg !92
  br label %81, !dbg !92

26:                                               ; preds = %11
  %27 = load %struct._xmlSchemaPSVIIDCMatcher*, %struct._xmlSchemaPSVIIDCMatcher** %4, align 8, !dbg !93
  %28 = getelementptr inbounds %struct._xmlSchemaPSVIIDCMatcher, %struct._xmlSchemaPSVIIDCMatcher* %27, i32 0, i32 0, !dbg !94
  %29 = load %struct._xmlSchemaPSVIIDCKey***, %struct._xmlSchemaPSVIIDCKey**** %28, align 8, !dbg !94
  %30 = bitcast %struct._xmlSchemaPSVIIDCKey*** %29 to i8*, !dbg !95
  %31 = load %struct._xmlSchemaPSVIIDCMatcher*, %struct._xmlSchemaPSVIIDCMatcher** %4, align 8, !dbg !96
  %32 = getelementptr inbounds %struct._xmlSchemaPSVIIDCMatcher, %struct._xmlSchemaPSVIIDCMatcher* %31, i32 0, i32 1, !dbg !97
  %33 = load i32, i32* %32, align 8, !dbg !97
  %34 = sext i32 %33 to i64, !dbg !96
  %35 = mul i64 %34, 8, !dbg !98
  %36 = call i8* @memset(i8* %30, i32 0, i64 %35), !dbg !95
  %37 = load %struct._xmlSchemaPSVIIDCMatcher*, %struct._xmlSchemaPSVIIDCMatcher** %4, align 8, !dbg !99
  %38 = getelementptr inbounds %struct._xmlSchemaPSVIIDCMatcher, %struct._xmlSchemaPSVIIDCMatcher* %37, i32 0, i32 1, !dbg !99
  %39 = load i32, i32* %38, align 8, !dbg !99
  %40 = icmp sge i32 %39, 0, !dbg !99
  br i1 %40, label %41, label %48, !dbg !99

41:                                               ; preds = %26
  %42 = load %struct._xmlSchemaPSVIIDCMatcher*, %struct._xmlSchemaPSVIIDCMatcher** %4, align 8, !dbg !99
  %43 = getelementptr inbounds %struct._xmlSchemaPSVIIDCMatcher, %struct._xmlSchemaPSVIIDCMatcher* %42, i32 0, i32 1, !dbg !99
  %44 = load i32, i32* %43, align 8, !dbg !99
  %45 = icmp sle i32 %44, 1024, !dbg !99
  br i1 %45, label %46, label %48, !dbg !99

46:                                               ; preds = %41
  br i1 true, label %47, label %48, !dbg !99

47:                                               ; preds = %46
  br label %50, !dbg !99

48:                                               ; preds = %46, %41, %26
  %49 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([110 x i8], [110 x i8]* @.str.3, i64 0, i64 0), i32 noundef 52, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !99
  br label %50, !dbg !99

50:                                               ; preds = %48, %47
  %51 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([110 x i8], [110 x i8]* @.str.3, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !100
  br label %80, !dbg !101

52:                                               ; preds = %2
  %53 = load i32, i32* %5, align 4, !dbg !102
  %54 = load %struct._xmlSchemaPSVIIDCMatcher*, %struct._xmlSchemaPSVIIDCMatcher** %4, align 8, !dbg !104
  %55 = getelementptr inbounds %struct._xmlSchemaPSVIIDCMatcher, %struct._xmlSchemaPSVIIDCMatcher* %54, i32 0, i32 1, !dbg !105
  %56 = load i32, i32* %55, align 8, !dbg !105
  %57 = icmp sge i32 %53, %56, !dbg !106
  br i1 %57, label %58, label %79, !dbg !107

58:                                               ; preds = %52
  call void @llvm.dbg.declare(metadata i32* %6, metadata !108, metadata !DIExpression()), !dbg !110
  %59 = load %struct._xmlSchemaPSVIIDCMatcher*, %struct._xmlSchemaPSVIIDCMatcher** %4, align 8, !dbg !111
  %60 = getelementptr inbounds %struct._xmlSchemaPSVIIDCMatcher, %struct._xmlSchemaPSVIIDCMatcher* %59, i32 0, i32 1, !dbg !112
  %61 = load i32, i32* %60, align 8, !dbg !112
  store i32 %61, i32* %6, align 4, !dbg !110
  %62 = load %struct._xmlSchemaPSVIIDCMatcher*, %struct._xmlSchemaPSVIIDCMatcher** %4, align 8, !dbg !113
  %63 = getelementptr inbounds %struct._xmlSchemaPSVIIDCMatcher, %struct._xmlSchemaPSVIIDCMatcher* %62, i32 0, i32 1, !dbg !114
  %64 = load i32, i32* %63, align 8, !dbg !115
  %65 = mul nsw i32 %64, 2, !dbg !115
  store i32 %65, i32* %63, align 8, !dbg !115
  %66 = load %struct._xmlSchemaPSVIIDCMatcher*, %struct._xmlSchemaPSVIIDCMatcher** %4, align 8, !dbg !116
  %67 = getelementptr inbounds %struct._xmlSchemaPSVIIDCMatcher, %struct._xmlSchemaPSVIIDCMatcher* %66, i32 0, i32 0, !dbg !117
  %68 = load %struct._xmlSchemaPSVIIDCKey***, %struct._xmlSchemaPSVIIDCKey**** %67, align 8, !dbg !117
  %69 = bitcast %struct._xmlSchemaPSVIIDCKey*** %68 to i8*, !dbg !116
  %70 = load %struct._xmlSchemaPSVIIDCMatcher*, %struct._xmlSchemaPSVIIDCMatcher** %4, align 8, !dbg !118
  %71 = getelementptr inbounds %struct._xmlSchemaPSVIIDCMatcher, %struct._xmlSchemaPSVIIDCMatcher* %70, i32 0, i32 1, !dbg !119
  %72 = load i32, i32* %71, align 8, !dbg !119
  %73 = sext i32 %72 to i64, !dbg !118
  %74 = mul i64 %73, 8, !dbg !120
  %75 = call i8* @xmlRealloc(i8* noundef %69, i64 noundef %74), !dbg !121
  %76 = bitcast i8* %75 to %struct._xmlSchemaPSVIIDCKey***, !dbg !122
  %77 = load %struct._xmlSchemaPSVIIDCMatcher*, %struct._xmlSchemaPSVIIDCMatcher** %4, align 8, !dbg !123
  %78 = getelementptr inbounds %struct._xmlSchemaPSVIIDCMatcher, %struct._xmlSchemaPSVIIDCMatcher* %77, i32 0, i32 0, !dbg !124
  store %struct._xmlSchemaPSVIIDCKey*** %76, %struct._xmlSchemaPSVIIDCKey**** %78, align 8, !dbg !125
  br label %79, !dbg !126

79:                                               ; preds = %58, %52
  br label %80

80:                                               ; preds = %79, %50
  store i32 0, i32* %3, align 4, !dbg !127
  br label %81, !dbg !127

81:                                               ; preds = %80, %25
  %82 = load i32, i32* %3, align 4, !dbg !128
  ret i32 %82, !dbg !128
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !129 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlSchemaPSVIIDCMatcher, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaPSVIIDCMatcher* %2, metadata !132, metadata !DIExpression()), !dbg !133
  %5 = getelementptr inbounds %struct._xmlSchemaPSVIIDCMatcher, %struct._xmlSchemaPSVIIDCMatcher* %2, i32 0, i32 1, !dbg !134
  %6 = bitcast i32* %5 to i8*, !dbg !135
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0)), !dbg !136
  %7 = getelementptr inbounds %struct._xmlSchemaPSVIIDCMatcher, %struct._xmlSchemaPSVIIDCMatcher* %2, i32 0, i32 2, !dbg !137
  %8 = bitcast i32* %7 to i8*, !dbg !138
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)), !dbg !139
  %9 = getelementptr inbounds %struct._xmlSchemaPSVIIDCMatcher, %struct._xmlSchemaPSVIIDCMatcher* %2, i32 0, i32 0, !dbg !140
  store %struct._xmlSchemaPSVIIDCKey*** null, %struct._xmlSchemaPSVIIDCKey**** %9, align 8, !dbg !141
  %10 = getelementptr inbounds %struct._xmlSchemaPSVIIDCMatcher, %struct._xmlSchemaPSVIIDCMatcher* %2, i32 0, i32 1, !dbg !142
  %11 = load i32, i32* %10, align 8, !dbg !142
  %12 = icmp sgt i32 %11, 0, !dbg !143
  %13 = zext i1 %12 to i32, !dbg !143
  %14 = sext i32 %13 to i64, !dbg !144
  call void @klee_assume(i64 noundef %14), !dbg !145
  %15 = getelementptr inbounds %struct._xmlSchemaPSVIIDCMatcher, %struct._xmlSchemaPSVIIDCMatcher* %2, i32 0, i32 1, !dbg !146
  %16 = load i32, i32* %15, align 8, !dbg !146
  %17 = icmp slt i32 %16, 2048, !dbg !147
  %18 = zext i1 %17 to i32, !dbg !147
  %19 = sext i32 %18 to i64, !dbg !148
  call void @klee_assume(i64 noundef %19), !dbg !149
  %20 = getelementptr inbounds %struct._xmlSchemaPSVIIDCMatcher, %struct._xmlSchemaPSVIIDCMatcher* %2, i32 0, i32 2, !dbg !150
  %21 = load i32, i32* %20, align 4, !dbg !150
  %22 = icmp sge i32 %21, 0, !dbg !151
  %23 = zext i1 %22 to i32, !dbg !151
  %24 = sext i32 %23 to i64, !dbg !152
  call void @klee_assume(i64 noundef %24), !dbg !153
  call void @llvm.dbg.declare(metadata i32* %3, metadata !154, metadata !DIExpression()), !dbg !155
  store i32 0, i32* %3, align 4, !dbg !155
  %25 = bitcast i32* %3 to i8*, !dbg !156
  call void @klee_make_symbolic(i8* noundef %25, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)), !dbg !157
  %26 = load i32, i32* %3, align 4, !dbg !158
  %27 = getelementptr inbounds %struct._xmlSchemaPSVIIDCMatcher, %struct._xmlSchemaPSVIIDCMatcher* %2, i32 0, i32 1, !dbg !159
  %28 = load i32, i32* %27, align 8, !dbg !159
  %29 = icmp slt i32 %26, %28, !dbg !160
  %30 = zext i1 %29 to i32, !dbg !160
  %31 = sext i32 %30 to i64, !dbg !158
  call void @klee_assume(i64 noundef %31), !dbg !161
  call void @llvm.dbg.declare(metadata i32* %4, metadata !162, metadata !DIExpression()), !dbg !163
  %32 = load i32, i32* %3, align 4, !dbg !164
  %33 = call i32 @target_function(%struct._xmlSchemaPSVIIDCMatcher* noundef %2, i32 noundef %32), !dbg !165
  store i32 %33, i32* %4, align 4, !dbg !163
  %34 = getelementptr inbounds %struct._xmlSchemaPSVIIDCMatcher, %struct._xmlSchemaPSVIIDCMatcher* %2, i32 0, i32 0, !dbg !166
  %35 = load %struct._xmlSchemaPSVIIDCKey***, %struct._xmlSchemaPSVIIDCKey**** %34, align 8, !dbg !166
  %36 = icmp ne %struct._xmlSchemaPSVIIDCKey*** %35, null, !dbg !168
  br i1 %36, label %37, label %41, !dbg !169

37:                                               ; preds = %0
  %38 = getelementptr inbounds %struct._xmlSchemaPSVIIDCMatcher, %struct._xmlSchemaPSVIIDCMatcher* %2, i32 0, i32 0, !dbg !170
  %39 = load %struct._xmlSchemaPSVIIDCKey***, %struct._xmlSchemaPSVIIDCKey**** %38, align 8, !dbg !170
  %40 = bitcast %struct._xmlSchemaPSVIIDCKey*** %39 to i8*, !dbg !172
  call void @free(i8* noundef %40) #7, !dbg !173
  br label %41, !dbg !174

41:                                               ; preds = %37, %0
  ret i32 0, !dbg !175
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !176 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !180, metadata !DIExpression()), !dbg !181
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !182, metadata !DIExpression()), !dbg !183
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !184, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.declare(metadata i8** %7, metadata !186, metadata !DIExpression()), !dbg !188
  %8 = load i8*, i8** %4, align 8, !dbg !189
  store i8* %8, i8** %7, align 8, !dbg !188
  br label %9, !dbg !190

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !191
  %11 = add i64 %10, -1, !dbg !191
  store i64 %11, i64* %6, align 8, !dbg !191
  %12 = icmp ugt i64 %10, 0, !dbg !192
  br i1 %12, label %13, label %18, !dbg !190

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !193
  %15 = trunc i32 %14 to i8, !dbg !193
  %16 = load i8*, i8** %7, align 8, !dbg !194
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !194
  store i8* %17, i8** %7, align 8, !dbg !194
  store i8 %15, i8* %16, align 1, !dbg !195
  br label %9, !dbg !190, !llvm.loop !196

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !198
  ret i8* %19, !dbg !199
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19, !19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/321_xmlschemas.c_22997_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "e893202c785a026d4daa5c1cb75a446a")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaPSVIIDCKeyPtr", file: !1, line: 11, baseType: !7)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaPSVIIDCKey", file: !1, line: 10, baseType: !9)
!9 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaPSVIIDCKey", file: !1, line: 10, flags: DIFlagFwdDecl)
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !11, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!11 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!12 = !{i32 7, !"Dwarf Version", i32 5}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{i32 7, !"PIC Level", i32 2}
!16 = !{i32 7, !"PIE Level", i32 2}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"Ubuntu clang version 14.0.6"}
!20 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 20, type: !21, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!21 = !DISubroutineType(types: !22)
!22 = !{!3, !23}
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !24, line: 46, baseType: !25)
!24 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!25 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!26 = !{}
!27 = !DILocalVariable(name: "size", arg: 1, scope: !20, file: !1, line: 20, type: !23)
!28 = !DILocation(line: 20, column: 24, scope: !20)
!29 = !DILocation(line: 21, column: 19, scope: !20)
!30 = !DILocation(line: 21, column: 12, scope: !20)
!31 = !DILocation(line: 21, column: 5, scope: !20)
!32 = distinct !DISubprogram(name: "xmlRealloc", scope: !1, file: !1, line: 25, type: !33, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!33 = !DISubroutineType(types: !34)
!34 = !{!3, !3, !23}
!35 = !DILocalVariable(name: "ptr", arg: 1, scope: !32, file: !1, line: 25, type: !3)
!36 = !DILocation(line: 25, column: 24, scope: !32)
!37 = !DILocalVariable(name: "size", arg: 2, scope: !32, file: !1, line: 25, type: !23)
!38 = !DILocation(line: 25, column: 36, scope: !32)
!39 = !DILocation(line: 26, column: 20, scope: !32)
!40 = !DILocation(line: 26, column: 25, scope: !32)
!41 = !DILocation(line: 26, column: 12, scope: !32)
!42 = !DILocation(line: 26, column: 5, scope: !32)
!43 = distinct !DISubprogram(name: "xmlSchemaVErrMemory", scope: !1, file: !1, line: 30, type: !44, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!44 = !DISubroutineType(types: !45)
!45 = !{null, !3, !46, !46}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!48 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!49 = !DILocalVariable(name: "ctxt", arg: 1, scope: !43, file: !1, line: 30, type: !3)
!50 = !DILocation(line: 30, column: 32, scope: !43)
!51 = !DILocalVariable(name: "msg", arg: 2, scope: !43, file: !1, line: 30, type: !46)
!52 = !DILocation(line: 30, column: 50, scope: !43)
!53 = !DILocalVariable(name: "extra", arg: 3, scope: !43, file: !1, line: 30, type: !46)
!54 = !DILocation(line: 30, column: 67, scope: !43)
!55 = !DILocation(line: 32, column: 1, scope: !43)
!56 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 35, type: !57, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!57 = !DISubroutineType(types: !58)
!58 = !{!59, !60, !59}
!59 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaPSVIIDCMatcher", file: !1, line: 17, baseType: !62)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaPSVIIDCMatcher", file: !1, line: 13, size: 128, elements: !63)
!63 = !{!64, !65, !66}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "keySeqs", scope: !62, file: !1, line: 14, baseType: !4, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "sizeKeySeqs", scope: !62, file: !1, line: 15, baseType: !59, size: 32, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "nbKeySeqs", scope: !62, file: !1, line: 16, baseType: !59, size: 32, offset: 96)
!67 = !DILocalVariable(name: "matcher", arg: 1, scope: !56, file: !1, line: 35, type: !60)
!68 = !DILocation(line: 35, column: 46, scope: !56)
!69 = !DILocalVariable(name: "pos", arg: 2, scope: !56, file: !1, line: 35, type: !59)
!70 = !DILocation(line: 35, column: 59, scope: !56)
!71 = !DILocation(line: 36, column: 9, scope: !72)
!72 = distinct !DILexicalBlock(scope: !56, file: !1, line: 36, column: 9)
!73 = !DILocation(line: 36, column: 18, scope: !72)
!74 = !DILocation(line: 36, column: 26, scope: !72)
!75 = !DILocation(line: 36, column: 9, scope: !56)
!76 = !DILocation(line: 38, column: 23, scope: !77)
!77 = distinct !DILexicalBlock(scope: !72, file: !1, line: 36, column: 35)
!78 = !DILocation(line: 38, column: 32, scope: !77)
!79 = !DILocation(line: 38, column: 44, scope: !77)
!80 = !DILocation(line: 38, column: 13, scope: !77)
!81 = !DILocation(line: 37, column: 28, scope: !77)
!82 = !DILocation(line: 37, column: 9, scope: !77)
!83 = !DILocation(line: 37, column: 18, scope: !77)
!84 = !DILocation(line: 37, column: 26, scope: !77)
!85 = !DILocation(line: 40, column: 13, scope: !86)
!86 = distinct !DILexicalBlock(scope: !77, file: !1, line: 40, column: 13)
!87 = !DILocation(line: 40, column: 22, scope: !86)
!88 = !DILocation(line: 40, column: 30, scope: !86)
!89 = !DILocation(line: 40, column: 13, scope: !77)
!90 = !DILocation(line: 41, column: 13, scope: !91)
!91 = distinct !DILexicalBlock(scope: !86, file: !1, line: 40, column: 39)
!92 = !DILocation(line: 44, column: 13, scope: !91)
!93 = !DILocation(line: 47, column: 16, scope: !77)
!94 = !DILocation(line: 47, column: 25, scope: !77)
!95 = !DILocation(line: 47, column: 9, scope: !77)
!96 = !DILocation(line: 48, column: 13, scope: !77)
!97 = !DILocation(line: 48, column: 22, scope: !77)
!98 = !DILocation(line: 48, column: 34, scope: !77)
!99 = !DILocation(line: 52, column: 9, scope: !77)
!100 = !DILocation(line: 55, column: 9, scope: !77)
!101 = !DILocation(line: 57, column: 5, scope: !77)
!102 = !DILocation(line: 57, column: 16, scope: !103)
!103 = distinct !DILexicalBlock(scope: !72, file: !1, line: 57, column: 16)
!104 = !DILocation(line: 57, column: 23, scope: !103)
!105 = !DILocation(line: 57, column: 32, scope: !103)
!106 = !DILocation(line: 57, column: 20, scope: !103)
!107 = !DILocation(line: 57, column: 16, scope: !72)
!108 = !DILocalVariable(name: "i", scope: !109, file: !1, line: 58, type: !59)
!109 = distinct !DILexicalBlock(scope: !103, file: !1, line: 57, column: 45)
!110 = !DILocation(line: 58, column: 13, scope: !109)
!111 = !DILocation(line: 58, column: 17, scope: !109)
!112 = !DILocation(line: 58, column: 26, scope: !109)
!113 = !DILocation(line: 59, column: 9, scope: !109)
!114 = !DILocation(line: 59, column: 18, scope: !109)
!115 = !DILocation(line: 59, column: 30, scope: !109)
!116 = !DILocation(line: 61, column: 24, scope: !109)
!117 = !DILocation(line: 61, column: 33, scope: !109)
!118 = !DILocation(line: 62, column: 13, scope: !109)
!119 = !DILocation(line: 62, column: 22, scope: !109)
!120 = !DILocation(line: 62, column: 34, scope: !109)
!121 = !DILocation(line: 61, column: 13, scope: !109)
!122 = !DILocation(line: 60, column: 28, scope: !109)
!123 = !DILocation(line: 60, column: 9, scope: !109)
!124 = !DILocation(line: 60, column: 18, scope: !109)
!125 = !DILocation(line: 60, column: 26, scope: !109)
!126 = !DILocation(line: 64, column: 5, scope: !109)
!127 = !DILocation(line: 65, column: 5, scope: !56)
!128 = !DILocation(line: 66, column: 1, scope: !56)
!129 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 68, type: !130, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!130 = !DISubroutineType(types: !131)
!131 = !{!59}
!132 = !DILocalVariable(name: "matcher", scope: !129, file: !1, line: 69, type: !61)
!133 = !DILocation(line: 69, column: 29, scope: !129)
!134 = !DILocation(line: 72, column: 33, scope: !129)
!135 = !DILocation(line: 72, column: 24, scope: !129)
!136 = !DILocation(line: 72, column: 5, scope: !129)
!137 = !DILocation(line: 73, column: 33, scope: !129)
!138 = !DILocation(line: 73, column: 24, scope: !129)
!139 = !DILocation(line: 73, column: 5, scope: !129)
!140 = !DILocation(line: 76, column: 13, scope: !129)
!141 = !DILocation(line: 76, column: 21, scope: !129)
!142 = !DILocation(line: 79, column: 25, scope: !129)
!143 = !DILocation(line: 79, column: 37, scope: !129)
!144 = !DILocation(line: 79, column: 17, scope: !129)
!145 = !DILocation(line: 79, column: 5, scope: !129)
!146 = !DILocation(line: 80, column: 25, scope: !129)
!147 = !DILocation(line: 80, column: 37, scope: !129)
!148 = !DILocation(line: 80, column: 17, scope: !129)
!149 = !DILocation(line: 80, column: 5, scope: !129)
!150 = !DILocation(line: 83, column: 25, scope: !129)
!151 = !DILocation(line: 83, column: 35, scope: !129)
!152 = !DILocation(line: 83, column: 17, scope: !129)
!153 = !DILocation(line: 83, column: 5, scope: !129)
!154 = !DILocalVariable(name: "pos", scope: !129, file: !1, line: 86, type: !59)
!155 = !DILocation(line: 86, column: 9, scope: !129)
!156 = !DILocation(line: 87, column: 24, scope: !129)
!157 = !DILocation(line: 87, column: 5, scope: !129)
!158 = !DILocation(line: 90, column: 17, scope: !129)
!159 = !DILocation(line: 90, column: 31, scope: !129)
!160 = !DILocation(line: 90, column: 21, scope: !129)
!161 = !DILocation(line: 90, column: 5, scope: !129)
!162 = !DILocalVariable(name: "result", scope: !129, file: !1, line: 93, type: !59)
!163 = !DILocation(line: 93, column: 9, scope: !129)
!164 = !DILocation(line: 93, column: 44, scope: !129)
!165 = !DILocation(line: 93, column: 18, scope: !129)
!166 = !DILocation(line: 96, column: 17, scope: !167)
!167 = distinct !DILexicalBlock(scope: !129, file: !1, line: 96, column: 9)
!168 = !DILocation(line: 96, column: 25, scope: !167)
!169 = !DILocation(line: 96, column: 9, scope: !129)
!170 = !DILocation(line: 97, column: 22, scope: !171)
!171 = distinct !DILexicalBlock(scope: !167, file: !1, line: 96, column: 34)
!172 = !DILocation(line: 97, column: 14, scope: !171)
!173 = !DILocation(line: 97, column: 9, scope: !171)
!174 = !DILocation(line: 98, column: 5, scope: !171)
!175 = !DILocation(line: 100, column: 5, scope: !129)
!176 = distinct !DISubprogram(name: "memset", scope: !177, file: !177, line: 12, type: !178, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !26)
!177 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!178 = !DISubroutineType(types: !179)
!179 = !{!3, !3, !59, !23}
!180 = !DILocalVariable(name: "dst", arg: 1, scope: !176, file: !177, line: 12, type: !3)
!181 = !DILocation(line: 12, column: 20, scope: !176)
!182 = !DILocalVariable(name: "s", arg: 2, scope: !176, file: !177, line: 12, type: !59)
!183 = !DILocation(line: 12, column: 29, scope: !176)
!184 = !DILocalVariable(name: "count", arg: 3, scope: !176, file: !177, line: 12, type: !23)
!185 = !DILocation(line: 12, column: 39, scope: !176)
!186 = !DILocalVariable(name: "a", scope: !176, file: !177, line: 13, type: !187)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!188 = !DILocation(line: 13, column: 9, scope: !176)
!189 = !DILocation(line: 13, column: 13, scope: !176)
!190 = !DILocation(line: 14, column: 3, scope: !176)
!191 = !DILocation(line: 14, column: 15, scope: !176)
!192 = !DILocation(line: 14, column: 18, scope: !176)
!193 = !DILocation(line: 15, column: 12, scope: !176)
!194 = !DILocation(line: 15, column: 7, scope: !176)
!195 = !DILocation(line: 15, column: 10, scope: !176)
!196 = distinct !{!196, !190, !193, !197}
!197 = !{!"llvm.loop.mustprogress"}
!198 = !DILocation(line: 16, column: 10, scope: !176)
!199 = !DILocation(line: 16, column: 3, scope: !176)

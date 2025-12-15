; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/023_encoding.c_1151_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/023_encoding.c_1151_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.xmlCharEncodingAlias = type { i8*, i8* }

@xmlCharEncodingAliases = dso_local global %struct.xmlCharEncodingAlias* null, align 8, !dbg !0
@xmlCharEncodingAliasesNb = dso_local global i32 0, align 4, !dbg !16
@.str = private unnamed_addr constant [6 x i8] c"alias\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"array_size\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"alias_str\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"(0 < array_size) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [107 x i8] c"se_runs/sa_llm/libxml2_55980_vul/023_encoding.c_1151_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !29 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !34, metadata !DIExpression()), !dbg !35
  %3 = load i8*, i8** %2, align 8, !dbg !36
  call void @free(i8* noundef %3) #8, !dbg !37
  ret void, !dbg !38
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !39 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [256 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !42, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !44, metadata !DIExpression()), !dbg !48
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !49
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 256, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)), !dbg !50
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 255, !dbg !51
  %11 = load i8, i8* %10, align 1, !dbg !51
  %12 = sext i8 %11 to i32, !dbg !51
  %13 = icmp eq i32 %12, 0, !dbg !52
  %14 = zext i1 %13 to i32, !dbg !52
  %15 = sext i32 %14 to i64, !dbg !51
  call void @klee_assume(i64 noundef %15), !dbg !53
  call void @llvm.dbg.declare(metadata i32* %4, metadata !54, metadata !DIExpression()), !dbg !55
  %16 = bitcast i32* %4 to i8*, !dbg !56
  call void @klee_make_symbolic(i8* noundef %16, i64 noundef 4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)), !dbg !57
  %17 = load i32, i32* %4, align 4, !dbg !58
  %18 = icmp sge i32 %17, 0, !dbg !59
  br i1 %18, label %19, label %22, !dbg !60

19:                                               ; preds = %0
  %20 = load i32, i32* %4, align 4, !dbg !61
  %21 = icmp sle i32 %20, 100, !dbg !62
  br label %22

22:                                               ; preds = %19, %0
  %23 = phi i1 [ false, %0 ], [ %21, %19 ], !dbg !63
  %24 = zext i1 %23 to i32, !dbg !60
  %25 = sext i32 %24 to i64, !dbg !58
  call void @klee_assume(i64 noundef %25), !dbg !64
  %26 = load i32, i32* %4, align 4, !dbg !65
  store i32 %26, i32* @xmlCharEncodingAliasesNb, align 4, !dbg !66
  %27 = load i32, i32* %4, align 4, !dbg !67
  %28 = icmp sgt i32 %27, 0, !dbg !69
  br i1 %28, label %29, label %88, !dbg !70

29:                                               ; preds = %22
  %30 = load i32, i32* %4, align 4, !dbg !71
  %31 = sext i32 %30 to i64, !dbg !71
  %32 = mul i64 16, %31, !dbg !73
  %33 = call noalias i8* @malloc(i64 noundef %32) #8, !dbg !74
  %34 = bitcast i8* %33 to %struct.xmlCharEncodingAlias*, !dbg !75
  store %struct.xmlCharEncodingAlias* %34, %struct.xmlCharEncodingAlias** @xmlCharEncodingAliases, align 8, !dbg !76
  store i32 0, i32* %2, align 4, !dbg !77
  br label %35, !dbg !79

35:                                               ; preds = %70, %29
  %36 = load i32, i32* %2, align 4, !dbg !80
  %37 = load i32, i32* %4, align 4, !dbg !82
  %38 = icmp slt i32 %36, %37, !dbg !83
  br i1 %38, label %39, label %73, !dbg !84

39:                                               ; preds = %35
  call void @llvm.dbg.declare(metadata i8** %5, metadata !85, metadata !DIExpression()), !dbg !87
  %40 = call noalias i8* @malloc(i64 noundef 256) #8, !dbg !88
  store i8* %40, i8** %5, align 8, !dbg !87
  call void @llvm.dbg.declare(metadata i8** %6, metadata !89, metadata !DIExpression()), !dbg !90
  %41 = call noalias i8* @malloc(i64 noundef 256) #8, !dbg !91
  store i8* %41, i8** %6, align 8, !dbg !90
  %42 = load i8*, i8** %5, align 8, !dbg !92
  call void @klee_make_symbolic(i8* noundef %42, i64 noundef 256, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !dbg !93
  %43 = load i8*, i8** %6, align 8, !dbg !94
  call void @klee_make_symbolic(i8* noundef %43, i64 noundef 256, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)), !dbg !95
  %44 = load i8*, i8** %5, align 8, !dbg !96
  %45 = getelementptr inbounds i8, i8* %44, i64 255, !dbg !96
  %46 = load i8, i8* %45, align 1, !dbg !96
  %47 = sext i8 %46 to i32, !dbg !96
  %48 = icmp eq i32 %47, 0, !dbg !97
  %49 = zext i1 %48 to i32, !dbg !97
  %50 = sext i32 %49 to i64, !dbg !96
  call void @klee_assume(i64 noundef %50), !dbg !98
  %51 = load i8*, i8** %6, align 8, !dbg !99
  %52 = getelementptr inbounds i8, i8* %51, i64 255, !dbg !99
  %53 = load i8, i8* %52, align 1, !dbg !99
  %54 = sext i8 %53 to i32, !dbg !99
  %55 = icmp eq i32 %54, 0, !dbg !100
  %56 = zext i1 %55 to i32, !dbg !100
  %57 = sext i32 %56 to i64, !dbg !99
  call void @klee_assume(i64 noundef %57), !dbg !101
  %58 = load i8*, i8** %5, align 8, !dbg !102
  %59 = load %struct.xmlCharEncodingAlias*, %struct.xmlCharEncodingAlias** @xmlCharEncodingAliases, align 8, !dbg !103
  %60 = load i32, i32* %2, align 4, !dbg !104
  %61 = sext i32 %60 to i64, !dbg !103
  %62 = getelementptr inbounds %struct.xmlCharEncodingAlias, %struct.xmlCharEncodingAlias* %59, i64 %61, !dbg !103
  %63 = getelementptr inbounds %struct.xmlCharEncodingAlias, %struct.xmlCharEncodingAlias* %62, i32 0, i32 0, !dbg !105
  store i8* %58, i8** %63, align 8, !dbg !106
  %64 = load i8*, i8** %6, align 8, !dbg !107
  %65 = load %struct.xmlCharEncodingAlias*, %struct.xmlCharEncodingAlias** @xmlCharEncodingAliases, align 8, !dbg !108
  %66 = load i32, i32* %2, align 4, !dbg !109
  %67 = sext i32 %66 to i64, !dbg !108
  %68 = getelementptr inbounds %struct.xmlCharEncodingAlias, %struct.xmlCharEncodingAlias* %65, i64 %67, !dbg !108
  %69 = getelementptr inbounds %struct.xmlCharEncodingAlias, %struct.xmlCharEncodingAlias* %68, i32 0, i32 1, !dbg !110
  store i8* %64, i8** %69, align 8, !dbg !111
  br label %70, !dbg !112

70:                                               ; preds = %39
  %71 = load i32, i32* %2, align 4, !dbg !113
  %72 = add nsw i32 %71, 1, !dbg !113
  store i32 %72, i32* %2, align 4, !dbg !113
  br label %35, !dbg !114, !llvm.loop !115

73:                                               ; preds = %35
  %74 = load i32, i32* %4, align 4, !dbg !118
  %75 = icmp sgt i32 %74, 0, !dbg !120
  br i1 %75, label %76, label %87, !dbg !121

76:                                               ; preds = %73
  %77 = load %struct.xmlCharEncodingAlias*, %struct.xmlCharEncodingAlias** @xmlCharEncodingAliases, align 8, !dbg !122
  %78 = getelementptr inbounds %struct.xmlCharEncodingAlias, %struct.xmlCharEncodingAlias* %77, i64 0, !dbg !122
  %79 = getelementptr inbounds %struct.xmlCharEncodingAlias, %struct.xmlCharEncodingAlias* %78, i32 0, i32 1, !dbg !124
  %80 = load i8*, i8** %79, align 8, !dbg !124
  call void @free(i8* noundef %80) #8, !dbg !125
  call void @llvm.dbg.declare(metadata i8** %7, metadata !126, metadata !DIExpression()), !dbg !127
  %81 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !128
  %82 = call noalias i8* @strdup(i8* noundef %81) #8, !dbg !129
  store i8* %82, i8** %7, align 8, !dbg !127
  %83 = load i8*, i8** %7, align 8, !dbg !130
  %84 = load %struct.xmlCharEncodingAlias*, %struct.xmlCharEncodingAlias** @xmlCharEncodingAliases, align 8, !dbg !131
  %85 = getelementptr inbounds %struct.xmlCharEncodingAlias, %struct.xmlCharEncodingAlias* %84, i64 0, !dbg !131
  %86 = getelementptr inbounds %struct.xmlCharEncodingAlias, %struct.xmlCharEncodingAlias* %85, i32 0, i32 1, !dbg !132
  store i8* %83, i8** %86, align 8, !dbg !133
  br label %87, !dbg !134

87:                                               ; preds = %76, %73
  br label %88, !dbg !135

88:                                               ; preds = %87, %22
  call void @llvm.dbg.declare(metadata i32* %8, metadata !136, metadata !DIExpression()), !dbg !137
  %89 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !138
  %90 = call i32 @xmlDelEncodingAlias(i8* noundef %89), !dbg !139
  store i32 %90, i32* %8, align 4, !dbg !137
  %91 = load i32, i32* %8, align 4, !dbg !140
  %92 = icmp eq i32 %91, 0, !dbg !142
  br i1 %92, label %93, label %102, !dbg !143

93:                                               ; preds = %88
  %94 = load i32, i32* %4, align 4, !dbg !144
  %95 = icmp slt i32 0, %94, !dbg !144
  br i1 %95, label %96, label %98, !dbg !144

96:                                               ; preds = %93
  br i1 true, label %97, label %98, !dbg !144

97:                                               ; preds = %96
  br label %100, !dbg !144

98:                                               ; preds = %96, %93
  %99 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.6, i64 0, i64 0), i32 noundef 90, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !144
  br label %100, !dbg !144

100:                                              ; preds = %98, %97
  %101 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.6, i64 0, i64 0), i32 noundef 93, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !146
  br label %102, !dbg !147

102:                                              ; preds = %100, %88
  %103 = load %struct.xmlCharEncodingAlias*, %struct.xmlCharEncodingAlias** @xmlCharEncodingAliases, align 8, !dbg !148
  %104 = icmp ne %struct.xmlCharEncodingAlias* %103, null, !dbg !148
  br i1 %104, label %105, label %129, !dbg !150

105:                                              ; preds = %102
  store i32 0, i32* %2, align 4, !dbg !151
  br label %106, !dbg !154

106:                                              ; preds = %123, %105
  %107 = load i32, i32* %2, align 4, !dbg !155
  %108 = load i32, i32* %4, align 4, !dbg !157
  %109 = icmp slt i32 %107, %108, !dbg !158
  br i1 %109, label %110, label %126, !dbg !159

110:                                              ; preds = %106
  %111 = load %struct.xmlCharEncodingAlias*, %struct.xmlCharEncodingAlias** @xmlCharEncodingAliases, align 8, !dbg !160
  %112 = load i32, i32* %2, align 4, !dbg !162
  %113 = sext i32 %112 to i64, !dbg !160
  %114 = getelementptr inbounds %struct.xmlCharEncodingAlias, %struct.xmlCharEncodingAlias* %111, i64 %113, !dbg !160
  %115 = getelementptr inbounds %struct.xmlCharEncodingAlias, %struct.xmlCharEncodingAlias* %114, i32 0, i32 0, !dbg !163
  %116 = load i8*, i8** %115, align 8, !dbg !163
  call void @free(i8* noundef %116) #8, !dbg !164
  %117 = load %struct.xmlCharEncodingAlias*, %struct.xmlCharEncodingAlias** @xmlCharEncodingAliases, align 8, !dbg !165
  %118 = load i32, i32* %2, align 4, !dbg !166
  %119 = sext i32 %118 to i64, !dbg !165
  %120 = getelementptr inbounds %struct.xmlCharEncodingAlias, %struct.xmlCharEncodingAlias* %117, i64 %119, !dbg !165
  %121 = getelementptr inbounds %struct.xmlCharEncodingAlias, %struct.xmlCharEncodingAlias* %120, i32 0, i32 1, !dbg !167
  %122 = load i8*, i8** %121, align 8, !dbg !167
  call void @free(i8* noundef %122) #8, !dbg !168
  br label %123, !dbg !169

123:                                              ; preds = %110
  %124 = load i32, i32* %2, align 4, !dbg !170
  %125 = add nsw i32 %124, 1, !dbg !170
  store i32 %125, i32* %2, align 4, !dbg !170
  br label %106, !dbg !171, !llvm.loop !172

126:                                              ; preds = %106
  %127 = load %struct.xmlCharEncodingAlias*, %struct.xmlCharEncodingAlias** @xmlCharEncodingAliases, align 8, !dbg !174
  %128 = bitcast %struct.xmlCharEncodingAlias* %127 to i8*, !dbg !174
  call void @free(i8* noundef %128) #8, !dbg !175
  br label %129, !dbg !176

129:                                              ; preds = %126, %102
  ret i32 0, !dbg !177
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @strdup(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlDelEncodingAlias(i8* noundef %0) #0 !dbg !178 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !181, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.declare(metadata i32* %4, metadata !183, metadata !DIExpression()), !dbg !184
  store i32 0, i32* %4, align 4, !dbg !185
  br label %5, !dbg !187

5:                                                ; preds = %52, %1
  %6 = load i32, i32* %4, align 4, !dbg !188
  %7 = load i32, i32* @xmlCharEncodingAliasesNb, align 4, !dbg !190
  %8 = icmp slt i32 %6, %7, !dbg !191
  br i1 %8, label %9, label %55, !dbg !192

9:                                                ; preds = %5
  %10 = load %struct.xmlCharEncodingAlias*, %struct.xmlCharEncodingAlias** @xmlCharEncodingAliases, align 8, !dbg !193
  %11 = load i32, i32* %4, align 4, !dbg !196
  %12 = sext i32 %11 to i64, !dbg !193
  %13 = getelementptr inbounds %struct.xmlCharEncodingAlias, %struct.xmlCharEncodingAlias* %10, i64 %12, !dbg !193
  %14 = getelementptr inbounds %struct.xmlCharEncodingAlias, %struct.xmlCharEncodingAlias* %13, i32 0, i32 1, !dbg !197
  %15 = load i8*, i8** %14, align 8, !dbg !197
  %16 = load i8*, i8** %3, align 8, !dbg !198
  %17 = call i32 @strcmp(i8* noundef %15, i8* noundef %16) #9, !dbg !199
  %18 = icmp ne i32 %17, 0, !dbg !199
  br i1 %18, label %51, label %19, !dbg !200

19:                                               ; preds = %9
  %20 = load %struct.xmlCharEncodingAlias*, %struct.xmlCharEncodingAlias** @xmlCharEncodingAliases, align 8, !dbg !201
  %21 = load i32, i32* %4, align 4, !dbg !203
  %22 = sext i32 %21 to i64, !dbg !201
  %23 = getelementptr inbounds %struct.xmlCharEncodingAlias, %struct.xmlCharEncodingAlias* %20, i64 %22, !dbg !201
  %24 = getelementptr inbounds %struct.xmlCharEncodingAlias, %struct.xmlCharEncodingAlias* %23, i32 0, i32 0, !dbg !204
  %25 = load i8*, i8** %24, align 8, !dbg !204
  call void @xmlFree(i8* noundef %25), !dbg !205
  %26 = load %struct.xmlCharEncodingAlias*, %struct.xmlCharEncodingAlias** @xmlCharEncodingAliases, align 8, !dbg !206
  %27 = load i32, i32* %4, align 4, !dbg !207
  %28 = sext i32 %27 to i64, !dbg !206
  %29 = getelementptr inbounds %struct.xmlCharEncodingAlias, %struct.xmlCharEncodingAlias* %26, i64 %28, !dbg !206
  %30 = getelementptr inbounds %struct.xmlCharEncodingAlias, %struct.xmlCharEncodingAlias* %29, i32 0, i32 1, !dbg !208
  %31 = load i8*, i8** %30, align 8, !dbg !208
  call void @xmlFree(i8* noundef %31), !dbg !209
  %32 = load i32, i32* @xmlCharEncodingAliasesNb, align 4, !dbg !210
  %33 = add nsw i32 %32, -1, !dbg !210
  store i32 %33, i32* @xmlCharEncodingAliasesNb, align 4, !dbg !210
  %34 = load %struct.xmlCharEncodingAlias*, %struct.xmlCharEncodingAlias** @xmlCharEncodingAliases, align 8, !dbg !211
  %35 = load i32, i32* %4, align 4, !dbg !212
  %36 = sext i32 %35 to i64, !dbg !211
  %37 = getelementptr inbounds %struct.xmlCharEncodingAlias, %struct.xmlCharEncodingAlias* %34, i64 %36, !dbg !211
  %38 = bitcast %struct.xmlCharEncodingAlias* %37 to i8*, !dbg !213
  %39 = load %struct.xmlCharEncodingAlias*, %struct.xmlCharEncodingAlias** @xmlCharEncodingAliases, align 8, !dbg !214
  %40 = load i32, i32* %4, align 4, !dbg !215
  %41 = add nsw i32 %40, 1, !dbg !216
  %42 = sext i32 %41 to i64, !dbg !214
  %43 = getelementptr inbounds %struct.xmlCharEncodingAlias, %struct.xmlCharEncodingAlias* %39, i64 %42, !dbg !214
  %44 = bitcast %struct.xmlCharEncodingAlias* %43 to i8*, !dbg !213
  %45 = load i32, i32* @xmlCharEncodingAliasesNb, align 4, !dbg !217
  %46 = load i32, i32* %4, align 4, !dbg !218
  %47 = sub nsw i32 %45, %46, !dbg !219
  %48 = sext i32 %47 to i64, !dbg !220
  %49 = mul i64 16, %48, !dbg !221
  %50 = call i8* @memmove(i8* %38, i8* %44, i64 %49), !dbg !213
  store i32 0, i32* %2, align 4, !dbg !222
  br label %56, !dbg !222

51:                                               ; preds = %9
  br label %52, !dbg !223

52:                                               ; preds = %51
  %53 = load i32, i32* %4, align 4, !dbg !224
  %54 = add nsw i32 %53, 1, !dbg !224
  store i32 %54, i32* %4, align 4, !dbg !224
  br label %5, !dbg !225, !llvm.loop !226

55:                                               ; preds = %5
  store i32 -1, i32* %2, align 4, !dbg !228
  br label %56, !dbg !228

56:                                               ; preds = %55, %19
  %57 = load i32, i32* %2, align 4, !dbg !229
  ret i32 %57, !dbg !229
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memmove(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !230 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !239, metadata !DIExpression()), !dbg !240
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !241, metadata !DIExpression()), !dbg !242
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !243, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.declare(metadata i8** %8, metadata !245, metadata !DIExpression()), !dbg !246
  %10 = load i8*, i8** %5, align 8, !dbg !247
  store i8* %10, i8** %8, align 8, !dbg !246
  call void @llvm.dbg.declare(metadata i8** %9, metadata !248, metadata !DIExpression()), !dbg !249
  %11 = load i8*, i8** %6, align 8, !dbg !250
  store i8* %11, i8** %9, align 8, !dbg !249
  %12 = load i8*, i8** %6, align 8, !dbg !251
  %13 = load i8*, i8** %5, align 8, !dbg !253
  %14 = icmp eq i8* %12, %13, !dbg !254
  br i1 %14, label %15, label %17, !dbg !255

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8, !dbg !256
  store i8* %16, i8** %4, align 8, !dbg !257
  br label %52, !dbg !257

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8, !dbg !258
  %19 = load i8*, i8** %5, align 8, !dbg !260
  %20 = icmp ugt i8* %18, %19, !dbg !261
  br i1 %20, label %21, label %31, !dbg !262

21:                                               ; preds = %17, %25
  %22 = load i64, i64* %7, align 8, !dbg !263
  %23 = add i64 %22, -1, !dbg !263
  store i64 %23, i64* %7, align 8, !dbg !263
  %24 = icmp ne i64 %22, 0, !dbg !265
  br i1 %24, label %25, label %50, !dbg !265

25:                                               ; preds = %21
  %26 = load i8*, i8** %9, align 8, !dbg !266
  %27 = getelementptr inbounds i8, i8* %26, i32 1, !dbg !266
  store i8* %27, i8** %9, align 8, !dbg !266
  %28 = load i8, i8* %26, align 1, !dbg !267
  %29 = load i8*, i8** %8, align 8, !dbg !268
  %30 = getelementptr inbounds i8, i8* %29, i32 1, !dbg !268
  store i8* %30, i8** %8, align 8, !dbg !268
  store i8 %28, i8* %29, align 1, !dbg !269
  br label %21, !dbg !265, !llvm.loop !270

31:                                               ; preds = %17
  %32 = load i64, i64* %7, align 8, !dbg !271
  %33 = sub i64 %32, 1, !dbg !273
  %34 = load i8*, i8** %8, align 8, !dbg !274
  %35 = getelementptr inbounds i8, i8* %34, i64 %33, !dbg !274
  store i8* %35, i8** %8, align 8, !dbg !274
  %36 = load i64, i64* %7, align 8, !dbg !275
  %37 = sub i64 %36, 1, !dbg !276
  %38 = load i8*, i8** %9, align 8, !dbg !277
  %39 = getelementptr inbounds i8, i8* %38, i64 %37, !dbg !277
  store i8* %39, i8** %9, align 8, !dbg !277
  br label %40, !dbg !278

40:                                               ; preds = %44, %31
  %41 = load i64, i64* %7, align 8, !dbg !279
  %42 = add i64 %41, -1, !dbg !279
  store i64 %42, i64* %7, align 8, !dbg !279
  %43 = icmp ne i64 %41, 0, !dbg !278
  br i1 %43, label %44, label %50, !dbg !278

44:                                               ; preds = %40
  %45 = load i8*, i8** %9, align 8, !dbg !280
  %46 = getelementptr inbounds i8, i8* %45, i32 -1, !dbg !280
  store i8* %46, i8** %9, align 8, !dbg !280
  %47 = load i8, i8* %45, align 1, !dbg !281
  %48 = load i8*, i8** %8, align 8, !dbg !282
  %49 = getelementptr inbounds i8, i8* %48, i32 -1, !dbg !282
  store i8* %49, i8** %8, align 8, !dbg !282
  store i8 %47, i8* %48, align 1, !dbg !283
  br label %40, !dbg !278, !llvm.loop !284

50:                                               ; preds = %40, %21
  %51 = load i8*, i8** %5, align 8, !dbg !285
  store i8* %51, i8** %4, align 8, !dbg !286
  br label %52, !dbg !286

52:                                               ; preds = %50, %15
  %53 = load i8*, i8** %4, align 8, !dbg !287
  ret i8* %53, !dbg !287
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28, !28}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "xmlCharEncodingAliases", scope: !2, file: !3, line: 16, type: !5, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !15, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/023_encoding.c_1151_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "36ec8e82266afe4dc09106ae0add631b")
!4 = !{!5, !14}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingAlias", file: !3, line: 13, baseType: !7)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 10, size: 128, elements: !8)
!8 = !{!9, !13}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !7, file: !3, line: 11, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !7, file: !3, line: 12, baseType: !10, size: 64, offset: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!15 = !{!0, !16}
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "xmlCharEncodingAliasesNb", scope: !2, file: !3, line: 17, type: !18, isLocal: false, isDefinition: true)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = distinct !DICompileUnit(language: DW_LANG_C99, file: !20, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!20 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memmove.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "6cd27189cdce56ce74ae860a315e13f2")
!21 = !{i32 7, !"Dwarf Version", i32 5}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 1, !"wchar_size", i32 4}
!24 = !{i32 7, !"PIC Level", i32 2}
!25 = !{i32 7, !"PIE Level", i32 2}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"Ubuntu clang version 14.0.6"}
!29 = distinct !DISubprogram(name: "xmlFree", scope: !3, file: !3, line: 20, type: !30, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !33)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !32}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = !{}
!34 = !DILocalVariable(name: "ptr", arg: 1, scope: !29, file: !3, line: 20, type: !32)
!35 = !DILocation(line: 20, column: 20, scope: !29)
!36 = !DILocation(line: 21, column: 10, scope: !29)
!37 = !DILocation(line: 21, column: 5, scope: !29)
!38 = !DILocation(line: 22, column: 1, scope: !29)
!39 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 28, type: !40, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !33)
!40 = !DISubroutineType(types: !41)
!41 = !{!18}
!42 = !DILocalVariable(name: "i", scope: !39, file: !3, line: 29, type: !18)
!43 = !DILocation(line: 29, column: 9, scope: !39)
!44 = !DILocalVariable(name: "alias", scope: !39, file: !3, line: 30, type: !45)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 2048, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 256)
!48 = !DILocation(line: 30, column: 10, scope: !39)
!49 = !DILocation(line: 33, column: 24, scope: !39)
!50 = !DILocation(line: 33, column: 5, scope: !39)
!51 = !DILocation(line: 35, column: 17, scope: !39)
!52 = !DILocation(line: 35, column: 28, scope: !39)
!53 = !DILocation(line: 35, column: 5, scope: !39)
!54 = !DILocalVariable(name: "array_size", scope: !39, file: !3, line: 38, type: !18)
!55 = !DILocation(line: 38, column: 9, scope: !39)
!56 = !DILocation(line: 39, column: 24, scope: !39)
!57 = !DILocation(line: 39, column: 5, scope: !39)
!58 = !DILocation(line: 41, column: 17, scope: !39)
!59 = !DILocation(line: 41, column: 28, scope: !39)
!60 = !DILocation(line: 41, column: 33, scope: !39)
!61 = !DILocation(line: 41, column: 36, scope: !39)
!62 = !DILocation(line: 41, column: 47, scope: !39)
!63 = !DILocation(line: 0, scope: !39)
!64 = !DILocation(line: 41, column: 5, scope: !39)
!65 = !DILocation(line: 43, column: 32, scope: !39)
!66 = !DILocation(line: 43, column: 30, scope: !39)
!67 = !DILocation(line: 44, column: 9, scope: !68)
!68 = distinct !DILexicalBlock(scope: !39, file: !3, line: 44, column: 9)
!69 = !DILocation(line: 44, column: 20, scope: !68)
!70 = !DILocation(line: 44, column: 9, scope: !39)
!71 = !DILocation(line: 46, column: 44, scope: !72)
!72 = distinct !DILexicalBlock(scope: !68, file: !3, line: 44, column: 25)
!73 = !DILocation(line: 46, column: 42, scope: !72)
!74 = !DILocation(line: 45, column: 57, scope: !72)
!75 = !DILocation(line: 45, column: 34, scope: !72)
!76 = !DILocation(line: 45, column: 32, scope: !72)
!77 = !DILocation(line: 49, column: 16, scope: !78)
!78 = distinct !DILexicalBlock(scope: !72, file: !3, line: 49, column: 9)
!79 = !DILocation(line: 49, column: 14, scope: !78)
!80 = !DILocation(line: 49, column: 21, scope: !81)
!81 = distinct !DILexicalBlock(scope: !78, file: !3, line: 49, column: 9)
!82 = !DILocation(line: 49, column: 25, scope: !81)
!83 = !DILocation(line: 49, column: 23, scope: !81)
!84 = !DILocation(line: 49, column: 9, scope: !78)
!85 = !DILocalVariable(name: "name", scope: !86, file: !3, line: 50, type: !14)
!86 = distinct !DILexicalBlock(scope: !81, file: !3, line: 49, column: 42)
!87 = !DILocation(line: 50, column: 19, scope: !86)
!88 = !DILocation(line: 50, column: 33, scope: !86)
!89 = !DILocalVariable(name: "alias_str", scope: !86, file: !3, line: 51, type: !14)
!90 = !DILocation(line: 51, column: 19, scope: !86)
!91 = !DILocation(line: 51, column: 38, scope: !86)
!92 = !DILocation(line: 53, column: 32, scope: !86)
!93 = !DILocation(line: 53, column: 13, scope: !86)
!94 = !DILocation(line: 54, column: 32, scope: !86)
!95 = !DILocation(line: 54, column: 13, scope: !86)
!96 = !DILocation(line: 57, column: 25, scope: !86)
!97 = !DILocation(line: 57, column: 35, scope: !86)
!98 = !DILocation(line: 57, column: 13, scope: !86)
!99 = !DILocation(line: 58, column: 25, scope: !86)
!100 = !DILocation(line: 58, column: 40, scope: !86)
!101 = !DILocation(line: 58, column: 13, scope: !86)
!102 = !DILocation(line: 60, column: 46, scope: !86)
!103 = !DILocation(line: 60, column: 13, scope: !86)
!104 = !DILocation(line: 60, column: 36, scope: !86)
!105 = !DILocation(line: 60, column: 39, scope: !86)
!106 = !DILocation(line: 60, column: 44, scope: !86)
!107 = !DILocation(line: 61, column: 47, scope: !86)
!108 = !DILocation(line: 61, column: 13, scope: !86)
!109 = !DILocation(line: 61, column: 36, scope: !86)
!110 = !DILocation(line: 61, column: 39, scope: !86)
!111 = !DILocation(line: 61, column: 45, scope: !86)
!112 = !DILocation(line: 62, column: 9, scope: !86)
!113 = !DILocation(line: 49, column: 38, scope: !81)
!114 = !DILocation(line: 49, column: 9, scope: !81)
!115 = distinct !{!115, !84, !116, !117}
!116 = !DILocation(line: 62, column: 9, scope: !78)
!117 = !{!"llvm.loop.mustprogress"}
!118 = !DILocation(line: 65, column: 13, scope: !119)
!119 = distinct !DILexicalBlock(scope: !72, file: !3, line: 65, column: 13)
!120 = !DILocation(line: 65, column: 24, scope: !119)
!121 = !DILocation(line: 65, column: 13, scope: !72)
!122 = !DILocation(line: 68, column: 25, scope: !123)
!123 = distinct !DILexicalBlock(scope: !119, file: !3, line: 65, column: 29)
!124 = !DILocation(line: 68, column: 51, scope: !123)
!125 = !DILocation(line: 68, column: 13, scope: !123)
!126 = !DILocalVariable(name: "matching_alias", scope: !123, file: !3, line: 70, type: !14)
!127 = !DILocation(line: 70, column: 19, scope: !123)
!128 = !DILocation(line: 70, column: 43, scope: !123)
!129 = !DILocation(line: 70, column: 36, scope: !123)
!130 = !DILocation(line: 71, column: 47, scope: !123)
!131 = !DILocation(line: 71, column: 13, scope: !123)
!132 = !DILocation(line: 71, column: 39, scope: !123)
!133 = !DILocation(line: 71, column: 45, scope: !123)
!134 = !DILocation(line: 72, column: 9, scope: !123)
!135 = !DILocation(line: 73, column: 5, scope: !72)
!136 = !DILocalVariable(name: "result", scope: !39, file: !3, line: 76, type: !18)
!137 = !DILocation(line: 76, column: 9, scope: !39)
!138 = !DILocation(line: 76, column: 38, scope: !39)
!139 = !DILocation(line: 76, column: 18, scope: !39)
!140 = !DILocation(line: 83, column: 9, scope: !141)
!141 = distinct !DILexicalBlock(scope: !39, file: !3, line: 83, column: 9)
!142 = !DILocation(line: 83, column: 16, scope: !141)
!143 = !DILocation(line: 83, column: 9, scope: !39)
!144 = !DILocation(line: 90, column: 9, scope: !145)
!145 = distinct !DILexicalBlock(scope: !141, file: !3, line: 83, column: 22)
!146 = !DILocation(line: 93, column: 9, scope: !145)
!147 = !DILocation(line: 94, column: 5, scope: !145)
!148 = !DILocation(line: 97, column: 9, scope: !149)
!149 = distinct !DILexicalBlock(scope: !39, file: !3, line: 97, column: 9)
!150 = !DILocation(line: 97, column: 9, scope: !39)
!151 = !DILocation(line: 98, column: 16, scope: !152)
!152 = distinct !DILexicalBlock(scope: !153, file: !3, line: 98, column: 9)
!153 = distinct !DILexicalBlock(scope: !149, file: !3, line: 97, column: 33)
!154 = !DILocation(line: 98, column: 14, scope: !152)
!155 = !DILocation(line: 98, column: 21, scope: !156)
!156 = distinct !DILexicalBlock(scope: !152, file: !3, line: 98, column: 9)
!157 = !DILocation(line: 98, column: 25, scope: !156)
!158 = !DILocation(line: 98, column: 23, scope: !156)
!159 = !DILocation(line: 98, column: 9, scope: !152)
!160 = !DILocation(line: 99, column: 25, scope: !161)
!161 = distinct !DILexicalBlock(scope: !156, file: !3, line: 98, column: 42)
!162 = !DILocation(line: 99, column: 48, scope: !161)
!163 = !DILocation(line: 99, column: 51, scope: !161)
!164 = !DILocation(line: 99, column: 13, scope: !161)
!165 = !DILocation(line: 100, column: 25, scope: !161)
!166 = !DILocation(line: 100, column: 48, scope: !161)
!167 = !DILocation(line: 100, column: 51, scope: !161)
!168 = !DILocation(line: 100, column: 13, scope: !161)
!169 = !DILocation(line: 101, column: 9, scope: !161)
!170 = !DILocation(line: 98, column: 38, scope: !156)
!171 = !DILocation(line: 98, column: 9, scope: !156)
!172 = distinct !{!172, !159, !173, !117}
!173 = !DILocation(line: 101, column: 9, scope: !152)
!174 = !DILocation(line: 102, column: 14, scope: !153)
!175 = !DILocation(line: 102, column: 9, scope: !153)
!176 = !DILocation(line: 103, column: 5, scope: !153)
!177 = !DILocation(line: 105, column: 5, scope: !39)
!178 = distinct !DISubprogram(name: "xmlDelEncodingAlias", scope: !3, file: !3, line: 109, type: !179, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !33)
!179 = !DISubroutineType(types: !180)
!180 = !{!18, !10}
!181 = !DILocalVariable(name: "alias", arg: 1, scope: !178, file: !3, line: 109, type: !10)
!182 = !DILocation(line: 109, column: 37, scope: !178)
!183 = !DILocalVariable(name: "i", scope: !178, file: !3, line: 110, type: !18)
!184 = !DILocation(line: 110, column: 9, scope: !178)
!185 = !DILocation(line: 112, column: 12, scope: !186)
!186 = distinct !DILexicalBlock(scope: !178, file: !3, line: 112, column: 5)
!187 = !DILocation(line: 112, column: 10, scope: !186)
!188 = !DILocation(line: 112, column: 17, scope: !189)
!189 = distinct !DILexicalBlock(scope: !186, file: !3, line: 112, column: 5)
!190 = !DILocation(line: 112, column: 21, scope: !189)
!191 = !DILocation(line: 112, column: 19, scope: !189)
!192 = !DILocation(line: 112, column: 5, scope: !186)
!193 = !DILocation(line: 113, column: 21, scope: !194)
!194 = distinct !DILexicalBlock(scope: !195, file: !3, line: 113, column: 13)
!195 = distinct !DILexicalBlock(scope: !189, file: !3, line: 112, column: 52)
!196 = !DILocation(line: 113, column: 44, scope: !194)
!197 = !DILocation(line: 113, column: 47, scope: !194)
!198 = !DILocation(line: 113, column: 54, scope: !194)
!199 = !DILocation(line: 113, column: 14, scope: !194)
!200 = !DILocation(line: 113, column: 13, scope: !195)
!201 = !DILocation(line: 114, column: 30, scope: !202)
!202 = distinct !DILexicalBlock(scope: !194, file: !3, line: 113, column: 62)
!203 = !DILocation(line: 114, column: 53, scope: !202)
!204 = !DILocation(line: 114, column: 56, scope: !202)
!205 = !DILocation(line: 114, column: 13, scope: !202)
!206 = !DILocation(line: 115, column: 30, scope: !202)
!207 = !DILocation(line: 115, column: 53, scope: !202)
!208 = !DILocation(line: 115, column: 56, scope: !202)
!209 = !DILocation(line: 115, column: 13, scope: !202)
!210 = !DILocation(line: 116, column: 37, scope: !202)
!211 = !DILocation(line: 117, column: 22, scope: !202)
!212 = !DILocation(line: 117, column: 45, scope: !202)
!213 = !DILocation(line: 117, column: 13, scope: !202)
!214 = !DILocation(line: 117, column: 50, scope: !202)
!215 = !DILocation(line: 117, column: 73, scope: !202)
!216 = !DILocation(line: 117, column: 75, scope: !202)
!217 = !DILocation(line: 118, column: 53, scope: !202)
!218 = !DILocation(line: 118, column: 80, scope: !202)
!219 = !DILocation(line: 118, column: 78, scope: !202)
!220 = !DILocation(line: 118, column: 52, scope: !202)
!221 = !DILocation(line: 118, column: 50, scope: !202)
!222 = !DILocation(line: 119, column: 13, scope: !202)
!223 = !DILocation(line: 121, column: 5, scope: !195)
!224 = !DILocation(line: 112, column: 48, scope: !189)
!225 = !DILocation(line: 112, column: 5, scope: !189)
!226 = distinct !{!226, !192, !227, !117}
!227 = !DILocation(line: 121, column: 5, scope: !186)
!228 = !DILocation(line: 122, column: 5, scope: !178)
!229 = !DILocation(line: 123, column: 1, scope: !178)
!230 = distinct !DISubprogram(name: "memmove", scope: !231, file: !231, line: 12, type: !232, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !33)
!231 = !DIFile(filename: "runtime/Freestanding/memmove.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "6cd27189cdce56ce74ae860a315e13f2")
!232 = !DISubroutineType(types: !233)
!233 = !{!32, !32, !234, !236}
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !237, line: 46, baseType: !238)
!237 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!238 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!239 = !DILocalVariable(name: "dst", arg: 1, scope: !230, file: !231, line: 12, type: !32)
!240 = !DILocation(line: 12, column: 21, scope: !230)
!241 = !DILocalVariable(name: "src", arg: 2, scope: !230, file: !231, line: 12, type: !234)
!242 = !DILocation(line: 12, column: 38, scope: !230)
!243 = !DILocalVariable(name: "count", arg: 3, scope: !230, file: !231, line: 12, type: !236)
!244 = !DILocation(line: 12, column: 50, scope: !230)
!245 = !DILocalVariable(name: "a", scope: !230, file: !231, line: 13, type: !14)
!246 = !DILocation(line: 13, column: 9, scope: !230)
!247 = !DILocation(line: 13, column: 13, scope: !230)
!248 = !DILocalVariable(name: "b", scope: !230, file: !231, line: 14, type: !10)
!249 = !DILocation(line: 14, column: 15, scope: !230)
!250 = !DILocation(line: 14, column: 19, scope: !230)
!251 = !DILocation(line: 16, column: 7, scope: !252)
!252 = distinct !DILexicalBlock(scope: !230, file: !231, line: 16, column: 7)
!253 = !DILocation(line: 16, column: 14, scope: !252)
!254 = !DILocation(line: 16, column: 11, scope: !252)
!255 = !DILocation(line: 16, column: 7, scope: !230)
!256 = !DILocation(line: 17, column: 12, scope: !252)
!257 = !DILocation(line: 17, column: 5, scope: !252)
!258 = !DILocation(line: 19, column: 7, scope: !259)
!259 = distinct !DILexicalBlock(scope: !230, file: !231, line: 19, column: 7)
!260 = !DILocation(line: 19, column: 13, scope: !259)
!261 = !DILocation(line: 19, column: 11, scope: !259)
!262 = !DILocation(line: 19, column: 7, scope: !230)
!263 = !DILocation(line: 20, column: 17, scope: !264)
!264 = distinct !DILexicalBlock(scope: !259, file: !231, line: 19, column: 18)
!265 = !DILocation(line: 20, column: 5, scope: !264)
!266 = !DILocation(line: 21, column: 16, scope: !264)
!267 = !DILocation(line: 21, column: 14, scope: !264)
!268 = !DILocation(line: 21, column: 9, scope: !264)
!269 = !DILocation(line: 21, column: 12, scope: !264)
!270 = distinct !{!270, !265, !266, !117}
!271 = !DILocation(line: 23, column: 10, scope: !272)
!272 = distinct !DILexicalBlock(scope: !259, file: !231, line: 22, column: 10)
!273 = !DILocation(line: 23, column: 16, scope: !272)
!274 = !DILocation(line: 23, column: 7, scope: !272)
!275 = !DILocation(line: 24, column: 10, scope: !272)
!276 = !DILocation(line: 24, column: 16, scope: !272)
!277 = !DILocation(line: 24, column: 7, scope: !272)
!278 = !DILocation(line: 25, column: 5, scope: !272)
!279 = !DILocation(line: 25, column: 17, scope: !272)
!280 = !DILocation(line: 26, column: 16, scope: !272)
!281 = !DILocation(line: 26, column: 14, scope: !272)
!282 = !DILocation(line: 26, column: 9, scope: !272)
!283 = !DILocation(line: 26, column: 12, scope: !272)
!284 = distinct !{!284, !278, !280, !117}
!285 = !DILocation(line: 29, column: 10, scope: !230)
!286 = !DILocation(line: 29, column: 3, scope: !230)
!287 = !DILocation(line: 30, column: 1, scope: !230)

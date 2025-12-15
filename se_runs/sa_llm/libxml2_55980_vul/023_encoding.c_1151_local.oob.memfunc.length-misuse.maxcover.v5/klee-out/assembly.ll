; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/023_encoding.c_1151_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/023_encoding.c_1151_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.xmlCharEncodingAlias = type { i8*, i8* }

@xmlCharEncodingAliases = dso_local global %struct.xmlCharEncodingAlias* null, align 8, !dbg !0
@xmlCharEncodingAliasesNb = dso_local global i32 0, align 4, !dbg !17
@.str = private unnamed_addr constant [6 x i8] c"alias\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"array_size\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"name_buf\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"alias_buf\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"match_idx\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.6 = private unnamed_addr constant [133 x i8] c"(match_idx < array_size && match_idx + 1 < array_size && count >= 0 && count <= (array_size - match_idx - 1)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [107 x i8] c"se_runs/sa_llm/libxml2_55980_vul/023_encoding.c_1151_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !30 {
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
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !42, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !44, metadata !DIExpression()), !dbg !48
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !49
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 256, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)), !dbg !50
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 255, !dbg !51
  %13 = load i8, i8* %12, align 1, !dbg !51
  %14 = sext i8 %13 to i32, !dbg !51
  %15 = icmp eq i32 %14, 0, !dbg !52
  %16 = zext i1 %15 to i32, !dbg !52
  %17 = sext i32 %16 to i64, !dbg !51
  call void @klee_assume(i64 noundef %17), !dbg !53
  call void @llvm.dbg.declare(metadata i32* %4, metadata !54, metadata !DIExpression()), !dbg !55
  %18 = bitcast i32* %4 to i8*, !dbg !56
  call void @klee_make_symbolic(i8* noundef %18, i64 noundef 4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)), !dbg !57
  %19 = load i32, i32* %4, align 4, !dbg !58
  %20 = icmp sge i32 %19, 1, !dbg !59
  br i1 %20, label %21, label %24, !dbg !60

21:                                               ; preds = %0
  %22 = load i32, i32* %4, align 4, !dbg !61
  %23 = icmp sle i32 %22, 10, !dbg !62
  br label %24

24:                                               ; preds = %21, %0
  %25 = phi i1 [ false, %0 ], [ %23, %21 ], !dbg !63
  %26 = zext i1 %25 to i32, !dbg !60
  %27 = sext i32 %26 to i64, !dbg !58
  call void @klee_assume(i64 noundef %27), !dbg !64
  %28 = load i32, i32* %4, align 4, !dbg !65
  %29 = sext i32 %28 to i64, !dbg !65
  %30 = mul i64 %29, 16, !dbg !66
  %31 = call noalias i8* @malloc(i64 noundef %30) #8, !dbg !67
  %32 = bitcast i8* %31 to %struct.xmlCharEncodingAlias*, !dbg !68
  store %struct.xmlCharEncodingAlias* %32, %struct.xmlCharEncodingAlias** @xmlCharEncodingAliases, align 8, !dbg !69
  %33 = load i32, i32* %4, align 4, !dbg !70
  store i32 %33, i32* @xmlCharEncodingAliasesNb, align 4, !dbg !71
  store i32 0, i32* %2, align 4, !dbg !72
  br label %34, !dbg !74

34:                                               ; preds = %69, %24
  %35 = load i32, i32* %2, align 4, !dbg !75
  %36 = load i32, i32* %4, align 4, !dbg !77
  %37 = icmp slt i32 %35, %36, !dbg !78
  br i1 %37, label %38, label %72, !dbg !79

38:                                               ; preds = %34
  call void @llvm.dbg.declare(metadata i8** %5, metadata !80, metadata !DIExpression()), !dbg !82
  %39 = call noalias i8* @malloc(i64 noundef 256) #8, !dbg !83
  store i8* %39, i8** %5, align 8, !dbg !82
  call void @llvm.dbg.declare(metadata i8** %6, metadata !84, metadata !DIExpression()), !dbg !85
  %40 = call noalias i8* @malloc(i64 noundef 256) #8, !dbg !86
  store i8* %40, i8** %6, align 8, !dbg !85
  %41 = load i8*, i8** %5, align 8, !dbg !87
  call void @klee_make_symbolic(i8* noundef %41, i64 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !88
  %42 = load i8*, i8** %6, align 8, !dbg !89
  call void @klee_make_symbolic(i8* noundef %42, i64 noundef 256, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)), !dbg !90
  %43 = load i8*, i8** %5, align 8, !dbg !91
  %44 = getelementptr inbounds i8, i8* %43, i64 255, !dbg !91
  %45 = load i8, i8* %44, align 1, !dbg !91
  %46 = sext i8 %45 to i32, !dbg !91
  %47 = icmp eq i32 %46, 0, !dbg !92
  %48 = zext i1 %47 to i32, !dbg !92
  %49 = sext i32 %48 to i64, !dbg !91
  call void @klee_assume(i64 noundef %49), !dbg !93
  %50 = load i8*, i8** %6, align 8, !dbg !94
  %51 = getelementptr inbounds i8, i8* %50, i64 255, !dbg !94
  %52 = load i8, i8* %51, align 1, !dbg !94
  %53 = sext i8 %52 to i32, !dbg !94
  %54 = icmp eq i32 %53, 0, !dbg !95
  %55 = zext i1 %54 to i32, !dbg !95
  %56 = sext i32 %55 to i64, !dbg !94
  call void @klee_assume(i64 noundef %56), !dbg !96
  %57 = load i8*, i8** %5, align 8, !dbg !97
  %58 = load %struct.xmlCharEncodingAlias*, %struct.xmlCharEncodingAlias** @xmlCharEncodingAliases, align 8, !dbg !98
  %59 = load i32, i32* %2, align 4, !dbg !99
  %60 = sext i32 %59 to i64, !dbg !98
  %61 = getelementptr inbounds %struct.xmlCharEncodingAlias, %struct.xmlCharEncodingAlias* %58, i64 %60, !dbg !98
  %62 = getelementptr inbounds %struct.xmlCharEncodingAlias, %struct.xmlCharEncodingAlias* %61, i32 0, i32 0, !dbg !100
  store i8* %57, i8** %62, align 8, !dbg !101
  %63 = load i8*, i8** %6, align 8, !dbg !102
  %64 = load %struct.xmlCharEncodingAlias*, %struct.xmlCharEncodingAlias** @xmlCharEncodingAliases, align 8, !dbg !103
  %65 = load i32, i32* %2, align 4, !dbg !104
  %66 = sext i32 %65 to i64, !dbg !103
  %67 = getelementptr inbounds %struct.xmlCharEncodingAlias, %struct.xmlCharEncodingAlias* %64, i64 %66, !dbg !103
  %68 = getelementptr inbounds %struct.xmlCharEncodingAlias, %struct.xmlCharEncodingAlias* %67, i32 0, i32 1, !dbg !105
  store i8* %63, i8** %68, align 8, !dbg !106
  br label %69, !dbg !107

69:                                               ; preds = %38
  %70 = load i32, i32* %2, align 4, !dbg !108
  %71 = add nsw i32 %70, 1, !dbg !108
  store i32 %71, i32* %2, align 4, !dbg !108
  br label %34, !dbg !109, !llvm.loop !110

72:                                               ; preds = %34
  call void @llvm.dbg.declare(metadata i32* %7, metadata !113, metadata !DIExpression()), !dbg !114
  %73 = bitcast i32* %7 to i8*, !dbg !115
  call void @klee_make_symbolic(i8* noundef %73, i64 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0)), !dbg !116
  %74 = load i32, i32* %7, align 4, !dbg !117
  %75 = icmp sge i32 %74, 0, !dbg !118
  br i1 %75, label %76, label %80, !dbg !119

76:                                               ; preds = %72
  %77 = load i32, i32* %7, align 4, !dbg !120
  %78 = load i32, i32* %4, align 4, !dbg !121
  %79 = icmp slt i32 %77, %78, !dbg !122
  br label %80

80:                                               ; preds = %76, %72
  %81 = phi i1 [ false, %72 ], [ %79, %76 ], !dbg !63
  %82 = zext i1 %81 to i32, !dbg !119
  %83 = sext i32 %82 to i64, !dbg !117
  call void @klee_assume(i64 noundef %83), !dbg !123
  %84 = load %struct.xmlCharEncodingAlias*, %struct.xmlCharEncodingAlias** @xmlCharEncodingAliases, align 8, !dbg !124
  %85 = load i32, i32* %7, align 4, !dbg !125
  %86 = sext i32 %85 to i64, !dbg !124
  %87 = getelementptr inbounds %struct.xmlCharEncodingAlias, %struct.xmlCharEncodingAlias* %84, i64 %86, !dbg !124
  %88 = getelementptr inbounds %struct.xmlCharEncodingAlias, %struct.xmlCharEncodingAlias* %87, i32 0, i32 1, !dbg !126
  %89 = load i8*, i8** %88, align 8, !dbg !126
  %90 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !127
  %91 = call i8* @strncpy(i8* noundef %89, i8* noundef %90, i64 noundef 255) #8, !dbg !128
  %92 = load %struct.xmlCharEncodingAlias*, %struct.xmlCharEncodingAlias** @xmlCharEncodingAliases, align 8, !dbg !129
  %93 = load i32, i32* %7, align 4, !dbg !130
  %94 = sext i32 %93 to i64, !dbg !129
  %95 = getelementptr inbounds %struct.xmlCharEncodingAlias, %struct.xmlCharEncodingAlias* %92, i64 %94, !dbg !129
  %96 = getelementptr inbounds %struct.xmlCharEncodingAlias, %struct.xmlCharEncodingAlias* %95, i32 0, i32 1, !dbg !131
  %97 = load i8*, i8** %96, align 8, !dbg !131
  %98 = getelementptr inbounds i8, i8* %97, i64 255, !dbg !132
  store i8 0, i8* %98, align 1, !dbg !133
  call void @llvm.dbg.declare(metadata i32* %8, metadata !134, metadata !DIExpression()), !dbg !135
  %99 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !136
  %100 = call i32 @xmlDelEncodingAlias(i8* noundef %99), !dbg !137
  store i32 %100, i32* %8, align 4, !dbg !135
  %101 = load i32, i32* %8, align 4, !dbg !138
  %102 = icmp eq i32 %101, 0, !dbg !140
  br i1 %102, label %103, label %133, !dbg !141

103:                                              ; preds = %80
  call void @llvm.dbg.declare(metadata i32* %9, metadata !142, metadata !DIExpression()), !dbg !144
  %104 = load i32, i32* %4, align 4, !dbg !145
  %105 = sub nsw i32 %104, 1, !dbg !146
  store i32 %105, i32* %9, align 4, !dbg !144
  call void @llvm.dbg.declare(metadata i32* %10, metadata !147, metadata !DIExpression()), !dbg !148
  %106 = load i32, i32* %9, align 4, !dbg !149
  %107 = load i32, i32* %7, align 4, !dbg !150
  %108 = sub nsw i32 %106, %107, !dbg !151
  store i32 %108, i32* %10, align 4, !dbg !148
  %109 = load i32, i32* %7, align 4, !dbg !152
  %110 = load i32, i32* %4, align 4, !dbg !152
  %111 = icmp slt i32 %109, %110, !dbg !152
  br i1 %111, label %112, label %129, !dbg !152

112:                                              ; preds = %103
  %113 = load i32, i32* %7, align 4, !dbg !152
  %114 = add nsw i32 %113, 1, !dbg !152
  %115 = load i32, i32* %4, align 4, !dbg !152
  %116 = icmp slt i32 %114, %115, !dbg !152
  br i1 %116, label %117, label %129, !dbg !152

117:                                              ; preds = %112
  %118 = load i32, i32* %10, align 4, !dbg !152
  %119 = icmp sge i32 %118, 0, !dbg !152
  br i1 %119, label %120, label %129, !dbg !152

120:                                              ; preds = %117
  %121 = load i32, i32* %10, align 4, !dbg !152
  %122 = load i32, i32* %4, align 4, !dbg !152
  %123 = load i32, i32* %7, align 4, !dbg !152
  %124 = sub nsw i32 %122, %123, !dbg !152
  %125 = sub nsw i32 %124, 1, !dbg !152
  %126 = icmp sle i32 %121, %125, !dbg !152
  br i1 %126, label %127, label %129, !dbg !152

127:                                              ; preds = %120
  br i1 true, label %128, label %129, !dbg !152

128:                                              ; preds = %127
  br label %131, !dbg !152

129:                                              ; preds = %127, %120, %117, %112, %103
  %130 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([133 x i8], [133 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.7, i64 0, i64 0), i32 noundef 96, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !152
  br label %131, !dbg !152

131:                                              ; preds = %129, %128
  %132 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.7, i64 0, i64 0), i32 noundef 99, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !153
  br label %133, !dbg !154

133:                                              ; preds = %131, %80
  store i32 0, i32* %2, align 4, !dbg !155
  br label %134, !dbg !157

134:                                              ; preds = %151, %133
  %135 = load i32, i32* %2, align 4, !dbg !158
  %136 = load i32, i32* %4, align 4, !dbg !160
  %137 = icmp slt i32 %135, %136, !dbg !161
  br i1 %137, label %138, label %154, !dbg !162

138:                                              ; preds = %134
  %139 = load %struct.xmlCharEncodingAlias*, %struct.xmlCharEncodingAlias** @xmlCharEncodingAliases, align 8, !dbg !163
  %140 = load i32, i32* %2, align 4, !dbg !165
  %141 = sext i32 %140 to i64, !dbg !163
  %142 = getelementptr inbounds %struct.xmlCharEncodingAlias, %struct.xmlCharEncodingAlias* %139, i64 %141, !dbg !163
  %143 = getelementptr inbounds %struct.xmlCharEncodingAlias, %struct.xmlCharEncodingAlias* %142, i32 0, i32 0, !dbg !166
  %144 = load i8*, i8** %143, align 8, !dbg !166
  call void @free(i8* noundef %144) #8, !dbg !167
  %145 = load %struct.xmlCharEncodingAlias*, %struct.xmlCharEncodingAlias** @xmlCharEncodingAliases, align 8, !dbg !168
  %146 = load i32, i32* %2, align 4, !dbg !169
  %147 = sext i32 %146 to i64, !dbg !168
  %148 = getelementptr inbounds %struct.xmlCharEncodingAlias, %struct.xmlCharEncodingAlias* %145, i64 %147, !dbg !168
  %149 = getelementptr inbounds %struct.xmlCharEncodingAlias, %struct.xmlCharEncodingAlias* %148, i32 0, i32 1, !dbg !170
  %150 = load i8*, i8** %149, align 8, !dbg !170
  call void @free(i8* noundef %150) #8, !dbg !171
  br label %151, !dbg !172

151:                                              ; preds = %138
  %152 = load i32, i32* %2, align 4, !dbg !173
  %153 = add nsw i32 %152, 1, !dbg !173
  store i32 %153, i32* %2, align 4, !dbg !173
  br label %134, !dbg !174, !llvm.loop !175

154:                                              ; preds = %134
  %155 = load %struct.xmlCharEncodingAlias*, %struct.xmlCharEncodingAlias** @xmlCharEncodingAliases, align 8, !dbg !177
  %156 = bitcast %struct.xmlCharEncodingAlias* %155 to i8*, !dbg !177
  call void @free(i8* noundef %156) #8, !dbg !178
  ret i32 0, !dbg !179
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlDelEncodingAlias(i8* noundef %0) #0 !dbg !180 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !183, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.declare(metadata i32* %4, metadata !185, metadata !DIExpression()), !dbg !186
  store i32 0, i32* %4, align 4, !dbg !187
  br label %5, !dbg !189

5:                                                ; preds = %52, %1
  %6 = load i32, i32* %4, align 4, !dbg !190
  %7 = load i32, i32* @xmlCharEncodingAliasesNb, align 4, !dbg !192
  %8 = icmp slt i32 %6, %7, !dbg !193
  br i1 %8, label %9, label %55, !dbg !194

9:                                                ; preds = %5
  %10 = load %struct.xmlCharEncodingAlias*, %struct.xmlCharEncodingAlias** @xmlCharEncodingAliases, align 8, !dbg !195
  %11 = load i32, i32* %4, align 4, !dbg !198
  %12 = sext i32 %11 to i64, !dbg !195
  %13 = getelementptr inbounds %struct.xmlCharEncodingAlias, %struct.xmlCharEncodingAlias* %10, i64 %12, !dbg !195
  %14 = getelementptr inbounds %struct.xmlCharEncodingAlias, %struct.xmlCharEncodingAlias* %13, i32 0, i32 1, !dbg !199
  %15 = load i8*, i8** %14, align 8, !dbg !199
  %16 = load i8*, i8** %3, align 8, !dbg !200
  %17 = call i32 @strcmp(i8* noundef %15, i8* noundef %16) #9, !dbg !201
  %18 = icmp ne i32 %17, 0, !dbg !201
  br i1 %18, label %51, label %19, !dbg !202

19:                                               ; preds = %9
  %20 = load %struct.xmlCharEncodingAlias*, %struct.xmlCharEncodingAlias** @xmlCharEncodingAliases, align 8, !dbg !203
  %21 = load i32, i32* %4, align 4, !dbg !205
  %22 = sext i32 %21 to i64, !dbg !203
  %23 = getelementptr inbounds %struct.xmlCharEncodingAlias, %struct.xmlCharEncodingAlias* %20, i64 %22, !dbg !203
  %24 = getelementptr inbounds %struct.xmlCharEncodingAlias, %struct.xmlCharEncodingAlias* %23, i32 0, i32 0, !dbg !206
  %25 = load i8*, i8** %24, align 8, !dbg !206
  call void @xmlFree(i8* noundef %25), !dbg !207
  %26 = load %struct.xmlCharEncodingAlias*, %struct.xmlCharEncodingAlias** @xmlCharEncodingAliases, align 8, !dbg !208
  %27 = load i32, i32* %4, align 4, !dbg !209
  %28 = sext i32 %27 to i64, !dbg !208
  %29 = getelementptr inbounds %struct.xmlCharEncodingAlias, %struct.xmlCharEncodingAlias* %26, i64 %28, !dbg !208
  %30 = getelementptr inbounds %struct.xmlCharEncodingAlias, %struct.xmlCharEncodingAlias* %29, i32 0, i32 1, !dbg !210
  %31 = load i8*, i8** %30, align 8, !dbg !210
  call void @xmlFree(i8* noundef %31), !dbg !211
  %32 = load i32, i32* @xmlCharEncodingAliasesNb, align 4, !dbg !212
  %33 = add nsw i32 %32, -1, !dbg !212
  store i32 %33, i32* @xmlCharEncodingAliasesNb, align 4, !dbg !212
  %34 = load %struct.xmlCharEncodingAlias*, %struct.xmlCharEncodingAlias** @xmlCharEncodingAliases, align 8, !dbg !213
  %35 = load i32, i32* %4, align 4, !dbg !214
  %36 = sext i32 %35 to i64, !dbg !213
  %37 = getelementptr inbounds %struct.xmlCharEncodingAlias, %struct.xmlCharEncodingAlias* %34, i64 %36, !dbg !213
  %38 = bitcast %struct.xmlCharEncodingAlias* %37 to i8*, !dbg !215
  %39 = load %struct.xmlCharEncodingAlias*, %struct.xmlCharEncodingAlias** @xmlCharEncodingAliases, align 8, !dbg !216
  %40 = load i32, i32* %4, align 4, !dbg !217
  %41 = add nsw i32 %40, 1, !dbg !218
  %42 = sext i32 %41 to i64, !dbg !216
  %43 = getelementptr inbounds %struct.xmlCharEncodingAlias, %struct.xmlCharEncodingAlias* %39, i64 %42, !dbg !216
  %44 = bitcast %struct.xmlCharEncodingAlias* %43 to i8*, !dbg !215
  %45 = load i32, i32* @xmlCharEncodingAliasesNb, align 4, !dbg !219
  %46 = load i32, i32* %4, align 4, !dbg !220
  %47 = sub nsw i32 %45, %46, !dbg !221
  %48 = sext i32 %47 to i64, !dbg !222
  %49 = mul i64 16, %48, !dbg !223
  %50 = call i8* @memmove(i8* %38, i8* %44, i64 %49), !dbg !215
  store i32 0, i32* %2, align 4, !dbg !224
  br label %56, !dbg !224

51:                                               ; preds = %9
  br label %52, !dbg !225

52:                                               ; preds = %51
  %53 = load i32, i32* %4, align 4, !dbg !226
  %54 = add nsw i32 %53, 1, !dbg !226
  store i32 %54, i32* %4, align 4, !dbg !226
  br label %5, !dbg !227, !llvm.loop !228

55:                                               ; preds = %5
  store i32 -1, i32* %2, align 4, !dbg !230
  br label %56, !dbg !230

56:                                               ; preds = %55, %19
  %57 = load i32, i32* %2, align 4, !dbg !231
  ret i32 %57, !dbg !231
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memmove(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !232 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !241, metadata !DIExpression()), !dbg !242
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !243, metadata !DIExpression()), !dbg !244
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !245, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i8** %8, metadata !247, metadata !DIExpression()), !dbg !248
  %10 = load i8*, i8** %5, align 8, !dbg !249
  store i8* %10, i8** %8, align 8, !dbg !248
  call void @llvm.dbg.declare(metadata i8** %9, metadata !250, metadata !DIExpression()), !dbg !251
  %11 = load i8*, i8** %6, align 8, !dbg !252
  store i8* %11, i8** %9, align 8, !dbg !251
  %12 = load i8*, i8** %6, align 8, !dbg !253
  %13 = load i8*, i8** %5, align 8, !dbg !255
  %14 = icmp eq i8* %12, %13, !dbg !256
  br i1 %14, label %15, label %17, !dbg !257

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8, !dbg !258
  store i8* %16, i8** %4, align 8, !dbg !259
  br label %52, !dbg !259

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8, !dbg !260
  %19 = load i8*, i8** %5, align 8, !dbg !262
  %20 = icmp ugt i8* %18, %19, !dbg !263
  br i1 %20, label %21, label %31, !dbg !264

21:                                               ; preds = %17, %25
  %22 = load i64, i64* %7, align 8, !dbg !265
  %23 = add i64 %22, -1, !dbg !265
  store i64 %23, i64* %7, align 8, !dbg !265
  %24 = icmp ne i64 %22, 0, !dbg !267
  br i1 %24, label %25, label %50, !dbg !267

25:                                               ; preds = %21
  %26 = load i8*, i8** %9, align 8, !dbg !268
  %27 = getelementptr inbounds i8, i8* %26, i32 1, !dbg !268
  store i8* %27, i8** %9, align 8, !dbg !268
  %28 = load i8, i8* %26, align 1, !dbg !269
  %29 = load i8*, i8** %8, align 8, !dbg !270
  %30 = getelementptr inbounds i8, i8* %29, i32 1, !dbg !270
  store i8* %30, i8** %8, align 8, !dbg !270
  store i8 %28, i8* %29, align 1, !dbg !271
  br label %21, !dbg !267, !llvm.loop !272

31:                                               ; preds = %17
  %32 = load i64, i64* %7, align 8, !dbg !273
  %33 = sub i64 %32, 1, !dbg !275
  %34 = load i8*, i8** %8, align 8, !dbg !276
  %35 = getelementptr inbounds i8, i8* %34, i64 %33, !dbg !276
  store i8* %35, i8** %8, align 8, !dbg !276
  %36 = load i64, i64* %7, align 8, !dbg !277
  %37 = sub i64 %36, 1, !dbg !278
  %38 = load i8*, i8** %9, align 8, !dbg !279
  %39 = getelementptr inbounds i8, i8* %38, i64 %37, !dbg !279
  store i8* %39, i8** %9, align 8, !dbg !279
  br label %40, !dbg !280

40:                                               ; preds = %44, %31
  %41 = load i64, i64* %7, align 8, !dbg !281
  %42 = add i64 %41, -1, !dbg !281
  store i64 %42, i64* %7, align 8, !dbg !281
  %43 = icmp ne i64 %41, 0, !dbg !280
  br i1 %43, label %44, label %50, !dbg !280

44:                                               ; preds = %40
  %45 = load i8*, i8** %9, align 8, !dbg !282
  %46 = getelementptr inbounds i8, i8* %45, i32 -1, !dbg !282
  store i8* %46, i8** %9, align 8, !dbg !282
  %47 = load i8, i8* %45, align 1, !dbg !283
  %48 = load i8*, i8** %8, align 8, !dbg !284
  %49 = getelementptr inbounds i8, i8* %48, i32 -1, !dbg !284
  store i8* %49, i8** %8, align 8, !dbg !284
  store i8 %47, i8* %48, align 1, !dbg !285
  br label %40, !dbg !280, !llvm.loop !286

50:                                               ; preds = %40, %21
  %51 = load i8*, i8** %5, align 8, !dbg !287
  store i8* %51, i8** %4, align 8, !dbg !288
  br label %52, !dbg !288

52:                                               ; preds = %50, %15
  %53 = load i8*, i8** %4, align 8, !dbg !289
  ret i8* %53, !dbg !289
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

!llvm.dbg.cu = !{!2, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29, !29}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "xmlCharEncodingAliases", scope: !2, file: !3, line: 16, type: !5, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !16, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/023_encoding.c_1151_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "9dd8bfc40c91e143ccf0f5eee5606950")
!4 = !{!5, !14, !15}
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
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!16 = !{!0, !17}
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "xmlCharEncodingAliasesNb", scope: !2, file: !3, line: 17, type: !19, isLocal: false, isDefinition: true)
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = distinct !DICompileUnit(language: DW_LANG_C99, file: !21, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!21 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memmove.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "6cd27189cdce56ce74ae860a315e13f2")
!22 = !{i32 7, !"Dwarf Version", i32 5}
!23 = !{i32 2, !"Debug Info Version", i32 3}
!24 = !{i32 1, !"wchar_size", i32 4}
!25 = !{i32 7, !"PIC Level", i32 2}
!26 = !{i32 7, !"PIE Level", i32 2}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"Ubuntu clang version 14.0.6"}
!30 = distinct !DISubprogram(name: "xmlFree", scope: !3, file: !3, line: 23, type: !31, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !33)
!31 = !DISubroutineType(types: !32)
!32 = !{null, !15}
!33 = !{}
!34 = !DILocalVariable(name: "ptr", arg: 1, scope: !30, file: !3, line: 23, type: !15)
!35 = !DILocation(line: 23, column: 20, scope: !30)
!36 = !DILocation(line: 24, column: 10, scope: !30)
!37 = !DILocation(line: 24, column: 5, scope: !30)
!38 = !DILocation(line: 25, column: 1, scope: !30)
!39 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 28, type: !40, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !33)
!40 = !DISubroutineType(types: !41)
!41 = !{!19}
!42 = !DILocalVariable(name: "i", scope: !39, file: !3, line: 29, type: !19)
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
!54 = !DILocalVariable(name: "array_size", scope: !39, file: !3, line: 38, type: !19)
!55 = !DILocation(line: 38, column: 9, scope: !39)
!56 = !DILocation(line: 39, column: 24, scope: !39)
!57 = !DILocation(line: 39, column: 5, scope: !39)
!58 = !DILocation(line: 40, column: 17, scope: !39)
!59 = !DILocation(line: 40, column: 28, scope: !39)
!60 = !DILocation(line: 40, column: 33, scope: !39)
!61 = !DILocation(line: 40, column: 36, scope: !39)
!62 = !DILocation(line: 40, column: 47, scope: !39)
!63 = !DILocation(line: 0, scope: !39)
!64 = !DILocation(line: 40, column: 5, scope: !39)
!65 = !DILocation(line: 43, column: 60, scope: !39)
!66 = !DILocation(line: 43, column: 71, scope: !39)
!67 = !DILocation(line: 43, column: 53, scope: !39)
!68 = !DILocation(line: 43, column: 30, scope: !39)
!69 = !DILocation(line: 43, column: 28, scope: !39)
!70 = !DILocation(line: 44, column: 32, scope: !39)
!71 = !DILocation(line: 44, column: 30, scope: !39)
!72 = !DILocation(line: 47, column: 12, scope: !73)
!73 = distinct !DILexicalBlock(scope: !39, file: !3, line: 47, column: 5)
!74 = !DILocation(line: 47, column: 10, scope: !73)
!75 = !DILocation(line: 47, column: 17, scope: !76)
!76 = distinct !DILexicalBlock(scope: !73, file: !3, line: 47, column: 5)
!77 = !DILocation(line: 47, column: 21, scope: !76)
!78 = !DILocation(line: 47, column: 19, scope: !76)
!79 = !DILocation(line: 47, column: 5, scope: !73)
!80 = !DILocalVariable(name: "name_buf", scope: !81, file: !3, line: 48, type: !14)
!81 = distinct !DILexicalBlock(scope: !76, file: !3, line: 47, column: 38)
!82 = !DILocation(line: 48, column: 15, scope: !81)
!83 = !DILocation(line: 48, column: 33, scope: !81)
!84 = !DILocalVariable(name: "alias_buf", scope: !81, file: !3, line: 49, type: !14)
!85 = !DILocation(line: 49, column: 15, scope: !81)
!86 = !DILocation(line: 49, column: 34, scope: !81)
!87 = !DILocation(line: 51, column: 28, scope: !81)
!88 = !DILocation(line: 51, column: 9, scope: !81)
!89 = !DILocation(line: 52, column: 28, scope: !81)
!90 = !DILocation(line: 52, column: 9, scope: !81)
!91 = !DILocation(line: 55, column: 21, scope: !81)
!92 = !DILocation(line: 55, column: 35, scope: !81)
!93 = !DILocation(line: 55, column: 9, scope: !81)
!94 = !DILocation(line: 56, column: 21, scope: !81)
!95 = !DILocation(line: 56, column: 36, scope: !81)
!96 = !DILocation(line: 56, column: 9, scope: !81)
!97 = !DILocation(line: 58, column: 42, scope: !81)
!98 = !DILocation(line: 58, column: 9, scope: !81)
!99 = !DILocation(line: 58, column: 32, scope: !81)
!100 = !DILocation(line: 58, column: 35, scope: !81)
!101 = !DILocation(line: 58, column: 40, scope: !81)
!102 = !DILocation(line: 59, column: 43, scope: !81)
!103 = !DILocation(line: 59, column: 9, scope: !81)
!104 = !DILocation(line: 59, column: 32, scope: !81)
!105 = !DILocation(line: 59, column: 35, scope: !81)
!106 = !DILocation(line: 59, column: 41, scope: !81)
!107 = !DILocation(line: 60, column: 5, scope: !81)
!108 = !DILocation(line: 47, column: 34, scope: !76)
!109 = !DILocation(line: 47, column: 5, scope: !76)
!110 = distinct !{!110, !79, !111, !112}
!111 = !DILocation(line: 60, column: 5, scope: !73)
!112 = !{!"llvm.loop.mustprogress"}
!113 = !DILocalVariable(name: "match_idx", scope: !39, file: !3, line: 63, type: !19)
!114 = !DILocation(line: 63, column: 9, scope: !39)
!115 = !DILocation(line: 64, column: 24, scope: !39)
!116 = !DILocation(line: 64, column: 5, scope: !39)
!117 = !DILocation(line: 65, column: 17, scope: !39)
!118 = !DILocation(line: 65, column: 27, scope: !39)
!119 = !DILocation(line: 65, column: 32, scope: !39)
!120 = !DILocation(line: 65, column: 35, scope: !39)
!121 = !DILocation(line: 65, column: 47, scope: !39)
!122 = !DILocation(line: 65, column: 45, scope: !39)
!123 = !DILocation(line: 65, column: 5, scope: !39)
!124 = !DILocation(line: 68, column: 20, scope: !39)
!125 = !DILocation(line: 68, column: 43, scope: !39)
!126 = !DILocation(line: 68, column: 54, scope: !39)
!127 = !DILocation(line: 68, column: 61, scope: !39)
!128 = !DILocation(line: 68, column: 5, scope: !39)
!129 = !DILocation(line: 69, column: 13, scope: !39)
!130 = !DILocation(line: 69, column: 36, scope: !39)
!131 = !DILocation(line: 69, column: 47, scope: !39)
!132 = !DILocation(line: 69, column: 5, scope: !39)
!133 = !DILocation(line: 69, column: 59, scope: !39)
!134 = !DILocalVariable(name: "result", scope: !39, file: !3, line: 72, type: !19)
!135 = !DILocation(line: 72, column: 9, scope: !39)
!136 = !DILocation(line: 72, column: 38, scope: !39)
!137 = !DILocation(line: 72, column: 18, scope: !39)
!138 = !DILocation(line: 81, column: 9, scope: !139)
!139 = distinct !DILexicalBlock(scope: !39, file: !3, line: 81, column: 9)
!140 = !DILocation(line: 81, column: 16, scope: !139)
!141 = !DILocation(line: 81, column: 9, scope: !39)
!142 = !DILocalVariable(name: "after_decrement", scope: !143, file: !3, line: 89, type: !19)
!143 = distinct !DILexicalBlock(scope: !139, file: !3, line: 81, column: 22)
!144 = !DILocation(line: 89, column: 13, scope: !143)
!145 = !DILocation(line: 89, column: 31, scope: !143)
!146 = !DILocation(line: 89, column: 42, scope: !143)
!147 = !DILocalVariable(name: "count", scope: !143, file: !3, line: 90, type: !19)
!148 = !DILocation(line: 90, column: 13, scope: !143)
!149 = !DILocation(line: 90, column: 21, scope: !143)
!150 = !DILocation(line: 90, column: 39, scope: !143)
!151 = !DILocation(line: 90, column: 37, scope: !143)
!152 = !DILocation(line: 93, column: 9, scope: !143)
!153 = !DILocation(line: 99, column: 9, scope: !143)
!154 = !DILocation(line: 100, column: 5, scope: !143)
!155 = !DILocation(line: 103, column: 12, scope: !156)
!156 = distinct !DILexicalBlock(scope: !39, file: !3, line: 103, column: 5)
!157 = !DILocation(line: 103, column: 10, scope: !156)
!158 = !DILocation(line: 103, column: 17, scope: !159)
!159 = distinct !DILexicalBlock(scope: !156, file: !3, line: 103, column: 5)
!160 = !DILocation(line: 103, column: 21, scope: !159)
!161 = !DILocation(line: 103, column: 19, scope: !159)
!162 = !DILocation(line: 103, column: 5, scope: !156)
!163 = !DILocation(line: 104, column: 21, scope: !164)
!164 = distinct !DILexicalBlock(scope: !159, file: !3, line: 103, column: 38)
!165 = !DILocation(line: 104, column: 44, scope: !164)
!166 = !DILocation(line: 104, column: 47, scope: !164)
!167 = !DILocation(line: 104, column: 9, scope: !164)
!168 = !DILocation(line: 105, column: 21, scope: !164)
!169 = !DILocation(line: 105, column: 44, scope: !164)
!170 = !DILocation(line: 105, column: 47, scope: !164)
!171 = !DILocation(line: 105, column: 9, scope: !164)
!172 = !DILocation(line: 106, column: 5, scope: !164)
!173 = !DILocation(line: 103, column: 34, scope: !159)
!174 = !DILocation(line: 103, column: 5, scope: !159)
!175 = distinct !{!175, !162, !176, !112}
!176 = !DILocation(line: 106, column: 5, scope: !156)
!177 = !DILocation(line: 107, column: 10, scope: !39)
!178 = !DILocation(line: 107, column: 5, scope: !39)
!179 = !DILocation(line: 109, column: 5, scope: !39)
!180 = distinct !DISubprogram(name: "xmlDelEncodingAlias", scope: !3, file: !3, line: 113, type: !181, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !33)
!181 = !DISubroutineType(types: !182)
!182 = !{!19, !10}
!183 = !DILocalVariable(name: "alias", arg: 1, scope: !180, file: !3, line: 113, type: !10)
!184 = !DILocation(line: 113, column: 37, scope: !180)
!185 = !DILocalVariable(name: "i", scope: !180, file: !3, line: 114, type: !19)
!186 = !DILocation(line: 114, column: 9, scope: !180)
!187 = !DILocation(line: 116, column: 12, scope: !188)
!188 = distinct !DILexicalBlock(scope: !180, file: !3, line: 116, column: 5)
!189 = !DILocation(line: 116, column: 10, scope: !188)
!190 = !DILocation(line: 116, column: 17, scope: !191)
!191 = distinct !DILexicalBlock(scope: !188, file: !3, line: 116, column: 5)
!192 = !DILocation(line: 116, column: 21, scope: !191)
!193 = !DILocation(line: 116, column: 19, scope: !191)
!194 = !DILocation(line: 116, column: 5, scope: !188)
!195 = !DILocation(line: 117, column: 21, scope: !196)
!196 = distinct !DILexicalBlock(scope: !197, file: !3, line: 117, column: 13)
!197 = distinct !DILexicalBlock(scope: !191, file: !3, line: 116, column: 52)
!198 = !DILocation(line: 117, column: 44, scope: !196)
!199 = !DILocation(line: 117, column: 47, scope: !196)
!200 = !DILocation(line: 117, column: 54, scope: !196)
!201 = !DILocation(line: 117, column: 14, scope: !196)
!202 = !DILocation(line: 117, column: 13, scope: !197)
!203 = !DILocation(line: 118, column: 30, scope: !204)
!204 = distinct !DILexicalBlock(scope: !196, file: !3, line: 117, column: 62)
!205 = !DILocation(line: 118, column: 53, scope: !204)
!206 = !DILocation(line: 118, column: 56, scope: !204)
!207 = !DILocation(line: 118, column: 13, scope: !204)
!208 = !DILocation(line: 119, column: 30, scope: !204)
!209 = !DILocation(line: 119, column: 53, scope: !204)
!210 = !DILocation(line: 119, column: 56, scope: !204)
!211 = !DILocation(line: 119, column: 13, scope: !204)
!212 = !DILocation(line: 120, column: 37, scope: !204)
!213 = !DILocation(line: 121, column: 22, scope: !204)
!214 = !DILocation(line: 121, column: 45, scope: !204)
!215 = !DILocation(line: 121, column: 13, scope: !204)
!216 = !DILocation(line: 121, column: 50, scope: !204)
!217 = !DILocation(line: 121, column: 73, scope: !204)
!218 = !DILocation(line: 121, column: 75, scope: !204)
!219 = !DILocation(line: 122, column: 53, scope: !204)
!220 = !DILocation(line: 122, column: 80, scope: !204)
!221 = !DILocation(line: 122, column: 78, scope: !204)
!222 = !DILocation(line: 122, column: 52, scope: !204)
!223 = !DILocation(line: 122, column: 50, scope: !204)
!224 = !DILocation(line: 123, column: 13, scope: !204)
!225 = !DILocation(line: 125, column: 5, scope: !197)
!226 = !DILocation(line: 116, column: 48, scope: !191)
!227 = !DILocation(line: 116, column: 5, scope: !191)
!228 = distinct !{!228, !194, !229, !112}
!229 = !DILocation(line: 125, column: 5, scope: !188)
!230 = !DILocation(line: 126, column: 5, scope: !180)
!231 = !DILocation(line: 127, column: 1, scope: !180)
!232 = distinct !DISubprogram(name: "memmove", scope: !233, file: !233, line: 12, type: !234, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !20, retainedNodes: !33)
!233 = !DIFile(filename: "runtime/Freestanding/memmove.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "6cd27189cdce56ce74ae860a315e13f2")
!234 = !DISubroutineType(types: !235)
!235 = !{!15, !15, !236, !238}
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !239, line: 46, baseType: !240)
!239 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!240 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!241 = !DILocalVariable(name: "dst", arg: 1, scope: !232, file: !233, line: 12, type: !15)
!242 = !DILocation(line: 12, column: 21, scope: !232)
!243 = !DILocalVariable(name: "src", arg: 2, scope: !232, file: !233, line: 12, type: !236)
!244 = !DILocation(line: 12, column: 38, scope: !232)
!245 = !DILocalVariable(name: "count", arg: 3, scope: !232, file: !233, line: 12, type: !238)
!246 = !DILocation(line: 12, column: 50, scope: !232)
!247 = !DILocalVariable(name: "a", scope: !232, file: !233, line: 13, type: !14)
!248 = !DILocation(line: 13, column: 9, scope: !232)
!249 = !DILocation(line: 13, column: 13, scope: !232)
!250 = !DILocalVariable(name: "b", scope: !232, file: !233, line: 14, type: !10)
!251 = !DILocation(line: 14, column: 15, scope: !232)
!252 = !DILocation(line: 14, column: 19, scope: !232)
!253 = !DILocation(line: 16, column: 7, scope: !254)
!254 = distinct !DILexicalBlock(scope: !232, file: !233, line: 16, column: 7)
!255 = !DILocation(line: 16, column: 14, scope: !254)
!256 = !DILocation(line: 16, column: 11, scope: !254)
!257 = !DILocation(line: 16, column: 7, scope: !232)
!258 = !DILocation(line: 17, column: 12, scope: !254)
!259 = !DILocation(line: 17, column: 5, scope: !254)
!260 = !DILocation(line: 19, column: 7, scope: !261)
!261 = distinct !DILexicalBlock(scope: !232, file: !233, line: 19, column: 7)
!262 = !DILocation(line: 19, column: 13, scope: !261)
!263 = !DILocation(line: 19, column: 11, scope: !261)
!264 = !DILocation(line: 19, column: 7, scope: !232)
!265 = !DILocation(line: 20, column: 17, scope: !266)
!266 = distinct !DILexicalBlock(scope: !261, file: !233, line: 19, column: 18)
!267 = !DILocation(line: 20, column: 5, scope: !266)
!268 = !DILocation(line: 21, column: 16, scope: !266)
!269 = !DILocation(line: 21, column: 14, scope: !266)
!270 = !DILocation(line: 21, column: 9, scope: !266)
!271 = !DILocation(line: 21, column: 12, scope: !266)
!272 = distinct !{!272, !267, !268, !112}
!273 = !DILocation(line: 23, column: 10, scope: !274)
!274 = distinct !DILexicalBlock(scope: !261, file: !233, line: 22, column: 10)
!275 = !DILocation(line: 23, column: 16, scope: !274)
!276 = !DILocation(line: 23, column: 7, scope: !274)
!277 = !DILocation(line: 24, column: 10, scope: !274)
!278 = !DILocation(line: 24, column: 16, scope: !274)
!279 = !DILocation(line: 24, column: 7, scope: !274)
!280 = !DILocation(line: 25, column: 5, scope: !274)
!281 = !DILocation(line: 25, column: 17, scope: !274)
!282 = !DILocation(line: 26, column: 16, scope: !274)
!283 = !DILocation(line: 26, column: 14, scope: !274)
!284 = !DILocation(line: 26, column: 9, scope: !274)
!285 = !DILocation(line: 26, column: 12, scope: !274)
!286 = distinct !{!286, !280, !282, !112}
!287 = !DILocation(line: 29, column: 10, scope: !232)
!288 = !DILocation(line: 29, column: 3, scope: !232)
!289 = !DILocation(line: 30, column: 1, scope: !232)

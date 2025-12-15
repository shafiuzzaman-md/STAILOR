; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/159_xmlstring.c_469_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/159_xmlstring.c_469_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"cur_buf\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"add_buf\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"(add_len >= 0 && add_len <= 255) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [107 x i8] c"se_runs/sa_llm/libxml2_55980_vul/159_xmlstring.c_469_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlStrlen(i8* noundef %0) #0 !dbg !22 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !29, metadata !DIExpression()), !dbg !30
  %4 = load i8*, i8** %3, align 8, !dbg !31
  %5 = icmp eq i8* %4, null, !dbg !33
  br i1 %5, label %6, label %7, !dbg !34

6:                                                ; preds = %1
  store i32 -1, i32* %2, align 4, !dbg !35
  br label %11, !dbg !35

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8, !dbg !36
  %9 = call i64 @strlen(i8* noundef %8) #8, !dbg !37
  %10 = trunc i64 %9 to i32, !dbg !37
  store i32 %10, i32* %2, align 4, !dbg !38
  br label %11, !dbg !38

11:                                               ; preds = %7, %6
  %12 = load i32, i32* %2, align 4, !dbg !39
  ret i32 %12, !dbg !39
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlRealloc(i8* noundef %0, i64 noundef %1) #0 !dbg !40 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !43, metadata !DIExpression()), !dbg !44
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !45, metadata !DIExpression()), !dbg !46
  %6 = load i64, i64* %5, align 8, !dbg !47
  %7 = icmp eq i64 %6, 0, !dbg !49
  br i1 %7, label %8, label %9, !dbg !50

8:                                                ; preds = %2
  store i8* null, i8** %3, align 8, !dbg !51
  br label %13, !dbg !51

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8, !dbg !52
  %11 = load i64, i64* %5, align 8, !dbg !53
  %12 = call i8* @realloc(i8* noundef %10, i64 noundef %11) #9, !dbg !54
  store i8* %12, i8** %3, align 8, !dbg !55
  br label %13, !dbg !55

13:                                               ; preds = %9, %8
  %14 = load i8*, i8** %3, align 8, !dbg !56
  ret i8* %14, !dbg !56
}

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !57 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !60, metadata !DIExpression()), !dbg !61
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !62, metadata !DIExpression()), !dbg !63
  ret void, !dbg !64
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlStrcat(i8* noundef %0, i8* noundef %1) #0 !dbg !65 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !68, metadata !DIExpression()), !dbg !69
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !70, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.declare(metadata i32* %6, metadata !72, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.declare(metadata i32* %7, metadata !74, metadata !DIExpression()), !dbg !75
  %8 = load i8*, i8** %5, align 8, !dbg !76
  %9 = icmp eq i8* %8, null, !dbg !78
  br i1 %9, label %10, label %12, !dbg !79

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8, !dbg !80
  store i8* %11, i8** %3, align 8, !dbg !81
  br label %67, !dbg !81

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8, !dbg !82
  %14 = icmp eq i8* %13, null, !dbg !84
  br i1 %14, label %15, label %20, !dbg !85

15:                                               ; preds = %12
  %16 = load i8*, i8** %5, align 8, !dbg !86
  %17 = call i32 (i8*, ...) bitcast (i32 (...)* @xmlStrdup to i32 (i8*, ...)*)(i8* noundef %16), !dbg !87
  %18 = sext i32 %17 to i64, !dbg !88
  %19 = inttoptr i64 %18 to i8*, !dbg !88
  store i8* %19, i8** %3, align 8, !dbg !89
  br label %67, !dbg !89

20:                                               ; preds = %12
  %21 = load i8*, i8** %5, align 8, !dbg !90
  %22 = call i32 @xmlStrlen(i8* noundef %21), !dbg !91
  store i32 %22, i32* %7, align 4, !dbg !92
  %23 = load i32, i32* %7, align 4, !dbg !93
  %24 = icmp slt i32 %23, 0, !dbg !95
  br i1 %24, label %25, label %26, !dbg !96

25:                                               ; preds = %20
  store i8* null, i8** %3, align 8, !dbg !97
  br label %67, !dbg !97

26:                                               ; preds = %20
  %27 = load i8*, i8** %4, align 8, !dbg !98
  %28 = call i32 @xmlStrlen(i8* noundef %27), !dbg !99
  store i32 %28, i32* %6, align 4, !dbg !100
  %29 = load i32, i32* %6, align 4, !dbg !101
  %30 = icmp slt i32 %29, 0, !dbg !103
  br i1 %30, label %36, label %31, !dbg !104

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4, !dbg !105
  %33 = load i32, i32* %7, align 4, !dbg !106
  %34 = sub nsw i32 2147483647, %33, !dbg !107
  %35 = icmp sgt i32 %32, %34, !dbg !108
  br i1 %35, label %36, label %37, !dbg !109

36:                                               ; preds = %31, %26
  store i8* null, i8** %3, align 8, !dbg !110
  br label %67, !dbg !110

37:                                               ; preds = %31
  br label %38, !dbg !111

38:                                               ; preds = %37
  call void @llvm.dbg.label(metadata !112), !dbg !113
  %39 = load i8*, i8** %4, align 8, !dbg !114
  %40 = load i32, i32* %6, align 4, !dbg !115
  %41 = sext i32 %40 to i64, !dbg !116
  %42 = load i32, i32* %7, align 4, !dbg !117
  %43 = sext i32 %42 to i64, !dbg !117
  %44 = add i64 %41, %43, !dbg !118
  %45 = add i64 %44, 1, !dbg !119
  %46 = call i8* @xmlRealloc(i8* noundef %39, i64 noundef %45), !dbg !120
  store i8* %46, i8** %4, align 8, !dbg !121
  %47 = load i8*, i8** %4, align 8, !dbg !122
  %48 = icmp eq i8* %47, null, !dbg !124
  br i1 %48, label %49, label %51, !dbg !125

49:                                               ; preds = %38
  call void @xmlErrMemory(i8* noundef null, i8* noundef null), !dbg !126
  %50 = load i8*, i8** %4, align 8, !dbg !128
  store i8* %50, i8** %3, align 8, !dbg !129
  br label %67, !dbg !129

51:                                               ; preds = %38
  %52 = load i8*, i8** %4, align 8, !dbg !130
  %53 = load i32, i32* %6, align 4, !dbg !131
  %54 = sext i32 %53 to i64, !dbg !130
  %55 = getelementptr inbounds i8, i8* %52, i64 %54, !dbg !130
  %56 = load i8*, i8** %5, align 8, !dbg !132
  %57 = load i32, i32* %7, align 4, !dbg !133
  %58 = sext i32 %57 to i64, !dbg !133
  %59 = call i8* @memcpy(i8* %55, i8* %56, i64 %58), !dbg !134
  %60 = load i8*, i8** %4, align 8, !dbg !135
  %61 = load i32, i32* %6, align 4, !dbg !136
  %62 = load i32, i32* %7, align 4, !dbg !137
  %63 = add nsw i32 %61, %62, !dbg !138
  %64 = sext i32 %63 to i64, !dbg !135
  %65 = getelementptr inbounds i8, i8* %60, i64 %64, !dbg !135
  store i8 0, i8* %65, align 1, !dbg !139
  %66 = load i8*, i8** %4, align 8, !dbg !140
  store i8* %66, i8** %3, align 8, !dbg !141
  br label %67, !dbg !141

67:                                               ; preds = %51, %49, %36, %25, %15, %10
  %68 = load i8*, i8** %3, align 8, !dbg !142
  ret i8* %68, !dbg !142
}

declare i32 @xmlStrdup(...) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !143 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca [256 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !146, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !151, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.declare(metadata i32* %4, metadata !153, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.declare(metadata i32* %5, metadata !155, metadata !DIExpression()), !dbg !156
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !157
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 256, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)), !dbg !158
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !159
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 256, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)), !dbg !160
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !161
  store i8 0, i8* %10, align 1, !dbg !162
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 255, !dbg !163
  store i8 0, i8* %11, align 1, !dbg !164
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !165
  %13 = call i32 @xmlStrlen(i8* noundef %12), !dbg !166
  store i32 %13, i32* %4, align 4, !dbg !167
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !168
  %15 = call i32 @xmlStrlen(i8* noundef %14), !dbg !169
  store i32 %15, i32* %5, align 4, !dbg !170
  %16 = load i32, i32* %4, align 4, !dbg !171
  %17 = icmp sge i32 %16, 0, !dbg !172
  %18 = zext i1 %17 to i32, !dbg !172
  %19 = sext i32 %18 to i64, !dbg !171
  call void @klee_assume(i64 noundef %19), !dbg !173
  %20 = load i32, i32* %5, align 4, !dbg !174
  %21 = icmp sge i32 %20, 0, !dbg !175
  %22 = zext i1 %21 to i32, !dbg !175
  %23 = sext i32 %22 to i64, !dbg !174
  call void @klee_assume(i64 noundef %23), !dbg !176
  %24 = load i32, i32* %4, align 4, !dbg !177
  %25 = icmp sle i32 %24, 255, !dbg !178
  %26 = zext i1 %25 to i32, !dbg !178
  %27 = sext i32 %26 to i64, !dbg !177
  call void @klee_assume(i64 noundef %27), !dbg !179
  %28 = load i32, i32* %5, align 4, !dbg !180
  %29 = icmp sle i32 %28, 255, !dbg !181
  %30 = zext i1 %29 to i32, !dbg !181
  %31 = sext i32 %30 to i64, !dbg !180
  call void @klee_assume(i64 noundef %31), !dbg !182
  %32 = load i32, i32* %4, align 4, !dbg !183
  %33 = load i32, i32* %5, align 4, !dbg !184
  %34 = sub nsw i32 2147483647, %33, !dbg !185
  %35 = icmp sle i32 %32, %34, !dbg !186
  %36 = zext i1 %35 to i32, !dbg !186
  %37 = sext i32 %36 to i64, !dbg !183
  call void @klee_assume(i64 noundef %37), !dbg !187
  call void @llvm.dbg.declare(metadata i8** %6, metadata !188, metadata !DIExpression()), !dbg !189
  %38 = load i32, i32* %4, align 4, !dbg !190
  %39 = add nsw i32 %38, 1, !dbg !191
  %40 = sext i32 %39 to i64, !dbg !190
  %41 = call noalias i8* @malloc(i64 noundef %40) #9, !dbg !192
  store i8* %41, i8** %6, align 8, !dbg !189
  %42 = load i8*, i8** %6, align 8, !dbg !193
  %43 = icmp eq i8* %42, null, !dbg !195
  br i1 %43, label %44, label %45, !dbg !196

44:                                               ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !197
  br label %85, !dbg !197

45:                                               ; preds = %0
  %46 = load i8*, i8** %6, align 8, !dbg !198
  %47 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !199
  %48 = load i32, i32* %4, align 4, !dbg !200
  %49 = add nsw i32 %48, 1, !dbg !201
  %50 = sext i32 %49 to i64, !dbg !200
  %51 = call i8* @memcpy(i8* %46, i8* %47, i64 %50), !dbg !199
  call void @llvm.dbg.declare(metadata i8** %7, metadata !202, metadata !DIExpression()), !dbg !203
  %52 = load i8*, i8** %6, align 8, !dbg !204
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !205
  %54 = call i8* @xmlStrcat(i8* noundef %52, i8* noundef %53), !dbg !206
  store i8* %54, i8** %7, align 8, !dbg !203
  %55 = load i8*, i8** %7, align 8, !dbg !207
  %56 = icmp ne i8* %55, null, !dbg !209
  br i1 %56, label %57, label %69, !dbg !210

57:                                               ; preds = %45
  %58 = load i32, i32* %5, align 4, !dbg !211
  %59 = icmp sge i32 %58, 0, !dbg !211
  br i1 %59, label %60, label %65, !dbg !211

60:                                               ; preds = %57
  %61 = load i32, i32* %5, align 4, !dbg !211
  %62 = icmp sle i32 %61, 255, !dbg !211
  br i1 %62, label %63, label %65, !dbg !211

63:                                               ; preds = %60
  br i1 true, label %64, label %65, !dbg !211

64:                                               ; preds = %63
  br label %67, !dbg !211

65:                                               ; preds = %63, %60, %57
  %66 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.4, i64 0, i64 0), i32 noundef 125, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !211
  br label %67, !dbg !211

67:                                               ; preds = %65, %64
  %68 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.4, i64 0, i64 0), i32 noundef 128, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !213
  br label %69, !dbg !214

69:                                               ; preds = %67, %45
  %70 = load i8*, i8** %7, align 8, !dbg !215
  %71 = icmp ne i8* %70, null, !dbg !217
  br i1 %71, label %72, label %78, !dbg !218

72:                                               ; preds = %69
  %73 = load i8*, i8** %7, align 8, !dbg !219
  %74 = load i8*, i8** %6, align 8, !dbg !220
  %75 = icmp ne i8* %73, %74, !dbg !221
  br i1 %75, label %76, label %78, !dbg !222

76:                                               ; preds = %72
  %77 = load i8*, i8** %7, align 8, !dbg !223
  call void @free(i8* noundef %77) #9, !dbg !225
  br label %84, !dbg !226

78:                                               ; preds = %72, %69
  %79 = load i8*, i8** %6, align 8, !dbg !227
  %80 = icmp ne i8* %79, null, !dbg !229
  br i1 %80, label %81, label %83, !dbg !230

81:                                               ; preds = %78
  %82 = load i8*, i8** %6, align 8, !dbg !231
  call void @free(i8* noundef %82) #9, !dbg !233
  br label %83, !dbg !234

83:                                               ; preds = %81, %78
  br label %84

84:                                               ; preds = %83, %76
  store i32 0, i32* %1, align 4, !dbg !235
  br label %85, !dbg !235

85:                                               ; preds = %84, %44
  %86 = load i32, i32* %1, align 4, !dbg !236
  ret i32 %86, !dbg !236
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #6

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !237 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !243, metadata !DIExpression()), !dbg !244
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !245, metadata !DIExpression()), !dbg !246
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !247, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.declare(metadata i8** %7, metadata !249, metadata !DIExpression()), !dbg !251
  %9 = load i8*, i8** %4, align 8, !dbg !252
  store i8* %9, i8** %7, align 8, !dbg !251
  call void @llvm.dbg.declare(metadata i8** %8, metadata !253, metadata !DIExpression()), !dbg !254
  %10 = load i8*, i8** %5, align 8, !dbg !255
  store i8* %10, i8** %8, align 8, !dbg !254
  br label %11, !dbg !256

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !257
  %13 = add i64 %12, -1, !dbg !257
  store i64 %13, i64* %6, align 8, !dbg !257
  %14 = icmp ugt i64 %12, 0, !dbg !258
  br i1 %14, label %15, label %21, !dbg !256

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !259
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !259
  store i8* %17, i8** %8, align 8, !dbg !259
  %18 = load i8, i8* %16, align 1, !dbg !260
  %19 = load i8*, i8** %7, align 8, !dbg !261
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !261
  store i8* %20, i8** %7, align 8, !dbg !261
  store i8 %18, i8* %19, align 1, !dbg !262
  br label %11, !dbg !256, !llvm.loop !263

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !265
  ret i8* %22, !dbg !266
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21, !21}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/159_xmlstring.c_469_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "c76bff130dca19e7f73fe6eda973e455")
!2 = !{!3, !4, !7, !9}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!6 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !1, line: 11, baseType: !6)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !10, line: 46, baseType: !11)
!10 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!11 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!12 = distinct !DICompileUnit(language: DW_LANG_C99, file: !13, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!13 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!14 = !{i32 7, !"Dwarf Version", i32 5}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{i32 7, !"PIC Level", i32 2}
!18 = !{i32 7, !"PIE Level", i32 2}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"Ubuntu clang version 14.0.6"}
!22 = distinct !DISubprogram(name: "xmlStrlen", scope: !1, file: !1, line: 14, type: !23, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!23 = !DISubroutineType(types: !24)
!24 = !{!25, !26}
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!28 = !{}
!29 = !DILocalVariable(name: "str", arg: 1, scope: !22, file: !1, line: 14, type: !26)
!30 = !DILocation(line: 14, column: 30, scope: !22)
!31 = !DILocation(line: 15, column: 9, scope: !32)
!32 = distinct !DILexicalBlock(scope: !22, file: !1, line: 15, column: 9)
!33 = !DILocation(line: 15, column: 13, scope: !32)
!34 = !DILocation(line: 15, column: 9, scope: !22)
!35 = !DILocation(line: 15, column: 22, scope: !32)
!36 = !DILocation(line: 16, column: 32, scope: !22)
!37 = !DILocation(line: 16, column: 12, scope: !22)
!38 = !DILocation(line: 16, column: 5, scope: !22)
!39 = !DILocation(line: 17, column: 1, scope: !22)
!40 = distinct !DISubprogram(name: "xmlRealloc", scope: !1, file: !1, line: 20, type: !41, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!41 = !DISubroutineType(types: !42)
!42 = !{!3, !3, !9}
!43 = !DILocalVariable(name: "ptr", arg: 1, scope: !40, file: !1, line: 20, type: !3)
!44 = !DILocation(line: 20, column: 24, scope: !40)
!45 = !DILocalVariable(name: "size", arg: 2, scope: !40, file: !1, line: 20, type: !9)
!46 = !DILocation(line: 20, column: 36, scope: !40)
!47 = !DILocation(line: 21, column: 9, scope: !48)
!48 = distinct !DILexicalBlock(scope: !40, file: !1, line: 21, column: 9)
!49 = !DILocation(line: 21, column: 14, scope: !48)
!50 = !DILocation(line: 21, column: 9, scope: !40)
!51 = !DILocation(line: 21, column: 20, scope: !48)
!52 = !DILocation(line: 22, column: 20, scope: !40)
!53 = !DILocation(line: 22, column: 25, scope: !40)
!54 = !DILocation(line: 22, column: 12, scope: !40)
!55 = !DILocation(line: 22, column: 5, scope: !40)
!56 = !DILocation(line: 23, column: 1, scope: !40)
!57 = distinct !DISubprogram(name: "xmlErrMemory", scope: !1, file: !1, line: 26, type: !58, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !3, !4}
!60 = !DILocalVariable(name: "ctx", arg: 1, scope: !57, file: !1, line: 26, type: !3)
!61 = !DILocation(line: 26, column: 25, scope: !57)
!62 = !DILocalVariable(name: "extra", arg: 2, scope: !57, file: !1, line: 26, type: !4)
!63 = !DILocation(line: 26, column: 42, scope: !57)
!64 = !DILocation(line: 28, column: 1, scope: !57)
!65 = distinct !DISubprogram(name: "xmlStrcat", scope: !1, file: !1, line: 31, type: !66, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!66 = !DISubroutineType(types: !67)
!67 = !{!7, !7, !26}
!68 = !DILocalVariable(name: "cur", arg: 1, scope: !65, file: !1, line: 31, type: !7)
!69 = !DILocation(line: 31, column: 29, scope: !65)
!70 = !DILocalVariable(name: "add", arg: 2, scope: !65, file: !1, line: 31, type: !26)
!71 = !DILocation(line: 31, column: 49, scope: !65)
!72 = !DILocalVariable(name: "size", scope: !65, file: !1, line: 32, type: !25)
!73 = !DILocation(line: 32, column: 9, scope: !65)
!74 = !DILocalVariable(name: "len", scope: !65, file: !1, line: 32, type: !25)
!75 = !DILocation(line: 32, column: 15, scope: !65)
!76 = !DILocation(line: 34, column: 9, scope: !77)
!77 = distinct !DILexicalBlock(scope: !65, file: !1, line: 34, column: 9)
!78 = !DILocation(line: 34, column: 13, scope: !77)
!79 = !DILocation(line: 34, column: 9, scope: !65)
!80 = !DILocation(line: 34, column: 29, scope: !77)
!81 = !DILocation(line: 34, column: 22, scope: !77)
!82 = !DILocation(line: 35, column: 9, scope: !83)
!83 = distinct !DILexicalBlock(scope: !65, file: !1, line: 35, column: 9)
!84 = !DILocation(line: 35, column: 13, scope: !83)
!85 = !DILocation(line: 35, column: 9, scope: !65)
!86 = !DILocation(line: 36, column: 26, scope: !83)
!87 = !DILocation(line: 36, column: 16, scope: !83)
!88 = !DILocation(line: 36, column: 15, scope: !83)
!89 = !DILocation(line: 36, column: 9, scope: !83)
!90 = !DILocation(line: 38, column: 21, scope: !65)
!91 = !DILocation(line: 38, column: 11, scope: !65)
!92 = !DILocation(line: 38, column: 9, scope: !65)
!93 = !DILocation(line: 39, column: 9, scope: !94)
!94 = distinct !DILexicalBlock(scope: !65, file: !1, line: 39, column: 9)
!95 = !DILocation(line: 39, column: 13, scope: !94)
!96 = !DILocation(line: 39, column: 9, scope: !65)
!97 = !DILocation(line: 39, column: 18, scope: !94)
!98 = !DILocation(line: 41, column: 22, scope: !65)
!99 = !DILocation(line: 41, column: 12, scope: !65)
!100 = !DILocation(line: 41, column: 10, scope: !65)
!101 = !DILocation(line: 42, column: 10, scope: !102)
!102 = distinct !DILexicalBlock(scope: !65, file: !1, line: 42, column: 9)
!103 = !DILocation(line: 42, column: 15, scope: !102)
!104 = !DILocation(line: 42, column: 20, scope: !102)
!105 = !DILocation(line: 42, column: 24, scope: !102)
!106 = !DILocation(line: 42, column: 41, scope: !102)
!107 = !DILocation(line: 42, column: 39, scope: !102)
!108 = !DILocation(line: 42, column: 29, scope: !102)
!109 = !DILocation(line: 42, column: 9, scope: !65)
!110 = !DILocation(line: 43, column: 9, scope: !102)
!111 = !DILocation(line: 42, column: 44, scope: !102)
!112 = !DILabel(scope: !65, name: "retry", file: !1, line: 45)
!113 = !DILocation(line: 45, column: 5, scope: !65)
!114 = !DILocation(line: 46, column: 34, scope: !65)
!115 = !DILocation(line: 46, column: 48, scope: !65)
!116 = !DILocation(line: 46, column: 39, scope: !65)
!117 = !DILocation(line: 46, column: 55, scope: !65)
!118 = !DILocation(line: 46, column: 53, scope: !65)
!119 = !DILocation(line: 46, column: 59, scope: !65)
!120 = !DILocation(line: 46, column: 23, scope: !65)
!121 = !DILocation(line: 46, column: 9, scope: !65)
!122 = !DILocation(line: 47, column: 9, scope: !123)
!123 = distinct !DILexicalBlock(scope: !65, file: !1, line: 47, column: 9)
!124 = !DILocation(line: 47, column: 13, scope: !123)
!125 = !DILocation(line: 47, column: 9, scope: !65)
!126 = !DILocation(line: 48, column: 9, scope: !127)
!127 = distinct !DILexicalBlock(scope: !123, file: !1, line: 47, column: 22)
!128 = !DILocation(line: 49, column: 16, scope: !127)
!129 = !DILocation(line: 49, column: 9, scope: !127)
!130 = !DILocation(line: 53, column: 13, scope: !65)
!131 = !DILocation(line: 53, column: 17, scope: !65)
!132 = !DILocation(line: 53, column: 24, scope: !65)
!133 = !DILocation(line: 53, column: 29, scope: !65)
!134 = !DILocation(line: 53, column: 5, scope: !65)
!135 = !DILocation(line: 54, column: 5, scope: !65)
!136 = !DILocation(line: 54, column: 9, scope: !65)
!137 = !DILocation(line: 54, column: 16, scope: !65)
!138 = !DILocation(line: 54, column: 14, scope: !65)
!139 = !DILocation(line: 54, column: 21, scope: !65)
!140 = !DILocation(line: 55, column: 12, scope: !65)
!141 = !DILocation(line: 55, column: 5, scope: !65)
!142 = !DILocation(line: 56, column: 1, scope: !65)
!143 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 59, type: !144, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!144 = !DISubroutineType(types: !145)
!145 = !{!25}
!146 = !DILocalVariable(name: "cur_buf", scope: !143, file: !1, line: 61, type: !147)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 256)
!150 = !DILocation(line: 61, column: 13, scope: !143)
!151 = !DILocalVariable(name: "add_buf", scope: !143, file: !1, line: 62, type: !147)
!152 = !DILocation(line: 62, column: 13, scope: !143)
!153 = !DILocalVariable(name: "cur_len", scope: !143, file: !1, line: 63, type: !25)
!154 = !DILocation(line: 63, column: 9, scope: !143)
!155 = !DILocalVariable(name: "add_len", scope: !143, file: !1, line: 63, type: !25)
!156 = !DILocation(line: 63, column: 18, scope: !143)
!157 = !DILocation(line: 66, column: 24, scope: !143)
!158 = !DILocation(line: 66, column: 5, scope: !143)
!159 = !DILocation(line: 67, column: 24, scope: !143)
!160 = !DILocation(line: 67, column: 5, scope: !143)
!161 = !DILocation(line: 70, column: 5, scope: !143)
!162 = !DILocation(line: 70, column: 18, scope: !143)
!163 = !DILocation(line: 71, column: 5, scope: !143)
!164 = !DILocation(line: 71, column: 18, scope: !143)
!165 = !DILocation(line: 74, column: 25, scope: !143)
!166 = !DILocation(line: 74, column: 15, scope: !143)
!167 = !DILocation(line: 74, column: 13, scope: !143)
!168 = !DILocation(line: 75, column: 25, scope: !143)
!169 = !DILocation(line: 75, column: 15, scope: !143)
!170 = !DILocation(line: 75, column: 13, scope: !143)
!171 = !DILocation(line: 78, column: 17, scope: !143)
!172 = !DILocation(line: 78, column: 25, scope: !143)
!173 = !DILocation(line: 78, column: 5, scope: !143)
!174 = !DILocation(line: 79, column: 17, scope: !143)
!175 = !DILocation(line: 79, column: 25, scope: !143)
!176 = !DILocation(line: 79, column: 5, scope: !143)
!177 = !DILocation(line: 80, column: 17, scope: !143)
!178 = !DILocation(line: 80, column: 25, scope: !143)
!179 = !DILocation(line: 80, column: 5, scope: !143)
!180 = !DILocation(line: 81, column: 17, scope: !143)
!181 = !DILocation(line: 81, column: 25, scope: !143)
!182 = !DILocation(line: 81, column: 5, scope: !143)
!183 = !DILocation(line: 84, column: 17, scope: !143)
!184 = !DILocation(line: 84, column: 38, scope: !143)
!185 = !DILocation(line: 84, column: 36, scope: !143)
!186 = !DILocation(line: 84, column: 25, scope: !143)
!187 = !DILocation(line: 84, column: 5, scope: !143)
!188 = !DILocalVariable(name: "cur", scope: !143, file: !1, line: 87, type: !7)
!189 = !DILocation(line: 87, column: 14, scope: !143)
!190 = !DILocation(line: 87, column: 37, scope: !143)
!191 = !DILocation(line: 87, column: 45, scope: !143)
!192 = !DILocation(line: 87, column: 30, scope: !143)
!193 = !DILocation(line: 88, column: 9, scope: !194)
!194 = distinct !DILexicalBlock(scope: !143, file: !1, line: 88, column: 9)
!195 = !DILocation(line: 88, column: 13, scope: !194)
!196 = !DILocation(line: 88, column: 9, scope: !143)
!197 = !DILocation(line: 88, column: 22, scope: !194)
!198 = !DILocation(line: 89, column: 12, scope: !143)
!199 = !DILocation(line: 89, column: 5, scope: !143)
!200 = !DILocation(line: 89, column: 26, scope: !143)
!201 = !DILocation(line: 89, column: 34, scope: !143)
!202 = !DILocalVariable(name: "result", scope: !143, file: !1, line: 92, type: !7)
!203 = !DILocation(line: 92, column: 14, scope: !143)
!204 = !DILocation(line: 92, column: 33, scope: !143)
!205 = !DILocation(line: 92, column: 38, scope: !143)
!206 = !DILocation(line: 92, column: 23, scope: !143)
!207 = !DILocation(line: 117, column: 9, scope: !208)
!208 = distinct !DILexicalBlock(scope: !143, file: !1, line: 117, column: 9)
!209 = !DILocation(line: 117, column: 16, scope: !208)
!210 = !DILocation(line: 117, column: 9, scope: !143)
!211 = !DILocation(line: 125, column: 9, scope: !212)
!212 = distinct !DILexicalBlock(scope: !208, file: !1, line: 117, column: 25)
!213 = !DILocation(line: 128, column: 9, scope: !212)
!214 = !DILocation(line: 129, column: 5, scope: !212)
!215 = !DILocation(line: 132, column: 9, scope: !216)
!216 = distinct !DILexicalBlock(scope: !143, file: !1, line: 132, column: 9)
!217 = !DILocation(line: 132, column: 16, scope: !216)
!218 = !DILocation(line: 132, column: 24, scope: !216)
!219 = !DILocation(line: 132, column: 27, scope: !216)
!220 = !DILocation(line: 132, column: 37, scope: !216)
!221 = !DILocation(line: 132, column: 34, scope: !216)
!222 = !DILocation(line: 132, column: 9, scope: !143)
!223 = !DILocation(line: 133, column: 14, scope: !224)
!224 = distinct !DILexicalBlock(scope: !216, file: !1, line: 132, column: 42)
!225 = !DILocation(line: 133, column: 9, scope: !224)
!226 = !DILocation(line: 134, column: 5, scope: !224)
!227 = !DILocation(line: 134, column: 16, scope: !228)
!228 = distinct !DILexicalBlock(scope: !216, file: !1, line: 134, column: 16)
!229 = !DILocation(line: 134, column: 20, scope: !228)
!230 = !DILocation(line: 134, column: 16, scope: !216)
!231 = !DILocation(line: 135, column: 14, scope: !232)
!232 = distinct !DILexicalBlock(scope: !228, file: !1, line: 134, column: 29)
!233 = !DILocation(line: 135, column: 9, scope: !232)
!234 = !DILocation(line: 136, column: 5, scope: !232)
!235 = !DILocation(line: 138, column: 5, scope: !143)
!236 = !DILocation(line: 139, column: 1, scope: !143)
!237 = distinct !DISubprogram(name: "memcpy", scope: !238, file: !238, line: 12, type: !239, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !28)
!238 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!239 = !DISubroutineType(types: !240)
!240 = !{!3, !3, !241, !9}
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!243 = !DILocalVariable(name: "destaddr", arg: 1, scope: !237, file: !238, line: 12, type: !3)
!244 = !DILocation(line: 12, column: 20, scope: !237)
!245 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !237, file: !238, line: 12, type: !241)
!246 = !DILocation(line: 12, column: 42, scope: !237)
!247 = !DILocalVariable(name: "len", arg: 3, scope: !237, file: !238, line: 12, type: !9)
!248 = !DILocation(line: 12, column: 58, scope: !237)
!249 = !DILocalVariable(name: "dest", scope: !237, file: !238, line: 13, type: !250)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!251 = !DILocation(line: 13, column: 9, scope: !237)
!252 = !DILocation(line: 13, column: 16, scope: !237)
!253 = !DILocalVariable(name: "src", scope: !237, file: !238, line: 14, type: !4)
!254 = !DILocation(line: 14, column: 15, scope: !237)
!255 = !DILocation(line: 14, column: 21, scope: !237)
!256 = !DILocation(line: 16, column: 3, scope: !237)
!257 = !DILocation(line: 16, column: 13, scope: !237)
!258 = !DILocation(line: 16, column: 16, scope: !237)
!259 = !DILocation(line: 17, column: 19, scope: !237)
!260 = !DILocation(line: 17, column: 15, scope: !237)
!261 = !DILocation(line: 17, column: 10, scope: !237)
!262 = !DILocation(line: 17, column: 13, scope: !237)
!263 = distinct !{!263, !256, !259, !264}
!264 = !{!"llvm.loop.mustprogress"}
!265 = !DILocation(line: 18, column: 10, scope: !237)
!266 = !DILocation(line: 18, column: 3, scope: !237)

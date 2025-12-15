; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/158_xmlstring.c_510_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/158_xmlstring.c_510_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"str1_buf\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"str2_buf\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.5 = private unnamed_addr constant [82 x i8] c"(size + len + 1 <= (int)xmlMalloc((size_t)size + len + 1)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [107 x i8] c"se_runs/sa_llm/libxml2_55980_vul/158_xmlstring.c_510_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !24 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !28, metadata !DIExpression()), !dbg !29
  %3 = load i64, i64* %2, align 8, !dbg !30
  %4 = call noalias i8* @malloc(i64 noundef %3) #8, !dbg !31
  ret i8* %4, !dbg !32
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !33 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !36, metadata !DIExpression()), !dbg !37
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !38, metadata !DIExpression()), !dbg !39
  %5 = load i8*, i8** %3, align 8, !dbg !40
  %6 = load i8*, i8** %4, align 8, !dbg !41
  ret void, !dbg !42
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlStrndup(i8* noundef %0, i32 noundef %1) #0 !dbg !43 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !48, metadata !DIExpression()), !dbg !49
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !50, metadata !DIExpression()), !dbg !51
  %7 = load i8*, i8** %4, align 8, !dbg !52
  %8 = icmp eq i8* %7, null, !dbg !54
  br i1 %8, label %12, label %9, !dbg !55

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4, !dbg !56
  %11 = icmp slt i32 %10, 0, !dbg !57
  br i1 %11, label %12, label %13, !dbg !58

12:                                               ; preds = %9, %2
  store i8* null, i8** %3, align 8, !dbg !59
  br label %32, !dbg !59

13:                                               ; preds = %9
  call void @llvm.dbg.declare(metadata i8** %6, metadata !60, metadata !DIExpression()), !dbg !61
  %14 = load i32, i32* %5, align 4, !dbg !62
  %15 = add nsw i32 %14, 1, !dbg !63
  %16 = sext i32 %15 to i64, !dbg !62
  %17 = call noalias i8* @malloc(i64 noundef %16) #8, !dbg !64
  store i8* %17, i8** %6, align 8, !dbg !61
  %18 = load i8*, i8** %6, align 8, !dbg !65
  %19 = icmp eq i8* %18, null, !dbg !67
  br i1 %19, label %20, label %21, !dbg !68

20:                                               ; preds = %13
  store i8* null, i8** %3, align 8, !dbg !69
  br label %32, !dbg !69

21:                                               ; preds = %13
  %22 = load i8*, i8** %6, align 8, !dbg !70
  %23 = load i8*, i8** %4, align 8, !dbg !71
  %24 = load i32, i32* %5, align 4, !dbg !72
  %25 = sext i32 %24 to i64, !dbg !72
  %26 = call i8* @memcpy(i8* %22, i8* %23, i64 %25), !dbg !73
  %27 = load i8*, i8** %6, align 8, !dbg !74
  %28 = load i32, i32* %5, align 4, !dbg !75
  %29 = sext i32 %28 to i64, !dbg !74
  %30 = getelementptr inbounds i8, i8* %27, i64 %29, !dbg !74
  store i8 0, i8* %30, align 1, !dbg !76
  %31 = load i8*, i8** %6, align 8, !dbg !77
  store i8* %31, i8** %3, align 8, !dbg !78
  br label %32, !dbg !78

32:                                               ; preds = %21, %20, %12
  %33 = load i8*, i8** %3, align 8, !dbg !79
  ret i8* %33, !dbg !79
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlStrcat(i8* noundef %0, i8* noundef %1) #0 !dbg !80 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !83, metadata !DIExpression()), !dbg !84
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !85, metadata !DIExpression()), !dbg !86
  call void @llvm.dbg.declare(metadata i8** %6, metadata !87, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.declare(metadata i32* %7, metadata !89, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.declare(metadata i32* %8, metadata !91, metadata !DIExpression()), !dbg !92
  %9 = load i8*, i8** %5, align 8, !dbg !93
  %10 = icmp eq i8* %9, null, !dbg !95
  br i1 %10, label %11, label %13, !dbg !96

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8, !dbg !97
  store i8* %12, i8** %3, align 8, !dbg !98
  br label %69, !dbg !98

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8, !dbg !99
  %15 = icmp eq i8* %14, null, !dbg !101
  br i1 %15, label %16, label %19, !dbg !102

16:                                               ; preds = %13
  %17 = load i8*, i8** %5, align 8, !dbg !103
  %18 = call i8* @xmlStrndup(i8* noundef %17, i32 noundef -1), !dbg !104
  store i8* %18, i8** %3, align 8, !dbg !105
  br label %69, !dbg !105

19:                                               ; preds = %13
  %20 = load i8*, i8** %5, align 8, !dbg !106
  %21 = call i64 @strlen(i8* noundef %20) #9, !dbg !107
  %22 = trunc i64 %21 to i32, !dbg !107
  store i32 %22, i32* %7, align 4, !dbg !108
  %23 = load i8*, i8** %4, align 8, !dbg !109
  %24 = call i64 @strlen(i8* noundef %23) #9, !dbg !110
  %25 = trunc i64 %24 to i32, !dbg !110
  store i32 %25, i32* %8, align 4, !dbg !111
  %26 = load i32, i32* %8, align 4, !dbg !112
  %27 = icmp slt i32 %26, 0, !dbg !114
  br i1 %27, label %33, label %28, !dbg !115

28:                                               ; preds = %19
  %29 = load i32, i32* %8, align 4, !dbg !116
  %30 = load i32, i32* %7, align 4, !dbg !117
  %31 = sub nsw i32 2147483647, %30, !dbg !118
  %32 = icmp sgt i32 %29, %31, !dbg !119
  br i1 %32, label %33, label %34, !dbg !120

33:                                               ; preds = %28, %19
  store i8* null, i8** %3, align 8, !dbg !121
  br label %69, !dbg !121

34:                                               ; preds = %28
  %35 = load i32, i32* %8, align 4, !dbg !122
  %36 = sext i32 %35 to i64, !dbg !123
  %37 = load i32, i32* %7, align 4, !dbg !124
  %38 = sext i32 %37 to i64, !dbg !124
  %39 = add i64 %36, %38, !dbg !125
  %40 = add i64 %39, 1, !dbg !126
  %41 = call i8* @xmlMalloc(i64 noundef %40), !dbg !127
  store i8* %41, i8** %6, align 8, !dbg !128
  %42 = load i8*, i8** %6, align 8, !dbg !129
  %43 = icmp eq i8* %42, null, !dbg !131
  br i1 %43, label %44, label %48, !dbg !132

44:                                               ; preds = %34
  call void @xmlErrMemory(i8* noundef null, i8* noundef null), !dbg !133
  %45 = load i8*, i8** %4, align 8, !dbg !135
  %46 = load i32, i32* %8, align 4, !dbg !136
  %47 = call i8* @xmlStrndup(i8* noundef %45, i32 noundef %46), !dbg !137
  store i8* %47, i8** %3, align 8, !dbg !138
  br label %69, !dbg !138

48:                                               ; preds = %34
  %49 = load i8*, i8** %6, align 8, !dbg !139
  %50 = load i8*, i8** %4, align 8, !dbg !140
  %51 = load i32, i32* %8, align 4, !dbg !141
  %52 = sext i32 %51 to i64, !dbg !141
  %53 = call i8* @memcpy(i8* %49, i8* %50, i64 %52), !dbg !142
  %54 = load i8*, i8** %6, align 8, !dbg !143
  %55 = load i32, i32* %8, align 4, !dbg !144
  %56 = sext i32 %55 to i64, !dbg !143
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !143
  %58 = load i8*, i8** %5, align 8, !dbg !145
  %59 = load i32, i32* %7, align 4, !dbg !146
  %60 = sext i32 %59 to i64, !dbg !146
  %61 = call i8* @memcpy(i8* %57, i8* %58, i64 %60), !dbg !147
  %62 = load i8*, i8** %6, align 8, !dbg !148
  %63 = load i32, i32* %8, align 4, !dbg !149
  %64 = load i32, i32* %7, align 4, !dbg !150
  %65 = add nsw i32 %63, %64, !dbg !151
  %66 = sext i32 %65 to i64, !dbg !148
  %67 = getelementptr inbounds i8, i8* %62, i64 %66, !dbg !148
  store i8 0, i8* %67, align 1, !dbg !152
  %68 = load i8*, i8** %6, align 8, !dbg !153
  store i8* %68, i8** %3, align 8, !dbg !154
  br label %69, !dbg !154

69:                                               ; preds = %48, %44, %33, %16, %11
  %70 = load i8*, i8** %3, align 8, !dbg !155
  ret i8* %70, !dbg !155
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !156 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca [256 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !159, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !164, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.declare(metadata i32* %4, metadata !166, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.declare(metadata i32* %5, metadata !168, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.declare(metadata i8** %6, metadata !170, metadata !DIExpression()), !dbg !171
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !172
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !dbg !173
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !174
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)), !dbg !175
  %10 = bitcast i32* %4 to i8*, !dbg !176
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !dbg !177
  %11 = bitcast i32* %5 to i8*, !dbg !178
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)), !dbg !179
  %12 = load i32, i32* %4, align 4, !dbg !180
  %13 = icmp sge i32 %12, 0, !dbg !181
  br i1 %13, label %14, label %17, !dbg !182

14:                                               ; preds = %0
  %15 = load i32, i32* %4, align 4, !dbg !183
  %16 = icmp slt i32 %15, 256, !dbg !184
  br label %17

17:                                               ; preds = %14, %0
  %18 = phi i1 [ false, %0 ], [ %16, %14 ], !dbg !185
  %19 = zext i1 %18 to i32, !dbg !182
  %20 = sext i32 %19 to i64, !dbg !180
  call void @klee_assume(i64 noundef %20), !dbg !186
  %21 = load i32, i32* %5, align 4, !dbg !187
  %22 = icmp sge i32 %21, 0, !dbg !188
  br i1 %22, label %23, label %26, !dbg !189

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4, !dbg !190
  %25 = icmp slt i32 %24, 256, !dbg !191
  br label %26

26:                                               ; preds = %23, %17
  %27 = phi i1 [ false, %17 ], [ %25, %23 ], !dbg !185
  %28 = zext i1 %27 to i32, !dbg !189
  %29 = sext i32 %28 to i64, !dbg !187
  call void @klee_assume(i64 noundef %29), !dbg !192
  %30 = load i32, i32* %4, align 4, !dbg !193
  %31 = sext i32 %30 to i64, !dbg !194
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 %31, !dbg !194
  store i8 0, i8* %32, align 1, !dbg !195
  %33 = load i32, i32* %5, align 4, !dbg !196
  %34 = sext i32 %33 to i64, !dbg !197
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 %34, !dbg !197
  store i8 0, i8* %35, align 1, !dbg !198
  call void @llvm.dbg.declare(metadata i8** %7, metadata !199, metadata !DIExpression()), !dbg !200
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !201
  %37 = load i32, i32* %4, align 4, !dbg !202
  %38 = call i8* @xmlStrndup(i8* noundef %36, i32 noundef %37), !dbg !203
  store i8* %38, i8** %7, align 8, !dbg !200
  %39 = load i8*, i8** %7, align 8, !dbg !204
  %40 = icmp eq i8* %39, null, !dbg !206
  br i1 %40, label %41, label %42, !dbg !207

41:                                               ; preds = %26
  store i32 0, i32* %1, align 4, !dbg !208
  br label %71, !dbg !208

42:                                               ; preds = %26
  %43 = load i8*, i8** %7, align 8, !dbg !209
  %44 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !210
  %45 = call i8* @xmlStrcat(i8* noundef %43, i8* noundef %44), !dbg !211
  store i8* %45, i8** %6, align 8, !dbg !212
  %46 = load i8*, i8** %6, align 8, !dbg !213
  %47 = icmp ne i8* %46, null, !dbg !215
  br i1 %47, label %48, label %69, !dbg !216

48:                                               ; preds = %42
  %49 = load i32, i32* %4, align 4, !dbg !217
  %50 = load i32, i32* %5, align 4, !dbg !217
  %51 = add nsw i32 %49, %50, !dbg !217
  %52 = add nsw i32 %51, 1, !dbg !217
  %53 = load i32, i32* %4, align 4, !dbg !217
  %54 = sext i32 %53 to i64, !dbg !217
  %55 = load i32, i32* %5, align 4, !dbg !217
  %56 = sext i32 %55 to i64, !dbg !217
  %57 = add i64 %54, %56, !dbg !217
  %58 = add i64 %57, 1, !dbg !217
  %59 = call i8* @xmlMalloc(i64 noundef %58), !dbg !217
  %60 = ptrtoint i8* %59 to i32, !dbg !217
  %61 = icmp sle i32 %52, %60, !dbg !217
  br i1 %61, label %62, label %64, !dbg !217

62:                                               ; preds = %48
  br i1 true, label %63, label %64, !dbg !217

63:                                               ; preds = %62
  br label %66, !dbg !217

64:                                               ; preds = %62, %48
  %65 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.6, i64 0, i64 0), i32 noundef 75, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !217
  br label %66, !dbg !217

66:                                               ; preds = %64, %63
  %67 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.6, i64 0, i64 0), i32 noundef 76, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !219
  %68 = load i8*, i8** %6, align 8, !dbg !220
  call void @free(i8* noundef %68) #8, !dbg !221
  br label %69, !dbg !222

69:                                               ; preds = %66, %42
  %70 = load i8*, i8** %7, align 8, !dbg !223
  call void @free(i8* noundef %70) #8, !dbg !224
  store i32 0, i32* %1, align 4, !dbg !225
  br label %71, !dbg !225

71:                                               ; preds = %69, %41
  %72 = load i32, i32* %1, align 4, !dbg !226
  ret i32 %72, !dbg !226
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #6

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !227 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !233, metadata !DIExpression()), !dbg !234
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !235, metadata !DIExpression()), !dbg !236
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !237, metadata !DIExpression()), !dbg !238
  call void @llvm.dbg.declare(metadata i8** %7, metadata !239, metadata !DIExpression()), !dbg !241
  %9 = load i8*, i8** %4, align 8, !dbg !242
  store i8* %9, i8** %7, align 8, !dbg !241
  call void @llvm.dbg.declare(metadata i8** %8, metadata !243, metadata !DIExpression()), !dbg !244
  %10 = load i8*, i8** %5, align 8, !dbg !245
  store i8* %10, i8** %8, align 8, !dbg !244
  br label %11, !dbg !246

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !247
  %13 = add i64 %12, -1, !dbg !247
  store i64 %13, i64* %6, align 8, !dbg !247
  %14 = icmp ugt i64 %12, 0, !dbg !248
  br i1 %14, label %15, label %21, !dbg !246

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !249
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !249
  store i8* %17, i8** %8, align 8, !dbg !249
  %18 = load i8, i8* %16, align 1, !dbg !250
  %19 = load i8*, i8** %7, align 8, !dbg !251
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !251
  store i8* %20, i8** %7, align 8, !dbg !251
  store i8 %18, i8* %19, align 1, !dbg !252
  br label %11, !dbg !246, !llvm.loop !253

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !255
  ret i8* %22, !dbg !256
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23, !23}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/158_xmlstring.c_510_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "d75130ce01fe7f63439f8696b5803b9d")
!2 = !{!3, !6, !7, !10, !13}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !1, line: 10, baseType: !5)
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !11, line: 46, baseType: !12)
!11 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!12 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = distinct !DICompileUnit(language: DW_LANG_C99, file: !15, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!15 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!16 = !{i32 7, !"Dwarf Version", i32 5}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{i32 7, !"PIC Level", i32 2}
!20 = !{i32 7, !"PIE Level", i32 2}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"Ubuntu clang version 14.0.6"}
!24 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 12, type: !25, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !27)
!25 = !DISubroutineType(types: !26)
!26 = !{!3, !10}
!27 = !{}
!28 = !DILocalVariable(name: "size", arg: 1, scope: !24, file: !1, line: 12, type: !10)
!29 = !DILocation(line: 12, column: 27, scope: !24)
!30 = !DILocation(line: 13, column: 29, scope: !24)
!31 = !DILocation(line: 13, column: 22, scope: !24)
!32 = !DILocation(line: 13, column: 5, scope: !24)
!33 = distinct !DISubprogram(name: "xmlErrMemory", scope: !1, file: !1, line: 16, type: !34, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !27)
!34 = !DISubroutineType(types: !35)
!35 = !{null, !6, !7}
!36 = !DILocalVariable(name: "ctx", arg: 1, scope: !33, file: !1, line: 16, type: !6)
!37 = !DILocation(line: 16, column: 25, scope: !33)
!38 = !DILocalVariable(name: "msg", arg: 2, scope: !33, file: !1, line: 16, type: !7)
!39 = !DILocation(line: 16, column: 42, scope: !33)
!40 = !DILocation(line: 17, column: 11, scope: !33)
!41 = !DILocation(line: 18, column: 11, scope: !33)
!42 = !DILocation(line: 19, column: 1, scope: !33)
!43 = distinct !DISubprogram(name: "xmlStrndup", scope: !1, file: !1, line: 21, type: !44, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !27)
!44 = !DISubroutineType(types: !45)
!45 = !{!3, !46, !13}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!48 = !DILocalVariable(name: "str", arg: 1, scope: !43, file: !1, line: 21, type: !46)
!49 = !DILocation(line: 21, column: 36, scope: !43)
!50 = !DILocalVariable(name: "size", arg: 2, scope: !43, file: !1, line: 21, type: !13)
!51 = !DILocation(line: 21, column: 45, scope: !43)
!52 = !DILocation(line: 22, column: 9, scope: !53)
!53 = distinct !DILexicalBlock(scope: !43, file: !1, line: 22, column: 9)
!54 = !DILocation(line: 22, column: 13, scope: !53)
!55 = !DILocation(line: 22, column: 21, scope: !53)
!56 = !DILocation(line: 22, column: 24, scope: !53)
!57 = !DILocation(line: 22, column: 29, scope: !53)
!58 = !DILocation(line: 22, column: 9, scope: !43)
!59 = !DILocation(line: 22, column: 34, scope: !53)
!60 = !DILocalVariable(name: "ret", scope: !43, file: !1, line: 23, type: !3)
!61 = !DILocation(line: 23, column: 14, scope: !43)
!62 = !DILocation(line: 23, column: 37, scope: !43)
!63 = !DILocation(line: 23, column: 42, scope: !43)
!64 = !DILocation(line: 23, column: 30, scope: !43)
!65 = !DILocation(line: 24, column: 9, scope: !66)
!66 = distinct !DILexicalBlock(scope: !43, file: !1, line: 24, column: 9)
!67 = !DILocation(line: 24, column: 13, scope: !66)
!68 = !DILocation(line: 24, column: 9, scope: !43)
!69 = !DILocation(line: 24, column: 22, scope: !66)
!70 = !DILocation(line: 25, column: 12, scope: !43)
!71 = !DILocation(line: 25, column: 17, scope: !43)
!72 = !DILocation(line: 25, column: 22, scope: !43)
!73 = !DILocation(line: 25, column: 5, scope: !43)
!74 = !DILocation(line: 26, column: 5, scope: !43)
!75 = !DILocation(line: 26, column: 9, scope: !43)
!76 = !DILocation(line: 26, column: 15, scope: !43)
!77 = !DILocation(line: 27, column: 12, scope: !43)
!78 = !DILocation(line: 27, column: 5, scope: !43)
!79 = !DILocation(line: 28, column: 1, scope: !43)
!80 = distinct !DISubprogram(name: "xmlStrcat", scope: !1, file: !1, line: 30, type: !81, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !27)
!81 = !DISubroutineType(types: !82)
!82 = !{!3, !3, !46}
!83 = !DILocalVariable(name: "cur", arg: 1, scope: !80, file: !1, line: 30, type: !3)
!84 = !DILocation(line: 30, column: 29, scope: !80)
!85 = !DILocalVariable(name: "add", arg: 2, scope: !80, file: !1, line: 30, type: !46)
!86 = !DILocation(line: 30, column: 49, scope: !80)
!87 = !DILocalVariable(name: "ret", scope: !80, file: !1, line: 31, type: !3)
!88 = !DILocation(line: 31, column: 14, scope: !80)
!89 = !DILocalVariable(name: "len", scope: !80, file: !1, line: 32, type: !13)
!90 = !DILocation(line: 32, column: 9, scope: !80)
!91 = !DILocalVariable(name: "size", scope: !80, file: !1, line: 32, type: !13)
!92 = !DILocation(line: 32, column: 14, scope: !80)
!93 = !DILocation(line: 34, column: 9, scope: !94)
!94 = distinct !DILexicalBlock(scope: !80, file: !1, line: 34, column: 9)
!95 = !DILocation(line: 34, column: 13, scope: !94)
!96 = !DILocation(line: 34, column: 9, scope: !80)
!97 = !DILocation(line: 34, column: 29, scope: !94)
!98 = !DILocation(line: 34, column: 22, scope: !94)
!99 = !DILocation(line: 35, column: 9, scope: !100)
!100 = distinct !DILexicalBlock(scope: !80, file: !1, line: 35, column: 9)
!101 = !DILocation(line: 35, column: 13, scope: !100)
!102 = !DILocation(line: 35, column: 9, scope: !80)
!103 = !DILocation(line: 35, column: 40, scope: !100)
!104 = !DILocation(line: 35, column: 29, scope: !100)
!105 = !DILocation(line: 35, column: 22, scope: !100)
!106 = !DILocation(line: 37, column: 31, scope: !80)
!107 = !DILocation(line: 37, column: 11, scope: !80)
!108 = !DILocation(line: 37, column: 9, scope: !80)
!109 = !DILocation(line: 38, column: 32, scope: !80)
!110 = !DILocation(line: 38, column: 12, scope: !80)
!111 = !DILocation(line: 38, column: 10, scope: !80)
!112 = !DILocation(line: 40, column: 10, scope: !113)
!113 = distinct !DILexicalBlock(scope: !80, file: !1, line: 40, column: 9)
!114 = !DILocation(line: 40, column: 15, scope: !113)
!115 = !DILocation(line: 40, column: 20, scope: !113)
!116 = !DILocation(line: 40, column: 24, scope: !113)
!117 = !DILocation(line: 40, column: 41, scope: !113)
!118 = !DILocation(line: 40, column: 39, scope: !113)
!119 = !DILocation(line: 40, column: 29, scope: !113)
!120 = !DILocation(line: 40, column: 9, scope: !80)
!121 = !DILocation(line: 41, column: 9, scope: !113)
!122 = !DILocation(line: 42, column: 39, scope: !80)
!123 = !DILocation(line: 42, column: 31, scope: !80)
!124 = !DILocation(line: 42, column: 46, scope: !80)
!125 = !DILocation(line: 42, column: 44, scope: !80)
!126 = !DILocation(line: 42, column: 50, scope: !80)
!127 = !DILocation(line: 42, column: 21, scope: !80)
!128 = !DILocation(line: 42, column: 9, scope: !80)
!129 = !DILocation(line: 43, column: 9, scope: !130)
!130 = distinct !DILexicalBlock(scope: !80, file: !1, line: 43, column: 9)
!131 = !DILocation(line: 43, column: 13, scope: !130)
!132 = !DILocation(line: 43, column: 9, scope: !80)
!133 = !DILocation(line: 44, column: 9, scope: !134)
!134 = distinct !DILexicalBlock(scope: !130, file: !1, line: 43, column: 22)
!135 = !DILocation(line: 45, column: 27, scope: !134)
!136 = !DILocation(line: 45, column: 32, scope: !134)
!137 = !DILocation(line: 45, column: 16, scope: !134)
!138 = !DILocation(line: 45, column: 9, scope: !134)
!139 = !DILocation(line: 47, column: 12, scope: !80)
!140 = !DILocation(line: 47, column: 17, scope: !80)
!141 = !DILocation(line: 47, column: 22, scope: !80)
!142 = !DILocation(line: 47, column: 5, scope: !80)
!143 = !DILocation(line: 48, column: 13, scope: !80)
!144 = !DILocation(line: 48, column: 17, scope: !80)
!145 = !DILocation(line: 48, column: 24, scope: !80)
!146 = !DILocation(line: 48, column: 29, scope: !80)
!147 = !DILocation(line: 48, column: 5, scope: !80)
!148 = !DILocation(line: 49, column: 5, scope: !80)
!149 = !DILocation(line: 49, column: 9, scope: !80)
!150 = !DILocation(line: 49, column: 16, scope: !80)
!151 = !DILocation(line: 49, column: 14, scope: !80)
!152 = !DILocation(line: 49, column: 21, scope: !80)
!153 = !DILocation(line: 50, column: 12, scope: !80)
!154 = !DILocation(line: 50, column: 5, scope: !80)
!155 = !DILocation(line: 51, column: 1, scope: !80)
!156 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 53, type: !157, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !27)
!157 = !DISubroutineType(types: !158)
!158 = !{!13}
!159 = !DILocalVariable(name: "str1_buf", scope: !156, file: !1, line: 54, type: !160)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 256)
!163 = !DILocation(line: 54, column: 13, scope: !156)
!164 = !DILocalVariable(name: "str2_buf", scope: !156, file: !1, line: 55, type: !160)
!165 = !DILocation(line: 55, column: 13, scope: !156)
!166 = !DILocalVariable(name: "size", scope: !156, file: !1, line: 56, type: !13)
!167 = !DILocation(line: 56, column: 9, scope: !156)
!168 = !DILocalVariable(name: "len", scope: !156, file: !1, line: 56, type: !13)
!169 = !DILocation(line: 56, column: 15, scope: !156)
!170 = !DILocalVariable(name: "result", scope: !156, file: !1, line: 57, type: !3)
!171 = !DILocation(line: 57, column: 14, scope: !156)
!172 = !DILocation(line: 59, column: 24, scope: !156)
!173 = !DILocation(line: 59, column: 5, scope: !156)
!174 = !DILocation(line: 60, column: 24, scope: !156)
!175 = !DILocation(line: 60, column: 5, scope: !156)
!176 = !DILocation(line: 61, column: 24, scope: !156)
!177 = !DILocation(line: 61, column: 5, scope: !156)
!178 = !DILocation(line: 62, column: 24, scope: !156)
!179 = !DILocation(line: 62, column: 5, scope: !156)
!180 = !DILocation(line: 64, column: 17, scope: !156)
!181 = !DILocation(line: 64, column: 22, scope: !156)
!182 = !DILocation(line: 64, column: 27, scope: !156)
!183 = !DILocation(line: 64, column: 30, scope: !156)
!184 = !DILocation(line: 64, column: 35, scope: !156)
!185 = !DILocation(line: 0, scope: !156)
!186 = !DILocation(line: 64, column: 5, scope: !156)
!187 = !DILocation(line: 65, column: 17, scope: !156)
!188 = !DILocation(line: 65, column: 21, scope: !156)
!189 = !DILocation(line: 65, column: 26, scope: !156)
!190 = !DILocation(line: 65, column: 29, scope: !156)
!191 = !DILocation(line: 65, column: 33, scope: !156)
!192 = !DILocation(line: 65, column: 5, scope: !156)
!193 = !DILocation(line: 66, column: 14, scope: !156)
!194 = !DILocation(line: 66, column: 5, scope: !156)
!195 = !DILocation(line: 66, column: 20, scope: !156)
!196 = !DILocation(line: 67, column: 14, scope: !156)
!197 = !DILocation(line: 67, column: 5, scope: !156)
!198 = !DILocation(line: 67, column: 19, scope: !156)
!199 = !DILocalVariable(name: "cur", scope: !156, file: !1, line: 69, type: !3)
!200 = !DILocation(line: 69, column: 14, scope: !156)
!201 = !DILocation(line: 69, column: 31, scope: !156)
!202 = !DILocation(line: 69, column: 41, scope: !156)
!203 = !DILocation(line: 69, column: 20, scope: !156)
!204 = !DILocation(line: 70, column: 9, scope: !205)
!205 = distinct !DILexicalBlock(scope: !156, file: !1, line: 70, column: 9)
!206 = !DILocation(line: 70, column: 13, scope: !205)
!207 = !DILocation(line: 70, column: 9, scope: !156)
!208 = !DILocation(line: 70, column: 22, scope: !205)
!209 = !DILocation(line: 72, column: 24, scope: !156)
!210 = !DILocation(line: 72, column: 29, scope: !156)
!211 = !DILocation(line: 72, column: 14, scope: !156)
!212 = !DILocation(line: 72, column: 12, scope: !156)
!213 = !DILocation(line: 74, column: 9, scope: !214)
!214 = distinct !DILexicalBlock(scope: !156, file: !1, line: 74, column: 9)
!215 = !DILocation(line: 74, column: 16, scope: !214)
!216 = !DILocation(line: 74, column: 9, scope: !156)
!217 = !DILocation(line: 75, column: 9, scope: !218)
!218 = distinct !DILexicalBlock(scope: !214, file: !1, line: 74, column: 25)
!219 = !DILocation(line: 76, column: 9, scope: !218)
!220 = !DILocation(line: 77, column: 14, scope: !218)
!221 = !DILocation(line: 77, column: 9, scope: !218)
!222 = !DILocation(line: 78, column: 5, scope: !218)
!223 = !DILocation(line: 80, column: 10, scope: !156)
!224 = !DILocation(line: 80, column: 5, scope: !156)
!225 = !DILocation(line: 81, column: 5, scope: !156)
!226 = !DILocation(line: 82, column: 1, scope: !156)
!227 = distinct !DISubprogram(name: "memcpy", scope: !228, file: !228, line: 12, type: !229, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !27)
!228 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!229 = !DISubroutineType(types: !230)
!230 = !{!6, !6, !231, !10}
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!233 = !DILocalVariable(name: "destaddr", arg: 1, scope: !227, file: !228, line: 12, type: !6)
!234 = !DILocation(line: 12, column: 20, scope: !227)
!235 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !227, file: !228, line: 12, type: !231)
!236 = !DILocation(line: 12, column: 42, scope: !227)
!237 = !DILocalVariable(name: "len", arg: 3, scope: !227, file: !228, line: 12, type: !10)
!238 = !DILocation(line: 12, column: 58, scope: !227)
!239 = !DILocalVariable(name: "dest", scope: !227, file: !228, line: 13, type: !240)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!241 = !DILocation(line: 13, column: 9, scope: !227)
!242 = !DILocation(line: 13, column: 16, scope: !227)
!243 = !DILocalVariable(name: "src", scope: !227, file: !228, line: 14, type: !7)
!244 = !DILocation(line: 14, column: 15, scope: !227)
!245 = !DILocation(line: 14, column: 21, scope: !227)
!246 = !DILocation(line: 16, column: 3, scope: !227)
!247 = !DILocation(line: 16, column: 13, scope: !227)
!248 = !DILocation(line: 16, column: 16, scope: !227)
!249 = !DILocation(line: 17, column: 19, scope: !227)
!250 = !DILocation(line: 17, column: 15, scope: !227)
!251 = !DILocation(line: 17, column: 10, scope: !227)
!252 = !DILocation(line: 17, column: 13, scope: !227)
!253 = distinct !{!253, !246, !249, !254}
!254 = !{!"llvm.loop.mustprogress"}
!255 = !DILocation(line: 18, column: 10, scope: !227)
!256 = !DILocation(line: 18, column: 3, scope: !227)

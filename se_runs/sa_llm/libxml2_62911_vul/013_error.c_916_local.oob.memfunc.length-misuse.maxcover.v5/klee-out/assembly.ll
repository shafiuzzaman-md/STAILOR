; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/013_error.c_916_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/013_error.c_916_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlError = type { i32, i32, i8*, i32, i8*, i32, i8*, i8*, i8*, i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"(err != ((void*)0) && sizeof(xmlError) > 0) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/013_error.c_916_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.__xmlRaiseError = private unnamed_addr constant [135 x i8] c"void __xmlRaiseError(void *, xmlError *, void *, int, int, int, const char *, int, const char *, const char *, const char *, int, int)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"err\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"str1\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"str2\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"str3\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !34 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !38, metadata !DIExpression()), !dbg !39
  %3 = load i8*, i8** %2, align 8, !dbg !40
  %4 = icmp ne i8* %3, null, !dbg !40
  br i1 %4, label %5, label %7, !dbg !42

5:                                                ; preds = %1
  %6 = load i8*, i8** %2, align 8, !dbg !43
  call void @free(i8* noundef %6) #7, !dbg !44
  br label %7, !dbg !44

7:                                                ; preds = %5, %1
  ret void, !dbg !45
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__xmlRaiseError(i8* noundef %0, %struct._xmlError* noundef %1, i8* noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i8* noundef %6, i32 noundef %7, i8* noundef %8, i8* noundef %9, i8* noundef %10, i32 noundef %11, i32 noundef %12) #0 !dbg !46 {
  %14 = alloca i8*, align 8
  %15 = alloca %struct._xmlError*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i8* %0, i8** %14, align 8
  call void @llvm.dbg.declare(metadata i8** %14, metadata !51, metadata !DIExpression()), !dbg !52
  store %struct._xmlError* %1, %struct._xmlError** %15, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlError** %15, metadata !53, metadata !DIExpression()), !dbg !54
  store i8* %2, i8** %16, align 8
  call void @llvm.dbg.declare(metadata i8** %16, metadata !55, metadata !DIExpression()), !dbg !56
  store i32 %3, i32* %17, align 4
  call void @llvm.dbg.declare(metadata i32* %17, metadata !57, metadata !DIExpression()), !dbg !58
  store i32 %4, i32* %18, align 4
  call void @llvm.dbg.declare(metadata i32* %18, metadata !59, metadata !DIExpression()), !dbg !60
  store i32 %5, i32* %19, align 4
  call void @llvm.dbg.declare(metadata i32* %19, metadata !61, metadata !DIExpression()), !dbg !62
  store i8* %6, i8** %20, align 8
  call void @llvm.dbg.declare(metadata i8** %20, metadata !63, metadata !DIExpression()), !dbg !64
  store i32 %7, i32* %21, align 4
  call void @llvm.dbg.declare(metadata i32* %21, metadata !65, metadata !DIExpression()), !dbg !66
  store i8* %8, i8** %22, align 8
  call void @llvm.dbg.declare(metadata i8** %22, metadata !67, metadata !DIExpression()), !dbg !68
  store i8* %9, i8** %23, align 8
  call void @llvm.dbg.declare(metadata i8** %23, metadata !69, metadata !DIExpression()), !dbg !70
  store i8* %10, i8** %24, align 8
  call void @llvm.dbg.declare(metadata i8** %24, metadata !71, metadata !DIExpression()), !dbg !72
  store i32 %11, i32* %25, align 4
  call void @llvm.dbg.declare(metadata i32* %25, metadata !73, metadata !DIExpression()), !dbg !74
  store i32 %12, i32* %26, align 4
  call void @llvm.dbg.declare(metadata i32* %26, metadata !75, metadata !DIExpression()), !dbg !76
  %27 = load %struct._xmlError*, %struct._xmlError** %15, align 8, !dbg !77
  %28 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %27, i32 0, i32 6, !dbg !79
  %29 = load i8*, i8** %28, align 8, !dbg !79
  %30 = icmp ne i8* %29, null, !dbg !80
  br i1 %30, label %31, label %35, !dbg !81

31:                                               ; preds = %13
  %32 = load %struct._xmlError*, %struct._xmlError** %15, align 8, !dbg !82
  %33 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %32, i32 0, i32 6, !dbg !83
  %34 = load i8*, i8** %33, align 8, !dbg !83
  call void @xmlFree(i8* noundef %34), !dbg !84
  br label %35, !dbg !84

35:                                               ; preds = %31, %13
  %36 = load %struct._xmlError*, %struct._xmlError** %15, align 8, !dbg !85
  %37 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %36, i32 0, i32 7, !dbg !87
  %38 = load i8*, i8** %37, align 8, !dbg !87
  %39 = icmp ne i8* %38, null, !dbg !88
  br i1 %39, label %40, label %44, !dbg !89

40:                                               ; preds = %35
  %41 = load %struct._xmlError*, %struct._xmlError** %15, align 8, !dbg !90
  %42 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %41, i32 0, i32 7, !dbg !91
  %43 = load i8*, i8** %42, align 8, !dbg !91
  call void @xmlFree(i8* noundef %43), !dbg !92
  br label %44, !dbg !92

44:                                               ; preds = %40, %35
  %45 = load %struct._xmlError*, %struct._xmlError** %15, align 8, !dbg !93
  %46 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %45, i32 0, i32 8, !dbg !95
  %47 = load i8*, i8** %46, align 8, !dbg !95
  %48 = icmp ne i8* %47, null, !dbg !96
  br i1 %48, label %49, label %53, !dbg !97

49:                                               ; preds = %44
  %50 = load %struct._xmlError*, %struct._xmlError** %15, align 8, !dbg !98
  %51 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %50, i32 0, i32 8, !dbg !99
  %52 = load i8*, i8** %51, align 8, !dbg !99
  call void @xmlFree(i8* noundef %52), !dbg !100
  br label %53, !dbg !100

53:                                               ; preds = %49, %44
  %54 = load %struct._xmlError*, %struct._xmlError** %15, align 8, !dbg !101
  %55 = icmp ne %struct._xmlError* %54, null, !dbg !101
  br i1 %55, label %56, label %58, !dbg !101

56:                                               ; preds = %53
  br i1 true, label %57, label %58, !dbg !101

57:                                               ; preds = %56
  br label %60, !dbg !101

58:                                               ; preds = %56, %53
  %59 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.2, i64 0, i64 0), i32 noundef 46, i8* noundef getelementptr inbounds ([135 x i8], [135 x i8]* @__PRETTY_FUNCTION__.__xmlRaiseError, i64 0, i64 0)), !dbg !101
  br label %60, !dbg !101

60:                                               ; preds = %58, %57
  %61 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.2, i64 0, i64 0), i32 noundef 49, i8* noundef getelementptr inbounds ([135 x i8], [135 x i8]* @__PRETTY_FUNCTION__.__xmlRaiseError, i64 0, i64 0)), !dbg !102
  %62 = load %struct._xmlError*, %struct._xmlError** %15, align 8, !dbg !103
  %63 = bitcast %struct._xmlError* %62 to i8*, !dbg !104
  %64 = call i8* @memset(i8* %63, i32 0, i64 88), !dbg !104
  %65 = load %struct._xmlError*, %struct._xmlError** %15, align 8, !dbg !105
  %66 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %65, i32 0, i32 1, !dbg !106
  store i32 0, i32* %66, align 4, !dbg !107
  ret void, !dbg !108
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !109 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlError*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlError** %2, metadata !112, metadata !DIExpression()), !dbg !113
  %3 = call noalias i8* @malloc(i64 noundef 88) #7, !dbg !114
  %4 = bitcast i8* %3 to %struct._xmlError*, !dbg !115
  store %struct._xmlError* %4, %struct._xmlError** %2, align 8, !dbg !113
  %5 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !116
  %6 = icmp ne %struct._xmlError* %5, null, !dbg !116
  br i1 %6, label %8, label %7, !dbg !118

7:                                                ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !119
  br label %81, !dbg !119

8:                                                ; preds = %0
  %9 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !120
  %10 = bitcast %struct._xmlError* %9 to i8*, !dbg !120
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 88, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)), !dbg !121
  %11 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !122
  %12 = icmp ne %struct._xmlError* %11, null, !dbg !123
  %13 = zext i1 %12 to i32, !dbg !123
  %14 = sext i32 %13 to i64, !dbg !122
  call void @klee_assume(i64 noundef %14), !dbg !124
  %15 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !125
  %16 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %15, i32 0, i32 6, !dbg !127
  %17 = load i8*, i8** %16, align 8, !dbg !127
  %18 = icmp ne i8* %17, null, !dbg !128
  br i1 %18, label %19, label %26, !dbg !129

19:                                               ; preds = %8
  %20 = call noalias i8* @malloc(i64 noundef 256) #7, !dbg !130
  %21 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !132
  %22 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %21, i32 0, i32 6, !dbg !133
  store i8* %20, i8** %22, align 8, !dbg !134
  %23 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !135
  %24 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %23, i32 0, i32 6, !dbg !136
  %25 = load i8*, i8** %24, align 8, !dbg !136
  call void @klee_make_symbolic(i8* noundef %25, i64 noundef 256, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)), !dbg !137
  br label %26, !dbg !138

26:                                               ; preds = %19, %8
  %27 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !139
  %28 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %27, i32 0, i32 7, !dbg !141
  %29 = load i8*, i8** %28, align 8, !dbg !141
  %30 = icmp ne i8* %29, null, !dbg !142
  br i1 %30, label %31, label %38, !dbg !143

31:                                               ; preds = %26
  %32 = call noalias i8* @malloc(i64 noundef 256) #7, !dbg !144
  %33 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !146
  %34 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %33, i32 0, i32 7, !dbg !147
  store i8* %32, i8** %34, align 8, !dbg !148
  %35 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !149
  %36 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %35, i32 0, i32 7, !dbg !150
  %37 = load i8*, i8** %36, align 8, !dbg !150
  call void @klee_make_symbolic(i8* noundef %37, i64 noundef 256, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)), !dbg !151
  br label %38, !dbg !152

38:                                               ; preds = %31, %26
  %39 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !153
  %40 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %39, i32 0, i32 8, !dbg !155
  %41 = load i8*, i8** %40, align 8, !dbg !155
  %42 = icmp ne i8* %41, null, !dbg !156
  br i1 %42, label %43, label %50, !dbg !157

43:                                               ; preds = %38
  %44 = call noalias i8* @malloc(i64 noundef 256) #7, !dbg !158
  %45 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !160
  %46 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %45, i32 0, i32 8, !dbg !161
  store i8* %44, i8** %46, align 8, !dbg !162
  %47 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !163
  %48 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %47, i32 0, i32 8, !dbg !164
  %49 = load i8*, i8** %48, align 8, !dbg !164
  call void @klee_make_symbolic(i8* noundef %49, i64 noundef 256, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)), !dbg !165
  br label %50, !dbg !166

50:                                               ; preds = %43, %38
  %51 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !167
  call void @__xmlRaiseError(i8* noundef null, %struct._xmlError* noundef %51, i8* noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i8* noundef null, i8* noundef null, i8* noundef null, i32 noundef 0, i32 noundef 0), !dbg !168
  %52 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !169
  %53 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %52, i32 0, i32 6, !dbg !171
  %54 = load i8*, i8** %53, align 8, !dbg !171
  %55 = icmp ne i8* %54, null, !dbg !169
  br i1 %55, label %56, label %60, !dbg !172

56:                                               ; preds = %50
  %57 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !173
  %58 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %57, i32 0, i32 6, !dbg !174
  %59 = load i8*, i8** %58, align 8, !dbg !174
  call void @free(i8* noundef %59) #7, !dbg !175
  br label %60, !dbg !175

60:                                               ; preds = %56, %50
  %61 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !176
  %62 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %61, i32 0, i32 7, !dbg !178
  %63 = load i8*, i8** %62, align 8, !dbg !178
  %64 = icmp ne i8* %63, null, !dbg !176
  br i1 %64, label %65, label %69, !dbg !179

65:                                               ; preds = %60
  %66 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !180
  %67 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %66, i32 0, i32 7, !dbg !181
  %68 = load i8*, i8** %67, align 8, !dbg !181
  call void @free(i8* noundef %68) #7, !dbg !182
  br label %69, !dbg !182

69:                                               ; preds = %65, %60
  %70 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !183
  %71 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %70, i32 0, i32 8, !dbg !185
  %72 = load i8*, i8** %71, align 8, !dbg !185
  %73 = icmp ne i8* %72, null, !dbg !183
  br i1 %73, label %74, label %78, !dbg !186

74:                                               ; preds = %69
  %75 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !187
  %76 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %75, i32 0, i32 8, !dbg !188
  %77 = load i8*, i8** %76, align 8, !dbg !188
  call void @free(i8* noundef %77) #7, !dbg !189
  br label %78, !dbg !189

78:                                               ; preds = %74, %69
  %79 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !190
  %80 = bitcast %struct._xmlError* %79 to i8*, !dbg !190
  call void @free(i8* noundef %80) #7, !dbg !191
  store i32 0, i32* %1, align 4, !dbg !192
  br label %81, !dbg !192

81:                                               ; preds = %78, %7
  %82 = load i32, i32* %1, align 4, !dbg !193
  ret i32 %82, !dbg !193
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !194 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !201, metadata !DIExpression()), !dbg !202
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !203, metadata !DIExpression()), !dbg !204
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !205, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.declare(metadata i8** %7, metadata !207, metadata !DIExpression()), !dbg !208
  %8 = load i8*, i8** %4, align 8, !dbg !209
  store i8* %8, i8** %7, align 8, !dbg !208
  br label %9, !dbg !210

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !211
  %11 = add i64 %10, -1, !dbg !211
  store i64 %11, i64* %6, align 8, !dbg !211
  %12 = icmp ugt i64 %10, 0, !dbg !212
  br i1 %12, label %13, label %18, !dbg !210

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !213
  %15 = trunc i32 %14 to i8, !dbg !213
  %16 = load i8*, i8** %7, align 8, !dbg !214
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !214
  store i8* %17, i8** %7, align 8, !dbg !214
  store i8 %15, i8* %16, align 1, !dbg !215
  br label %9, !dbg !210, !llvm.loop !216

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !218
  ret i8* %19, !dbg !219
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33, !33}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/013_error.c_916_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "ec9b0978daf32dfc80578acee66e8f7b")
!2 = !{!3, !4, !12}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlError", file: !1, line: 10, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlError", file: !1, line: 11, size: 704, elements: !7)
!7 = !{!8, !10, !11, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !6, file: !1, line: 12, baseType: !9, size: 32)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !6, file: !1, line: 13, baseType: !9, size: 32, offset: 32)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !6, file: !1, line: 14, baseType: !12, size: 64, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !6, file: !1, line: 15, baseType: !9, size: 32, offset: 128)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !6, file: !1, line: 16, baseType: !12, size: 64, offset: 192)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !6, file: !1, line: 17, baseType: !9, size: 32, offset: 256)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "str1", scope: !6, file: !1, line: 18, baseType: !12, size: 64, offset: 320)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "str2", scope: !6, file: !1, line: 19, baseType: !12, size: 64, offset: 384)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "str3", scope: !6, file: !1, line: 20, baseType: !12, size: 64, offset: 448)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "int1", scope: !6, file: !1, line: 21, baseType: !9, size: 32, offset: 512)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "int2", scope: !6, file: !1, line: 22, baseType: !9, size: 32, offset: 544)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "ctxt", scope: !6, file: !1, line: 23, baseType: !3, size: 64, offset: 576)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !6, file: !1, line: 24, baseType: !3, size: 64, offset: 640)
!24 = distinct !DICompileUnit(language: DW_LANG_C99, file: !25, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!25 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!26 = !{i32 7, !"Dwarf Version", i32 5}
!27 = !{i32 2, !"Debug Info Version", i32 3}
!28 = !{i32 1, !"wchar_size", i32 4}
!29 = !{i32 7, !"PIC Level", i32 2}
!30 = !{i32 7, !"PIE Level", i32 2}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"Ubuntu clang version 14.0.6"}
!34 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 28, type: !35, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!35 = !DISubroutineType(types: !36)
!36 = !{null, !3}
!37 = !{}
!38 = !DILocalVariable(name: "ptr", arg: 1, scope: !34, file: !1, line: 28, type: !3)
!39 = !DILocation(line: 28, column: 20, scope: !34)
!40 = !DILocation(line: 29, column: 9, scope: !41)
!41 = distinct !DILexicalBlock(scope: !34, file: !1, line: 29, column: 9)
!42 = !DILocation(line: 29, column: 9, scope: !34)
!43 = !DILocation(line: 29, column: 19, scope: !41)
!44 = !DILocation(line: 29, column: 14, scope: !41)
!45 = !DILocation(line: 30, column: 1, scope: !34)
!46 = distinct !DISubprogram(name: "__xmlRaiseError", scope: !1, file: !1, line: 33, type: !47, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!47 = !DISubroutineType(types: !48)
!48 = !{null, !3, !4, !3, !9, !9, !9, !49, !9, !49, !49, !49, !9, !9}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!51 = !DILocalVariable(name: "ctx", arg: 1, scope: !46, file: !1, line: 33, type: !3)
!52 = !DILocation(line: 33, column: 28, scope: !46)
!53 = !DILocalVariable(name: "err", arg: 2, scope: !46, file: !1, line: 33, type: !4)
!54 = !DILocation(line: 33, column: 43, scope: !46)
!55 = !DILocalVariable(name: "node", arg: 3, scope: !46, file: !1, line: 33, type: !3)
!56 = !DILocation(line: 33, column: 54, scope: !46)
!57 = !DILocalVariable(name: "domain", arg: 4, scope: !46, file: !1, line: 33, type: !9)
!58 = !DILocation(line: 33, column: 64, scope: !46)
!59 = !DILocalVariable(name: "code", arg: 5, scope: !46, file: !1, line: 33, type: !9)
!60 = !DILocation(line: 33, column: 76, scope: !46)
!61 = !DILocalVariable(name: "level", arg: 6, scope: !46, file: !1, line: 34, type: !9)
!62 = !DILocation(line: 34, column: 26, scope: !46)
!63 = !DILocalVariable(name: "file", arg: 7, scope: !46, file: !1, line: 34, type: !49)
!64 = !DILocation(line: 34, column: 45, scope: !46)
!65 = !DILocalVariable(name: "line", arg: 8, scope: !46, file: !1, line: 34, type: !9)
!66 = !DILocation(line: 34, column: 55, scope: !46)
!67 = !DILocalVariable(name: "str1", arg: 9, scope: !46, file: !1, line: 34, type: !49)
!68 = !DILocation(line: 34, column: 73, scope: !46)
!69 = !DILocalVariable(name: "str2", arg: 10, scope: !46, file: !1, line: 35, type: !49)
!70 = !DILocation(line: 35, column: 34, scope: !46)
!71 = !DILocalVariable(name: "str3", arg: 11, scope: !46, file: !1, line: 35, type: !49)
!72 = !DILocation(line: 35, column: 52, scope: !46)
!73 = !DILocalVariable(name: "int1", arg: 12, scope: !46, file: !1, line: 35, type: !9)
!74 = !DILocation(line: 35, column: 62, scope: !46)
!75 = !DILocalVariable(name: "int2", arg: 13, scope: !46, file: !1, line: 35, type: !9)
!76 = !DILocation(line: 35, column: 72, scope: !46)
!77 = !DILocation(line: 37, column: 9, scope: !78)
!78 = distinct !DILexicalBlock(scope: !46, file: !1, line: 37, column: 9)
!79 = !DILocation(line: 37, column: 14, scope: !78)
!80 = !DILocation(line: 37, column: 19, scope: !78)
!81 = !DILocation(line: 37, column: 9, scope: !46)
!82 = !DILocation(line: 38, column: 17, scope: !78)
!83 = !DILocation(line: 38, column: 22, scope: !78)
!84 = !DILocation(line: 38, column: 9, scope: !78)
!85 = !DILocation(line: 39, column: 9, scope: !86)
!86 = distinct !DILexicalBlock(scope: !46, file: !1, line: 39, column: 9)
!87 = !DILocation(line: 39, column: 14, scope: !86)
!88 = !DILocation(line: 39, column: 19, scope: !86)
!89 = !DILocation(line: 39, column: 9, scope: !46)
!90 = !DILocation(line: 40, column: 17, scope: !86)
!91 = !DILocation(line: 40, column: 22, scope: !86)
!92 = !DILocation(line: 40, column: 9, scope: !86)
!93 = !DILocation(line: 41, column: 9, scope: !94)
!94 = distinct !DILexicalBlock(scope: !46, file: !1, line: 41, column: 9)
!95 = !DILocation(line: 41, column: 14, scope: !94)
!96 = !DILocation(line: 41, column: 19, scope: !94)
!97 = !DILocation(line: 41, column: 9, scope: !46)
!98 = !DILocation(line: 42, column: 17, scope: !94)
!99 = !DILocation(line: 42, column: 22, scope: !94)
!100 = !DILocation(line: 42, column: 9, scope: !94)
!101 = !DILocation(line: 46, column: 5, scope: !46)
!102 = !DILocation(line: 49, column: 5, scope: !46)
!103 = !DILocation(line: 51, column: 12, scope: !46)
!104 = !DILocation(line: 51, column: 5, scope: !46)
!105 = !DILocation(line: 52, column: 5, scope: !46)
!106 = !DILocation(line: 52, column: 10, scope: !46)
!107 = !DILocation(line: 52, column: 15, scope: !46)
!108 = !DILocation(line: 53, column: 1, scope: !46)
!109 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 55, type: !110, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!110 = !DISubroutineType(types: !111)
!111 = !{!9}
!112 = !DILocalVariable(name: "err", scope: !109, file: !1, line: 57, type: !4)
!113 = !DILocation(line: 57, column: 15, scope: !109)
!114 = !DILocation(line: 57, column: 33, scope: !109)
!115 = !DILocation(line: 57, column: 21, scope: !109)
!116 = !DILocation(line: 58, column: 10, scope: !117)
!117 = distinct !DILexicalBlock(scope: !109, file: !1, line: 58, column: 9)
!118 = !DILocation(line: 58, column: 9, scope: !109)
!119 = !DILocation(line: 58, column: 15, scope: !117)
!120 = !DILocation(line: 61, column: 24, scope: !109)
!121 = !DILocation(line: 61, column: 5, scope: !109)
!122 = !DILocation(line: 64, column: 17, scope: !109)
!123 = !DILocation(line: 64, column: 21, scope: !109)
!124 = !DILocation(line: 64, column: 5, scope: !109)
!125 = !DILocation(line: 67, column: 9, scope: !126)
!126 = distinct !DILexicalBlock(scope: !109, file: !1, line: 67, column: 9)
!127 = !DILocation(line: 67, column: 14, scope: !126)
!128 = !DILocation(line: 67, column: 19, scope: !126)
!129 = !DILocation(line: 67, column: 9, scope: !109)
!130 = !DILocation(line: 68, column: 29, scope: !131)
!131 = distinct !DILexicalBlock(scope: !126, file: !1, line: 67, column: 28)
!132 = !DILocation(line: 68, column: 9, scope: !131)
!133 = !DILocation(line: 68, column: 14, scope: !131)
!134 = !DILocation(line: 68, column: 19, scope: !131)
!135 = !DILocation(line: 69, column: 28, scope: !131)
!136 = !DILocation(line: 69, column: 33, scope: !131)
!137 = !DILocation(line: 69, column: 9, scope: !131)
!138 = !DILocation(line: 70, column: 5, scope: !131)
!139 = !DILocation(line: 71, column: 9, scope: !140)
!140 = distinct !DILexicalBlock(scope: !109, file: !1, line: 71, column: 9)
!141 = !DILocation(line: 71, column: 14, scope: !140)
!142 = !DILocation(line: 71, column: 19, scope: !140)
!143 = !DILocation(line: 71, column: 9, scope: !109)
!144 = !DILocation(line: 72, column: 29, scope: !145)
!145 = distinct !DILexicalBlock(scope: !140, file: !1, line: 71, column: 28)
!146 = !DILocation(line: 72, column: 9, scope: !145)
!147 = !DILocation(line: 72, column: 14, scope: !145)
!148 = !DILocation(line: 72, column: 19, scope: !145)
!149 = !DILocation(line: 73, column: 28, scope: !145)
!150 = !DILocation(line: 73, column: 33, scope: !145)
!151 = !DILocation(line: 73, column: 9, scope: !145)
!152 = !DILocation(line: 74, column: 5, scope: !145)
!153 = !DILocation(line: 75, column: 9, scope: !154)
!154 = distinct !DILexicalBlock(scope: !109, file: !1, line: 75, column: 9)
!155 = !DILocation(line: 75, column: 14, scope: !154)
!156 = !DILocation(line: 75, column: 19, scope: !154)
!157 = !DILocation(line: 75, column: 9, scope: !109)
!158 = !DILocation(line: 76, column: 29, scope: !159)
!159 = distinct !DILexicalBlock(scope: !154, file: !1, line: 75, column: 28)
!160 = !DILocation(line: 76, column: 9, scope: !159)
!161 = !DILocation(line: 76, column: 14, scope: !159)
!162 = !DILocation(line: 76, column: 19, scope: !159)
!163 = !DILocation(line: 77, column: 28, scope: !159)
!164 = !DILocation(line: 77, column: 33, scope: !159)
!165 = !DILocation(line: 77, column: 9, scope: !159)
!166 = !DILocation(line: 78, column: 5, scope: !159)
!167 = !DILocation(line: 81, column: 27, scope: !109)
!168 = !DILocation(line: 81, column: 5, scope: !109)
!169 = !DILocation(line: 84, column: 9, scope: !170)
!170 = distinct !DILexicalBlock(scope: !109, file: !1, line: 84, column: 9)
!171 = !DILocation(line: 84, column: 14, scope: !170)
!172 = !DILocation(line: 84, column: 9, scope: !109)
!173 = !DILocation(line: 84, column: 25, scope: !170)
!174 = !DILocation(line: 84, column: 30, scope: !170)
!175 = !DILocation(line: 84, column: 20, scope: !170)
!176 = !DILocation(line: 85, column: 9, scope: !177)
!177 = distinct !DILexicalBlock(scope: !109, file: !1, line: 85, column: 9)
!178 = !DILocation(line: 85, column: 14, scope: !177)
!179 = !DILocation(line: 85, column: 9, scope: !109)
!180 = !DILocation(line: 85, column: 25, scope: !177)
!181 = !DILocation(line: 85, column: 30, scope: !177)
!182 = !DILocation(line: 85, column: 20, scope: !177)
!183 = !DILocation(line: 86, column: 9, scope: !184)
!184 = distinct !DILexicalBlock(scope: !109, file: !1, line: 86, column: 9)
!185 = !DILocation(line: 86, column: 14, scope: !184)
!186 = !DILocation(line: 86, column: 9, scope: !109)
!187 = !DILocation(line: 86, column: 25, scope: !184)
!188 = !DILocation(line: 86, column: 30, scope: !184)
!189 = !DILocation(line: 86, column: 20, scope: !184)
!190 = !DILocation(line: 87, column: 10, scope: !109)
!191 = !DILocation(line: 87, column: 5, scope: !109)
!192 = !DILocation(line: 89, column: 5, scope: !109)
!193 = !DILocation(line: 90, column: 1, scope: !109)
!194 = distinct !DISubprogram(name: "memset", scope: !195, file: !195, line: 12, type: !196, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !37)
!195 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!196 = !DISubroutineType(types: !197)
!197 = !{!3, !3, !9, !198}
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !199, line: 46, baseType: !200)
!199 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!200 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!201 = !DILocalVariable(name: "dst", arg: 1, scope: !194, file: !195, line: 12, type: !3)
!202 = !DILocation(line: 12, column: 20, scope: !194)
!203 = !DILocalVariable(name: "s", arg: 2, scope: !194, file: !195, line: 12, type: !9)
!204 = !DILocation(line: 12, column: 29, scope: !194)
!205 = !DILocalVariable(name: "count", arg: 3, scope: !194, file: !195, line: 12, type: !198)
!206 = !DILocation(line: 12, column: 39, scope: !194)
!207 = !DILocalVariable(name: "a", scope: !194, file: !195, line: 13, type: !12)
!208 = !DILocation(line: 13, column: 9, scope: !194)
!209 = !DILocation(line: 13, column: 13, scope: !194)
!210 = !DILocation(line: 14, column: 3, scope: !194)
!211 = !DILocation(line: 14, column: 15, scope: !194)
!212 = !DILocation(line: 14, column: 18, scope: !194)
!213 = !DILocation(line: 15, column: 12, scope: !194)
!214 = !DILocation(line: 15, column: 7, scope: !194)
!215 = !DILocation(line: 15, column: 10, scope: !194)
!216 = distinct !{!216, !210, !213, !217}
!217 = !{!"llvm.loop.mustprogress"}
!218 = !DILocation(line: 16, column: 10, scope: !194)
!219 = !DILocation(line: 16, column: 3, scope: !194)

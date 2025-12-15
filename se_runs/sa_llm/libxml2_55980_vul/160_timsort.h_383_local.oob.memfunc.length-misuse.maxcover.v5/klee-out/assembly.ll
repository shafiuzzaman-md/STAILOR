; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/160_timsort.h_383_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/160_timsort.h_383_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.TIM_SORT_STORE_T = type { i32*, i64 }

@.str = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"stack_curr\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"stack\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"(curr + A <= dst_size && A <= store.size) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_55980_vul/160_timsort.h_383_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !16 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca [3 x i64], align 16
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TIM_SORT_STORE_T, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i64* %2, metadata !21, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata i64* %3, metadata !26, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata i64* %4, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata [3 x i64]* %5, metadata !30, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i32** %6, metadata !35, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata %struct.TIM_SORT_STORE_T* %7, metadata !39, metadata !DIExpression()), !dbg !45
  %10 = bitcast %struct.TIM_SORT_STORE_T* %7 to i8*, !dbg !45
  %11 = call i8* @memset(i8* %10, i32 0, i64 16), !dbg !45
  %12 = bitcast i64* %2 to i8*, !dbg !46
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 8, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !47
  %13 = bitcast i64* %3 to i8*, !dbg !48
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 8, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !49
  %14 = bitcast i64* %4 to i8*, !dbg !50
  call void @klee_make_symbolic(i8* noundef %14, i64 noundef 8, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)), !dbg !51
  %15 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 0, !dbg !52
  %16 = bitcast i64* %15 to i8*, !dbg !52
  call void @klee_make_symbolic(i8* noundef %16, i64 noundef 24, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)), !dbg !53
  %17 = load i64, i64* %2, align 8, !dbg !54
  %18 = icmp ugt i64 %17, 0, !dbg !55
  %19 = zext i1 %18 to i32, !dbg !55
  %20 = sext i32 %19 to i64, !dbg !54
  call void @klee_assume(i64 noundef %20), !dbg !56
  %21 = load i64, i64* %3, align 8, !dbg !57
  %22 = icmp ugt i64 %21, 0, !dbg !58
  %23 = zext i1 %22 to i32, !dbg !58
  %24 = sext i32 %23 to i64, !dbg !57
  call void @klee_assume(i64 noundef %24), !dbg !59
  %25 = load i64, i64* %2, align 8, !dbg !60
  %26 = load i64, i64* %3, align 8, !dbg !61
  %27 = icmp ult i64 %25, %26, !dbg !62
  %28 = zext i1 %27 to i32, !dbg !62
  %29 = sext i32 %28 to i64, !dbg !60
  call void @klee_assume(i64 noundef %29), !dbg !63
  %30 = load i64, i64* %4, align 8, !dbg !64
  %31 = icmp uge i64 %30, 2, !dbg !65
  %32 = zext i1 %31 to i32, !dbg !65
  %33 = sext i32 %32 to i64, !dbg !64
  call void @klee_assume(i64 noundef %33), !dbg !66
  call void @llvm.dbg.declare(metadata i64* %8, metadata !67, metadata !DIExpression()), !dbg !68
  %34 = load i64, i64* %4, align 8, !dbg !69
  %35 = sub i64 %34, 2, !dbg !70
  %36 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 %35, !dbg !71
  %37 = load i64, i64* %36, align 8, !dbg !71
  store i64 %37, i64* %8, align 8, !dbg !68
  call void @llvm.dbg.declare(metadata i64* %9, metadata !72, metadata !DIExpression()), !dbg !73
  %38 = load i64, i64* %8, align 8, !dbg !74
  %39 = load i64, i64* %2, align 8, !dbg !75
  %40 = add i64 %38, %39, !dbg !76
  %41 = load i64, i64* %3, align 8, !dbg !77
  %42 = add i64 %40, %41, !dbg !78
  store i64 %42, i64* %9, align 8, !dbg !73
  %43 = load i64, i64* %9, align 8, !dbg !79
  %44 = mul i64 %43, 4, !dbg !80
  %45 = call noalias i8* @malloc(i64 noundef %44) #8, !dbg !81
  %46 = bitcast i8* %45 to i32*, !dbg !81
  store i32* %46, i32** %6, align 8, !dbg !82
  %47 = load i32*, i32** %6, align 8, !dbg !83
  %48 = icmp ne i32* %47, null, !dbg !84
  %49 = zext i1 %48 to i32, !dbg !84
  %50 = sext i32 %49 to i64, !dbg !83
  call void @klee_assume(i64 noundef %50), !dbg !85
  %51 = getelementptr inbounds %struct.TIM_SORT_STORE_T, %struct.TIM_SORT_STORE_T* %7, i32 0, i32 0, !dbg !86
  store i32* null, i32** %51, align 8, !dbg !87
  %52 = getelementptr inbounds %struct.TIM_SORT_STORE_T, %struct.TIM_SORT_STORE_T* %7, i32 0, i32 1, !dbg !88
  store i64 0, i64* %52, align 8, !dbg !89
  %53 = load i32*, i32** %6, align 8, !dbg !90
  %54 = load i64, i64* %2, align 8, !dbg !91
  %55 = load i64, i64* %3, align 8, !dbg !92
  %56 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 0, !dbg !93
  %57 = load i64, i64* %4, align 8, !dbg !94
  call void @merge_lo(i32* noundef %53, %struct.TIM_SORT_STORE_T* noundef %7, i64 noundef %54, i64 noundef %55, i64* noundef %56, i64 noundef %57), !dbg !95
  %58 = load i64, i64* %8, align 8, !dbg !96
  %59 = load i64, i64* %2, align 8, !dbg !96
  %60 = add i64 %58, %59, !dbg !96
  %61 = load i64, i64* %9, align 8, !dbg !96
  %62 = icmp ule i64 %60, %61, !dbg !96
  br i1 %62, label %63, label %70, !dbg !96

63:                                               ; preds = %0
  %64 = load i64, i64* %2, align 8, !dbg !96
  %65 = getelementptr inbounds %struct.TIM_SORT_STORE_T, %struct.TIM_SORT_STORE_T* %7, i32 0, i32 1, !dbg !96
  %66 = load i64, i64* %65, align 8, !dbg !96
  %67 = icmp ule i64 %64, %66, !dbg !96
  br i1 %67, label %68, label %70, !dbg !96

68:                                               ; preds = %63
  br i1 true, label %69, label %70, !dbg !96

69:                                               ; preds = %68
  br label %72, !dbg !96

70:                                               ; preds = %68, %63, %0
  %71 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.6, i64 0, i64 0), i32 noundef 74, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !96
  br label %72, !dbg !96

72:                                               ; preds = %70, %69
  %73 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.6, i64 0, i64 0), i32 noundef 77, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !97
  %74 = load i32*, i32** %6, align 8, !dbg !98
  %75 = bitcast i32* %74 to i8*, !dbg !98
  call void @free(i8* noundef %75) #8, !dbg !99
  %76 = getelementptr inbounds %struct.TIM_SORT_STORE_T, %struct.TIM_SORT_STORE_T* %7, i32 0, i32 0, !dbg !100
  %77 = load i32*, i32** %76, align 8, !dbg !100
  %78 = icmp ne i32* %77, null, !dbg !102
  br i1 %78, label %79, label %83, !dbg !103

79:                                               ; preds = %72
  %80 = getelementptr inbounds %struct.TIM_SORT_STORE_T, %struct.TIM_SORT_STORE_T* %7, i32 0, i32 0, !dbg !104
  %81 = load i32*, i32** %80, align 8, !dbg !104
  %82 = bitcast i32* %81 to i8*, !dbg !105
  call void @free(i8* noundef %82) #8, !dbg !106
  br label %83, !dbg !106

83:                                               ; preds = %79, %72
  ret i32 0, !dbg !107
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @merge_lo(i32* noundef %0, %struct.TIM_SORT_STORE_T* noundef %1, i64 noundef %2, i64 noundef %3, i64* noundef %4, i64 noundef %5) #0 !dbg !108 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TIM_SORT_STORE_T*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !113, metadata !DIExpression()), !dbg !114
  store %struct.TIM_SORT_STORE_T* %1, %struct.TIM_SORT_STORE_T** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.TIM_SORT_STORE_T** %8, metadata !115, metadata !DIExpression()), !dbg !116
  store i64 %2, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !117, metadata !DIExpression()), !dbg !118
  store i64 %3, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !119, metadata !DIExpression()), !dbg !120
  store i64* %4, i64** %11, align 8
  call void @llvm.dbg.declare(metadata i64** %11, metadata !121, metadata !DIExpression()), !dbg !122
  store i64 %5, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !123, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.declare(metadata i64* %13, metadata !125, metadata !DIExpression()), !dbg !127
  %18 = load i64*, i64** %11, align 8, !dbg !128
  %19 = load i64, i64* %12, align 8, !dbg !129
  %20 = sub i64 %19, 2, !dbg !130
  %21 = getelementptr inbounds i64, i64* %18, i64 %20, !dbg !128
  %22 = load i64, i64* %21, align 8, !dbg !128
  store i64 %22, i64* %13, align 8, !dbg !127
  call void @llvm.dbg.declare(metadata i32** %14, metadata !131, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.declare(metadata i64* %15, metadata !133, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.declare(metadata i64* %16, metadata !135, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.declare(metadata i64* %17, metadata !137, metadata !DIExpression()), !dbg !138
  br label %23, !dbg !139

23:                                               ; preds = %6
  %24 = load %struct.TIM_SORT_STORE_T*, %struct.TIM_SORT_STORE_T** %8, align 8, !dbg !140
  %25 = getelementptr inbounds %struct.TIM_SORT_STORE_T, %struct.TIM_SORT_STORE_T* %24, i32 0, i32 1, !dbg !140
  %26 = load i64, i64* %25, align 8, !dbg !140
  %27 = load i64, i64* %9, align 8, !dbg !140
  %28 = load i64, i64* %10, align 8, !dbg !140
  %29 = icmp ult i64 %27, %28, !dbg !140
  br i1 %29, label %30, label %32, !dbg !140

30:                                               ; preds = %23
  %31 = load i64, i64* %9, align 8, !dbg !140
  br label %34, !dbg !140

32:                                               ; preds = %23
  %33 = load i64, i64* %10, align 8, !dbg !140
  br label %34, !dbg !140

34:                                               ; preds = %32, %30
  %35 = phi i64 [ %31, %30 ], [ %33, %32 ], !dbg !140
  %36 = icmp ult i64 %26, %35, !dbg !140
  br i1 %36, label %37, label %63, !dbg !143

37:                                               ; preds = %34
  %38 = load i64, i64* %9, align 8, !dbg !144
  %39 = load i64, i64* %10, align 8, !dbg !144
  %40 = icmp ult i64 %38, %39, !dbg !144
  br i1 %40, label %41, label %43, !dbg !144

41:                                               ; preds = %37
  %42 = load i64, i64* %9, align 8, !dbg !144
  br label %45, !dbg !144

43:                                               ; preds = %37
  %44 = load i64, i64* %10, align 8, !dbg !144
  br label %45, !dbg !144

45:                                               ; preds = %43, %41
  %46 = phi i64 [ %42, %41 ], [ %44, %43 ], !dbg !144
  %47 = mul i64 %46, 4, !dbg !144
  %48 = call noalias i8* @malloc(i64 noundef %47) #8, !dbg !144
  %49 = bitcast i8* %48 to i32*, !dbg !144
  %50 = load %struct.TIM_SORT_STORE_T*, %struct.TIM_SORT_STORE_T** %8, align 8, !dbg !144
  %51 = getelementptr inbounds %struct.TIM_SORT_STORE_T, %struct.TIM_SORT_STORE_T* %50, i32 0, i32 0, !dbg !144
  store i32* %49, i32** %51, align 8, !dbg !144
  %52 = load i64, i64* %9, align 8, !dbg !144
  %53 = load i64, i64* %10, align 8, !dbg !144
  %54 = icmp ult i64 %52, %53, !dbg !144
  br i1 %54, label %55, label %57, !dbg !144

55:                                               ; preds = %45
  %56 = load i64, i64* %9, align 8, !dbg !144
  br label %59, !dbg !144

57:                                               ; preds = %45
  %58 = load i64, i64* %10, align 8, !dbg !144
  br label %59, !dbg !144

59:                                               ; preds = %57, %55
  %60 = phi i64 [ %56, %55 ], [ %58, %57 ], !dbg !144
  %61 = load %struct.TIM_SORT_STORE_T*, %struct.TIM_SORT_STORE_T** %8, align 8, !dbg !144
  %62 = getelementptr inbounds %struct.TIM_SORT_STORE_T, %struct.TIM_SORT_STORE_T* %61, i32 0, i32 1, !dbg !144
  store i64 %60, i64* %62, align 8, !dbg !144
  br label %63, !dbg !144

63:                                               ; preds = %59, %34
  br label %64, !dbg !143

64:                                               ; preds = %63
  %65 = load %struct.TIM_SORT_STORE_T*, %struct.TIM_SORT_STORE_T** %8, align 8, !dbg !146
  %66 = getelementptr inbounds %struct.TIM_SORT_STORE_T, %struct.TIM_SORT_STORE_T* %65, i32 0, i32 0, !dbg !147
  %67 = load i32*, i32** %66, align 8, !dbg !147
  store i32* %67, i32** %14, align 8, !dbg !148
  %68 = load i64, i64* %9, align 8, !dbg !149
  %69 = load i64, i64* %10, align 8, !dbg !151
  %70 = icmp ult i64 %68, %69, !dbg !152
  br i1 %70, label %71, label %81, !dbg !153

71:                                               ; preds = %64
  %72 = load i32*, i32** %14, align 8, !dbg !154
  %73 = bitcast i32* %72 to i8*, !dbg !156
  %74 = load i32*, i32** %7, align 8, !dbg !157
  %75 = load i64, i64* %13, align 8, !dbg !158
  %76 = getelementptr inbounds i32, i32* %74, i64 %75, !dbg !157
  %77 = bitcast i32* %76 to i8*, !dbg !156
  %78 = load i64, i64* %9, align 8, !dbg !159
  %79 = mul i64 %78, 4, !dbg !160
  %80 = call i8* @memcpy(i8* %73, i8* %77, i64 %79), !dbg !156
  br label %81, !dbg !161

81:                                               ; preds = %71, %64
  ret void, !dbg !162
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !163 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !169, metadata !DIExpression()), !dbg !170
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !171, metadata !DIExpression()), !dbg !172
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !173, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.declare(metadata i8** %7, metadata !175, metadata !DIExpression()), !dbg !178
  %9 = load i8*, i8** %4, align 8, !dbg !179
  store i8* %9, i8** %7, align 8, !dbg !178
  call void @llvm.dbg.declare(metadata i8** %8, metadata !180, metadata !DIExpression()), !dbg !183
  %10 = load i8*, i8** %5, align 8, !dbg !184
  store i8* %10, i8** %8, align 8, !dbg !183
  br label %11, !dbg !185

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !186
  %13 = add i64 %12, -1, !dbg !186
  store i64 %13, i64* %6, align 8, !dbg !186
  %14 = icmp ugt i64 %12, 0, !dbg !187
  br i1 %14, label %15, label %21, !dbg !185

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !188
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !188
  store i8* %17, i8** %8, align 8, !dbg !188
  %18 = load i8, i8* %16, align 1, !dbg !189
  %19 = load i8*, i8** %7, align 8, !dbg !190
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !190
  store i8* %20, i8** %7, align 8, !dbg !190
  store i8 %18, i8* %19, align 1, !dbg !191
  br label %11, !dbg !185, !llvm.loop !192

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !194
  ret i8* %22, !dbg !195
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #7 !dbg !196 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !200, metadata !DIExpression()), !dbg !201
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !202, metadata !DIExpression()), !dbg !203
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !204, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.declare(metadata i8** %7, metadata !206, metadata !DIExpression()), !dbg !207
  %8 = load i8*, i8** %4, align 8, !dbg !208
  store i8* %8, i8** %7, align 8, !dbg !207
  br label %9, !dbg !209

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !210
  %11 = add i64 %10, -1, !dbg !210
  store i64 %11, i64* %6, align 8, !dbg !210
  %12 = icmp ugt i64 %10, 0, !dbg !211
  br i1 %12, label %13, label %18, !dbg !209

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !212
  %15 = trunc i32 %14 to i8, !dbg !212
  %16 = load i8*, i8** %7, align 8, !dbg !213
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !213
  store i8* %17, i8** %7, align 8, !dbg !213
  store i8 %15, i8* %16, align 1, !dbg !214
  br label %9, !dbg !209, !llvm.loop !215

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !216
  ret i8* %19, !dbg !217
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15, !15, !15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/160_timsort.h_383_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "4baf04ab9612a01f49c54f0176ed5f31")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = distinct !DICompileUnit(language: DW_LANG_C99, file: !5, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!5 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!6 = distinct !DICompileUnit(language: DW_LANG_C99, file: !7, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!7 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!8 = !{i32 7, !"Dwarf Version", i32 5}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{i32 7, !"PIC Level", i32 2}
!12 = !{i32 7, !"PIE Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"Ubuntu clang version 14.0.6"}
!16 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 34, type: !17, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!17 = !DISubroutineType(types: !18)
!18 = !{!19}
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !{}
!21 = !DILocalVariable(name: "A", scope: !16, file: !1, line: 36, type: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !23, line: 46, baseType: !24)
!23 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!24 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!25 = !DILocation(line: 36, column: 12, scope: !16)
!26 = !DILocalVariable(name: "B", scope: !16, file: !1, line: 36, type: !22)
!27 = !DILocation(line: 36, column: 15, scope: !16)
!28 = !DILocalVariable(name: "stack_curr", scope: !16, file: !1, line: 37, type: !22)
!29 = !DILocation(line: 37, column: 12, scope: !16)
!30 = !DILocalVariable(name: "stack", scope: !16, file: !1, line: 38, type: !31)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 192, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 3)
!34 = !DILocation(line: 38, column: 12, scope: !16)
!35 = !DILocalVariable(name: "dst", scope: !16, file: !1, line: 39, type: !36)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "SORT_TYPE", file: !1, line: 10, baseType: !19)
!38 = !DILocation(line: 39, column: 16, scope: !16)
!39 = !DILocalVariable(name: "store", scope: !16, file: !1, line: 40, type: !40)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIM_SORT_STORE_T", file: !1, line: 17, baseType: !41)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 14, size: 128, elements: !42)
!42 = !{!43, !44}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !41, file: !1, line: 15, baseType: !36, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !41, file: !1, line: 16, baseType: !22, size: 64, offset: 64)
!45 = !DILocation(line: 40, column: 22, scope: !16)
!46 = !DILocation(line: 43, column: 24, scope: !16)
!47 = !DILocation(line: 43, column: 5, scope: !16)
!48 = !DILocation(line: 44, column: 24, scope: !16)
!49 = !DILocation(line: 44, column: 5, scope: !16)
!50 = !DILocation(line: 45, column: 24, scope: !16)
!51 = !DILocation(line: 45, column: 5, scope: !16)
!52 = !DILocation(line: 46, column: 24, scope: !16)
!53 = !DILocation(line: 46, column: 5, scope: !16)
!54 = !DILocation(line: 49, column: 17, scope: !16)
!55 = !DILocation(line: 49, column: 19, scope: !16)
!56 = !DILocation(line: 49, column: 5, scope: !16)
!57 = !DILocation(line: 50, column: 17, scope: !16)
!58 = !DILocation(line: 50, column: 19, scope: !16)
!59 = !DILocation(line: 50, column: 5, scope: !16)
!60 = !DILocation(line: 51, column: 17, scope: !16)
!61 = !DILocation(line: 51, column: 21, scope: !16)
!62 = !DILocation(line: 51, column: 19, scope: !16)
!63 = !DILocation(line: 51, column: 5, scope: !16)
!64 = !DILocation(line: 52, column: 17, scope: !16)
!65 = !DILocation(line: 52, column: 28, scope: !16)
!66 = !DILocation(line: 52, column: 5, scope: !16)
!67 = !DILocalVariable(name: "curr", scope: !16, file: !1, line: 55, type: !22)
!68 = !DILocation(line: 55, column: 12, scope: !16)
!69 = !DILocation(line: 55, column: 25, scope: !16)
!70 = !DILocation(line: 55, column: 36, scope: !16)
!71 = !DILocation(line: 55, column: 19, scope: !16)
!72 = !DILocalVariable(name: "dst_size", scope: !16, file: !1, line: 56, type: !22)
!73 = !DILocation(line: 56, column: 12, scope: !16)
!74 = !DILocation(line: 56, column: 23, scope: !16)
!75 = !DILocation(line: 56, column: 30, scope: !16)
!76 = !DILocation(line: 56, column: 28, scope: !16)
!77 = !DILocation(line: 56, column: 34, scope: !16)
!78 = !DILocation(line: 56, column: 32, scope: !16)
!79 = !DILocation(line: 59, column: 18, scope: !16)
!80 = !DILocation(line: 59, column: 27, scope: !16)
!81 = !DILocation(line: 59, column: 11, scope: !16)
!82 = !DILocation(line: 59, column: 9, scope: !16)
!83 = !DILocation(line: 60, column: 17, scope: !16)
!84 = !DILocation(line: 60, column: 21, scope: !16)
!85 = !DILocation(line: 60, column: 5, scope: !16)
!86 = !DILocation(line: 63, column: 11, scope: !16)
!87 = !DILocation(line: 63, column: 19, scope: !16)
!88 = !DILocation(line: 64, column: 11, scope: !16)
!89 = !DILocation(line: 64, column: 16, scope: !16)
!90 = !DILocation(line: 67, column: 14, scope: !16)
!91 = !DILocation(line: 67, column: 27, scope: !16)
!92 = !DILocation(line: 67, column: 30, scope: !16)
!93 = !DILocation(line: 67, column: 33, scope: !16)
!94 = !DILocation(line: 67, column: 40, scope: !16)
!95 = !DILocation(line: 67, column: 5, scope: !16)
!96 = !DILocation(line: 74, column: 5, scope: !16)
!97 = !DILocation(line: 77, column: 5, scope: !16)
!98 = !DILocation(line: 80, column: 10, scope: !16)
!99 = !DILocation(line: 80, column: 5, scope: !16)
!100 = !DILocation(line: 81, column: 15, scope: !101)
!101 = distinct !DILexicalBlock(scope: !16, file: !1, line: 81, column: 9)
!102 = !DILocation(line: 81, column: 9, scope: !101)
!103 = !DILocation(line: 81, column: 9, scope: !16)
!104 = !DILocation(line: 81, column: 35, scope: !101)
!105 = !DILocation(line: 81, column: 29, scope: !101)
!106 = !DILocation(line: 81, column: 24, scope: !101)
!107 = !DILocation(line: 83, column: 5, scope: !16)
!108 = distinct !DISubprogram(name: "merge_lo", scope: !1, file: !1, line: 87, type: !109, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!109 = !DISubroutineType(types: !110)
!110 = !{null, !36, !111, !22, !22, !112, !22}
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!113 = !DILocalVariable(name: "dst", arg: 1, scope: !108, file: !1, line: 87, type: !36)
!114 = !DILocation(line: 87, column: 26, scope: !108)
!115 = !DILocalVariable(name: "store", arg: 2, scope: !108, file: !1, line: 87, type: !111)
!116 = !DILocation(line: 87, column: 49, scope: !108)
!117 = !DILocalVariable(name: "A", arg: 3, scope: !108, file: !1, line: 88, type: !22)
!118 = !DILocation(line: 88, column: 22, scope: !108)
!119 = !DILocalVariable(name: "B", arg: 4, scope: !108, file: !1, line: 88, type: !22)
!120 = !DILocation(line: 88, column: 32, scope: !108)
!121 = !DILocalVariable(name: "stack", arg: 5, scope: !108, file: !1, line: 88, type: !112)
!122 = !DILocation(line: 88, column: 43, scope: !108)
!123 = !DILocalVariable(name: "stack_curr", arg: 6, scope: !108, file: !1, line: 88, type: !22)
!124 = !DILocation(line: 88, column: 57, scope: !108)
!125 = !DILocalVariable(name: "curr", scope: !108, file: !1, line: 89, type: !126)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!127 = !DILocation(line: 89, column: 18, scope: !108)
!128 = !DILocation(line: 89, column: 25, scope: !108)
!129 = !DILocation(line: 89, column: 31, scope: !108)
!130 = !DILocation(line: 89, column: 42, scope: !108)
!131 = !DILocalVariable(name: "storage", scope: !108, file: !1, line: 90, type: !36)
!132 = !DILocation(line: 90, column: 16, scope: !108)
!133 = !DILocalVariable(name: "i", scope: !108, file: !1, line: 91, type: !22)
!134 = !DILocation(line: 91, column: 12, scope: !108)
!135 = !DILocalVariable(name: "j", scope: !108, file: !1, line: 91, type: !22)
!136 = !DILocation(line: 91, column: 15, scope: !108)
!137 = !DILocalVariable(name: "k", scope: !108, file: !1, line: 91, type: !22)
!138 = !DILocation(line: 91, column: 18, scope: !108)
!139 = !DILocation(line: 94, column: 5, scope: !108)
!140 = !DILocation(line: 94, column: 5, scope: !141)
!141 = distinct !DILexicalBlock(scope: !142, file: !1, line: 94, column: 5)
!142 = distinct !DILexicalBlock(scope: !108, file: !1, line: 94, column: 5)
!143 = !DILocation(line: 94, column: 5, scope: !142)
!144 = !DILocation(line: 94, column: 5, scope: !145)
!145 = distinct !DILexicalBlock(scope: !141, file: !1, line: 94, column: 5)
!146 = !DILocation(line: 95, column: 15, scope: !108)
!147 = !DILocation(line: 95, column: 22, scope: !108)
!148 = !DILocation(line: 95, column: 13, scope: !108)
!149 = !DILocation(line: 98, column: 9, scope: !150)
!150 = distinct !DILexicalBlock(scope: !108, file: !1, line: 98, column: 9)
!151 = !DILocation(line: 98, column: 13, scope: !150)
!152 = !DILocation(line: 98, column: 11, scope: !150)
!153 = !DILocation(line: 98, column: 9, scope: !108)
!154 = !DILocation(line: 100, column: 16, scope: !155)
!155 = distinct !DILexicalBlock(scope: !150, file: !1, line: 98, column: 16)
!156 = !DILocation(line: 100, column: 9, scope: !155)
!157 = !DILocation(line: 100, column: 26, scope: !155)
!158 = !DILocation(line: 100, column: 30, scope: !155)
!159 = !DILocation(line: 100, column: 37, scope: !155)
!160 = !DILocation(line: 100, column: 39, scope: !155)
!161 = !DILocation(line: 102, column: 5, scope: !155)
!162 = !DILocation(line: 103, column: 1, scope: !108)
!163 = distinct !DISubprogram(name: "memcpy", scope: !164, file: !164, line: 12, type: !165, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !20)
!164 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!165 = !DISubroutineType(types: !166)
!166 = !{!3, !3, !167, !22}
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!169 = !DILocalVariable(name: "destaddr", arg: 1, scope: !163, file: !164, line: 12, type: !3)
!170 = !DILocation(line: 12, column: 20, scope: !163)
!171 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !163, file: !164, line: 12, type: !167)
!172 = !DILocation(line: 12, column: 42, scope: !163)
!173 = !DILocalVariable(name: "len", arg: 3, scope: !163, file: !164, line: 12, type: !22)
!174 = !DILocation(line: 12, column: 58, scope: !163)
!175 = !DILocalVariable(name: "dest", scope: !163, file: !164, line: 13, type: !176)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!178 = !DILocation(line: 13, column: 9, scope: !163)
!179 = !DILocation(line: 13, column: 16, scope: !163)
!180 = !DILocalVariable(name: "src", scope: !163, file: !164, line: 14, type: !181)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!183 = !DILocation(line: 14, column: 15, scope: !163)
!184 = !DILocation(line: 14, column: 21, scope: !163)
!185 = !DILocation(line: 16, column: 3, scope: !163)
!186 = !DILocation(line: 16, column: 13, scope: !163)
!187 = !DILocation(line: 16, column: 16, scope: !163)
!188 = !DILocation(line: 17, column: 19, scope: !163)
!189 = !DILocation(line: 17, column: 15, scope: !163)
!190 = !DILocation(line: 17, column: 10, scope: !163)
!191 = !DILocation(line: 17, column: 13, scope: !163)
!192 = distinct !{!192, !185, !188, !193}
!193 = !{!"llvm.loop.mustprogress"}
!194 = !DILocation(line: 18, column: 10, scope: !163)
!195 = !DILocation(line: 18, column: 3, scope: !163)
!196 = distinct !DISubprogram(name: "memset", scope: !197, file: !197, line: 12, type: !198, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !20)
!197 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!198 = !DISubroutineType(types: !199)
!199 = !{!3, !3, !19, !22}
!200 = !DILocalVariable(name: "dst", arg: 1, scope: !196, file: !197, line: 12, type: !3)
!201 = !DILocation(line: 12, column: 20, scope: !196)
!202 = !DILocalVariable(name: "s", arg: 2, scope: !196, file: !197, line: 12, type: !19)
!203 = !DILocation(line: 12, column: 29, scope: !196)
!204 = !DILocalVariable(name: "count", arg: 3, scope: !196, file: !197, line: 12, type: !22)
!205 = !DILocation(line: 12, column: 39, scope: !196)
!206 = !DILocalVariable(name: "a", scope: !196, file: !197, line: 13, type: !176)
!207 = !DILocation(line: 13, column: 9, scope: !196)
!208 = !DILocation(line: 13, column: 13, scope: !196)
!209 = !DILocation(line: 14, column: 3, scope: !196)
!210 = !DILocation(line: 14, column: 15, scope: !196)
!211 = !DILocation(line: 14, column: 18, scope: !196)
!212 = !DILocation(line: 15, column: 12, scope: !196)
!213 = !DILocation(line: 15, column: 7, scope: !196)
!214 = !DILocation(line: 15, column: 10, scope: !196)
!215 = distinct !{!215, !209, !212, !193}
!216 = !DILocation(line: 16, column: 10, scope: !196)
!217 = !DILocation(line: 16, column: 3, scope: !196)

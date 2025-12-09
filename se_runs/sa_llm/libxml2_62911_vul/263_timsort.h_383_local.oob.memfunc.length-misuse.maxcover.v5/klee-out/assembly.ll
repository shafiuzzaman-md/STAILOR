; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/263_timsort.h_383_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/263_timsort.h_383_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.TIM_SORT_RUN_T = type { i64, i64 }
%struct.TEMP_STORAGE_T = type { i32*, i64 }

@.str = private unnamed_addr constant [11 x i8] c"stack_curr\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"dst\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"stack_start\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"stack_length\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_62911_vul/263_timsort.h_383_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.timsort_merge_lo = private unnamed_addr constant [95 x i8] c"void timsort_merge_lo(int *, const TIM_SORT_RUN_T *, size_t, TEMP_STORAGE_T *, size_t, size_t)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !14 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TIM_SORT_RUN_T*, align 8
  %7 = alloca %struct.TEMP_STORAGE_T, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i64* %2, metadata !19, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i64* %3, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata i64* %4, metadata !26, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata i32** %5, metadata !28, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata %struct.TIM_SORT_RUN_T** %6, metadata !31, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata %struct.TEMP_STORAGE_T* %7, metadata !39, metadata !DIExpression()), !dbg !45
  %14 = bitcast %struct.TEMP_STORAGE_T* %7 to i8*, !dbg !45
  %15 = call i8* @memset(i8* %14, i32 0, i64 16), !dbg !45
  %16 = bitcast i64* %2 to i8*, !dbg !46
  call void @klee_make_symbolic(i8* noundef %16, i64 noundef 8, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0)), !dbg !47
  %17 = bitcast i64* %3 to i8*, !dbg !48
  call void @klee_make_symbolic(i8* noundef %17, i64 noundef 8, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !49
  %18 = bitcast i64* %4 to i8*, !dbg !50
  call void @klee_make_symbolic(i8* noundef %18, i64 noundef 8, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)), !dbg !51
  %19 = load i64, i64* %2, align 8, !dbg !52
  %20 = icmp uge i64 %19, 2, !dbg !53
  %21 = zext i1 %20 to i32, !dbg !53
  %22 = sext i32 %21 to i64, !dbg !52
  call void @klee_assume(i64 noundef %22), !dbg !54
  call void @llvm.dbg.declare(metadata i64* %8, metadata !55, metadata !DIExpression()), !dbg !56
  store i64 1024, i64* %8, align 8, !dbg !56
  %23 = load i64, i64* %8, align 8, !dbg !57
  %24 = mul i64 %23, 4, !dbg !58
  %25 = call noalias i8* @malloc(i64 noundef %24) #8, !dbg !59
  %26 = bitcast i8* %25 to i32*, !dbg !59
  store i32* %26, i32** %5, align 8, !dbg !60
  %27 = load i32*, i32** %5, align 8, !dbg !61
  %28 = bitcast i32* %27 to i8*, !dbg !61
  %29 = load i64, i64* %8, align 8, !dbg !62
  %30 = mul i64 %29, 4, !dbg !63
  call void @klee_make_symbolic(i8* noundef %28, i64 noundef %30, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)), !dbg !64
  %31 = load i64, i64* %2, align 8, !dbg !65
  %32 = mul i64 %31, 16, !dbg !66
  %33 = call noalias i8* @malloc(i64 noundef %32) #8, !dbg !67
  %34 = bitcast i8* %33 to %struct.TIM_SORT_RUN_T*, !dbg !67
  store %struct.TIM_SORT_RUN_T* %34, %struct.TIM_SORT_RUN_T** %6, align 8, !dbg !68
  call void @llvm.dbg.declare(metadata i64* %9, metadata !69, metadata !DIExpression()), !dbg !71
  store i64 0, i64* %9, align 8, !dbg !71
  br label %35, !dbg !72

35:                                               ; preds = %74, %0
  %36 = load i64, i64* %9, align 8, !dbg !73
  %37 = load i64, i64* %2, align 8, !dbg !75
  %38 = icmp ult i64 %36, %37, !dbg !76
  br i1 %38, label %39, label %77, !dbg !77

39:                                               ; preds = %35
  %40 = load %struct.TIM_SORT_RUN_T*, %struct.TIM_SORT_RUN_T** %6, align 8, !dbg !78
  %41 = load i64, i64* %9, align 8, !dbg !80
  %42 = getelementptr inbounds %struct.TIM_SORT_RUN_T, %struct.TIM_SORT_RUN_T* %40, i64 %41, !dbg !78
  %43 = getelementptr inbounds %struct.TIM_SORT_RUN_T, %struct.TIM_SORT_RUN_T* %42, i32 0, i32 0, !dbg !81
  %44 = bitcast i64* %43 to i8*, !dbg !82
  call void @klee_make_symbolic(i8* noundef %44, i64 noundef 8, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0)), !dbg !83
  %45 = load %struct.TIM_SORT_RUN_T*, %struct.TIM_SORT_RUN_T** %6, align 8, !dbg !84
  %46 = load i64, i64* %9, align 8, !dbg !85
  %47 = getelementptr inbounds %struct.TIM_SORT_RUN_T, %struct.TIM_SORT_RUN_T* %45, i64 %46, !dbg !84
  %48 = getelementptr inbounds %struct.TIM_SORT_RUN_T, %struct.TIM_SORT_RUN_T* %47, i32 0, i32 1, !dbg !86
  %49 = bitcast i64* %48 to i8*, !dbg !87
  call void @klee_make_symbolic(i8* noundef %49, i64 noundef 8, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0)), !dbg !88
  %50 = load %struct.TIM_SORT_RUN_T*, %struct.TIM_SORT_RUN_T** %6, align 8, !dbg !89
  %51 = load i64, i64* %9, align 8, !dbg !90
  %52 = getelementptr inbounds %struct.TIM_SORT_RUN_T, %struct.TIM_SORT_RUN_T* %50, i64 %51, !dbg !89
  %53 = getelementptr inbounds %struct.TIM_SORT_RUN_T, %struct.TIM_SORT_RUN_T* %52, i32 0, i32 0, !dbg !91
  %54 = load i64, i64* %53, align 8, !dbg !91
  %55 = load i64, i64* %8, align 8, !dbg !92
  %56 = icmp ult i64 %54, %55, !dbg !93
  %57 = zext i1 %56 to i32, !dbg !93
  %58 = sext i32 %57 to i64, !dbg !89
  call void @klee_assume(i64 noundef %58), !dbg !94
  %59 = load %struct.TIM_SORT_RUN_T*, %struct.TIM_SORT_RUN_T** %6, align 8, !dbg !95
  %60 = load i64, i64* %9, align 8, !dbg !96
  %61 = getelementptr inbounds %struct.TIM_SORT_RUN_T, %struct.TIM_SORT_RUN_T* %59, i64 %60, !dbg !95
  %62 = getelementptr inbounds %struct.TIM_SORT_RUN_T, %struct.TIM_SORT_RUN_T* %61, i32 0, i32 0, !dbg !97
  %63 = load i64, i64* %62, align 8, !dbg !97
  %64 = load %struct.TIM_SORT_RUN_T*, %struct.TIM_SORT_RUN_T** %6, align 8, !dbg !98
  %65 = load i64, i64* %9, align 8, !dbg !99
  %66 = getelementptr inbounds %struct.TIM_SORT_RUN_T, %struct.TIM_SORT_RUN_T* %64, i64 %65, !dbg !98
  %67 = getelementptr inbounds %struct.TIM_SORT_RUN_T, %struct.TIM_SORT_RUN_T* %66, i32 0, i32 1, !dbg !100
  %68 = load i64, i64* %67, align 8, !dbg !100
  %69 = add i64 %63, %68, !dbg !101
  %70 = load i64, i64* %8, align 8, !dbg !102
  %71 = icmp ule i64 %69, %70, !dbg !103
  %72 = zext i1 %71 to i32, !dbg !103
  %73 = sext i32 %72 to i64, !dbg !95
  call void @klee_assume(i64 noundef %73), !dbg !104
  br label %74, !dbg !105

74:                                               ; preds = %39
  %75 = load i64, i64* %9, align 8, !dbg !106
  %76 = add i64 %75, 1, !dbg !106
  store i64 %76, i64* %9, align 8, !dbg !106
  br label %35, !dbg !107, !llvm.loop !108

77:                                               ; preds = %35
  call void @llvm.dbg.declare(metadata i64* %10, metadata !111, metadata !DIExpression()), !dbg !112
  %78 = load i64, i64* %2, align 8, !dbg !113
  %79 = sub i64 %78, 2, !dbg !114
  store i64 %79, i64* %10, align 8, !dbg !112
  call void @llvm.dbg.declare(metadata i64* %11, metadata !115, metadata !DIExpression()), !dbg !116
  %80 = load %struct.TIM_SORT_RUN_T*, %struct.TIM_SORT_RUN_T** %6, align 8, !dbg !117
  %81 = load i64, i64* %10, align 8, !dbg !118
  %82 = getelementptr inbounds %struct.TIM_SORT_RUN_T, %struct.TIM_SORT_RUN_T* %80, i64 %81, !dbg !117
  %83 = getelementptr inbounds %struct.TIM_SORT_RUN_T, %struct.TIM_SORT_RUN_T* %82, i32 0, i32 0, !dbg !119
  %84 = load i64, i64* %83, align 8, !dbg !119
  store i64 %84, i64* %11, align 8, !dbg !116
  call void @llvm.dbg.declare(metadata i64* %12, metadata !120, metadata !DIExpression()), !dbg !121
  %85 = load %struct.TIM_SORT_RUN_T*, %struct.TIM_SORT_RUN_T** %6, align 8, !dbg !122
  %86 = load i64, i64* %10, align 8, !dbg !123
  %87 = getelementptr inbounds %struct.TIM_SORT_RUN_T, %struct.TIM_SORT_RUN_T* %85, i64 %86, !dbg !122
  %88 = getelementptr inbounds %struct.TIM_SORT_RUN_T, %struct.TIM_SORT_RUN_T* %87, i32 0, i32 1, !dbg !124
  %89 = load i64, i64* %88, align 8, !dbg !124
  store i64 %89, i64* %12, align 8, !dbg !121
  call void @llvm.dbg.declare(metadata i64* %13, metadata !125, metadata !DIExpression()), !dbg !126
  %90 = load %struct.TIM_SORT_RUN_T*, %struct.TIM_SORT_RUN_T** %6, align 8, !dbg !127
  %91 = load i64, i64* %10, align 8, !dbg !128
  %92 = add i64 %91, 1, !dbg !129
  %93 = getelementptr inbounds %struct.TIM_SORT_RUN_T, %struct.TIM_SORT_RUN_T* %90, i64 %92, !dbg !127
  %94 = getelementptr inbounds %struct.TIM_SORT_RUN_T, %struct.TIM_SORT_RUN_T* %93, i32 0, i32 1, !dbg !130
  %95 = load i64, i64* %94, align 8, !dbg !130
  store i64 %95, i64* %13, align 8, !dbg !126
  %96 = load i64, i64* %3, align 8, !dbg !131
  %97 = load i64, i64* %12, align 8, !dbg !132
  %98 = icmp eq i64 %96, %97, !dbg !133
  %99 = zext i1 %98 to i32, !dbg !133
  %100 = sext i32 %99 to i64, !dbg !131
  call void @klee_assume(i64 noundef %100), !dbg !134
  %101 = load i64, i64* %4, align 8, !dbg !135
  %102 = load i64, i64* %13, align 8, !dbg !136
  %103 = icmp eq i64 %101, %102, !dbg !137
  %104 = zext i1 %103 to i32, !dbg !137
  %105 = sext i32 %104 to i64, !dbg !135
  call void @klee_assume(i64 noundef %105), !dbg !138
  %106 = load i64, i64* %11, align 8, !dbg !139
  %107 = load i64, i64* %3, align 8, !dbg !140
  %108 = add i64 %106, %107, !dbg !141
  %109 = load i64, i64* %4, align 8, !dbg !142
  %110 = add i64 %108, %109, !dbg !143
  %111 = load i64, i64* %8, align 8, !dbg !144
  %112 = icmp ule i64 %110, %111, !dbg !145
  %113 = zext i1 %112 to i32, !dbg !145
  %114 = sext i32 %113 to i64, !dbg !139
  call void @klee_assume(i64 noundef %114), !dbg !146
  %115 = load i32*, i32** %5, align 8, !dbg !147
  %116 = load %struct.TIM_SORT_RUN_T*, %struct.TIM_SORT_RUN_T** %6, align 8, !dbg !148
  %117 = load i64, i64* %2, align 8, !dbg !149
  %118 = load i64, i64* %3, align 8, !dbg !150
  %119 = load i64, i64* %4, align 8, !dbg !151
  call void @timsort_merge_lo(i32* noundef %115, %struct.TIM_SORT_RUN_T* noundef %116, i64 noundef %117, %struct.TEMP_STORAGE_T* noundef %7, i64 noundef %118, i64 noundef %119), !dbg !152
  %120 = load i32*, i32** %5, align 8, !dbg !153
  %121 = bitcast i32* %120 to i8*, !dbg !153
  call void @free(i8* noundef %121) #8, !dbg !154
  %122 = load %struct.TIM_SORT_RUN_T*, %struct.TIM_SORT_RUN_T** %6, align 8, !dbg !155
  %123 = bitcast %struct.TIM_SORT_RUN_T* %122 to i8*, !dbg !155
  call void @free(i8* noundef %123) #8, !dbg !156
  %124 = getelementptr inbounds %struct.TEMP_STORAGE_T, %struct.TEMP_STORAGE_T* %7, i32 0, i32 0, !dbg !157
  %125 = load i32*, i32** %124, align 8, !dbg !157
  %126 = bitcast i32* %125 to i8*, !dbg !158
  call void @free(i8* noundef %126) #8, !dbg !159
  ret i32 0, !dbg !160
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
define internal void @timsort_merge_lo(i32* noundef %0, %struct.TIM_SORT_RUN_T* noundef %1, i64 noundef %2, %struct.TEMP_STORAGE_T* noundef %3, i64 noundef %4, i64 noundef %5) #0 !dbg !161 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TIM_SORT_RUN_T*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TEMP_STORAGE_T*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !167, metadata !DIExpression()), !dbg !168
  store %struct.TIM_SORT_RUN_T* %1, %struct.TIM_SORT_RUN_T** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.TIM_SORT_RUN_T** %8, metadata !169, metadata !DIExpression()), !dbg !170
  store i64 %2, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !171, metadata !DIExpression()), !dbg !172
  store %struct.TEMP_STORAGE_T* %3, %struct.TEMP_STORAGE_T** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.TEMP_STORAGE_T** %10, metadata !173, metadata !DIExpression()), !dbg !174
  store i64 %4, i64* %11, align 8
  call void @llvm.dbg.declare(metadata i64* %11, metadata !175, metadata !DIExpression()), !dbg !176
  store i64 %5, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !177, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.declare(metadata i64* %13, metadata !179, metadata !DIExpression()), !dbg !181
  %18 = load %struct.TIM_SORT_RUN_T*, %struct.TIM_SORT_RUN_T** %8, align 8, !dbg !182
  %19 = load i64, i64* %9, align 8, !dbg !183
  %20 = sub i64 %19, 2, !dbg !184
  %21 = getelementptr inbounds %struct.TIM_SORT_RUN_T, %struct.TIM_SORT_RUN_T* %18, i64 %20, !dbg !182
  %22 = getelementptr inbounds %struct.TIM_SORT_RUN_T, %struct.TIM_SORT_RUN_T* %21, i32 0, i32 0, !dbg !185
  %23 = load i64, i64* %22, align 8, !dbg !185
  store i64 %23, i64* %13, align 8, !dbg !181
  call void @llvm.dbg.declare(metadata i32** %14, metadata !186, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.declare(metadata i64* %15, metadata !188, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.declare(metadata i64* %16, metadata !190, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.declare(metadata i64* %17, metadata !192, metadata !DIExpression()), !dbg !193
  br label %24, !dbg !194

24:                                               ; preds = %6
  %25 = load %struct.TEMP_STORAGE_T*, %struct.TEMP_STORAGE_T** %10, align 8, !dbg !195
  %26 = getelementptr inbounds %struct.TEMP_STORAGE_T, %struct.TEMP_STORAGE_T* %25, i32 0, i32 1, !dbg !195
  %27 = load i64, i64* %26, align 8, !dbg !195
  %28 = load i64, i64* %11, align 8, !dbg !195
  %29 = load i64, i64* %12, align 8, !dbg !195
  %30 = icmp ult i64 %28, %29, !dbg !195
  br i1 %30, label %31, label %33, !dbg !195

31:                                               ; preds = %24
  %32 = load i64, i64* %11, align 8, !dbg !195
  br label %35, !dbg !195

33:                                               ; preds = %24
  %34 = load i64, i64* %12, align 8, !dbg !195
  br label %35, !dbg !195

35:                                               ; preds = %33, %31
  %36 = phi i64 [ %32, %31 ], [ %34, %33 ], !dbg !195
  %37 = icmp ult i64 %27, %36, !dbg !195
  br i1 %37, label %38, label %68, !dbg !198

38:                                               ; preds = %35
  %39 = load %struct.TEMP_STORAGE_T*, %struct.TEMP_STORAGE_T** %10, align 8, !dbg !199
  %40 = getelementptr inbounds %struct.TEMP_STORAGE_T, %struct.TEMP_STORAGE_T* %39, i32 0, i32 0, !dbg !199
  %41 = load i32*, i32** %40, align 8, !dbg !199
  %42 = bitcast i32* %41 to i8*, !dbg !199
  %43 = load i64, i64* %11, align 8, !dbg !199
  %44 = load i64, i64* %12, align 8, !dbg !199
  %45 = icmp ult i64 %43, %44, !dbg !199
  br i1 %45, label %46, label %48, !dbg !199

46:                                               ; preds = %38
  %47 = load i64, i64* %11, align 8, !dbg !199
  br label %50, !dbg !199

48:                                               ; preds = %38
  %49 = load i64, i64* %12, align 8, !dbg !199
  br label %50, !dbg !199

50:                                               ; preds = %48, %46
  %51 = phi i64 [ %47, %46 ], [ %49, %48 ], !dbg !199
  %52 = mul i64 %51, 4, !dbg !199
  %53 = call i8* @realloc(i8* noundef %42, i64 noundef %52) #8, !dbg !199
  %54 = bitcast i8* %53 to i32*, !dbg !199
  %55 = load %struct.TEMP_STORAGE_T*, %struct.TEMP_STORAGE_T** %10, align 8, !dbg !199
  %56 = getelementptr inbounds %struct.TEMP_STORAGE_T, %struct.TEMP_STORAGE_T* %55, i32 0, i32 0, !dbg !199
  store i32* %54, i32** %56, align 8, !dbg !199
  %57 = load i64, i64* %11, align 8, !dbg !199
  %58 = load i64, i64* %12, align 8, !dbg !199
  %59 = icmp ult i64 %57, %58, !dbg !199
  br i1 %59, label %60, label %62, !dbg !199

60:                                               ; preds = %50
  %61 = load i64, i64* %11, align 8, !dbg !199
  br label %64, !dbg !199

62:                                               ; preds = %50
  %63 = load i64, i64* %12, align 8, !dbg !199
  br label %64, !dbg !199

64:                                               ; preds = %62, %60
  %65 = phi i64 [ %61, %60 ], [ %63, %62 ], !dbg !199
  %66 = load %struct.TEMP_STORAGE_T*, %struct.TEMP_STORAGE_T** %10, align 8, !dbg !199
  %67 = getelementptr inbounds %struct.TEMP_STORAGE_T, %struct.TEMP_STORAGE_T* %66, i32 0, i32 1, !dbg !199
  store i64 %65, i64* %67, align 8, !dbg !199
  br label %68, !dbg !199

68:                                               ; preds = %64, %35
  br label %69, !dbg !198

69:                                               ; preds = %68
  %70 = load %struct.TEMP_STORAGE_T*, %struct.TEMP_STORAGE_T** %10, align 8, !dbg !201
  %71 = getelementptr inbounds %struct.TEMP_STORAGE_T, %struct.TEMP_STORAGE_T* %70, i32 0, i32 0, !dbg !202
  %72 = load i32*, i32** %71, align 8, !dbg !202
  store i32* %72, i32** %14, align 8, !dbg !203
  %73 = load i64, i64* %11, align 8, !dbg !204
  %74 = load i64, i64* %12, align 8, !dbg !206
  %75 = icmp ult i64 %73, %74, !dbg !207
  br i1 %75, label %76, label %169, !dbg !208

76:                                               ; preds = %69
  %77 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.7, i64 0, i64 0), i32 noundef 35, i8* noundef getelementptr inbounds ([95 x i8], [95 x i8]* @__PRETTY_FUNCTION__.timsort_merge_lo, i64 0, i64 0)), !dbg !209
  %78 = load i32*, i32** %14, align 8, !dbg !211
  %79 = bitcast i32* %78 to i8*, !dbg !212
  %80 = load i32*, i32** %7, align 8, !dbg !213
  %81 = load i64, i64* %13, align 8, !dbg !214
  %82 = getelementptr inbounds i32, i32* %80, i64 %81, !dbg !213
  %83 = bitcast i32* %82 to i8*, !dbg !212
  %84 = load i64, i64* %11, align 8, !dbg !215
  %85 = mul i64 %84, 4, !dbg !216
  %86 = call i8* @memcpy(i8* %79, i8* %83, i64 %85), !dbg !212
  store i64 0, i64* %15, align 8, !dbg !217
  %87 = load i64, i64* %13, align 8, !dbg !218
  %88 = load i64, i64* %11, align 8, !dbg !219
  %89 = add i64 %87, %88, !dbg !220
  store i64 %89, i64* %16, align 8, !dbg !221
  %90 = load i64, i64* %13, align 8, !dbg !222
  store i64 %90, i64* %17, align 8, !dbg !224
  br label %91, !dbg !225

91:                                               ; preds = %165, %76
  %92 = load i64, i64* %17, align 8, !dbg !226
  %93 = load i64, i64* %13, align 8, !dbg !228
  %94 = load i64, i64* %11, align 8, !dbg !229
  %95 = add i64 %93, %94, !dbg !230
  %96 = load i64, i64* %12, align 8, !dbg !231
  %97 = add i64 %95, %96, !dbg !232
  %98 = icmp ult i64 %92, %97, !dbg !233
  br i1 %98, label %99, label %168, !dbg !234

99:                                               ; preds = %91
  %100 = load i64, i64* %15, align 8, !dbg !235
  %101 = load i64, i64* %11, align 8, !dbg !238
  %102 = icmp ult i64 %100, %101, !dbg !239
  br i1 %102, label %103, label %141, !dbg !240

103:                                              ; preds = %99
  %104 = load i64, i64* %16, align 8, !dbg !241
  %105 = load i64, i64* %13, align 8, !dbg !242
  %106 = load i64, i64* %11, align 8, !dbg !243
  %107 = add i64 %105, %106, !dbg !244
  %108 = load i64, i64* %12, align 8, !dbg !245
  %109 = add i64 %107, %108, !dbg !246
  %110 = icmp ult i64 %104, %109, !dbg !247
  br i1 %110, label %111, label %141, !dbg !248

111:                                              ; preds = %103
  %112 = load i32*, i32** %14, align 8, !dbg !249
  %113 = load i64, i64* %15, align 8, !dbg !249
  %114 = getelementptr inbounds i32, i32* %112, i64 %113, !dbg !249
  %115 = load i32, i32* %114, align 4, !dbg !249
  %116 = load i32*, i32** %7, align 8, !dbg !249
  %117 = load i64, i64* %16, align 8, !dbg !249
  %118 = getelementptr inbounds i32, i32* %116, i64 %117, !dbg !249
  %119 = load i32, i32* %118, align 4, !dbg !249
  %120 = sub nsw i32 %115, %119, !dbg !249
  %121 = icmp sle i32 %120, 0, !dbg !252
  br i1 %121, label %122, label %131, !dbg !253

122:                                              ; preds = %111
  %123 = load i32*, i32** %14, align 8, !dbg !254
  %124 = load i64, i64* %15, align 8, !dbg !256
  %125 = add i64 %124, 1, !dbg !256
  store i64 %125, i64* %15, align 8, !dbg !256
  %126 = getelementptr inbounds i32, i32* %123, i64 %124, !dbg !254
  %127 = load i32, i32* %126, align 4, !dbg !254
  %128 = load i32*, i32** %7, align 8, !dbg !257
  %129 = load i64, i64* %17, align 8, !dbg !258
  %130 = getelementptr inbounds i32, i32* %128, i64 %129, !dbg !257
  store i32 %127, i32* %130, align 4, !dbg !259
  br label %140, !dbg !260

131:                                              ; preds = %111
  %132 = load i32*, i32** %7, align 8, !dbg !261
  %133 = load i64, i64* %16, align 8, !dbg !263
  %134 = add i64 %133, 1, !dbg !263
  store i64 %134, i64* %16, align 8, !dbg !263
  %135 = getelementptr inbounds i32, i32* %132, i64 %133, !dbg !261
  %136 = load i32, i32* %135, align 4, !dbg !261
  %137 = load i32*, i32** %7, align 8, !dbg !264
  %138 = load i64, i64* %17, align 8, !dbg !265
  %139 = getelementptr inbounds i32, i32* %137, i64 %138, !dbg !264
  store i32 %136, i32* %139, align 4, !dbg !266
  br label %140

140:                                              ; preds = %131, %122
  br label %164, !dbg !267

141:                                              ; preds = %103, %99
  %142 = load i64, i64* %15, align 8, !dbg !268
  %143 = load i64, i64* %11, align 8, !dbg !270
  %144 = icmp ult i64 %142, %143, !dbg !271
  br i1 %144, label %145, label %154, !dbg !272

145:                                              ; preds = %141
  %146 = load i32*, i32** %14, align 8, !dbg !273
  %147 = load i64, i64* %15, align 8, !dbg !275
  %148 = add i64 %147, 1, !dbg !275
  store i64 %148, i64* %15, align 8, !dbg !275
  %149 = getelementptr inbounds i32, i32* %146, i64 %147, !dbg !273
  %150 = load i32, i32* %149, align 4, !dbg !273
  %151 = load i32*, i32** %7, align 8, !dbg !276
  %152 = load i64, i64* %17, align 8, !dbg !277
  %153 = getelementptr inbounds i32, i32* %151, i64 %152, !dbg !276
  store i32 %150, i32* %153, align 4, !dbg !278
  br label %163, !dbg !279

154:                                              ; preds = %141
  %155 = load i32*, i32** %7, align 8, !dbg !280
  %156 = load i64, i64* %16, align 8, !dbg !282
  %157 = add i64 %156, 1, !dbg !282
  store i64 %157, i64* %16, align 8, !dbg !282
  %158 = getelementptr inbounds i32, i32* %155, i64 %156, !dbg !280
  %159 = load i32, i32* %158, align 4, !dbg !280
  %160 = load i32*, i32** %7, align 8, !dbg !283
  %161 = load i64, i64* %17, align 8, !dbg !284
  %162 = getelementptr inbounds i32, i32* %160, i64 %161, !dbg !283
  store i32 %159, i32* %162, align 4, !dbg !285
  br label %163

163:                                              ; preds = %154, %145
  br label %164

164:                                              ; preds = %163, %140
  br label %165, !dbg !286

165:                                              ; preds = %164
  %166 = load i64, i64* %17, align 8, !dbg !287
  %167 = add i64 %166, 1, !dbg !287
  store i64 %167, i64* %17, align 8, !dbg !287
  br label %91, !dbg !288, !llvm.loop !289

168:                                              ; preds = %91
  br label %169, !dbg !291

169:                                              ; preds = %168, %69
  ret void, !dbg !292
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !293 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !300, metadata !DIExpression()), !dbg !301
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !302, metadata !DIExpression()), !dbg !303
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !304, metadata !DIExpression()), !dbg !305
  call void @llvm.dbg.declare(metadata i8** %7, metadata !306, metadata !DIExpression()), !dbg !309
  %9 = load i8*, i8** %4, align 8, !dbg !310
  store i8* %9, i8** %7, align 8, !dbg !309
  call void @llvm.dbg.declare(metadata i8** %8, metadata !311, metadata !DIExpression()), !dbg !314
  %10 = load i8*, i8** %5, align 8, !dbg !315
  store i8* %10, i8** %8, align 8, !dbg !314
  br label %11, !dbg !316

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !317
  %13 = add i64 %12, -1, !dbg !317
  store i64 %13, i64* %6, align 8, !dbg !317
  %14 = icmp ugt i64 %12, 0, !dbg !318
  br i1 %14, label %15, label %21, !dbg !316

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !319
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !319
  store i8* %17, i8** %8, align 8, !dbg !319
  %18 = load i8, i8* %16, align 1, !dbg !320
  %19 = load i8*, i8** %7, align 8, !dbg !321
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !321
  store i8* %20, i8** %7, align 8, !dbg !321
  store i8 %18, i8* %19, align 1, !dbg !322
  br label %11, !dbg !316, !llvm.loop !323

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !324
  ret i8* %22, !dbg !325
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #7 !dbg !326 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !330, metadata !DIExpression()), !dbg !331
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !332, metadata !DIExpression()), !dbg !333
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !334, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.declare(metadata i8** %7, metadata !336, metadata !DIExpression()), !dbg !337
  %8 = load i8*, i8** %4, align 8, !dbg !338
  store i8* %8, i8** %7, align 8, !dbg !337
  br label %9, !dbg !339

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !340
  %11 = add i64 %10, -1, !dbg !340
  store i64 %11, i64* %6, align 8, !dbg !340
  %12 = icmp ugt i64 %10, 0, !dbg !341
  br i1 %12, label %13, label %18, !dbg !339

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !342
  %15 = trunc i32 %14 to i8, !dbg !342
  %16 = load i8*, i8** %7, align 8, !dbg !343
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !343
  store i8* %17, i8** %7, align 8, !dbg !343
  store i8 %15, i8* %16, align 1, !dbg !344
  br label %9, !dbg !339, !llvm.loop !345

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !346
  ret i8* %19, !dbg !347
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

!llvm.dbg.cu = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13, !13, !13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/263_timsort.h_383_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "72d0446b53711161f69ab99a75c1ce1a")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!4 = distinct !DICompileUnit(language: DW_LANG_C99, file: !5, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!5 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 7, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"Ubuntu clang version 14.0.6"}
!14 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 56, type: !15, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!15 = !DISubroutineType(types: !16)
!16 = !{!17}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !{}
!19 = !DILocalVariable(name: "stack_curr", scope: !14, file: !1, line: 57, type: !20)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !21, line: 46, baseType: !22)
!21 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!22 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!23 = !DILocation(line: 57, column: 12, scope: !14)
!24 = !DILocalVariable(name: "A", scope: !14, file: !1, line: 58, type: !20)
!25 = !DILocation(line: 58, column: 12, scope: !14)
!26 = !DILocalVariable(name: "B", scope: !14, file: !1, line: 58, type: !20)
!27 = !DILocation(line: 58, column: 15, scope: !14)
!28 = !DILocalVariable(name: "dst", scope: !14, file: !1, line: 59, type: !29)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!30 = !DILocation(line: 59, column: 16, scope: !14)
!31 = !DILocalVariable(name: "stack", scope: !14, file: !1, line: 60, type: !32)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIM_SORT_RUN_T", file: !1, line: 12, baseType: !34)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 9, size: 128, elements: !35)
!35 = !{!36, !37}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !34, file: !1, line: 10, baseType: !20, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !34, file: !1, line: 11, baseType: !20, size: 64, offset: 64)
!38 = !DILocation(line: 60, column: 21, scope: !14)
!39 = !DILocalVariable(name: "store", scope: !14, file: !1, line: 61, type: !40)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEMP_STORAGE_T", file: !1, line: 17, baseType: !41)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 14, size: 128, elements: !42)
!42 = !{!43, !44}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !41, file: !1, line: 15, baseType: !29, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !41, file: !1, line: 16, baseType: !20, size: 64, offset: 64)
!45 = !DILocation(line: 61, column: 20, scope: !14)
!46 = !DILocation(line: 63, column: 24, scope: !14)
!47 = !DILocation(line: 63, column: 5, scope: !14)
!48 = !DILocation(line: 64, column: 24, scope: !14)
!49 = !DILocation(line: 64, column: 5, scope: !14)
!50 = !DILocation(line: 65, column: 24, scope: !14)
!51 = !DILocation(line: 65, column: 5, scope: !14)
!52 = !DILocation(line: 67, column: 17, scope: !14)
!53 = !DILocation(line: 67, column: 28, scope: !14)
!54 = !DILocation(line: 67, column: 5, scope: !14)
!55 = !DILocalVariable(name: "array_size", scope: !14, file: !1, line: 68, type: !20)
!56 = !DILocation(line: 68, column: 12, scope: !14)
!57 = !DILocation(line: 69, column: 18, scope: !14)
!58 = !DILocation(line: 69, column: 29, scope: !14)
!59 = !DILocation(line: 69, column: 11, scope: !14)
!60 = !DILocation(line: 69, column: 9, scope: !14)
!61 = !DILocation(line: 70, column: 24, scope: !14)
!62 = !DILocation(line: 70, column: 29, scope: !14)
!63 = !DILocation(line: 70, column: 40, scope: !14)
!64 = !DILocation(line: 70, column: 5, scope: !14)
!65 = !DILocation(line: 72, column: 20, scope: !14)
!66 = !DILocation(line: 72, column: 31, scope: !14)
!67 = !DILocation(line: 72, column: 13, scope: !14)
!68 = !DILocation(line: 72, column: 11, scope: !14)
!69 = !DILocalVariable(name: "i", scope: !70, file: !1, line: 73, type: !20)
!70 = distinct !DILexicalBlock(scope: !14, file: !1, line: 73, column: 5)
!71 = !DILocation(line: 73, column: 17, scope: !70)
!72 = !DILocation(line: 73, column: 10, scope: !70)
!73 = !DILocation(line: 73, column: 24, scope: !74)
!74 = distinct !DILexicalBlock(scope: !70, file: !1, line: 73, column: 5)
!75 = !DILocation(line: 73, column: 28, scope: !74)
!76 = !DILocation(line: 73, column: 26, scope: !74)
!77 = !DILocation(line: 73, column: 5, scope: !70)
!78 = !DILocation(line: 74, column: 29, scope: !79)
!79 = distinct !DILexicalBlock(scope: !74, file: !1, line: 73, column: 45)
!80 = !DILocation(line: 74, column: 35, scope: !79)
!81 = !DILocation(line: 74, column: 38, scope: !79)
!82 = !DILocation(line: 74, column: 28, scope: !79)
!83 = !DILocation(line: 74, column: 9, scope: !79)
!84 = !DILocation(line: 75, column: 29, scope: !79)
!85 = !DILocation(line: 75, column: 35, scope: !79)
!86 = !DILocation(line: 75, column: 38, scope: !79)
!87 = !DILocation(line: 75, column: 28, scope: !79)
!88 = !DILocation(line: 75, column: 9, scope: !79)
!89 = !DILocation(line: 76, column: 21, scope: !79)
!90 = !DILocation(line: 76, column: 27, scope: !79)
!91 = !DILocation(line: 76, column: 30, scope: !79)
!92 = !DILocation(line: 76, column: 38, scope: !79)
!93 = !DILocation(line: 76, column: 36, scope: !79)
!94 = !DILocation(line: 76, column: 9, scope: !79)
!95 = !DILocation(line: 77, column: 21, scope: !79)
!96 = !DILocation(line: 77, column: 27, scope: !79)
!97 = !DILocation(line: 77, column: 30, scope: !79)
!98 = !DILocation(line: 77, column: 38, scope: !79)
!99 = !DILocation(line: 77, column: 44, scope: !79)
!100 = !DILocation(line: 77, column: 47, scope: !79)
!101 = !DILocation(line: 77, column: 36, scope: !79)
!102 = !DILocation(line: 77, column: 57, scope: !79)
!103 = !DILocation(line: 77, column: 54, scope: !79)
!104 = !DILocation(line: 77, column: 9, scope: !79)
!105 = !DILocation(line: 78, column: 5, scope: !79)
!106 = !DILocation(line: 73, column: 41, scope: !74)
!107 = !DILocation(line: 73, column: 5, scope: !74)
!108 = distinct !{!108, !77, !109, !110}
!109 = !DILocation(line: 78, column: 5, scope: !70)
!110 = !{!"llvm.loop.mustprogress"}
!111 = !DILocalVariable(name: "curr_idx", scope: !14, file: !1, line: 80, type: !20)
!112 = !DILocation(line: 80, column: 12, scope: !14)
!113 = !DILocation(line: 80, column: 23, scope: !14)
!114 = !DILocation(line: 80, column: 34, scope: !14)
!115 = !DILocalVariable(name: "curr_start", scope: !14, file: !1, line: 81, type: !20)
!116 = !DILocation(line: 81, column: 12, scope: !14)
!117 = !DILocation(line: 81, column: 25, scope: !14)
!118 = !DILocation(line: 81, column: 31, scope: !14)
!119 = !DILocation(line: 81, column: 41, scope: !14)
!120 = !DILocalVariable(name: "curr_len", scope: !14, file: !1, line: 82, type: !20)
!121 = !DILocation(line: 82, column: 12, scope: !14)
!122 = !DILocation(line: 82, column: 23, scope: !14)
!123 = !DILocation(line: 82, column: 29, scope: !14)
!124 = !DILocation(line: 82, column: 39, scope: !14)
!125 = !DILocalVariable(name: "next_len", scope: !14, file: !1, line: 83, type: !20)
!126 = !DILocation(line: 83, column: 12, scope: !14)
!127 = !DILocation(line: 83, column: 23, scope: !14)
!128 = !DILocation(line: 83, column: 29, scope: !14)
!129 = !DILocation(line: 83, column: 38, scope: !14)
!130 = !DILocation(line: 83, column: 43, scope: !14)
!131 = !DILocation(line: 85, column: 17, scope: !14)
!132 = !DILocation(line: 85, column: 22, scope: !14)
!133 = !DILocation(line: 85, column: 19, scope: !14)
!134 = !DILocation(line: 85, column: 5, scope: !14)
!135 = !DILocation(line: 86, column: 17, scope: !14)
!136 = !DILocation(line: 86, column: 22, scope: !14)
!137 = !DILocation(line: 86, column: 19, scope: !14)
!138 = !DILocation(line: 86, column: 5, scope: !14)
!139 = !DILocation(line: 87, column: 17, scope: !14)
!140 = !DILocation(line: 87, column: 30, scope: !14)
!141 = !DILocation(line: 87, column: 28, scope: !14)
!142 = !DILocation(line: 87, column: 34, scope: !14)
!143 = !DILocation(line: 87, column: 32, scope: !14)
!144 = !DILocation(line: 87, column: 39, scope: !14)
!145 = !DILocation(line: 87, column: 36, scope: !14)
!146 = !DILocation(line: 87, column: 5, scope: !14)
!147 = !DILocation(line: 89, column: 22, scope: !14)
!148 = !DILocation(line: 89, column: 27, scope: !14)
!149 = !DILocation(line: 89, column: 34, scope: !14)
!150 = !DILocation(line: 89, column: 54, scope: !14)
!151 = !DILocation(line: 89, column: 57, scope: !14)
!152 = !DILocation(line: 89, column: 5, scope: !14)
!153 = !DILocation(line: 91, column: 10, scope: !14)
!154 = !DILocation(line: 91, column: 5, scope: !14)
!155 = !DILocation(line: 92, column: 10, scope: !14)
!156 = !DILocation(line: 92, column: 5, scope: !14)
!157 = !DILocation(line: 93, column: 16, scope: !14)
!158 = !DILocation(line: 93, column: 10, scope: !14)
!159 = !DILocation(line: 93, column: 5, scope: !14)
!160 = !DILocation(line: 94, column: 5, scope: !14)
!161 = distinct !DISubprogram(name: "timsort_merge_lo", scope: !1, file: !1, line: 27, type: !162, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !18)
!162 = !DISubroutineType(types: !163)
!163 = !{null, !29, !164, !20, !166, !20, !20}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!167 = !DILocalVariable(name: "dst", arg: 1, scope: !161, file: !1, line: 27, type: !29)
!168 = !DILocation(line: 27, column: 41, scope: !161)
!169 = !DILocalVariable(name: "stack", arg: 2, scope: !161, file: !1, line: 27, type: !164)
!170 = !DILocation(line: 27, column: 68, scope: !161)
!171 = !DILocalVariable(name: "stack_curr", arg: 3, scope: !161, file: !1, line: 27, type: !20)
!172 = !DILocation(line: 27, column: 82, scope: !161)
!173 = !DILocalVariable(name: "store", arg: 4, scope: !161, file: !1, line: 27, type: !166)
!174 = !DILocation(line: 27, column: 110, scope: !161)
!175 = !DILocalVariable(name: "A", arg: 5, scope: !161, file: !1, line: 27, type: !20)
!176 = !DILocation(line: 27, column: 124, scope: !161)
!177 = !DILocalVariable(name: "B", arg: 6, scope: !161, file: !1, line: 27, type: !20)
!178 = !DILocation(line: 27, column: 134, scope: !161)
!179 = !DILocalVariable(name: "curr", scope: !161, file: !1, line: 28, type: !180)
!180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!181 = !DILocation(line: 28, column: 18, scope: !161)
!182 = !DILocation(line: 28, column: 25, scope: !161)
!183 = !DILocation(line: 28, column: 31, scope: !161)
!184 = !DILocation(line: 28, column: 42, scope: !161)
!185 = !DILocation(line: 28, column: 47, scope: !161)
!186 = !DILocalVariable(name: "storage", scope: !161, file: !1, line: 29, type: !29)
!187 = !DILocation(line: 29, column: 16, scope: !161)
!188 = !DILocalVariable(name: "i", scope: !161, file: !1, line: 30, type: !20)
!189 = !DILocation(line: 30, column: 12, scope: !161)
!190 = !DILocalVariable(name: "j", scope: !161, file: !1, line: 30, type: !20)
!191 = !DILocation(line: 30, column: 15, scope: !161)
!192 = !DILocalVariable(name: "k", scope: !161, file: !1, line: 30, type: !20)
!193 = !DILocation(line: 30, column: 18, scope: !161)
!194 = !DILocation(line: 31, column: 5, scope: !161)
!195 = !DILocation(line: 31, column: 5, scope: !196)
!196 = distinct !DILexicalBlock(scope: !197, file: !1, line: 31, column: 5)
!197 = distinct !DILexicalBlock(scope: !161, file: !1, line: 31, column: 5)
!198 = !DILocation(line: 31, column: 5, scope: !197)
!199 = !DILocation(line: 31, column: 5, scope: !200)
!200 = distinct !DILexicalBlock(scope: !196, file: !1, line: 31, column: 5)
!201 = !DILocation(line: 32, column: 15, scope: !161)
!202 = !DILocation(line: 32, column: 22, scope: !161)
!203 = !DILocation(line: 32, column: 13, scope: !161)
!204 = !DILocation(line: 34, column: 9, scope: !205)
!205 = distinct !DILexicalBlock(scope: !161, file: !1, line: 34, column: 9)
!206 = !DILocation(line: 34, column: 13, scope: !205)
!207 = !DILocation(line: 34, column: 11, scope: !205)
!208 = !DILocation(line: 34, column: 9, scope: !161)
!209 = !DILocation(line: 35, column: 9, scope: !210)
!210 = distinct !DILexicalBlock(scope: !205, file: !1, line: 34, column: 16)
!211 = !DILocation(line: 36, column: 16, scope: !210)
!212 = !DILocation(line: 36, column: 9, scope: !210)
!213 = !DILocation(line: 36, column: 26, scope: !210)
!214 = !DILocation(line: 36, column: 30, scope: !210)
!215 = !DILocation(line: 36, column: 37, scope: !210)
!216 = !DILocation(line: 36, column: 39, scope: !210)
!217 = !DILocation(line: 37, column: 11, scope: !210)
!218 = !DILocation(line: 38, column: 13, scope: !210)
!219 = !DILocation(line: 38, column: 20, scope: !210)
!220 = !DILocation(line: 38, column: 18, scope: !210)
!221 = !DILocation(line: 38, column: 11, scope: !210)
!222 = !DILocation(line: 40, column: 18, scope: !223)
!223 = distinct !DILexicalBlock(scope: !210, file: !1, line: 40, column: 9)
!224 = !DILocation(line: 40, column: 16, scope: !223)
!225 = !DILocation(line: 40, column: 14, scope: !223)
!226 = !DILocation(line: 40, column: 24, scope: !227)
!227 = distinct !DILexicalBlock(scope: !223, file: !1, line: 40, column: 9)
!228 = !DILocation(line: 40, column: 28, scope: !227)
!229 = !DILocation(line: 40, column: 35, scope: !227)
!230 = !DILocation(line: 40, column: 33, scope: !227)
!231 = !DILocation(line: 40, column: 39, scope: !227)
!232 = !DILocation(line: 40, column: 37, scope: !227)
!233 = !DILocation(line: 40, column: 26, scope: !227)
!234 = !DILocation(line: 40, column: 9, scope: !223)
!235 = !DILocation(line: 41, column: 18, scope: !236)
!236 = distinct !DILexicalBlock(scope: !237, file: !1, line: 41, column: 17)
!237 = distinct !DILexicalBlock(scope: !227, file: !1, line: 40, column: 47)
!238 = !DILocation(line: 41, column: 22, scope: !236)
!239 = !DILocation(line: 41, column: 20, scope: !236)
!240 = !DILocation(line: 41, column: 25, scope: !236)
!241 = !DILocation(line: 41, column: 29, scope: !236)
!242 = !DILocation(line: 41, column: 33, scope: !236)
!243 = !DILocation(line: 41, column: 40, scope: !236)
!244 = !DILocation(line: 41, column: 38, scope: !236)
!245 = !DILocation(line: 41, column: 44, scope: !236)
!246 = !DILocation(line: 41, column: 42, scope: !236)
!247 = !DILocation(line: 41, column: 31, scope: !236)
!248 = !DILocation(line: 41, column: 17, scope: !237)
!249 = !DILocation(line: 42, column: 21, scope: !250)
!250 = distinct !DILexicalBlock(scope: !251, file: !1, line: 42, column: 21)
!251 = distinct !DILexicalBlock(scope: !236, file: !1, line: 41, column: 48)
!252 = !DILocation(line: 42, column: 50, scope: !250)
!253 = !DILocation(line: 42, column: 21, scope: !251)
!254 = !DILocation(line: 43, column: 30, scope: !255)
!255 = distinct !DILexicalBlock(scope: !250, file: !1, line: 42, column: 56)
!256 = !DILocation(line: 43, column: 39, scope: !255)
!257 = !DILocation(line: 43, column: 21, scope: !255)
!258 = !DILocation(line: 43, column: 25, scope: !255)
!259 = !DILocation(line: 43, column: 28, scope: !255)
!260 = !DILocation(line: 44, column: 17, scope: !255)
!261 = !DILocation(line: 45, column: 30, scope: !262)
!262 = distinct !DILexicalBlock(scope: !250, file: !1, line: 44, column: 24)
!263 = !DILocation(line: 45, column: 35, scope: !262)
!264 = !DILocation(line: 45, column: 21, scope: !262)
!265 = !DILocation(line: 45, column: 25, scope: !262)
!266 = !DILocation(line: 45, column: 28, scope: !262)
!267 = !DILocation(line: 47, column: 13, scope: !251)
!268 = !DILocation(line: 47, column: 24, scope: !269)
!269 = distinct !DILexicalBlock(scope: !236, file: !1, line: 47, column: 24)
!270 = !DILocation(line: 47, column: 28, scope: !269)
!271 = !DILocation(line: 47, column: 26, scope: !269)
!272 = !DILocation(line: 47, column: 24, scope: !236)
!273 = !DILocation(line: 48, column: 26, scope: !274)
!274 = distinct !DILexicalBlock(scope: !269, file: !1, line: 47, column: 31)
!275 = !DILocation(line: 48, column: 35, scope: !274)
!276 = !DILocation(line: 48, column: 17, scope: !274)
!277 = !DILocation(line: 48, column: 21, scope: !274)
!278 = !DILocation(line: 48, column: 24, scope: !274)
!279 = !DILocation(line: 49, column: 13, scope: !274)
!280 = !DILocation(line: 50, column: 26, scope: !281)
!281 = distinct !DILexicalBlock(scope: !269, file: !1, line: 49, column: 20)
!282 = !DILocation(line: 50, column: 31, scope: !281)
!283 = !DILocation(line: 50, column: 17, scope: !281)
!284 = !DILocation(line: 50, column: 21, scope: !281)
!285 = !DILocation(line: 50, column: 24, scope: !281)
!286 = !DILocation(line: 52, column: 9, scope: !237)
!287 = !DILocation(line: 40, column: 43, scope: !227)
!288 = !DILocation(line: 40, column: 9, scope: !227)
!289 = distinct !{!289, !234, !290, !110}
!290 = !DILocation(line: 52, column: 9, scope: !223)
!291 = !DILocation(line: 53, column: 5, scope: !210)
!292 = !DILocation(line: 54, column: 1, scope: !161)
!293 = distinct !DISubprogram(name: "memcpy", scope: !294, file: !294, line: 12, type: !295, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !18)
!294 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!295 = !DISubroutineType(types: !296)
!296 = !{!297, !297, !298, !20}
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!300 = !DILocalVariable(name: "destaddr", arg: 1, scope: !293, file: !294, line: 12, type: !297)
!301 = !DILocation(line: 12, column: 20, scope: !293)
!302 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !293, file: !294, line: 12, type: !298)
!303 = !DILocation(line: 12, column: 42, scope: !293)
!304 = !DILocalVariable(name: "len", arg: 3, scope: !293, file: !294, line: 12, type: !20)
!305 = !DILocation(line: 12, column: 58, scope: !293)
!306 = !DILocalVariable(name: "dest", scope: !293, file: !294, line: 13, type: !307)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!309 = !DILocation(line: 13, column: 9, scope: !293)
!310 = !DILocation(line: 13, column: 16, scope: !293)
!311 = !DILocalVariable(name: "src", scope: !293, file: !294, line: 14, type: !312)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !308)
!314 = !DILocation(line: 14, column: 15, scope: !293)
!315 = !DILocation(line: 14, column: 21, scope: !293)
!316 = !DILocation(line: 16, column: 3, scope: !293)
!317 = !DILocation(line: 16, column: 13, scope: !293)
!318 = !DILocation(line: 16, column: 16, scope: !293)
!319 = !DILocation(line: 17, column: 19, scope: !293)
!320 = !DILocation(line: 17, column: 15, scope: !293)
!321 = !DILocation(line: 17, column: 10, scope: !293)
!322 = !DILocation(line: 17, column: 13, scope: !293)
!323 = distinct !{!323, !316, !319, !110}
!324 = !DILocation(line: 18, column: 10, scope: !293)
!325 = !DILocation(line: 18, column: 3, scope: !293)
!326 = distinct !DISubprogram(name: "memset", scope: !327, file: !327, line: 12, type: !328, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !18)
!327 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!328 = !DISubroutineType(types: !329)
!329 = !{!297, !297, !17, !20}
!330 = !DILocalVariable(name: "dst", arg: 1, scope: !326, file: !327, line: 12, type: !297)
!331 = !DILocation(line: 12, column: 20, scope: !326)
!332 = !DILocalVariable(name: "s", arg: 2, scope: !326, file: !327, line: 12, type: !17)
!333 = !DILocation(line: 12, column: 29, scope: !326)
!334 = !DILocalVariable(name: "count", arg: 3, scope: !326, file: !327, line: 12, type: !20)
!335 = !DILocation(line: 12, column: 39, scope: !326)
!336 = !DILocalVariable(name: "a", scope: !326, file: !327, line: 13, type: !307)
!337 = !DILocation(line: 13, column: 9, scope: !326)
!338 = !DILocation(line: 13, column: 13, scope: !326)
!339 = !DILocation(line: 14, column: 3, scope: !326)
!340 = !DILocation(line: 14, column: 15, scope: !326)
!341 = !DILocation(line: 14, column: 18, scope: !326)
!342 = !DILocation(line: 15, column: 12, scope: !326)
!343 = !DILocation(line: 15, column: 7, scope: !326)
!344 = !DILocation(line: 15, column: 10, scope: !326)
!345 = distinct !{!345, !339, !342, !110}
!346 = !DILocation(line: 16, column: 10, scope: !326)
!347 = !DILocation(line: 16, column: 3, scope: !326)

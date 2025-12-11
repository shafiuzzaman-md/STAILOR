; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/263_timsort.h_383_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/263_timsort.h_383_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.TIM_SORT_STORE = type { i32*, i64 }

@.str = private unnamed_addr constant [40 x i8] c"memcpy length exceeds allocated storage\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [87 x i8] c"(A <= store->size && \22memcpy length exceeds allocated storage\22) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_62911_vul/263_timsort.h_383_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.TIM_SORT_MERGE_LO = private unnamed_addr constant [78 x i8] c"void TIM_SORT_MERGE_LO(TIM_SORT_STORE *, SORT_TYPE *, size_t, size_t, size_t)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"curr\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"B\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TIM_SORT_RESIZE(%struct.TIM_SORT_STORE* noundef %0, i64 noundef %1) #0 !dbg !14 {
  %3 = alloca %struct.TIM_SORT_STORE*, align 8
  %4 = alloca i64, align 8
  store %struct.TIM_SORT_STORE* %0, %struct.TIM_SORT_STORE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.TIM_SORT_STORE** %3, metadata !30, metadata !DIExpression()), !dbg !31
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !32, metadata !DIExpression()), !dbg !33
  %5 = load i64, i64* %4, align 8, !dbg !34
  %6 = load %struct.TIM_SORT_STORE*, %struct.TIM_SORT_STORE** %3, align 8, !dbg !36
  %7 = getelementptr inbounds %struct.TIM_SORT_STORE, %struct.TIM_SORT_STORE* %6, i32 0, i32 1, !dbg !37
  %8 = load i64, i64* %7, align 8, !dbg !37
  %9 = icmp ugt i64 %5, %8, !dbg !38
  br i1 %9, label %10, label %24, !dbg !39

10:                                               ; preds = %2
  %11 = load %struct.TIM_SORT_STORE*, %struct.TIM_SORT_STORE** %3, align 8, !dbg !40
  %12 = getelementptr inbounds %struct.TIM_SORT_STORE, %struct.TIM_SORT_STORE* %11, i32 0, i32 0, !dbg !42
  %13 = load i32*, i32** %12, align 8, !dbg !42
  %14 = bitcast i32* %13 to i8*, !dbg !40
  %15 = load i64, i64* %4, align 8, !dbg !43
  %16 = mul i64 %15, 4, !dbg !44
  %17 = call i8* @realloc(i8* noundef %14, i64 noundef %16) #7, !dbg !45
  %18 = bitcast i8* %17 to i32*, !dbg !45
  %19 = load %struct.TIM_SORT_STORE*, %struct.TIM_SORT_STORE** %3, align 8, !dbg !46
  %20 = getelementptr inbounds %struct.TIM_SORT_STORE, %struct.TIM_SORT_STORE* %19, i32 0, i32 0, !dbg !47
  store i32* %18, i32** %20, align 8, !dbg !48
  %21 = load i64, i64* %4, align 8, !dbg !49
  %22 = load %struct.TIM_SORT_STORE*, %struct.TIM_SORT_STORE** %3, align 8, !dbg !50
  %23 = getelementptr inbounds %struct.TIM_SORT_STORE, %struct.TIM_SORT_STORE* %22, i32 0, i32 1, !dbg !51
  store i64 %21, i64* %23, align 8, !dbg !52
  br label %24, !dbg !53

24:                                               ; preds = %10, %2
  ret void, !dbg !54
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TIM_SORT_MERGE_LO(%struct.TIM_SORT_STORE* noundef %0, i32* noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #0 !dbg !55 {
  %6 = alloca %struct.TIM_SORT_STORE*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  store %struct.TIM_SORT_STORE* %0, %struct.TIM_SORT_STORE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.TIM_SORT_STORE** %6, metadata !58, metadata !DIExpression()), !dbg !59
  store i32* %1, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !60, metadata !DIExpression()), !dbg !61
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !62, metadata !DIExpression()), !dbg !63
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !64, metadata !DIExpression()), !dbg !65
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !66, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.declare(metadata i64* %11, metadata !68, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata i64* %12, metadata !70, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.declare(metadata i64* %13, metadata !72, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.declare(metadata i32** %14, metadata !74, metadata !DIExpression()), !dbg !75
  %15 = load %struct.TIM_SORT_STORE*, %struct.TIM_SORT_STORE** %6, align 8, !dbg !76
  %16 = load i64, i64* %9, align 8, !dbg !77
  %17 = load i64, i64* %10, align 8, !dbg !77
  %18 = icmp ult i64 %16, %17, !dbg !77
  br i1 %18, label %19, label %21, !dbg !77

19:                                               ; preds = %5
  %20 = load i64, i64* %9, align 8, !dbg !77
  br label %23, !dbg !77

21:                                               ; preds = %5
  %22 = load i64, i64* %10, align 8, !dbg !77
  br label %23, !dbg !77

23:                                               ; preds = %21, %19
  %24 = phi i64 [ %20, %19 ], [ %22, %21 ], !dbg !77
  call void @TIM_SORT_RESIZE(%struct.TIM_SORT_STORE* noundef %15, i64 noundef %24), !dbg !78
  %25 = load %struct.TIM_SORT_STORE*, %struct.TIM_SORT_STORE** %6, align 8, !dbg !79
  %26 = getelementptr inbounds %struct.TIM_SORT_STORE, %struct.TIM_SORT_STORE* %25, i32 0, i32 0, !dbg !80
  %27 = load i32*, i32** %26, align 8, !dbg !80
  store i32* %27, i32** %14, align 8, !dbg !81
  %28 = load i64, i64* %9, align 8, !dbg !82
  %29 = load i64, i64* %10, align 8, !dbg !84
  %30 = icmp ult i64 %28, %29, !dbg !85
  br i1 %30, label %31, label %83, !dbg !86

31:                                               ; preds = %23
  %32 = load i32*, i32** %14, align 8, !dbg !87
  %33 = bitcast i32* %32 to i8*, !dbg !89
  %34 = load i32*, i32** %7, align 8, !dbg !90
  %35 = load i64, i64* %8, align 8, !dbg !91
  %36 = getelementptr inbounds i32, i32* %34, i64 %35, !dbg !90
  %37 = bitcast i32* %36 to i8*, !dbg !89
  %38 = load i64, i64* %9, align 8, !dbg !92
  %39 = mul i64 %38, 4, !dbg !93
  %40 = call i8* @memcpy(i8* %33, i8* %37, i64 %39), !dbg !89
  store i64 0, i64* %11, align 8, !dbg !94
  %41 = load i64, i64* %8, align 8, !dbg !95
  %42 = load i64, i64* %9, align 8, !dbg !96
  %43 = add i64 %41, %42, !dbg !97
  store i64 %43, i64* %12, align 8, !dbg !98
  %44 = load i64, i64* %8, align 8, !dbg !99
  store i64 %44, i64* %13, align 8, !dbg !101
  br label %45, !dbg !102

45:                                               ; preds = %79, %31
  %46 = load i64, i64* %13, align 8, !dbg !103
  %47 = load i64, i64* %8, align 8, !dbg !105
  %48 = load i64, i64* %9, align 8, !dbg !106
  %49 = add i64 %47, %48, !dbg !107
  %50 = load i64, i64* %10, align 8, !dbg !108
  %51 = add i64 %49, %50, !dbg !109
  %52 = icmp ult i64 %46, %51, !dbg !110
  br i1 %52, label %53, label %82, !dbg !111

53:                                               ; preds = %45
  %54 = load i64, i64* %11, align 8, !dbg !112
  %55 = load i64, i64* %9, align 8, !dbg !115
  %56 = icmp ult i64 %54, %55, !dbg !116
  br i1 %56, label %57, label %78, !dbg !117

57:                                               ; preds = %53
  %58 = load i64, i64* %12, align 8, !dbg !118
  %59 = load i64, i64* %8, align 8, !dbg !119
  %60 = load i64, i64* %9, align 8, !dbg !120
  %61 = add i64 %59, %60, !dbg !121
  %62 = load i64, i64* %10, align 8, !dbg !122
  %63 = add i64 %61, %62, !dbg !123
  %64 = icmp ult i64 %58, %63, !dbg !124
  br i1 %64, label %65, label %78, !dbg !125

65:                                               ; preds = %57
  %66 = load i64, i64* %9, align 8, !dbg !126
  %67 = load %struct.TIM_SORT_STORE*, %struct.TIM_SORT_STORE** %6, align 8, !dbg !126
  %68 = getelementptr inbounds %struct.TIM_SORT_STORE, %struct.TIM_SORT_STORE* %67, i32 0, i32 1, !dbg !126
  %69 = load i64, i64* %68, align 8, !dbg !126
  %70 = icmp ule i64 %66, %69, !dbg !126
  br i1 %70, label %71, label %74, !dbg !126

71:                                               ; preds = %65
  br i1 true, label %72, label %74, !dbg !126

72:                                               ; preds = %71
  br i1 true, label %73, label %74, !dbg !126

73:                                               ; preds = %72
  br label %76, !dbg !126

74:                                               ; preds = %72, %71, %65
  %75 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.3, i64 0, i64 0), i32 noundef 39, i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @__PRETTY_FUNCTION__.TIM_SORT_MERGE_LO, i64 0, i64 0)), !dbg !126
  br label %76, !dbg !126

76:                                               ; preds = %74, %73
  %77 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.3, i64 0, i64 0), i32 noundef 40, i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @__PRETTY_FUNCTION__.TIM_SORT_MERGE_LO, i64 0, i64 0)), !dbg !128
  br label %78, !dbg !129

78:                                               ; preds = %76, %57, %53
  br label %79, !dbg !130

79:                                               ; preds = %78
  %80 = load i64, i64* %13, align 8, !dbg !131
  %81 = add i64 %80, 1, !dbg !131
  store i64 %81, i64* %13, align 8, !dbg !131
  br label %45, !dbg !132, !llvm.loop !133

82:                                               ; preds = %45
  br label %83, !dbg !136

83:                                               ; preds = %82, %23
  ret void, !dbg !137
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !138 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TIM_SORT_STORE, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.TIM_SORT_STORE* %2, metadata !141, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.declare(metadata i32** %3, metadata !143, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.declare(metadata i64* %4, metadata !145, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.declare(metadata i64* %5, metadata !147, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.declare(metadata i64* %6, metadata !149, metadata !DIExpression()), !dbg !150
  %7 = getelementptr inbounds %struct.TIM_SORT_STORE, %struct.TIM_SORT_STORE* %2, i32 0, i32 0, !dbg !151
  store i32* null, i32** %7, align 8, !dbg !152
  %8 = getelementptr inbounds %struct.TIM_SORT_STORE, %struct.TIM_SORT_STORE* %2, i32 0, i32 1, !dbg !153
  store i64 0, i64* %8, align 8, !dbg !154
  %9 = bitcast i64* %4 to i8*, !dbg !155
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)), !dbg !156
  %10 = bitcast i64* %5 to i8*, !dbg !157
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 8, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)), !dbg !158
  %11 = bitcast i64* %6 to i8*, !dbg !159
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 8, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)), !dbg !160
  %12 = load i64, i64* %5, align 8, !dbg !161
  %13 = icmp ugt i64 %12, 0, !dbg !162
  %14 = zext i1 %13 to i32, !dbg !162
  %15 = sext i32 %14 to i64, !dbg !161
  call void @klee_assume(i64 noundef %15), !dbg !163
  %16 = load i64, i64* %6, align 8, !dbg !164
  %17 = icmp ugt i64 %16, 0, !dbg !165
  %18 = zext i1 %17 to i32, !dbg !165
  %19 = sext i32 %18 to i64, !dbg !164
  call void @klee_assume(i64 noundef %19), !dbg !166
  %20 = load i64, i64* %4, align 8, !dbg !167
  %21 = icmp uge i64 %20, 0, !dbg !168
  %22 = zext i1 %21 to i32, !dbg !168
  %23 = sext i32 %22 to i64, !dbg !167
  call void @klee_assume(i64 noundef %23), !dbg !169
  %24 = load i64, i64* %4, align 8, !dbg !170
  %25 = load i64, i64* %5, align 8, !dbg !171
  %26 = add i64 %24, %25, !dbg !172
  %27 = load i64, i64* %6, align 8, !dbg !173
  %28 = add i64 %26, %27, !dbg !174
  %29 = mul i64 %28, 4, !dbg !175
  %30 = call noalias i8* @malloc(i64 noundef %29) #7, !dbg !176
  %31 = bitcast i8* %30 to i32*, !dbg !176
  store i32* %31, i32** %3, align 8, !dbg !177
  %32 = load i32*, i32** %3, align 8, !dbg !178
  %33 = icmp ne i32* %32, null, !dbg !179
  %34 = zext i1 %33 to i32, !dbg !179
  %35 = sext i32 %34 to i64, !dbg !178
  call void @klee_assume(i64 noundef %35), !dbg !180
  %36 = load i32*, i32** %3, align 8, !dbg !181
  %37 = load i64, i64* %4, align 8, !dbg !182
  %38 = load i64, i64* %5, align 8, !dbg !183
  %39 = load i64, i64* %6, align 8, !dbg !184
  call void @TIM_SORT_MERGE_LO(%struct.TIM_SORT_STORE* noundef %2, i32* noundef %36, i64 noundef %37, i64 noundef %38, i64 noundef %39), !dbg !185
  %40 = getelementptr inbounds %struct.TIM_SORT_STORE, %struct.TIM_SORT_STORE* %2, i32 0, i32 0, !dbg !186
  %41 = load i32*, i32** %40, align 8, !dbg !186
  %42 = bitcast i32* %41 to i8*, !dbg !187
  call void @free(i8* noundef %42) #7, !dbg !188
  %43 = load i32*, i32** %3, align 8, !dbg !189
  %44 = bitcast i32* %43 to i8*, !dbg !189
  call void @free(i8* noundef %44) #7, !dbg !190
  ret i32 0, !dbg !191
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !192 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !198, metadata !DIExpression()), !dbg !199
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !200, metadata !DIExpression()), !dbg !201
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !202, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.declare(metadata i8** %7, metadata !204, metadata !DIExpression()), !dbg !207
  %9 = load i8*, i8** %4, align 8, !dbg !208
  store i8* %9, i8** %7, align 8, !dbg !207
  call void @llvm.dbg.declare(metadata i8** %8, metadata !209, metadata !DIExpression()), !dbg !212
  %10 = load i8*, i8** %5, align 8, !dbg !213
  store i8* %10, i8** %8, align 8, !dbg !212
  br label %11, !dbg !214

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !215
  %13 = add i64 %12, -1, !dbg !215
  store i64 %13, i64* %6, align 8, !dbg !215
  %14 = icmp ugt i64 %12, 0, !dbg !216
  br i1 %14, label %15, label %21, !dbg !214

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !217
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !217
  store i8* %17, i8** %8, align 8, !dbg !217
  %18 = load i8, i8* %16, align 1, !dbg !218
  %19 = load i8*, i8** %7, align 8, !dbg !219
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !219
  store i8* %20, i8** %7, align 8, !dbg !219
  store i8 %18, i8* %19, align 1, !dbg !220
  br label %11, !dbg !214, !llvm.loop !221

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !222
  ret i8* %22, !dbg !223
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13, !13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/263_timsort.h_383_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "dbde111b19b01b5724b9d8d3c9fef3b1")
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
!14 = distinct !DISubprogram(name: "TIM_SORT_RESIZE", scope: !1, file: !1, line: 18, type: !15, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17, !26}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIM_SORT_STORE", file: !1, line: 14, baseType: !19)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 11, size: 128, elements: !20)
!20 = !{!21, !25}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !19, file: !1, line: 12, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "SORT_TYPE", file: !1, line: 9, baseType: !24)
!24 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !19, file: !1, line: 13, baseType: !26, size: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !27, line: 46, baseType: !28)
!27 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!28 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!29 = !{}
!30 = !DILocalVariable(name: "store", arg: 1, scope: !14, file: !1, line: 18, type: !17)
!31 = !DILocation(line: 18, column: 38, scope: !14)
!32 = !DILocalVariable(name: "new_size", arg: 2, scope: !14, file: !1, line: 18, type: !26)
!33 = !DILocation(line: 18, column: 52, scope: !14)
!34 = !DILocation(line: 19, column: 9, scope: !35)
!35 = distinct !DILexicalBlock(scope: !14, file: !1, line: 19, column: 9)
!36 = !DILocation(line: 19, column: 20, scope: !35)
!37 = !DILocation(line: 19, column: 27, scope: !35)
!38 = !DILocation(line: 19, column: 18, scope: !35)
!39 = !DILocation(line: 19, column: 9, scope: !14)
!40 = !DILocation(line: 20, column: 34, scope: !41)
!41 = distinct !DILexicalBlock(scope: !35, file: !1, line: 19, column: 33)
!42 = !DILocation(line: 20, column: 41, scope: !41)
!43 = !DILocation(line: 20, column: 50, scope: !41)
!44 = !DILocation(line: 20, column: 59, scope: !41)
!45 = !DILocation(line: 20, column: 26, scope: !41)
!46 = !DILocation(line: 20, column: 9, scope: !41)
!47 = !DILocation(line: 20, column: 16, scope: !41)
!48 = !DILocation(line: 20, column: 24, scope: !41)
!49 = !DILocation(line: 21, column: 23, scope: !41)
!50 = !DILocation(line: 21, column: 9, scope: !41)
!51 = !DILocation(line: 21, column: 16, scope: !41)
!52 = !DILocation(line: 21, column: 21, scope: !41)
!53 = !DILocation(line: 22, column: 5, scope: !41)
!54 = !DILocation(line: 23, column: 1, scope: !14)
!55 = distinct !DISubprogram(name: "TIM_SORT_MERGE_LO", scope: !1, file: !1, line: 25, type: !56, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!56 = !DISubroutineType(types: !57)
!57 = !{null, !17, !22, !26, !26, !26}
!58 = !DILocalVariable(name: "store", arg: 1, scope: !55, file: !1, line: 25, type: !17)
!59 = !DILocation(line: 25, column: 40, scope: !55)
!60 = !DILocalVariable(name: "dst", arg: 2, scope: !55, file: !1, line: 25, type: !22)
!61 = !DILocation(line: 25, column: 58, scope: !55)
!62 = !DILocalVariable(name: "curr", arg: 3, scope: !55, file: !1, line: 25, type: !26)
!63 = !DILocation(line: 25, column: 70, scope: !55)
!64 = !DILocalVariable(name: "A", arg: 4, scope: !55, file: !1, line: 25, type: !26)
!65 = !DILocation(line: 25, column: 83, scope: !55)
!66 = !DILocalVariable(name: "B", arg: 5, scope: !55, file: !1, line: 25, type: !26)
!67 = !DILocation(line: 25, column: 93, scope: !55)
!68 = !DILocalVariable(name: "i", scope: !55, file: !1, line: 26, type: !26)
!69 = !DILocation(line: 26, column: 12, scope: !55)
!70 = !DILocalVariable(name: "j", scope: !55, file: !1, line: 26, type: !26)
!71 = !DILocation(line: 26, column: 15, scope: !55)
!72 = !DILocalVariable(name: "k", scope: !55, file: !1, line: 26, type: !26)
!73 = !DILocation(line: 26, column: 18, scope: !55)
!74 = !DILocalVariable(name: "storage", scope: !55, file: !1, line: 27, type: !22)
!75 = !DILocation(line: 27, column: 16, scope: !55)
!76 = !DILocation(line: 29, column: 21, scope: !55)
!77 = !DILocation(line: 29, column: 28, scope: !55)
!78 = !DILocation(line: 29, column: 5, scope: !55)
!79 = !DILocation(line: 30, column: 15, scope: !55)
!80 = !DILocation(line: 30, column: 22, scope: !55)
!81 = !DILocation(line: 30, column: 13, scope: !55)
!82 = !DILocation(line: 32, column: 9, scope: !83)
!83 = distinct !DILexicalBlock(scope: !55, file: !1, line: 32, column: 9)
!84 = !DILocation(line: 32, column: 13, scope: !83)
!85 = !DILocation(line: 32, column: 11, scope: !83)
!86 = !DILocation(line: 32, column: 9, scope: !55)
!87 = !DILocation(line: 33, column: 16, scope: !88)
!88 = distinct !DILexicalBlock(scope: !83, file: !1, line: 32, column: 16)
!89 = !DILocation(line: 33, column: 9, scope: !88)
!90 = !DILocation(line: 33, column: 26, scope: !88)
!91 = !DILocation(line: 33, column: 30, scope: !88)
!92 = !DILocation(line: 33, column: 37, scope: !88)
!93 = !DILocation(line: 33, column: 39, scope: !88)
!94 = !DILocation(line: 34, column: 11, scope: !88)
!95 = !DILocation(line: 35, column: 13, scope: !88)
!96 = !DILocation(line: 35, column: 20, scope: !88)
!97 = !DILocation(line: 35, column: 18, scope: !88)
!98 = !DILocation(line: 35, column: 11, scope: !88)
!99 = !DILocation(line: 37, column: 18, scope: !100)
!100 = distinct !DILexicalBlock(scope: !88, file: !1, line: 37, column: 9)
!101 = !DILocation(line: 37, column: 16, scope: !100)
!102 = !DILocation(line: 37, column: 14, scope: !100)
!103 = !DILocation(line: 37, column: 24, scope: !104)
!104 = distinct !DILexicalBlock(scope: !100, file: !1, line: 37, column: 9)
!105 = !DILocation(line: 37, column: 28, scope: !104)
!106 = !DILocation(line: 37, column: 35, scope: !104)
!107 = !DILocation(line: 37, column: 33, scope: !104)
!108 = !DILocation(line: 37, column: 39, scope: !104)
!109 = !DILocation(line: 37, column: 37, scope: !104)
!110 = !DILocation(line: 37, column: 26, scope: !104)
!111 = !DILocation(line: 37, column: 9, scope: !100)
!112 = !DILocation(line: 38, column: 18, scope: !113)
!113 = distinct !DILexicalBlock(scope: !114, file: !1, line: 38, column: 17)
!114 = distinct !DILexicalBlock(scope: !104, file: !1, line: 37, column: 47)
!115 = !DILocation(line: 38, column: 22, scope: !113)
!116 = !DILocation(line: 38, column: 20, scope: !113)
!117 = !DILocation(line: 38, column: 25, scope: !113)
!118 = !DILocation(line: 38, column: 29, scope: !113)
!119 = !DILocation(line: 38, column: 33, scope: !113)
!120 = !DILocation(line: 38, column: 40, scope: !113)
!121 = !DILocation(line: 38, column: 38, scope: !113)
!122 = !DILocation(line: 38, column: 44, scope: !113)
!123 = !DILocation(line: 38, column: 42, scope: !113)
!124 = !DILocation(line: 38, column: 31, scope: !113)
!125 = !DILocation(line: 38, column: 17, scope: !114)
!126 = !DILocation(line: 39, column: 17, scope: !127)
!127 = distinct !DILexicalBlock(scope: !113, file: !1, line: 38, column: 48)
!128 = !DILocation(line: 40, column: 17, scope: !127)
!129 = !DILocation(line: 41, column: 13, scope: !127)
!130 = !DILocation(line: 42, column: 9, scope: !114)
!131 = !DILocation(line: 37, column: 43, scope: !104)
!132 = !DILocation(line: 37, column: 9, scope: !104)
!133 = distinct !{!133, !111, !134, !135}
!134 = !DILocation(line: 42, column: 9, scope: !100)
!135 = !{!"llvm.loop.mustprogress"}
!136 = !DILocation(line: 43, column: 5, scope: !88)
!137 = !DILocation(line: 44, column: 1, scope: !55)
!138 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 46, type: !139, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!139 = !DISubroutineType(types: !140)
!140 = !{!24}
!141 = !DILocalVariable(name: "store", scope: !138, file: !1, line: 47, type: !18)
!142 = !DILocation(line: 47, column: 20, scope: !138)
!143 = !DILocalVariable(name: "dst", scope: !138, file: !1, line: 48, type: !22)
!144 = !DILocation(line: 48, column: 16, scope: !138)
!145 = !DILocalVariable(name: "curr", scope: !138, file: !1, line: 49, type: !26)
!146 = !DILocation(line: 49, column: 12, scope: !138)
!147 = !DILocalVariable(name: "A", scope: !138, file: !1, line: 49, type: !26)
!148 = !DILocation(line: 49, column: 18, scope: !138)
!149 = !DILocalVariable(name: "B", scope: !138, file: !1, line: 49, type: !26)
!150 = !DILocation(line: 49, column: 21, scope: !138)
!151 = !DILocation(line: 51, column: 11, scope: !138)
!152 = !DILocation(line: 51, column: 19, scope: !138)
!153 = !DILocation(line: 52, column: 11, scope: !138)
!154 = !DILocation(line: 52, column: 16, scope: !138)
!155 = !DILocation(line: 54, column: 24, scope: !138)
!156 = !DILocation(line: 54, column: 5, scope: !138)
!157 = !DILocation(line: 55, column: 24, scope: !138)
!158 = !DILocation(line: 55, column: 5, scope: !138)
!159 = !DILocation(line: 56, column: 24, scope: !138)
!160 = !DILocation(line: 56, column: 5, scope: !138)
!161 = !DILocation(line: 58, column: 17, scope: !138)
!162 = !DILocation(line: 58, column: 19, scope: !138)
!163 = !DILocation(line: 58, column: 5, scope: !138)
!164 = !DILocation(line: 59, column: 17, scope: !138)
!165 = !DILocation(line: 59, column: 19, scope: !138)
!166 = !DILocation(line: 59, column: 5, scope: !138)
!167 = !DILocation(line: 60, column: 17, scope: !138)
!168 = !DILocation(line: 60, column: 22, scope: !138)
!169 = !DILocation(line: 60, column: 5, scope: !138)
!170 = !DILocation(line: 62, column: 19, scope: !138)
!171 = !DILocation(line: 62, column: 26, scope: !138)
!172 = !DILocation(line: 62, column: 24, scope: !138)
!173 = !DILocation(line: 62, column: 30, scope: !138)
!174 = !DILocation(line: 62, column: 28, scope: !138)
!175 = !DILocation(line: 62, column: 33, scope: !138)
!176 = !DILocation(line: 62, column: 11, scope: !138)
!177 = !DILocation(line: 62, column: 9, scope: !138)
!178 = !DILocation(line: 63, column: 17, scope: !138)
!179 = !DILocation(line: 63, column: 21, scope: !138)
!180 = !DILocation(line: 63, column: 5, scope: !138)
!181 = !DILocation(line: 65, column: 31, scope: !138)
!182 = !DILocation(line: 65, column: 36, scope: !138)
!183 = !DILocation(line: 65, column: 42, scope: !138)
!184 = !DILocation(line: 65, column: 45, scope: !138)
!185 = !DILocation(line: 65, column: 5, scope: !138)
!186 = !DILocation(line: 67, column: 16, scope: !138)
!187 = !DILocation(line: 67, column: 10, scope: !138)
!188 = !DILocation(line: 67, column: 5, scope: !138)
!189 = !DILocation(line: 68, column: 10, scope: !138)
!190 = !DILocation(line: 68, column: 5, scope: !138)
!191 = !DILocation(line: 70, column: 5, scope: !138)
!192 = distinct !DISubprogram(name: "memcpy", scope: !193, file: !193, line: 12, type: !194, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !29)
!193 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!194 = !DISubroutineType(types: !195)
!195 = !{!3, !3, !196, !26}
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!198 = !DILocalVariable(name: "destaddr", arg: 1, scope: !192, file: !193, line: 12, type: !3)
!199 = !DILocation(line: 12, column: 20, scope: !192)
!200 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !192, file: !193, line: 12, type: !196)
!201 = !DILocation(line: 12, column: 42, scope: !192)
!202 = !DILocalVariable(name: "len", arg: 3, scope: !192, file: !193, line: 12, type: !26)
!203 = !DILocation(line: 12, column: 58, scope: !192)
!204 = !DILocalVariable(name: "dest", scope: !192, file: !193, line: 13, type: !205)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!207 = !DILocation(line: 13, column: 9, scope: !192)
!208 = !DILocation(line: 13, column: 16, scope: !192)
!209 = !DILocalVariable(name: "src", scope: !192, file: !193, line: 14, type: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !206)
!212 = !DILocation(line: 14, column: 15, scope: !192)
!213 = !DILocation(line: 14, column: 21, scope: !192)
!214 = !DILocation(line: 16, column: 3, scope: !192)
!215 = !DILocation(line: 16, column: 13, scope: !192)
!216 = !DILocation(line: 16, column: 16, scope: !192)
!217 = !DILocation(line: 17, column: 19, scope: !192)
!218 = !DILocation(line: 17, column: 15, scope: !192)
!219 = !DILocation(line: 17, column: 10, scope: !192)
!220 = !DILocation(line: 17, column: 13, scope: !192)
!221 = distinct !{!221, !214, !217, !135}
!222 = !DILocation(line: 18, column: 10, scope: !192)
!223 = !DILocation(line: 18, column: 3, scope: !192)

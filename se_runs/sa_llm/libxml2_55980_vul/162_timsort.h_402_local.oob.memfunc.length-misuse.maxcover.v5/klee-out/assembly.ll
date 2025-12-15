; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/162_timsort.h_402_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/162_timsort.h_402_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"curr\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"dst\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"storage\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"(curr + A + B <= 1024) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_55980_vul/162_timsort.h_402_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.merge_right = private unnamed_addr constant [58 x i8] c"void merge_right(SORT_TYPE *, int, int, int, SORT_TYPE *)\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !16 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i32* %3, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i32* %4, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata i32** %5, metadata !26, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata i32** %6, metadata !28, metadata !DIExpression()), !dbg !29
  %7 = bitcast i32* %2 to i8*, !dbg !30
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !31
  %8 = bitcast i32* %3 to i8*, !dbg !32
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !33
  %9 = bitcast i32* %4 to i8*, !dbg !34
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)), !dbg !35
  %10 = load i32, i32* %3, align 4, !dbg !36
  %11 = load i32, i32* %4, align 4, !dbg !37
  %12 = icmp sgt i32 %10, %11, !dbg !38
  %13 = zext i1 %12 to i32, !dbg !38
  %14 = sext i32 %13 to i64, !dbg !36
  call void @klee_assume(i64 noundef %14), !dbg !39
  %15 = load i32, i32* %3, align 4, !dbg !40
  %16 = icmp sgt i32 %15, 0, !dbg !41
  %17 = zext i1 %16 to i32, !dbg !41
  %18 = sext i32 %17 to i64, !dbg !40
  call void @klee_assume(i64 noundef %18), !dbg !42
  %19 = load i32, i32* %4, align 4, !dbg !43
  %20 = icmp sgt i32 %19, 0, !dbg !44
  %21 = zext i1 %20 to i32, !dbg !44
  %22 = sext i32 %21 to i64, !dbg !43
  call void @klee_assume(i64 noundef %22), !dbg !45
  %23 = load i32, i32* %2, align 4, !dbg !46
  %24 = icmp sge i32 %23, 0, !dbg !47
  %25 = zext i1 %24 to i32, !dbg !47
  %26 = sext i32 %25 to i64, !dbg !46
  call void @klee_assume(i64 noundef %26), !dbg !48
  %27 = load i32, i32* %2, align 4, !dbg !49
  %28 = icmp sle i32 %27, 1000, !dbg !50
  %29 = zext i1 %28 to i32, !dbg !50
  %30 = sext i32 %29 to i64, !dbg !49
  call void @klee_assume(i64 noundef %30), !dbg !51
  %31 = load i32, i32* %3, align 4, !dbg !52
  %32 = icmp sle i32 %31, 100, !dbg !53
  %33 = zext i1 %32 to i32, !dbg !53
  %34 = sext i32 %33 to i64, !dbg !52
  call void @klee_assume(i64 noundef %34), !dbg !54
  %35 = load i32, i32* %4, align 4, !dbg !55
  %36 = icmp sle i32 %35, 100, !dbg !56
  %37 = zext i1 %36 to i32, !dbg !56
  %38 = sext i32 %37 to i64, !dbg !55
  call void @klee_assume(i64 noundef %38), !dbg !57
  %39 = call noalias i8* @malloc(i64 noundef 4096) #7, !dbg !58
  %40 = bitcast i8* %39 to i32*, !dbg !59
  store i32* %40, i32** %5, align 8, !dbg !60
  %41 = call noalias i8* @malloc(i64 noundef 4096) #7, !dbg !61
  %42 = bitcast i8* %41 to i32*, !dbg !62
  store i32* %42, i32** %6, align 8, !dbg !63
  %43 = load i32*, i32** %5, align 8, !dbg !64
  %44 = bitcast i32* %43 to i8*, !dbg !64
  call void @klee_make_symbolic(i8* noundef %44, i64 noundef 4096, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)), !dbg !65
  %45 = load i32*, i32** %6, align 8, !dbg !66
  %46 = bitcast i32* %45 to i8*, !dbg !66
  call void @klee_make_symbolic(i8* noundef %46, i64 noundef 4096, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)), !dbg !67
  %47 = load i32*, i32** %5, align 8, !dbg !68
  %48 = load i32, i32* %2, align 4, !dbg !69
  %49 = load i32, i32* %3, align 4, !dbg !70
  %50 = load i32, i32* %4, align 4, !dbg !71
  %51 = load i32*, i32** %6, align 8, !dbg !72
  call void @timsort_merge(i32* noundef %47, i32 noundef %48, i32 noundef %49, i32 noundef %50, i32* noundef %51), !dbg !73
  %52 = load i32*, i32** %5, align 8, !dbg !74
  %53 = bitcast i32* %52 to i8*, !dbg !74
  call void @free(i8* noundef %53) #7, !dbg !75
  %54 = load i32*, i32** %6, align 8, !dbg !76
  %55 = bitcast i32* %54 to i8*, !dbg !76
  call void @free(i8* noundef %55) #7, !dbg !77
  ret i32 0, !dbg !78
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timsort_merge(i32* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32* noundef %4) #0 !dbg !79 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !82, metadata !DIExpression()), !dbg !83
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !84, metadata !DIExpression()), !dbg !85
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !86, metadata !DIExpression()), !dbg !87
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !88, metadata !DIExpression()), !dbg !89
  store i32* %4, i32** %10, align 8
  call void @llvm.dbg.declare(metadata i32** %10, metadata !90, metadata !DIExpression()), !dbg !91
  %11 = load i32, i32* %8, align 4, !dbg !92
  %12 = load i32, i32* %9, align 4, !dbg !94
  %13 = icmp sle i32 %11, %12, !dbg !95
  br i1 %13, label %14, label %15, !dbg !96

14:                                               ; preds = %5
  br label %21, !dbg !97

15:                                               ; preds = %5
  %16 = load i32*, i32** %6, align 8, !dbg !99
  %17 = load i32, i32* %7, align 4, !dbg !101
  %18 = load i32, i32* %8, align 4, !dbg !102
  %19 = load i32, i32* %9, align 4, !dbg !103
  %20 = load i32*, i32** %10, align 8, !dbg !104
  call void @merge_right(i32* noundef %16, i32 noundef %17, i32 noundef %18, i32 noundef %19, i32* noundef %20), !dbg !105
  br label %21

21:                                               ; preds = %15, %14
  ret void, !dbg !106
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @merge_right(i32* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32* noundef %4) #0 !dbg !107 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !108, metadata !DIExpression()), !dbg !109
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !110, metadata !DIExpression()), !dbg !111
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !112, metadata !DIExpression()), !dbg !113
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !114, metadata !DIExpression()), !dbg !115
  store i32* %4, i32** %10, align 8
  call void @llvm.dbg.declare(metadata i32** %10, metadata !116, metadata !DIExpression()), !dbg !117
  %14 = load i32*, i32** %10, align 8, !dbg !118
  %15 = bitcast i32* %14 to i8*, !dbg !119
  %16 = load i32*, i32** %6, align 8, !dbg !120
  %17 = load i32, i32* %7, align 4, !dbg !121
  %18 = load i32, i32* %8, align 4, !dbg !122
  %19 = add nsw i32 %17, %18, !dbg !123
  %20 = sext i32 %19 to i64, !dbg !120
  %21 = getelementptr inbounds i32, i32* %16, i64 %20, !dbg !120
  %22 = bitcast i32* %21 to i8*, !dbg !119
  %23 = load i32, i32* %9, align 4, !dbg !124
  %24 = sext i32 %23 to i64, !dbg !124
  %25 = mul i64 %24, 4, !dbg !125
  %26 = call i8* @memcpy(i8* %15, i8* %22, i64 %25), !dbg !119
  %27 = load i32, i32* %7, align 4, !dbg !126
  %28 = load i32, i32* %8, align 4, !dbg !126
  %29 = add nsw i32 %27, %28, !dbg !126
  %30 = load i32, i32* %9, align 4, !dbg !126
  %31 = add nsw i32 %29, %30, !dbg !126
  %32 = icmp sle i32 %31, 1024, !dbg !126
  br i1 %32, label %33, label %35, !dbg !126

33:                                               ; preds = %5
  br i1 true, label %34, label %35, !dbg !126

34:                                               ; preds = %33
  br label %37, !dbg !126

35:                                               ; preds = %33, %5
  %36 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.7, i64 0, i64 0), i32 noundef 18, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.merge_right, i64 0, i64 0)), !dbg !126
  br label %37, !dbg !126

37:                                               ; preds = %35, %34
  %38 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.7, i64 0, i64 0), i32 noundef 20, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.merge_right, i64 0, i64 0)), !dbg !127
  call void @llvm.dbg.declare(metadata i32* %11, metadata !128, metadata !DIExpression()), !dbg !129
  %39 = load i32, i32* %9, align 4, !dbg !130
  store i32 %39, i32* %11, align 4, !dbg !129
  call void @llvm.dbg.declare(metadata i32* %12, metadata !131, metadata !DIExpression()), !dbg !132
  %40 = load i32, i32* %7, align 4, !dbg !133
  %41 = load i32, i32* %8, align 4, !dbg !134
  %42 = add nsw i32 %40, %41, !dbg !135
  store i32 %42, i32* %12, align 4, !dbg !132
  call void @llvm.dbg.declare(metadata i32* %13, metadata !136, metadata !DIExpression()), !dbg !137
  %43 = load i32, i32* %7, align 4, !dbg !138
  %44 = load i32, i32* %8, align 4, !dbg !139
  %45 = add nsw i32 %43, %44, !dbg !140
  %46 = load i32, i32* %9, align 4, !dbg !141
  %47 = add nsw i32 %45, %46, !dbg !142
  store i32 %47, i32* %13, align 4, !dbg !137
  br label %48, !dbg !143

48:                                               ; preds = %134, %37
  %49 = load i32, i32* %13, align 4, !dbg !144
  %50 = load i32, i32* %7, align 4, !dbg !145
  %51 = icmp sgt i32 %49, %50, !dbg !146
  br i1 %51, label %52, label %135, !dbg !143

52:                                               ; preds = %48
  %53 = load i32, i32* %13, align 4, !dbg !147
  %54 = add nsw i32 %53, -1, !dbg !147
  store i32 %54, i32* %13, align 4, !dbg !147
  %55 = load i32, i32* %11, align 4, !dbg !149
  %56 = icmp sgt i32 %55, 0, !dbg !151
  br i1 %56, label %57, label %118, !dbg !152

57:                                               ; preds = %52
  %58 = load i32, i32* %12, align 4, !dbg !153
  %59 = load i32, i32* %7, align 4, !dbg !154
  %60 = icmp sgt i32 %58, %59, !dbg !155
  br i1 %60, label %61, label %118, !dbg !156

61:                                               ; preds = %57
  %62 = load i32*, i32** %6, align 8, !dbg !157
  %63 = load i32, i32* %12, align 4, !dbg !157
  %64 = sub nsw i32 %63, 1, !dbg !157
  %65 = sext i32 %64 to i64, !dbg !157
  %66 = getelementptr inbounds i32, i32* %62, i64 %65, !dbg !157
  %67 = load i32, i32* %66, align 4, !dbg !157
  %68 = load i32*, i32** %10, align 8, !dbg !157
  %69 = load i32, i32* %11, align 4, !dbg !157
  %70 = sub nsw i32 %69, 1, !dbg !157
  %71 = sext i32 %70 to i64, !dbg !157
  %72 = getelementptr inbounds i32, i32* %68, i64 %71, !dbg !157
  %73 = load i32, i32* %72, align 4, !dbg !157
  %74 = icmp sgt i32 %67, %73, !dbg !157
  br i1 %74, label %75, label %76, !dbg !157

75:                                               ; preds = %61
  br label %92, !dbg !157

76:                                               ; preds = %61
  %77 = load i32*, i32** %6, align 8, !dbg !157
  %78 = load i32, i32* %12, align 4, !dbg !157
  %79 = sub nsw i32 %78, 1, !dbg !157
  %80 = sext i32 %79 to i64, !dbg !157
  %81 = getelementptr inbounds i32, i32* %77, i64 %80, !dbg !157
  %82 = load i32, i32* %81, align 4, !dbg !157
  %83 = load i32*, i32** %10, align 8, !dbg !157
  %84 = load i32, i32* %11, align 4, !dbg !157
  %85 = sub nsw i32 %84, 1, !dbg !157
  %86 = sext i32 %85 to i64, !dbg !157
  %87 = getelementptr inbounds i32, i32* %83, i64 %86, !dbg !157
  %88 = load i32, i32* %87, align 4, !dbg !157
  %89 = icmp slt i32 %82, %88, !dbg !157
  %90 = zext i1 %89 to i64, !dbg !157
  %91 = select i1 %89, i32 -1, i32 0, !dbg !157
  br label %92, !dbg !157

92:                                               ; preds = %76, %75
  %93 = phi i32 [ 1, %75 ], [ %91, %76 ], !dbg !157
  %94 = icmp sgt i32 %93, 0, !dbg !160
  br i1 %94, label %95, label %106, !dbg !161

95:                                               ; preds = %92
  %96 = load i32*, i32** %6, align 8, !dbg !162
  %97 = load i32, i32* %12, align 4, !dbg !164
  %98 = add nsw i32 %97, -1, !dbg !164
  store i32 %98, i32* %12, align 4, !dbg !164
  %99 = sext i32 %98 to i64, !dbg !162
  %100 = getelementptr inbounds i32, i32* %96, i64 %99, !dbg !162
  %101 = load i32, i32* %100, align 4, !dbg !162
  %102 = load i32*, i32** %6, align 8, !dbg !165
  %103 = load i32, i32* %13, align 4, !dbg !166
  %104 = sext i32 %103 to i64, !dbg !165
  %105 = getelementptr inbounds i32, i32* %102, i64 %104, !dbg !165
  store i32 %101, i32* %105, align 4, !dbg !167
  br label %117, !dbg !168

106:                                              ; preds = %92
  %107 = load i32*, i32** %10, align 8, !dbg !169
  %108 = load i32, i32* %11, align 4, !dbg !171
  %109 = add nsw i32 %108, -1, !dbg !171
  store i32 %109, i32* %11, align 4, !dbg !171
  %110 = sext i32 %109 to i64, !dbg !169
  %111 = getelementptr inbounds i32, i32* %107, i64 %110, !dbg !169
  %112 = load i32, i32* %111, align 4, !dbg !169
  %113 = load i32*, i32** %6, align 8, !dbg !172
  %114 = load i32, i32* %13, align 4, !dbg !173
  %115 = sext i32 %114 to i64, !dbg !172
  %116 = getelementptr inbounds i32, i32* %113, i64 %115, !dbg !172
  store i32 %112, i32* %116, align 4, !dbg !174
  br label %117

117:                                              ; preds = %106, %95
  br label %134, !dbg !175

118:                                              ; preds = %57, %52
  %119 = load i32, i32* %11, align 4, !dbg !176
  %120 = icmp sgt i32 %119, 0, !dbg !178
  br i1 %120, label %121, label %132, !dbg !179

121:                                              ; preds = %118
  %122 = load i32*, i32** %10, align 8, !dbg !180
  %123 = load i32, i32* %11, align 4, !dbg !182
  %124 = add nsw i32 %123, -1, !dbg !182
  store i32 %124, i32* %11, align 4, !dbg !182
  %125 = sext i32 %124 to i64, !dbg !180
  %126 = getelementptr inbounds i32, i32* %122, i64 %125, !dbg !180
  %127 = load i32, i32* %126, align 4, !dbg !180
  %128 = load i32*, i32** %6, align 8, !dbg !183
  %129 = load i32, i32* %13, align 4, !dbg !184
  %130 = sext i32 %129 to i64, !dbg !183
  %131 = getelementptr inbounds i32, i32* %128, i64 %130, !dbg !183
  store i32 %127, i32* %131, align 4, !dbg !185
  br label %133, !dbg !186

132:                                              ; preds = %118
  br label %135, !dbg !187

133:                                              ; preds = %121
  br label %134

134:                                              ; preds = %133, %117
  br label %48, !dbg !143, !llvm.loop !189

135:                                              ; preds = %132, %48
  ret void, !dbg !192
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !193 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !203, metadata !DIExpression()), !dbg !204
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !205, metadata !DIExpression()), !dbg !206
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !207, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.declare(metadata i8** %7, metadata !209, metadata !DIExpression()), !dbg !212
  %9 = load i8*, i8** %4, align 8, !dbg !213
  store i8* %9, i8** %7, align 8, !dbg !212
  call void @llvm.dbg.declare(metadata i8** %8, metadata !214, metadata !DIExpression()), !dbg !217
  %10 = load i8*, i8** %5, align 8, !dbg !218
  store i8* %10, i8** %8, align 8, !dbg !217
  br label %11, !dbg !219

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !220
  %13 = add i64 %12, -1, !dbg !220
  store i64 %13, i64* %6, align 8, !dbg !220
  %14 = icmp ugt i64 %12, 0, !dbg !221
  br i1 %14, label %15, label %21, !dbg !219

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !222
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !222
  store i8* %17, i8** %8, align 8, !dbg !222
  %18 = load i8, i8* %16, align 1, !dbg !223
  %19 = load i8*, i8** %7, align 8, !dbg !224
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !224
  store i8* %20, i8** %7, align 8, !dbg !224
  store i8 %18, i8* %19, align 1, !dbg !225
  br label %11, !dbg !219, !llvm.loop !226

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !227
  ret i8* %22, !dbg !228
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15, !15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/162_timsort.h_402_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "79ddeb6440f37daa8445e819a66410b1")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "SORT_TYPE", file: !1, line: 10, baseType: !5)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = distinct !DICompileUnit(language: DW_LANG_C99, file: !7, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!7 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!8 = !{i32 7, !"Dwarf Version", i32 5}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{i32 7, !"PIC Level", i32 2}
!12 = !{i32 7, !"PIE Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"Ubuntu clang version 14.0.6"}
!16 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 52, type: !17, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !19)
!17 = !DISubroutineType(types: !18)
!18 = !{!5}
!19 = !{}
!20 = !DILocalVariable(name: "curr", scope: !16, file: !1, line: 54, type: !5)
!21 = !DILocation(line: 54, column: 9, scope: !16)
!22 = !DILocalVariable(name: "A", scope: !16, file: !1, line: 54, type: !5)
!23 = !DILocation(line: 54, column: 15, scope: !16)
!24 = !DILocalVariable(name: "B", scope: !16, file: !1, line: 54, type: !5)
!25 = !DILocation(line: 54, column: 18, scope: !16)
!26 = !DILocalVariable(name: "dst", scope: !16, file: !1, line: 55, type: !3)
!27 = !DILocation(line: 55, column: 16, scope: !16)
!28 = !DILocalVariable(name: "storage", scope: !16, file: !1, line: 56, type: !3)
!29 = !DILocation(line: 56, column: 16, scope: !16)
!30 = !DILocation(line: 59, column: 24, scope: !16)
!31 = !DILocation(line: 59, column: 5, scope: !16)
!32 = !DILocation(line: 60, column: 24, scope: !16)
!33 = !DILocation(line: 60, column: 5, scope: !16)
!34 = !DILocation(line: 61, column: 24, scope: !16)
!35 = !DILocation(line: 61, column: 5, scope: !16)
!36 = !DILocation(line: 64, column: 17, scope: !16)
!37 = !DILocation(line: 64, column: 21, scope: !16)
!38 = !DILocation(line: 64, column: 19, scope: !16)
!39 = !DILocation(line: 64, column: 5, scope: !16)
!40 = !DILocation(line: 65, column: 17, scope: !16)
!41 = !DILocation(line: 65, column: 19, scope: !16)
!42 = !DILocation(line: 65, column: 5, scope: !16)
!43 = !DILocation(line: 66, column: 17, scope: !16)
!44 = !DILocation(line: 66, column: 19, scope: !16)
!45 = !DILocation(line: 66, column: 5, scope: !16)
!46 = !DILocation(line: 67, column: 17, scope: !16)
!47 = !DILocation(line: 67, column: 22, scope: !16)
!48 = !DILocation(line: 67, column: 5, scope: !16)
!49 = !DILocation(line: 70, column: 17, scope: !16)
!50 = !DILocation(line: 70, column: 22, scope: !16)
!51 = !DILocation(line: 70, column: 5, scope: !16)
!52 = !DILocation(line: 71, column: 17, scope: !16)
!53 = !DILocation(line: 71, column: 19, scope: !16)
!54 = !DILocation(line: 71, column: 5, scope: !16)
!55 = !DILocation(line: 72, column: 17, scope: !16)
!56 = !DILocation(line: 72, column: 19, scope: !16)
!57 = !DILocation(line: 72, column: 5, scope: !16)
!58 = !DILocation(line: 75, column: 23, scope: !16)
!59 = !DILocation(line: 75, column: 11, scope: !16)
!60 = !DILocation(line: 75, column: 9, scope: !16)
!61 = !DILocation(line: 76, column: 27, scope: !16)
!62 = !DILocation(line: 76, column: 15, scope: !16)
!63 = !DILocation(line: 76, column: 13, scope: !16)
!64 = !DILocation(line: 79, column: 24, scope: !16)
!65 = !DILocation(line: 79, column: 5, scope: !16)
!66 = !DILocation(line: 80, column: 24, scope: !16)
!67 = !DILocation(line: 80, column: 5, scope: !16)
!68 = !DILocation(line: 83, column: 19, scope: !16)
!69 = !DILocation(line: 83, column: 24, scope: !16)
!70 = !DILocation(line: 83, column: 30, scope: !16)
!71 = !DILocation(line: 83, column: 33, scope: !16)
!72 = !DILocation(line: 83, column: 36, scope: !16)
!73 = !DILocation(line: 83, column: 5, scope: !16)
!74 = !DILocation(line: 86, column: 10, scope: !16)
!75 = !DILocation(line: 86, column: 5, scope: !16)
!76 = !DILocation(line: 87, column: 10, scope: !16)
!77 = !DILocation(line: 87, column: 5, scope: !16)
!78 = !DILocation(line: 89, column: 5, scope: !16)
!79 = distinct !DISubprogram(name: "timsort_merge", scope: !1, file: !1, line: 44, type: !80, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !19)
!80 = !DISubroutineType(types: !81)
!81 = !{null, !3, !5, !5, !5, !3}
!82 = !DILocalVariable(name: "dst", arg: 1, scope: !79, file: !1, line: 44, type: !3)
!83 = !DILocation(line: 44, column: 38, scope: !79)
!84 = !DILocalVariable(name: "curr", arg: 2, scope: !79, file: !1, line: 44, type: !5)
!85 = !DILocation(line: 44, column: 47, scope: !79)
!86 = !DILocalVariable(name: "A", arg: 3, scope: !79, file: !1, line: 44, type: !5)
!87 = !DILocation(line: 44, column: 57, scope: !79)
!88 = !DILocalVariable(name: "B", arg: 4, scope: !79, file: !1, line: 44, type: !5)
!89 = !DILocation(line: 44, column: 64, scope: !79)
!90 = !DILocalVariable(name: "storage", arg: 5, scope: !79, file: !1, line: 44, type: !3)
!91 = !DILocation(line: 44, column: 78, scope: !79)
!92 = !DILocation(line: 45, column: 9, scope: !93)
!93 = distinct !DILexicalBlock(scope: !79, file: !1, line: 45, column: 9)
!94 = !DILocation(line: 45, column: 14, scope: !93)
!95 = !DILocation(line: 45, column: 11, scope: !93)
!96 = !DILocation(line: 45, column: 9, scope: !79)
!97 = !DILocation(line: 47, column: 5, scope: !98)
!98 = distinct !DILexicalBlock(scope: !93, file: !1, line: 45, column: 17)
!99 = !DILocation(line: 48, column: 21, scope: !100)
!100 = distinct !DILexicalBlock(scope: !93, file: !1, line: 47, column: 12)
!101 = !DILocation(line: 48, column: 26, scope: !100)
!102 = !DILocation(line: 48, column: 32, scope: !100)
!103 = !DILocation(line: 48, column: 35, scope: !100)
!104 = !DILocation(line: 48, column: 38, scope: !100)
!105 = !DILocation(line: 48, column: 9, scope: !100)
!106 = !DILocation(line: 50, column: 1, scope: !79)
!107 = distinct !DISubprogram(name: "merge_right", scope: !1, file: !1, line: 14, type: !80, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !19)
!108 = !DILocalVariable(name: "dst", arg: 1, scope: !107, file: !1, line: 14, type: !3)
!109 = !DILocation(line: 14, column: 36, scope: !107)
!110 = !DILocalVariable(name: "curr", arg: 2, scope: !107, file: !1, line: 14, type: !5)
!111 = !DILocation(line: 14, column: 45, scope: !107)
!112 = !DILocalVariable(name: "A", arg: 3, scope: !107, file: !1, line: 14, type: !5)
!113 = !DILocation(line: 14, column: 55, scope: !107)
!114 = !DILocalVariable(name: "B", arg: 4, scope: !107, file: !1, line: 14, type: !5)
!115 = !DILocation(line: 14, column: 62, scope: !107)
!116 = !DILocalVariable(name: "storage", arg: 5, scope: !107, file: !1, line: 14, type: !3)
!117 = !DILocation(line: 14, column: 76, scope: !107)
!118 = !DILocation(line: 16, column: 12, scope: !107)
!119 = !DILocation(line: 16, column: 5, scope: !107)
!120 = !DILocation(line: 16, column: 22, scope: !107)
!121 = !DILocation(line: 16, column: 26, scope: !107)
!122 = !DILocation(line: 16, column: 33, scope: !107)
!123 = !DILocation(line: 16, column: 31, scope: !107)
!124 = !DILocation(line: 16, column: 37, scope: !107)
!125 = !DILocation(line: 16, column: 39, scope: !107)
!126 = !DILocation(line: 18, column: 5, scope: !107)
!127 = !DILocation(line: 20, column: 5, scope: !107)
!128 = !DILocalVariable(name: "i", scope: !107, file: !1, line: 23, type: !5)
!129 = !DILocation(line: 23, column: 9, scope: !107)
!130 = !DILocation(line: 23, column: 13, scope: !107)
!131 = !DILocalVariable(name: "j", scope: !107, file: !1, line: 24, type: !5)
!132 = !DILocation(line: 24, column: 9, scope: !107)
!133 = !DILocation(line: 24, column: 13, scope: !107)
!134 = !DILocation(line: 24, column: 20, scope: !107)
!135 = !DILocation(line: 24, column: 18, scope: !107)
!136 = !DILocalVariable(name: "k", scope: !107, file: !1, line: 25, type: !5)
!137 = !DILocation(line: 25, column: 9, scope: !107)
!138 = !DILocation(line: 25, column: 13, scope: !107)
!139 = !DILocation(line: 25, column: 20, scope: !107)
!140 = !DILocation(line: 25, column: 18, scope: !107)
!141 = !DILocation(line: 25, column: 24, scope: !107)
!142 = !DILocation(line: 25, column: 22, scope: !107)
!143 = !DILocation(line: 27, column: 5, scope: !107)
!144 = !DILocation(line: 27, column: 12, scope: !107)
!145 = !DILocation(line: 27, column: 16, scope: !107)
!146 = !DILocation(line: 27, column: 14, scope: !107)
!147 = !DILocation(line: 28, column: 10, scope: !148)
!148 = distinct !DILexicalBlock(scope: !107, file: !1, line: 27, column: 22)
!149 = !DILocation(line: 29, column: 14, scope: !150)
!150 = distinct !DILexicalBlock(scope: !148, file: !1, line: 29, column: 13)
!151 = !DILocation(line: 29, column: 16, scope: !150)
!152 = !DILocation(line: 29, column: 21, scope: !150)
!153 = !DILocation(line: 29, column: 25, scope: !150)
!154 = !DILocation(line: 29, column: 29, scope: !150)
!155 = !DILocation(line: 29, column: 27, scope: !150)
!156 = !DILocation(line: 29, column: 13, scope: !148)
!157 = !DILocation(line: 30, column: 17, scope: !158)
!158 = distinct !DILexicalBlock(scope: !159, file: !1, line: 30, column: 17)
!159 = distinct !DILexicalBlock(scope: !150, file: !1, line: 29, column: 36)
!160 = !DILocation(line: 30, column: 54, scope: !158)
!161 = !DILocation(line: 30, column: 17, scope: !159)
!162 = !DILocation(line: 31, column: 26, scope: !163)
!163 = distinct !DILexicalBlock(scope: !158, file: !1, line: 30, column: 59)
!164 = !DILocation(line: 31, column: 30, scope: !163)
!165 = !DILocation(line: 31, column: 17, scope: !163)
!166 = !DILocation(line: 31, column: 21, scope: !163)
!167 = !DILocation(line: 31, column: 24, scope: !163)
!168 = !DILocation(line: 32, column: 13, scope: !163)
!169 = !DILocation(line: 33, column: 26, scope: !170)
!170 = distinct !DILexicalBlock(scope: !158, file: !1, line: 32, column: 20)
!171 = !DILocation(line: 33, column: 34, scope: !170)
!172 = !DILocation(line: 33, column: 17, scope: !170)
!173 = !DILocation(line: 33, column: 21, scope: !170)
!174 = !DILocation(line: 33, column: 24, scope: !170)
!175 = !DILocation(line: 35, column: 9, scope: !159)
!176 = !DILocation(line: 35, column: 20, scope: !177)
!177 = distinct !DILexicalBlock(scope: !150, file: !1, line: 35, column: 20)
!178 = !DILocation(line: 35, column: 22, scope: !177)
!179 = !DILocation(line: 35, column: 20, scope: !150)
!180 = !DILocation(line: 36, column: 22, scope: !181)
!181 = distinct !DILexicalBlock(scope: !177, file: !1, line: 35, column: 27)
!182 = !DILocation(line: 36, column: 30, scope: !181)
!183 = !DILocation(line: 36, column: 13, scope: !181)
!184 = !DILocation(line: 36, column: 17, scope: !181)
!185 = !DILocation(line: 36, column: 20, scope: !181)
!186 = !DILocation(line: 37, column: 9, scope: !181)
!187 = !DILocation(line: 38, column: 13, scope: !188)
!188 = distinct !DILexicalBlock(scope: !177, file: !1, line: 37, column: 16)
!189 = distinct !{!189, !143, !190, !191}
!190 = !DILocation(line: 40, column: 5, scope: !107)
!191 = !{!"llvm.loop.mustprogress"}
!192 = !DILocation(line: 41, column: 1, scope: !107)
!193 = distinct !DISubprogram(name: "memcpy", scope: !194, file: !194, line: 12, type: !195, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !19)
!194 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!195 = !DISubroutineType(types: !196)
!196 = !{!197, !197, !198, !200}
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !201, line: 46, baseType: !202)
!201 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!202 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!203 = !DILocalVariable(name: "destaddr", arg: 1, scope: !193, file: !194, line: 12, type: !197)
!204 = !DILocation(line: 12, column: 20, scope: !193)
!205 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !193, file: !194, line: 12, type: !198)
!206 = !DILocation(line: 12, column: 42, scope: !193)
!207 = !DILocalVariable(name: "len", arg: 3, scope: !193, file: !194, line: 12, type: !200)
!208 = !DILocation(line: 12, column: 58, scope: !193)
!209 = !DILocalVariable(name: "dest", scope: !193, file: !194, line: 13, type: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!212 = !DILocation(line: 13, column: 9, scope: !193)
!213 = !DILocation(line: 13, column: 16, scope: !193)
!214 = !DILocalVariable(name: "src", scope: !193, file: !194, line: 14, type: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !211)
!217 = !DILocation(line: 14, column: 15, scope: !193)
!218 = !DILocation(line: 14, column: 21, scope: !193)
!219 = !DILocation(line: 16, column: 3, scope: !193)
!220 = !DILocation(line: 16, column: 13, scope: !193)
!221 = !DILocation(line: 16, column: 16, scope: !193)
!222 = !DILocation(line: 17, column: 19, scope: !193)
!223 = !DILocation(line: 17, column: 15, scope: !193)
!224 = !DILocation(line: 17, column: 10, scope: !193)
!225 = !DILocation(line: 17, column: 13, scope: !193)
!226 = distinct !{!226, !219, !222, !191}
!227 = !DILocation(line: 18, column: 10, scope: !193)
!228 = !DILocation(line: 18, column: 3, scope: !193)

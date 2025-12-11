; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/095_testlimits.c_189_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/095_testlimits.c_189_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"(len <= maxlen) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_62911_vul/095_testlimits.c_189_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.process_buffer = private unnamed_addr constant [80 x i8] c"void process_buffer(char *, const char *, int, int *, int *, int *, int *, int)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"rlen\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"maxlen\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"curlen\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"dotlen\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"current\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_buffer(i8* noundef %0, i8* noundef %1, i32 noundef %2, i32* noundef %3, i32* noundef %4, i32* noundef %5, i32* noundef %6, i32 noundef %7) #0 !dbg !16 {
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !24, metadata !DIExpression()), !dbg !25
  store i8* %1, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !26, metadata !DIExpression()), !dbg !27
  store i32 %2, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !28, metadata !DIExpression()), !dbg !29
  store i32* %3, i32** %12, align 8
  call void @llvm.dbg.declare(metadata i32** %12, metadata !30, metadata !DIExpression()), !dbg !31
  store i32* %4, i32** %13, align 8
  call void @llvm.dbg.declare(metadata i32** %13, metadata !32, metadata !DIExpression()), !dbg !33
  store i32* %5, i32** %14, align 8
  call void @llvm.dbg.declare(metadata i32** %14, metadata !34, metadata !DIExpression()), !dbg !35
  store i32* %6, i32** %15, align 8
  call void @llvm.dbg.declare(metadata i32** %15, metadata !36, metadata !DIExpression()), !dbg !37
  store i32 %7, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !38, metadata !DIExpression()), !dbg !39
  %17 = load i32*, i32** %13, align 8, !dbg !40
  %18 = load i32, i32* %17, align 4, !dbg !42
  %19 = icmp eq i32 %18, 1, !dbg !43
  br i1 %19, label %20, label %56, !dbg !44

20:                                               ; preds = %8
  %21 = load i32, i32* %11, align 4, !dbg !45
  %22 = load i32*, i32** %12, align 8, !dbg !48
  %23 = load i32, i32* %22, align 4, !dbg !49
  %24 = icmp sge i32 %21, %23, !dbg !50
  br i1 %24, label %25, label %45, !dbg !51

25:                                               ; preds = %20
  %26 = load i32, i32* %11, align 4, !dbg !52
  %27 = load i32, i32* %16, align 4, !dbg !52
  %28 = icmp sle i32 %26, %27, !dbg !52
  br i1 %28, label %29, label %31, !dbg !52

29:                                               ; preds = %25
  br i1 true, label %30, label %31, !dbg !52

30:                                               ; preds = %29
  br label %33, !dbg !52

31:                                               ; preds = %29, %25
  %32 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.2, i64 0, i64 0), i32 noundef 23, i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @__PRETTY_FUNCTION__.process_buffer, i64 0, i64 0)), !dbg !52
  br label %33, !dbg !52

33:                                               ; preds = %31, %30
  %34 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.2, i64 0, i64 0), i32 noundef 26, i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @__PRETTY_FUNCTION__.process_buffer, i64 0, i64 0)), !dbg !54
  %35 = load i8*, i8** %9, align 8, !dbg !55
  %36 = load i8*, i8** %10, align 8, !dbg !56
  %37 = load i32, i32* %11, align 4, !dbg !57
  %38 = sext i32 %37 to i64, !dbg !57
  %39 = call i8* @memcpy(i8* %35, i8* %36, i64 %38), !dbg !58
  %40 = load i32*, i32** %13, align 8, !dbg !59
  store i32 1, i32* %40, align 4, !dbg !60
  %41 = load i32*, i32** %14, align 8, !dbg !61
  store i32 0, i32* %41, align 4, !dbg !62
  %42 = load i32, i32* %16, align 4, !dbg !63
  %43 = sdiv i32 %42, 10, !dbg !64
  %44 = load i32*, i32** %15, align 8, !dbg !65
  store i32 %43, i32* %44, align 4, !dbg !66
  br label %55, !dbg !67

45:                                               ; preds = %20
  %46 = load i8*, i8** %9, align 8, !dbg !68
  %47 = load i8*, i8** %10, align 8, !dbg !70
  %48 = load i32, i32* %11, align 4, !dbg !71
  %49 = sext i32 %48 to i64, !dbg !71
  %50 = call i8* @memcpy(i8* %46, i8* %47, i64 %49), !dbg !72
  %51 = load i32, i32* %11, align 4, !dbg !73
  %52 = load i32*, i32** %12, align 8, !dbg !74
  %53 = load i32, i32* %52, align 4, !dbg !75
  %54 = sub nsw i32 %53, %51, !dbg !75
  store i32 %54, i32* %52, align 4, !dbg !75
  br label %55

55:                                               ; preds = %45, %33
  br label %73, !dbg !76

56:                                               ; preds = %8
  %57 = load i32*, i32** %13, align 8, !dbg !77
  %58 = load i32, i32* %57, align 4, !dbg !79
  %59 = icmp eq i32 %58, 2, !dbg !80
  br i1 %59, label %60, label %72, !dbg !81

60:                                               ; preds = %56
  %61 = load i32, i32* %11, align 4, !dbg !82
  %62 = load i32*, i32** %12, align 8, !dbg !85
  %63 = load i32, i32* %62, align 4, !dbg !86
  %64 = icmp sge i32 %61, %63, !dbg !87
  br i1 %64, label %65, label %71, !dbg !88

65:                                               ; preds = %60
  %66 = load i8*, i8** %9, align 8, !dbg !89
  %67 = load i8*, i8** %10, align 8, !dbg !91
  %68 = load i32, i32* %11, align 4, !dbg !92
  %69 = sext i32 %68 to i64, !dbg !92
  %70 = call i8* @memcpy(i8* %66, i8* %67, i64 %69), !dbg !93
  br label %71, !dbg !94

71:                                               ; preds = %65, %60
  br label %72, !dbg !95

72:                                               ; preds = %71, %56
  br label %73

73:                                               ; preds = %72, %55
  ret void, !dbg !96
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !97 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !100, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.declare(metadata i32* %3, metadata !102, metadata !DIExpression()), !dbg !103
  call void @llvm.dbg.declare(metadata i32* %4, metadata !104, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata i32* %5, metadata !106, metadata !DIExpression()), !dbg !107
  store i32 1, i32* %5, align 4, !dbg !107
  call void @llvm.dbg.declare(metadata i32* %6, metadata !108, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata i32* %7, metadata !110, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.declare(metadata i8** %8, metadata !112, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata i8** %9, metadata !114, metadata !DIExpression()), !dbg !115
  %10 = bitcast i32* %2 to i8*, !dbg !116
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)), !dbg !117
  %11 = bitcast i32* %3 to i8*, !dbg !118
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)), !dbg !119
  %12 = bitcast i32* %4 to i8*, !dbg !120
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)), !dbg !121
  %13 = bitcast i32* %6 to i8*, !dbg !122
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)), !dbg !123
  %14 = bitcast i32* %7 to i8*, !dbg !124
  call void @klee_make_symbolic(i8* noundef %14, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)), !dbg !125
  %15 = load i32, i32* %2, align 4, !dbg !126
  %16 = icmp sge i32 %15, 0, !dbg !127
  %17 = zext i1 %16 to i32, !dbg !127
  %18 = sext i32 %17 to i64, !dbg !126
  call void @klee_assume(i64 noundef %18), !dbg !128
  %19 = load i32, i32* %3, align 4, !dbg !129
  %20 = icmp sge i32 %19, 0, !dbg !130
  %21 = zext i1 %20 to i32, !dbg !130
  %22 = sext i32 %21 to i64, !dbg !129
  call void @klee_assume(i64 noundef %22), !dbg !131
  %23 = load i32, i32* %4, align 4, !dbg !132
  %24 = icmp sge i32 %23, 0, !dbg !133
  %25 = zext i1 %24 to i32, !dbg !133
  %26 = sext i32 %25 to i64, !dbg !132
  call void @klee_assume(i64 noundef %26), !dbg !134
  %27 = load i32, i32* %6, align 4, !dbg !135
  %28 = icmp sge i32 %27, 0, !dbg !136
  %29 = zext i1 %28 to i32, !dbg !136
  %30 = sext i32 %29 to i64, !dbg !135
  call void @klee_assume(i64 noundef %30), !dbg !137
  %31 = load i32, i32* %7, align 4, !dbg !138
  %32 = icmp sge i32 %31, 0, !dbg !139
  %33 = zext i1 %32 to i32, !dbg !139
  %34 = sext i32 %33 to i64, !dbg !138
  call void @klee_assume(i64 noundef %34), !dbg !140
  %35 = load i32, i32* %2, align 4, !dbg !141
  %36 = load i32, i32* %3, align 4, !dbg !142
  %37 = icmp sge i32 %35, %36, !dbg !143
  %38 = zext i1 %37 to i32, !dbg !143
  %39 = sext i32 %38 to i64, !dbg !141
  call void @klee_assume(i64 noundef %39), !dbg !144
  %40 = load i32, i32* %4, align 4, !dbg !145
  %41 = sext i32 %40 to i64, !dbg !145
  %42 = call noalias i8* @malloc(i64 noundef %41) #7, !dbg !146
  store i8* %42, i8** %8, align 8, !dbg !147
  %43 = load i8*, i8** %8, align 8, !dbg !148
  %44 = icmp eq i8* %43, null, !dbg !150
  br i1 %44, label %45, label %49, !dbg !151

45:                                               ; preds = %0
  %46 = load i32, i32* %4, align 4, !dbg !152
  %47 = icmp sgt i32 %46, 0, !dbg !153
  br i1 %47, label %48, label %49, !dbg !154

48:                                               ; preds = %45
  store i32 0, i32* %1, align 4, !dbg !155
  br label %81, !dbg !155

49:                                               ; preds = %45, %0
  %50 = load i32, i32* %2, align 4, !dbg !157
  %51 = sext i32 %50 to i64, !dbg !157
  %52 = call noalias i8* @malloc(i64 noundef %51) #7, !dbg !158
  store i8* %52, i8** %9, align 8, !dbg !159
  %53 = load i8*, i8** %9, align 8, !dbg !160
  %54 = icmp eq i8* %53, null, !dbg !162
  br i1 %54, label %55, label %60, !dbg !163

55:                                               ; preds = %49
  %56 = load i32, i32* %2, align 4, !dbg !164
  %57 = icmp sgt i32 %56, 0, !dbg !165
  br i1 %57, label %58, label %60, !dbg !166

58:                                               ; preds = %55
  %59 = load i8*, i8** %8, align 8, !dbg !167
  call void @free(i8* noundef %59) #7, !dbg !169
  store i32 0, i32* %1, align 4, !dbg !170
  br label %81, !dbg !170

60:                                               ; preds = %55, %49
  %61 = load i32, i32* %2, align 4, !dbg !171
  %62 = icmp sgt i32 %61, 0, !dbg !173
  br i1 %62, label %63, label %70, !dbg !174

63:                                               ; preds = %60
  %64 = load i8*, i8** %9, align 8, !dbg !175
  %65 = icmp ne i8* %64, null, !dbg !176
  br i1 %65, label %66, label %70, !dbg !177

66:                                               ; preds = %63
  %67 = load i8*, i8** %9, align 8, !dbg !178
  %68 = load i32, i32* %2, align 4, !dbg !180
  %69 = sext i32 %68 to i64, !dbg !180
  call void @klee_make_symbolic(i8* noundef %67, i64 noundef %69, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)), !dbg !181
  br label %70, !dbg !182

70:                                               ; preds = %66, %63, %60
  %71 = load i8*, i8** %8, align 8, !dbg !183
  %72 = load i8*, i8** %9, align 8, !dbg !184
  %73 = load i32, i32* %2, align 4, !dbg !185
  %74 = load i32, i32* %4, align 4, !dbg !186
  call void @process_buffer(i8* noundef %71, i8* noundef %72, i32 noundef %73, i32* noundef %3, i32* noundef %5, i32* noundef %6, i32* noundef %7, i32 noundef %74), !dbg !187
  %75 = load i8*, i8** %8, align 8, !dbg !188
  call void @free(i8* noundef %75) #7, !dbg !189
  %76 = load i8*, i8** %9, align 8, !dbg !190
  %77 = icmp ne i8* %76, null, !dbg !192
  br i1 %77, label %78, label %80, !dbg !193

78:                                               ; preds = %70
  %79 = load i8*, i8** %9, align 8, !dbg !194
  call void @free(i8* noundef %79) #7, !dbg !196
  br label %80, !dbg !197

80:                                               ; preds = %78, %70
  store i32 0, i32* %1, align 4, !dbg !198
  br label %81, !dbg !198

81:                                               ; preds = %80, %58, %48
  %82 = load i32, i32* %1, align 4, !dbg !199
  ret i32 %82, !dbg !199
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !200 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !209, metadata !DIExpression()), !dbg !210
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !211, metadata !DIExpression()), !dbg !212
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !213, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.declare(metadata i8** %7, metadata !215, metadata !DIExpression()), !dbg !216
  %9 = load i8*, i8** %4, align 8, !dbg !217
  store i8* %9, i8** %7, align 8, !dbg !216
  call void @llvm.dbg.declare(metadata i8** %8, metadata !218, metadata !DIExpression()), !dbg !219
  %10 = load i8*, i8** %5, align 8, !dbg !220
  store i8* %10, i8** %8, align 8, !dbg !219
  br label %11, !dbg !221

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !222
  %13 = add i64 %12, -1, !dbg !222
  store i64 %13, i64* %6, align 8, !dbg !222
  %14 = icmp ugt i64 %12, 0, !dbg !223
  br i1 %14, label %15, label %21, !dbg !221

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !224
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !224
  store i8* %17, i8** %8, align 8, !dbg !224
  %18 = load i8, i8* %16, align 1, !dbg !225
  %19 = load i8*, i8** %7, align 8, !dbg !226
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !226
  store i8* %20, i8** %7, align 8, !dbg !226
  store i8 %18, i8* %19, align 1, !dbg !227
  br label %11, !dbg !221, !llvm.loop !228

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !230
  ret i8* %22, !dbg !231
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15, !15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/095_testlimits.c_189_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "ff74f3dc91e5c9253d93de26bed6e338")
!2 = !{!3, !5}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
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
!16 = distinct !DISubprogram(name: "process_buffer", scope: !1, file: !1, line: 13, type: !17, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!17 = !DISubroutineType(types: !18)
!18 = !{null, !3, !19, !21, !22, !22, !22, !22, !21}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!23 = !{}
!24 = !DILocalVariable(name: "buffer", arg: 1, scope: !16, file: !1, line: 13, type: !3)
!25 = !DILocation(line: 13, column: 27, scope: !16)
!26 = !DILocalVariable(name: "current", arg: 2, scope: !16, file: !1, line: 13, type: !19)
!27 = !DILocation(line: 13, column: 47, scope: !16)
!28 = !DILocalVariable(name: "len", arg: 3, scope: !16, file: !1, line: 13, type: !21)
!29 = !DILocation(line: 13, column: 60, scope: !16)
!30 = !DILocalVariable(name: "rlen", arg: 4, scope: !16, file: !1, line: 13, type: !22)
!31 = !DILocation(line: 13, column: 70, scope: !16)
!32 = !DILocalVariable(name: "instate", arg: 5, scope: !16, file: !1, line: 13, type: !22)
!33 = !DILocation(line: 13, column: 81, scope: !16)
!34 = !DILocalVariable(name: "curlen", arg: 6, scope: !16, file: !1, line: 13, type: !22)
!35 = !DILocation(line: 13, column: 95, scope: !16)
!36 = !DILocalVariable(name: "dotlen", arg: 7, scope: !16, file: !1, line: 13, type: !22)
!37 = !DILocation(line: 13, column: 108, scope: !16)
!38 = !DILocalVariable(name: "maxlen", arg: 8, scope: !16, file: !1, line: 13, type: !21)
!39 = !DILocation(line: 13, column: 120, scope: !16)
!40 = !DILocation(line: 15, column: 10, scope: !41)
!41 = distinct !DILexicalBlock(scope: !16, file: !1, line: 15, column: 9)
!42 = !DILocation(line: 15, column: 9, scope: !41)
!43 = !DILocation(line: 15, column: 18, scope: !41)
!44 = !DILocation(line: 15, column: 9, scope: !16)
!45 = !DILocation(line: 16, column: 13, scope: !46)
!46 = distinct !DILexicalBlock(scope: !47, file: !1, line: 16, column: 13)
!47 = distinct !DILexicalBlock(scope: !41, file: !1, line: 15, column: 24)
!48 = !DILocation(line: 16, column: 21, scope: !46)
!49 = !DILocation(line: 16, column: 20, scope: !46)
!50 = !DILocation(line: 16, column: 17, scope: !46)
!51 = !DILocation(line: 16, column: 13, scope: !47)
!52 = !DILocation(line: 23, column: 13, scope: !53)
!53 = distinct !DILexicalBlock(scope: !46, file: !1, line: 16, column: 27)
!54 = !DILocation(line: 26, column: 13, scope: !53)
!55 = !DILocation(line: 29, column: 20, scope: !53)
!56 = !DILocation(line: 29, column: 28, scope: !53)
!57 = !DILocation(line: 29, column: 37, scope: !53)
!58 = !DILocation(line: 29, column: 13, scope: !53)
!59 = !DILocation(line: 30, column: 14, scope: !53)
!60 = !DILocation(line: 30, column: 22, scope: !53)
!61 = !DILocation(line: 31, column: 14, scope: !53)
!62 = !DILocation(line: 31, column: 21, scope: !53)
!63 = !DILocation(line: 32, column: 23, scope: !53)
!64 = !DILocation(line: 32, column: 30, scope: !53)
!65 = !DILocation(line: 32, column: 14, scope: !53)
!66 = !DILocation(line: 32, column: 21, scope: !53)
!67 = !DILocation(line: 33, column: 9, scope: !53)
!68 = !DILocation(line: 34, column: 20, scope: !69)
!69 = distinct !DILexicalBlock(scope: !46, file: !1, line: 33, column: 16)
!70 = !DILocation(line: 34, column: 28, scope: !69)
!71 = !DILocation(line: 34, column: 37, scope: !69)
!72 = !DILocation(line: 34, column: 13, scope: !69)
!73 = !DILocation(line: 35, column: 22, scope: !69)
!74 = !DILocation(line: 35, column: 14, scope: !69)
!75 = !DILocation(line: 35, column: 19, scope: !69)
!76 = !DILocation(line: 38, column: 5, scope: !47)
!77 = !DILocation(line: 38, column: 17, scope: !78)
!78 = distinct !DILexicalBlock(scope: !41, file: !1, line: 38, column: 16)
!79 = !DILocation(line: 38, column: 16, scope: !78)
!80 = !DILocation(line: 38, column: 25, scope: !78)
!81 = !DILocation(line: 38, column: 16, scope: !41)
!82 = !DILocation(line: 39, column: 13, scope: !83)
!83 = distinct !DILexicalBlock(scope: !84, file: !1, line: 39, column: 13)
!84 = distinct !DILexicalBlock(scope: !78, file: !1, line: 38, column: 31)
!85 = !DILocation(line: 39, column: 21, scope: !83)
!86 = !DILocation(line: 39, column: 20, scope: !83)
!87 = !DILocation(line: 39, column: 17, scope: !83)
!88 = !DILocation(line: 39, column: 13, scope: !84)
!89 = !DILocation(line: 41, column: 20, scope: !90)
!90 = distinct !DILexicalBlock(scope: !83, file: !1, line: 39, column: 27)
!91 = !DILocation(line: 41, column: 28, scope: !90)
!92 = !DILocation(line: 41, column: 37, scope: !90)
!93 = !DILocation(line: 41, column: 13, scope: !90)
!94 = !DILocation(line: 42, column: 9, scope: !90)
!95 = !DILocation(line: 43, column: 5, scope: !84)
!96 = !DILocation(line: 44, column: 1, scope: !16)
!97 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 47, type: !98, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!98 = !DISubroutineType(types: !99)
!99 = !{!21}
!100 = !DILocalVariable(name: "len", scope: !97, file: !1, line: 49, type: !21)
!101 = !DILocation(line: 49, column: 9, scope: !97)
!102 = !DILocalVariable(name: "rlen", scope: !97, file: !1, line: 49, type: !21)
!103 = !DILocation(line: 49, column: 14, scope: !97)
!104 = !DILocalVariable(name: "maxlen", scope: !97, file: !1, line: 49, type: !21)
!105 = !DILocation(line: 49, column: 20, scope: !97)
!106 = !DILocalVariable(name: "instate", scope: !97, file: !1, line: 50, type: !21)
!107 = !DILocation(line: 50, column: 9, scope: !97)
!108 = !DILocalVariable(name: "curlen", scope: !97, file: !1, line: 51, type: !21)
!109 = !DILocation(line: 51, column: 9, scope: !97)
!110 = !DILocalVariable(name: "dotlen", scope: !97, file: !1, line: 51, type: !21)
!111 = !DILocation(line: 51, column: 17, scope: !97)
!112 = !DILocalVariable(name: "buffer", scope: !97, file: !1, line: 52, type: !3)
!113 = !DILocation(line: 52, column: 11, scope: !97)
!114 = !DILocalVariable(name: "current", scope: !97, file: !1, line: 53, type: !3)
!115 = !DILocation(line: 53, column: 11, scope: !97)
!116 = !DILocation(line: 56, column: 24, scope: !97)
!117 = !DILocation(line: 56, column: 5, scope: !97)
!118 = !DILocation(line: 57, column: 24, scope: !97)
!119 = !DILocation(line: 57, column: 5, scope: !97)
!120 = !DILocation(line: 58, column: 24, scope: !97)
!121 = !DILocation(line: 58, column: 5, scope: !97)
!122 = !DILocation(line: 59, column: 24, scope: !97)
!123 = !DILocation(line: 59, column: 5, scope: !97)
!124 = !DILocation(line: 60, column: 24, scope: !97)
!125 = !DILocation(line: 60, column: 5, scope: !97)
!126 = !DILocation(line: 63, column: 17, scope: !97)
!127 = !DILocation(line: 63, column: 21, scope: !97)
!128 = !DILocation(line: 63, column: 5, scope: !97)
!129 = !DILocation(line: 64, column: 17, scope: !97)
!130 = !DILocation(line: 64, column: 22, scope: !97)
!131 = !DILocation(line: 64, column: 5, scope: !97)
!132 = !DILocation(line: 65, column: 17, scope: !97)
!133 = !DILocation(line: 65, column: 24, scope: !97)
!134 = !DILocation(line: 65, column: 5, scope: !97)
!135 = !DILocation(line: 66, column: 17, scope: !97)
!136 = !DILocation(line: 66, column: 24, scope: !97)
!137 = !DILocation(line: 66, column: 5, scope: !97)
!138 = !DILocation(line: 67, column: 17, scope: !97)
!139 = !DILocation(line: 67, column: 24, scope: !97)
!140 = !DILocation(line: 67, column: 5, scope: !97)
!141 = !DILocation(line: 70, column: 17, scope: !97)
!142 = !DILocation(line: 70, column: 24, scope: !97)
!143 = !DILocation(line: 70, column: 21, scope: !97)
!144 = !DILocation(line: 70, column: 5, scope: !97)
!145 = !DILocation(line: 73, column: 28, scope: !97)
!146 = !DILocation(line: 73, column: 21, scope: !97)
!147 = !DILocation(line: 73, column: 12, scope: !97)
!148 = !DILocation(line: 74, column: 9, scope: !149)
!149 = distinct !DILexicalBlock(scope: !97, file: !1, line: 74, column: 9)
!150 = !DILocation(line: 74, column: 16, scope: !149)
!151 = !DILocation(line: 74, column: 24, scope: !149)
!152 = !DILocation(line: 74, column: 27, scope: !149)
!153 = !DILocation(line: 74, column: 34, scope: !149)
!154 = !DILocation(line: 74, column: 9, scope: !97)
!155 = !DILocation(line: 75, column: 9, scope: !156)
!156 = distinct !DILexicalBlock(scope: !149, file: !1, line: 74, column: 39)
!157 = !DILocation(line: 79, column: 29, scope: !97)
!158 = !DILocation(line: 79, column: 22, scope: !97)
!159 = !DILocation(line: 79, column: 13, scope: !97)
!160 = !DILocation(line: 80, column: 9, scope: !161)
!161 = distinct !DILexicalBlock(scope: !97, file: !1, line: 80, column: 9)
!162 = !DILocation(line: 80, column: 17, scope: !161)
!163 = !DILocation(line: 80, column: 25, scope: !161)
!164 = !DILocation(line: 80, column: 28, scope: !161)
!165 = !DILocation(line: 80, column: 32, scope: !161)
!166 = !DILocation(line: 80, column: 9, scope: !97)
!167 = !DILocation(line: 81, column: 14, scope: !168)
!168 = distinct !DILexicalBlock(scope: !161, file: !1, line: 80, column: 37)
!169 = !DILocation(line: 81, column: 9, scope: !168)
!170 = !DILocation(line: 82, column: 9, scope: !168)
!171 = !DILocation(line: 86, column: 9, scope: !172)
!172 = distinct !DILexicalBlock(scope: !97, file: !1, line: 86, column: 9)
!173 = !DILocation(line: 86, column: 13, scope: !172)
!174 = !DILocation(line: 86, column: 17, scope: !172)
!175 = !DILocation(line: 86, column: 20, scope: !172)
!176 = !DILocation(line: 86, column: 28, scope: !172)
!177 = !DILocation(line: 86, column: 9, scope: !97)
!178 = !DILocation(line: 87, column: 28, scope: !179)
!179 = distinct !DILexicalBlock(scope: !172, file: !1, line: 86, column: 37)
!180 = !DILocation(line: 87, column: 37, scope: !179)
!181 = !DILocation(line: 87, column: 9, scope: !179)
!182 = !DILocation(line: 88, column: 5, scope: !179)
!183 = !DILocation(line: 91, column: 20, scope: !97)
!184 = !DILocation(line: 91, column: 28, scope: !97)
!185 = !DILocation(line: 91, column: 37, scope: !97)
!186 = !DILocation(line: 91, column: 77, scope: !97)
!187 = !DILocation(line: 91, column: 5, scope: !97)
!188 = !DILocation(line: 94, column: 10, scope: !97)
!189 = !DILocation(line: 94, column: 5, scope: !97)
!190 = !DILocation(line: 95, column: 9, scope: !191)
!191 = distinct !DILexicalBlock(scope: !97, file: !1, line: 95, column: 9)
!192 = !DILocation(line: 95, column: 17, scope: !191)
!193 = !DILocation(line: 95, column: 9, scope: !97)
!194 = !DILocation(line: 96, column: 14, scope: !195)
!195 = distinct !DILexicalBlock(scope: !191, file: !1, line: 95, column: 26)
!196 = !DILocation(line: 96, column: 9, scope: !195)
!197 = !DILocation(line: 97, column: 5, scope: !195)
!198 = !DILocation(line: 99, column: 5, scope: !97)
!199 = !DILocation(line: 100, column: 1, scope: !97)
!200 = distinct !DISubprogram(name: "memcpy", scope: !201, file: !201, line: 12, type: !202, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !23)
!201 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!202 = !DISubroutineType(types: !203)
!203 = !{!5, !5, !204, !206}
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !207, line: 46, baseType: !208)
!207 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!208 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!209 = !DILocalVariable(name: "destaddr", arg: 1, scope: !200, file: !201, line: 12, type: !5)
!210 = !DILocation(line: 12, column: 20, scope: !200)
!211 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !200, file: !201, line: 12, type: !204)
!212 = !DILocation(line: 12, column: 42, scope: !200)
!213 = !DILocalVariable(name: "len", arg: 3, scope: !200, file: !201, line: 12, type: !206)
!214 = !DILocation(line: 12, column: 58, scope: !200)
!215 = !DILocalVariable(name: "dest", scope: !200, file: !201, line: 13, type: !3)
!216 = !DILocation(line: 13, column: 9, scope: !200)
!217 = !DILocation(line: 13, column: 16, scope: !200)
!218 = !DILocalVariable(name: "src", scope: !200, file: !201, line: 14, type: !19)
!219 = !DILocation(line: 14, column: 15, scope: !200)
!220 = !DILocation(line: 14, column: 21, scope: !200)
!221 = !DILocation(line: 16, column: 3, scope: !200)
!222 = !DILocation(line: 16, column: 13, scope: !200)
!223 = !DILocation(line: 16, column: 16, scope: !200)
!224 = !DILocation(line: 17, column: 19, scope: !200)
!225 = !DILocation(line: 17, column: 15, scope: !200)
!226 = !DILocation(line: 17, column: 10, scope: !200)
!227 = !DILocation(line: 17, column: 13, scope: !200)
!228 = distinct !{!228, !221, !224, !229}
!229 = !{!"llvm.loop.mustprogress"}
!230 = !DILocation(line: 18, column: 10, scope: !200)
!231 = !DILocation(line: 18, column: 3, scope: !200)

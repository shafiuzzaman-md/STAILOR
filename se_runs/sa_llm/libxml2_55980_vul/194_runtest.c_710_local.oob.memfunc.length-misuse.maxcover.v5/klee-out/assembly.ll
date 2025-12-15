; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/194_runtest.c_710_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/194_runtest.c_710_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"(idx + res <= size) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_55980_vul/194_runtest.c_710_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.testRead = private unnamed_addr constant [55 x i8] c"int testRead(const char *, const unsigned char *, int)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"dummy_input.bin\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"dummy_data\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @testRead(i8* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !16 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4096 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !26, metadata !DIExpression()), !dbg !27
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !28, metadata !DIExpression()), !dbg !29
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !30, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata i32* %8, metadata !32, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.declare(metadata [4096 x i8]* %9, metadata !34, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata i32* %10, metadata !39, metadata !DIExpression()), !dbg !40
  store i32 0, i32* %10, align 4, !dbg !40
  call void @llvm.dbg.declare(metadata i32* %11, metadata !41, metadata !DIExpression()), !dbg !42
  %12 = load i8*, i8** %5, align 8, !dbg !43
  %13 = icmp eq i8* %12, null, !dbg !45
  br i1 %13, label %17, label %14, !dbg !46

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8, !dbg !47
  %16 = icmp eq i8* %15, null, !dbg !48
  br i1 %16, label %17, label %18, !dbg !49

17:                                               ; preds = %14, %3
  store i32 -1, i32* %4, align 4, !dbg !50
  br label %75, !dbg !50

18:                                               ; preds = %14
  %19 = load i8*, i8** %5, align 8, !dbg !52
  %20 = call i32 (i8*, i32, ...) @open(i8* noundef %19, i32 noundef 0), !dbg !53
  store i32 %20, i32* %8, align 4, !dbg !54
  %21 = load i32, i32* %8, align 4, !dbg !55
  %22 = icmp slt i32 %21, 0, !dbg !57
  br i1 %22, label %23, label %24, !dbg !58

23:                                               ; preds = %18
  store i32 -1, i32* %4, align 4, !dbg !59
  br label %75, !dbg !59

24:                                               ; preds = %18
  br label %25, !dbg !61

25:                                               ; preds = %68, %24
  %26 = load i32, i32* %10, align 4, !dbg !62
  %27 = load i32, i32* %7, align 4, !dbg !63
  %28 = icmp slt i32 %26, %27, !dbg !64
  br i1 %28, label %29, label %72, !dbg !61

29:                                               ; preds = %25
  %30 = load i32, i32* %8, align 4, !dbg !65
  %31 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0, !dbg !67
  %32 = call i64 @read(i32 noundef %30, i8* noundef %31, i64 noundef 4096), !dbg !68
  %33 = trunc i64 %32 to i32, !dbg !68
  store i32 %33, i32* %11, align 4, !dbg !69
  %34 = load i32, i32* %11, align 4, !dbg !70
  %35 = icmp sle i32 %34, 0, !dbg !72
  br i1 %35, label %36, label %37, !dbg !73

36:                                               ; preds = %29
  br label %72, !dbg !74

37:                                               ; preds = %29
  %38 = load i32, i32* %11, align 4, !dbg !75
  %39 = load i32, i32* %10, align 4, !dbg !77
  %40 = add nsw i32 %38, %39, !dbg !78
  %41 = load i32, i32* %7, align 4, !dbg !79
  %42 = icmp sgt i32 %40, %41, !dbg !80
  br i1 %42, label %43, label %44, !dbg !81

43:                                               ; preds = %37
  br label %72, !dbg !82

44:                                               ; preds = %37
  %45 = load i32, i32* %10, align 4, !dbg !83
  %46 = load i32, i32* %11, align 4, !dbg !83
  %47 = add nsw i32 %45, %46, !dbg !83
  %48 = load i32, i32* %7, align 4, !dbg !83
  %49 = icmp sle i32 %47, %48, !dbg !83
  br i1 %49, label %50, label %52, !dbg !83

50:                                               ; preds = %44
  br i1 true, label %51, label %52, !dbg !83

51:                                               ; preds = %50
  br label %54, !dbg !83

52:                                               ; preds = %50, %44
  %53 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.2, i64 0, i64 0), i32 noundef 35, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__.testRead, i64 0, i64 0)), !dbg !83
  br label %54, !dbg !83

54:                                               ; preds = %52, %51
  %55 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.2, i64 0, i64 0), i32 noundef 38, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__.testRead, i64 0, i64 0)), !dbg !84
  %56 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0, !dbg !85
  %57 = load i8*, i8** %6, align 8, !dbg !87
  %58 = load i32, i32* %10, align 4, !dbg !88
  %59 = sext i32 %58 to i64, !dbg !87
  %60 = getelementptr inbounds i8, i8* %57, i64 %59, !dbg !87
  %61 = load i32, i32* %11, align 4, !dbg !89
  %62 = sext i32 %61 to i64, !dbg !89
  %63 = call i32 @memcmp(i8* noundef %56, i8* noundef %60, i64 noundef %62) #6, !dbg !90
  %64 = icmp ne i32 %63, 0, !dbg !91
  br i1 %64, label %65, label %68, !dbg !92

65:                                               ; preds = %54
  %66 = load i32, i32* %8, align 4, !dbg !93
  %67 = call i32 @close(i32 noundef %66), !dbg !95
  store i32 -1, i32* %4, align 4, !dbg !96
  br label %75, !dbg !96

68:                                               ; preds = %54
  %69 = load i32, i32* %11, align 4, !dbg !97
  %70 = load i32, i32* %10, align 4, !dbg !98
  %71 = add nsw i32 %70, %69, !dbg !98
  store i32 %71, i32* %10, align 4, !dbg !98
  br label %25, !dbg !61, !llvm.loop !99

72:                                               ; preds = %43, %36, %25
  %73 = load i32, i32* %8, align 4, !dbg !102
  %74 = call i32 @close(i32 noundef %73), !dbg !103
  store i32 0, i32* %4, align 4, !dbg !104
  br label %75, !dbg !104

75:                                               ; preds = %72, %65, %23, %17
  %76 = load i32, i32* %4, align 4, !dbg !105
  ret i32 %76, !dbg !105
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @open(i8* noundef, i32 noundef, ...) #2

declare i64 @read(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare i32 @close(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !106 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [8192 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !109, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata i32* %3, metadata !114, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.declare(metadata i8** %4, metadata !116, metadata !DIExpression()), !dbg !117
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !118
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)), !dbg !119
  %8 = bitcast i32* %3 to i8*, !dbg !120
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)), !dbg !121
  %9 = load i32, i32* %3, align 4, !dbg !122
  %10 = icmp sge i32 %9, 0, !dbg !123
  br i1 %10, label %11, label %14, !dbg !124

11:                                               ; preds = %0
  %12 = load i32, i32* %3, align 4, !dbg !125
  %13 = icmp sle i32 %12, 65536, !dbg !126
  br label %14

14:                                               ; preds = %11, %0
  %15 = phi i1 [ false, %0 ], [ %13, %11 ], !dbg !127
  %16 = zext i1 %15 to i32, !dbg !124
  %17 = sext i32 %16 to i64, !dbg !122
  call void @klee_assume(i64 noundef %17), !dbg !128
  %18 = load i32, i32* %3, align 4, !dbg !129
  %19 = icmp sgt i32 %18, 0, !dbg !130
  br i1 %19, label %20, label %22, !dbg !129

20:                                               ; preds = %14
  %21 = load i32, i32* %3, align 4, !dbg !131
  br label %23, !dbg !129

22:                                               ; preds = %14
  br label %23, !dbg !129

23:                                               ; preds = %22, %20
  %24 = phi i32 [ %21, %20 ], [ 1, %22 ], !dbg !129
  %25 = sext i32 %24 to i64, !dbg !129
  %26 = call noalias i8* @malloc(i64 noundef %25) #7, !dbg !132
  store i8* %26, i8** %4, align 8, !dbg !133
  %27 = load i8*, i8** %4, align 8, !dbg !134
  %28 = icmp eq i8* %27, null, !dbg !136
  br i1 %28, label %29, label %30, !dbg !137

29:                                               ; preds = %23
  store i32 0, i32* %1, align 4, !dbg !138
  br label %56, !dbg !138

30:                                               ; preds = %23
  %31 = load i8*, i8** %4, align 8, !dbg !140
  %32 = load i32, i32* %3, align 4, !dbg !141
  %33 = icmp sgt i32 %32, 0, !dbg !142
  br i1 %33, label %34, label %36, !dbg !141

34:                                               ; preds = %30
  %35 = load i32, i32* %3, align 4, !dbg !143
  br label %37, !dbg !141

36:                                               ; preds = %30
  br label %37, !dbg !141

37:                                               ; preds = %36, %34
  %38 = phi i32 [ %35, %34 ], [ 1, %36 ], !dbg !141
  %39 = sext i32 %38 to i64, !dbg !141
  call void @klee_make_symbolic(i8* noundef %31, i64 noundef %39, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)), !dbg !144
  call void @llvm.dbg.declare(metadata i32* %5, metadata !145, metadata !DIExpression()), !dbg !146
  %40 = call i32 (i8*, i32, ...) @open(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 noundef 577, i32 noundef 420), !dbg !147
  store i32 %40, i32* %5, align 4, !dbg !146
  %41 = load i32, i32* %5, align 4, !dbg !148
  %42 = icmp sge i32 %41, 0, !dbg !150
  br i1 %42, label %43, label %50, !dbg !151

43:                                               ; preds = %37
  call void @llvm.dbg.declare(metadata [8192 x i8]* %6, metadata !152, metadata !DIExpression()), !dbg !157
  %44 = getelementptr inbounds [8192 x i8], [8192 x i8]* %6, i64 0, i64 0, !dbg !158
  call void @klee_make_symbolic(i8* noundef %44, i64 noundef 8192, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0)), !dbg !159
  %45 = load i32, i32* %5, align 4, !dbg !160
  %46 = getelementptr inbounds [8192 x i8], [8192 x i8]* %6, i64 0, i64 0, !dbg !161
  %47 = call i64 @write(i32 noundef %45, i8* noundef %46, i64 noundef 8192), !dbg !162
  %48 = load i32, i32* %5, align 4, !dbg !163
  %49 = call i32 @close(i32 noundef %48), !dbg !164
  br label %50, !dbg !165

50:                                               ; preds = %43, %37
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !166
  store i8 0, i8* %51, align 1, !dbg !167
  %52 = load i8*, i8** %4, align 8, !dbg !168
  %53 = load i32, i32* %3, align 4, !dbg !169
  %54 = call i32 @testRead(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* noundef %52, i32 noundef %53), !dbg !170
  %55 = load i8*, i8** %4, align 8, !dbg !171
  call void @free(i8* noundef %55) #7, !dbg !172
  store i32 0, i32* %1, align 4, !dbg !173
  br label %56, !dbg !173

56:                                               ; preds = %50, %29
  %57 = load i32, i32* %1, align 4, !dbg !174
  ret i32 %57, !dbg !174
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

declare i64 @write(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @memcmp(i8* noundef %0, i8* noundef %1, i64 noundef %2) #5 !dbg !175 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !184, metadata !DIExpression()), !dbg !185
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !186, metadata !DIExpression()), !dbg !187
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !188, metadata !DIExpression()), !dbg !189
  %10 = load i64, i64* %7, align 8, !dbg !190
  %11 = icmp ne i64 %10, 0, !dbg !192
  br i1 %11, label %12, label %39, !dbg !193

12:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i8** %8, metadata !194, metadata !DIExpression()), !dbg !196
  %13 = load i8*, i8** %5, align 8, !dbg !197
  store i8* %13, i8** %8, align 8, !dbg !196
  call void @llvm.dbg.declare(metadata i8** %9, metadata !198, metadata !DIExpression()), !dbg !199
  %14 = load i8*, i8** %6, align 8, !dbg !200
  store i8* %14, i8** %9, align 8, !dbg !199
  br label %15, !dbg !201

15:                                               ; preds = %35, %12
  %16 = load i8*, i8** %8, align 8, !dbg !202
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !202
  store i8* %17, i8** %8, align 8, !dbg !202
  %18 = load i8, i8* %16, align 1, !dbg !205
  %19 = zext i8 %18 to i32, !dbg !205
  %20 = load i8*, i8** %9, align 8, !dbg !206
  %21 = getelementptr inbounds i8, i8* %20, i32 1, !dbg !206
  store i8* %21, i8** %9, align 8, !dbg !206
  %22 = load i8, i8* %20, align 1, !dbg !207
  %23 = zext i8 %22 to i32, !dbg !207
  %24 = icmp ne i32 %19, %23, !dbg !208
  br i1 %24, label %25, label %35, !dbg !209

25:                                               ; preds = %15
  %26 = load i8*, i8** %8, align 8, !dbg !210
  %27 = getelementptr inbounds i8, i8* %26, i32 -1, !dbg !210
  store i8* %27, i8** %8, align 8, !dbg !210
  %28 = load i8, i8* %27, align 1, !dbg !212
  %29 = zext i8 %28 to i32, !dbg !212
  %30 = load i8*, i8** %9, align 8, !dbg !213
  %31 = getelementptr inbounds i8, i8* %30, i32 -1, !dbg !213
  store i8* %31, i8** %9, align 8, !dbg !213
  %32 = load i8, i8* %31, align 1, !dbg !214
  %33 = zext i8 %32 to i32, !dbg !214
  %34 = sub nsw i32 %29, %33, !dbg !215
  store i32 %34, i32* %4, align 4, !dbg !216
  br label %40, !dbg !216

35:                                               ; preds = %15
  %36 = load i64, i64* %7, align 8, !dbg !217
  %37 = add i64 %36, -1, !dbg !217
  store i64 %37, i64* %7, align 8, !dbg !217
  %38 = icmp ne i64 %37, 0, !dbg !218
  br i1 %38, label %15, label %39, !dbg !219, !llvm.loop !220

39:                                               ; preds = %35, %3
  store i32 0, i32* %4, align 4, !dbg !222
  br label %40, !dbg !222

40:                                               ; preds = %39, %25
  %41 = load i32, i32* %4, align 4, !dbg !223
  ret i32 %41, !dbg !223
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15, !15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/194_runtest.c_710_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "645b930924ffe3bd8e50a2b330a3d710")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = distinct !DICompileUnit(language: DW_LANG_C99, file: !7, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!7 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcmp.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "6a01b8a9953e07eca8ec791434d4f8e8")
!8 = !{i32 7, !"Dwarf Version", i32 5}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{i32 7, !"PIC Level", i32 2}
!12 = !{i32 7, !"PIE Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"Ubuntu clang version 14.0.6"}
!16 = distinct !DISubprogram(name: "testRead", scope: !1, file: !1, line: 12, type: !17, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!17 = !DISubroutineType(types: !18)
!18 = !{!19, !20, !23, !19}
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!22 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!25 = !{}
!26 = !DILocalVariable(name: "filename", arg: 1, scope: !16, file: !1, line: 12, type: !20)
!27 = !DILocation(line: 12, column: 26, scope: !16)
!28 = !DILocalVariable(name: "mem", arg: 2, scope: !16, file: !1, line: 12, type: !23)
!29 = !DILocation(line: 12, column: 57, scope: !16)
!30 = !DILocalVariable(name: "size", arg: 3, scope: !16, file: !1, line: 12, type: !19)
!31 = !DILocation(line: 12, column: 66, scope: !16)
!32 = !DILocalVariable(name: "fd", scope: !16, file: !1, line: 13, type: !19)
!33 = !DILocation(line: 13, column: 9, scope: !16)
!34 = !DILocalVariable(name: "bytes", scope: !16, file: !1, line: 14, type: !35)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 32768, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 4096)
!38 = !DILocation(line: 14, column: 19, scope: !16)
!39 = !DILocalVariable(name: "idx", scope: !16, file: !1, line: 15, type: !19)
!40 = !DILocation(line: 15, column: 9, scope: !16)
!41 = !DILocalVariable(name: "res", scope: !16, file: !1, line: 16, type: !19)
!42 = !DILocation(line: 16, column: 9, scope: !16)
!43 = !DILocation(line: 18, column: 9, scope: !44)
!44 = distinct !DILexicalBlock(scope: !16, file: !1, line: 18, column: 9)
!45 = !DILocation(line: 18, column: 18, scope: !44)
!46 = !DILocation(line: 18, column: 26, scope: !44)
!47 = !DILocation(line: 18, column: 29, scope: !44)
!48 = !DILocation(line: 18, column: 33, scope: !44)
!49 = !DILocation(line: 18, column: 9, scope: !16)
!50 = !DILocation(line: 19, column: 9, scope: !51)
!51 = distinct !DILexicalBlock(scope: !44, file: !1, line: 18, column: 42)
!52 = !DILocation(line: 22, column: 15, scope: !16)
!53 = !DILocation(line: 22, column: 10, scope: !16)
!54 = !DILocation(line: 22, column: 8, scope: !16)
!55 = !DILocation(line: 23, column: 9, scope: !56)
!56 = distinct !DILexicalBlock(scope: !16, file: !1, line: 23, column: 9)
!57 = !DILocation(line: 23, column: 12, scope: !56)
!58 = !DILocation(line: 23, column: 9, scope: !16)
!59 = !DILocation(line: 24, column: 9, scope: !60)
!60 = distinct !DILexicalBlock(scope: !56, file: !1, line: 23, column: 17)
!61 = !DILocation(line: 27, column: 5, scope: !16)
!62 = !DILocation(line: 27, column: 12, scope: !16)
!63 = !DILocation(line: 27, column: 18, scope: !16)
!64 = !DILocation(line: 27, column: 16, scope: !16)
!65 = !DILocation(line: 28, column: 20, scope: !66)
!66 = distinct !DILexicalBlock(scope: !16, file: !1, line: 27, column: 24)
!67 = !DILocation(line: 28, column: 24, scope: !66)
!68 = !DILocation(line: 28, column: 15, scope: !66)
!69 = !DILocation(line: 28, column: 13, scope: !66)
!70 = !DILocation(line: 29, column: 13, scope: !71)
!71 = distinct !DILexicalBlock(scope: !66, file: !1, line: 29, column: 13)
!72 = !DILocation(line: 29, column: 17, scope: !71)
!73 = !DILocation(line: 29, column: 13, scope: !66)
!74 = !DILocation(line: 30, column: 13, scope: !71)
!75 = !DILocation(line: 31, column: 13, scope: !76)
!76 = distinct !DILexicalBlock(scope: !66, file: !1, line: 31, column: 13)
!77 = !DILocation(line: 31, column: 19, scope: !76)
!78 = !DILocation(line: 31, column: 17, scope: !76)
!79 = !DILocation(line: 31, column: 25, scope: !76)
!80 = !DILocation(line: 31, column: 23, scope: !76)
!81 = !DILocation(line: 31, column: 13, scope: !66)
!82 = !DILocation(line: 32, column: 13, scope: !76)
!83 = !DILocation(line: 35, column: 9, scope: !66)
!84 = !DILocation(line: 38, column: 9, scope: !66)
!85 = !DILocation(line: 40, column: 20, scope: !86)
!86 = distinct !DILexicalBlock(scope: !66, file: !1, line: 40, column: 13)
!87 = !DILocation(line: 40, column: 28, scope: !86)
!88 = !DILocation(line: 40, column: 32, scope: !86)
!89 = !DILocation(line: 40, column: 38, scope: !86)
!90 = !DILocation(line: 40, column: 13, scope: !86)
!91 = !DILocation(line: 40, column: 43, scope: !86)
!92 = !DILocation(line: 40, column: 13, scope: !66)
!93 = !DILocation(line: 41, column: 19, scope: !94)
!94 = distinct !DILexicalBlock(scope: !86, file: !1, line: 40, column: 49)
!95 = !DILocation(line: 41, column: 13, scope: !94)
!96 = !DILocation(line: 42, column: 13, scope: !94)
!97 = !DILocation(line: 44, column: 16, scope: !66)
!98 = !DILocation(line: 44, column: 13, scope: !66)
!99 = distinct !{!99, !61, !100, !101}
!100 = !DILocation(line: 45, column: 5, scope: !16)
!101 = !{!"llvm.loop.mustprogress"}
!102 = !DILocation(line: 47, column: 11, scope: !16)
!103 = !DILocation(line: 47, column: 5, scope: !16)
!104 = !DILocation(line: 48, column: 5, scope: !16)
!105 = !DILocation(line: 49, column: 1, scope: !16)
!106 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 51, type: !107, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!107 = !DISubroutineType(types: !108)
!108 = !{!19}
!109 = !DILocalVariable(name: "filename", scope: !106, file: !1, line: 53, type: !110)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 2048, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 256)
!113 = !DILocation(line: 53, column: 10, scope: !106)
!114 = !DILocalVariable(name: "size", scope: !106, file: !1, line: 54, type: !19)
!115 = !DILocation(line: 54, column: 9, scope: !106)
!116 = !DILocalVariable(name: "mem", scope: !106, file: !1, line: 55, type: !4)
!117 = !DILocation(line: 55, column: 20, scope: !106)
!118 = !DILocation(line: 58, column: 24, scope: !106)
!119 = !DILocation(line: 58, column: 5, scope: !106)
!120 = !DILocation(line: 59, column: 24, scope: !106)
!121 = !DILocation(line: 59, column: 5, scope: !106)
!122 = !DILocation(line: 62, column: 17, scope: !106)
!123 = !DILocation(line: 62, column: 22, scope: !106)
!124 = !DILocation(line: 62, column: 27, scope: !106)
!125 = !DILocation(line: 62, column: 30, scope: !106)
!126 = !DILocation(line: 62, column: 35, scope: !106)
!127 = !DILocation(line: 0, scope: !106)
!128 = !DILocation(line: 62, column: 5, scope: !106)
!129 = !DILocation(line: 65, column: 34, scope: !106)
!130 = !DILocation(line: 65, column: 39, scope: !106)
!131 = !DILocation(line: 65, column: 45, scope: !106)
!132 = !DILocation(line: 65, column: 27, scope: !106)
!133 = !DILocation(line: 65, column: 9, scope: !106)
!134 = !DILocation(line: 66, column: 9, scope: !135)
!135 = distinct !DILexicalBlock(scope: !106, file: !1, line: 66, column: 9)
!136 = !DILocation(line: 66, column: 13, scope: !135)
!137 = !DILocation(line: 66, column: 9, scope: !106)
!138 = !DILocation(line: 67, column: 9, scope: !139)
!139 = distinct !DILexicalBlock(scope: !135, file: !1, line: 66, column: 22)
!140 = !DILocation(line: 71, column: 24, scope: !106)
!141 = !DILocation(line: 71, column: 29, scope: !106)
!142 = !DILocation(line: 71, column: 34, scope: !106)
!143 = !DILocation(line: 71, column: 40, scope: !106)
!144 = !DILocation(line: 71, column: 5, scope: !106)
!145 = !DILocalVariable(name: "fd", scope: !106, file: !1, line: 74, type: !19)
!146 = !DILocation(line: 74, column: 9, scope: !106)
!147 = !DILocation(line: 74, column: 14, scope: !106)
!148 = !DILocation(line: 75, column: 9, scope: !149)
!149 = distinct !DILexicalBlock(scope: !106, file: !1, line: 75, column: 9)
!150 = !DILocation(line: 75, column: 12, scope: !149)
!151 = !DILocation(line: 75, column: 9, scope: !106)
!152 = !DILocalVariable(name: "dummy_data", scope: !153, file: !1, line: 77, type: !154)
!153 = distinct !DILexicalBlock(scope: !149, file: !1, line: 75, column: 18)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 65536, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 8192)
!157 = !DILocation(line: 77, column: 23, scope: !153)
!158 = !DILocation(line: 78, column: 28, scope: !153)
!159 = !DILocation(line: 78, column: 9, scope: !153)
!160 = !DILocation(line: 79, column: 15, scope: !153)
!161 = !DILocation(line: 79, column: 19, scope: !153)
!162 = !DILocation(line: 79, column: 9, scope: !153)
!163 = !DILocation(line: 80, column: 15, scope: !153)
!164 = !DILocation(line: 80, column: 9, scope: !153)
!165 = !DILocation(line: 81, column: 5, scope: !153)
!166 = !DILocation(line: 84, column: 5, scope: !106)
!167 = !DILocation(line: 84, column: 34, scope: !106)
!168 = !DILocation(line: 87, column: 33, scope: !106)
!169 = !DILocation(line: 87, column: 38, scope: !106)
!170 = !DILocation(line: 87, column: 5, scope: !106)
!171 = !DILocation(line: 90, column: 10, scope: !106)
!172 = !DILocation(line: 90, column: 5, scope: !106)
!173 = !DILocation(line: 92, column: 5, scope: !106)
!174 = !DILocation(line: 93, column: 1, scope: !106)
!175 = distinct !DISubprogram(name: "memcmp", scope: !176, file: !176, line: 42, type: !177, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !25)
!176 = !DIFile(filename: "runtime/Freestanding/memcmp.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "6a01b8a9953e07eca8ec791434d4f8e8")
!177 = !DISubroutineType(types: !178)
!178 = !{!19, !179, !179, !181}
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !182, line: 46, baseType: !183)
!182 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!183 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!184 = !DILocalVariable(name: "s1", arg: 1, scope: !175, file: !176, line: 42, type: !179)
!185 = !DILocation(line: 42, column: 24, scope: !175)
!186 = !DILocalVariable(name: "s2", arg: 2, scope: !175, file: !176, line: 42, type: !179)
!187 = !DILocation(line: 42, column: 40, scope: !175)
!188 = !DILocalVariable(name: "n", arg: 3, scope: !175, file: !176, line: 42, type: !181)
!189 = !DILocation(line: 42, column: 51, scope: !175)
!190 = !DILocation(line: 43, column: 7, scope: !191)
!191 = distinct !DILexicalBlock(scope: !175, file: !176, line: 43, column: 7)
!192 = !DILocation(line: 43, column: 9, scope: !191)
!193 = !DILocation(line: 43, column: 7, scope: !175)
!194 = !DILocalVariable(name: "p1", scope: !195, file: !176, line: 44, type: !23)
!195 = distinct !DILexicalBlock(scope: !191, file: !176, line: 43, column: 15)
!196 = !DILocation(line: 44, column: 26, scope: !195)
!197 = !DILocation(line: 44, column: 31, scope: !195)
!198 = !DILocalVariable(name: "p2", scope: !195, file: !176, line: 44, type: !23)
!199 = !DILocation(line: 44, column: 36, scope: !195)
!200 = !DILocation(line: 44, column: 41, scope: !195)
!201 = !DILocation(line: 46, column: 5, scope: !195)
!202 = !DILocation(line: 47, column: 14, scope: !203)
!203 = distinct !DILexicalBlock(scope: !204, file: !176, line: 47, column: 11)
!204 = distinct !DILexicalBlock(scope: !195, file: !176, line: 46, column: 8)
!205 = !DILocation(line: 47, column: 11, scope: !203)
!206 = !DILocation(line: 47, column: 23, scope: !203)
!207 = !DILocation(line: 47, column: 20, scope: !203)
!208 = !DILocation(line: 47, column: 17, scope: !203)
!209 = !DILocation(line: 47, column: 11, scope: !204)
!210 = !DILocation(line: 48, column: 18, scope: !211)
!211 = distinct !DILexicalBlock(scope: !203, file: !176, line: 47, column: 27)
!212 = !DILocation(line: 48, column: 17, scope: !211)
!213 = !DILocation(line: 48, column: 26, scope: !211)
!214 = !DILocation(line: 48, column: 25, scope: !211)
!215 = !DILocation(line: 48, column: 23, scope: !211)
!216 = !DILocation(line: 48, column: 9, scope: !211)
!217 = !DILocation(line: 50, column: 14, scope: !195)
!218 = !DILocation(line: 50, column: 18, scope: !195)
!219 = !DILocation(line: 50, column: 5, scope: !204)
!220 = distinct !{!220, !201, !221, !101}
!221 = !DILocation(line: 50, column: 22, scope: !195)
!222 = !DILocation(line: 52, column: 3, scope: !175)
!223 = !DILocation(line: 53, column: 1, scope: !175)

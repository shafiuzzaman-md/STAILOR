; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/199_runtest.c_648_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/199_runtest.c_648_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"r1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"r2\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"file1_content\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"file1_size\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"file2_size\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"/tmp/test_file1\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"/tmp/test_file2\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"bytes1_size\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"(bytes1_size >= 4096) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.10 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_55980_vul/199_runtest.c_648_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !12 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca [256 x i8], align 16
  %4 = alloca [4096 x i8], align 16
  %5 = alloca [4096 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !17, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !23, metadata !DIExpression()), !dbg !24
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !25
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 256, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !26
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !27
  call void @klee_make_symbolic(i8* noundef %14, i64 noundef 256, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)), !dbg !28
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !29
  store i8 0, i8* %15, align 1, !dbg !30
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 255, !dbg !31
  store i8 0, i8* %16, align 1, !dbg !32
  call void @llvm.dbg.declare(metadata [4096 x i8]* %4, metadata !33, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.declare(metadata [4096 x i8]* %5, metadata !38, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.declare(metadata i32* %6, metadata !40, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata i32* %7, metadata !42, metadata !DIExpression()), !dbg !43
  %17 = getelementptr inbounds [4096 x i8], [4096 x i8]* %4, i64 0, i64 0, !dbg !44
  call void @klee_make_symbolic(i8* noundef %17, i64 noundef 4096, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)), !dbg !45
  %18 = bitcast i32* %6 to i8*, !dbg !46
  call void @klee_make_symbolic(i8* noundef %18, i64 noundef 4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0)), !dbg !47
  %19 = bitcast i32* %7 to i8*, !dbg !48
  call void @klee_make_symbolic(i8* noundef %19, i64 noundef 4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)), !dbg !49
  %20 = load i32, i32* %6, align 4, !dbg !50
  %21 = icmp sge i32 %20, 0, !dbg !51
  br i1 %21, label %22, label %25, !dbg !52

22:                                               ; preds = %0
  %23 = load i32, i32* %6, align 4, !dbg !53
  %24 = icmp sle i32 %23, 4096, !dbg !54
  br label %25

25:                                               ; preds = %22, %0
  %26 = phi i1 [ false, %0 ], [ %24, %22 ], !dbg !55
  %27 = zext i1 %26 to i32, !dbg !52
  %28 = sext i32 %27 to i64, !dbg !50
  call void @klee_assume(i64 noundef %28), !dbg !56
  %29 = load i32, i32* %7, align 4, !dbg !57
  %30 = icmp sge i32 %29, 0, !dbg !58
  br i1 %30, label %31, label %34, !dbg !59

31:                                               ; preds = %25
  %32 = load i32, i32* %7, align 4, !dbg !60
  %33 = icmp sle i32 %32, 4096, !dbg !61
  br label %34

34:                                               ; preds = %31, %25
  %35 = phi i1 [ false, %25 ], [ %33, %31 ], !dbg !55
  %36 = zext i1 %35 to i32, !dbg !59
  %37 = sext i32 %36 to i64, !dbg !57
  call void @klee_assume(i64 noundef %37), !dbg !62
  call void @llvm.dbg.declare(metadata i32* %8, metadata !63, metadata !DIExpression()), !dbg !64
  %38 = call i32 (i8*, i32, ...) @open(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 noundef 577, i32 noundef 420), !dbg !65
  store i32 %38, i32* %8, align 4, !dbg !64
  %39 = load i32, i32* %8, align 4, !dbg !66
  %40 = icmp slt i32 %39, 0, !dbg !68
  br i1 %40, label %41, label %42, !dbg !69

41:                                               ; preds = %34
  store i32 0, i32* %1, align 4, !dbg !70
  br label %85, !dbg !70

42:                                               ; preds = %34
  call void @llvm.dbg.declare(metadata i64* %9, metadata !71, metadata !DIExpression()), !dbg !77
  %43 = load i32, i32* %8, align 4, !dbg !78
  %44 = getelementptr inbounds [4096 x i8], [4096 x i8]* %4, i64 0, i64 0, !dbg !79
  %45 = load i32, i32* %6, align 4, !dbg !80
  %46 = sext i32 %45 to i64, !dbg !80
  %47 = call i64 @write(i32 noundef %43, i8* noundef %44, i64 noundef %46), !dbg !81
  store i64 %47, i64* %9, align 8, !dbg !77
  %48 = load i64, i64* %9, align 8, !dbg !82
  %49 = load i32, i32* %8, align 4, !dbg !83
  %50 = call i32 @close(i32 noundef %49), !dbg !84
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !85
  %52 = call i8* @strcpy(i8* noundef %51, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %10, metadata !87, metadata !DIExpression()), !dbg !88
  %53 = call i32 (i8*, i32, ...) @open(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 noundef 577, i32 noundef 420), !dbg !89
  store i32 %53, i32* %10, align 4, !dbg !88
  %54 = load i32, i32* %10, align 4, !dbg !90
  %55 = icmp slt i32 %54, 0, !dbg !92
  br i1 %55, label %56, label %57, !dbg !93

56:                                               ; preds = %42
  store i32 0, i32* %1, align 4, !dbg !94
  br label %85, !dbg !94

57:                                               ; preds = %42
  %58 = load i32, i32* %10, align 4, !dbg !95
  %59 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0, !dbg !96
  %60 = load i32, i32* %7, align 4, !dbg !97
  %61 = sext i32 %60 to i64, !dbg !97
  %62 = call i64 @write(i32 noundef %58, i8* noundef %59, i64 noundef %61), !dbg !98
  store i64 %62, i64* %9, align 8, !dbg !99
  %63 = load i64, i64* %9, align 8, !dbg !100
  %64 = load i32, i32* %10, align 4, !dbg !101
  %65 = call i32 @close(i32 noundef %64), !dbg !102
  %66 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !103
  %67 = call i8* @strcpy(i8* noundef %66, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !104
  call void @llvm.dbg.declare(metadata i32* %11, metadata !105, metadata !DIExpression()), !dbg !106
  %68 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !107
  %69 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !108
  %70 = call i32 @compareFiles(i8* noundef %68, i8* noundef %69), !dbg !109
  store i32 %70, i32* %11, align 4, !dbg !106
  call void @llvm.dbg.declare(metadata i64* %12, metadata !110, metadata !DIExpression()), !dbg !114
  %71 = bitcast i64* %12 to i8*, !dbg !115
  call void @klee_make_symbolic(i8* noundef %71, i64 noundef 8, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0)), !dbg !116
  %72 = load i64, i64* %12, align 8, !dbg !117
  %73 = icmp ult i64 %72, 4096, !dbg !118
  %74 = zext i1 %73 to i32, !dbg !118
  %75 = sext i32 %74 to i64, !dbg !117
  call void @klee_assume(i64 noundef %75), !dbg !119
  %76 = load i64, i64* %12, align 8, !dbg !120
  %77 = icmp uge i64 %76, 4096, !dbg !120
  br i1 %77, label %78, label %80, !dbg !120

78:                                               ; preds = %57
  br i1 true, label %79, label %80, !dbg !120

79:                                               ; preds = %78
  br label %82, !dbg !120

80:                                               ; preds = %78, %57
  %81 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.10, i64 0, i64 0), i32 noundef 100, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !120
  br label %82, !dbg !120

82:                                               ; preds = %80, %79
  %83 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.10, i64 0, i64 0), i32 noundef 103, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !121
  %84 = load i32, i32* %11, align 4, !dbg !122
  store i32 %84, i32* %1, align 4, !dbg !123
  br label %85, !dbg !123

85:                                               ; preds = %82, %56, %41
  %86 = load i32, i32* %1, align 4, !dbg !124
  ret i32 %86, !dbg !124
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

declare i32 @open(i8* noundef, i32 noundef, ...) #2

declare i64 @write(i32 noundef, i8* noundef, i64 noundef) #2

declare i32 @close(i32 noundef) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compareFiles(i8* noundef %0, i8* noundef %1) #0 !dbg !125 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [4096 x i8], align 16
  %11 = alloca [4096 x i8], align 16
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !130, metadata !DIExpression()), !dbg !131
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !132, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.declare(metadata i32* %6, metadata !134, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.declare(metadata i32* %7, metadata !136, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.declare(metadata i32* %8, metadata !138, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.declare(metadata i32* %9, metadata !140, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.declare(metadata [4096 x i8]* %10, metadata !142, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.declare(metadata [4096 x i8]* %11, metadata !146, metadata !DIExpression()), !dbg !147
  %12 = load i8*, i8** %4, align 8, !dbg !148
  %13 = call i32 (i8*, i32, ...) @open(i8* noundef %12, i32 noundef 0), !dbg !149
  store i32 %13, i32* %6, align 4, !dbg !150
  %14 = load i32, i32* %6, align 4, !dbg !151
  %15 = icmp slt i32 %14, 0, !dbg !153
  br i1 %15, label %16, label %17, !dbg !154

16:                                               ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !155
  br label %79, !dbg !155

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8, !dbg !156
  %19 = call i32 (i8*, i32, ...) @open(i8* noundef %18, i32 noundef 0), !dbg !157
  store i32 %19, i32* %7, align 4, !dbg !158
  br label %20, !dbg !159

20:                                               ; preds = %17, %78
  %21 = load i32, i32* %6, align 4, !dbg !160
  %22 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0, !dbg !162
  %23 = call i64 @read(i32 noundef %21, i8* noundef %22, i64 noundef 4096), !dbg !163
  %24 = trunc i64 %23 to i32, !dbg !163
  store i32 %24, i32* %8, align 4, !dbg !164
  %25 = load i32, i32* %7, align 4, !dbg !165
  %26 = icmp sge i32 %25, 0, !dbg !166
  br i1 %26, label %27, label %31, !dbg !165

27:                                               ; preds = %20
  %28 = load i32, i32* %7, align 4, !dbg !167
  %29 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0, !dbg !168
  %30 = call i64 @read(i32 noundef %28, i8* noundef %29, i64 noundef 4096), !dbg !169
  br label %32, !dbg !165

31:                                               ; preds = %20
  br label %32, !dbg !165

32:                                               ; preds = %31, %27
  %33 = phi i64 [ %30, %27 ], [ 0, %31 ], !dbg !165
  %34 = trunc i64 %33 to i32, !dbg !165
  store i32 %34, i32* %9, align 4, !dbg !170
  %35 = load i32, i32* %8, align 4, !dbg !171
  %36 = load i32, i32* %9, align 4, !dbg !173
  %37 = icmp ne i32 %35, %36, !dbg !174
  br i1 %37, label %41, label %38, !dbg !175

38:                                               ; preds = %32
  %39 = load i32, i32* %8, align 4, !dbg !176
  %40 = icmp slt i32 %39, 0, !dbg !177
  br i1 %40, label %41, label %50, !dbg !178

41:                                               ; preds = %38, %32
  %42 = load i32, i32* %6, align 4, !dbg !179
  %43 = call i32 @close(i32 noundef %42), !dbg !181
  %44 = load i32, i32* %7, align 4, !dbg !182
  %45 = icmp sge i32 %44, 0, !dbg !184
  br i1 %45, label %46, label %49, !dbg !185

46:                                               ; preds = %41
  %47 = load i32, i32* %7, align 4, !dbg !186
  %48 = call i32 @close(i32 noundef %47), !dbg !187
  br label %49, !dbg !187

49:                                               ; preds = %46, %41
  store i32 1, i32* %3, align 4, !dbg !188
  br label %79, !dbg !188

50:                                               ; preds = %38
  %51 = load i32, i32* %8, align 4, !dbg !189
  %52 = icmp eq i32 %51, 0, !dbg !191
  br i1 %52, label %53, label %62, !dbg !192

53:                                               ; preds = %50
  %54 = load i32, i32* %6, align 4, !dbg !193
  %55 = call i32 @close(i32 noundef %54), !dbg !195
  %56 = load i32, i32* %7, align 4, !dbg !196
  %57 = icmp sge i32 %56, 0, !dbg !198
  br i1 %57, label %58, label %61, !dbg !199

58:                                               ; preds = %53
  %59 = load i32, i32* %7, align 4, !dbg !200
  %60 = call i32 @close(i32 noundef %59), !dbg !201
  br label %61, !dbg !201

61:                                               ; preds = %58, %53
  store i32 0, i32* %3, align 4, !dbg !202
  br label %79, !dbg !202

62:                                               ; preds = %50
  %63 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0, !dbg !203
  %64 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0, !dbg !205
  %65 = load i32, i32* %8, align 4, !dbg !206
  %66 = sext i32 %65 to i64, !dbg !206
  %67 = call i32 @memcmp(i8* noundef %63, i8* noundef %64, i64 noundef %66) #7, !dbg !207
  %68 = icmp ne i32 %67, 0, !dbg !208
  br i1 %68, label %69, label %78, !dbg !209

69:                                               ; preds = %62
  %70 = load i32, i32* %6, align 4, !dbg !210
  %71 = call i32 @close(i32 noundef %70), !dbg !212
  %72 = load i32, i32* %7, align 4, !dbg !213
  %73 = icmp sge i32 %72, 0, !dbg !215
  br i1 %73, label %74, label %77, !dbg !216

74:                                               ; preds = %69
  %75 = load i32, i32* %7, align 4, !dbg !217
  %76 = call i32 @close(i32 noundef %75), !dbg !218
  br label %77, !dbg !218

77:                                               ; preds = %74, %69
  store i32 1, i32* %3, align 4, !dbg !219
  br label %79, !dbg !219

78:                                               ; preds = %62
  br label %20, !dbg !159, !llvm.loop !220

79:                                               ; preds = %77, %61, %49, %16
  %80 = load i32, i32* %3, align 4, !dbg !222
  ret i32 %80, !dbg !222
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

declare i64 @read(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @memcmp(i8* noundef %0, i8* noundef %1, i64 noundef %2) #5 !dbg !223 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !229, metadata !DIExpression()), !dbg !230
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !231, metadata !DIExpression()), !dbg !232
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !233, metadata !DIExpression()), !dbg !234
  %10 = load i64, i64* %7, align 8, !dbg !235
  %11 = icmp ne i64 %10, 0, !dbg !237
  br i1 %11, label %12, label %39, !dbg !238

12:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i8** %8, metadata !239, metadata !DIExpression()), !dbg !243
  %13 = load i8*, i8** %5, align 8, !dbg !244
  store i8* %13, i8** %8, align 8, !dbg !243
  call void @llvm.dbg.declare(metadata i8** %9, metadata !245, metadata !DIExpression()), !dbg !246
  %14 = load i8*, i8** %6, align 8, !dbg !247
  store i8* %14, i8** %9, align 8, !dbg !246
  br label %15, !dbg !248

15:                                               ; preds = %35, %12
  %16 = load i8*, i8** %8, align 8, !dbg !249
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !249
  store i8* %17, i8** %8, align 8, !dbg !249
  %18 = load i8, i8* %16, align 1, !dbg !252
  %19 = zext i8 %18 to i32, !dbg !252
  %20 = load i8*, i8** %9, align 8, !dbg !253
  %21 = getelementptr inbounds i8, i8* %20, i32 1, !dbg !253
  store i8* %21, i8** %9, align 8, !dbg !253
  %22 = load i8, i8* %20, align 1, !dbg !254
  %23 = zext i8 %22 to i32, !dbg !254
  %24 = icmp ne i32 %19, %23, !dbg !255
  br i1 %24, label %25, label %35, !dbg !256

25:                                               ; preds = %15
  %26 = load i8*, i8** %8, align 8, !dbg !257
  %27 = getelementptr inbounds i8, i8* %26, i32 -1, !dbg !257
  store i8* %27, i8** %8, align 8, !dbg !257
  %28 = load i8, i8* %27, align 1, !dbg !259
  %29 = zext i8 %28 to i32, !dbg !259
  %30 = load i8*, i8** %9, align 8, !dbg !260
  %31 = getelementptr inbounds i8, i8* %30, i32 -1, !dbg !260
  store i8* %31, i8** %9, align 8, !dbg !260
  %32 = load i8, i8* %31, align 1, !dbg !261
  %33 = zext i8 %32 to i32, !dbg !261
  %34 = sub nsw i32 %29, %33, !dbg !262
  store i32 %34, i32* %4, align 4, !dbg !263
  br label %40, !dbg !263

35:                                               ; preds = %15
  %36 = load i64, i64* %7, align 8, !dbg !264
  %37 = add i64 %36, -1, !dbg !264
  store i64 %37, i64* %7, align 8, !dbg !264
  %38 = icmp ne i64 %37, 0, !dbg !265
  br i1 %38, label %15, label %39, !dbg !266, !llvm.loop !267

39:                                               ; preds = %35, %3
  store i32 0, i32* %4, align 4, !dbg !270
  br label %40, !dbg !270

40:                                               ; preds = %39, %25
  %41 = load i32, i32* %4, align 4, !dbg !271
  ret i32 %41, !dbg !271
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11, !11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/199_runtest.c_648_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "e7e3530487ca308fdc5d3690a5f22493")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcmp.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "6a01b8a9953e07eca8ec791434d4f8e8")
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 7, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"Ubuntu clang version 14.0.6"}
!12 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 14, type: !13, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!13 = !DISubroutineType(types: !14)
!14 = !{!15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{}
!17 = !DILocalVariable(name: "r1", scope: !12, file: !1, line: 16, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 2048, elements: !20)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !{!21}
!21 = !DISubrange(count: 256)
!22 = !DILocation(line: 16, column: 10, scope: !12)
!23 = !DILocalVariable(name: "r2", scope: !12, file: !1, line: 17, type: !18)
!24 = !DILocation(line: 17, column: 10, scope: !12)
!25 = !DILocation(line: 19, column: 24, scope: !12)
!26 = !DILocation(line: 19, column: 5, scope: !12)
!27 = !DILocation(line: 20, column: 24, scope: !12)
!28 = !DILocation(line: 20, column: 5, scope: !12)
!29 = !DILocation(line: 23, column: 5, scope: !12)
!30 = !DILocation(line: 23, column: 13, scope: !12)
!31 = !DILocation(line: 24, column: 5, scope: !12)
!32 = !DILocation(line: 24, column: 13, scope: !12)
!33 = !DILocalVariable(name: "file1_content", scope: !12, file: !1, line: 27, type: !34)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 32768, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 4096)
!37 = !DILocation(line: 27, column: 10, scope: !12)
!38 = !DILocalVariable(name: "file2_content", scope: !12, file: !1, line: 28, type: !34)
!39 = !DILocation(line: 28, column: 10, scope: !12)
!40 = !DILocalVariable(name: "file1_size", scope: !12, file: !1, line: 29, type: !15)
!41 = !DILocation(line: 29, column: 9, scope: !12)
!42 = !DILocalVariable(name: "file2_size", scope: !12, file: !1, line: 29, type: !15)
!43 = !DILocation(line: 29, column: 21, scope: !12)
!44 = !DILocation(line: 31, column: 24, scope: !12)
!45 = !DILocation(line: 31, column: 5, scope: !12)
!46 = !DILocation(line: 32, column: 24, scope: !12)
!47 = !DILocation(line: 32, column: 5, scope: !12)
!48 = !DILocation(line: 33, column: 24, scope: !12)
!49 = !DILocation(line: 33, column: 5, scope: !12)
!50 = !DILocation(line: 36, column: 17, scope: !12)
!51 = !DILocation(line: 36, column: 28, scope: !12)
!52 = !DILocation(line: 36, column: 33, scope: !12)
!53 = !DILocation(line: 36, column: 36, scope: !12)
!54 = !DILocation(line: 36, column: 47, scope: !12)
!55 = !DILocation(line: 0, scope: !12)
!56 = !DILocation(line: 36, column: 5, scope: !12)
!57 = !DILocation(line: 37, column: 17, scope: !12)
!58 = !DILocation(line: 37, column: 28, scope: !12)
!59 = !DILocation(line: 37, column: 33, scope: !12)
!60 = !DILocation(line: 37, column: 36, scope: !12)
!61 = !DILocation(line: 37, column: 47, scope: !12)
!62 = !DILocation(line: 37, column: 5, scope: !12)
!63 = !DILocalVariable(name: "fd1", scope: !12, file: !1, line: 40, type: !15)
!64 = !DILocation(line: 40, column: 9, scope: !12)
!65 = !DILocation(line: 40, column: 15, scope: !12)
!66 = !DILocation(line: 41, column: 9, scope: !67)
!67 = distinct !DILexicalBlock(scope: !12, file: !1, line: 41, column: 9)
!68 = !DILocation(line: 41, column: 13, scope: !67)
!69 = !DILocation(line: 41, column: 9, scope: !12)
!70 = !DILocation(line: 41, column: 18, scope: !67)
!71 = !DILocalVariable(name: "written", scope: !12, file: !1, line: 44, type: !72)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !73, line: 220, baseType: !74)
!73 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "877e832a8bb8424f9180387a13787475")
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !75, line: 194, baseType: !76)
!75 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!76 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!77 = !DILocation(line: 44, column: 13, scope: !12)
!78 = !DILocation(line: 44, column: 29, scope: !12)
!79 = !DILocation(line: 44, column: 34, scope: !12)
!80 = !DILocation(line: 44, column: 49, scope: !12)
!81 = !DILocation(line: 44, column: 23, scope: !12)
!82 = !DILocation(line: 45, column: 11, scope: !12)
!83 = !DILocation(line: 46, column: 11, scope: !12)
!84 = !DILocation(line: 46, column: 5, scope: !12)
!85 = !DILocation(line: 55, column: 12, scope: !12)
!86 = !DILocation(line: 55, column: 5, scope: !12)
!87 = !DILocalVariable(name: "fd2", scope: !12, file: !1, line: 62, type: !15)
!88 = !DILocation(line: 62, column: 9, scope: !12)
!89 = !DILocation(line: 62, column: 15, scope: !12)
!90 = !DILocation(line: 63, column: 9, scope: !91)
!91 = distinct !DILexicalBlock(scope: !12, file: !1, line: 63, column: 9)
!92 = !DILocation(line: 63, column: 13, scope: !91)
!93 = !DILocation(line: 63, column: 9, scope: !12)
!94 = !DILocation(line: 63, column: 18, scope: !91)
!95 = !DILocation(line: 66, column: 21, scope: !12)
!96 = !DILocation(line: 66, column: 26, scope: !12)
!97 = !DILocation(line: 66, column: 41, scope: !12)
!98 = !DILocation(line: 66, column: 15, scope: !12)
!99 = !DILocation(line: 66, column: 13, scope: !12)
!100 = !DILocation(line: 67, column: 11, scope: !12)
!101 = !DILocation(line: 68, column: 11, scope: !12)
!102 = !DILocation(line: 68, column: 5, scope: !12)
!103 = !DILocation(line: 70, column: 12, scope: !12)
!104 = !DILocation(line: 70, column: 5, scope: !12)
!105 = !DILocalVariable(name: "result", scope: !12, file: !1, line: 73, type: !15)
!106 = !DILocation(line: 73, column: 9, scope: !12)
!107 = !DILocation(line: 73, column: 31, scope: !12)
!108 = !DILocation(line: 73, column: 35, scope: !12)
!109 = !DILocation(line: 73, column: 18, scope: !12)
!110 = !DILocalVariable(name: "bytes1_size", scope: !12, file: !1, line: 92, type: !111)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !112, line: 46, baseType: !113)
!112 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!113 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!114 = !DILocation(line: 92, column: 12, scope: !12)
!115 = !DILocation(line: 93, column: 24, scope: !12)
!116 = !DILocation(line: 93, column: 5, scope: !12)
!117 = !DILocation(line: 97, column: 17, scope: !12)
!118 = !DILocation(line: 97, column: 29, scope: !12)
!119 = !DILocation(line: 97, column: 5, scope: !12)
!120 = !DILocation(line: 100, column: 5, scope: !12)
!121 = !DILocation(line: 103, column: 5, scope: !12)
!122 = !DILocation(line: 105, column: 12, scope: !12)
!123 = !DILocation(line: 105, column: 5, scope: !12)
!124 = !DILocation(line: 106, column: 1, scope: !12)
!125 = distinct !DISubprogram(name: "compareFiles", scope: !1, file: !1, line: 109, type: !126, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!126 = !DISubroutineType(types: !127)
!127 = !{!15, !128, !128}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!130 = !DILocalVariable(name: "r1", arg: 1, scope: !125, file: !1, line: 109, type: !128)
!131 = !DILocation(line: 109, column: 30, scope: !125)
!132 = !DILocalVariable(name: "r2", arg: 2, scope: !125, file: !1, line: 109, type: !128)
!133 = !DILocation(line: 109, column: 46, scope: !125)
!134 = !DILocalVariable(name: "fd1", scope: !125, file: !1, line: 110, type: !15)
!135 = !DILocation(line: 110, column: 9, scope: !125)
!136 = !DILocalVariable(name: "fd2", scope: !125, file: !1, line: 110, type: !15)
!137 = !DILocation(line: 110, column: 14, scope: !125)
!138 = !DILocalVariable(name: "res1", scope: !125, file: !1, line: 111, type: !15)
!139 = !DILocation(line: 111, column: 9, scope: !125)
!140 = !DILocalVariable(name: "res2", scope: !125, file: !1, line: 111, type: !15)
!141 = !DILocation(line: 111, column: 15, scope: !125)
!142 = !DILocalVariable(name: "bytes1", scope: !125, file: !1, line: 112, type: !143)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 32768, elements: !35)
!144 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!145 = !DILocation(line: 112, column: 19, scope: !125)
!146 = !DILocalVariable(name: "bytes2", scope: !125, file: !1, line: 113, type: !143)
!147 = !DILocation(line: 113, column: 19, scope: !125)
!148 = !DILocation(line: 118, column: 16, scope: !125)
!149 = !DILocation(line: 118, column: 11, scope: !125)
!150 = !DILocation(line: 118, column: 9, scope: !125)
!151 = !DILocation(line: 119, column: 9, scope: !152)
!152 = distinct !DILexicalBlock(scope: !125, file: !1, line: 119, column: 9)
!153 = !DILocation(line: 119, column: 13, scope: !152)
!154 = !DILocation(line: 119, column: 9, scope: !125)
!155 = !DILocation(line: 120, column: 9, scope: !152)
!156 = !DILocation(line: 122, column: 16, scope: !125)
!157 = !DILocation(line: 122, column: 11, scope: !125)
!158 = !DILocation(line: 122, column: 9, scope: !125)
!159 = !DILocation(line: 124, column: 5, scope: !125)
!160 = !DILocation(line: 126, column: 21, scope: !161)
!161 = distinct !DILexicalBlock(scope: !125, file: !1, line: 124, column: 15)
!162 = !DILocation(line: 126, column: 26, scope: !161)
!163 = !DILocation(line: 126, column: 16, scope: !161)
!164 = !DILocation(line: 126, column: 14, scope: !161)
!165 = !DILocation(line: 128, column: 16, scope: !161)
!166 = !DILocation(line: 128, column: 20, scope: !161)
!167 = !DILocation(line: 128, column: 32, scope: !161)
!168 = !DILocation(line: 128, column: 37, scope: !161)
!169 = !DILocation(line: 128, column: 27, scope: !161)
!170 = !DILocation(line: 128, column: 14, scope: !161)
!171 = !DILocation(line: 130, column: 14, scope: !172)
!172 = distinct !DILexicalBlock(scope: !161, file: !1, line: 130, column: 13)
!173 = !DILocation(line: 130, column: 22, scope: !172)
!174 = !DILocation(line: 130, column: 19, scope: !172)
!175 = !DILocation(line: 130, column: 28, scope: !172)
!176 = !DILocation(line: 130, column: 32, scope: !172)
!177 = !DILocation(line: 130, column: 37, scope: !172)
!178 = !DILocation(line: 130, column: 13, scope: !161)
!179 = !DILocation(line: 131, column: 19, scope: !180)
!180 = distinct !DILexicalBlock(scope: !172, file: !1, line: 130, column: 43)
!181 = !DILocation(line: 131, column: 13, scope: !180)
!182 = !DILocation(line: 132, column: 17, scope: !183)
!183 = distinct !DILexicalBlock(scope: !180, file: !1, line: 132, column: 17)
!184 = !DILocation(line: 132, column: 21, scope: !183)
!185 = !DILocation(line: 132, column: 17, scope: !180)
!186 = !DILocation(line: 133, column: 23, scope: !183)
!187 = !DILocation(line: 133, column: 17, scope: !183)
!188 = !DILocation(line: 134, column: 13, scope: !180)
!189 = !DILocation(line: 137, column: 13, scope: !190)
!190 = distinct !DILexicalBlock(scope: !161, file: !1, line: 137, column: 13)
!191 = !DILocation(line: 137, column: 18, scope: !190)
!192 = !DILocation(line: 137, column: 13, scope: !161)
!193 = !DILocation(line: 138, column: 19, scope: !194)
!194 = distinct !DILexicalBlock(scope: !190, file: !1, line: 137, column: 24)
!195 = !DILocation(line: 138, column: 13, scope: !194)
!196 = !DILocation(line: 139, column: 17, scope: !197)
!197 = distinct !DILexicalBlock(scope: !194, file: !1, line: 139, column: 17)
!198 = !DILocation(line: 139, column: 21, scope: !197)
!199 = !DILocation(line: 139, column: 17, scope: !194)
!200 = !DILocation(line: 140, column: 23, scope: !197)
!201 = !DILocation(line: 140, column: 17, scope: !197)
!202 = !DILocation(line: 141, column: 13, scope: !194)
!203 = !DILocation(line: 145, column: 20, scope: !204)
!204 = distinct !DILexicalBlock(scope: !161, file: !1, line: 145, column: 13)
!205 = !DILocation(line: 145, column: 28, scope: !204)
!206 = !DILocation(line: 145, column: 36, scope: !204)
!207 = !DILocation(line: 145, column: 13, scope: !204)
!208 = !DILocation(line: 145, column: 42, scope: !204)
!209 = !DILocation(line: 145, column: 13, scope: !161)
!210 = !DILocation(line: 146, column: 19, scope: !211)
!211 = distinct !DILexicalBlock(scope: !204, file: !1, line: 145, column: 48)
!212 = !DILocation(line: 146, column: 13, scope: !211)
!213 = !DILocation(line: 147, column: 17, scope: !214)
!214 = distinct !DILexicalBlock(scope: !211, file: !1, line: 147, column: 17)
!215 = !DILocation(line: 147, column: 21, scope: !214)
!216 = !DILocation(line: 147, column: 17, scope: !211)
!217 = !DILocation(line: 148, column: 23, scope: !214)
!218 = !DILocation(line: 148, column: 17, scope: !214)
!219 = !DILocation(line: 149, column: 13, scope: !211)
!220 = distinct !{!220, !159, !221}
!221 = !DILocation(line: 151, column: 5, scope: !125)
!222 = !DILocation(line: 152, column: 1, scope: !125)
!223 = distinct !DISubprogram(name: "memcmp", scope: !224, file: !224, line: 42, type: !225, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !16)
!224 = !DIFile(filename: "runtime/Freestanding/memcmp.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "6a01b8a9953e07eca8ec791434d4f8e8")
!225 = !DISubroutineType(types: !226)
!226 = !{!15, !227, !227, !111}
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!229 = !DILocalVariable(name: "s1", arg: 1, scope: !223, file: !224, line: 42, type: !227)
!230 = !DILocation(line: 42, column: 24, scope: !223)
!231 = !DILocalVariable(name: "s2", arg: 2, scope: !223, file: !224, line: 42, type: !227)
!232 = !DILocation(line: 42, column: 40, scope: !223)
!233 = !DILocalVariable(name: "n", arg: 3, scope: !223, file: !224, line: 42, type: !111)
!234 = !DILocation(line: 42, column: 51, scope: !223)
!235 = !DILocation(line: 43, column: 7, scope: !236)
!236 = distinct !DILexicalBlock(scope: !223, file: !224, line: 43, column: 7)
!237 = !DILocation(line: 43, column: 9, scope: !236)
!238 = !DILocation(line: 43, column: 7, scope: !223)
!239 = !DILocalVariable(name: "p1", scope: !240, file: !224, line: 44, type: !241)
!240 = distinct !DILexicalBlock(scope: !236, file: !224, line: 43, column: 15)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!243 = !DILocation(line: 44, column: 26, scope: !240)
!244 = !DILocation(line: 44, column: 31, scope: !240)
!245 = !DILocalVariable(name: "p2", scope: !240, file: !224, line: 44, type: !241)
!246 = !DILocation(line: 44, column: 36, scope: !240)
!247 = !DILocation(line: 44, column: 41, scope: !240)
!248 = !DILocation(line: 46, column: 5, scope: !240)
!249 = !DILocation(line: 47, column: 14, scope: !250)
!250 = distinct !DILexicalBlock(scope: !251, file: !224, line: 47, column: 11)
!251 = distinct !DILexicalBlock(scope: !240, file: !224, line: 46, column: 8)
!252 = !DILocation(line: 47, column: 11, scope: !250)
!253 = !DILocation(line: 47, column: 23, scope: !250)
!254 = !DILocation(line: 47, column: 20, scope: !250)
!255 = !DILocation(line: 47, column: 17, scope: !250)
!256 = !DILocation(line: 47, column: 11, scope: !251)
!257 = !DILocation(line: 48, column: 18, scope: !258)
!258 = distinct !DILexicalBlock(scope: !250, file: !224, line: 47, column: 27)
!259 = !DILocation(line: 48, column: 17, scope: !258)
!260 = !DILocation(line: 48, column: 26, scope: !258)
!261 = !DILocation(line: 48, column: 25, scope: !258)
!262 = !DILocation(line: 48, column: 23, scope: !258)
!263 = !DILocation(line: 48, column: 9, scope: !258)
!264 = !DILocation(line: 50, column: 14, scope: !240)
!265 = !DILocation(line: 50, column: 18, scope: !240)
!266 = !DILocation(line: 50, column: 5, scope: !251)
!267 = distinct !{!267, !248, !268, !269}
!268 = !DILocation(line: 50, column: 22, scope: !240)
!269 = !{!"llvm.loop.mustprogress"}
!270 = !DILocation(line: 52, column: 3, scope: !223)
!271 = !DILocation(line: 53, column: 1, scope: !223)

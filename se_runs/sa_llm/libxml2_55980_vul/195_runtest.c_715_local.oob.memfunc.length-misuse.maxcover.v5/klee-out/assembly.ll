; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/195_runtest.c_715_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/195_runtest.c_715_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"/tmp/testfile\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"data_size\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"file_data\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"symbolic_idx\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"symbolic_res\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"symbolic_bytes\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.10 = private unnamed_addr constant [61 x i8] c"(symbolic_res + symbolic_idx <= size) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.11 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_55980_vul/195_runtest.c_715_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.13 = private unnamed_addr constant [30 x i8] c"Compare error at position %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !15 {
  %1 = alloca i32, align 4
  %2 = alloca [32 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [65536 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [4096 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [32 x i8]* %2, metadata !20, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32* %3, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata i8** %4, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %5, metadata !29, metadata !DIExpression()), !dbg !30
  %12 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0, !dbg !31
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 32, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !dbg !32
  %13 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 31, !dbg !33
  store i8 0, i8* %13, align 1, !dbg !34
  %14 = bitcast i32* %3 to i8*, !dbg !35
  call void @klee_make_symbolic(i8* noundef %14, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !36
  %15 = load i32, i32* %3, align 4, !dbg !37
  %16 = icmp sge i32 %15, 0, !dbg !38
  br i1 %16, label %17, label %20, !dbg !39

17:                                               ; preds = %0
  %18 = load i32, i32* %3, align 4, !dbg !40
  %19 = icmp sle i32 %18, 65536, !dbg !41
  br label %20

20:                                               ; preds = %17, %0
  %21 = phi i1 [ false, %0 ], [ %19, %17 ], !dbg !42
  %22 = zext i1 %21 to i32, !dbg !39
  %23 = sext i32 %22 to i64, !dbg !37
  call void @klee_assume(i64 noundef %23), !dbg !43
  %24 = load i32, i32* %3, align 4, !dbg !44
  %25 = add nsw i32 %24, 1, !dbg !45
  %26 = sext i32 %25 to i64, !dbg !44
  %27 = call noalias i8* @malloc(i64 noundef %26) #6, !dbg !46
  store i8* %27, i8** %4, align 8, !dbg !47
  %28 = load i8*, i8** %4, align 8, !dbg !48
  %29 = icmp ne i8* %28, null, !dbg !48
  br i1 %29, label %31, label %30, !dbg !50

30:                                               ; preds = %20
  store i32 -1, i32* %1, align 4, !dbg !51
  br label %117, !dbg !51

31:                                               ; preds = %20
  %32 = load i8*, i8** %4, align 8, !dbg !52
  %33 = load i32, i32* %3, align 4, !dbg !53
  %34 = sext i32 %33 to i64, !dbg !53
  call void @klee_make_symbolic(i8* noundef %32, i64 noundef %34, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)), !dbg !54
  %35 = call i32 (i8*, i32, ...) @open(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 noundef 578, i32 noundef 420), !dbg !55
  store i32 %35, i32* %5, align 4, !dbg !56
  %36 = load i32, i32* %5, align 4, !dbg !57
  %37 = icmp slt i32 %36, 0, !dbg !59
  br i1 %37, label %38, label %39, !dbg !60

38:                                               ; preds = %31
  store i32 -1, i32* %1, align 4, !dbg !61
  br label %117, !dbg !61

39:                                               ; preds = %31
  call void @llvm.dbg.declare(metadata [65536 x i8]* %6, metadata !62, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.declare(metadata i32* %7, metadata !67, metadata !DIExpression()), !dbg !68
  %40 = bitcast i32* %7 to i8*, !dbg !69
  call void @klee_make_symbolic(i8* noundef %40, i64 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0)), !dbg !70
  %41 = load i32, i32* %7, align 4, !dbg !71
  %42 = icmp sge i32 %41, 0, !dbg !72
  br i1 %42, label %43, label %46, !dbg !73

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4, !dbg !74
  %45 = icmp sle i32 %44, 65536, !dbg !75
  br label %46

46:                                               ; preds = %43, %39
  %47 = phi i1 [ false, %39 ], [ %45, %43 ], !dbg !42
  %48 = zext i1 %47 to i32, !dbg !73
  %49 = sext i32 %48 to i64, !dbg !71
  call void @klee_assume(i64 noundef %49), !dbg !76
  %50 = getelementptr inbounds [65536 x i8], [65536 x i8]* %6, i64 0, i64 0, !dbg !77
  %51 = load i32, i32* %7, align 4, !dbg !78
  %52 = sext i32 %51 to i64, !dbg !78
  call void @klee_make_symbolic(i8* noundef %50, i64 noundef %52, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)), !dbg !79
  %53 = load i32, i32* %5, align 4, !dbg !80
  %54 = getelementptr inbounds [65536 x i8], [65536 x i8]* %6, i64 0, i64 0, !dbg !82
  %55 = load i32, i32* %7, align 4, !dbg !83
  %56 = sext i32 %55 to i64, !dbg !83
  %57 = call i64 @write(i32 noundef %53, i8* noundef %54, i64 noundef %56), !dbg !84
  %58 = load i32, i32* %7, align 4, !dbg !85
  %59 = sext i32 %58 to i64, !dbg !85
  %60 = icmp ne i64 %57, %59, !dbg !86
  br i1 %60, label %61, label %65, !dbg !87

61:                                               ; preds = %46
  %62 = load i32, i32* %5, align 4, !dbg !88
  %63 = call i32 @close(i32 noundef %62), !dbg !90
  %64 = load i8*, i8** %4, align 8, !dbg !91
  call void @free(i8* noundef %64) #6, !dbg !92
  store i32 -1, i32* %1, align 4, !dbg !93
  br label %117, !dbg !93

65:                                               ; preds = %46
  %66 = load i32, i32* %5, align 4, !dbg !94
  %67 = call i64 @lseek(i32 noundef %66, i64 noundef 0, i32 noundef 0) #6, !dbg !95
  %68 = load i32, i32* %5, align 4, !dbg !96
  %69 = call i32 @close(i32 noundef %68), !dbg !97
  %70 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0, !dbg !98
  %71 = call i32 @rename(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* noundef %70) #6, !dbg !99
  call void @llvm.dbg.declare(metadata i32* %8, metadata !100, metadata !DIExpression()), !dbg !101
  %72 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0, !dbg !102
  %73 = load i8*, i8** %4, align 8, !dbg !103
  %74 = load i32, i32* %3, align 4, !dbg !104
  %75 = call i32 @testCompareFile(i8* noundef %72, i8* noundef %73, i32 noundef %74), !dbg !105
  store i32 %75, i32* %8, align 4, !dbg !101
  call void @llvm.dbg.declare(metadata i32* %9, metadata !106, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.declare(metadata i32* %10, metadata !108, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata [4096 x i8]* %11, metadata !110, metadata !DIExpression()), !dbg !114
  %76 = bitcast i32* %9 to i8*, !dbg !115
  call void @klee_make_symbolic(i8* noundef %76, i64 noundef 4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0)), !dbg !116
  %77 = bitcast i32* %10 to i8*, !dbg !117
  call void @klee_make_symbolic(i8* noundef %77, i64 noundef 4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0)), !dbg !118
  %78 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0, !dbg !119
  call void @klee_make_symbolic(i8* noundef %78, i64 noundef 4096, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0)), !dbg !120
  %79 = load i32, i32* %9, align 4, !dbg !121
  %80 = icmp sge i32 %79, 0, !dbg !122
  %81 = zext i1 %80 to i32, !dbg !122
  %82 = sext i32 %81 to i64, !dbg !121
  call void @klee_assume(i64 noundef %82), !dbg !123
  %83 = load i32, i32* %10, align 4, !dbg !124
  %84 = icmp sgt i32 %83, 0, !dbg !125
  br i1 %84, label %85, label %88, !dbg !126

85:                                               ; preds = %65
  %86 = load i32, i32* %10, align 4, !dbg !127
  %87 = icmp sle i32 %86, 4096, !dbg !128
  br label %88

88:                                               ; preds = %85, %65
  %89 = phi i1 [ false, %65 ], [ %87, %85 ], !dbg !42
  %90 = zext i1 %89 to i32, !dbg !126
  %91 = sext i32 %90 to i64, !dbg !124
  call void @klee_assume(i64 noundef %91), !dbg !129
  %92 = load i32, i32* %9, align 4, !dbg !130
  %93 = load i32, i32* %3, align 4, !dbg !131
  %94 = icmp slt i32 %92, %93, !dbg !132
  %95 = zext i1 %94 to i32, !dbg !132
  %96 = sext i32 %95 to i64, !dbg !130
  call void @klee_assume(i64 noundef %96), !dbg !133
  %97 = load i32, i32* %10, align 4, !dbg !134
  %98 = load i32, i32* %9, align 4, !dbg !135
  %99 = add nsw i32 %97, %98, !dbg !136
  %100 = load i32, i32* %3, align 4, !dbg !137
  %101 = icmp sle i32 %99, %100, !dbg !138
  %102 = zext i1 %101 to i32, !dbg !138
  %103 = sext i32 %102 to i64, !dbg !134
  call void @klee_assume(i64 noundef %103), !dbg !139
  %104 = load i32, i32* %10, align 4, !dbg !140
  %105 = load i32, i32* %9, align 4, !dbg !140
  %106 = add nsw i32 %104, %105, !dbg !140
  %107 = load i32, i32* %3, align 4, !dbg !140
  %108 = icmp sle i32 %106, %107, !dbg !140
  br i1 %108, label %109, label %111, !dbg !140

109:                                              ; preds = %88
  br i1 true, label %110, label %111, !dbg !140

110:                                              ; preds = %109
  br label %113, !dbg !140

111:                                              ; preds = %109, %88
  %112 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.11, i64 0, i64 0), i32 noundef 96, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !140
  br label %113, !dbg !140

113:                                              ; preds = %111, %110
  %114 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.11, i64 0, i64 0), i32 noundef 99, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !141
  %115 = load i8*, i8** %4, align 8, !dbg !142
  call void @free(i8* noundef %115) #6, !dbg !143
  %116 = load i32, i32* %8, align 4, !dbg !144
  store i32 %116, i32* %1, align 4, !dbg !145
  br label %117, !dbg !145

117:                                              ; preds = %113, %61, %38, %30
  %118 = load i32, i32* %1, align 4, !dbg !146
  ret i32 %118, !dbg !146
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

declare i32 @open(i8* noundef, i32 noundef, ...) #2

declare i64 @write(i32 noundef, i8* noundef, i64 noundef) #2

declare i32 @close(i32 noundef) #2

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind
declare i32 @rename(i8* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @testCompareFile(i8* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !147 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [4096 x i8], align 16
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !152, metadata !DIExpression()), !dbg !153
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !154, metadata !DIExpression()), !dbg !155
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !156, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.declare(metadata i32* %8, metadata !158, metadata !DIExpression()), !dbg !159
  call void @llvm.dbg.declare(metadata i32* %9, metadata !160, metadata !DIExpression()), !dbg !161
  store i32 0, i32* %9, align 4, !dbg !161
  call void @llvm.dbg.declare(metadata i32* %10, metadata !162, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.declare(metadata [4096 x i8]* %11, metadata !164, metadata !DIExpression()), !dbg !165
  %13 = load i8*, i8** %5, align 8, !dbg !166
  %14 = call i32 (i8*, i32, ...) @open(i8* noundef %13, i32 noundef 0), !dbg !167
  store i32 %14, i32* %8, align 4, !dbg !168
  %15 = load i32, i32* %8, align 4, !dbg !169
  %16 = icmp slt i32 %15, 0, !dbg !171
  br i1 %16, label %17, label %18, !dbg !172

17:                                               ; preds = %3
  store i32 -1, i32* %4, align 4, !dbg !173
  br label %88, !dbg !173

18:                                               ; preds = %3
  br label %19, !dbg !175

19:                                               ; preds = %81, %18
  %20 = load i32, i32* %9, align 4, !dbg !176
  %21 = load i32, i32* %7, align 4, !dbg !177
  %22 = icmp slt i32 %20, %21, !dbg !178
  br i1 %22, label %23, label %85, !dbg !175

23:                                               ; preds = %19
  %24 = load i32, i32* %8, align 4, !dbg !179
  %25 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0, !dbg !181
  %26 = call i64 @read(i32 noundef %24, i8* noundef %25, i64 noundef 4096), !dbg !182
  %27 = trunc i64 %26 to i32, !dbg !182
  store i32 %27, i32* %10, align 4, !dbg !183
  %28 = load i32, i32* %10, align 4, !dbg !184
  %29 = icmp sle i32 %28, 0, !dbg !186
  br i1 %29, label %30, label %31, !dbg !187

30:                                               ; preds = %23
  br label %85, !dbg !188

31:                                               ; preds = %23
  %32 = load i32, i32* %10, align 4, !dbg !189
  %33 = load i32, i32* %9, align 4, !dbg !191
  %34 = add nsw i32 %32, %33, !dbg !192
  %35 = load i32, i32* %7, align 4, !dbg !193
  %36 = icmp sgt i32 %34, %35, !dbg !194
  br i1 %36, label %37, label %38, !dbg !195

37:                                               ; preds = %31
  br label %85, !dbg !196

38:                                               ; preds = %31
  %39 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0, !dbg !197
  %40 = load i8*, i8** %6, align 8, !dbg !199
  %41 = load i32, i32* %9, align 4, !dbg !200
  %42 = sext i32 %41 to i64, !dbg !199
  %43 = getelementptr inbounds i8, i8* %40, i64 %42, !dbg !199
  %44 = load i32, i32* %10, align 4, !dbg !201
  %45 = sext i32 %44 to i64, !dbg !201
  %46 = call i32 @memcmp(i8* noundef %39, i8* noundef %43, i64 noundef %45) #7, !dbg !202
  %47 = icmp ne i32 %46, 0, !dbg !203
  br i1 %47, label %48, label %81, !dbg !204

48:                                               ; preds = %38
  call void @llvm.dbg.declare(metadata i32* %12, metadata !205, metadata !DIExpression()), !dbg !207
  store i32 0, i32* %12, align 4, !dbg !208
  br label %49, !dbg !210

49:                                               ; preds = %70, %48
  %50 = load i32, i32* %12, align 4, !dbg !211
  %51 = load i32, i32* %10, align 4, !dbg !213
  %52 = icmp slt i32 %50, %51, !dbg !214
  br i1 %52, label %53, label %73, !dbg !215

53:                                               ; preds = %49
  %54 = load i32, i32* %12, align 4, !dbg !216
  %55 = sext i32 %54 to i64, !dbg !218
  %56 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 %55, !dbg !218
  %57 = load i8, i8* %56, align 1, !dbg !218
  %58 = sext i8 %57 to i32, !dbg !218
  %59 = load i8*, i8** %6, align 8, !dbg !219
  %60 = load i32, i32* %9, align 4, !dbg !220
  %61 = load i32, i32* %12, align 4, !dbg !221
  %62 = add nsw i32 %60, %61, !dbg !222
  %63 = sext i32 %62 to i64, !dbg !219
  %64 = getelementptr inbounds i8, i8* %59, i64 %63, !dbg !219
  %65 = load i8, i8* %64, align 1, !dbg !219
  %66 = sext i8 %65 to i32, !dbg !219
  %67 = icmp ne i32 %58, %66, !dbg !223
  br i1 %67, label %68, label %69, !dbg !224

68:                                               ; preds = %53
  br label %73, !dbg !225

69:                                               ; preds = %53
  br label %70, !dbg !226

70:                                               ; preds = %69
  %71 = load i32, i32* %12, align 4, !dbg !227
  %72 = add nsw i32 %71, 1, !dbg !227
  store i32 %72, i32* %12, align 4, !dbg !227
  br label %49, !dbg !228, !llvm.loop !229

73:                                               ; preds = %68, %49
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !232
  %75 = load i32, i32* %9, align 4, !dbg !233
  %76 = load i32, i32* %12, align 4, !dbg !234
  %77 = add nsw i32 %75, %76, !dbg !235
  %78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %74, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i32 noundef %77), !dbg !236
  %79 = load i32, i32* %8, align 4, !dbg !237
  %80 = call i32 @close(i32 noundef %79), !dbg !238
  store i32 1, i32* %4, align 4, !dbg !239
  br label %88, !dbg !239

81:                                               ; preds = %38
  %82 = load i32, i32* %10, align 4, !dbg !240
  %83 = load i32, i32* %9, align 4, !dbg !241
  %84 = add nsw i32 %83, %82, !dbg !241
  store i32 %84, i32* %9, align 4, !dbg !241
  br label %19, !dbg !175, !llvm.loop !242

85:                                               ; preds = %37, %30, %19
  %86 = load i32, i32* %8, align 4, !dbg !244
  %87 = call i32 @close(i32 noundef %86), !dbg !245
  store i32 0, i32* %4, align 4, !dbg !246
  br label %88, !dbg !246

88:                                               ; preds = %85, %73, %17
  %89 = load i32, i32* %4, align 4, !dbg !247
  ret i32 %89, !dbg !247
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

declare i64 @read(i32 noundef, i8* noundef, i64 noundef) #2

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @memcmp(i8* noundef %0, i8* noundef %1, i64 noundef %2) #5 !dbg !248 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !257, metadata !DIExpression()), !dbg !258
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !259, metadata !DIExpression()), !dbg !260
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !261, metadata !DIExpression()), !dbg !262
  %10 = load i64, i64* %7, align 8, !dbg !263
  %11 = icmp ne i64 %10, 0, !dbg !265
  br i1 %11, label %12, label %39, !dbg !266

12:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i8** %8, metadata !267, metadata !DIExpression()), !dbg !272
  %13 = load i8*, i8** %5, align 8, !dbg !273
  store i8* %13, i8** %8, align 8, !dbg !272
  call void @llvm.dbg.declare(metadata i8** %9, metadata !274, metadata !DIExpression()), !dbg !275
  %14 = load i8*, i8** %6, align 8, !dbg !276
  store i8* %14, i8** %9, align 8, !dbg !275
  br label %15, !dbg !277

15:                                               ; preds = %35, %12
  %16 = load i8*, i8** %8, align 8, !dbg !278
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !278
  store i8* %17, i8** %8, align 8, !dbg !278
  %18 = load i8, i8* %16, align 1, !dbg !281
  %19 = zext i8 %18 to i32, !dbg !281
  %20 = load i8*, i8** %9, align 8, !dbg !282
  %21 = getelementptr inbounds i8, i8* %20, i32 1, !dbg !282
  store i8* %21, i8** %9, align 8, !dbg !282
  %22 = load i8, i8* %20, align 1, !dbg !283
  %23 = zext i8 %22 to i32, !dbg !283
  %24 = icmp ne i32 %19, %23, !dbg !284
  br i1 %24, label %25, label %35, !dbg !285

25:                                               ; preds = %15
  %26 = load i8*, i8** %8, align 8, !dbg !286
  %27 = getelementptr inbounds i8, i8* %26, i32 -1, !dbg !286
  store i8* %27, i8** %8, align 8, !dbg !286
  %28 = load i8, i8* %27, align 1, !dbg !288
  %29 = zext i8 %28 to i32, !dbg !288
  %30 = load i8*, i8** %9, align 8, !dbg !289
  %31 = getelementptr inbounds i8, i8* %30, i32 -1, !dbg !289
  store i8* %31, i8** %9, align 8, !dbg !289
  %32 = load i8, i8* %31, align 1, !dbg !290
  %33 = zext i8 %32 to i32, !dbg !290
  %34 = sub nsw i32 %29, %33, !dbg !291
  store i32 %34, i32* %4, align 4, !dbg !292
  br label %40, !dbg !292

35:                                               ; preds = %15
  %36 = load i64, i64* %7, align 8, !dbg !293
  %37 = add i64 %36, -1, !dbg !293
  store i64 %37, i64* %7, align 8, !dbg !293
  %38 = icmp ne i64 %37, 0, !dbg !294
  br i1 %38, label %15, label %39, !dbg !295, !llvm.loop !296

39:                                               ; preds = %35, %3
  store i32 0, i32* %4, align 4, !dbg !298
  br label %40, !dbg !298

40:                                               ; preds = %39, %25
  %41 = load i32, i32* %4, align 4, !dbg !299
  ret i32 %41, !dbg !299
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !5}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14, !14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/195_runtest.c_715_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "4c9e0d0c6bb660de93bde7f89f039588")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = distinct !DICompileUnit(language: DW_LANG_C99, file: !6, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!6 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcmp.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "6a01b8a9953e07eca8ec791434d4f8e8")
!7 = !{i32 7, !"Dwarf Version", i32 5}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{i32 7, !"PIC Level", i32 2}
!11 = !{i32 7, !"PIE Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"Ubuntu clang version 14.0.6"}
!15 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 15, type: !16, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !19)
!16 = !DISubroutineType(types: !17)
!17 = !{!18}
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !{}
!20 = !DILocalVariable(name: "filename", scope: !15, file: !1, line: 17, type: !21)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 32)
!24 = !DILocation(line: 17, column: 10, scope: !15)
!25 = !DILocalVariable(name: "size", scope: !15, file: !1, line: 18, type: !18)
!26 = !DILocation(line: 18, column: 9, scope: !15)
!27 = !DILocalVariable(name: "mem", scope: !15, file: !1, line: 19, type: !3)
!28 = !DILocation(line: 19, column: 11, scope: !15)
!29 = !DILocalVariable(name: "fd", scope: !15, file: !1, line: 20, type: !18)
!30 = !DILocation(line: 20, column: 9, scope: !15)
!31 = !DILocation(line: 23, column: 24, scope: !15)
!32 = !DILocation(line: 23, column: 5, scope: !15)
!33 = !DILocation(line: 24, column: 5, scope: !15)
!34 = !DILocation(line: 24, column: 36, scope: !15)
!35 = !DILocation(line: 27, column: 24, scope: !15)
!36 = !DILocation(line: 27, column: 5, scope: !15)
!37 = !DILocation(line: 28, column: 17, scope: !15)
!38 = !DILocation(line: 28, column: 22, scope: !15)
!39 = !DILocation(line: 28, column: 27, scope: !15)
!40 = !DILocation(line: 28, column: 30, scope: !15)
!41 = !DILocation(line: 28, column: 35, scope: !15)
!42 = !DILocation(line: 0, scope: !15)
!43 = !DILocation(line: 28, column: 5, scope: !15)
!44 = !DILocation(line: 31, column: 26, scope: !15)
!45 = !DILocation(line: 31, column: 31, scope: !15)
!46 = !DILocation(line: 31, column: 19, scope: !15)
!47 = !DILocation(line: 31, column: 9, scope: !15)
!48 = !DILocation(line: 32, column: 10, scope: !49)
!49 = distinct !DILexicalBlock(scope: !15, file: !1, line: 32, column: 9)
!50 = !DILocation(line: 32, column: 9, scope: !15)
!51 = !DILocation(line: 32, column: 15, scope: !49)
!52 = !DILocation(line: 35, column: 24, scope: !15)
!53 = !DILocation(line: 35, column: 29, scope: !15)
!54 = !DILocation(line: 35, column: 5, scope: !15)
!55 = !DILocation(line: 38, column: 10, scope: !15)
!56 = !DILocation(line: 38, column: 8, scope: !15)
!57 = !DILocation(line: 39, column: 9, scope: !58)
!58 = distinct !DILexicalBlock(scope: !15, file: !1, line: 39, column: 9)
!59 = !DILocation(line: 39, column: 12, scope: !58)
!60 = !DILocation(line: 39, column: 9, scope: !15)
!61 = !DILocation(line: 39, column: 17, scope: !58)
!62 = !DILocalVariable(name: "file_data", scope: !15, file: !1, line: 42, type: !63)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 524288, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 65536)
!66 = !DILocation(line: 42, column: 10, scope: !15)
!67 = !DILocalVariable(name: "data_size", scope: !15, file: !1, line: 43, type: !18)
!68 = !DILocation(line: 43, column: 9, scope: !15)
!69 = !DILocation(line: 45, column: 24, scope: !15)
!70 = !DILocation(line: 45, column: 5, scope: !15)
!71 = !DILocation(line: 46, column: 17, scope: !15)
!72 = !DILocation(line: 46, column: 27, scope: !15)
!73 = !DILocation(line: 46, column: 32, scope: !15)
!74 = !DILocation(line: 46, column: 35, scope: !15)
!75 = !DILocation(line: 46, column: 45, scope: !15)
!76 = !DILocation(line: 46, column: 5, scope: !15)
!77 = !DILocation(line: 48, column: 24, scope: !15)
!78 = !DILocation(line: 48, column: 35, scope: !15)
!79 = !DILocation(line: 48, column: 5, scope: !15)
!80 = !DILocation(line: 51, column: 15, scope: !81)
!81 = distinct !DILexicalBlock(scope: !15, file: !1, line: 51, column: 9)
!82 = !DILocation(line: 51, column: 19, scope: !81)
!83 = !DILocation(line: 51, column: 30, scope: !81)
!84 = !DILocation(line: 51, column: 9, scope: !81)
!85 = !DILocation(line: 51, column: 44, scope: !81)
!86 = !DILocation(line: 51, column: 41, scope: !81)
!87 = !DILocation(line: 51, column: 9, scope: !15)
!88 = !DILocation(line: 52, column: 15, scope: !89)
!89 = distinct !DILexicalBlock(scope: !81, file: !1, line: 51, column: 55)
!90 = !DILocation(line: 52, column: 9, scope: !89)
!91 = !DILocation(line: 53, column: 14, scope: !89)
!92 = !DILocation(line: 53, column: 9, scope: !89)
!93 = !DILocation(line: 54, column: 9, scope: !89)
!94 = !DILocation(line: 58, column: 11, scope: !15)
!95 = !DILocation(line: 58, column: 5, scope: !15)
!96 = !DILocation(line: 61, column: 11, scope: !15)
!97 = !DILocation(line: 61, column: 5, scope: !15)
!98 = !DILocation(line: 64, column: 29, scope: !15)
!99 = !DILocation(line: 64, column: 5, scope: !15)
!100 = !DILocalVariable(name: "result", scope: !15, file: !1, line: 67, type: !18)
!101 = !DILocation(line: 67, column: 9, scope: !15)
!102 = !DILocation(line: 67, column: 34, scope: !15)
!103 = !DILocation(line: 67, column: 44, scope: !15)
!104 = !DILocation(line: 67, column: 49, scope: !15)
!105 = !DILocation(line: 67, column: 18, scope: !15)
!106 = !DILocalVariable(name: "symbolic_idx", scope: !15, file: !1, line: 79, type: !18)
!107 = !DILocation(line: 79, column: 9, scope: !15)
!108 = !DILocalVariable(name: "symbolic_res", scope: !15, file: !1, line: 79, type: !18)
!109 = !DILocation(line: 79, column: 23, scope: !15)
!110 = !DILocalVariable(name: "symbolic_bytes", scope: !15, file: !1, line: 80, type: !111)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 4096)
!114 = !DILocation(line: 80, column: 10, scope: !15)
!115 = !DILocation(line: 82, column: 24, scope: !15)
!116 = !DILocation(line: 82, column: 5, scope: !15)
!117 = !DILocation(line: 83, column: 24, scope: !15)
!118 = !DILocation(line: 83, column: 5, scope: !15)
!119 = !DILocation(line: 84, column: 24, scope: !15)
!120 = !DILocation(line: 84, column: 5, scope: !15)
!121 = !DILocation(line: 87, column: 17, scope: !15)
!122 = !DILocation(line: 87, column: 30, scope: !15)
!123 = !DILocation(line: 87, column: 5, scope: !15)
!124 = !DILocation(line: 88, column: 17, scope: !15)
!125 = !DILocation(line: 88, column: 30, scope: !15)
!126 = !DILocation(line: 88, column: 34, scope: !15)
!127 = !DILocation(line: 88, column: 37, scope: !15)
!128 = !DILocation(line: 88, column: 50, scope: !15)
!129 = !DILocation(line: 88, column: 5, scope: !15)
!130 = !DILocation(line: 89, column: 17, scope: !15)
!131 = !DILocation(line: 89, column: 32, scope: !15)
!132 = !DILocation(line: 89, column: 30, scope: !15)
!133 = !DILocation(line: 89, column: 5, scope: !15)
!134 = !DILocation(line: 90, column: 17, scope: !15)
!135 = !DILocation(line: 90, column: 32, scope: !15)
!136 = !DILocation(line: 90, column: 30, scope: !15)
!137 = !DILocation(line: 90, column: 48, scope: !15)
!138 = !DILocation(line: 90, column: 45, scope: !15)
!139 = !DILocation(line: 90, column: 5, scope: !15)
!140 = !DILocation(line: 96, column: 5, scope: !15)
!141 = !DILocation(line: 99, column: 5, scope: !15)
!142 = !DILocation(line: 102, column: 10, scope: !15)
!143 = !DILocation(line: 102, column: 5, scope: !15)
!144 = !DILocation(line: 104, column: 12, scope: !15)
!145 = !DILocation(line: 104, column: 5, scope: !15)
!146 = !DILocation(line: 105, column: 1, scope: !15)
!147 = distinct !DISubprogram(name: "testCompareFile", scope: !1, file: !1, line: 108, type: !148, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !19)
!148 = !DISubroutineType(types: !149)
!149 = !{!18, !150, !150, !18}
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!152 = !DILocalVariable(name: "filename", arg: 1, scope: !147, file: !1, line: 108, type: !150)
!153 = !DILocation(line: 108, column: 33, scope: !147)
!154 = !DILocalVariable(name: "mem", arg: 2, scope: !147, file: !1, line: 108, type: !150)
!155 = !DILocation(line: 108, column: 55, scope: !147)
!156 = !DILocalVariable(name: "size", arg: 3, scope: !147, file: !1, line: 108, type: !18)
!157 = !DILocation(line: 108, column: 64, scope: !147)
!158 = !DILocalVariable(name: "fd", scope: !147, file: !1, line: 109, type: !18)
!159 = !DILocation(line: 109, column: 9, scope: !147)
!160 = !DILocalVariable(name: "idx", scope: !147, file: !1, line: 110, type: !18)
!161 = !DILocation(line: 110, column: 9, scope: !147)
!162 = !DILocalVariable(name: "res", scope: !147, file: !1, line: 111, type: !18)
!163 = !DILocation(line: 111, column: 9, scope: !147)
!164 = !DILocalVariable(name: "bytes", scope: !147, file: !1, line: 112, type: !111)
!165 = !DILocation(line: 112, column: 10, scope: !147)
!166 = !DILocation(line: 114, column: 15, scope: !147)
!167 = !DILocation(line: 114, column: 10, scope: !147)
!168 = !DILocation(line: 114, column: 8, scope: !147)
!169 = !DILocation(line: 115, column: 9, scope: !170)
!170 = distinct !DILexicalBlock(scope: !147, file: !1, line: 115, column: 9)
!171 = !DILocation(line: 115, column: 12, scope: !170)
!172 = !DILocation(line: 115, column: 9, scope: !147)
!173 = !DILocation(line: 116, column: 9, scope: !174)
!174 = distinct !DILexicalBlock(scope: !170, file: !1, line: 115, column: 17)
!175 = !DILocation(line: 119, column: 5, scope: !147)
!176 = !DILocation(line: 119, column: 12, scope: !147)
!177 = !DILocation(line: 119, column: 18, scope: !147)
!178 = !DILocation(line: 119, column: 16, scope: !147)
!179 = !DILocation(line: 120, column: 20, scope: !180)
!180 = distinct !DILexicalBlock(scope: !147, file: !1, line: 119, column: 24)
!181 = !DILocation(line: 120, column: 24, scope: !180)
!182 = !DILocation(line: 120, column: 15, scope: !180)
!183 = !DILocation(line: 120, column: 13, scope: !180)
!184 = !DILocation(line: 121, column: 13, scope: !185)
!185 = distinct !DILexicalBlock(scope: !180, file: !1, line: 121, column: 13)
!186 = !DILocation(line: 121, column: 17, scope: !185)
!187 = !DILocation(line: 121, column: 13, scope: !180)
!188 = !DILocation(line: 122, column: 13, scope: !185)
!189 = !DILocation(line: 123, column: 13, scope: !190)
!190 = distinct !DILexicalBlock(scope: !180, file: !1, line: 123, column: 13)
!191 = !DILocation(line: 123, column: 19, scope: !190)
!192 = !DILocation(line: 123, column: 17, scope: !190)
!193 = !DILocation(line: 123, column: 25, scope: !190)
!194 = !DILocation(line: 123, column: 23, scope: !190)
!195 = !DILocation(line: 123, column: 13, scope: !180)
!196 = !DILocation(line: 124, column: 13, scope: !190)
!197 = !DILocation(line: 127, column: 20, scope: !198)
!198 = distinct !DILexicalBlock(scope: !180, file: !1, line: 127, column: 13)
!199 = !DILocation(line: 127, column: 28, scope: !198)
!200 = !DILocation(line: 127, column: 32, scope: !198)
!201 = !DILocation(line: 127, column: 38, scope: !198)
!202 = !DILocation(line: 127, column: 13, scope: !198)
!203 = !DILocation(line: 127, column: 43, scope: !198)
!204 = !DILocation(line: 127, column: 13, scope: !180)
!205 = !DILocalVariable(name: "ix", scope: !206, file: !1, line: 128, type: !18)
!206 = distinct !DILexicalBlock(scope: !198, file: !1, line: 127, column: 49)
!207 = !DILocation(line: 128, column: 17, scope: !206)
!208 = !DILocation(line: 129, column: 21, scope: !209)
!209 = distinct !DILexicalBlock(scope: !206, file: !1, line: 129, column: 13)
!210 = !DILocation(line: 129, column: 18, scope: !209)
!211 = !DILocation(line: 129, column: 26, scope: !212)
!212 = distinct !DILexicalBlock(scope: !209, file: !1, line: 129, column: 13)
!213 = !DILocation(line: 129, column: 31, scope: !212)
!214 = !DILocation(line: 129, column: 29, scope: !212)
!215 = !DILocation(line: 129, column: 13, scope: !209)
!216 = !DILocation(line: 130, column: 27, scope: !217)
!217 = distinct !DILexicalBlock(scope: !212, file: !1, line: 130, column: 21)
!218 = !DILocation(line: 130, column: 21, scope: !217)
!219 = !DILocation(line: 130, column: 34, scope: !217)
!220 = !DILocation(line: 130, column: 38, scope: !217)
!221 = !DILocation(line: 130, column: 44, scope: !217)
!222 = !DILocation(line: 130, column: 42, scope: !217)
!223 = !DILocation(line: 130, column: 31, scope: !217)
!224 = !DILocation(line: 130, column: 21, scope: !212)
!225 = !DILocation(line: 131, column: 21, scope: !217)
!226 = !DILocation(line: 130, column: 46, scope: !217)
!227 = !DILocation(line: 129, column: 38, scope: !212)
!228 = !DILocation(line: 129, column: 13, scope: !212)
!229 = distinct !{!229, !215, !230, !231}
!230 = !DILocation(line: 131, column: 21, scope: !209)
!231 = !{!"llvm.loop.mustprogress"}
!232 = !DILocation(line: 132, column: 21, scope: !206)
!233 = !DILocation(line: 132, column: 63, scope: !206)
!234 = !DILocation(line: 132, column: 69, scope: !206)
!235 = !DILocation(line: 132, column: 67, scope: !206)
!236 = !DILocation(line: 132, column: 13, scope: !206)
!237 = !DILocation(line: 133, column: 19, scope: !206)
!238 = !DILocation(line: 133, column: 13, scope: !206)
!239 = !DILocation(line: 134, column: 13, scope: !206)
!240 = !DILocation(line: 136, column: 16, scope: !180)
!241 = !DILocation(line: 136, column: 13, scope: !180)
!242 = distinct !{!242, !175, !243, !231}
!243 = !DILocation(line: 137, column: 5, scope: !147)
!244 = !DILocation(line: 139, column: 11, scope: !147)
!245 = !DILocation(line: 139, column: 5, scope: !147)
!246 = !DILocation(line: 140, column: 5, scope: !147)
!247 = !DILocation(line: 141, column: 1, scope: !147)
!248 = distinct !DISubprogram(name: "memcmp", scope: !249, file: !249, line: 42, type: !250, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !19)
!249 = !DIFile(filename: "runtime/Freestanding/memcmp.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "6a01b8a9953e07eca8ec791434d4f8e8")
!250 = !DISubroutineType(types: !251)
!251 = !{!18, !252, !252, !254}
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !255, line: 46, baseType: !256)
!255 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!256 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!257 = !DILocalVariable(name: "s1", arg: 1, scope: !248, file: !249, line: 42, type: !252)
!258 = !DILocation(line: 42, column: 24, scope: !248)
!259 = !DILocalVariable(name: "s2", arg: 2, scope: !248, file: !249, line: 42, type: !252)
!260 = !DILocation(line: 42, column: 40, scope: !248)
!261 = !DILocalVariable(name: "n", arg: 3, scope: !248, file: !249, line: 42, type: !254)
!262 = !DILocation(line: 42, column: 51, scope: !248)
!263 = !DILocation(line: 43, column: 7, scope: !264)
!264 = distinct !DILexicalBlock(scope: !248, file: !249, line: 43, column: 7)
!265 = !DILocation(line: 43, column: 9, scope: !264)
!266 = !DILocation(line: 43, column: 7, scope: !248)
!267 = !DILocalVariable(name: "p1", scope: !268, file: !249, line: 44, type: !269)
!268 = distinct !DILexicalBlock(scope: !264, file: !249, line: 43, column: 15)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !271)
!271 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!272 = !DILocation(line: 44, column: 26, scope: !268)
!273 = !DILocation(line: 44, column: 31, scope: !268)
!274 = !DILocalVariable(name: "p2", scope: !268, file: !249, line: 44, type: !269)
!275 = !DILocation(line: 44, column: 36, scope: !268)
!276 = !DILocation(line: 44, column: 41, scope: !268)
!277 = !DILocation(line: 46, column: 5, scope: !268)
!278 = !DILocation(line: 47, column: 14, scope: !279)
!279 = distinct !DILexicalBlock(scope: !280, file: !249, line: 47, column: 11)
!280 = distinct !DILexicalBlock(scope: !268, file: !249, line: 46, column: 8)
!281 = !DILocation(line: 47, column: 11, scope: !279)
!282 = !DILocation(line: 47, column: 23, scope: !279)
!283 = !DILocation(line: 47, column: 20, scope: !279)
!284 = !DILocation(line: 47, column: 17, scope: !279)
!285 = !DILocation(line: 47, column: 11, scope: !280)
!286 = !DILocation(line: 48, column: 18, scope: !287)
!287 = distinct !DILexicalBlock(scope: !279, file: !249, line: 47, column: 27)
!288 = !DILocation(line: 48, column: 17, scope: !287)
!289 = !DILocation(line: 48, column: 26, scope: !287)
!290 = !DILocation(line: 48, column: 25, scope: !287)
!291 = !DILocation(line: 48, column: 23, scope: !287)
!292 = !DILocation(line: 48, column: 9, scope: !287)
!293 = !DILocation(line: 50, column: 14, scope: !268)
!294 = !DILocation(line: 50, column: 18, scope: !268)
!295 = !DILocation(line: 50, column: 5, scope: !280)
!296 = distinct !{!296, !277, !297, !231}
!297 = !DILocation(line: 50, column: 22, scope: !268)
!298 = !DILocation(line: 52, column: 3, scope: !248)
!299 = !DILocation(line: 53, column: 1, scope: !248)

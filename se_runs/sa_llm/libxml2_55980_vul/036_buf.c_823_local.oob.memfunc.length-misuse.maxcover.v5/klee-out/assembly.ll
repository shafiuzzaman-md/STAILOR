; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/036_buf.c_823_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/036_buf.c_823_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlBuf = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"buf_size\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"buf_use\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"str_len\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"content_init\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"str_init\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"(buf.use + str_len <= buf.size) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [101 x i8] c"se_runs/sa_llm/libxml2_55980_vul/036_buf.c_823_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"growing buffer\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"/home/shafi/tools/klee/runtime/Intrinsic/klee_range.c\00", align 1
@.str.1.11 = private unnamed_addr constant [14 x i8] c"invalid range\00", align 1
@.str.2.12 = private unnamed_addr constant [5 x i8] c"user\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !20 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlBuf, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlBuf* %2, metadata !25, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i32* %3, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i32* %4, metadata !37, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata i32* %5, metadata !39, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata i8** %6, metadata !41, metadata !DIExpression()), !dbg !42
  %10 = bitcast i32* %3 to i8*, !dbg !43
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !dbg !44
  %11 = bitcast i32* %4 to i8*, !dbg !45
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)), !dbg !46
  %12 = bitcast i32* %5 to i8*, !dbg !47
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)), !dbg !48
  %13 = load i32, i32* %3, align 4, !dbg !49
  %14 = icmp ule i32 %13, 1048576, !dbg !50
  %15 = zext i1 %14 to i32, !dbg !50
  %16 = sext i32 %15 to i64, !dbg !49
  call void @klee_assume(i64 noundef %16), !dbg !51
  %17 = load i32, i32* %4, align 4, !dbg !52
  %18 = load i32, i32* %3, align 4, !dbg !53
  %19 = icmp ule i32 %17, %18, !dbg !54
  %20 = zext i1 %19 to i32, !dbg !54
  %21 = sext i32 %20 to i64, !dbg !52
  call void @klee_assume(i64 noundef %21), !dbg !55
  %22 = load i32, i32* %5, align 4, !dbg !56
  %23 = icmp ule i32 %22, 1048576, !dbg !57
  %24 = zext i1 %23 to i32, !dbg !57
  %25 = sext i32 %24 to i64, !dbg !56
  call void @klee_assume(i64 noundef %25), !dbg !58
  %26 = load i32, i32* %3, align 4, !dbg !59
  %27 = zext i32 %26 to i64, !dbg !59
  %28 = call noalias i8* @malloc(i64 noundef %27) #7, !dbg !60
  %29 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 0, !dbg !61
  store i8* %28, i8** %29, align 8, !dbg !62
  %30 = load i32, i32* %4, align 4, !dbg !63
  %31 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 1, !dbg !64
  store i32 %30, i32* %31, align 8, !dbg !65
  %32 = load i32, i32* %3, align 4, !dbg !66
  %33 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 2, !dbg !67
  store i32 %32, i32* %33, align 4, !dbg !68
  %34 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 0, !dbg !69
  %35 = load i8*, i8** %34, align 8, !dbg !69
  %36 = icmp ne i8* %35, null, !dbg !71
  br i1 %36, label %37, label %59, !dbg !72

37:                                               ; preds = %0
  %38 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 1, !dbg !73
  %39 = load i32, i32* %38, align 8, !dbg !73
  %40 = icmp ugt i32 %39, 0, !dbg !74
  br i1 %40, label %41, label %59, !dbg !75

41:                                               ; preds = %37
  call void @llvm.dbg.declare(metadata i32* %7, metadata !76, metadata !DIExpression()), !dbg !79
  store i32 0, i32* %7, align 4, !dbg !79
  br label %42, !dbg !80

42:                                               ; preds = %55, %41
  %43 = load i32, i32* %7, align 4, !dbg !81
  %44 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 1, !dbg !83
  %45 = load i32, i32* %44, align 8, !dbg !83
  %46 = icmp ult i32 %43, %45, !dbg !84
  br i1 %46, label %47, label %58, !dbg !85

47:                                               ; preds = %42
  %48 = call i32 @klee_range(i32 noundef 0, i32 noundef 256, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0)), !dbg !86
  %49 = trunc i32 %48 to i8, !dbg !86
  %50 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 0, !dbg !88
  %51 = load i8*, i8** %50, align 8, !dbg !88
  %52 = load i32, i32* %7, align 4, !dbg !89
  %53 = zext i32 %52 to i64, !dbg !90
  %54 = getelementptr inbounds i8, i8* %51, i64 %53, !dbg !90
  store i8 %49, i8* %54, align 1, !dbg !91
  br label %55, !dbg !92

55:                                               ; preds = %47
  %56 = load i32, i32* %7, align 4, !dbg !93
  %57 = add i32 %56, 1, !dbg !93
  store i32 %57, i32* %7, align 4, !dbg !93
  br label %42, !dbg !94, !llvm.loop !95

58:                                               ; preds = %42
  br label %59, !dbg !98

59:                                               ; preds = %58, %37, %0
  %60 = load i32, i32* %5, align 4, !dbg !99
  %61 = add i32 %60, 1, !dbg !100
  %62 = zext i32 %61 to i64, !dbg !99
  %63 = call noalias i8* @malloc(i64 noundef %62) #7, !dbg !101
  store i8* %63, i8** %6, align 8, !dbg !102
  %64 = load i8*, i8** %6, align 8, !dbg !103
  %65 = icmp ne i8* %64, null, !dbg !103
  br i1 %65, label %66, label %86, !dbg !105

66:                                               ; preds = %59
  call void @llvm.dbg.declare(metadata i32* %8, metadata !106, metadata !DIExpression()), !dbg !109
  store i32 0, i32* %8, align 4, !dbg !109
  br label %67, !dbg !110

67:                                               ; preds = %78, %66
  %68 = load i32, i32* %8, align 4, !dbg !111
  %69 = load i32, i32* %5, align 4, !dbg !113
  %70 = icmp ult i32 %68, %69, !dbg !114
  br i1 %70, label %71, label %81, !dbg !115

71:                                               ; preds = %67
  %72 = call i32 @klee_range(i32 noundef 0, i32 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)), !dbg !116
  %73 = trunc i32 %72 to i8, !dbg !116
  %74 = load i8*, i8** %6, align 8, !dbg !118
  %75 = load i32, i32* %8, align 4, !dbg !119
  %76 = zext i32 %75 to i64, !dbg !118
  %77 = getelementptr inbounds i8, i8* %74, i64 %76, !dbg !118
  store i8 %73, i8* %77, align 1, !dbg !120
  br label %78, !dbg !121

78:                                               ; preds = %71
  %79 = load i32, i32* %8, align 4, !dbg !122
  %80 = add i32 %79, 1, !dbg !122
  store i32 %80, i32* %8, align 4, !dbg !122
  br label %67, !dbg !123, !llvm.loop !124

81:                                               ; preds = %67
  %82 = load i8*, i8** %6, align 8, !dbg !126
  %83 = load i32, i32* %5, align 4, !dbg !127
  %84 = zext i32 %83 to i64, !dbg !126
  %85 = getelementptr inbounds i8, i8* %82, i64 %84, !dbg !126
  store i8 0, i8* %85, align 1, !dbg !128
  br label %86, !dbg !129

86:                                               ; preds = %81, %59
  %87 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 0, !dbg !130
  %88 = load i8*, i8** %87, align 8, !dbg !130
  %89 = icmp ne i8* %88, null, !dbg !131
  %90 = zext i1 %89 to i32, !dbg !131
  %91 = sext i32 %90 to i64, !dbg !132
  call void @klee_assume(i64 noundef %91), !dbg !133
  %92 = load i8*, i8** %6, align 8, !dbg !134
  %93 = icmp ne i8* %92, null, !dbg !135
  %94 = zext i1 %93 to i32, !dbg !135
  %95 = sext i32 %94 to i64, !dbg !134
  call void @klee_assume(i64 noundef %95), !dbg !136
  %96 = load i32, i32* %5, align 4, !dbg !137
  %97 = icmp ugt i32 %96, 0, !dbg !138
  %98 = zext i1 %97 to i32, !dbg !138
  %99 = sext i32 %98 to i64, !dbg !137
  call void @klee_assume(i64 noundef %99), !dbg !139
  %100 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 1, !dbg !140
  %101 = load i32, i32* %100, align 8, !dbg !140
  %102 = load i32, i32* %5, align 4, !dbg !141
  %103 = add i32 %101, %102, !dbg !142
  %104 = add i32 %103, 1, !dbg !143
  %105 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 2, !dbg !144
  %106 = load i32, i32* %105, align 4, !dbg !144
  %107 = icmp ule i32 %104, %106, !dbg !145
  %108 = zext i1 %107 to i32, !dbg !145
  %109 = sext i32 %108 to i64, !dbg !146
  call void @klee_assume(i64 noundef %109), !dbg !147
  call void @llvm.dbg.declare(metadata i32* %9, metadata !148, metadata !DIExpression()), !dbg !149
  %110 = load i8*, i8** %6, align 8, !dbg !150
  %111 = load i32, i32* %5, align 4, !dbg !151
  %112 = call i32 @xmlBufAdd(%struct._xmlBuf* noundef %2, i8* noundef %110, i32 noundef %111), !dbg !152
  store i32 %112, i32* %9, align 4, !dbg !149
  %113 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 1, !dbg !153
  %114 = load i32, i32* %113, align 8, !dbg !153
  %115 = load i32, i32* %5, align 4, !dbg !153
  %116 = add i32 %114, %115, !dbg !153
  %117 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 2, !dbg !153
  %118 = load i32, i32* %117, align 4, !dbg !153
  %119 = icmp ule i32 %116, %118, !dbg !153
  br i1 %119, label %120, label %122, !dbg !153

120:                                              ; preds = %86
  br i1 true, label %121, label %122, !dbg !153

121:                                              ; preds = %120
  br label %124, !dbg !153

122:                                              ; preds = %120, %86
  %123 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([101 x i8], [101 x i8]* @.str.7, i64 0, i64 0), i32 noundef 110, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !153
  br label %124, !dbg !153

124:                                              ; preds = %122, %121
  %125 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([101 x i8], [101 x i8]* @.str.7, i64 0, i64 0), i32 noundef 113, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !154
  %126 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 0, !dbg !155
  %127 = load i8*, i8** %126, align 8, !dbg !155
  call void @free(i8* noundef %127) #7, !dbg !156
  %128 = load i8*, i8** %6, align 8, !dbg !157
  call void @free(i8* noundef %128) #7, !dbg !158
  %129 = load i32, i32* %9, align 4, !dbg !159
  ret i32 %129, !dbg !160
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xmlBufAdd(%struct._xmlBuf* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !161 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._xmlBuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct._xmlBuf* %0, %struct._xmlBuf** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlBuf** %5, metadata !167, metadata !DIExpression()), !dbg !168
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !169, metadata !DIExpression()), !dbg !170
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !171, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.declare(metadata i32* %8, metadata !173, metadata !DIExpression()), !dbg !174
  %9 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !175
  %10 = icmp eq %struct._xmlBuf* %9, null, !dbg !177
  br i1 %10, label %14, label %11, !dbg !178

11:                                               ; preds = %3
  %12 = load i8*, i8** %6, align 8, !dbg !179
  %13 = icmp eq i8* %12, null, !dbg !180
  br i1 %13, label %14, label %15, !dbg !181

14:                                               ; preds = %11, %3
  store i32 -1, i32* %4, align 4, !dbg !182
  br label %85, !dbg !182

15:                                               ; preds = %11
  %16 = load i32, i32* %7, align 4, !dbg !183
  %17 = icmp eq i32 %16, 0, !dbg !185
  br i1 %17, label %18, label %19, !dbg !186

18:                                               ; preds = %15
  store i32 0, i32* %4, align 4, !dbg !187
  br label %85, !dbg !187

19:                                               ; preds = %15
  %20 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !188
  %21 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %20, i32 0, i32 0, !dbg !190
  %22 = load i8*, i8** %21, align 8, !dbg !190
  %23 = icmp eq i8* %22, null, !dbg !191
  br i1 %23, label %24, label %33, !dbg !192

24:                                               ; preds = %19
  %25 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !193
  %26 = load i32, i32* %7, align 4, !dbg !196
  %27 = add i32 %26, 1, !dbg !197
  %28 = call i32 @xmlBufResize(%struct._xmlBuf* noundef %25, i32 noundef %27), !dbg !198
  %29 = icmp ne i32 %28, 0, !dbg !198
  br i1 %29, label %32, label %30, !dbg !199

30:                                               ; preds = %24
  %31 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !200
  call void @xmlBufMemoryError(%struct._xmlBuf* noundef %31, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0)), !dbg !202
  store i32 1, i32* %4, align 4, !dbg !203
  br label %85, !dbg !203

32:                                               ; preds = %24
  br label %59, !dbg !204

33:                                               ; preds = %19
  %34 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !205
  %35 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %34, i32 0, i32 1, !dbg !207
  %36 = load i32, i32* %35, align 8, !dbg !207
  %37 = load i32, i32* %7, align 4, !dbg !208
  %38 = add i32 %36, %37, !dbg !209
  %39 = add i32 %38, 1, !dbg !210
  %40 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !211
  %41 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %40, i32 0, i32 2, !dbg !212
  %42 = load i32, i32* %41, align 4, !dbg !212
  %43 = icmp ugt i32 %39, %42, !dbg !213
  br i1 %43, label %44, label %58, !dbg !214

44:                                               ; preds = %33
  %45 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !215
  %46 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %45, i32 0, i32 1, !dbg !217
  %47 = load i32, i32* %46, align 8, !dbg !217
  %48 = load i32, i32* %7, align 4, !dbg !218
  %49 = add i32 %47, %48, !dbg !219
  %50 = add i32 %49, 1, !dbg !220
  store i32 %50, i32* %8, align 4, !dbg !221
  %51 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !222
  %52 = load i32, i32* %8, align 4, !dbg !224
  %53 = call i32 @xmlBufResize(%struct._xmlBuf* noundef %51, i32 noundef %52), !dbg !225
  %54 = icmp ne i32 %53, 0, !dbg !225
  br i1 %54, label %57, label %55, !dbg !226

55:                                               ; preds = %44
  %56 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !227
  call void @xmlBufMemoryError(%struct._xmlBuf* noundef %56, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0)), !dbg !229
  store i32 1, i32* %4, align 4, !dbg !230
  br label %85, !dbg !230

57:                                               ; preds = %44
  br label %58, !dbg !231

58:                                               ; preds = %57, %33
  br label %59

59:                                               ; preds = %58, %32
  %60 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !232
  %61 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %60, i32 0, i32 0, !dbg !233
  %62 = load i8*, i8** %61, align 8, !dbg !233
  %63 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !234
  %64 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %63, i32 0, i32 1, !dbg !235
  %65 = load i32, i32* %64, align 8, !dbg !235
  %66 = zext i32 %65 to i64, !dbg !232
  %67 = getelementptr inbounds i8, i8* %62, i64 %66, !dbg !232
  %68 = load i8*, i8** %6, align 8, !dbg !236
  %69 = load i32, i32* %7, align 4, !dbg !237
  %70 = zext i32 %69 to i64, !dbg !237
  %71 = call i8* @memmove(i8* %67, i8* %68, i64 %70), !dbg !238
  %72 = load i32, i32* %7, align 4, !dbg !239
  %73 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !240
  %74 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %73, i32 0, i32 1, !dbg !241
  %75 = load i32, i32* %74, align 8, !dbg !242
  %76 = add i32 %75, %72, !dbg !242
  store i32 %76, i32* %74, align 8, !dbg !242
  %77 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !243
  %78 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %77, i32 0, i32 0, !dbg !244
  %79 = load i8*, i8** %78, align 8, !dbg !244
  %80 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !245
  %81 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %80, i32 0, i32 1, !dbg !246
  %82 = load i32, i32* %81, align 8, !dbg !246
  %83 = zext i32 %82 to i64, !dbg !243
  %84 = getelementptr inbounds i8, i8* %79, i64 %83, !dbg !243
  store i8 0, i8* %84, align 1, !dbg !247
  store i32 0, i32* %4, align 4, !dbg !248
  br label %85, !dbg !248

85:                                               ; preds = %59, %55, %30, %18, %14
  %86 = load i32, i32* %4, align 4, !dbg !249
  ret i32 %86, !dbg !249
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xmlBufResize(%struct._xmlBuf* noundef %0, i32 noundef %1) #0 !dbg !250 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlBuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct._xmlBuf* %0, %struct._xmlBuf** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlBuf** %4, metadata !253, metadata !DIExpression()), !dbg !254
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !255, metadata !DIExpression()), !dbg !256
  %7 = load i32, i32* %5, align 4, !dbg !257
  %8 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !259
  %9 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %8, i32 0, i32 2, !dbg !260
  %10 = load i32, i32* %9, align 4, !dbg !260
  %11 = icmp ule i32 %7, %10, !dbg !261
  br i1 %11, label %12, label %13, !dbg !262

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4, !dbg !263
  br label %50, !dbg !263

13:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %6, metadata !264, metadata !DIExpression()), !dbg !265
  %14 = load i32, i32* %5, align 4, !dbg !266
  %15 = zext i32 %14 to i64, !dbg !266
  %16 = call noalias i8* @malloc(i64 noundef %15) #7, !dbg !267
  store i8* %16, i8** %6, align 8, !dbg !265
  %17 = load i8*, i8** %6, align 8, !dbg !268
  %18 = icmp ne i8* %17, null, !dbg !268
  br i1 %18, label %20, label %19, !dbg !270

19:                                               ; preds = %13
  store i32 0, i32* %3, align 4, !dbg !271
  br label %50, !dbg !271

20:                                               ; preds = %13
  %21 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !272
  %22 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %21, i32 0, i32 0, !dbg !274
  %23 = load i8*, i8** %22, align 8, !dbg !274
  %24 = icmp ne i8* %23, null, !dbg !272
  br i1 %24, label %25, label %40, !dbg !275

25:                                               ; preds = %20
  %26 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !276
  %27 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %26, i32 0, i32 1, !dbg !277
  %28 = load i32, i32* %27, align 8, !dbg !277
  %29 = icmp ugt i32 %28, 0, !dbg !278
  br i1 %29, label %30, label %40, !dbg !279

30:                                               ; preds = %25
  %31 = load i8*, i8** %6, align 8, !dbg !280
  %32 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !282
  %33 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %32, i32 0, i32 0, !dbg !283
  %34 = load i8*, i8** %33, align 8, !dbg !283
  %35 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !284
  %36 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %35, i32 0, i32 1, !dbg !285
  %37 = load i32, i32* %36, align 8, !dbg !285
  %38 = zext i32 %37 to i64, !dbg !284
  %39 = call i8* @memcpy(i8* %31, i8* %34, i64 %38), !dbg !286
  br label %40, !dbg !287

40:                                               ; preds = %30, %25, %20
  %41 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !288
  %42 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %41, i32 0, i32 0, !dbg !289
  %43 = load i8*, i8** %42, align 8, !dbg !289
  call void @free(i8* noundef %43) #7, !dbg !290
  %44 = load i8*, i8** %6, align 8, !dbg !291
  %45 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !292
  %46 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %45, i32 0, i32 0, !dbg !293
  store i8* %44, i8** %46, align 8, !dbg !294
  %47 = load i32, i32* %5, align 4, !dbg !295
  %48 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !296
  %49 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %48, i32 0, i32 2, !dbg !297
  store i32 %47, i32* %49, align 4, !dbg !298
  store i32 1, i32* %3, align 4, !dbg !299
  br label %50, !dbg !299

50:                                               ; preds = %40, %19, %12
  %51 = load i32, i32* %3, align 4, !dbg !300
  ret i32 %51, !dbg !300
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmlBufMemoryError(%struct._xmlBuf* noundef %0, i8* noundef %1) #0 !dbg !301 {
  %3 = alloca %struct._xmlBuf*, align 8
  %4 = alloca i8*, align 8
  store %struct._xmlBuf* %0, %struct._xmlBuf** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlBuf** %3, metadata !304, metadata !DIExpression()), !dbg !305
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !306, metadata !DIExpression()), !dbg !307
  %5 = load %struct._xmlBuf*, %struct._xmlBuf** %3, align 8, !dbg !308
  %6 = load i8*, i8** %4, align 8, !dbg !309
  ret void, !dbg !310
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @klee_range(i32 noundef %0, i32 noundef %1, i8* noundef %2) #6 !dbg !311 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !315, metadata !DIExpression()), !dbg !316
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !317, metadata !DIExpression()), !dbg !318
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !319, metadata !DIExpression()), !dbg !320
  call void @llvm.dbg.declare(metadata i32* %8, metadata !321, metadata !DIExpression()), !dbg !322
  %9 = load i32, i32* %5, align 4, !dbg !323
  %10 = load i32, i32* %6, align 4, !dbg !325
  %11 = icmp sge i32 %9, %10, !dbg !326
  br i1 %11, label %12, label %13, !dbg !327

12:                                               ; preds = %3
  call void @klee_report_error(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i64 0, i64 0), i32 noundef 16, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.12, i64 0, i64 0)) #8, !dbg !328
  unreachable, !dbg !328

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4, !dbg !329
  %15 = add nsw i32 %14, 1, !dbg !331
  %16 = load i32, i32* %6, align 4, !dbg !332
  %17 = icmp eq i32 %15, %16, !dbg !333
  br i1 %17, label %18, label %20, !dbg !334

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4, !dbg !335
  store i32 %19, i32* %4, align 4, !dbg !337
  br label %44, !dbg !337

20:                                               ; preds = %13
  %21 = bitcast i32* %8 to i8*, !dbg !338
  %22 = load i8*, i8** %7, align 8, !dbg !340
  call void @klee_make_symbolic(i8* noundef %21, i64 noundef 4, i8* noundef %22), !dbg !341
  %23 = load i32, i32* %5, align 4, !dbg !342
  %24 = icmp eq i32 %23, 0, !dbg !344
  br i1 %24, label %25, label %31, !dbg !345

25:                                               ; preds = %20
  %26 = load i32, i32* %8, align 4, !dbg !346
  %27 = load i32, i32* %6, align 4, !dbg !348
  %28 = icmp ult i32 %26, %27, !dbg !349
  %29 = zext i1 %28 to i32, !dbg !349
  %30 = sext i32 %29 to i64, !dbg !350
  call void @klee_assume(i64 noundef %30), !dbg !351
  br label %42, !dbg !352

31:                                               ; preds = %20
  %32 = load i32, i32* %5, align 4, !dbg !353
  %33 = load i32, i32* %8, align 4, !dbg !355
  %34 = icmp sle i32 %32, %33, !dbg !356
  %35 = zext i1 %34 to i32, !dbg !356
  %36 = sext i32 %35 to i64, !dbg !353
  call void @klee_assume(i64 noundef %36), !dbg !357
  %37 = load i32, i32* %8, align 4, !dbg !358
  %38 = load i32, i32* %6, align 4, !dbg !359
  %39 = icmp slt i32 %37, %38, !dbg !360
  %40 = zext i1 %39 to i32, !dbg !360
  %41 = sext i32 %40 to i64, !dbg !358
  call void @klee_assume(i64 noundef %41), !dbg !361
  br label %42

42:                                               ; preds = %31, %25
  %43 = load i32, i32* %8, align 4, !dbg !362
  store i32 %43, i32* %4, align 4, !dbg !363
  br label %44, !dbg !363

44:                                               ; preds = %42, %18
  %45 = load i32, i32* %4, align 4, !dbg !364
  ret i32 %45, !dbg !364
}

; Function Attrs: noreturn
declare void @klee_report_error(i8* noundef, i32 noundef, i8* noundef, i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !365 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !374, metadata !DIExpression()), !dbg !375
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !376, metadata !DIExpression()), !dbg !377
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !378, metadata !DIExpression()), !dbg !379
  call void @llvm.dbg.declare(metadata i8** %7, metadata !380, metadata !DIExpression()), !dbg !381
  %9 = load i8*, i8** %4, align 8, !dbg !382
  store i8* %9, i8** %7, align 8, !dbg !381
  call void @llvm.dbg.declare(metadata i8** %8, metadata !383, metadata !DIExpression()), !dbg !384
  %10 = load i8*, i8** %5, align 8, !dbg !385
  store i8* %10, i8** %8, align 8, !dbg !384
  br label %11, !dbg !386

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !387
  %13 = add i64 %12, -1, !dbg !387
  store i64 %13, i64* %6, align 8, !dbg !387
  %14 = icmp ugt i64 %12, 0, !dbg !388
  br i1 %14, label %15, label %21, !dbg !386

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !389
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !389
  store i8* %17, i8** %8, align 8, !dbg !389
  %18 = load i8, i8* %16, align 1, !dbg !390
  %19 = load i8*, i8** %7, align 8, !dbg !391
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !391
  store i8* %20, i8** %7, align 8, !dbg !391
  store i8 %18, i8* %19, align 1, !dbg !392
  br label %11, !dbg !386, !llvm.loop !393

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !394
  ret i8* %22, !dbg !395
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memmove(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !396 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !398, metadata !DIExpression()), !dbg !399
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !400, metadata !DIExpression()), !dbg !401
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !402, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.declare(metadata i8** %8, metadata !404, metadata !DIExpression()), !dbg !405
  %10 = load i8*, i8** %5, align 8, !dbg !406
  store i8* %10, i8** %8, align 8, !dbg !405
  call void @llvm.dbg.declare(metadata i8** %9, metadata !407, metadata !DIExpression()), !dbg !408
  %11 = load i8*, i8** %6, align 8, !dbg !409
  store i8* %11, i8** %9, align 8, !dbg !408
  %12 = load i8*, i8** %6, align 8, !dbg !410
  %13 = load i8*, i8** %5, align 8, !dbg !412
  %14 = icmp eq i8* %12, %13, !dbg !413
  br i1 %14, label %15, label %17, !dbg !414

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8, !dbg !415
  store i8* %16, i8** %4, align 8, !dbg !416
  br label %52, !dbg !416

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8, !dbg !417
  %19 = load i8*, i8** %5, align 8, !dbg !419
  %20 = icmp ugt i8* %18, %19, !dbg !420
  br i1 %20, label %21, label %31, !dbg !421

21:                                               ; preds = %17, %25
  %22 = load i64, i64* %7, align 8, !dbg !422
  %23 = add i64 %22, -1, !dbg !422
  store i64 %23, i64* %7, align 8, !dbg !422
  %24 = icmp ne i64 %22, 0, !dbg !424
  br i1 %24, label %25, label %50, !dbg !424

25:                                               ; preds = %21
  %26 = load i8*, i8** %9, align 8, !dbg !425
  %27 = getelementptr inbounds i8, i8* %26, i32 1, !dbg !425
  store i8* %27, i8** %9, align 8, !dbg !425
  %28 = load i8, i8* %26, align 1, !dbg !426
  %29 = load i8*, i8** %8, align 8, !dbg !427
  %30 = getelementptr inbounds i8, i8* %29, i32 1, !dbg !427
  store i8* %30, i8** %8, align 8, !dbg !427
  store i8 %28, i8* %29, align 1, !dbg !428
  br label %21, !dbg !424, !llvm.loop !429

31:                                               ; preds = %17
  %32 = load i64, i64* %7, align 8, !dbg !430
  %33 = sub i64 %32, 1, !dbg !432
  %34 = load i8*, i8** %8, align 8, !dbg !433
  %35 = getelementptr inbounds i8, i8* %34, i64 %33, !dbg !433
  store i8* %35, i8** %8, align 8, !dbg !433
  %36 = load i64, i64* %7, align 8, !dbg !434
  %37 = sub i64 %36, 1, !dbg !435
  %38 = load i8*, i8** %9, align 8, !dbg !436
  %39 = getelementptr inbounds i8, i8* %38, i64 %37, !dbg !436
  store i8* %39, i8** %9, align 8, !dbg !436
  br label %40, !dbg !437

40:                                               ; preds = %44, %31
  %41 = load i64, i64* %7, align 8, !dbg !438
  %42 = add i64 %41, -1, !dbg !438
  store i64 %42, i64* %7, align 8, !dbg !438
  %43 = icmp ne i64 %41, 0, !dbg !437
  br i1 %43, label %44, label %50, !dbg !437

44:                                               ; preds = %40
  %45 = load i8*, i8** %9, align 8, !dbg !439
  %46 = getelementptr inbounds i8, i8* %45, i32 -1, !dbg !439
  store i8* %46, i8** %9, align 8, !dbg !439
  %47 = load i8, i8* %45, align 1, !dbg !440
  %48 = load i8*, i8** %8, align 8, !dbg !441
  %49 = getelementptr inbounds i8, i8* %48, i32 -1, !dbg !441
  store i8* %49, i8** %8, align 8, !dbg !441
  store i8 %47, i8* %48, align 1, !dbg !442
  br label %40, !dbg !437, !llvm.loop !443

50:                                               ; preds = %40, %21
  %51 = load i8*, i8** %5, align 8, !dbg !444
  store i8* %51, i8** %4, align 8, !dbg !445
  br label %52, !dbg !445

52:                                               ; preds = %50, %15
  %53 = load i8*, i8** %4, align 8, !dbg !446
  ret i8* %53, !dbg !446
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noreturn }

!llvm.dbg.cu = !{!0, !4, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19, !19, !19, !19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/036_buf.c_823_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "b034c6774c146991d62449ebe6fb8a2d")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = distinct !DICompileUnit(language: DW_LANG_C89, file: !5, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !6, splitDebugInlining: false, nameTableKind: None)
!5 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Intrinsic/klee_range.c", directory: "/home/shafi/tools/klee/build/runtime/Intrinsic", checksumkind: CSK_MD5, checksum: "967b9ed6e7b3db2f47ee33010ec31c43")
!6 = !{!7}
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = distinct !DICompileUnit(language: DW_LANG_C99, file: !9, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!9 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !11, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!11 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memmove.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "6cd27189cdce56ce74ae860a315e13f2")
!12 = !{i32 7, !"Dwarf Version", i32 5}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{i32 7, !"PIC Level", i32 2}
!16 = !{i32 7, !"PIE Level", i32 2}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"Ubuntu clang version 14.0.6"}
!20 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 63, type: !21, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!21 = !DISubroutineType(types: !22)
!22 = !{!23}
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !{}
!25 = !DILocalVariable(name: "buf", scope: !20, file: !1, line: 64, type: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBuf", file: !1, line: 10, baseType: !27)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlBuf", file: !1, line: 11, size: 128, elements: !28)
!28 = !{!29, !32, !33}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !27, file: !1, line: 12, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !27, file: !1, line: 13, baseType: !7, size: 32, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !27, file: !1, line: 14, baseType: !7, size: 32, offset: 96)
!34 = !DILocation(line: 64, column: 12, scope: !20)
!35 = !DILocalVariable(name: "buf_size", scope: !20, file: !1, line: 65, type: !7)
!36 = !DILocation(line: 65, column: 18, scope: !20)
!37 = !DILocalVariable(name: "buf_use", scope: !20, file: !1, line: 65, type: !7)
!38 = !DILocation(line: 65, column: 28, scope: !20)
!39 = !DILocalVariable(name: "str_len", scope: !20, file: !1, line: 65, type: !7)
!40 = !DILocation(line: 65, column: 37, scope: !20)
!41 = !DILocalVariable(name: "str", scope: !20, file: !1, line: 66, type: !30)
!42 = !DILocation(line: 66, column: 11, scope: !20)
!43 = !DILocation(line: 69, column: 24, scope: !20)
!44 = !DILocation(line: 69, column: 5, scope: !20)
!45 = !DILocation(line: 70, column: 24, scope: !20)
!46 = !DILocation(line: 70, column: 5, scope: !20)
!47 = !DILocation(line: 71, column: 24, scope: !20)
!48 = !DILocation(line: 71, column: 5, scope: !20)
!49 = !DILocation(line: 74, column: 17, scope: !20)
!50 = !DILocation(line: 74, column: 26, scope: !20)
!51 = !DILocation(line: 74, column: 5, scope: !20)
!52 = !DILocation(line: 75, column: 17, scope: !20)
!53 = !DILocation(line: 75, column: 28, scope: !20)
!54 = !DILocation(line: 75, column: 25, scope: !20)
!55 = !DILocation(line: 75, column: 5, scope: !20)
!56 = !DILocation(line: 76, column: 17, scope: !20)
!57 = !DILocation(line: 76, column: 25, scope: !20)
!58 = !DILocation(line: 76, column: 5, scope: !20)
!59 = !DILocation(line: 79, column: 26, scope: !20)
!60 = !DILocation(line: 79, column: 19, scope: !20)
!61 = !DILocation(line: 79, column: 9, scope: !20)
!62 = !DILocation(line: 79, column: 17, scope: !20)
!63 = !DILocation(line: 80, column: 15, scope: !20)
!64 = !DILocation(line: 80, column: 9, scope: !20)
!65 = !DILocation(line: 80, column: 13, scope: !20)
!66 = !DILocation(line: 81, column: 16, scope: !20)
!67 = !DILocation(line: 81, column: 9, scope: !20)
!68 = !DILocation(line: 81, column: 14, scope: !20)
!69 = !DILocation(line: 84, column: 13, scope: !70)
!70 = distinct !DILexicalBlock(scope: !20, file: !1, line: 84, column: 9)
!71 = !DILocation(line: 84, column: 9, scope: !70)
!72 = !DILocation(line: 84, column: 21, scope: !70)
!73 = !DILocation(line: 84, column: 28, scope: !70)
!74 = !DILocation(line: 84, column: 32, scope: !70)
!75 = !DILocation(line: 84, column: 9, scope: !20)
!76 = !DILocalVariable(name: "i", scope: !77, file: !1, line: 85, type: !7)
!77 = distinct !DILexicalBlock(scope: !78, file: !1, line: 85, column: 9)
!78 = distinct !DILexicalBlock(scope: !70, file: !1, line: 84, column: 37)
!79 = !DILocation(line: 85, column: 27, scope: !77)
!80 = !DILocation(line: 85, column: 14, scope: !77)
!81 = !DILocation(line: 85, column: 34, scope: !82)
!82 = distinct !DILexicalBlock(scope: !77, file: !1, line: 85, column: 9)
!83 = !DILocation(line: 85, column: 42, scope: !82)
!84 = !DILocation(line: 85, column: 36, scope: !82)
!85 = !DILocation(line: 85, column: 9, scope: !77)
!86 = !DILocation(line: 86, column: 30, scope: !87)
!87 = distinct !DILexicalBlock(scope: !82, file: !1, line: 85, column: 52)
!88 = !DILocation(line: 86, column: 17, scope: !87)
!89 = !DILocation(line: 86, column: 25, scope: !87)
!90 = !DILocation(line: 86, column: 13, scope: !87)
!91 = !DILocation(line: 86, column: 28, scope: !87)
!92 = !DILocation(line: 87, column: 9, scope: !87)
!93 = !DILocation(line: 85, column: 48, scope: !82)
!94 = !DILocation(line: 85, column: 9, scope: !82)
!95 = distinct !{!95, !85, !96, !97}
!96 = !DILocation(line: 87, column: 9, scope: !77)
!97 = !{!"llvm.loop.mustprogress"}
!98 = !DILocation(line: 88, column: 5, scope: !78)
!99 = !DILocation(line: 91, column: 18, scope: !20)
!100 = !DILocation(line: 91, column: 26, scope: !20)
!101 = !DILocation(line: 91, column: 11, scope: !20)
!102 = !DILocation(line: 91, column: 9, scope: !20)
!103 = !DILocation(line: 92, column: 9, scope: !104)
!104 = distinct !DILexicalBlock(scope: !20, file: !1, line: 92, column: 9)
!105 = !DILocation(line: 92, column: 9, scope: !20)
!106 = !DILocalVariable(name: "i", scope: !107, file: !1, line: 93, type: !7)
!107 = distinct !DILexicalBlock(scope: !108, file: !1, line: 93, column: 9)
!108 = distinct !DILexicalBlock(scope: !104, file: !1, line: 92, column: 14)
!109 = !DILocation(line: 93, column: 27, scope: !107)
!110 = !DILocation(line: 93, column: 14, scope: !107)
!111 = !DILocation(line: 93, column: 34, scope: !112)
!112 = distinct !DILexicalBlock(scope: !107, file: !1, line: 93, column: 9)
!113 = !DILocation(line: 93, column: 38, scope: !112)
!114 = !DILocation(line: 93, column: 36, scope: !112)
!115 = !DILocation(line: 93, column: 9, scope: !107)
!116 = !DILocation(line: 94, column: 22, scope: !117)
!117 = distinct !DILexicalBlock(scope: !112, file: !1, line: 93, column: 52)
!118 = !DILocation(line: 94, column: 13, scope: !117)
!119 = !DILocation(line: 94, column: 17, scope: !117)
!120 = !DILocation(line: 94, column: 20, scope: !117)
!121 = !DILocation(line: 95, column: 9, scope: !117)
!122 = !DILocation(line: 93, column: 48, scope: !112)
!123 = !DILocation(line: 93, column: 9, scope: !112)
!124 = distinct !{!124, !115, !125, !97}
!125 = !DILocation(line: 95, column: 9, scope: !107)
!126 = !DILocation(line: 96, column: 9, scope: !108)
!127 = !DILocation(line: 96, column: 13, scope: !108)
!128 = !DILocation(line: 96, column: 22, scope: !108)
!129 = !DILocation(line: 97, column: 5, scope: !108)
!130 = !DILocation(line: 100, column: 21, scope: !20)
!131 = !DILocation(line: 100, column: 29, scope: !20)
!132 = !DILocation(line: 100, column: 17, scope: !20)
!133 = !DILocation(line: 100, column: 5, scope: !20)
!134 = !DILocation(line: 101, column: 17, scope: !20)
!135 = !DILocation(line: 101, column: 21, scope: !20)
!136 = !DILocation(line: 101, column: 5, scope: !20)
!137 = !DILocation(line: 102, column: 17, scope: !20)
!138 = !DILocation(line: 102, column: 25, scope: !20)
!139 = !DILocation(line: 102, column: 5, scope: !20)
!140 = !DILocation(line: 103, column: 21, scope: !20)
!141 = !DILocation(line: 103, column: 27, scope: !20)
!142 = !DILocation(line: 103, column: 25, scope: !20)
!143 = !DILocation(line: 103, column: 35, scope: !20)
!144 = !DILocation(line: 103, column: 46, scope: !20)
!145 = !DILocation(line: 103, column: 39, scope: !20)
!146 = !DILocation(line: 103, column: 17, scope: !20)
!147 = !DILocation(line: 103, column: 5, scope: !20)
!148 = !DILocalVariable(name: "result", scope: !20, file: !1, line: 106, type: !23)
!149 = !DILocation(line: 106, column: 9, scope: !20)
!150 = !DILocation(line: 106, column: 34, scope: !20)
!151 = !DILocation(line: 106, column: 39, scope: !20)
!152 = !DILocation(line: 106, column: 18, scope: !20)
!153 = !DILocation(line: 110, column: 5, scope: !20)
!154 = !DILocation(line: 113, column: 5, scope: !20)
!155 = !DILocation(line: 116, column: 14, scope: !20)
!156 = !DILocation(line: 116, column: 5, scope: !20)
!157 = !DILocation(line: 117, column: 10, scope: !20)
!158 = !DILocation(line: 117, column: 5, scope: !20)
!159 = !DILocation(line: 119, column: 12, scope: !20)
!160 = !DILocation(line: 119, column: 5, scope: !20)
!161 = distinct !DISubprogram(name: "xmlBufAdd", scope: !1, file: !1, line: 36, type: !162, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !24)
!162 = !DISubroutineType(types: !163)
!163 = !{!23, !164, !165, !7}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!167 = !DILocalVariable(name: "buf", arg: 1, scope: !161, file: !1, line: 36, type: !164)
!168 = !DILocation(line: 36, column: 30, scope: !161)
!169 = !DILocalVariable(name: "str", arg: 2, scope: !161, file: !1, line: 36, type: !165)
!170 = !DILocation(line: 36, column: 47, scope: !161)
!171 = !DILocalVariable(name: "len", arg: 3, scope: !161, file: !1, line: 36, type: !7)
!172 = !DILocation(line: 36, column: 65, scope: !161)
!173 = !DILocalVariable(name: "needSize", scope: !161, file: !1, line: 37, type: !7)
!174 = !DILocation(line: 37, column: 18, scope: !161)
!175 = !DILocation(line: 39, column: 9, scope: !176)
!176 = distinct !DILexicalBlock(scope: !161, file: !1, line: 39, column: 9)
!177 = !DILocation(line: 39, column: 13, scope: !176)
!178 = !DILocation(line: 39, column: 21, scope: !176)
!179 = !DILocation(line: 39, column: 24, scope: !176)
!180 = !DILocation(line: 39, column: 28, scope: !176)
!181 = !DILocation(line: 39, column: 9, scope: !161)
!182 = !DILocation(line: 39, column: 37, scope: !176)
!183 = !DILocation(line: 40, column: 9, scope: !184)
!184 = distinct !DILexicalBlock(scope: !161, file: !1, line: 40, column: 9)
!185 = !DILocation(line: 40, column: 13, scope: !184)
!186 = !DILocation(line: 40, column: 9, scope: !161)
!187 = !DILocation(line: 40, column: 19, scope: !184)
!188 = !DILocation(line: 42, column: 9, scope: !189)
!189 = distinct !DILexicalBlock(scope: !161, file: !1, line: 42, column: 9)
!190 = !DILocation(line: 42, column: 14, scope: !189)
!191 = !DILocation(line: 42, column: 22, scope: !189)
!192 = !DILocation(line: 42, column: 9, scope: !161)
!193 = !DILocation(line: 43, column: 27, scope: !194)
!194 = distinct !DILexicalBlock(scope: !195, file: !1, line: 43, column: 13)
!195 = distinct !DILexicalBlock(scope: !189, file: !1, line: 42, column: 31)
!196 = !DILocation(line: 43, column: 32, scope: !194)
!197 = !DILocation(line: 43, column: 36, scope: !194)
!198 = !DILocation(line: 43, column: 14, scope: !194)
!199 = !DILocation(line: 43, column: 13, scope: !195)
!200 = !DILocation(line: 44, column: 31, scope: !201)
!201 = distinct !DILexicalBlock(scope: !194, file: !1, line: 43, column: 42)
!202 = !DILocation(line: 44, column: 13, scope: !201)
!203 = !DILocation(line: 45, column: 13, scope: !201)
!204 = !DILocation(line: 47, column: 5, scope: !195)
!205 = !DILocation(line: 47, column: 16, scope: !206)
!206 = distinct !DILexicalBlock(scope: !189, file: !1, line: 47, column: 16)
!207 = !DILocation(line: 47, column: 21, scope: !206)
!208 = !DILocation(line: 47, column: 27, scope: !206)
!209 = !DILocation(line: 47, column: 25, scope: !206)
!210 = !DILocation(line: 47, column: 31, scope: !206)
!211 = !DILocation(line: 47, column: 37, scope: !206)
!212 = !DILocation(line: 47, column: 42, scope: !206)
!213 = !DILocation(line: 47, column: 35, scope: !206)
!214 = !DILocation(line: 47, column: 16, scope: !189)
!215 = !DILocation(line: 48, column: 20, scope: !216)
!216 = distinct !DILexicalBlock(scope: !206, file: !1, line: 47, column: 48)
!217 = !DILocation(line: 48, column: 25, scope: !216)
!218 = !DILocation(line: 48, column: 31, scope: !216)
!219 = !DILocation(line: 48, column: 29, scope: !216)
!220 = !DILocation(line: 48, column: 35, scope: !216)
!221 = !DILocation(line: 48, column: 18, scope: !216)
!222 = !DILocation(line: 49, column: 27, scope: !223)
!223 = distinct !DILexicalBlock(scope: !216, file: !1, line: 49, column: 13)
!224 = !DILocation(line: 49, column: 32, scope: !223)
!225 = !DILocation(line: 49, column: 14, scope: !223)
!226 = !DILocation(line: 49, column: 13, scope: !216)
!227 = !DILocation(line: 50, column: 31, scope: !228)
!228 = distinct !DILexicalBlock(scope: !223, file: !1, line: 49, column: 43)
!229 = !DILocation(line: 50, column: 13, scope: !228)
!230 = !DILocation(line: 51, column: 13, scope: !228)
!231 = !DILocation(line: 53, column: 5, scope: !216)
!232 = !DILocation(line: 56, column: 14, scope: !161)
!233 = !DILocation(line: 56, column: 19, scope: !161)
!234 = !DILocation(line: 56, column: 27, scope: !161)
!235 = !DILocation(line: 56, column: 32, scope: !161)
!236 = !DILocation(line: 56, column: 38, scope: !161)
!237 = !DILocation(line: 56, column: 43, scope: !161)
!238 = !DILocation(line: 56, column: 5, scope: !161)
!239 = !DILocation(line: 57, column: 17, scope: !161)
!240 = !DILocation(line: 57, column: 5, scope: !161)
!241 = !DILocation(line: 57, column: 10, scope: !161)
!242 = !DILocation(line: 57, column: 14, scope: !161)
!243 = !DILocation(line: 58, column: 5, scope: !161)
!244 = !DILocation(line: 58, column: 10, scope: !161)
!245 = !DILocation(line: 58, column: 18, scope: !161)
!246 = !DILocation(line: 58, column: 23, scope: !161)
!247 = !DILocation(line: 58, column: 28, scope: !161)
!248 = !DILocation(line: 60, column: 5, scope: !161)
!249 = !DILocation(line: 61, column: 1, scope: !161)
!250 = distinct !DISubprogram(name: "xmlBufResize", scope: !1, file: !1, line: 22, type: !251, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !24)
!251 = !DISubroutineType(types: !252)
!252 = !{!23, !164, !7}
!253 = !DILocalVariable(name: "buf", arg: 1, scope: !250, file: !1, line: 22, type: !164)
!254 = !DILocation(line: 22, column: 33, scope: !250)
!255 = !DILocalVariable(name: "size", arg: 2, scope: !250, file: !1, line: 22, type: !7)
!256 = !DILocation(line: 22, column: 51, scope: !250)
!257 = !DILocation(line: 23, column: 9, scope: !258)
!258 = distinct !DILexicalBlock(scope: !250, file: !1, line: 23, column: 9)
!259 = !DILocation(line: 23, column: 17, scope: !258)
!260 = !DILocation(line: 23, column: 22, scope: !258)
!261 = !DILocation(line: 23, column: 14, scope: !258)
!262 = !DILocation(line: 23, column: 9, scope: !250)
!263 = !DILocation(line: 23, column: 28, scope: !258)
!264 = !DILocalVariable(name: "new_content", scope: !250, file: !1, line: 24, type: !30)
!265 = !DILocation(line: 24, column: 11, scope: !250)
!266 = !DILocation(line: 24, column: 32, scope: !250)
!267 = !DILocation(line: 24, column: 25, scope: !250)
!268 = !DILocation(line: 25, column: 10, scope: !269)
!269 = distinct !DILexicalBlock(scope: !250, file: !1, line: 25, column: 9)
!270 = !DILocation(line: 25, column: 9, scope: !250)
!271 = !DILocation(line: 25, column: 23, scope: !269)
!272 = !DILocation(line: 26, column: 9, scope: !273)
!273 = distinct !DILexicalBlock(scope: !250, file: !1, line: 26, column: 9)
!274 = !DILocation(line: 26, column: 14, scope: !273)
!275 = !DILocation(line: 26, column: 22, scope: !273)
!276 = !DILocation(line: 26, column: 25, scope: !273)
!277 = !DILocation(line: 26, column: 30, scope: !273)
!278 = !DILocation(line: 26, column: 34, scope: !273)
!279 = !DILocation(line: 26, column: 9, scope: !250)
!280 = !DILocation(line: 27, column: 16, scope: !281)
!281 = distinct !DILexicalBlock(scope: !273, file: !1, line: 26, column: 39)
!282 = !DILocation(line: 27, column: 29, scope: !281)
!283 = !DILocation(line: 27, column: 34, scope: !281)
!284 = !DILocation(line: 27, column: 43, scope: !281)
!285 = !DILocation(line: 27, column: 48, scope: !281)
!286 = !DILocation(line: 27, column: 9, scope: !281)
!287 = !DILocation(line: 28, column: 5, scope: !281)
!288 = !DILocation(line: 29, column: 10, scope: !250)
!289 = !DILocation(line: 29, column: 15, scope: !250)
!290 = !DILocation(line: 29, column: 5, scope: !250)
!291 = !DILocation(line: 30, column: 20, scope: !250)
!292 = !DILocation(line: 30, column: 5, scope: !250)
!293 = !DILocation(line: 30, column: 10, scope: !250)
!294 = !DILocation(line: 30, column: 18, scope: !250)
!295 = !DILocation(line: 31, column: 17, scope: !250)
!296 = !DILocation(line: 31, column: 5, scope: !250)
!297 = !DILocation(line: 31, column: 10, scope: !250)
!298 = !DILocation(line: 31, column: 15, scope: !250)
!299 = !DILocation(line: 32, column: 5, scope: !250)
!300 = !DILocation(line: 33, column: 1, scope: !250)
!301 = distinct !DISubprogram(name: "xmlBufMemoryError", scope: !1, file: !1, line: 21, type: !302, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !24)
!302 = !DISubroutineType(types: !303)
!303 = !{null, !164, !165}
!304 = !DILocalVariable(name: "buf", arg: 1, scope: !301, file: !1, line: 21, type: !164)
!305 = !DILocation(line: 21, column: 39, scope: !301)
!306 = !DILocalVariable(name: "msg", arg: 2, scope: !301, file: !1, line: 21, type: !165)
!307 = !DILocation(line: 21, column: 56, scope: !301)
!308 = !DILocation(line: 21, column: 69, scope: !301)
!309 = !DILocation(line: 21, column: 80, scope: !301)
!310 = !DILocation(line: 21, column: 85, scope: !301)
!311 = distinct !DISubprogram(name: "klee_range", scope: !312, file: !312, line: 12, type: !313, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !24)
!312 = !DIFile(filename: "runtime/Intrinsic/klee_range.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "967b9ed6e7b3db2f47ee33010ec31c43")
!313 = !DISubroutineType(types: !314)
!314 = !{!23, !23, !23, !165}
!315 = !DILocalVariable(name: "start", arg: 1, scope: !311, file: !312, line: 12, type: !23)
!316 = !DILocation(line: 12, column: 20, scope: !311)
!317 = !DILocalVariable(name: "end", arg: 2, scope: !311, file: !312, line: 12, type: !23)
!318 = !DILocation(line: 12, column: 31, scope: !311)
!319 = !DILocalVariable(name: "name", arg: 3, scope: !311, file: !312, line: 12, type: !165)
!320 = !DILocation(line: 12, column: 48, scope: !311)
!321 = !DILocalVariable(name: "x", scope: !311, file: !312, line: 13, type: !23)
!322 = !DILocation(line: 13, column: 7, scope: !311)
!323 = !DILocation(line: 15, column: 7, scope: !324)
!324 = distinct !DILexicalBlock(scope: !311, file: !312, line: 15, column: 7)
!325 = !DILocation(line: 15, column: 16, scope: !324)
!326 = !DILocation(line: 15, column: 13, scope: !324)
!327 = !DILocation(line: 15, column: 7, scope: !311)
!328 = !DILocation(line: 16, column: 5, scope: !324)
!329 = !DILocation(line: 18, column: 7, scope: !330)
!330 = distinct !DILexicalBlock(scope: !311, file: !312, line: 18, column: 7)
!331 = !DILocation(line: 18, column: 12, scope: !330)
!332 = !DILocation(line: 18, column: 16, scope: !330)
!333 = !DILocation(line: 18, column: 14, scope: !330)
!334 = !DILocation(line: 18, column: 7, scope: !311)
!335 = !DILocation(line: 19, column: 12, scope: !336)
!336 = distinct !DILexicalBlock(scope: !330, file: !312, line: 18, column: 21)
!337 = !DILocation(line: 19, column: 5, scope: !336)
!338 = !DILocation(line: 21, column: 24, scope: !339)
!339 = distinct !DILexicalBlock(scope: !330, file: !312, line: 20, column: 10)
!340 = !DILocation(line: 21, column: 38, scope: !339)
!341 = !DILocation(line: 21, column: 5, scope: !339)
!342 = !DILocation(line: 24, column: 9, scope: !343)
!343 = distinct !DILexicalBlock(scope: !339, file: !312, line: 24, column: 9)
!344 = !DILocation(line: 24, column: 14, scope: !343)
!345 = !DILocation(line: 24, column: 9, scope: !339)
!346 = !DILocation(line: 25, column: 30, scope: !347)
!347 = distinct !DILexicalBlock(scope: !343, file: !312, line: 24, column: 19)
!348 = !DILocation(line: 25, column: 45, scope: !347)
!349 = !DILocation(line: 25, column: 32, scope: !347)
!350 = !DILocation(line: 25, column: 19, scope: !347)
!351 = !DILocation(line: 25, column: 7, scope: !347)
!352 = !DILocation(line: 26, column: 5, scope: !347)
!353 = !DILocation(line: 27, column: 19, scope: !354)
!354 = distinct !DILexicalBlock(scope: !343, file: !312, line: 26, column: 12)
!355 = !DILocation(line: 27, column: 28, scope: !354)
!356 = !DILocation(line: 27, column: 25, scope: !354)
!357 = !DILocation(line: 27, column: 7, scope: !354)
!358 = !DILocation(line: 28, column: 19, scope: !354)
!359 = !DILocation(line: 28, column: 23, scope: !354)
!360 = !DILocation(line: 28, column: 21, scope: !354)
!361 = !DILocation(line: 28, column: 7, scope: !354)
!362 = !DILocation(line: 31, column: 12, scope: !339)
!363 = !DILocation(line: 31, column: 5, scope: !339)
!364 = !DILocation(line: 33, column: 1, scope: !311)
!365 = distinct !DISubprogram(name: "memcpy", scope: !366, file: !366, line: 12, type: !367, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !24)
!366 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!367 = !DISubroutineType(types: !368)
!368 = !{!3, !3, !369, !371}
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !372, line: 46, baseType: !373)
!372 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!373 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!374 = !DILocalVariable(name: "destaddr", arg: 1, scope: !365, file: !366, line: 12, type: !3)
!375 = !DILocation(line: 12, column: 20, scope: !365)
!376 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !365, file: !366, line: 12, type: !369)
!377 = !DILocation(line: 12, column: 42, scope: !365)
!378 = !DILocalVariable(name: "len", arg: 3, scope: !365, file: !366, line: 12, type: !371)
!379 = !DILocation(line: 12, column: 58, scope: !365)
!380 = !DILocalVariable(name: "dest", scope: !365, file: !366, line: 13, type: !30)
!381 = !DILocation(line: 13, column: 9, scope: !365)
!382 = !DILocation(line: 13, column: 16, scope: !365)
!383 = !DILocalVariable(name: "src", scope: !365, file: !366, line: 14, type: !165)
!384 = !DILocation(line: 14, column: 15, scope: !365)
!385 = !DILocation(line: 14, column: 21, scope: !365)
!386 = !DILocation(line: 16, column: 3, scope: !365)
!387 = !DILocation(line: 16, column: 13, scope: !365)
!388 = !DILocation(line: 16, column: 16, scope: !365)
!389 = !DILocation(line: 17, column: 19, scope: !365)
!390 = !DILocation(line: 17, column: 15, scope: !365)
!391 = !DILocation(line: 17, column: 10, scope: !365)
!392 = !DILocation(line: 17, column: 13, scope: !365)
!393 = distinct !{!393, !386, !389, !97}
!394 = !DILocation(line: 18, column: 10, scope: !365)
!395 = !DILocation(line: 18, column: 3, scope: !365)
!396 = distinct !DISubprogram(name: "memmove", scope: !397, file: !397, line: 12, type: !367, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !24)
!397 = !DIFile(filename: "runtime/Freestanding/memmove.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "6cd27189cdce56ce74ae860a315e13f2")
!398 = !DILocalVariable(name: "dst", arg: 1, scope: !396, file: !397, line: 12, type: !3)
!399 = !DILocation(line: 12, column: 21, scope: !396)
!400 = !DILocalVariable(name: "src", arg: 2, scope: !396, file: !397, line: 12, type: !369)
!401 = !DILocation(line: 12, column: 38, scope: !396)
!402 = !DILocalVariable(name: "count", arg: 3, scope: !396, file: !397, line: 12, type: !371)
!403 = !DILocation(line: 12, column: 50, scope: !396)
!404 = !DILocalVariable(name: "a", scope: !396, file: !397, line: 13, type: !30)
!405 = !DILocation(line: 13, column: 9, scope: !396)
!406 = !DILocation(line: 13, column: 13, scope: !396)
!407 = !DILocalVariable(name: "b", scope: !396, file: !397, line: 14, type: !165)
!408 = !DILocation(line: 14, column: 15, scope: !396)
!409 = !DILocation(line: 14, column: 19, scope: !396)
!410 = !DILocation(line: 16, column: 7, scope: !411)
!411 = distinct !DILexicalBlock(scope: !396, file: !397, line: 16, column: 7)
!412 = !DILocation(line: 16, column: 14, scope: !411)
!413 = !DILocation(line: 16, column: 11, scope: !411)
!414 = !DILocation(line: 16, column: 7, scope: !396)
!415 = !DILocation(line: 17, column: 12, scope: !411)
!416 = !DILocation(line: 17, column: 5, scope: !411)
!417 = !DILocation(line: 19, column: 7, scope: !418)
!418 = distinct !DILexicalBlock(scope: !396, file: !397, line: 19, column: 7)
!419 = !DILocation(line: 19, column: 13, scope: !418)
!420 = !DILocation(line: 19, column: 11, scope: !418)
!421 = !DILocation(line: 19, column: 7, scope: !396)
!422 = !DILocation(line: 20, column: 17, scope: !423)
!423 = distinct !DILexicalBlock(scope: !418, file: !397, line: 19, column: 18)
!424 = !DILocation(line: 20, column: 5, scope: !423)
!425 = !DILocation(line: 21, column: 16, scope: !423)
!426 = !DILocation(line: 21, column: 14, scope: !423)
!427 = !DILocation(line: 21, column: 9, scope: !423)
!428 = !DILocation(line: 21, column: 12, scope: !423)
!429 = distinct !{!429, !424, !425, !97}
!430 = !DILocation(line: 23, column: 10, scope: !431)
!431 = distinct !DILexicalBlock(scope: !418, file: !397, line: 22, column: 10)
!432 = !DILocation(line: 23, column: 16, scope: !431)
!433 = !DILocation(line: 23, column: 7, scope: !431)
!434 = !DILocation(line: 24, column: 10, scope: !431)
!435 = !DILocation(line: 24, column: 16, scope: !431)
!436 = !DILocation(line: 24, column: 7, scope: !431)
!437 = !DILocation(line: 25, column: 5, scope: !431)
!438 = !DILocation(line: 25, column: 17, scope: !431)
!439 = !DILocation(line: 26, column: 16, scope: !431)
!440 = !DILocation(line: 26, column: 14, scope: !431)
!441 = !DILocation(line: 26, column: 9, scope: !431)
!442 = !DILocation(line: 26, column: 12, scope: !431)
!443 = distinct !{!443, !437, !439, !97}
!444 = !DILocation(line: 29, column: 10, scope: !396)
!445 = !DILocation(line: 29, column: 3, scope: !396)
!446 = !DILocation(line: 30, column: 1, scope: !396)

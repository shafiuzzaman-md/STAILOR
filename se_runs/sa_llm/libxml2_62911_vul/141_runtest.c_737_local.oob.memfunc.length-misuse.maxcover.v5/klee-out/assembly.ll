; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/141_runtest.c_737_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/141_runtest.c_737_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@__const.main.filename = private unnamed_addr constant [9 x i8] c"test.xml\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_62911_vul/141_runtest.c_737_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [30 x i8] c"Compare error at position %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !17 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [4096 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [9 x i8], align 1
  %9 = alloca %struct._IO_FILE*, align 8
  %10 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata [4096 x i8]* %3, metadata !24, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i8** %4, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %5, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %6, metadata !33, metadata !DIExpression()), !dbg !34
  store i32 0, i32* %6, align 4, !dbg !34
  call void @llvm.dbg.declare(metadata i32* %7, metadata !35, metadata !DIExpression()), !dbg !36
  %11 = bitcast i32* %5 to i8*, !dbg !37
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !38
  %12 = load i32, i32* %5, align 4, !dbg !39
  %13 = icmp sge i32 %12, 0, !dbg !40
  br i1 %13, label %14, label %17, !dbg !41

14:                                               ; preds = %0
  %15 = load i32, i32* %5, align 4, !dbg !42
  %16 = icmp sle i32 %15, 40960, !dbg !43
  br label %17

17:                                               ; preds = %14, %0
  %18 = phi i1 [ false, %0 ], [ %16, %14 ], !dbg !44
  %19 = zext i1 %18 to i32, !dbg !41
  %20 = sext i32 %19 to i64, !dbg !39
  call void @klee_assume(i64 noundef %20), !dbg !45
  %21 = load i32, i32* %5, align 4, !dbg !46
  %22 = add nsw i32 %21, 1, !dbg !47
  %23 = sext i32 %22 to i64, !dbg !46
  %24 = call noalias i8* @malloc(i64 noundef %23) #7, !dbg !48
  store i8* %24, i8** %4, align 8, !dbg !49
  %25 = load i8*, i8** %4, align 8, !dbg !50
  %26 = icmp ne i8* %25, null, !dbg !50
  br i1 %26, label %28, label %27, !dbg !52

27:                                               ; preds = %17
  store i32 -1, i32* %1, align 4, !dbg !53
  br label %132, !dbg !53

28:                                               ; preds = %17
  %29 = load i8*, i8** %4, align 8, !dbg !54
  %30 = load i32, i32* %5, align 4, !dbg !55
  %31 = sext i32 %30 to i64, !dbg !55
  call void @klee_make_symbolic(i8* noundef %29, i64 noundef %31, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !56
  call void @llvm.dbg.declare(metadata [9 x i8]* %8, metadata !57, metadata !DIExpression()), !dbg !61
  %32 = bitcast [9 x i8]* %8 to i8*, !dbg !61
  %33 = call i8* @memcpy(i8* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__const.main.filename, i32 0, i32 0), i64 9), !dbg !61
  %34 = getelementptr inbounds [9 x i8], [9 x i8]* %8, i64 0, i64 0, !dbg !62
  %35 = call i32 (i8*, i32, ...) @open(i8* noundef %34, i32 noundef 0), !dbg !63
  store i32 %35, i32* %2, align 4, !dbg !64
  %36 = load i32, i32* %2, align 4, !dbg !65
  %37 = icmp slt i32 %36, 0, !dbg !67
  br i1 %37, label %38, label %59, !dbg !68

38:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %9, metadata !69, metadata !DIExpression()), !dbg !131
  %39 = getelementptr inbounds [9 x i8], [9 x i8]* %8, i64 0, i64 0, !dbg !132
  %40 = call noalias %struct._IO_FILE* @fopen(i8* noundef %39, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)), !dbg !133
  store %struct._IO_FILE* %40, %struct._IO_FILE** %9, align 8, !dbg !131
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !134
  %42 = icmp ne %struct._IO_FILE* %41, null, !dbg !134
  br i1 %42, label %44, label %43, !dbg !136

43:                                               ; preds = %38
  store i32 -1, i32* %1, align 4, !dbg !137
  br label %132, !dbg !137

44:                                               ; preds = %38
  %45 = load i8*, i8** %4, align 8, !dbg !138
  %46 = load i32, i32* %5, align 4, !dbg !139
  %47 = sext i32 %46 to i64, !dbg !139
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !140
  %49 = call i64 @fwrite(i8* noundef %45, i64 noundef 1, i64 noundef %47, %struct._IO_FILE* noundef %48), !dbg !141
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !142
  %51 = call i32 @fclose(%struct._IO_FILE* noundef %50), !dbg !143
  %52 = getelementptr inbounds [9 x i8], [9 x i8]* %8, i64 0, i64 0, !dbg !144
  %53 = call i32 (i8*, i32, ...) @open(i8* noundef %52, i32 noundef 0), !dbg !145
  store i32 %53, i32* %2, align 4, !dbg !146
  %54 = load i32, i32* %2, align 4, !dbg !147
  %55 = icmp slt i32 %54, 0, !dbg !149
  br i1 %55, label %56, label %58, !dbg !150

56:                                               ; preds = %44
  %57 = load i8*, i8** %4, align 8, !dbg !151
  call void @free(i8* noundef %57) #7, !dbg !153
  store i32 -1, i32* %1, align 4, !dbg !154
  br label %132, !dbg !154

58:                                               ; preds = %44
  br label %59, !dbg !155

59:                                               ; preds = %58, %28
  br label %60, !dbg !156

60:                                               ; preds = %124, %59
  %61 = load i32, i32* %6, align 4, !dbg !157
  %62 = load i32, i32* %5, align 4, !dbg !158
  %63 = icmp slt i32 %61, %62, !dbg !159
  br i1 %63, label %64, label %128, !dbg !156

64:                                               ; preds = %60
  %65 = load i32, i32* %2, align 4, !dbg !160
  %66 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0, !dbg !162
  %67 = call i64 @read(i32 noundef %65, i8* noundef %66, i64 noundef 4096), !dbg !163
  %68 = trunc i64 %67 to i32, !dbg !163
  store i32 %68, i32* %7, align 4, !dbg !164
  %69 = load i32, i32* %7, align 4, !dbg !165
  %70 = icmp sle i32 %69, 0, !dbg !167
  br i1 %70, label %71, label %72, !dbg !168

71:                                               ; preds = %64
  br label %128, !dbg !169

72:                                               ; preds = %64
  %73 = load i32, i32* %7, align 4, !dbg !170
  %74 = load i32, i32* %6, align 4, !dbg !172
  %75 = add nsw i32 %73, %74, !dbg !173
  %76 = load i32, i32* %5, align 4, !dbg !174
  %77 = icmp sgt i32 %75, %76, !dbg !175
  br i1 %77, label %78, label %79, !dbg !176

78:                                               ; preds = %72
  br label %128, !dbg !177

79:                                               ; preds = %72
  %80 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.4, i64 0, i64 0), i32 noundef 45, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !178
  %81 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0, !dbg !179
  %82 = load i8*, i8** %4, align 8, !dbg !181
  %83 = load i32, i32* %6, align 4, !dbg !182
  %84 = sext i32 %83 to i64, !dbg !181
  %85 = getelementptr inbounds i8, i8* %82, i64 %84, !dbg !181
  %86 = load i32, i32* %7, align 4, !dbg !183
  %87 = sext i32 %86 to i64, !dbg !183
  %88 = call i32 @memcmp(i8* noundef %81, i8* noundef %85, i64 noundef %87) #8, !dbg !184
  %89 = icmp ne i32 %88, 0, !dbg !185
  br i1 %89, label %90, label %124, !dbg !186

90:                                               ; preds = %79
  call void @llvm.dbg.declare(metadata i32* %10, metadata !187, metadata !DIExpression()), !dbg !189
  store i32 0, i32* %10, align 4, !dbg !190
  br label %91, !dbg !192

91:                                               ; preds = %112, %90
  %92 = load i32, i32* %10, align 4, !dbg !193
  %93 = load i32, i32* %7, align 4, !dbg !195
  %94 = icmp slt i32 %92, %93, !dbg !196
  br i1 %94, label %95, label %115, !dbg !197

95:                                               ; preds = %91
  %96 = load i32, i32* %10, align 4, !dbg !198
  %97 = sext i32 %96 to i64, !dbg !200
  %98 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 %97, !dbg !200
  %99 = load i8, i8* %98, align 1, !dbg !200
  %100 = sext i8 %99 to i32, !dbg !200
  %101 = load i8*, i8** %4, align 8, !dbg !201
  %102 = load i32, i32* %6, align 4, !dbg !202
  %103 = load i32, i32* %10, align 4, !dbg !203
  %104 = add nsw i32 %102, %103, !dbg !204
  %105 = sext i32 %104 to i64, !dbg !201
  %106 = getelementptr inbounds i8, i8* %101, i64 %105, !dbg !201
  %107 = load i8, i8* %106, align 1, !dbg !201
  %108 = sext i8 %107 to i32, !dbg !201
  %109 = icmp ne i32 %100, %108, !dbg !205
  br i1 %109, label %110, label %111, !dbg !206

110:                                              ; preds = %95
  br label %115, !dbg !207

111:                                              ; preds = %95
  br label %112, !dbg !208

112:                                              ; preds = %111
  %113 = load i32, i32* %10, align 4, !dbg !209
  %114 = add nsw i32 %113, 1, !dbg !209
  store i32 %114, i32* %10, align 4, !dbg !209
  br label %91, !dbg !210, !llvm.loop !211

115:                                              ; preds = %110, %91
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !214
  %117 = load i32, i32* %6, align 4, !dbg !215
  %118 = load i32, i32* %10, align 4, !dbg !216
  %119 = add nsw i32 %117, %118, !dbg !217
  %120 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %116, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 noundef %119), !dbg !218
  %121 = load i32, i32* %2, align 4, !dbg !219
  %122 = call i32 @close(i32 noundef %121), !dbg !220
  %123 = load i8*, i8** %4, align 8, !dbg !221
  call void @free(i8* noundef %123) #7, !dbg !222
  store i32 1, i32* %1, align 4, !dbg !223
  br label %132, !dbg !223

124:                                              ; preds = %79
  %125 = load i32, i32* %7, align 4, !dbg !224
  %126 = load i32, i32* %6, align 4, !dbg !225
  %127 = add nsw i32 %126, %125, !dbg !225
  store i32 %127, i32* %6, align 4, !dbg !225
  br label %60, !dbg !156, !llvm.loop !226

128:                                              ; preds = %78, %71, %60
  %129 = load i32, i32* %2, align 4, !dbg !228
  %130 = call i32 @close(i32 noundef %129), !dbg !229
  %131 = load i8*, i8** %4, align 8, !dbg !230
  call void @free(i8* noundef %131) #7, !dbg !231
  store i32 0, i32* %1, align 4, !dbg !232
  br label %132, !dbg !232

132:                                              ; preds = %128, %115, %56, %43, %27
  %133 = load i32, i32* %1, align 4, !dbg !233
  ret i32 %133, !dbg !233
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare i32 @open(i8* noundef, i32 noundef, ...) #2

declare noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #2

declare i32 @fclose(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

declare i64 @read(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

declare i32 @close(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @memcmp(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !234 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !240, metadata !DIExpression()), !dbg !241
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !242, metadata !DIExpression()), !dbg !243
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !244, metadata !DIExpression()), !dbg !245
  %10 = load i64, i64* %7, align 8, !dbg !246
  %11 = icmp ne i64 %10, 0, !dbg !248
  br i1 %11, label %12, label %39, !dbg !249

12:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i8** %8, metadata !250, metadata !DIExpression()), !dbg !255
  %13 = load i8*, i8** %5, align 8, !dbg !256
  store i8* %13, i8** %8, align 8, !dbg !255
  call void @llvm.dbg.declare(metadata i8** %9, metadata !257, metadata !DIExpression()), !dbg !258
  %14 = load i8*, i8** %6, align 8, !dbg !259
  store i8* %14, i8** %9, align 8, !dbg !258
  br label %15, !dbg !260

15:                                               ; preds = %35, %12
  %16 = load i8*, i8** %8, align 8, !dbg !261
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !261
  store i8* %17, i8** %8, align 8, !dbg !261
  %18 = load i8, i8* %16, align 1, !dbg !264
  %19 = zext i8 %18 to i32, !dbg !264
  %20 = load i8*, i8** %9, align 8, !dbg !265
  %21 = getelementptr inbounds i8, i8* %20, i32 1, !dbg !265
  store i8* %21, i8** %9, align 8, !dbg !265
  %22 = load i8, i8* %20, align 1, !dbg !266
  %23 = zext i8 %22 to i32, !dbg !266
  %24 = icmp ne i32 %19, %23, !dbg !267
  br i1 %24, label %25, label %35, !dbg !268

25:                                               ; preds = %15
  %26 = load i8*, i8** %8, align 8, !dbg !269
  %27 = getelementptr inbounds i8, i8* %26, i32 -1, !dbg !269
  store i8* %27, i8** %8, align 8, !dbg !269
  %28 = load i8, i8* %27, align 1, !dbg !271
  %29 = zext i8 %28 to i32, !dbg !271
  %30 = load i8*, i8** %9, align 8, !dbg !272
  %31 = getelementptr inbounds i8, i8* %30, i32 -1, !dbg !272
  store i8* %31, i8** %9, align 8, !dbg !272
  %32 = load i8, i8* %31, align 1, !dbg !273
  %33 = zext i8 %32 to i32, !dbg !273
  %34 = sub nsw i32 %29, %33, !dbg !274
  store i32 %34, i32* %4, align 4, !dbg !275
  br label %40, !dbg !275

35:                                               ; preds = %15
  %36 = load i64, i64* %7, align 8, !dbg !276
  %37 = add i64 %36, -1, !dbg !276
  store i64 %37, i64* %7, align 8, !dbg !276
  %38 = icmp ne i64 %37, 0, !dbg !277
  br i1 %38, label %15, label %39, !dbg !278, !llvm.loop !279

39:                                               ; preds = %35, %3
  store i32 0, i32* %4, align 4, !dbg !281
  br label %40, !dbg !281

40:                                               ; preds = %39, %25
  %41 = load i32, i32* %4, align 4, !dbg !282
  ret i32 %41, !dbg !282
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !283 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !287, metadata !DIExpression()), !dbg !288
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !289, metadata !DIExpression()), !dbg !290
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !291, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.declare(metadata i8** %7, metadata !293, metadata !DIExpression()), !dbg !294
  %9 = load i8*, i8** %4, align 8, !dbg !295
  store i8* %9, i8** %7, align 8, !dbg !294
  call void @llvm.dbg.declare(metadata i8** %8, metadata !296, metadata !DIExpression()), !dbg !299
  %10 = load i8*, i8** %5, align 8, !dbg !300
  store i8* %10, i8** %8, align 8, !dbg !299
  br label %11, !dbg !301

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !302
  %13 = add i64 %12, -1, !dbg !302
  store i64 %13, i64* %6, align 8, !dbg !302
  %14 = icmp ugt i64 %12, 0, !dbg !303
  br i1 %14, label %15, label %21, !dbg !301

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !304
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !304
  store i8* %17, i8** %8, align 8, !dbg !304
  %18 = load i8, i8* %16, align 1, !dbg !305
  %19 = load i8*, i8** %7, align 8, !dbg !306
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !306
  store i8* %20, i8** %7, align 8, !dbg !306
  store i8 %18, i8* %19, align 1, !dbg !307
  br label %11, !dbg !301, !llvm.loop !308

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !309
  ret i8* %22, !dbg !310
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !5, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16, !16, !16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/141_runtest.c_737_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "ae1537ae949ffd389802a7193173f85b")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = distinct !DICompileUnit(language: DW_LANG_C99, file: !6, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!6 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcmp.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "6a01b8a9953e07eca8ec791434d4f8e8")
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!8 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!9 = !{i32 7, !"Dwarf Version", i32 5}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{i32 7, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"Ubuntu clang version 14.0.6"}
!17 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 10, type: !18, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !21)
!18 = !DISubroutineType(types: !19)
!19 = !{!20}
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !{}
!22 = !DILocalVariable(name: "fd", scope: !17, file: !1, line: 11, type: !20)
!23 = !DILocation(line: 11, column: 9, scope: !17)
!24 = !DILocalVariable(name: "bytes", scope: !17, file: !1, line: 12, type: !25)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 4096)
!28 = !DILocation(line: 12, column: 10, scope: !17)
!29 = !DILocalVariable(name: "mem", scope: !17, file: !1, line: 13, type: !3)
!30 = !DILocation(line: 13, column: 11, scope: !17)
!31 = !DILocalVariable(name: "size", scope: !17, file: !1, line: 14, type: !20)
!32 = !DILocation(line: 14, column: 9, scope: !17)
!33 = !DILocalVariable(name: "idx", scope: !17, file: !1, line: 15, type: !20)
!34 = !DILocation(line: 15, column: 9, scope: !17)
!35 = !DILocalVariable(name: "res", scope: !17, file: !1, line: 16, type: !20)
!36 = !DILocation(line: 16, column: 9, scope: !17)
!37 = !DILocation(line: 18, column: 24, scope: !17)
!38 = !DILocation(line: 18, column: 5, scope: !17)
!39 = !DILocation(line: 19, column: 17, scope: !17)
!40 = !DILocation(line: 19, column: 22, scope: !17)
!41 = !DILocation(line: 19, column: 27, scope: !17)
!42 = !DILocation(line: 19, column: 30, scope: !17)
!43 = !DILocation(line: 19, column: 35, scope: !17)
!44 = !DILocation(line: 0, scope: !17)
!45 = !DILocation(line: 19, column: 5, scope: !17)
!46 = !DILocation(line: 21, column: 26, scope: !17)
!47 = !DILocation(line: 21, column: 31, scope: !17)
!48 = !DILocation(line: 21, column: 19, scope: !17)
!49 = !DILocation(line: 21, column: 9, scope: !17)
!50 = !DILocation(line: 22, column: 10, scope: !51)
!51 = distinct !DILexicalBlock(scope: !17, file: !1, line: 22, column: 9)
!52 = !DILocation(line: 22, column: 9, scope: !17)
!53 = !DILocation(line: 22, column: 15, scope: !51)
!54 = !DILocation(line: 23, column: 24, scope: !17)
!55 = !DILocation(line: 23, column: 29, scope: !17)
!56 = !DILocation(line: 23, column: 5, scope: !17)
!57 = !DILocalVariable(name: "filename", scope: !17, file: !1, line: 25, type: !58)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 9)
!61 = !DILocation(line: 25, column: 10, scope: !17)
!62 = !DILocation(line: 26, column: 15, scope: !17)
!63 = !DILocation(line: 26, column: 10, scope: !17)
!64 = !DILocation(line: 26, column: 8, scope: !17)
!65 = !DILocation(line: 27, column: 9, scope: !66)
!66 = distinct !DILexicalBlock(scope: !17, file: !1, line: 27, column: 9)
!67 = !DILocation(line: 27, column: 12, scope: !66)
!68 = !DILocation(line: 27, column: 9, scope: !17)
!69 = !DILocalVariable(name: "tmp", scope: !70, file: !1, line: 28, type: !71)
!70 = distinct !DILexicalBlock(scope: !66, file: !1, line: 27, column: 17)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !73, line: 7, baseType: !74)
!73 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !76)
!75 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "7a6d4a00a37ee6b9a40cd04bd01f5d00")
!76 = !{!77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !92, !94, !95, !96, !100, !102, !104, !108, !111, !113, !116, !119, !120, !122, !126, !127}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !74, file: !75, line: 51, baseType: !20, size: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !74, file: !75, line: 54, baseType: !3, size: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !74, file: !75, line: 55, baseType: !3, size: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !74, file: !75, line: 56, baseType: !3, size: 64, offset: 192)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !74, file: !75, line: 57, baseType: !3, size: 64, offset: 256)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !74, file: !75, line: 58, baseType: !3, size: 64, offset: 320)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !74, file: !75, line: 59, baseType: !3, size: 64, offset: 384)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !74, file: !75, line: 60, baseType: !3, size: 64, offset: 448)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !74, file: !75, line: 61, baseType: !3, size: 64, offset: 512)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !74, file: !75, line: 64, baseType: !3, size: 64, offset: 576)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !74, file: !75, line: 65, baseType: !3, size: 64, offset: 640)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !74, file: !75, line: 66, baseType: !3, size: 64, offset: 704)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !74, file: !75, line: 68, baseType: !90, size: 64, offset: 768)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !75, line: 36, flags: DIFlagFwdDecl)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !74, file: !75, line: 70, baseType: !93, size: 64, offset: 832)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !74, file: !75, line: 72, baseType: !20, size: 32, offset: 896)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !74, file: !75, line: 73, baseType: !20, size: 32, offset: 928)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !74, file: !75, line: 74, baseType: !97, size: 64, offset: 960)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !98, line: 152, baseType: !99)
!98 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!99 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !74, file: !75, line: 77, baseType: !101, size: 16, offset: 1024)
!101 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !74, file: !75, line: 78, baseType: !103, size: 8, offset: 1040)
!103 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !74, file: !75, line: 79, baseType: !105, size: 8, offset: 1048)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 1)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !74, file: !75, line: 81, baseType: !109, size: 64, offset: 1088)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !75, line: 43, baseType: null)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !74, file: !75, line: 89, baseType: !112, size: 64, offset: 1152)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !98, line: 153, baseType: !99)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !74, file: !75, line: 91, baseType: !114, size: 64, offset: 1216)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !75, line: 37, flags: DIFlagFwdDecl)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !74, file: !75, line: 92, baseType: !117, size: 64, offset: 1280)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !75, line: 38, flags: DIFlagFwdDecl)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !74, file: !75, line: 93, baseType: !93, size: 64, offset: 1344)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !74, file: !75, line: 94, baseType: !121, size: 64, offset: 1408)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !74, file: !75, line: 95, baseType: !123, size: 64, offset: 1472)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !124, line: 46, baseType: !125)
!124 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!125 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !74, file: !75, line: 96, baseType: !20, size: 32, offset: 1536)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !74, file: !75, line: 98, baseType: !128, size: 160, offset: 1568)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 20)
!131 = !DILocation(line: 28, column: 15, scope: !70)
!132 = !DILocation(line: 28, column: 27, scope: !70)
!133 = !DILocation(line: 28, column: 21, scope: !70)
!134 = !DILocation(line: 29, column: 14, scope: !135)
!135 = distinct !DILexicalBlock(scope: !70, file: !1, line: 29, column: 13)
!136 = !DILocation(line: 29, column: 13, scope: !70)
!137 = !DILocation(line: 29, column: 19, scope: !135)
!138 = !DILocation(line: 30, column: 16, scope: !70)
!139 = !DILocation(line: 30, column: 24, scope: !70)
!140 = !DILocation(line: 30, column: 30, scope: !70)
!141 = !DILocation(line: 30, column: 9, scope: !70)
!142 = !DILocation(line: 31, column: 16, scope: !70)
!143 = !DILocation(line: 31, column: 9, scope: !70)
!144 = !DILocation(line: 32, column: 19, scope: !70)
!145 = !DILocation(line: 32, column: 14, scope: !70)
!146 = !DILocation(line: 32, column: 12, scope: !70)
!147 = !DILocation(line: 33, column: 13, scope: !148)
!148 = distinct !DILexicalBlock(scope: !70, file: !1, line: 33, column: 13)
!149 = !DILocation(line: 33, column: 16, scope: !148)
!150 = !DILocation(line: 33, column: 13, scope: !70)
!151 = !DILocation(line: 34, column: 18, scope: !152)
!152 = distinct !DILexicalBlock(scope: !148, file: !1, line: 33, column: 21)
!153 = !DILocation(line: 34, column: 13, scope: !152)
!154 = !DILocation(line: 35, column: 13, scope: !152)
!155 = !DILocation(line: 37, column: 5, scope: !70)
!156 = !DILocation(line: 39, column: 5, scope: !17)
!157 = !DILocation(line: 39, column: 12, scope: !17)
!158 = !DILocation(line: 39, column: 18, scope: !17)
!159 = !DILocation(line: 39, column: 16, scope: !17)
!160 = !DILocation(line: 40, column: 20, scope: !161)
!161 = distinct !DILexicalBlock(scope: !17, file: !1, line: 39, column: 24)
!162 = !DILocation(line: 40, column: 24, scope: !161)
!163 = !DILocation(line: 40, column: 15, scope: !161)
!164 = !DILocation(line: 40, column: 13, scope: !161)
!165 = !DILocation(line: 41, column: 13, scope: !166)
!166 = distinct !DILexicalBlock(scope: !161, file: !1, line: 41, column: 13)
!167 = !DILocation(line: 41, column: 17, scope: !166)
!168 = !DILocation(line: 41, column: 13, scope: !161)
!169 = !DILocation(line: 42, column: 13, scope: !166)
!170 = !DILocation(line: 43, column: 13, scope: !171)
!171 = distinct !DILexicalBlock(scope: !161, file: !1, line: 43, column: 13)
!172 = !DILocation(line: 43, column: 19, scope: !171)
!173 = !DILocation(line: 43, column: 17, scope: !171)
!174 = !DILocation(line: 43, column: 25, scope: !171)
!175 = !DILocation(line: 43, column: 23, scope: !171)
!176 = !DILocation(line: 43, column: 13, scope: !161)
!177 = !DILocation(line: 44, column: 13, scope: !171)
!178 = !DILocation(line: 45, column: 9, scope: !161)
!179 = !DILocation(line: 46, column: 20, scope: !180)
!180 = distinct !DILexicalBlock(scope: !161, file: !1, line: 46, column: 13)
!181 = !DILocation(line: 46, column: 28, scope: !180)
!182 = !DILocation(line: 46, column: 32, scope: !180)
!183 = !DILocation(line: 46, column: 38, scope: !180)
!184 = !DILocation(line: 46, column: 13, scope: !180)
!185 = !DILocation(line: 46, column: 43, scope: !180)
!186 = !DILocation(line: 46, column: 13, scope: !161)
!187 = !DILocalVariable(name: "ix", scope: !188, file: !1, line: 47, type: !20)
!188 = distinct !DILexicalBlock(scope: !180, file: !1, line: 46, column: 49)
!189 = !DILocation(line: 47, column: 17, scope: !188)
!190 = !DILocation(line: 48, column: 21, scope: !191)
!191 = distinct !DILexicalBlock(scope: !188, file: !1, line: 48, column: 13)
!192 = !DILocation(line: 48, column: 18, scope: !191)
!193 = !DILocation(line: 48, column: 26, scope: !194)
!194 = distinct !DILexicalBlock(scope: !191, file: !1, line: 48, column: 13)
!195 = !DILocation(line: 48, column: 31, scope: !194)
!196 = !DILocation(line: 48, column: 29, scope: !194)
!197 = !DILocation(line: 48, column: 13, scope: !191)
!198 = !DILocation(line: 49, column: 27, scope: !199)
!199 = distinct !DILexicalBlock(scope: !194, file: !1, line: 49, column: 21)
!200 = !DILocation(line: 49, column: 21, scope: !199)
!201 = !DILocation(line: 49, column: 34, scope: !199)
!202 = !DILocation(line: 49, column: 38, scope: !199)
!203 = !DILocation(line: 49, column: 44, scope: !199)
!204 = !DILocation(line: 49, column: 42, scope: !199)
!205 = !DILocation(line: 49, column: 31, scope: !199)
!206 = !DILocation(line: 49, column: 21, scope: !194)
!207 = !DILocation(line: 50, column: 21, scope: !199)
!208 = !DILocation(line: 49, column: 46, scope: !199)
!209 = !DILocation(line: 48, column: 38, scope: !194)
!210 = !DILocation(line: 48, column: 13, scope: !194)
!211 = distinct !{!211, !197, !212, !213}
!212 = !DILocation(line: 50, column: 21, scope: !191)
!213 = !{!"llvm.loop.mustprogress"}
!214 = !DILocation(line: 51, column: 21, scope: !188)
!215 = !DILocation(line: 51, column: 63, scope: !188)
!216 = !DILocation(line: 51, column: 69, scope: !188)
!217 = !DILocation(line: 51, column: 67, scope: !188)
!218 = !DILocation(line: 51, column: 13, scope: !188)
!219 = !DILocation(line: 52, column: 19, scope: !188)
!220 = !DILocation(line: 52, column: 13, scope: !188)
!221 = !DILocation(line: 53, column: 18, scope: !188)
!222 = !DILocation(line: 53, column: 13, scope: !188)
!223 = !DILocation(line: 54, column: 13, scope: !188)
!224 = !DILocation(line: 56, column: 16, scope: !161)
!225 = !DILocation(line: 56, column: 13, scope: !161)
!226 = distinct !{!226, !156, !227, !213}
!227 = !DILocation(line: 57, column: 5, scope: !17)
!228 = !DILocation(line: 59, column: 11, scope: !17)
!229 = !DILocation(line: 59, column: 5, scope: !17)
!230 = !DILocation(line: 60, column: 10, scope: !17)
!231 = !DILocation(line: 60, column: 5, scope: !17)
!232 = !DILocation(line: 61, column: 5, scope: !17)
!233 = !DILocation(line: 62, column: 1, scope: !17)
!234 = distinct !DISubprogram(name: "memcmp", scope: !235, file: !235, line: 42, type: !236, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !21)
!235 = !DIFile(filename: "runtime/Freestanding/memcmp.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "6a01b8a9953e07eca8ec791434d4f8e8")
!236 = !DISubroutineType(types: !237)
!237 = !{!20, !238, !238, !123}
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!240 = !DILocalVariable(name: "s1", arg: 1, scope: !234, file: !235, line: 42, type: !238)
!241 = !DILocation(line: 42, column: 24, scope: !234)
!242 = !DILocalVariable(name: "s2", arg: 2, scope: !234, file: !235, line: 42, type: !238)
!243 = !DILocation(line: 42, column: 40, scope: !234)
!244 = !DILocalVariable(name: "n", arg: 3, scope: !234, file: !235, line: 42, type: !123)
!245 = !DILocation(line: 42, column: 51, scope: !234)
!246 = !DILocation(line: 43, column: 7, scope: !247)
!247 = distinct !DILexicalBlock(scope: !234, file: !235, line: 43, column: 7)
!248 = !DILocation(line: 43, column: 9, scope: !247)
!249 = !DILocation(line: 43, column: 7, scope: !234)
!250 = !DILocalVariable(name: "p1", scope: !251, file: !235, line: 44, type: !252)
!251 = distinct !DILexicalBlock(scope: !247, file: !235, line: 43, column: 15)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !254)
!254 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!255 = !DILocation(line: 44, column: 26, scope: !251)
!256 = !DILocation(line: 44, column: 31, scope: !251)
!257 = !DILocalVariable(name: "p2", scope: !251, file: !235, line: 44, type: !252)
!258 = !DILocation(line: 44, column: 36, scope: !251)
!259 = !DILocation(line: 44, column: 41, scope: !251)
!260 = !DILocation(line: 46, column: 5, scope: !251)
!261 = !DILocation(line: 47, column: 14, scope: !262)
!262 = distinct !DILexicalBlock(scope: !263, file: !235, line: 47, column: 11)
!263 = distinct !DILexicalBlock(scope: !251, file: !235, line: 46, column: 8)
!264 = !DILocation(line: 47, column: 11, scope: !262)
!265 = !DILocation(line: 47, column: 23, scope: !262)
!266 = !DILocation(line: 47, column: 20, scope: !262)
!267 = !DILocation(line: 47, column: 17, scope: !262)
!268 = !DILocation(line: 47, column: 11, scope: !263)
!269 = !DILocation(line: 48, column: 18, scope: !270)
!270 = distinct !DILexicalBlock(scope: !262, file: !235, line: 47, column: 27)
!271 = !DILocation(line: 48, column: 17, scope: !270)
!272 = !DILocation(line: 48, column: 26, scope: !270)
!273 = !DILocation(line: 48, column: 25, scope: !270)
!274 = !DILocation(line: 48, column: 23, scope: !270)
!275 = !DILocation(line: 48, column: 9, scope: !270)
!276 = !DILocation(line: 50, column: 14, scope: !251)
!277 = !DILocation(line: 50, column: 18, scope: !251)
!278 = !DILocation(line: 50, column: 5, scope: !263)
!279 = distinct !{!279, !260, !280, !213}
!280 = !DILocation(line: 50, column: 22, scope: !251)
!281 = !DILocation(line: 52, column: 3, scope: !234)
!282 = !DILocation(line: 53, column: 1, scope: !234)
!283 = distinct !DISubprogram(name: "memcpy", scope: !284, file: !284, line: 12, type: !285, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !21)
!284 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!285 = !DISubroutineType(types: !286)
!286 = !{!121, !121, !238, !123}
!287 = !DILocalVariable(name: "destaddr", arg: 1, scope: !283, file: !284, line: 12, type: !121)
!288 = !DILocation(line: 12, column: 20, scope: !283)
!289 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !283, file: !284, line: 12, type: !238)
!290 = !DILocation(line: 12, column: 42, scope: !283)
!291 = !DILocalVariable(name: "len", arg: 3, scope: !283, file: !284, line: 12, type: !123)
!292 = !DILocation(line: 12, column: 58, scope: !283)
!293 = !DILocalVariable(name: "dest", scope: !283, file: !284, line: 13, type: !3)
!294 = !DILocation(line: 13, column: 9, scope: !283)
!295 = !DILocation(line: 13, column: 16, scope: !283)
!296 = !DILocalVariable(name: "src", scope: !283, file: !284, line: 14, type: !297)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!299 = !DILocation(line: 14, column: 15, scope: !283)
!300 = !DILocation(line: 14, column: 21, scope: !283)
!301 = !DILocation(line: 16, column: 3, scope: !283)
!302 = !DILocation(line: 16, column: 13, scope: !283)
!303 = !DILocation(line: 16, column: 16, scope: !283)
!304 = !DILocation(line: 17, column: 19, scope: !283)
!305 = !DILocation(line: 17, column: 15, scope: !283)
!306 = !DILocation(line: 17, column: 10, scope: !283)
!307 = !DILocation(line: 17, column: 13, scope: !283)
!308 = distinct !{!308, !301, !304, !213}
!309 = !DILocation(line: 18, column: 10, scope: !283)
!310 = !DILocation(line: 18, column: 3, scope: !283)

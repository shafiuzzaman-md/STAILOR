; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/046_buf.c_721_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/046_buf.c_721_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlBuf = type { i8*, i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"growing buffer\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"buf_alloc\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"buf_use\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"buf_size\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"newSize\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.7 = private unnamed_addr constant [69 x i8] c"(buf.use <= 256 && buf.use <= (256 - offset)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.8 = private unnamed_addr constant [101 x i8] c"se_runs/sa_llm/libxml2_55980_vul/046_buf.c_721_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlBufMemoryError(%struct._xmlBuf* noundef %0, i8* noundef %1) #0 !dbg !17 {
  %3 = alloca %struct._xmlBuf*, align 8
  %4 = alloca i8*, align 8
  store %struct._xmlBuf* %0, %struct._xmlBuf** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlBuf** %3, metadata !34, metadata !DIExpression()), !dbg !35
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !36, metadata !DIExpression()), !dbg !37
  %5 = load %struct._xmlBuf*, %struct._xmlBuf** %3, align 8, !dbg !38
  %6 = load i8*, i8** %4, align 8, !dbg !39
  ret void, !dbg !40
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlRealloc(i8* noundef %0, i64 noundef %1) #0 !dbg !41 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !47, metadata !DIExpression()), !dbg !48
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !49, metadata !DIExpression()), !dbg !50
  %5 = load i8*, i8** %3, align 8, !dbg !51
  %6 = load i64, i64* %4, align 8, !dbg !52
  ret i8* null, !dbg !53
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_function(%struct._xmlBuf* noundef %0, i32 noundef %1) #0 !dbg !54 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlBuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct._xmlBuf* %0, %struct._xmlBuf** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlBuf** %4, metadata !58, metadata !DIExpression()), !dbg !59
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !60, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata i8** %6, metadata !62, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.declare(metadata i32* %7, metadata !64, metadata !DIExpression()), !dbg !65
  %8 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !66
  %9 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %8, i32 0, i32 4, !dbg !68
  %10 = load i32, i32* %9, align 8, !dbg !68
  %11 = icmp eq i32 %10, 1, !dbg !69
  br i1 %11, label %12, label %76, !dbg !70

12:                                               ; preds = %2
  %13 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !71
  %14 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %13, i32 0, i32 1, !dbg !72
  %15 = load i8*, i8** %14, align 8, !dbg !72
  %16 = icmp ne i8* %15, null, !dbg !73
  br i1 %16, label %17, label %76, !dbg !74

17:                                               ; preds = %12
  %18 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !75
  %19 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %18, i32 0, i32 0, !dbg !77
  %20 = load i8*, i8** %19, align 8, !dbg !77
  %21 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !78
  %22 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %21, i32 0, i32 1, !dbg !79
  %23 = load i8*, i8** %22, align 8, !dbg !79
  %24 = ptrtoint i8* %20 to i64, !dbg !80
  %25 = ptrtoint i8* %23 to i64, !dbg !80
  %26 = sub i64 %24, %25, !dbg !80
  %27 = trunc i64 %26 to i32, !dbg !75
  store i32 %27, i32* %7, align 4, !dbg !81
  %28 = load i32, i32* %7, align 4, !dbg !82
  %29 = load i32, i32* %5, align 4, !dbg !84
  %30 = icmp ugt i32 %28, %29, !dbg !85
  br i1 %30, label %31, label %61, !dbg !86

31:                                               ; preds = %17
  %32 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !87
  %33 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %32, i32 0, i32 1, !dbg !89
  %34 = load i8*, i8** %33, align 8, !dbg !89
  %35 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !90
  %36 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %35, i32 0, i32 0, !dbg !91
  %37 = load i8*, i8** %36, align 8, !dbg !91
  %38 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !92
  %39 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %38, i32 0, i32 2, !dbg !93
  %40 = load i32, i32* %39, align 8, !dbg !93
  %41 = zext i32 %40 to i64, !dbg !92
  %42 = call i8* @memmove(i8* %34, i8* %37, i64 %41), !dbg !94
  %43 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !95
  %44 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %43, i32 0, i32 1, !dbg !96
  %45 = load i8*, i8** %44, align 8, !dbg !96
  %46 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !97
  %47 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %46, i32 0, i32 0, !dbg !98
  store i8* %45, i8** %47, align 8, !dbg !99
  %48 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !100
  %49 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %48, i32 0, i32 0, !dbg !101
  %50 = load i8*, i8** %49, align 8, !dbg !101
  %51 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !102
  %52 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %51, i32 0, i32 2, !dbg !103
  %53 = load i32, i32* %52, align 8, !dbg !103
  %54 = zext i32 %53 to i64, !dbg !100
  %55 = getelementptr inbounds i8, i8* %50, i64 %54, !dbg !100
  store i8 0, i8* %55, align 1, !dbg !104
  %56 = load i32, i32* %7, align 4, !dbg !105
  %57 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !106
  %58 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %57, i32 0, i32 3, !dbg !107
  %59 = load i32, i32* %58, align 4, !dbg !108
  %60 = add i32 %59, %56, !dbg !108
  store i32 %60, i32* %58, align 4, !dbg !108
  br label %75, !dbg !109

61:                                               ; preds = %17
  %62 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !110
  %63 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %62, i32 0, i32 1, !dbg !112
  %64 = load i8*, i8** %63, align 8, !dbg !112
  %65 = load i32, i32* %7, align 4, !dbg !113
  %66 = load i32, i32* %5, align 4, !dbg !114
  %67 = add i32 %65, %66, !dbg !115
  %68 = zext i32 %67 to i64, !dbg !113
  %69 = call i8* @xmlRealloc(i8* noundef %64, i64 noundef %68), !dbg !116
  store i8* %69, i8** %6, align 8, !dbg !117
  %70 = load i8*, i8** %6, align 8, !dbg !118
  %71 = icmp eq i8* %70, null, !dbg !120
  br i1 %71, label %72, label %74, !dbg !121

72:                                               ; preds = %61
  %73 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !122
  call void @xmlBufMemoryError(%struct._xmlBuf* noundef %73, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !124
  store i32 0, i32* %3, align 4, !dbg !125
  br label %77, !dbg !125

74:                                               ; preds = %61
  br label %75

75:                                               ; preds = %74, %31
  br label %76, !dbg !126

76:                                               ; preds = %75, %12, %2
  store i32 1, i32* %3, align 4, !dbg !127
  br label %77, !dbg !127

77:                                               ; preds = %76, %72
  %78 = load i32, i32* %3, align 4, !dbg !128
  ret i32 %78, !dbg !128
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !129 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlBuf, align 8
  %3 = alloca i32, align 4
  %4 = alloca [256 x i8], align 16
  %5 = alloca [256 x i8], align 16
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlBuf* %2, metadata !132, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.declare(metadata i32* %3, metadata !134, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.declare(metadata [256 x i8]* %4, metadata !136, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.declare(metadata [256 x i8]* %5, metadata !141, metadata !DIExpression()), !dbg !142
  %7 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 4, !dbg !143
  %8 = bitcast i32* %7 to i8*, !dbg !144
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)), !dbg !145
  %9 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 2, !dbg !146
  %10 = bitcast i32* %9 to i8*, !dbg !147
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)), !dbg !148
  %11 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 3, !dbg !149
  %12 = bitcast i32* %11 to i8*, !dbg !150
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !151
  %13 = bitcast i32* %3 to i8*, !dbg !152
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)), !dbg !153
  %14 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 4, !dbg !154
  %15 = load i32, i32* %14, align 8, !dbg !154
  %16 = icmp eq i32 %15, 1, !dbg !155
  %17 = zext i1 %16 to i32, !dbg !155
  %18 = sext i32 %17 to i64, !dbg !156
  call void @klee_assume(i64 noundef %18), !dbg !157
  %19 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 2, !dbg !158
  %20 = load i32, i32* %19, align 8, !dbg !158
  %21 = icmp ult i32 %20, 256, !dbg !159
  %22 = zext i1 %21 to i32, !dbg !159
  %23 = sext i32 %22 to i64, !dbg !160
  call void @klee_assume(i64 noundef %23), !dbg !161
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !162
  %25 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 1, !dbg !163
  store i8* %24, i8** %25, align 8, !dbg !164
  call void @llvm.dbg.declare(metadata i32* %6, metadata !165, metadata !DIExpression()), !dbg !166
  %26 = bitcast i32* %6 to i8*, !dbg !167
  call void @klee_make_symbolic(i8* noundef %26, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)), !dbg !168
  %27 = load i32, i32* %6, align 4, !dbg !169
  %28 = icmp ult i32 %27, 256, !dbg !170
  %29 = zext i1 %28 to i32, !dbg !170
  %30 = sext i32 %29 to i64, !dbg !169
  call void @klee_assume(i64 noundef %30), !dbg !171
  %31 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 1, !dbg !172
  %32 = load i8*, i8** %31, align 8, !dbg !172
  %33 = load i32, i32* %6, align 4, !dbg !173
  %34 = zext i32 %33 to i64, !dbg !174
  %35 = getelementptr inbounds i8, i8* %32, i64 %34, !dbg !174
  %36 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 0, !dbg !175
  store i8* %35, i8** %36, align 8, !dbg !176
  %37 = load i32, i32* %6, align 4, !dbg !177
  %38 = load i32, i32* %3, align 4, !dbg !178
  %39 = icmp ugt i32 %37, %38, !dbg !179
  %40 = zext i1 %39 to i32, !dbg !179
  %41 = sext i32 %40 to i64, !dbg !177
  call void @klee_assume(i64 noundef %41), !dbg !180
  %42 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 2, !dbg !181
  %43 = load i32, i32* %42, align 8, !dbg !181
  %44 = icmp ule i32 %43, 256, !dbg !181
  br i1 %44, label %45, label %53, !dbg !181

45:                                               ; preds = %0
  %46 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 2, !dbg !181
  %47 = load i32, i32* %46, align 8, !dbg !181
  %48 = load i32, i32* %6, align 4, !dbg !181
  %49 = sub i32 256, %48, !dbg !181
  %50 = icmp ule i32 %47, %49, !dbg !181
  br i1 %50, label %51, label %53, !dbg !181

51:                                               ; preds = %45
  br i1 true, label %52, label %53, !dbg !181

52:                                               ; preds = %51
  br label %55, !dbg !181

53:                                               ; preds = %51, %45, %0
  %54 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([101 x i8], [101 x i8]* @.str.8, i64 0, i64 0), i32 noundef 91, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !181
  br label %55, !dbg !181

55:                                               ; preds = %53, %52
  %56 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([101 x i8], [101 x i8]* @.str.8, i64 0, i64 0), i32 noundef 94, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !182
  %57 = load i32, i32* %3, align 4, !dbg !183
  %58 = call i32 @target_function(%struct._xmlBuf* noundef %2, i32 noundef %57), !dbg !184
  ret i32 0, !dbg !185
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memmove(i8* noundef %0, i8* noundef %1, i64 noundef %2) #5 !dbg !186 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !192, metadata !DIExpression()), !dbg !193
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !194, metadata !DIExpression()), !dbg !195
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !196, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.declare(metadata i8** %8, metadata !198, metadata !DIExpression()), !dbg !200
  %10 = load i8*, i8** %5, align 8, !dbg !201
  store i8* %10, i8** %8, align 8, !dbg !200
  call void @llvm.dbg.declare(metadata i8** %9, metadata !202, metadata !DIExpression()), !dbg !203
  %11 = load i8*, i8** %6, align 8, !dbg !204
  store i8* %11, i8** %9, align 8, !dbg !203
  %12 = load i8*, i8** %6, align 8, !dbg !205
  %13 = load i8*, i8** %5, align 8, !dbg !207
  %14 = icmp eq i8* %12, %13, !dbg !208
  br i1 %14, label %15, label %17, !dbg !209

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8, !dbg !210
  store i8* %16, i8** %4, align 8, !dbg !211
  br label %52, !dbg !211

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8, !dbg !212
  %19 = load i8*, i8** %5, align 8, !dbg !214
  %20 = icmp ugt i8* %18, %19, !dbg !215
  br i1 %20, label %21, label %31, !dbg !216

21:                                               ; preds = %17, %25
  %22 = load i64, i64* %7, align 8, !dbg !217
  %23 = add i64 %22, -1, !dbg !217
  store i64 %23, i64* %7, align 8, !dbg !217
  %24 = icmp ne i64 %22, 0, !dbg !219
  br i1 %24, label %25, label %50, !dbg !219

25:                                               ; preds = %21
  %26 = load i8*, i8** %9, align 8, !dbg !220
  %27 = getelementptr inbounds i8, i8* %26, i32 1, !dbg !220
  store i8* %27, i8** %9, align 8, !dbg !220
  %28 = load i8, i8* %26, align 1, !dbg !221
  %29 = load i8*, i8** %8, align 8, !dbg !222
  %30 = getelementptr inbounds i8, i8* %29, i32 1, !dbg !222
  store i8* %30, i8** %8, align 8, !dbg !222
  store i8 %28, i8* %29, align 1, !dbg !223
  br label %21, !dbg !219, !llvm.loop !224

31:                                               ; preds = %17
  %32 = load i64, i64* %7, align 8, !dbg !226
  %33 = sub i64 %32, 1, !dbg !228
  %34 = load i8*, i8** %8, align 8, !dbg !229
  %35 = getelementptr inbounds i8, i8* %34, i64 %33, !dbg !229
  store i8* %35, i8** %8, align 8, !dbg !229
  %36 = load i64, i64* %7, align 8, !dbg !230
  %37 = sub i64 %36, 1, !dbg !231
  %38 = load i8*, i8** %9, align 8, !dbg !232
  %39 = getelementptr inbounds i8, i8* %38, i64 %37, !dbg !232
  store i8* %39, i8** %9, align 8, !dbg !232
  br label %40, !dbg !233

40:                                               ; preds = %44, %31
  %41 = load i64, i64* %7, align 8, !dbg !234
  %42 = add i64 %41, -1, !dbg !234
  store i64 %42, i64* %7, align 8, !dbg !234
  %43 = icmp ne i64 %41, 0, !dbg !233
  br i1 %43, label %44, label %50, !dbg !233

44:                                               ; preds = %40
  %45 = load i8*, i8** %9, align 8, !dbg !235
  %46 = getelementptr inbounds i8, i8* %45, i32 -1, !dbg !235
  store i8* %46, i8** %9, align 8, !dbg !235
  %47 = load i8, i8* %45, align 1, !dbg !236
  %48 = load i8*, i8** %8, align 8, !dbg !237
  %49 = getelementptr inbounds i8, i8* %48, i32 -1, !dbg !237
  store i8* %49, i8** %8, align 8, !dbg !237
  store i8 %47, i8* %48, align 1, !dbg !238
  br label %40, !dbg !233, !llvm.loop !239

50:                                               ; preds = %40, %21
  %51 = load i8*, i8** %5, align 8, !dbg !240
  store i8* %51, i8** %4, align 8, !dbg !241
  br label %52, !dbg !241

52:                                               ; preds = %50, %15
  %53 = load i8*, i8** %4, align 8, !dbg !242
  ret i8* %53, !dbg !242
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16, !16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/046_buf.c_721_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "806e8bda9e9221d57e3c3edbb5b3c17b")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !1, line: 10, baseType: !6)
!6 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!8 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memmove.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "6cd27189cdce56ce74ae860a315e13f2")
!9 = !{i32 7, !"Dwarf Version", i32 5}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{i32 7, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"Ubuntu clang version 14.0.6"}
!17 = distinct !DISubprogram(name: "xmlBufMemoryError", scope: !1, file: !1, line: 21, type: !18, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!18 = !DISubroutineType(types: !19)
!19 = !{null, !20, !30}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBuf", file: !1, line: 11, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlBuf", file: !1, line: 12, size: 256, elements: !23)
!23 = !{!24, !25, !26, !28, !29}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !22, file: !1, line: 13, baseType: !4, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "contentIO", scope: !22, file: !1, line: 14, baseType: !4, size: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !22, file: !1, line: 15, baseType: !27, size: 32, offset: 128)
!27 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !22, file: !1, line: 16, baseType: !27, size: 32, offset: 160)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !22, file: !1, line: 17, baseType: !27, size: 32, offset: 192)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!32 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!33 = !{}
!34 = !DILocalVariable(name: "buf", arg: 1, scope: !17, file: !1, line: 21, type: !20)
!35 = !DILocation(line: 21, column: 32, scope: !17)
!36 = !DILocalVariable(name: "msg", arg: 2, scope: !17, file: !1, line: 21, type: !30)
!37 = !DILocation(line: 21, column: 49, scope: !17)
!38 = !DILocation(line: 22, column: 11, scope: !17)
!39 = !DILocation(line: 23, column: 11, scope: !17)
!40 = !DILocation(line: 24, column: 1, scope: !17)
!41 = distinct !DISubprogram(name: "xmlRealloc", scope: !1, file: !1, line: 27, type: !42, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!42 = !DISubroutineType(types: !43)
!43 = !{!3, !3, !44}
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !45, line: 46, baseType: !46)
!45 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!46 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!47 = !DILocalVariable(name: "ptr", arg: 1, scope: !41, file: !1, line: 27, type: !3)
!48 = !DILocation(line: 27, column: 24, scope: !41)
!49 = !DILocalVariable(name: "size", arg: 2, scope: !41, file: !1, line: 27, type: !44)
!50 = !DILocation(line: 27, column: 36, scope: !41)
!51 = !DILocation(line: 28, column: 11, scope: !41)
!52 = !DILocation(line: 29, column: 11, scope: !41)
!53 = !DILocation(line: 30, column: 5, scope: !41)
!54 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 34, type: !55, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!55 = !DISubroutineType(types: !56)
!56 = !{!57, !20, !27}
!57 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!58 = !DILocalVariable(name: "buf", arg: 1, scope: !54, file: !1, line: 34, type: !20)
!59 = !DILocation(line: 34, column: 29, scope: !54)
!60 = !DILocalVariable(name: "newSize", arg: 2, scope: !54, file: !1, line: 34, type: !27)
!61 = !DILocation(line: 34, column: 47, scope: !54)
!62 = !DILocalVariable(name: "rebuf", scope: !54, file: !1, line: 35, type: !4)
!63 = !DILocation(line: 35, column: 14, scope: !54)
!64 = !DILocalVariable(name: "start_buf", scope: !54, file: !1, line: 36, type: !27)
!65 = !DILocation(line: 36, column: 18, scope: !54)
!66 = !DILocation(line: 38, column: 10, scope: !67)
!67 = distinct !DILexicalBlock(scope: !54, file: !1, line: 38, column: 9)
!68 = !DILocation(line: 38, column: 15, scope: !67)
!69 = !DILocation(line: 38, column: 21, scope: !67)
!70 = !DILocation(line: 38, column: 27, scope: !67)
!71 = !DILocation(line: 38, column: 31, scope: !67)
!72 = !DILocation(line: 38, column: 36, scope: !67)
!73 = !DILocation(line: 38, column: 46, scope: !67)
!74 = !DILocation(line: 38, column: 9, scope: !54)
!75 = !DILocation(line: 39, column: 21, scope: !76)
!76 = distinct !DILexicalBlock(scope: !67, file: !1, line: 38, column: 56)
!77 = !DILocation(line: 39, column: 26, scope: !76)
!78 = !DILocation(line: 39, column: 36, scope: !76)
!79 = !DILocation(line: 39, column: 41, scope: !76)
!80 = !DILocation(line: 39, column: 34, scope: !76)
!81 = !DILocation(line: 39, column: 19, scope: !76)
!82 = !DILocation(line: 41, column: 13, scope: !83)
!83 = distinct !DILexicalBlock(scope: !76, file: !1, line: 41, column: 13)
!84 = !DILocation(line: 41, column: 25, scope: !83)
!85 = !DILocation(line: 41, column: 23, scope: !83)
!86 = !DILocation(line: 41, column: 13, scope: !76)
!87 = !DILocation(line: 43, column: 21, scope: !88)
!88 = distinct !DILexicalBlock(scope: !83, file: !1, line: 41, column: 34)
!89 = !DILocation(line: 43, column: 26, scope: !88)
!90 = !DILocation(line: 43, column: 37, scope: !88)
!91 = !DILocation(line: 43, column: 42, scope: !88)
!92 = !DILocation(line: 43, column: 51, scope: !88)
!93 = !DILocation(line: 43, column: 56, scope: !88)
!94 = !DILocation(line: 43, column: 13, scope: !88)
!95 = !DILocation(line: 44, column: 28, scope: !88)
!96 = !DILocation(line: 44, column: 33, scope: !88)
!97 = !DILocation(line: 44, column: 13, scope: !88)
!98 = !DILocation(line: 44, column: 18, scope: !88)
!99 = !DILocation(line: 44, column: 26, scope: !88)
!100 = !DILocation(line: 45, column: 13, scope: !88)
!101 = !DILocation(line: 45, column: 18, scope: !88)
!102 = !DILocation(line: 45, column: 26, scope: !88)
!103 = !DILocation(line: 45, column: 31, scope: !88)
!104 = !DILocation(line: 45, column: 36, scope: !88)
!105 = !DILocation(line: 46, column: 26, scope: !88)
!106 = !DILocation(line: 46, column: 13, scope: !88)
!107 = !DILocation(line: 46, column: 18, scope: !88)
!108 = !DILocation(line: 46, column: 23, scope: !88)
!109 = !DILocation(line: 47, column: 9, scope: !88)
!110 = !DILocation(line: 48, column: 44, scope: !111)
!111 = distinct !DILexicalBlock(scope: !83, file: !1, line: 47, column: 16)
!112 = !DILocation(line: 48, column: 49, scope: !111)
!113 = !DILocation(line: 48, column: 60, scope: !111)
!114 = !DILocation(line: 48, column: 72, scope: !111)
!115 = !DILocation(line: 48, column: 70, scope: !111)
!116 = !DILocation(line: 48, column: 33, scope: !111)
!117 = !DILocation(line: 48, column: 19, scope: !111)
!118 = !DILocation(line: 49, column: 17, scope: !119)
!119 = distinct !DILexicalBlock(scope: !111, file: !1, line: 49, column: 17)
!120 = !DILocation(line: 49, column: 23, scope: !119)
!121 = !DILocation(line: 49, column: 17, scope: !111)
!122 = !DILocation(line: 50, column: 35, scope: !123)
!123 = distinct !DILexicalBlock(scope: !119, file: !1, line: 49, column: 32)
!124 = !DILocation(line: 50, column: 17, scope: !123)
!125 = !DILocation(line: 51, column: 17, scope: !123)
!126 = !DILocation(line: 54, column: 5, scope: !76)
!127 = !DILocation(line: 55, column: 5, scope: !54)
!128 = !DILocation(line: 56, column: 1, scope: !54)
!129 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 58, type: !130, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!130 = !DISubroutineType(types: !131)
!131 = !{!57}
!132 = !DILocalVariable(name: "buf", scope: !129, file: !1, line: 59, type: !21)
!133 = !DILocation(line: 59, column: 12, scope: !129)
!134 = !DILocalVariable(name: "newSize", scope: !129, file: !1, line: 60, type: !27)
!135 = !DILocation(line: 60, column: 18, scope: !129)
!136 = !DILocalVariable(name: "contentIO_buffer", scope: !129, file: !1, line: 61, type: !137)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 2048, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 256)
!140 = !DILocation(line: 61, column: 13, scope: !129)
!141 = !DILocalVariable(name: "content_buffer", scope: !129, file: !1, line: 62, type: !137)
!142 = !DILocation(line: 62, column: 13, scope: !129)
!143 = !DILocation(line: 65, column: 29, scope: !129)
!144 = !DILocation(line: 65, column: 24, scope: !129)
!145 = !DILocation(line: 65, column: 5, scope: !129)
!146 = !DILocation(line: 66, column: 29, scope: !129)
!147 = !DILocation(line: 66, column: 24, scope: !129)
!148 = !DILocation(line: 66, column: 5, scope: !129)
!149 = !DILocation(line: 67, column: 29, scope: !129)
!150 = !DILocation(line: 67, column: 24, scope: !129)
!151 = !DILocation(line: 67, column: 5, scope: !129)
!152 = !DILocation(line: 68, column: 24, scope: !129)
!153 = !DILocation(line: 68, column: 5, scope: !129)
!154 = !DILocation(line: 71, column: 21, scope: !129)
!155 = !DILocation(line: 71, column: 27, scope: !129)
!156 = !DILocation(line: 71, column: 17, scope: !129)
!157 = !DILocation(line: 71, column: 5, scope: !129)
!158 = !DILocation(line: 74, column: 21, scope: !129)
!159 = !DILocation(line: 74, column: 25, scope: !129)
!160 = !DILocation(line: 74, column: 17, scope: !129)
!161 = !DILocation(line: 74, column: 5, scope: !129)
!162 = !DILocation(line: 77, column: 21, scope: !129)
!163 = !DILocation(line: 77, column: 9, scope: !129)
!164 = !DILocation(line: 77, column: 19, scope: !129)
!165 = !DILocalVariable(name: "offset", scope: !129, file: !1, line: 80, type: !27)
!166 = !DILocation(line: 80, column: 18, scope: !129)
!167 = !DILocation(line: 81, column: 24, scope: !129)
!168 = !DILocation(line: 81, column: 5, scope: !129)
!169 = !DILocation(line: 82, column: 17, scope: !129)
!170 = !DILocation(line: 82, column: 24, scope: !129)
!171 = !DILocation(line: 82, column: 5, scope: !129)
!172 = !DILocation(line: 83, column: 23, scope: !129)
!173 = !DILocation(line: 83, column: 35, scope: !129)
!174 = !DILocation(line: 83, column: 33, scope: !129)
!175 = !DILocation(line: 83, column: 9, scope: !129)
!176 = !DILocation(line: 83, column: 17, scope: !129)
!177 = !DILocation(line: 87, column: 17, scope: !129)
!178 = !DILocation(line: 87, column: 26, scope: !129)
!179 = !DILocation(line: 87, column: 24, scope: !129)
!180 = !DILocation(line: 87, column: 5, scope: !129)
!181 = !DILocation(line: 91, column: 5, scope: !129)
!182 = !DILocation(line: 94, column: 5, scope: !129)
!183 = !DILocation(line: 97, column: 27, scope: !129)
!184 = !DILocation(line: 97, column: 5, scope: !129)
!185 = !DILocation(line: 99, column: 5, scope: !129)
!186 = distinct !DISubprogram(name: "memmove", scope: !187, file: !187, line: 12, type: !188, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !33)
!187 = !DIFile(filename: "runtime/Freestanding/memmove.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "6cd27189cdce56ce74ae860a315e13f2")
!188 = !DISubroutineType(types: !189)
!189 = !{!3, !3, !190, !44}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!192 = !DILocalVariable(name: "dst", arg: 1, scope: !186, file: !187, line: 12, type: !3)
!193 = !DILocation(line: 12, column: 21, scope: !186)
!194 = !DILocalVariable(name: "src", arg: 2, scope: !186, file: !187, line: 12, type: !190)
!195 = !DILocation(line: 12, column: 38, scope: !186)
!196 = !DILocalVariable(name: "count", arg: 3, scope: !186, file: !187, line: 12, type: !44)
!197 = !DILocation(line: 12, column: 50, scope: !186)
!198 = !DILocalVariable(name: "a", scope: !186, file: !187, line: 13, type: !199)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!200 = !DILocation(line: 13, column: 9, scope: !186)
!201 = !DILocation(line: 13, column: 13, scope: !186)
!202 = !DILocalVariable(name: "b", scope: !186, file: !187, line: 14, type: !30)
!203 = !DILocation(line: 14, column: 15, scope: !186)
!204 = !DILocation(line: 14, column: 19, scope: !186)
!205 = !DILocation(line: 16, column: 7, scope: !206)
!206 = distinct !DILexicalBlock(scope: !186, file: !187, line: 16, column: 7)
!207 = !DILocation(line: 16, column: 14, scope: !206)
!208 = !DILocation(line: 16, column: 11, scope: !206)
!209 = !DILocation(line: 16, column: 7, scope: !186)
!210 = !DILocation(line: 17, column: 12, scope: !206)
!211 = !DILocation(line: 17, column: 5, scope: !206)
!212 = !DILocation(line: 19, column: 7, scope: !213)
!213 = distinct !DILexicalBlock(scope: !186, file: !187, line: 19, column: 7)
!214 = !DILocation(line: 19, column: 13, scope: !213)
!215 = !DILocation(line: 19, column: 11, scope: !213)
!216 = !DILocation(line: 19, column: 7, scope: !186)
!217 = !DILocation(line: 20, column: 17, scope: !218)
!218 = distinct !DILexicalBlock(scope: !213, file: !187, line: 19, column: 18)
!219 = !DILocation(line: 20, column: 5, scope: !218)
!220 = !DILocation(line: 21, column: 16, scope: !218)
!221 = !DILocation(line: 21, column: 14, scope: !218)
!222 = !DILocation(line: 21, column: 9, scope: !218)
!223 = !DILocation(line: 21, column: 12, scope: !218)
!224 = distinct !{!224, !219, !220, !225}
!225 = !{!"llvm.loop.mustprogress"}
!226 = !DILocation(line: 23, column: 10, scope: !227)
!227 = distinct !DILexicalBlock(scope: !213, file: !187, line: 22, column: 10)
!228 = !DILocation(line: 23, column: 16, scope: !227)
!229 = !DILocation(line: 23, column: 7, scope: !227)
!230 = !DILocation(line: 24, column: 10, scope: !227)
!231 = !DILocation(line: 24, column: 16, scope: !227)
!232 = !DILocation(line: 24, column: 7, scope: !227)
!233 = !DILocation(line: 25, column: 5, scope: !227)
!234 = !DILocation(line: 25, column: 17, scope: !227)
!235 = !DILocation(line: 26, column: 16, scope: !227)
!236 = !DILocation(line: 26, column: 14, scope: !227)
!237 = !DILocation(line: 26, column: 9, scope: !227)
!238 = !DILocation(line: 26, column: 12, scope: !227)
!239 = distinct !{!239, !233, !235, !225}
!240 = !DILocation(line: 29, column: 10, scope: !186)
!241 = !DILocation(line: 29, column: 3, scope: !186)
!242 = !DILocation(line: 30, column: 1, scope: !186)

; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/044_buf.c_798_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/044_buf.c_798_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlBuf = type { i8*, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"growing buffer\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"buf_size\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"(len <= (buf.size - buf.use) - 1) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [101 x i8] c"se_runs/sa_llm/libxml2_62911_vul/044_buf.c_798_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlBufMemoryError(%struct._xmlBuf* noundef %0, i8* noundef %1) #0 !dbg !16 {
  %3 = alloca %struct._xmlBuf*, align 8
  %4 = alloca i8*, align 8
  store %struct._xmlBuf* %0, %struct._xmlBuf** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlBuf** %3, metadata !34, metadata !DIExpression()), !dbg !35
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !36, metadata !DIExpression()), !dbg !37
  %5 = load %struct._xmlBuf*, %struct._xmlBuf** %3, align 8, !dbg !38
  %6 = icmp ne %struct._xmlBuf* %5, null, !dbg !38
  br i1 %6, label %7, label %10, !dbg !40

7:                                                ; preds = %2
  %8 = load %struct._xmlBuf*, %struct._xmlBuf** %3, align 8, !dbg !41
  %9 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %8, i32 0, i32 5, !dbg !42
  store i32 1, i32* %9, align 8, !dbg !43
  br label %10, !dbg !41

10:                                               ; preds = %7, %2
  ret void, !dbg !44
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlBufAdd(%struct._xmlBuf* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !45 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._xmlBuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct._xmlBuf* %0, %struct._xmlBuf** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlBuf** %5, metadata !48, metadata !DIExpression()), !dbg !49
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !50, metadata !DIExpression()), !dbg !51
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !52, metadata !DIExpression()), !dbg !53
  %8 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !54
  %9 = icmp eq %struct._xmlBuf* %8, null, !dbg !56
  br i1 %9, label %16, label %10, !dbg !57

10:                                               ; preds = %3
  %11 = load i8*, i8** %6, align 8, !dbg !58
  %12 = icmp eq i8* %11, null, !dbg !59
  br i1 %12, label %16, label %13, !dbg !60

13:                                               ; preds = %10
  %14 = load i32, i32* %7, align 4, !dbg !61
  %15 = icmp slt i32 %14, 0, !dbg !62
  br i1 %15, label %16, label %17, !dbg !63

16:                                               ; preds = %13, %10, %3
  store i32 -1, i32* %4, align 4, !dbg !64
  br label %69, !dbg !64

17:                                               ; preds = %13
  %18 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !66
  %19 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %18, i32 0, i32 1, !dbg !68
  %20 = load i32, i32* %19, align 8, !dbg !68
  %21 = load i32, i32* %7, align 4, !dbg !69
  %22 = add i32 %20, %21, !dbg !70
  %23 = add i32 %22, 1, !dbg !71
  %24 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !72
  %25 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %24, i32 0, i32 2, !dbg !73
  %26 = load i32, i32* %25, align 4, !dbg !73
  %27 = icmp ugt i32 %23, %26, !dbg !74
  br i1 %27, label %28, label %30, !dbg !75

28:                                               ; preds = %17
  %29 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !76
  call void @xmlBufMemoryError(%struct._xmlBuf* noundef %29, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !78
  store i32 -1, i32* %4, align 4, !dbg !79
  br label %69, !dbg !79

30:                                               ; preds = %17
  %31 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !80
  %32 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %31, i32 0, i32 0, !dbg !81
  %33 = load i8*, i8** %32, align 8, !dbg !81
  %34 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !82
  %35 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %34, i32 0, i32 1, !dbg !83
  %36 = load i32, i32* %35, align 8, !dbg !83
  %37 = zext i32 %36 to i64, !dbg !80
  %38 = getelementptr inbounds i8, i8* %33, i64 %37, !dbg !80
  %39 = load i8*, i8** %6, align 8, !dbg !84
  %40 = load i32, i32* %7, align 4, !dbg !85
  %41 = sext i32 %40 to i64, !dbg !85
  %42 = call i8* @memmove(i8* %38, i8* %39, i64 %41), !dbg !86
  %43 = load i32, i32* %7, align 4, !dbg !87
  %44 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !88
  %45 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %44, i32 0, i32 1, !dbg !89
  %46 = load i32, i32* %45, align 8, !dbg !90
  %47 = add i32 %46, %43, !dbg !90
  store i32 %47, i32* %45, align 8, !dbg !90
  %48 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !91
  %49 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %48, i32 0, i32 0, !dbg !92
  %50 = load i8*, i8** %49, align 8, !dbg !92
  %51 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !93
  %52 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %51, i32 0, i32 1, !dbg !94
  %53 = load i32, i32* %52, align 8, !dbg !94
  %54 = zext i32 %53 to i64, !dbg !91
  %55 = getelementptr inbounds i8, i8* %50, i64 %54, !dbg !91
  store i8 0, i8* %55, align 1, !dbg !95
  br label %56, !dbg !96

56:                                               ; preds = %30
  %57 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !97
  %58 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %57, i32 0, i32 4, !dbg !97
  %59 = load i32, i32* %58, align 4, !dbg !97
  %60 = icmp ugt i32 %59, 0, !dbg !97
  br i1 %60, label %61, label %67, !dbg !100

61:                                               ; preds = %56
  %62 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !101
  %63 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %62, i32 0, i32 1, !dbg !101
  %64 = load i32, i32* %63, align 8, !dbg !101
  %65 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !101
  %66 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %65, i32 0, i32 3, !dbg !101
  store i32 %64, i32* %66, align 8, !dbg !101
  br label %67, !dbg !101

67:                                               ; preds = %61, %56
  br label %68, !dbg !100

68:                                               ; preds = %67
  store i32 0, i32* %4, align 4, !dbg !103
  br label %69, !dbg !103

69:                                               ; preds = %68, %28, %16
  %70 = load i32, i32* %4, align 4, !dbg !104
  ret i32 %70, !dbg !104
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !105 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlBuf, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlBuf* %2, metadata !108, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata i32* %3, metadata !110, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.declare(metadata i8** %4, metadata !112, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata i32* %5, metadata !114, metadata !DIExpression()), !dbg !115
  %7 = bitcast i32* %5 to i8*, !dbg !116
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)), !dbg !117
  %8 = load i32, i32* %5, align 4, !dbg !118
  %9 = icmp uge i32 %8, 1, !dbg !119
  br i1 %9, label %10, label %13, !dbg !120

10:                                               ; preds = %0
  %11 = load i32, i32* %5, align 4, !dbg !121
  %12 = icmp ule i32 %11, 1024, !dbg !122
  br label %13

13:                                               ; preds = %10, %0
  %14 = phi i1 [ false, %0 ], [ %12, %10 ], !dbg !123
  %15 = zext i1 %14 to i32, !dbg !120
  %16 = sext i32 %15 to i64, !dbg !118
  call void @klee_assume(i64 noundef %16), !dbg !124
  %17 = load i32, i32* %5, align 4, !dbg !125
  %18 = zext i32 %17 to i64, !dbg !125
  %19 = call noalias i8* @malloc(i64 noundef %18) #7, !dbg !126
  %20 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 0, !dbg !127
  store i8* %19, i8** %20, align 8, !dbg !128
  %21 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 0, !dbg !129
  %22 = load i8*, i8** %21, align 8, !dbg !129
  %23 = icmp ne i8* %22, null, !dbg !131
  br i1 %23, label %25, label %24, !dbg !132

24:                                               ; preds = %13
  store i32 0, i32* %1, align 4, !dbg !133
  br label %95, !dbg !133

25:                                               ; preds = %13
  %26 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 1, !dbg !134
  store i32 0, i32* %26, align 8, !dbg !135
  %27 = load i32, i32* %5, align 4, !dbg !136
  %28 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 2, !dbg !137
  store i32 %27, i32* %28, align 4, !dbg !138
  %29 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 3, !dbg !139
  store i32 0, i32* %29, align 8, !dbg !140
  %30 = load i32, i32* %5, align 4, !dbg !141
  %31 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 4, !dbg !142
  store i32 %30, i32* %31, align 4, !dbg !143
  %32 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 5, !dbg !144
  store i32 0, i32* %32, align 8, !dbg !145
  %33 = bitcast i32* %3 to i8*, !dbg !146
  call void @klee_make_symbolic(i8* noundef %33, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)), !dbg !147
  %34 = load i32, i32* %3, align 4, !dbg !148
  %35 = icmp sge i32 %34, 0, !dbg !149
  br i1 %35, label %36, label %39, !dbg !150

36:                                               ; preds = %25
  %37 = load i32, i32* %3, align 4, !dbg !151
  %38 = icmp sle i32 %37, 1024, !dbg !152
  br label %39

39:                                               ; preds = %36, %25
  %40 = phi i1 [ false, %25 ], [ %38, %36 ], !dbg !123
  %41 = zext i1 %40 to i32, !dbg !150
  %42 = sext i32 %41 to i64, !dbg !148
  call void @klee_assume(i64 noundef %42), !dbg !153
  %43 = load i32, i32* %3, align 4, !dbg !154
  %44 = add nsw i32 %43, 1, !dbg !155
  %45 = sext i32 %44 to i64, !dbg !154
  %46 = call noalias i8* @malloc(i64 noundef %45) #7, !dbg !156
  store i8* %46, i8** %4, align 8, !dbg !157
  %47 = load i8*, i8** %4, align 8, !dbg !158
  %48 = icmp ne i8* %47, null, !dbg !158
  br i1 %48, label %52, label %49, !dbg !160

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 0, !dbg !161
  %51 = load i8*, i8** %50, align 8, !dbg !161
  call void @free(i8* noundef %51) #7, !dbg !163
  store i32 0, i32* %1, align 4, !dbg !164
  br label %95, !dbg !164

52:                                               ; preds = %39
  %53 = load i8*, i8** %4, align 8, !dbg !165
  %54 = load i32, i32* %3, align 4, !dbg !166
  %55 = add nsw i32 %54, 1, !dbg !167
  %56 = sext i32 %55 to i64, !dbg !166
  call void @klee_make_symbolic(i8* noundef %53, i64 noundef %56, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)), !dbg !168
  %57 = load i32, i32* %3, align 4, !dbg !169
  %58 = icmp sgt i32 %57, 0, !dbg !171
  br i1 %58, label %59, label %64, !dbg !172

59:                                               ; preds = %52
  %60 = load i8*, i8** %4, align 8, !dbg !173
  %61 = load i32, i32* %3, align 4, !dbg !174
  %62 = sext i32 %61 to i64, !dbg !173
  %63 = getelementptr inbounds i8, i8* %60, i64 %62, !dbg !173
  store i8 0, i8* %63, align 1, !dbg !175
  br label %64, !dbg !173

64:                                               ; preds = %59, %52
  %65 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 1, !dbg !176
  %66 = load i32, i32* %65, align 8, !dbg !176
  %67 = load i32, i32* %3, align 4, !dbg !177
  %68 = add i32 %66, %67, !dbg !178
  %69 = add i32 %68, 1, !dbg !179
  %70 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 2, !dbg !180
  %71 = load i32, i32* %70, align 4, !dbg !180
  %72 = icmp ule i32 %69, %71, !dbg !181
  %73 = zext i1 %72 to i32, !dbg !181
  %74 = sext i32 %73 to i64, !dbg !182
  call void @klee_assume(i64 noundef %74), !dbg !183
  call void @llvm.dbg.declare(metadata i32* %6, metadata !184, metadata !DIExpression()), !dbg !185
  %75 = load i8*, i8** %4, align 8, !dbg !186
  %76 = load i32, i32* %3, align 4, !dbg !187
  %77 = call i32 @xmlBufAdd(%struct._xmlBuf* noundef %2, i8* noundef %75, i32 noundef %76), !dbg !188
  store i32 %77, i32* %6, align 4, !dbg !185
  %78 = load i32, i32* %3, align 4, !dbg !189
  %79 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 2, !dbg !189
  %80 = load i32, i32* %79, align 4, !dbg !189
  %81 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 1, !dbg !189
  %82 = load i32, i32* %81, align 8, !dbg !189
  %83 = sub i32 %80, %82, !dbg !189
  %84 = sub i32 %83, 1, !dbg !189
  %85 = icmp ule i32 %78, %84, !dbg !189
  br i1 %85, label %86, label %88, !dbg !189

86:                                               ; preds = %64
  br i1 true, label %87, label %88, !dbg !189

87:                                               ; preds = %86
  br label %90, !dbg !189

88:                                               ; preds = %86, %64
  %89 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([101 x i8], [101 x i8]* @.str.6, i64 0, i64 0), i32 noundef 99, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !189
  br label %90, !dbg !189

90:                                               ; preds = %88, %87
  %91 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([101 x i8], [101 x i8]* @.str.6, i64 0, i64 0), i32 noundef 102, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !190
  %92 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 0, !dbg !191
  %93 = load i8*, i8** %92, align 8, !dbg !191
  call void @free(i8* noundef %93) #7, !dbg !192
  %94 = load i8*, i8** %4, align 8, !dbg !193
  call void @free(i8* noundef %94) #7, !dbg !194
  store i32 0, i32* %1, align 4, !dbg !195
  br label %95, !dbg !195

95:                                               ; preds = %90, %49, %24
  %96 = load i32, i32* %1, align 4, !dbg !196
  ret i32 %96, !dbg !196
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memmove(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !197 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !206, metadata !DIExpression()), !dbg !207
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !208, metadata !DIExpression()), !dbg !209
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !210, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.declare(metadata i8** %8, metadata !212, metadata !DIExpression()), !dbg !213
  %10 = load i8*, i8** %5, align 8, !dbg !214
  store i8* %10, i8** %8, align 8, !dbg !213
  call void @llvm.dbg.declare(metadata i8** %9, metadata !215, metadata !DIExpression()), !dbg !216
  %11 = load i8*, i8** %6, align 8, !dbg !217
  store i8* %11, i8** %9, align 8, !dbg !216
  %12 = load i8*, i8** %6, align 8, !dbg !218
  %13 = load i8*, i8** %5, align 8, !dbg !220
  %14 = icmp eq i8* %12, %13, !dbg !221
  br i1 %14, label %15, label %17, !dbg !222

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8, !dbg !223
  store i8* %16, i8** %4, align 8, !dbg !224
  br label %52, !dbg !224

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8, !dbg !225
  %19 = load i8*, i8** %5, align 8, !dbg !227
  %20 = icmp ugt i8* %18, %19, !dbg !228
  br i1 %20, label %21, label %31, !dbg !229

21:                                               ; preds = %17, %25
  %22 = load i64, i64* %7, align 8, !dbg !230
  %23 = add i64 %22, -1, !dbg !230
  store i64 %23, i64* %7, align 8, !dbg !230
  %24 = icmp ne i64 %22, 0, !dbg !232
  br i1 %24, label %25, label %50, !dbg !232

25:                                               ; preds = %21
  %26 = load i8*, i8** %9, align 8, !dbg !233
  %27 = getelementptr inbounds i8, i8* %26, i32 1, !dbg !233
  store i8* %27, i8** %9, align 8, !dbg !233
  %28 = load i8, i8* %26, align 1, !dbg !234
  %29 = load i8*, i8** %8, align 8, !dbg !235
  %30 = getelementptr inbounds i8, i8* %29, i32 1, !dbg !235
  store i8* %30, i8** %8, align 8, !dbg !235
  store i8 %28, i8* %29, align 1, !dbg !236
  br label %21, !dbg !232, !llvm.loop !237

31:                                               ; preds = %17
  %32 = load i64, i64* %7, align 8, !dbg !239
  %33 = sub i64 %32, 1, !dbg !241
  %34 = load i8*, i8** %8, align 8, !dbg !242
  %35 = getelementptr inbounds i8, i8* %34, i64 %33, !dbg !242
  store i8* %35, i8** %8, align 8, !dbg !242
  %36 = load i64, i64* %7, align 8, !dbg !243
  %37 = sub i64 %36, 1, !dbg !244
  %38 = load i8*, i8** %9, align 8, !dbg !245
  %39 = getelementptr inbounds i8, i8* %38, i64 %37, !dbg !245
  store i8* %39, i8** %9, align 8, !dbg !245
  br label %40, !dbg !246

40:                                               ; preds = %44, %31
  %41 = load i64, i64* %7, align 8, !dbg !247
  %42 = add i64 %41, -1, !dbg !247
  store i64 %42, i64* %7, align 8, !dbg !247
  %43 = icmp ne i64 %41, 0, !dbg !246
  br i1 %43, label %44, label %50, !dbg !246

44:                                               ; preds = %40
  %45 = load i8*, i8** %9, align 8, !dbg !248
  %46 = getelementptr inbounds i8, i8* %45, i32 -1, !dbg !248
  store i8* %46, i8** %9, align 8, !dbg !248
  %47 = load i8, i8* %45, align 1, !dbg !249
  %48 = load i8*, i8** %8, align 8, !dbg !250
  %49 = getelementptr inbounds i8, i8* %48, i32 -1, !dbg !250
  store i8* %49, i8** %8, align 8, !dbg !250
  store i8 %47, i8* %48, align 1, !dbg !251
  br label %40, !dbg !246, !llvm.loop !252

50:                                               ; preds = %40, %21
  %51 = load i8*, i8** %5, align 8, !dbg !253
  store i8* %51, i8** %4, align 8, !dbg !254
  br label %52, !dbg !254

52:                                               ; preds = %50, %15
  %53 = load i8*, i8** %4, align 8, !dbg !255
  ret i8* %53, !dbg !255
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15, !15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/044_buf.c_798_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "07e5a1656b389920a4e4ef182472eedb")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = distinct !DICompileUnit(language: DW_LANG_C99, file: !7, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!7 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memmove.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "6cd27189cdce56ce74ae860a315e13f2")
!8 = !{i32 7, !"Dwarf Version", i32 5}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{i32 7, !"PIC Level", i32 2}
!12 = !{i32 7, !"PIE Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"Ubuntu clang version 14.0.6"}
!16 = distinct !DISubprogram(name: "xmlBufMemoryError", scope: !1, file: !1, line: 29, type: !17, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!17 = !DISubroutineType(types: !18)
!18 = !{null, !19, !31}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBuf", file: !1, line: 10, baseType: !21)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlBuf", file: !1, line: 11, size: 256, elements: !22)
!22 = !{!23, !24, !26, !27, !28, !29}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !21, file: !1, line: 12, baseType: !4, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !21, file: !1, line: 13, baseType: !25, size: 32, offset: 64)
!25 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !21, file: !1, line: 14, baseType: !25, size: 32, offset: 96)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "compat_use", scope: !21, file: !1, line: 15, baseType: !25, size: 32, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "compat_size", scope: !21, file: !1, line: 16, baseType: !25, size: 32, offset: 160)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !21, file: !1, line: 17, baseType: !30, size: 32, offset: 192)
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!33 = !{}
!34 = !DILocalVariable(name: "buf", arg: 1, scope: !16, file: !1, line: 29, type: !19)
!35 = !DILocation(line: 29, column: 32, scope: !16)
!36 = !DILocalVariable(name: "msg", arg: 2, scope: !16, file: !1, line: 29, type: !31)
!37 = !DILocation(line: 29, column: 49, scope: !16)
!38 = !DILocation(line: 30, column: 9, scope: !39)
!39 = distinct !DILexicalBlock(scope: !16, file: !1, line: 30, column: 9)
!40 = !DILocation(line: 30, column: 9, scope: !16)
!41 = !DILocation(line: 30, column: 14, scope: !39)
!42 = !DILocation(line: 30, column: 19, scope: !39)
!43 = !DILocation(line: 30, column: 25, scope: !39)
!44 = !DILocation(line: 31, column: 1, scope: !16)
!45 = distinct !DISubprogram(name: "xmlBufAdd", scope: !1, file: !1, line: 37, type: !46, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!46 = !DISubroutineType(types: !47)
!47 = !{!30, !19, !31, !30}
!48 = !DILocalVariable(name: "buf", arg: 1, scope: !45, file: !1, line: 37, type: !19)
!49 = !DILocation(line: 37, column: 23, scope: !45)
!50 = !DILocalVariable(name: "str", arg: 2, scope: !45, file: !1, line: 37, type: !31)
!51 = !DILocation(line: 37, column: 40, scope: !45)
!52 = !DILocalVariable(name: "len", arg: 3, scope: !45, file: !1, line: 37, type: !30)
!53 = !DILocation(line: 37, column: 49, scope: !45)
!54 = !DILocation(line: 38, column: 9, scope: !55)
!55 = distinct !DILexicalBlock(scope: !45, file: !1, line: 38, column: 9)
!56 = !DILocation(line: 38, column: 13, scope: !55)
!57 = !DILocation(line: 38, column: 21, scope: !55)
!58 = !DILocation(line: 38, column: 24, scope: !55)
!59 = !DILocation(line: 38, column: 28, scope: !55)
!60 = !DILocation(line: 38, column: 36, scope: !55)
!61 = !DILocation(line: 38, column: 39, scope: !55)
!62 = !DILocation(line: 38, column: 43, scope: !55)
!63 = !DILocation(line: 38, column: 9, scope: !45)
!64 = !DILocation(line: 39, column: 9, scope: !65)
!65 = distinct !DILexicalBlock(scope: !55, file: !1, line: 38, column: 48)
!66 = !DILocation(line: 42, column: 9, scope: !67)
!67 = distinct !DILexicalBlock(scope: !45, file: !1, line: 42, column: 9)
!68 = !DILocation(line: 42, column: 14, scope: !67)
!69 = !DILocation(line: 42, column: 20, scope: !67)
!70 = !DILocation(line: 42, column: 18, scope: !67)
!71 = !DILocation(line: 42, column: 24, scope: !67)
!72 = !DILocation(line: 42, column: 30, scope: !67)
!73 = !DILocation(line: 42, column: 35, scope: !67)
!74 = !DILocation(line: 42, column: 28, scope: !67)
!75 = !DILocation(line: 42, column: 9, scope: !45)
!76 = !DILocation(line: 44, column: 27, scope: !77)
!77 = distinct !DILexicalBlock(scope: !67, file: !1, line: 42, column: 41)
!78 = !DILocation(line: 44, column: 9, scope: !77)
!79 = !DILocation(line: 45, column: 9, scope: !77)
!80 = !DILocation(line: 49, column: 14, scope: !45)
!81 = !DILocation(line: 49, column: 19, scope: !45)
!82 = !DILocation(line: 49, column: 27, scope: !45)
!83 = !DILocation(line: 49, column: 32, scope: !45)
!84 = !DILocation(line: 49, column: 38, scope: !45)
!85 = !DILocation(line: 49, column: 43, scope: !45)
!86 = !DILocation(line: 49, column: 5, scope: !45)
!87 = !DILocation(line: 50, column: 17, scope: !45)
!88 = !DILocation(line: 50, column: 5, scope: !45)
!89 = !DILocation(line: 50, column: 10, scope: !45)
!90 = !DILocation(line: 50, column: 14, scope: !45)
!91 = !DILocation(line: 51, column: 5, scope: !45)
!92 = !DILocation(line: 51, column: 10, scope: !45)
!93 = !DILocation(line: 51, column: 18, scope: !45)
!94 = !DILocation(line: 51, column: 23, scope: !45)
!95 = !DILocation(line: 51, column: 28, scope: !45)
!96 = !DILocation(line: 52, column: 5, scope: !45)
!97 = !DILocation(line: 52, column: 5, scope: !98)
!98 = distinct !DILexicalBlock(scope: !99, file: !1, line: 52, column: 5)
!99 = distinct !DILexicalBlock(scope: !45, file: !1, line: 52, column: 5)
!100 = !DILocation(line: 52, column: 5, scope: !99)
!101 = !DILocation(line: 52, column: 5, scope: !102)
!102 = distinct !DILexicalBlock(scope: !98, file: !1, line: 52, column: 5)
!103 = !DILocation(line: 53, column: 5, scope: !45)
!104 = !DILocation(line: 54, column: 1, scope: !45)
!105 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 56, type: !106, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!106 = !DISubroutineType(types: !107)
!107 = !{!30}
!108 = !DILocalVariable(name: "buf", scope: !105, file: !1, line: 58, type: !20)
!109 = !DILocation(line: 58, column: 12, scope: !105)
!110 = !DILocalVariable(name: "len", scope: !105, file: !1, line: 59, type: !30)
!111 = !DILocation(line: 59, column: 9, scope: !105)
!112 = !DILocalVariable(name: "str", scope: !105, file: !1, line: 60, type: !4)
!113 = !DILocation(line: 60, column: 11, scope: !105)
!114 = !DILocalVariable(name: "buf_size", scope: !105, file: !1, line: 63, type: !25)
!115 = !DILocation(line: 63, column: 18, scope: !105)
!116 = !DILocation(line: 64, column: 24, scope: !105)
!117 = !DILocation(line: 64, column: 5, scope: !105)
!118 = !DILocation(line: 65, column: 17, scope: !105)
!119 = !DILocation(line: 65, column: 26, scope: !105)
!120 = !DILocation(line: 65, column: 31, scope: !105)
!121 = !DILocation(line: 65, column: 34, scope: !105)
!122 = !DILocation(line: 65, column: 43, scope: !105)
!123 = !DILocation(line: 0, scope: !105)
!124 = !DILocation(line: 65, column: 5, scope: !105)
!125 = !DILocation(line: 68, column: 34, scope: !105)
!126 = !DILocation(line: 68, column: 27, scope: !105)
!127 = !DILocation(line: 68, column: 9, scope: !105)
!128 = !DILocation(line: 68, column: 17, scope: !105)
!129 = !DILocation(line: 69, column: 14, scope: !130)
!130 = distinct !DILexicalBlock(scope: !105, file: !1, line: 69, column: 9)
!131 = !DILocation(line: 69, column: 10, scope: !130)
!132 = !DILocation(line: 69, column: 9, scope: !105)
!133 = !DILocation(line: 69, column: 23, scope: !130)
!134 = !DILocation(line: 72, column: 9, scope: !105)
!135 = !DILocation(line: 72, column: 13, scope: !105)
!136 = !DILocation(line: 73, column: 16, scope: !105)
!137 = !DILocation(line: 73, column: 9, scope: !105)
!138 = !DILocation(line: 73, column: 14, scope: !105)
!139 = !DILocation(line: 74, column: 9, scope: !105)
!140 = !DILocation(line: 74, column: 20, scope: !105)
!141 = !DILocation(line: 75, column: 23, scope: !105)
!142 = !DILocation(line: 75, column: 9, scope: !105)
!143 = !DILocation(line: 75, column: 21, scope: !105)
!144 = !DILocation(line: 76, column: 9, scope: !105)
!145 = !DILocation(line: 76, column: 15, scope: !105)
!146 = !DILocation(line: 79, column: 24, scope: !105)
!147 = !DILocation(line: 79, column: 5, scope: !105)
!148 = !DILocation(line: 80, column: 17, scope: !105)
!149 = !DILocation(line: 80, column: 21, scope: !105)
!150 = !DILocation(line: 80, column: 26, scope: !105)
!151 = !DILocation(line: 80, column: 29, scope: !105)
!152 = !DILocation(line: 80, column: 33, scope: !105)
!153 = !DILocation(line: 80, column: 5, scope: !105)
!154 = !DILocation(line: 83, column: 26, scope: !105)
!155 = !DILocation(line: 83, column: 30, scope: !105)
!156 = !DILocation(line: 83, column: 19, scope: !105)
!157 = !DILocation(line: 83, column: 9, scope: !105)
!158 = !DILocation(line: 84, column: 10, scope: !159)
!159 = distinct !DILexicalBlock(scope: !105, file: !1, line: 84, column: 9)
!160 = !DILocation(line: 84, column: 9, scope: !105)
!161 = !DILocation(line: 85, column: 18, scope: !162)
!162 = distinct !DILexicalBlock(scope: !159, file: !1, line: 84, column: 15)
!163 = !DILocation(line: 85, column: 9, scope: !162)
!164 = !DILocation(line: 86, column: 9, scope: !162)
!165 = !DILocation(line: 88, column: 24, scope: !105)
!166 = !DILocation(line: 88, column: 29, scope: !105)
!167 = !DILocation(line: 88, column: 33, scope: !105)
!168 = !DILocation(line: 88, column: 5, scope: !105)
!169 = !DILocation(line: 89, column: 9, scope: !170)
!170 = distinct !DILexicalBlock(scope: !105, file: !1, line: 89, column: 9)
!171 = !DILocation(line: 89, column: 13, scope: !170)
!172 = !DILocation(line: 89, column: 9, scope: !105)
!173 = !DILocation(line: 89, column: 18, scope: !170)
!174 = !DILocation(line: 89, column: 22, scope: !170)
!175 = !DILocation(line: 89, column: 27, scope: !170)
!176 = !DILocation(line: 92, column: 21, scope: !105)
!177 = !DILocation(line: 92, column: 27, scope: !105)
!178 = !DILocation(line: 92, column: 25, scope: !105)
!179 = !DILocation(line: 92, column: 31, scope: !105)
!180 = !DILocation(line: 92, column: 42, scope: !105)
!181 = !DILocation(line: 92, column: 35, scope: !105)
!182 = !DILocation(line: 92, column: 17, scope: !105)
!183 = !DILocation(line: 92, column: 5, scope: !105)
!184 = !DILocalVariable(name: "result", scope: !105, file: !1, line: 95, type: !30)
!185 = !DILocation(line: 95, column: 9, scope: !105)
!186 = !DILocation(line: 95, column: 34, scope: !105)
!187 = !DILocation(line: 95, column: 39, scope: !105)
!188 = !DILocation(line: 95, column: 18, scope: !105)
!189 = !DILocation(line: 99, column: 5, scope: !105)
!190 = !DILocation(line: 102, column: 5, scope: !105)
!191 = !DILocation(line: 105, column: 14, scope: !105)
!192 = !DILocation(line: 105, column: 5, scope: !105)
!193 = !DILocation(line: 106, column: 10, scope: !105)
!194 = !DILocation(line: 106, column: 5, scope: !105)
!195 = !DILocation(line: 108, column: 5, scope: !105)
!196 = !DILocation(line: 109, column: 1, scope: !105)
!197 = distinct !DISubprogram(name: "memmove", scope: !198, file: !198, line: 12, type: !199, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !33)
!198 = !DIFile(filename: "runtime/Freestanding/memmove.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "6cd27189cdce56ce74ae860a315e13f2")
!199 = !DISubroutineType(types: !200)
!200 = !{!3, !3, !201, !203}
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !204, line: 46, baseType: !205)
!204 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!205 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!206 = !DILocalVariable(name: "dst", arg: 1, scope: !197, file: !198, line: 12, type: !3)
!207 = !DILocation(line: 12, column: 21, scope: !197)
!208 = !DILocalVariable(name: "src", arg: 2, scope: !197, file: !198, line: 12, type: !201)
!209 = !DILocation(line: 12, column: 38, scope: !197)
!210 = !DILocalVariable(name: "count", arg: 3, scope: !197, file: !198, line: 12, type: !203)
!211 = !DILocation(line: 12, column: 50, scope: !197)
!212 = !DILocalVariable(name: "a", scope: !197, file: !198, line: 13, type: !4)
!213 = !DILocation(line: 13, column: 9, scope: !197)
!214 = !DILocation(line: 13, column: 13, scope: !197)
!215 = !DILocalVariable(name: "b", scope: !197, file: !198, line: 14, type: !31)
!216 = !DILocation(line: 14, column: 15, scope: !197)
!217 = !DILocation(line: 14, column: 19, scope: !197)
!218 = !DILocation(line: 16, column: 7, scope: !219)
!219 = distinct !DILexicalBlock(scope: !197, file: !198, line: 16, column: 7)
!220 = !DILocation(line: 16, column: 14, scope: !219)
!221 = !DILocation(line: 16, column: 11, scope: !219)
!222 = !DILocation(line: 16, column: 7, scope: !197)
!223 = !DILocation(line: 17, column: 12, scope: !219)
!224 = !DILocation(line: 17, column: 5, scope: !219)
!225 = !DILocation(line: 19, column: 7, scope: !226)
!226 = distinct !DILexicalBlock(scope: !197, file: !198, line: 19, column: 7)
!227 = !DILocation(line: 19, column: 13, scope: !226)
!228 = !DILocation(line: 19, column: 11, scope: !226)
!229 = !DILocation(line: 19, column: 7, scope: !197)
!230 = !DILocation(line: 20, column: 17, scope: !231)
!231 = distinct !DILexicalBlock(scope: !226, file: !198, line: 19, column: 18)
!232 = !DILocation(line: 20, column: 5, scope: !231)
!233 = !DILocation(line: 21, column: 16, scope: !231)
!234 = !DILocation(line: 21, column: 14, scope: !231)
!235 = !DILocation(line: 21, column: 9, scope: !231)
!236 = !DILocation(line: 21, column: 12, scope: !231)
!237 = distinct !{!237, !232, !233, !238}
!238 = !{!"llvm.loop.mustprogress"}
!239 = !DILocation(line: 23, column: 10, scope: !240)
!240 = distinct !DILexicalBlock(scope: !226, file: !198, line: 22, column: 10)
!241 = !DILocation(line: 23, column: 16, scope: !240)
!242 = !DILocation(line: 23, column: 7, scope: !240)
!243 = !DILocation(line: 24, column: 10, scope: !240)
!244 = !DILocation(line: 24, column: 16, scope: !240)
!245 = !DILocation(line: 24, column: 7, scope: !240)
!246 = !DILocation(line: 25, column: 5, scope: !240)
!247 = !DILocation(line: 25, column: 17, scope: !240)
!248 = !DILocation(line: 26, column: 16, scope: !240)
!249 = !DILocation(line: 26, column: 14, scope: !240)
!250 = !DILocation(line: 26, column: 9, scope: !240)
!251 = !DILocation(line: 26, column: 12, scope: !240)
!252 = distinct !{!252, !246, !248, !238}
!253 = !DILocation(line: 29, column: 10, scope: !197)
!254 = !DILocation(line: 29, column: 3, scope: !197)
!255 = !DILocation(line: 30, column: 1, scope: !197)

; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/192_tree.c_7338_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/192_tree.c_7338_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlBuffer = type { i32, i8*, i8*, i64, i64 }

@.str = private unnamed_addr constant [10 x i8] c"buf_alloc\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"buf_size\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"buf_use\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"start_buf\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"(buf.use <= safe_limit) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_55980_vul/192_tree.c_7338_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlBufferShrink(%struct._xmlBuffer* noundef %0, i64 noundef %1) #0 !dbg !21 {
  %3 = alloca %struct._xmlBuffer*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct._xmlBuffer* %0, %struct._xmlBuffer** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlBuffer** %3, metadata !38, metadata !DIExpression()), !dbg !39
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !40, metadata !DIExpression()), !dbg !41
  %6 = load %struct._xmlBuffer*, %struct._xmlBuffer** %3, align 8, !dbg !42
  %7 = icmp eq %struct._xmlBuffer* %6, null, !dbg !44
  br i1 %7, label %8, label %9, !dbg !45

8:                                                ; preds = %2
  br label %84, !dbg !46

9:                                                ; preds = %2
  %10 = load %struct._xmlBuffer*, %struct._xmlBuffer** %3, align 8, !dbg !47
  %11 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %10, i32 0, i32 0, !dbg !49
  %12 = load i32, i32* %11, align 8, !dbg !49
  %13 = icmp eq i32 %12, 1, !dbg !50
  br i1 %13, label %14, label %64, !dbg !51

14:                                               ; preds = %9
  %15 = load %struct._xmlBuffer*, %struct._xmlBuffer** %3, align 8, !dbg !52
  %16 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %15, i32 0, i32 2, !dbg !53
  %17 = load i8*, i8** %16, align 8, !dbg !53
  %18 = icmp ne i8* %17, null, !dbg !54
  br i1 %18, label %19, label %64, !dbg !55

19:                                               ; preds = %14
  call void @llvm.dbg.declare(metadata i64* %5, metadata !56, metadata !DIExpression()), !dbg !58
  %20 = load %struct._xmlBuffer*, %struct._xmlBuffer** %3, align 8, !dbg !59
  %21 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %20, i32 0, i32 1, !dbg !60
  %22 = load i8*, i8** %21, align 8, !dbg !60
  %23 = load %struct._xmlBuffer*, %struct._xmlBuffer** %3, align 8, !dbg !61
  %24 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %23, i32 0, i32 2, !dbg !62
  %25 = load i8*, i8** %24, align 8, !dbg !62
  %26 = ptrtoint i8* %22 to i64, !dbg !63
  %27 = ptrtoint i8* %25 to i64, !dbg !63
  %28 = sub i64 %26, %27, !dbg !63
  store i64 %28, i64* %5, align 8, !dbg !58
  %29 = load i64, i64* %5, align 8, !dbg !64
  %30 = load %struct._xmlBuffer*, %struct._xmlBuffer** %3, align 8, !dbg !66
  %31 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %30, i32 0, i32 3, !dbg !67
  %32 = load i64, i64* %31, align 8, !dbg !67
  %33 = icmp uge i64 %29, %32, !dbg !68
  br i1 %33, label %34, label %63, !dbg !69

34:                                               ; preds = %19
  %35 = load %struct._xmlBuffer*, %struct._xmlBuffer** %3, align 8, !dbg !70
  %36 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %35, i32 0, i32 2, !dbg !72
  %37 = load i8*, i8** %36, align 8, !dbg !72
  %38 = load %struct._xmlBuffer*, %struct._xmlBuffer** %3, align 8, !dbg !73
  %39 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %38, i32 0, i32 1, !dbg !74
  %40 = load i8*, i8** %39, align 8, !dbg !74
  %41 = getelementptr inbounds i8, i8* %40, i64 0, !dbg !73
  %42 = load %struct._xmlBuffer*, %struct._xmlBuffer** %3, align 8, !dbg !75
  %43 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %42, i32 0, i32 4, !dbg !76
  %44 = load i64, i64* %43, align 8, !dbg !76
  %45 = call i8* @memmove(i8* %37, i8* %41, i64 %44), !dbg !77
  %46 = load %struct._xmlBuffer*, %struct._xmlBuffer** %3, align 8, !dbg !78
  %47 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %46, i32 0, i32 2, !dbg !79
  %48 = load i8*, i8** %47, align 8, !dbg !79
  %49 = load %struct._xmlBuffer*, %struct._xmlBuffer** %3, align 8, !dbg !80
  %50 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %49, i32 0, i32 1, !dbg !81
  store i8* %48, i8** %50, align 8, !dbg !82
  %51 = load %struct._xmlBuffer*, %struct._xmlBuffer** %3, align 8, !dbg !83
  %52 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %51, i32 0, i32 1, !dbg !84
  %53 = load i8*, i8** %52, align 8, !dbg !84
  %54 = load %struct._xmlBuffer*, %struct._xmlBuffer** %3, align 8, !dbg !85
  %55 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %54, i32 0, i32 4, !dbg !86
  %56 = load i64, i64* %55, align 8, !dbg !86
  %57 = getelementptr inbounds i8, i8* %53, i64 %56, !dbg !83
  store i8 0, i8* %57, align 1, !dbg !87
  %58 = load i64, i64* %5, align 8, !dbg !88
  %59 = load %struct._xmlBuffer*, %struct._xmlBuffer** %3, align 8, !dbg !89
  %60 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %59, i32 0, i32 3, !dbg !90
  %61 = load i64, i64* %60, align 8, !dbg !91
  %62 = add i64 %61, %58, !dbg !91
  store i64 %62, i64* %60, align 8, !dbg !91
  br label %63, !dbg !92

63:                                               ; preds = %34, %19
  br label %84, !dbg !93

64:                                               ; preds = %14, %9
  %65 = load %struct._xmlBuffer*, %struct._xmlBuffer** %3, align 8, !dbg !94
  %66 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %65, i32 0, i32 1, !dbg !96
  %67 = load i8*, i8** %66, align 8, !dbg !96
  %68 = load %struct._xmlBuffer*, %struct._xmlBuffer** %3, align 8, !dbg !97
  %69 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %68, i32 0, i32 1, !dbg !98
  %70 = load i8*, i8** %69, align 8, !dbg !98
  %71 = load i64, i64* %4, align 8, !dbg !99
  %72 = getelementptr inbounds i8, i8* %70, i64 %71, !dbg !97
  %73 = load %struct._xmlBuffer*, %struct._xmlBuffer** %3, align 8, !dbg !100
  %74 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %73, i32 0, i32 4, !dbg !101
  %75 = load i64, i64* %74, align 8, !dbg !101
  %76 = call i8* @memmove(i8* %67, i8* %72, i64 %75), !dbg !102
  %77 = load %struct._xmlBuffer*, %struct._xmlBuffer** %3, align 8, !dbg !103
  %78 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %77, i32 0, i32 1, !dbg !104
  %79 = load i8*, i8** %78, align 8, !dbg !104
  %80 = load %struct._xmlBuffer*, %struct._xmlBuffer** %3, align 8, !dbg !105
  %81 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %80, i32 0, i32 4, !dbg !106
  %82 = load i64, i64* %81, align 8, !dbg !106
  %83 = getelementptr inbounds i8, i8* %79, i64 %82, !dbg !103
  store i8 0, i8* %83, align 1, !dbg !107
  br label %84

84:                                               ; preds = %8, %64, %63
  ret void, !dbg !108
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !109 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlBuffer, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlBuffer* %2, metadata !113, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.declare(metadata i64* %3, metadata !115, metadata !DIExpression()), !dbg !116
  %7 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 0, !dbg !117
  %8 = bitcast i32* %7 to i8*, !dbg !118
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)), !dbg !119
  %9 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 3, !dbg !120
  %10 = bitcast i64* %9 to i8*, !dbg !121
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)), !dbg !122
  %11 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 4, !dbg !123
  %12 = bitcast i64* %11 to i8*, !dbg !124
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)), !dbg !125
  %13 = call noalias i8* @malloc(i64 noundef 256) #7, !dbg !126
  %14 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 2, !dbg !127
  store i8* %13, i8** %14, align 8, !dbg !128
  %15 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 2, !dbg !129
  %16 = load i8*, i8** %15, align 8, !dbg !129
  %17 = icmp ne i8* %16, null, !dbg !130
  %18 = zext i1 %17 to i32, !dbg !130
  %19 = sext i32 %18 to i64, !dbg !131
  call void @klee_assume(i64 noundef %19), !dbg !132
  %20 = bitcast i64* %3 to i8*, !dbg !133
  call void @klee_make_symbolic(i8* noundef %20, i64 noundef 8, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)), !dbg !134
  %21 = load i64, i64* %3, align 8, !dbg !135
  %22 = icmp ult i64 %21, 256, !dbg !136
  %23 = zext i1 %22 to i32, !dbg !136
  %24 = sext i32 %23 to i64, !dbg !135
  call void @klee_assume(i64 noundef %24), !dbg !137
  %25 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 2, !dbg !138
  %26 = load i8*, i8** %25, align 8, !dbg !138
  %27 = load i64, i64* %3, align 8, !dbg !139
  %28 = getelementptr inbounds i8, i8* %26, i64 %27, !dbg !140
  %29 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 1, !dbg !141
  store i8* %28, i8** %29, align 8, !dbg !142
  %30 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 0, !dbg !143
  %31 = load i32, i32* %30, align 8, !dbg !143
  %32 = icmp eq i32 %31, 1, !dbg !144
  %33 = zext i1 %32 to i32, !dbg !144
  %34 = sext i32 %33 to i64, !dbg !145
  call void @klee_assume(i64 noundef %34), !dbg !146
  %35 = load i64, i64* %3, align 8, !dbg !147
  %36 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 3, !dbg !148
  %37 = load i64, i64* %36, align 8, !dbg !148
  %38 = icmp uge i64 %35, %37, !dbg !149
  %39 = zext i1 %38 to i32, !dbg !149
  %40 = sext i32 %39 to i64, !dbg !147
  call void @klee_assume(i64 noundef %40), !dbg !150
  call void @llvm.dbg.declare(metadata i64* %4, metadata !151, metadata !DIExpression()), !dbg !152
  %41 = load i64, i64* %3, align 8, !dbg !153
  %42 = sub i64 256, %41, !dbg !154
  store i64 %42, i64* %4, align 8, !dbg !152
  call void @llvm.dbg.declare(metadata i64* %5, metadata !155, metadata !DIExpression()), !dbg !156
  store i64 256, i64* %5, align 8, !dbg !156
  call void @llvm.dbg.declare(metadata i64* %6, metadata !157, metadata !DIExpression()), !dbg !158
  %43 = load i64, i64* %4, align 8, !dbg !159
  %44 = load i64, i64* %5, align 8, !dbg !160
  %45 = icmp ult i64 %43, %44, !dbg !161
  br i1 %45, label %46, label %48, !dbg !159

46:                                               ; preds = %0
  %47 = load i64, i64* %4, align 8, !dbg !162
  br label %50, !dbg !159

48:                                               ; preds = %0
  %49 = load i64, i64* %5, align 8, !dbg !163
  br label %50, !dbg !159

50:                                               ; preds = %48, %46
  %51 = phi i64 [ %47, %46 ], [ %49, %48 ], !dbg !159
  store i64 %51, i64* %6, align 8, !dbg !158
  %52 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 4, !dbg !164
  %53 = load i64, i64* %52, align 8, !dbg !164
  %54 = load i64, i64* %6, align 8, !dbg !164
  %55 = icmp ule i64 %53, %54, !dbg !164
  br i1 %55, label %56, label %58, !dbg !164

56:                                               ; preds = %50
  br i1 true, label %57, label %58, !dbg !164

57:                                               ; preds = %56
  br label %60, !dbg !164

58:                                               ; preds = %56, %50
  %59 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.6, i64 0, i64 0), i32 noundef 71, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !164
  br label %60, !dbg !164

60:                                               ; preds = %58, %57
  %61 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.6, i64 0, i64 0), i32 noundef 74, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !165
  call void @xmlBufferShrink(%struct._xmlBuffer* noundef %2, i64 noundef 0), !dbg !166
  %62 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 2, !dbg !167
  %63 = load i8*, i8** %62, align 8, !dbg !167
  call void @free(i8* noundef %63) #7, !dbg !168
  ret i32 0, !dbg !169
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memmove(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !170 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !176, metadata !DIExpression()), !dbg !177
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !178, metadata !DIExpression()), !dbg !179
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !180, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.declare(metadata i8** %8, metadata !182, metadata !DIExpression()), !dbg !183
  %10 = load i8*, i8** %5, align 8, !dbg !184
  store i8* %10, i8** %8, align 8, !dbg !183
  call void @llvm.dbg.declare(metadata i8** %9, metadata !185, metadata !DIExpression()), !dbg !188
  %11 = load i8*, i8** %6, align 8, !dbg !189
  store i8* %11, i8** %9, align 8, !dbg !188
  %12 = load i8*, i8** %6, align 8, !dbg !190
  %13 = load i8*, i8** %5, align 8, !dbg !192
  %14 = icmp eq i8* %12, %13, !dbg !193
  br i1 %14, label %15, label %17, !dbg !194

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8, !dbg !195
  store i8* %16, i8** %4, align 8, !dbg !196
  br label %52, !dbg !196

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8, !dbg !197
  %19 = load i8*, i8** %5, align 8, !dbg !199
  %20 = icmp ugt i8* %18, %19, !dbg !200
  br i1 %20, label %21, label %31, !dbg !201

21:                                               ; preds = %17, %25
  %22 = load i64, i64* %7, align 8, !dbg !202
  %23 = add i64 %22, -1, !dbg !202
  store i64 %23, i64* %7, align 8, !dbg !202
  %24 = icmp ne i64 %22, 0, !dbg !204
  br i1 %24, label %25, label %50, !dbg !204

25:                                               ; preds = %21
  %26 = load i8*, i8** %9, align 8, !dbg !205
  %27 = getelementptr inbounds i8, i8* %26, i32 1, !dbg !205
  store i8* %27, i8** %9, align 8, !dbg !205
  %28 = load i8, i8* %26, align 1, !dbg !206
  %29 = load i8*, i8** %8, align 8, !dbg !207
  %30 = getelementptr inbounds i8, i8* %29, i32 1, !dbg !207
  store i8* %30, i8** %8, align 8, !dbg !207
  store i8 %28, i8* %29, align 1, !dbg !208
  br label %21, !dbg !204, !llvm.loop !209

31:                                               ; preds = %17
  %32 = load i64, i64* %7, align 8, !dbg !211
  %33 = sub i64 %32, 1, !dbg !213
  %34 = load i8*, i8** %8, align 8, !dbg !214
  %35 = getelementptr inbounds i8, i8* %34, i64 %33, !dbg !214
  store i8* %35, i8** %8, align 8, !dbg !214
  %36 = load i64, i64* %7, align 8, !dbg !215
  %37 = sub i64 %36, 1, !dbg !216
  %38 = load i8*, i8** %9, align 8, !dbg !217
  %39 = getelementptr inbounds i8, i8* %38, i64 %37, !dbg !217
  store i8* %39, i8** %9, align 8, !dbg !217
  br label %40, !dbg !218

40:                                               ; preds = %44, %31
  %41 = load i64, i64* %7, align 8, !dbg !219
  %42 = add i64 %41, -1, !dbg !219
  store i64 %42, i64* %7, align 8, !dbg !219
  %43 = icmp ne i64 %41, 0, !dbg !218
  br i1 %43, label %44, label %50, !dbg !218

44:                                               ; preds = %40
  %45 = load i8*, i8** %9, align 8, !dbg !220
  %46 = getelementptr inbounds i8, i8* %45, i32 -1, !dbg !220
  store i8* %46, i8** %9, align 8, !dbg !220
  %47 = load i8, i8* %45, align 1, !dbg !221
  %48 = load i8*, i8** %8, align 8, !dbg !222
  %49 = getelementptr inbounds i8, i8* %48, i32 -1, !dbg !222
  store i8* %49, i8** %8, align 8, !dbg !222
  store i8 %47, i8* %48, align 1, !dbg !223
  br label %40, !dbg !218, !llvm.loop !224

50:                                               ; preds = %40, %21
  %51 = load i8*, i8** %5, align 8, !dbg !225
  store i8* %51, i8** %4, align 8, !dbg !226
  br label %52, !dbg !226

52:                                               ; preds = %50, %15
  %53 = load i8*, i8** %4, align 8, !dbg !227
  ret i8* %53, !dbg !227
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20, !20}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !7, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/192_tree.c_7338_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "9fc07142c20e6225782862a810c69e7d")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 10, baseType: !4, size: 32, elements: !5)
!4 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!5 = !{!6}
!6 = !DIEnumerator(name: "XML_BUFFER_ALLOC_IO", value: 1)
!7 = !{!8, !9}
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!11 = distinct !DICompileUnit(language: DW_LANG_C99, file: !12, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!12 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memmove.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "6cd27189cdce56ce74ae860a315e13f2")
!13 = !{i32 7, !"Dwarf Version", i32 5}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = !{i32 7, !"PIC Level", i32 2}
!17 = !{i32 7, !"PIE Level", i32 2}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"Ubuntu clang version 14.0.6"}
!21 = distinct !DISubprogram(name: "xmlBufferShrink", scope: !1, file: !1, line: 23, type: !22, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!22 = !DISubroutineType(types: !23)
!23 = !{null, !24, !33}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBuffer", file: !1, line: 20, baseType: !26)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlBuffer", file: !1, line: 14, size: 320, elements: !27)
!27 = !{!28, !30, !31, !32, !36}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !26, file: !1, line: 15, baseType: !29, size: 32)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBufferAllocationScheme", file: !1, line: 12, baseType: !3)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !26, file: !1, line: 16, baseType: !9, size: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "contentIO", scope: !26, file: !1, line: 17, baseType: !9, size: 64, offset: 128)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !26, file: !1, line: 18, baseType: !33, size: 64, offset: 192)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !34, line: 46, baseType: !35)
!34 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!35 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !26, file: !1, line: 19, baseType: !33, size: 64, offset: 256)
!37 = !{}
!38 = !DILocalVariable(name: "buf", arg: 1, scope: !21, file: !1, line: 23, type: !24)
!39 = !DILocation(line: 23, column: 33, scope: !21)
!40 = !DILocalVariable(name: "len", arg: 2, scope: !21, file: !1, line: 23, type: !33)
!41 = !DILocation(line: 23, column: 45, scope: !21)
!42 = !DILocation(line: 24, column: 9, scope: !43)
!43 = distinct !DILexicalBlock(scope: !21, file: !1, line: 24, column: 9)
!44 = !DILocation(line: 24, column: 13, scope: !43)
!45 = !DILocation(line: 24, column: 9, scope: !21)
!46 = !DILocation(line: 24, column: 22, scope: !43)
!47 = !DILocation(line: 26, column: 10, scope: !48)
!48 = distinct !DILexicalBlock(scope: !21, file: !1, line: 26, column: 9)
!49 = !DILocation(line: 26, column: 15, scope: !48)
!50 = !DILocation(line: 26, column: 21, scope: !48)
!51 = !DILocation(line: 26, column: 45, scope: !48)
!52 = !DILocation(line: 26, column: 49, scope: !48)
!53 = !DILocation(line: 26, column: 54, scope: !48)
!54 = !DILocation(line: 26, column: 64, scope: !48)
!55 = !DILocation(line: 26, column: 9, scope: !21)
!56 = !DILocalVariable(name: "start_buf", scope: !57, file: !1, line: 27, type: !33)
!57 = distinct !DILexicalBlock(scope: !48, file: !1, line: 26, column: 74)
!58 = !DILocation(line: 27, column: 16, scope: !57)
!59 = !DILocation(line: 27, column: 28, scope: !57)
!60 = !DILocation(line: 27, column: 33, scope: !57)
!61 = !DILocation(line: 27, column: 43, scope: !57)
!62 = !DILocation(line: 27, column: 48, scope: !57)
!63 = !DILocation(line: 27, column: 41, scope: !57)
!64 = !DILocation(line: 28, column: 13, scope: !65)
!65 = distinct !DILexicalBlock(scope: !57, file: !1, line: 28, column: 13)
!66 = !DILocation(line: 28, column: 26, scope: !65)
!67 = !DILocation(line: 28, column: 31, scope: !65)
!68 = !DILocation(line: 28, column: 23, scope: !65)
!69 = !DILocation(line: 28, column: 13, scope: !57)
!70 = !DILocation(line: 30, column: 21, scope: !71)
!71 = distinct !DILexicalBlock(scope: !65, file: !1, line: 28, column: 37)
!72 = !DILocation(line: 30, column: 26, scope: !71)
!73 = !DILocation(line: 30, column: 38, scope: !71)
!74 = !DILocation(line: 30, column: 43, scope: !71)
!75 = !DILocation(line: 30, column: 55, scope: !71)
!76 = !DILocation(line: 30, column: 60, scope: !71)
!77 = !DILocation(line: 30, column: 13, scope: !71)
!78 = !DILocation(line: 31, column: 28, scope: !71)
!79 = !DILocation(line: 31, column: 33, scope: !71)
!80 = !DILocation(line: 31, column: 13, scope: !71)
!81 = !DILocation(line: 31, column: 18, scope: !71)
!82 = !DILocation(line: 31, column: 26, scope: !71)
!83 = !DILocation(line: 32, column: 13, scope: !71)
!84 = !DILocation(line: 32, column: 18, scope: !71)
!85 = !DILocation(line: 32, column: 26, scope: !71)
!86 = !DILocation(line: 32, column: 31, scope: !71)
!87 = !DILocation(line: 32, column: 36, scope: !71)
!88 = !DILocation(line: 33, column: 26, scope: !71)
!89 = !DILocation(line: 33, column: 13, scope: !71)
!90 = !DILocation(line: 33, column: 18, scope: !71)
!91 = !DILocation(line: 33, column: 23, scope: !71)
!92 = !DILocation(line: 34, column: 9, scope: !71)
!93 = !DILocation(line: 35, column: 5, scope: !57)
!94 = !DILocation(line: 36, column: 17, scope: !95)
!95 = distinct !DILexicalBlock(scope: !48, file: !1, line: 35, column: 12)
!96 = !DILocation(line: 36, column: 22, scope: !95)
!97 = !DILocation(line: 36, column: 32, scope: !95)
!98 = !DILocation(line: 36, column: 37, scope: !95)
!99 = !DILocation(line: 36, column: 45, scope: !95)
!100 = !DILocation(line: 36, column: 51, scope: !95)
!101 = !DILocation(line: 36, column: 56, scope: !95)
!102 = !DILocation(line: 36, column: 9, scope: !95)
!103 = !DILocation(line: 37, column: 9, scope: !95)
!104 = !DILocation(line: 37, column: 14, scope: !95)
!105 = !DILocation(line: 37, column: 22, scope: !95)
!106 = !DILocation(line: 37, column: 27, scope: !95)
!107 = !DILocation(line: 37, column: 32, scope: !95)
!108 = !DILocation(line: 39, column: 1, scope: !21)
!109 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 41, type: !110, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!110 = !DISubroutineType(types: !111)
!111 = !{!112}
!112 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!113 = !DILocalVariable(name: "buf", scope: !109, file: !1, line: 43, type: !25)
!114 = !DILocation(line: 43, column: 15, scope: !109)
!115 = !DILocalVariable(name: "start_buf", scope: !109, file: !1, line: 44, type: !33)
!116 = !DILocation(line: 44, column: 12, scope: !109)
!117 = !DILocation(line: 47, column: 29, scope: !109)
!118 = !DILocation(line: 47, column: 24, scope: !109)
!119 = !DILocation(line: 47, column: 5, scope: !109)
!120 = !DILocation(line: 48, column: 29, scope: !109)
!121 = !DILocation(line: 48, column: 24, scope: !109)
!122 = !DILocation(line: 48, column: 5, scope: !109)
!123 = !DILocation(line: 49, column: 29, scope: !109)
!124 = !DILocation(line: 49, column: 24, scope: !109)
!125 = !DILocation(line: 49, column: 5, scope: !109)
!126 = !DILocation(line: 52, column: 29, scope: !109)
!127 = !DILocation(line: 52, column: 9, scope: !109)
!128 = !DILocation(line: 52, column: 19, scope: !109)
!129 = !DILocation(line: 53, column: 21, scope: !109)
!130 = !DILocation(line: 53, column: 31, scope: !109)
!131 = !DILocation(line: 53, column: 17, scope: !109)
!132 = !DILocation(line: 53, column: 5, scope: !109)
!133 = !DILocation(line: 56, column: 24, scope: !109)
!134 = !DILocation(line: 56, column: 5, scope: !109)
!135 = !DILocation(line: 57, column: 17, scope: !109)
!136 = !DILocation(line: 57, column: 27, scope: !109)
!137 = !DILocation(line: 57, column: 5, scope: !109)
!138 = !DILocation(line: 58, column: 23, scope: !109)
!139 = !DILocation(line: 58, column: 35, scope: !109)
!140 = !DILocation(line: 58, column: 33, scope: !109)
!141 = !DILocation(line: 58, column: 9, scope: !109)
!142 = !DILocation(line: 58, column: 17, scope: !109)
!143 = !DILocation(line: 61, column: 21, scope: !109)
!144 = !DILocation(line: 61, column: 27, scope: !109)
!145 = !DILocation(line: 61, column: 17, scope: !109)
!146 = !DILocation(line: 61, column: 5, scope: !109)
!147 = !DILocation(line: 62, column: 17, scope: !109)
!148 = !DILocation(line: 62, column: 34, scope: !109)
!149 = !DILocation(line: 62, column: 27, scope: !109)
!150 = !DILocation(line: 62, column: 5, scope: !109)
!151 = !DILocalVariable(name: "source_available", scope: !109, file: !1, line: 67, type: !33)
!152 = !DILocation(line: 67, column: 12, scope: !109)
!153 = !DILocation(line: 67, column: 37, scope: !109)
!154 = !DILocation(line: 67, column: 35, scope: !109)
!155 = !DILocalVariable(name: "dest_available", scope: !109, file: !1, line: 68, type: !33)
!156 = !DILocation(line: 68, column: 12, scope: !109)
!157 = !DILocalVariable(name: "safe_limit", scope: !109, file: !1, line: 69, type: !33)
!158 = !DILocation(line: 69, column: 12, scope: !109)
!159 = !DILocation(line: 69, column: 25, scope: !109)
!160 = !DILocation(line: 69, column: 44, scope: !109)
!161 = !DILocation(line: 69, column: 42, scope: !109)
!162 = !DILocation(line: 69, column: 61, scope: !109)
!163 = !DILocation(line: 69, column: 80, scope: !109)
!164 = !DILocation(line: 71, column: 5, scope: !109)
!165 = !DILocation(line: 74, column: 5, scope: !109)
!166 = !DILocation(line: 77, column: 5, scope: !109)
!167 = !DILocation(line: 80, column: 14, scope: !109)
!168 = !DILocation(line: 80, column: 5, scope: !109)
!169 = !DILocation(line: 82, column: 5, scope: !109)
!170 = distinct !DISubprogram(name: "memmove", scope: !171, file: !171, line: 12, type: !172, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !37)
!171 = !DIFile(filename: "runtime/Freestanding/memmove.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "6cd27189cdce56ce74ae860a315e13f2")
!172 = !DISubroutineType(types: !173)
!173 = !{!8, !8, !174, !33}
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!176 = !DILocalVariable(name: "dst", arg: 1, scope: !170, file: !171, line: 12, type: !8)
!177 = !DILocation(line: 12, column: 21, scope: !170)
!178 = !DILocalVariable(name: "src", arg: 2, scope: !170, file: !171, line: 12, type: !174)
!179 = !DILocation(line: 12, column: 38, scope: !170)
!180 = !DILocalVariable(name: "count", arg: 3, scope: !170, file: !171, line: 12, type: !33)
!181 = !DILocation(line: 12, column: 50, scope: !170)
!182 = !DILocalVariable(name: "a", scope: !170, file: !171, line: 13, type: !9)
!183 = !DILocation(line: 13, column: 9, scope: !170)
!184 = !DILocation(line: 13, column: 13, scope: !170)
!185 = !DILocalVariable(name: "b", scope: !170, file: !171, line: 14, type: !186)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!188 = !DILocation(line: 14, column: 15, scope: !170)
!189 = !DILocation(line: 14, column: 19, scope: !170)
!190 = !DILocation(line: 16, column: 7, scope: !191)
!191 = distinct !DILexicalBlock(scope: !170, file: !171, line: 16, column: 7)
!192 = !DILocation(line: 16, column: 14, scope: !191)
!193 = !DILocation(line: 16, column: 11, scope: !191)
!194 = !DILocation(line: 16, column: 7, scope: !170)
!195 = !DILocation(line: 17, column: 12, scope: !191)
!196 = !DILocation(line: 17, column: 5, scope: !191)
!197 = !DILocation(line: 19, column: 7, scope: !198)
!198 = distinct !DILexicalBlock(scope: !170, file: !171, line: 19, column: 7)
!199 = !DILocation(line: 19, column: 13, scope: !198)
!200 = !DILocation(line: 19, column: 11, scope: !198)
!201 = !DILocation(line: 19, column: 7, scope: !170)
!202 = !DILocation(line: 20, column: 17, scope: !203)
!203 = distinct !DILexicalBlock(scope: !198, file: !171, line: 19, column: 18)
!204 = !DILocation(line: 20, column: 5, scope: !203)
!205 = !DILocation(line: 21, column: 16, scope: !203)
!206 = !DILocation(line: 21, column: 14, scope: !203)
!207 = !DILocation(line: 21, column: 9, scope: !203)
!208 = !DILocation(line: 21, column: 12, scope: !203)
!209 = distinct !{!209, !204, !205, !210}
!210 = !{!"llvm.loop.mustprogress"}
!211 = !DILocation(line: 23, column: 10, scope: !212)
!212 = distinct !DILexicalBlock(scope: !198, file: !171, line: 22, column: 10)
!213 = !DILocation(line: 23, column: 16, scope: !212)
!214 = !DILocation(line: 23, column: 7, scope: !212)
!215 = !DILocation(line: 24, column: 10, scope: !212)
!216 = !DILocation(line: 24, column: 16, scope: !212)
!217 = !DILocation(line: 24, column: 7, scope: !212)
!218 = !DILocation(line: 25, column: 5, scope: !212)
!219 = !DILocation(line: 25, column: 17, scope: !212)
!220 = !DILocation(line: 26, column: 16, scope: !212)
!221 = !DILocation(line: 26, column: 14, scope: !212)
!222 = !DILocation(line: 26, column: 9, scope: !212)
!223 = !DILocation(line: 26, column: 12, scope: !212)
!224 = distinct !{!224, !218, !220, !210}
!225 = !DILocation(line: 29, column: 10, scope: !170)
!226 = !DILocation(line: 29, column: 3, scope: !170)
!227 = !DILocation(line: 30, column: 1, scope: !170)

; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/187_tree.c_7544_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/187_tree.c_7544_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlBuffer = type { i8*, i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"growing buffer\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"buf_alloc\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"newSize\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"buf_use\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"buffer_size\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"content_offset\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"(buf.use <= buffer_size) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.8 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_55980_vul/187_tree.c_7544_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlTreeErrMemory(i8* noundef %0) #0 !dbg !17 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !24, metadata !DIExpression()), !dbg !25
  %3 = load i8*, i8** %2, align 8, !dbg !26
  ret void, !dbg !27
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlRealloc(i8* noundef %0, i64 noundef %1) #0 !dbg !28 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !34, metadata !DIExpression()), !dbg !35
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !36, metadata !DIExpression()), !dbg !37
  %5 = load i8*, i8** %3, align 8, !dbg !38
  %6 = load i64, i64* %4, align 8, !dbg !39
  %7 = call i8* @realloc(i8* noundef %5, i64 noundef %6) #7, !dbg !40
  ret i8* %7, !dbg !41
}

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlBufferGrow(%struct._xmlBuffer* noundef %0, i32 noundef %1) #0 !dbg !42 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlBuffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct._xmlBuffer* %0, %struct._xmlBuffer** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlBuffer** %4, metadata !56, metadata !DIExpression()), !dbg !57
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata i8** %6, metadata !60, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata i32* %7, metadata !62, metadata !DIExpression()), !dbg !63
  %8 = load %struct._xmlBuffer*, %struct._xmlBuffer** %4, align 8, !dbg !64
  %9 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %8, i32 0, i32 4, !dbg !66
  %10 = load i32, i32* %9, align 8, !dbg !66
  %11 = icmp eq i32 %10, 2, !dbg !67
  br i1 %11, label %12, label %75, !dbg !68

12:                                               ; preds = %2
  %13 = load %struct._xmlBuffer*, %struct._xmlBuffer** %4, align 8, !dbg !69
  %14 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %13, i32 0, i32 1, !dbg !70
  %15 = load i8*, i8** %14, align 8, !dbg !70
  %16 = icmp ne i8* %15, null, !dbg !71
  br i1 %16, label %17, label %75, !dbg !72

17:                                               ; preds = %12
  %18 = load %struct._xmlBuffer*, %struct._xmlBuffer** %4, align 8, !dbg !73
  %19 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %18, i32 0, i32 0, !dbg !75
  %20 = load i8*, i8** %19, align 8, !dbg !75
  %21 = load %struct._xmlBuffer*, %struct._xmlBuffer** %4, align 8, !dbg !76
  %22 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %21, i32 0, i32 1, !dbg !77
  %23 = load i8*, i8** %22, align 8, !dbg !77
  %24 = ptrtoint i8* %20 to i64, !dbg !78
  %25 = ptrtoint i8* %23 to i64, !dbg !78
  %26 = sub i64 %24, %25, !dbg !78
  %27 = trunc i64 %26 to i32, !dbg !73
  store i32 %27, i32* %7, align 4, !dbg !79
  %28 = load i32, i32* %7, align 4, !dbg !80
  %29 = load i32, i32* %5, align 4, !dbg !82
  %30 = icmp ugt i32 %28, %29, !dbg !83
  br i1 %30, label %31, label %61, !dbg !84

31:                                               ; preds = %17
  %32 = load %struct._xmlBuffer*, %struct._xmlBuffer** %4, align 8, !dbg !85
  %33 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %32, i32 0, i32 1, !dbg !87
  %34 = load i8*, i8** %33, align 8, !dbg !87
  %35 = load %struct._xmlBuffer*, %struct._xmlBuffer** %4, align 8, !dbg !88
  %36 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %35, i32 0, i32 0, !dbg !89
  %37 = load i8*, i8** %36, align 8, !dbg !89
  %38 = load %struct._xmlBuffer*, %struct._xmlBuffer** %4, align 8, !dbg !90
  %39 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %38, i32 0, i32 2, !dbg !91
  %40 = load i32, i32* %39, align 8, !dbg !91
  %41 = zext i32 %40 to i64, !dbg !90
  %42 = call i8* @memmove(i8* %34, i8* %37, i64 %41), !dbg !92
  %43 = load %struct._xmlBuffer*, %struct._xmlBuffer** %4, align 8, !dbg !93
  %44 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %43, i32 0, i32 1, !dbg !94
  %45 = load i8*, i8** %44, align 8, !dbg !94
  %46 = load %struct._xmlBuffer*, %struct._xmlBuffer** %4, align 8, !dbg !95
  %47 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %46, i32 0, i32 0, !dbg !96
  store i8* %45, i8** %47, align 8, !dbg !97
  %48 = load %struct._xmlBuffer*, %struct._xmlBuffer** %4, align 8, !dbg !98
  %49 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %48, i32 0, i32 0, !dbg !99
  %50 = load i8*, i8** %49, align 8, !dbg !99
  %51 = load %struct._xmlBuffer*, %struct._xmlBuffer** %4, align 8, !dbg !100
  %52 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %51, i32 0, i32 2, !dbg !101
  %53 = load i32, i32* %52, align 8, !dbg !101
  %54 = zext i32 %53 to i64, !dbg !98
  %55 = getelementptr inbounds i8, i8* %50, i64 %54, !dbg !98
  store i8 0, i8* %55, align 1, !dbg !102
  %56 = load i32, i32* %7, align 4, !dbg !103
  %57 = load %struct._xmlBuffer*, %struct._xmlBuffer** %4, align 8, !dbg !104
  %58 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %57, i32 0, i32 3, !dbg !105
  %59 = load i32, i32* %58, align 4, !dbg !106
  %60 = add i32 %59, %56, !dbg !106
  store i32 %60, i32* %58, align 4, !dbg !106
  br label %74, !dbg !107

61:                                               ; preds = %17
  %62 = load %struct._xmlBuffer*, %struct._xmlBuffer** %4, align 8, !dbg !108
  %63 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %62, i32 0, i32 1, !dbg !110
  %64 = load i8*, i8** %63, align 8, !dbg !110
  %65 = load i32, i32* %7, align 4, !dbg !111
  %66 = load i32, i32* %5, align 4, !dbg !112
  %67 = add i32 %65, %66, !dbg !113
  %68 = zext i32 %67 to i64, !dbg !111
  %69 = call i8* @xmlRealloc(i8* noundef %64, i64 noundef %68), !dbg !114
  store i8* %69, i8** %6, align 8, !dbg !115
  %70 = load i8*, i8** %6, align 8, !dbg !116
  %71 = icmp eq i8* %70, null, !dbg !118
  br i1 %71, label %72, label %73, !dbg !119

72:                                               ; preds = %61
  call void @xmlTreeErrMemory(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !120
  store i32 0, i32* %3, align 4, !dbg !122
  br label %76, !dbg !122

73:                                               ; preds = %61
  br label %74

74:                                               ; preds = %73, %31
  br label %75, !dbg !123

75:                                               ; preds = %74, %12, %2
  store i32 1, i32* %3, align 4, !dbg !124
  br label %76, !dbg !124

76:                                               ; preds = %75, %72
  %77 = load i32, i32* %3, align 4, !dbg !125
  ret i32 %77, !dbg !125
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !126 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlBuffer, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlBuffer* %2, metadata !129, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.declare(metadata i32* %3, metadata !131, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.declare(metadata i32* %4, metadata !133, metadata !DIExpression()), !dbg !134
  %7 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 4, !dbg !135
  %8 = bitcast i32* %7 to i8*, !dbg !136
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)), !dbg !137
  %9 = bitcast i32* %3 to i8*, !dbg !138
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)), !dbg !139
  %10 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 2, !dbg !140
  %11 = bitcast i32* %10 to i8*, !dbg !141
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)), !dbg !142
  %12 = bitcast i32* %4 to i8*, !dbg !143
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0)), !dbg !144
  %13 = load i32, i32* %4, align 4, !dbg !145
  %14 = zext i32 %13 to i64, !dbg !145
  %15 = call noalias i8* @malloc(i64 noundef %14) #7, !dbg !146
  %16 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 1, !dbg !147
  store i8* %15, i8** %16, align 8, !dbg !148
  %17 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 1, !dbg !149
  %18 = load i8*, i8** %17, align 8, !dbg !149
  %19 = icmp ne i8* %18, null, !dbg !150
  %20 = zext i1 %19 to i32, !dbg !150
  %21 = sext i32 %20 to i64, !dbg !151
  call void @klee_assume(i64 noundef %21), !dbg !152
  call void @llvm.dbg.declare(metadata i32* %5, metadata !153, metadata !DIExpression()), !dbg !154
  %22 = bitcast i32* %5 to i8*, !dbg !155
  call void @klee_make_symbolic(i8* noundef %22, i64 noundef 4, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0)), !dbg !156
  %23 = load i32, i32* %5, align 4, !dbg !157
  %24 = load i32, i32* %4, align 4, !dbg !158
  %25 = icmp ult i32 %23, %24, !dbg !159
  %26 = zext i1 %25 to i32, !dbg !159
  %27 = sext i32 %26 to i64, !dbg !157
  call void @klee_assume(i64 noundef %27), !dbg !160
  %28 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 1, !dbg !161
  %29 = load i8*, i8** %28, align 8, !dbg !161
  %30 = load i32, i32* %5, align 4, !dbg !162
  %31 = zext i32 %30 to i64, !dbg !163
  %32 = getelementptr inbounds i8, i8* %29, i64 %31, !dbg !163
  %33 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 0, !dbg !164
  store i8* %32, i8** %33, align 8, !dbg !165
  %34 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 4, !dbg !166
  %35 = load i32, i32* %34, align 8, !dbg !166
  %36 = icmp eq i32 %35, 2, !dbg !167
  %37 = zext i1 %36 to i32, !dbg !167
  %38 = sext i32 %37 to i64, !dbg !168
  call void @klee_assume(i64 noundef %38), !dbg !169
  call void @llvm.dbg.declare(metadata i32* %6, metadata !170, metadata !DIExpression()), !dbg !171
  %39 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 0, !dbg !172
  %40 = load i8*, i8** %39, align 8, !dbg !172
  %41 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 1, !dbg !173
  %42 = load i8*, i8** %41, align 8, !dbg !173
  %43 = ptrtoint i8* %40 to i64, !dbg !174
  %44 = ptrtoint i8* %42 to i64, !dbg !174
  %45 = sub i64 %43, %44, !dbg !174
  %46 = trunc i64 %45 to i32, !dbg !175
  store i32 %46, i32* %6, align 4, !dbg !171
  %47 = load i32, i32* %6, align 4, !dbg !176
  %48 = load i32, i32* %3, align 4, !dbg !177
  %49 = icmp ugt i32 %47, %48, !dbg !178
  %50 = zext i1 %49 to i32, !dbg !178
  %51 = sext i32 %50 to i64, !dbg !176
  call void @klee_assume(i64 noundef %51), !dbg !179
  %52 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 2, !dbg !180
  %53 = load i32, i32* %52, align 8, !dbg !180
  %54 = load i32, i32* %4, align 4, !dbg !180
  %55 = icmp ule i32 %53, %54, !dbg !180
  br i1 %55, label %56, label %58, !dbg !180

56:                                               ; preds = %0
  br i1 true, label %57, label %58, !dbg !180

57:                                               ; preds = %56
  br label %60, !dbg !180

58:                                               ; preds = %56, %0
  %59 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.8, i64 0, i64 0), i32 noundef 85, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !180
  br label %60, !dbg !180

60:                                               ; preds = %58, %57
  %61 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.8, i64 0, i64 0), i32 noundef 88, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !181
  %62 = load i32, i32* %3, align 4, !dbg !182
  %63 = call i32 @xmlBufferGrow(%struct._xmlBuffer* noundef %2, i32 noundef %62), !dbg !183
  %64 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 1, !dbg !184
  %65 = load i8*, i8** %64, align 8, !dbg !184
  call void @free(i8* noundef %65) #7, !dbg !185
  ret i32 0, !dbg !186
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_assume(i64 noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memmove(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !187 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !193, metadata !DIExpression()), !dbg !194
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !195, metadata !DIExpression()), !dbg !196
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !197, metadata !DIExpression()), !dbg !198
  call void @llvm.dbg.declare(metadata i8** %8, metadata !199, metadata !DIExpression()), !dbg !201
  %10 = load i8*, i8** %5, align 8, !dbg !202
  store i8* %10, i8** %8, align 8, !dbg !201
  call void @llvm.dbg.declare(metadata i8** %9, metadata !203, metadata !DIExpression()), !dbg !204
  %11 = load i8*, i8** %6, align 8, !dbg !205
  store i8* %11, i8** %9, align 8, !dbg !204
  %12 = load i8*, i8** %6, align 8, !dbg !206
  %13 = load i8*, i8** %5, align 8, !dbg !208
  %14 = icmp eq i8* %12, %13, !dbg !209
  br i1 %14, label %15, label %17, !dbg !210

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8, !dbg !211
  store i8* %16, i8** %4, align 8, !dbg !212
  br label %52, !dbg !212

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8, !dbg !213
  %19 = load i8*, i8** %5, align 8, !dbg !215
  %20 = icmp ugt i8* %18, %19, !dbg !216
  br i1 %20, label %21, label %31, !dbg !217

21:                                               ; preds = %17, %25
  %22 = load i64, i64* %7, align 8, !dbg !218
  %23 = add i64 %22, -1, !dbg !218
  store i64 %23, i64* %7, align 8, !dbg !218
  %24 = icmp ne i64 %22, 0, !dbg !220
  br i1 %24, label %25, label %50, !dbg !220

25:                                               ; preds = %21
  %26 = load i8*, i8** %9, align 8, !dbg !221
  %27 = getelementptr inbounds i8, i8* %26, i32 1, !dbg !221
  store i8* %27, i8** %9, align 8, !dbg !221
  %28 = load i8, i8* %26, align 1, !dbg !222
  %29 = load i8*, i8** %8, align 8, !dbg !223
  %30 = getelementptr inbounds i8, i8* %29, i32 1, !dbg !223
  store i8* %30, i8** %8, align 8, !dbg !223
  store i8 %28, i8* %29, align 1, !dbg !224
  br label %21, !dbg !220, !llvm.loop !225

31:                                               ; preds = %17
  %32 = load i64, i64* %7, align 8, !dbg !227
  %33 = sub i64 %32, 1, !dbg !229
  %34 = load i8*, i8** %8, align 8, !dbg !230
  %35 = getelementptr inbounds i8, i8* %34, i64 %33, !dbg !230
  store i8* %35, i8** %8, align 8, !dbg !230
  %36 = load i64, i64* %7, align 8, !dbg !231
  %37 = sub i64 %36, 1, !dbg !232
  %38 = load i8*, i8** %9, align 8, !dbg !233
  %39 = getelementptr inbounds i8, i8* %38, i64 %37, !dbg !233
  store i8* %39, i8** %9, align 8, !dbg !233
  br label %40, !dbg !234

40:                                               ; preds = %44, %31
  %41 = load i64, i64* %7, align 8, !dbg !235
  %42 = add i64 %41, -1, !dbg !235
  store i64 %42, i64* %7, align 8, !dbg !235
  %43 = icmp ne i64 %41, 0, !dbg !234
  br i1 %43, label %44, label %50, !dbg !234

44:                                               ; preds = %40
  %45 = load i8*, i8** %9, align 8, !dbg !236
  %46 = getelementptr inbounds i8, i8* %45, i32 -1, !dbg !236
  store i8* %46, i8** %9, align 8, !dbg !236
  %47 = load i8, i8* %45, align 1, !dbg !237
  %48 = load i8*, i8** %8, align 8, !dbg !238
  %49 = getelementptr inbounds i8, i8* %48, i32 -1, !dbg !238
  store i8* %49, i8** %8, align 8, !dbg !238
  store i8 %47, i8* %48, align 1, !dbg !239
  br label %40, !dbg !234, !llvm.loop !240

50:                                               ; preds = %40, %21
  %51 = load i8*, i8** %5, align 8, !dbg !241
  store i8* %51, i8** %4, align 8, !dbg !242
  br label %52, !dbg !242

52:                                               ; preds = %50, %15
  %53 = load i8*, i8** %4, align 8, !dbg !243
  ret i8* %53, !dbg !243
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16, !16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/187_tree.c_7544_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "404238b83dfcade511520fdeeb8787ee")
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
!17 = distinct !DISubprogram(name: "xmlTreeErrMemory", scope: !1, file: !1, line: 21, type: !18, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!18 = !DISubroutineType(types: !19)
!19 = !{null, !20}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!22 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!23 = !{}
!24 = !DILocalVariable(name: "msg", arg: 1, scope: !17, file: !1, line: 21, type: !20)
!25 = !DILocation(line: 21, column: 35, scope: !17)
!26 = !DILocation(line: 22, column: 11, scope: !17)
!27 = !DILocation(line: 23, column: 1, scope: !17)
!28 = distinct !DISubprogram(name: "xmlRealloc", scope: !1, file: !1, line: 26, type: !29, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!29 = !DISubroutineType(types: !30)
!30 = !{!3, !3, !31}
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !32, line: 46, baseType: !33)
!32 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!33 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!34 = !DILocalVariable(name: "ptr", arg: 1, scope: !28, file: !1, line: 26, type: !3)
!35 = !DILocation(line: 26, column: 24, scope: !28)
!36 = !DILocalVariable(name: "size", arg: 2, scope: !28, file: !1, line: 26, type: !31)
!37 = !DILocation(line: 26, column: 36, scope: !28)
!38 = !DILocation(line: 27, column: 20, scope: !28)
!39 = !DILocation(line: 27, column: 25, scope: !28)
!40 = !DILocation(line: 27, column: 12, scope: !28)
!41 = !DILocation(line: 27, column: 5, scope: !28)
!42 = distinct !DISubprogram(name: "xmlBufferGrow", scope: !1, file: !1, line: 31, type: !43, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!43 = !DISubroutineType(types: !44)
!44 = !{!45, !46, !53}
!45 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBuffer", file: !1, line: 11, baseType: !48)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlBuffer", file: !1, line: 12, size: 256, elements: !49)
!49 = !{!50, !51, !52, !54, !55}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !48, file: !1, line: 13, baseType: !4, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "contentIO", scope: !48, file: !1, line: 14, baseType: !4, size: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !48, file: !1, line: 15, baseType: !53, size: 32, offset: 128)
!53 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !48, file: !1, line: 16, baseType: !53, size: 32, offset: 160)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !48, file: !1, line: 17, baseType: !53, size: 32, offset: 192)
!56 = !DILocalVariable(name: "buf", arg: 1, scope: !42, file: !1, line: 31, type: !46)
!57 = !DILocation(line: 31, column: 30, scope: !42)
!58 = !DILocalVariable(name: "newSize", arg: 2, scope: !42, file: !1, line: 31, type: !53)
!59 = !DILocation(line: 31, column: 48, scope: !42)
!60 = !DILocalVariable(name: "rebuf", scope: !42, file: !1, line: 32, type: !4)
!61 = !DILocation(line: 32, column: 14, scope: !42)
!62 = !DILocalVariable(name: "start_buf", scope: !42, file: !1, line: 33, type: !53)
!63 = !DILocation(line: 33, column: 18, scope: !42)
!64 = !DILocation(line: 35, column: 10, scope: !65)
!65 = distinct !DILexicalBlock(scope: !42, file: !1, line: 35, column: 9)
!66 = !DILocation(line: 35, column: 15, scope: !65)
!67 = !DILocation(line: 35, column: 21, scope: !65)
!68 = !DILocation(line: 35, column: 27, scope: !65)
!69 = !DILocation(line: 35, column: 31, scope: !65)
!70 = !DILocation(line: 35, column: 36, scope: !65)
!71 = !DILocation(line: 35, column: 46, scope: !65)
!72 = !DILocation(line: 35, column: 9, scope: !42)
!73 = !DILocation(line: 36, column: 21, scope: !74)
!74 = distinct !DILexicalBlock(scope: !65, file: !1, line: 35, column: 56)
!75 = !DILocation(line: 36, column: 26, scope: !74)
!76 = !DILocation(line: 36, column: 36, scope: !74)
!77 = !DILocation(line: 36, column: 41, scope: !74)
!78 = !DILocation(line: 36, column: 34, scope: !74)
!79 = !DILocation(line: 36, column: 19, scope: !74)
!80 = !DILocation(line: 38, column: 13, scope: !81)
!81 = distinct !DILexicalBlock(scope: !74, file: !1, line: 38, column: 13)
!82 = !DILocation(line: 38, column: 25, scope: !81)
!83 = !DILocation(line: 38, column: 23, scope: !81)
!84 = !DILocation(line: 38, column: 13, scope: !74)
!85 = !DILocation(line: 40, column: 21, scope: !86)
!86 = distinct !DILexicalBlock(scope: !81, file: !1, line: 38, column: 34)
!87 = !DILocation(line: 40, column: 26, scope: !86)
!88 = !DILocation(line: 40, column: 37, scope: !86)
!89 = !DILocation(line: 40, column: 42, scope: !86)
!90 = !DILocation(line: 40, column: 51, scope: !86)
!91 = !DILocation(line: 40, column: 56, scope: !86)
!92 = !DILocation(line: 40, column: 13, scope: !86)
!93 = !DILocation(line: 41, column: 28, scope: !86)
!94 = !DILocation(line: 41, column: 33, scope: !86)
!95 = !DILocation(line: 41, column: 13, scope: !86)
!96 = !DILocation(line: 41, column: 18, scope: !86)
!97 = !DILocation(line: 41, column: 26, scope: !86)
!98 = !DILocation(line: 42, column: 13, scope: !86)
!99 = !DILocation(line: 42, column: 18, scope: !86)
!100 = !DILocation(line: 42, column: 26, scope: !86)
!101 = !DILocation(line: 42, column: 31, scope: !86)
!102 = !DILocation(line: 42, column: 36, scope: !86)
!103 = !DILocation(line: 43, column: 26, scope: !86)
!104 = !DILocation(line: 43, column: 13, scope: !86)
!105 = !DILocation(line: 43, column: 18, scope: !86)
!106 = !DILocation(line: 43, column: 23, scope: !86)
!107 = !DILocation(line: 44, column: 9, scope: !86)
!108 = !DILocation(line: 45, column: 44, scope: !109)
!109 = distinct !DILexicalBlock(scope: !81, file: !1, line: 44, column: 16)
!110 = !DILocation(line: 45, column: 49, scope: !109)
!111 = !DILocation(line: 45, column: 60, scope: !109)
!112 = !DILocation(line: 45, column: 72, scope: !109)
!113 = !DILocation(line: 45, column: 70, scope: !109)
!114 = !DILocation(line: 45, column: 33, scope: !109)
!115 = !DILocation(line: 45, column: 19, scope: !109)
!116 = !DILocation(line: 46, column: 17, scope: !117)
!117 = distinct !DILexicalBlock(scope: !109, file: !1, line: 46, column: 17)
!118 = !DILocation(line: 46, column: 23, scope: !117)
!119 = !DILocation(line: 46, column: 17, scope: !109)
!120 = !DILocation(line: 47, column: 17, scope: !121)
!121 = distinct !DILexicalBlock(scope: !117, file: !1, line: 46, column: 32)
!122 = !DILocation(line: 48, column: 17, scope: !121)
!123 = !DILocation(line: 51, column: 5, scope: !74)
!124 = !DILocation(line: 52, column: 5, scope: !42)
!125 = !DILocation(line: 53, column: 1, scope: !42)
!126 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 55, type: !127, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!127 = !DISubroutineType(types: !128)
!128 = !{!45}
!129 = !DILocalVariable(name: "buf", scope: !126, file: !1, line: 56, type: !47)
!130 = !DILocation(line: 56, column: 15, scope: !126)
!131 = !DILocalVariable(name: "newSize", scope: !126, file: !1, line: 57, type: !53)
!132 = !DILocation(line: 57, column: 18, scope: !126)
!133 = !DILocalVariable(name: "buffer_size", scope: !126, file: !1, line: 58, type: !53)
!134 = !DILocation(line: 58, column: 18, scope: !126)
!135 = !DILocation(line: 61, column: 29, scope: !126)
!136 = !DILocation(line: 61, column: 24, scope: !126)
!137 = !DILocation(line: 61, column: 5, scope: !126)
!138 = !DILocation(line: 62, column: 24, scope: !126)
!139 = !DILocation(line: 62, column: 5, scope: !126)
!140 = !DILocation(line: 63, column: 29, scope: !126)
!141 = !DILocation(line: 63, column: 24, scope: !126)
!142 = !DILocation(line: 63, column: 5, scope: !126)
!143 = !DILocation(line: 64, column: 24, scope: !126)
!144 = !DILocation(line: 64, column: 5, scope: !126)
!145 = !DILocation(line: 67, column: 38, scope: !126)
!146 = !DILocation(line: 67, column: 31, scope: !126)
!147 = !DILocation(line: 67, column: 9, scope: !126)
!148 = !DILocation(line: 67, column: 19, scope: !126)
!149 = !DILocation(line: 68, column: 21, scope: !126)
!150 = !DILocation(line: 68, column: 31, scope: !126)
!151 = !DILocation(line: 68, column: 17, scope: !126)
!152 = !DILocation(line: 68, column: 5, scope: !126)
!153 = !DILocalVariable(name: "content_offset", scope: !126, file: !1, line: 71, type: !53)
!154 = !DILocation(line: 71, column: 18, scope: !126)
!155 = !DILocation(line: 72, column: 24, scope: !126)
!156 = !DILocation(line: 72, column: 5, scope: !126)
!157 = !DILocation(line: 73, column: 17, scope: !126)
!158 = !DILocation(line: 73, column: 34, scope: !126)
!159 = !DILocation(line: 73, column: 32, scope: !126)
!160 = !DILocation(line: 73, column: 5, scope: !126)
!161 = !DILocation(line: 74, column: 23, scope: !126)
!162 = !DILocation(line: 74, column: 35, scope: !126)
!163 = !DILocation(line: 74, column: 33, scope: !126)
!164 = !DILocation(line: 74, column: 9, scope: !126)
!165 = !DILocation(line: 74, column: 17, scope: !126)
!166 = !DILocation(line: 77, column: 21, scope: !126)
!167 = !DILocation(line: 77, column: 27, scope: !126)
!168 = !DILocation(line: 77, column: 17, scope: !126)
!169 = !DILocation(line: 77, column: 5, scope: !126)
!170 = !DILocalVariable(name: "start_buf", scope: !126, file: !1, line: 80, type: !53)
!171 = !DILocation(line: 80, column: 18, scope: !126)
!172 = !DILocation(line: 80, column: 34, scope: !126)
!173 = !DILocation(line: 80, column: 48, scope: !126)
!174 = !DILocation(line: 80, column: 42, scope: !126)
!175 = !DILocation(line: 80, column: 30, scope: !126)
!176 = !DILocation(line: 81, column: 17, scope: !126)
!177 = !DILocation(line: 81, column: 29, scope: !126)
!178 = !DILocation(line: 81, column: 27, scope: !126)
!179 = !DILocation(line: 81, column: 5, scope: !126)
!180 = !DILocation(line: 85, column: 5, scope: !126)
!181 = !DILocation(line: 88, column: 5, scope: !126)
!182 = !DILocation(line: 91, column: 25, scope: !126)
!183 = !DILocation(line: 91, column: 5, scope: !126)
!184 = !DILocation(line: 94, column: 14, scope: !126)
!185 = !DILocation(line: 94, column: 5, scope: !126)
!186 = !DILocation(line: 96, column: 5, scope: !126)
!187 = distinct !DISubprogram(name: "memmove", scope: !188, file: !188, line: 12, type: !189, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !23)
!188 = !DIFile(filename: "runtime/Freestanding/memmove.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "6cd27189cdce56ce74ae860a315e13f2")
!189 = !DISubroutineType(types: !190)
!190 = !{!3, !3, !191, !31}
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!193 = !DILocalVariable(name: "dst", arg: 1, scope: !187, file: !188, line: 12, type: !3)
!194 = !DILocation(line: 12, column: 21, scope: !187)
!195 = !DILocalVariable(name: "src", arg: 2, scope: !187, file: !188, line: 12, type: !191)
!196 = !DILocation(line: 12, column: 38, scope: !187)
!197 = !DILocalVariable(name: "count", arg: 3, scope: !187, file: !188, line: 12, type: !31)
!198 = !DILocation(line: 12, column: 50, scope: !187)
!199 = !DILocalVariable(name: "a", scope: !187, file: !188, line: 13, type: !200)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!201 = !DILocation(line: 13, column: 9, scope: !187)
!202 = !DILocation(line: 13, column: 13, scope: !187)
!203 = !DILocalVariable(name: "b", scope: !187, file: !188, line: 14, type: !20)
!204 = !DILocation(line: 14, column: 15, scope: !187)
!205 = !DILocation(line: 14, column: 19, scope: !187)
!206 = !DILocation(line: 16, column: 7, scope: !207)
!207 = distinct !DILexicalBlock(scope: !187, file: !188, line: 16, column: 7)
!208 = !DILocation(line: 16, column: 14, scope: !207)
!209 = !DILocation(line: 16, column: 11, scope: !207)
!210 = !DILocation(line: 16, column: 7, scope: !187)
!211 = !DILocation(line: 17, column: 12, scope: !207)
!212 = !DILocation(line: 17, column: 5, scope: !207)
!213 = !DILocation(line: 19, column: 7, scope: !214)
!214 = distinct !DILexicalBlock(scope: !187, file: !188, line: 19, column: 7)
!215 = !DILocation(line: 19, column: 13, scope: !214)
!216 = !DILocation(line: 19, column: 11, scope: !214)
!217 = !DILocation(line: 19, column: 7, scope: !187)
!218 = !DILocation(line: 20, column: 17, scope: !219)
!219 = distinct !DILexicalBlock(scope: !214, file: !188, line: 19, column: 18)
!220 = !DILocation(line: 20, column: 5, scope: !219)
!221 = !DILocation(line: 21, column: 16, scope: !219)
!222 = !DILocation(line: 21, column: 14, scope: !219)
!223 = !DILocation(line: 21, column: 9, scope: !219)
!224 = !DILocation(line: 21, column: 12, scope: !219)
!225 = distinct !{!225, !220, !221, !226}
!226 = !{!"llvm.loop.mustprogress"}
!227 = !DILocation(line: 23, column: 10, scope: !228)
!228 = distinct !DILexicalBlock(scope: !214, file: !188, line: 22, column: 10)
!229 = !DILocation(line: 23, column: 16, scope: !228)
!230 = !DILocation(line: 23, column: 7, scope: !228)
!231 = !DILocation(line: 24, column: 10, scope: !228)
!232 = !DILocation(line: 24, column: 16, scope: !228)
!233 = !DILocation(line: 24, column: 7, scope: !228)
!234 = !DILocation(line: 25, column: 5, scope: !228)
!235 = !DILocation(line: 25, column: 17, scope: !228)
!236 = !DILocation(line: 26, column: 16, scope: !228)
!237 = !DILocation(line: 26, column: 14, scope: !228)
!238 = !DILocation(line: 26, column: 9, scope: !228)
!239 = !DILocation(line: 26, column: 12, scope: !228)
!240 = distinct !{!240, !234, !236, !226}
!241 = !DILocation(line: 29, column: 10, scope: !187)
!242 = !DILocation(line: 29, column: 3, scope: !187)
!243 = !DILocation(line: 30, column: 1, scope: !187)

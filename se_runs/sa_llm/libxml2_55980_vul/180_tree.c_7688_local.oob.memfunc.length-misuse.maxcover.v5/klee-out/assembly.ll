; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/180_tree.c_7688_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/180_tree.c_7688_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlBuffer = type { i8*, i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"(len <= buf->size) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_55980_vul/180_tree.c_7688_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlBufferAdd = private unnamed_addr constant [49 x i8] c"int xmlBufferAdd(xmlBuffer *, const char *, int)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"buf_alloc\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"buf_use\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"buf_size\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"content_offset\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"str\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlBufferAdd(%struct._xmlBuffer* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !15 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._xmlBuffer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct._xmlBuffer* %0, %struct._xmlBuffer** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlBuffer** %5, metadata !33, metadata !DIExpression()), !dbg !34
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !35, metadata !DIExpression()), !dbg !36
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !37, metadata !DIExpression()), !dbg !38
  %9 = load %struct._xmlBuffer*, %struct._xmlBuffer** %5, align 8, !dbg !39
  %10 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %9, i32 0, i32 4, !dbg !41
  %11 = load i32, i32* %10, align 8, !dbg !41
  %12 = icmp eq i32 %11, 2, !dbg !42
  br i1 %12, label %13, label %78, !dbg !43

13:                                               ; preds = %3
  %14 = load %struct._xmlBuffer*, %struct._xmlBuffer** %5, align 8, !dbg !44
  %15 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %14, i32 0, i32 1, !dbg !45
  %16 = load i8*, i8** %15, align 8, !dbg !45
  %17 = icmp ne i8* %16, null, !dbg !46
  br i1 %17, label %18, label %78, !dbg !47

18:                                               ; preds = %13
  call void @llvm.dbg.declare(metadata i64* %8, metadata !48, metadata !DIExpression()), !dbg !53
  %19 = load %struct._xmlBuffer*, %struct._xmlBuffer** %5, align 8, !dbg !54
  %20 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %19, i32 0, i32 0, !dbg !55
  %21 = load i8*, i8** %20, align 8, !dbg !55
  %22 = load %struct._xmlBuffer*, %struct._xmlBuffer** %5, align 8, !dbg !56
  %23 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %22, i32 0, i32 1, !dbg !57
  %24 = load i8*, i8** %23, align 8, !dbg !57
  %25 = ptrtoint i8* %21 to i64, !dbg !58
  %26 = ptrtoint i8* %24 to i64, !dbg !58
  %27 = sub i64 %25, %26, !dbg !58
  store i64 %27, i64* %8, align 8, !dbg !53
  %28 = load i64, i64* %8, align 8, !dbg !59
  %29 = load i32, i32* %7, align 4, !dbg !61
  %30 = zext i32 %29 to i64, !dbg !62
  %31 = icmp ugt i64 %28, %30, !dbg !63
  br i1 %31, label %32, label %77, !dbg !64

32:                                               ; preds = %18
  %33 = load i32, i32* %7, align 4, !dbg !65
  %34 = load %struct._xmlBuffer*, %struct._xmlBuffer** %5, align 8, !dbg !67
  %35 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %34, i32 0, i32 0, !dbg !68
  %36 = load i8*, i8** %35, align 8, !dbg !69
  %37 = sext i32 %33 to i64, !dbg !69
  %38 = sub i64 0, %37, !dbg !69
  %39 = getelementptr inbounds i8, i8* %36, i64 %38, !dbg !69
  store i8* %39, i8** %35, align 8, !dbg !69
  %40 = load %struct._xmlBuffer*, %struct._xmlBuffer** %5, align 8, !dbg !70
  %41 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %40, i32 0, i32 0, !dbg !71
  %42 = load i8*, i8** %41, align 8, !dbg !71
  %43 = getelementptr inbounds i8, i8* %42, i64 0, !dbg !70
  %44 = load i8*, i8** %6, align 8, !dbg !72
  %45 = load i32, i32* %7, align 4, !dbg !73
  %46 = sext i32 %45 to i64, !dbg !73
  %47 = call i8* @memmove(i8* %43, i8* %44, i64 %46), !dbg !74
  %48 = load i32, i32* %7, align 4, !dbg !75
  %49 = load %struct._xmlBuffer*, %struct._xmlBuffer** %5, align 8, !dbg !75
  %50 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %49, i32 0, i32 3, !dbg !75
  %51 = load i32, i32* %50, align 4, !dbg !75
  %52 = icmp ule i32 %48, %51, !dbg !75
  br i1 %52, label %53, label %55, !dbg !75

53:                                               ; preds = %32
  br i1 true, label %54, label %55, !dbg !75

54:                                               ; preds = %53
  br label %57, !dbg !75

55:                                               ; preds = %53, %32
  %56 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.2, i64 0, i64 0), i32 noundef 38, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.xmlBufferAdd, i64 0, i64 0)), !dbg !75
  br label %57, !dbg !75

57:                                               ; preds = %55, %54
  %58 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.2, i64 0, i64 0), i32 noundef 41, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.xmlBufferAdd, i64 0, i64 0)), !dbg !76
  %59 = load i32, i32* %7, align 4, !dbg !77
  %60 = load %struct._xmlBuffer*, %struct._xmlBuffer** %5, align 8, !dbg !78
  %61 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %60, i32 0, i32 2, !dbg !79
  %62 = load i32, i32* %61, align 8, !dbg !80
  %63 = add i32 %62, %59, !dbg !80
  store i32 %63, i32* %61, align 8, !dbg !80
  %64 = load i32, i32* %7, align 4, !dbg !81
  %65 = load %struct._xmlBuffer*, %struct._xmlBuffer** %5, align 8, !dbg !82
  %66 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %65, i32 0, i32 3, !dbg !83
  %67 = load i32, i32* %66, align 4, !dbg !84
  %68 = add i32 %67, %64, !dbg !84
  store i32 %68, i32* %66, align 4, !dbg !84
  %69 = load %struct._xmlBuffer*, %struct._xmlBuffer** %5, align 8, !dbg !85
  %70 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %69, i32 0, i32 0, !dbg !86
  %71 = load i8*, i8** %70, align 8, !dbg !86
  %72 = load %struct._xmlBuffer*, %struct._xmlBuffer** %5, align 8, !dbg !87
  %73 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %72, i32 0, i32 2, !dbg !88
  %74 = load i32, i32* %73, align 8, !dbg !88
  %75 = zext i32 %74 to i64, !dbg !85
  %76 = getelementptr inbounds i8, i8* %71, i64 %75, !dbg !85
  store i8 0, i8* %76, align 1, !dbg !89
  store i32 0, i32* %4, align 4, !dbg !90
  br label %79, !dbg !90

77:                                               ; preds = %18
  br label %78, !dbg !91

78:                                               ; preds = %77, %13, %3
  store i32 -1, i32* %4, align 4, !dbg !92
  br label %79, !dbg !92

79:                                               ; preds = %78, %57
  %80 = load i32, i32* %4, align 4, !dbg !93
  ret i32 %80, !dbg !93
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !94 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlBuffer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlBuffer** %2, metadata !97, metadata !DIExpression()), !dbg !98
  %7 = call noalias i8* @malloc(i64 noundef 32) #7, !dbg !99
  %8 = bitcast i8* %7 to %struct._xmlBuffer*, !dbg !99
  store %struct._xmlBuffer* %8, %struct._xmlBuffer** %2, align 8, !dbg !98
  %9 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !100
  %10 = icmp ne %struct._xmlBuffer* %9, null, !dbg !100
  br i1 %10, label %12, label %11, !dbg !102

11:                                               ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !103
  br label %97, !dbg !103

12:                                               ; preds = %0
  %13 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !104
  %14 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %13, i32 0, i32 4, !dbg !105
  %15 = bitcast i32* %14 to i8*, !dbg !106
  call void @klee_make_symbolic(i8* noundef %15, i64 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0)), !dbg !107
  %16 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !108
  %17 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %16, i32 0, i32 2, !dbg !109
  %18 = bitcast i32* %17 to i8*, !dbg !110
  call void @klee_make_symbolic(i8* noundef %18, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)), !dbg !111
  %19 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !112
  %20 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %19, i32 0, i32 3, !dbg !113
  %21 = bitcast i32* %20 to i8*, !dbg !114
  call void @klee_make_symbolic(i8* noundef %21, i64 noundef 4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)), !dbg !115
  %22 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !116
  %23 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %22, i32 0, i32 4, !dbg !117
  %24 = load i32, i32* %23, align 8, !dbg !117
  %25 = icmp eq i32 %24, 2, !dbg !118
  %26 = zext i1 %25 to i32, !dbg !118
  %27 = sext i32 %26 to i64, !dbg !116
  call void @klee_assume(i64 noundef %27), !dbg !119
  %28 = call noalias i8* @malloc(i64 noundef 4096) #7, !dbg !120
  %29 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !121
  %30 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %29, i32 0, i32 1, !dbg !122
  store i8* %28, i8** %30, align 8, !dbg !123
  %31 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !124
  %32 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %31, i32 0, i32 1, !dbg !126
  %33 = load i8*, i8** %32, align 8, !dbg !126
  %34 = icmp ne i8* %33, null, !dbg !124
  br i1 %34, label %38, label %35, !dbg !127

35:                                               ; preds = %12
  %36 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !128
  %37 = bitcast %struct._xmlBuffer* %36 to i8*, !dbg !128
  call void @free(i8* noundef %37) #7, !dbg !130
  store i32 1, i32* %1, align 4, !dbg !131
  br label %97, !dbg !131

38:                                               ; preds = %12
  call void @llvm.dbg.declare(metadata i32* %3, metadata !132, metadata !DIExpression()), !dbg !133
  %39 = bitcast i32* %3 to i8*, !dbg !134
  call void @klee_make_symbolic(i8* noundef %39, i64 noundef 4, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0)), !dbg !135
  %40 = load i32, i32* %3, align 4, !dbg !136
  %41 = icmp ult i32 %40, 4096, !dbg !137
  %42 = zext i1 %41 to i32, !dbg !137
  %43 = sext i32 %42 to i64, !dbg !136
  call void @klee_assume(i64 noundef %43), !dbg !138
  %44 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !139
  %45 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %44, i32 0, i32 1, !dbg !140
  %46 = load i8*, i8** %45, align 8, !dbg !140
  %47 = load i32, i32* %3, align 4, !dbg !141
  %48 = zext i32 %47 to i64, !dbg !142
  %49 = getelementptr inbounds i8, i8* %46, i64 %48, !dbg !142
  %50 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !143
  %51 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %50, i32 0, i32 0, !dbg !144
  store i8* %49, i8** %51, align 8, !dbg !145
  call void @llvm.dbg.declare(metadata i32* %4, metadata !146, metadata !DIExpression()), !dbg !147
  %52 = bitcast i32* %4 to i8*, !dbg !148
  call void @klee_make_symbolic(i8* noundef %52, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)), !dbg !149
  %53 = load i32, i32* %4, align 4, !dbg !150
  %54 = icmp sgt i32 %53, 0, !dbg !151
  %55 = zext i1 %54 to i32, !dbg !151
  %56 = sext i32 %55 to i64, !dbg !150
  call void @klee_assume(i64 noundef %56), !dbg !152
  call void @llvm.dbg.declare(metadata i64* %5, metadata !153, metadata !DIExpression()), !dbg !154
  %57 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !155
  %58 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %57, i32 0, i32 0, !dbg !156
  %59 = load i8*, i8** %58, align 8, !dbg !156
  %60 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !157
  %61 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %60, i32 0, i32 1, !dbg !158
  %62 = load i8*, i8** %61, align 8, !dbg !158
  %63 = ptrtoint i8* %59 to i64, !dbg !159
  %64 = ptrtoint i8* %62 to i64, !dbg !159
  %65 = sub i64 %63, %64, !dbg !159
  store i64 %65, i64* %5, align 8, !dbg !154
  %66 = load i64, i64* %5, align 8, !dbg !160
  %67 = load i32, i32* %4, align 4, !dbg !161
  %68 = zext i32 %67 to i64, !dbg !162
  %69 = icmp ugt i64 %66, %68, !dbg !163
  %70 = zext i1 %69 to i32, !dbg !163
  %71 = sext i32 %70 to i64, !dbg !160
  call void @klee_assume(i64 noundef %71), !dbg !164
  call void @llvm.dbg.declare(metadata i8** %6, metadata !165, metadata !DIExpression()), !dbg !166
  %72 = load i32, i32* %4, align 4, !dbg !167
  %73 = sext i32 %72 to i64, !dbg !167
  %74 = call noalias i8* @malloc(i64 noundef %73) #7, !dbg !168
  store i8* %74, i8** %6, align 8, !dbg !166
  %75 = load i8*, i8** %6, align 8, !dbg !169
  %76 = icmp ne i8* %75, null, !dbg !169
  br i1 %76, label %83, label %77, !dbg !171

77:                                               ; preds = %38
  %78 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !172
  %79 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %78, i32 0, i32 1, !dbg !174
  %80 = load i8*, i8** %79, align 8, !dbg !174
  call void @free(i8* noundef %80) #7, !dbg !175
  %81 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !176
  %82 = bitcast %struct._xmlBuffer* %81 to i8*, !dbg !176
  call void @free(i8* noundef %82) #7, !dbg !177
  store i32 1, i32* %1, align 4, !dbg !178
  br label %97, !dbg !178

83:                                               ; preds = %38
  %84 = load i8*, i8** %6, align 8, !dbg !179
  %85 = load i32, i32* %4, align 4, !dbg !180
  %86 = sext i32 %85 to i64, !dbg !180
  call void @klee_make_symbolic(i8* noundef %84, i64 noundef %86, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)), !dbg !181
  %87 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !182
  %88 = load i8*, i8** %6, align 8, !dbg !183
  %89 = load i32, i32* %4, align 4, !dbg !184
  %90 = call i32 @xmlBufferAdd(%struct._xmlBuffer* noundef %87, i8* noundef %88, i32 noundef %89), !dbg !185
  %91 = load i8*, i8** %6, align 8, !dbg !186
  call void @free(i8* noundef %91) #7, !dbg !187
  %92 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !188
  %93 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %92, i32 0, i32 1, !dbg !189
  %94 = load i8*, i8** %93, align 8, !dbg !189
  call void @free(i8* noundef %94) #7, !dbg !190
  %95 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !191
  %96 = bitcast %struct._xmlBuffer* %95 to i8*, !dbg !191
  call void @free(i8* noundef %96) #7, !dbg !192
  store i32 0, i32* %1, align 4, !dbg !193
  br label %97, !dbg !193

97:                                               ; preds = %83, %77, %35, %11
  %98 = load i32, i32* %1, align 4, !dbg !194
  ret i32 %98, !dbg !194
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memmove(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !195 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !201, metadata !DIExpression()), !dbg !202
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !203, metadata !DIExpression()), !dbg !204
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !205, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.declare(metadata i8** %8, metadata !207, metadata !DIExpression()), !dbg !208
  %10 = load i8*, i8** %5, align 8, !dbg !209
  store i8* %10, i8** %8, align 8, !dbg !208
  call void @llvm.dbg.declare(metadata i8** %9, metadata !210, metadata !DIExpression()), !dbg !211
  %11 = load i8*, i8** %6, align 8, !dbg !212
  store i8* %11, i8** %9, align 8, !dbg !211
  %12 = load i8*, i8** %6, align 8, !dbg !213
  %13 = load i8*, i8** %5, align 8, !dbg !215
  %14 = icmp eq i8* %12, %13, !dbg !216
  br i1 %14, label %15, label %17, !dbg !217

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8, !dbg !218
  store i8* %16, i8** %4, align 8, !dbg !219
  br label %52, !dbg !219

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8, !dbg !220
  %19 = load i8*, i8** %5, align 8, !dbg !222
  %20 = icmp ugt i8* %18, %19, !dbg !223
  br i1 %20, label %21, label %31, !dbg !224

21:                                               ; preds = %17, %25
  %22 = load i64, i64* %7, align 8, !dbg !225
  %23 = add i64 %22, -1, !dbg !225
  store i64 %23, i64* %7, align 8, !dbg !225
  %24 = icmp ne i64 %22, 0, !dbg !227
  br i1 %24, label %25, label %50, !dbg !227

25:                                               ; preds = %21
  %26 = load i8*, i8** %9, align 8, !dbg !228
  %27 = getelementptr inbounds i8, i8* %26, i32 1, !dbg !228
  store i8* %27, i8** %9, align 8, !dbg !228
  %28 = load i8, i8* %26, align 1, !dbg !229
  %29 = load i8*, i8** %8, align 8, !dbg !230
  %30 = getelementptr inbounds i8, i8* %29, i32 1, !dbg !230
  store i8* %30, i8** %8, align 8, !dbg !230
  store i8 %28, i8* %29, align 1, !dbg !231
  br label %21, !dbg !227, !llvm.loop !232

31:                                               ; preds = %17
  %32 = load i64, i64* %7, align 8, !dbg !234
  %33 = sub i64 %32, 1, !dbg !236
  %34 = load i8*, i8** %8, align 8, !dbg !237
  %35 = getelementptr inbounds i8, i8* %34, i64 %33, !dbg !237
  store i8* %35, i8** %8, align 8, !dbg !237
  %36 = load i64, i64* %7, align 8, !dbg !238
  %37 = sub i64 %36, 1, !dbg !239
  %38 = load i8*, i8** %9, align 8, !dbg !240
  %39 = getelementptr inbounds i8, i8* %38, i64 %37, !dbg !240
  store i8* %39, i8** %9, align 8, !dbg !240
  br label %40, !dbg !241

40:                                               ; preds = %44, %31
  %41 = load i64, i64* %7, align 8, !dbg !242
  %42 = add i64 %41, -1, !dbg !242
  store i64 %42, i64* %7, align 8, !dbg !242
  %43 = icmp ne i64 %41, 0, !dbg !241
  br i1 %43, label %44, label %50, !dbg !241

44:                                               ; preds = %40
  %45 = load i8*, i8** %9, align 8, !dbg !243
  %46 = getelementptr inbounds i8, i8* %45, i32 -1, !dbg !243
  store i8* %46, i8** %9, align 8, !dbg !243
  %47 = load i8, i8* %45, align 1, !dbg !244
  %48 = load i8*, i8** %8, align 8, !dbg !245
  %49 = getelementptr inbounds i8, i8* %48, i32 -1, !dbg !245
  store i8* %49, i8** %8, align 8, !dbg !245
  store i8 %47, i8* %48, align 1, !dbg !246
  br label %40, !dbg !241, !llvm.loop !247

50:                                               ; preds = %40, %21
  %51 = load i8*, i8** %5, align 8, !dbg !248
  store i8* %51, i8** %4, align 8, !dbg !249
  br label %52, !dbg !249

52:                                               ; preds = %50, %15
  %53 = load i8*, i8** %4, align 8, !dbg !250
  ret i8* %53, !dbg !250
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !5}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14, !14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/180_tree.c_7688_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "bfb96244a2ab3b9ffe146c82d7ece373")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!5 = distinct !DICompileUnit(language: DW_LANG_C99, file: !6, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!6 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memmove.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "6cd27189cdce56ce74ae860a315e13f2")
!7 = !{i32 7, !"Dwarf Version", i32 5}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{i32 7, !"PIC Level", i32 2}
!11 = !{i32 7, !"PIE Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"Ubuntu clang version 14.0.6"}
!15 = distinct !DISubprogram(name: "xmlBufferAdd", scope: !1, file: !1, line: 25, type: !16, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !19, !30, !18}
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBuffer", file: !1, line: 10, baseType: !21)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlBuffer", file: !1, line: 11, size: 256, elements: !22)
!22 = !{!23, !26, !27, !28, !29}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !21, file: !1, line: 12, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "contentIO", scope: !21, file: !1, line: 13, baseType: !24, size: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !21, file: !1, line: 14, baseType: !4, size: 32, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !21, file: !1, line: 15, baseType: !4, size: 32, offset: 160)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !21, file: !1, line: 16, baseType: !4, size: 32, offset: 192)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!32 = !{}
!33 = !DILocalVariable(name: "buf", arg: 1, scope: !15, file: !1, line: 25, type: !19)
!34 = !DILocation(line: 25, column: 29, scope: !15)
!35 = !DILocalVariable(name: "str", arg: 2, scope: !15, file: !1, line: 25, type: !30)
!36 = !DILocation(line: 25, column: 46, scope: !15)
!37 = !DILocalVariable(name: "len", arg: 3, scope: !15, file: !1, line: 25, type: !18)
!38 = !DILocation(line: 25, column: 55, scope: !15)
!39 = !DILocation(line: 26, column: 10, scope: !40)
!40 = distinct !DILexicalBlock(scope: !15, file: !1, line: 26, column: 9)
!41 = !DILocation(line: 26, column: 15, scope: !40)
!42 = !DILocation(line: 26, column: 21, scope: !40)
!43 = !DILocation(line: 26, column: 45, scope: !40)
!44 = !DILocation(line: 26, column: 49, scope: !40)
!45 = !DILocation(line: 26, column: 54, scope: !40)
!46 = !DILocation(line: 26, column: 64, scope: !40)
!47 = !DILocation(line: 26, column: 9, scope: !15)
!48 = !DILocalVariable(name: "start_buf", scope: !49, file: !1, line: 27, type: !50)
!49 = distinct !DILexicalBlock(scope: !40, file: !1, line: 26, column: 74)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !51, line: 46, baseType: !52)
!51 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!52 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!53 = !DILocation(line: 27, column: 16, scope: !49)
!54 = !DILocation(line: 27, column: 28, scope: !49)
!55 = !DILocation(line: 27, column: 33, scope: !49)
!56 = !DILocation(line: 27, column: 43, scope: !49)
!57 = !DILocation(line: 27, column: 48, scope: !49)
!58 = !DILocation(line: 27, column: 41, scope: !49)
!59 = !DILocation(line: 29, column: 13, scope: !60)
!60 = distinct !DILexicalBlock(scope: !49, file: !1, line: 29, column: 13)
!61 = !DILocation(line: 29, column: 40, scope: !60)
!62 = !DILocation(line: 29, column: 25, scope: !60)
!63 = !DILocation(line: 29, column: 23, scope: !60)
!64 = !DILocation(line: 29, column: 13, scope: !49)
!65 = !DILocation(line: 33, column: 29, scope: !66)
!66 = distinct !DILexicalBlock(scope: !60, file: !1, line: 29, column: 45)
!67 = !DILocation(line: 33, column: 13, scope: !66)
!68 = !DILocation(line: 33, column: 18, scope: !66)
!69 = !DILocation(line: 33, column: 26, scope: !66)
!70 = !DILocation(line: 35, column: 22, scope: !66)
!71 = !DILocation(line: 35, column: 27, scope: !66)
!72 = !DILocation(line: 35, column: 39, scope: !66)
!73 = !DILocation(line: 35, column: 44, scope: !66)
!74 = !DILocation(line: 35, column: 13, scope: !66)
!75 = !DILocation(line: 38, column: 13, scope: !66)
!76 = !DILocation(line: 41, column: 13, scope: !66)
!77 = !DILocation(line: 43, column: 25, scope: !66)
!78 = !DILocation(line: 43, column: 13, scope: !66)
!79 = !DILocation(line: 43, column: 18, scope: !66)
!80 = !DILocation(line: 43, column: 22, scope: !66)
!81 = !DILocation(line: 44, column: 26, scope: !66)
!82 = !DILocation(line: 44, column: 13, scope: !66)
!83 = !DILocation(line: 44, column: 18, scope: !66)
!84 = !DILocation(line: 44, column: 23, scope: !66)
!85 = !DILocation(line: 45, column: 13, scope: !66)
!86 = !DILocation(line: 45, column: 18, scope: !66)
!87 = !DILocation(line: 45, column: 26, scope: !66)
!88 = !DILocation(line: 45, column: 31, scope: !66)
!89 = !DILocation(line: 45, column: 36, scope: !66)
!90 = !DILocation(line: 46, column: 13, scope: !66)
!91 = !DILocation(line: 48, column: 5, scope: !49)
!92 = !DILocation(line: 49, column: 5, scope: !15)
!93 = !DILocation(line: 50, column: 1, scope: !15)
!94 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 52, type: !95, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!95 = !DISubroutineType(types: !96)
!96 = !{!18}
!97 = !DILocalVariable(name: "buf", scope: !94, file: !1, line: 53, type: !19)
!98 = !DILocation(line: 53, column: 16, scope: !94)
!99 = !DILocation(line: 53, column: 22, scope: !94)
!100 = !DILocation(line: 54, column: 10, scope: !101)
!101 = distinct !DILexicalBlock(scope: !94, file: !1, line: 54, column: 9)
!102 = !DILocation(line: 54, column: 9, scope: !94)
!103 = !DILocation(line: 54, column: 15, scope: !101)
!104 = !DILocation(line: 57, column: 25, scope: !94)
!105 = !DILocation(line: 57, column: 30, scope: !94)
!106 = !DILocation(line: 57, column: 24, scope: !94)
!107 = !DILocation(line: 57, column: 5, scope: !94)
!108 = !DILocation(line: 58, column: 25, scope: !94)
!109 = !DILocation(line: 58, column: 30, scope: !94)
!110 = !DILocation(line: 58, column: 24, scope: !94)
!111 = !DILocation(line: 58, column: 5, scope: !94)
!112 = !DILocation(line: 59, column: 25, scope: !94)
!113 = !DILocation(line: 59, column: 30, scope: !94)
!114 = !DILocation(line: 59, column: 24, scope: !94)
!115 = !DILocation(line: 59, column: 5, scope: !94)
!116 = !DILocation(line: 62, column: 17, scope: !94)
!117 = !DILocation(line: 62, column: 22, scope: !94)
!118 = !DILocation(line: 62, column: 28, scope: !94)
!119 = !DILocation(line: 62, column: 5, scope: !94)
!120 = !DILocation(line: 65, column: 22, scope: !94)
!121 = !DILocation(line: 65, column: 5, scope: !94)
!122 = !DILocation(line: 65, column: 10, scope: !94)
!123 = !DILocation(line: 65, column: 20, scope: !94)
!124 = !DILocation(line: 66, column: 10, scope: !125)
!125 = distinct !DILexicalBlock(scope: !94, file: !1, line: 66, column: 9)
!126 = !DILocation(line: 66, column: 15, scope: !125)
!127 = !DILocation(line: 66, column: 9, scope: !94)
!128 = !DILocation(line: 67, column: 14, scope: !129)
!129 = distinct !DILexicalBlock(scope: !125, file: !1, line: 66, column: 26)
!130 = !DILocation(line: 67, column: 9, scope: !129)
!131 = !DILocation(line: 68, column: 9, scope: !129)
!132 = !DILocalVariable(name: "content_offset", scope: !94, file: !1, line: 72, type: !4)
!133 = !DILocation(line: 72, column: 18, scope: !94)
!134 = !DILocation(line: 73, column: 24, scope: !94)
!135 = !DILocation(line: 73, column: 5, scope: !94)
!136 = !DILocation(line: 74, column: 17, scope: !94)
!137 = !DILocation(line: 74, column: 32, scope: !94)
!138 = !DILocation(line: 74, column: 5, scope: !94)
!139 = !DILocation(line: 75, column: 20, scope: !94)
!140 = !DILocation(line: 75, column: 25, scope: !94)
!141 = !DILocation(line: 75, column: 37, scope: !94)
!142 = !DILocation(line: 75, column: 35, scope: !94)
!143 = !DILocation(line: 75, column: 5, scope: !94)
!144 = !DILocation(line: 75, column: 10, scope: !94)
!145 = !DILocation(line: 75, column: 18, scope: !94)
!146 = !DILocalVariable(name: "len", scope: !94, file: !1, line: 78, type: !18)
!147 = !DILocation(line: 78, column: 9, scope: !94)
!148 = !DILocation(line: 79, column: 24, scope: !94)
!149 = !DILocation(line: 79, column: 5, scope: !94)
!150 = !DILocation(line: 82, column: 17, scope: !94)
!151 = !DILocation(line: 82, column: 21, scope: !94)
!152 = !DILocation(line: 82, column: 5, scope: !94)
!153 = !DILocalVariable(name: "start_buf", scope: !94, file: !1, line: 85, type: !50)
!154 = !DILocation(line: 85, column: 12, scope: !94)
!155 = !DILocation(line: 85, column: 24, scope: !94)
!156 = !DILocation(line: 85, column: 29, scope: !94)
!157 = !DILocation(line: 85, column: 39, scope: !94)
!158 = !DILocation(line: 85, column: 44, scope: !94)
!159 = !DILocation(line: 85, column: 37, scope: !94)
!160 = !DILocation(line: 86, column: 17, scope: !94)
!161 = !DILocation(line: 86, column: 43, scope: !94)
!162 = !DILocation(line: 86, column: 29, scope: !94)
!163 = !DILocation(line: 86, column: 27, scope: !94)
!164 = !DILocation(line: 86, column: 5, scope: !94)
!165 = !DILocalVariable(name: "str", scope: !94, file: !1, line: 89, type: !24)
!166 = !DILocation(line: 89, column: 11, scope: !94)
!167 = !DILocation(line: 89, column: 24, scope: !94)
!168 = !DILocation(line: 89, column: 17, scope: !94)
!169 = !DILocation(line: 90, column: 10, scope: !170)
!170 = distinct !DILexicalBlock(scope: !94, file: !1, line: 90, column: 9)
!171 = !DILocation(line: 90, column: 9, scope: !94)
!172 = !DILocation(line: 91, column: 14, scope: !173)
!173 = distinct !DILexicalBlock(scope: !170, file: !1, line: 90, column: 15)
!174 = !DILocation(line: 91, column: 19, scope: !173)
!175 = !DILocation(line: 91, column: 9, scope: !173)
!176 = !DILocation(line: 92, column: 14, scope: !173)
!177 = !DILocation(line: 92, column: 9, scope: !173)
!178 = !DILocation(line: 93, column: 9, scope: !173)
!179 = !DILocation(line: 95, column: 24, scope: !94)
!180 = !DILocation(line: 95, column: 29, scope: !94)
!181 = !DILocation(line: 95, column: 5, scope: !94)
!182 = !DILocation(line: 98, column: 18, scope: !94)
!183 = !DILocation(line: 98, column: 23, scope: !94)
!184 = !DILocation(line: 98, column: 28, scope: !94)
!185 = !DILocation(line: 98, column: 5, scope: !94)
!186 = !DILocation(line: 101, column: 10, scope: !94)
!187 = !DILocation(line: 101, column: 5, scope: !94)
!188 = !DILocation(line: 102, column: 10, scope: !94)
!189 = !DILocation(line: 102, column: 15, scope: !94)
!190 = !DILocation(line: 102, column: 5, scope: !94)
!191 = !DILocation(line: 103, column: 10, scope: !94)
!192 = !DILocation(line: 103, column: 5, scope: !94)
!193 = !DILocation(line: 105, column: 5, scope: !94)
!194 = !DILocation(line: 106, column: 1, scope: !94)
!195 = distinct !DISubprogram(name: "memmove", scope: !196, file: !196, line: 12, type: !197, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !32)
!196 = !DIFile(filename: "runtime/Freestanding/memmove.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "6cd27189cdce56ce74ae860a315e13f2")
!197 = !DISubroutineType(types: !198)
!198 = !{!3, !3, !199, !50}
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!201 = !DILocalVariable(name: "dst", arg: 1, scope: !195, file: !196, line: 12, type: !3)
!202 = !DILocation(line: 12, column: 21, scope: !195)
!203 = !DILocalVariable(name: "src", arg: 2, scope: !195, file: !196, line: 12, type: !199)
!204 = !DILocation(line: 12, column: 38, scope: !195)
!205 = !DILocalVariable(name: "count", arg: 3, scope: !195, file: !196, line: 12, type: !50)
!206 = !DILocation(line: 12, column: 50, scope: !195)
!207 = !DILocalVariable(name: "a", scope: !195, file: !196, line: 13, type: !24)
!208 = !DILocation(line: 13, column: 9, scope: !195)
!209 = !DILocation(line: 13, column: 13, scope: !195)
!210 = !DILocalVariable(name: "b", scope: !195, file: !196, line: 14, type: !30)
!211 = !DILocation(line: 14, column: 15, scope: !195)
!212 = !DILocation(line: 14, column: 19, scope: !195)
!213 = !DILocation(line: 16, column: 7, scope: !214)
!214 = distinct !DILexicalBlock(scope: !195, file: !196, line: 16, column: 7)
!215 = !DILocation(line: 16, column: 14, scope: !214)
!216 = !DILocation(line: 16, column: 11, scope: !214)
!217 = !DILocation(line: 16, column: 7, scope: !195)
!218 = !DILocation(line: 17, column: 12, scope: !214)
!219 = !DILocation(line: 17, column: 5, scope: !214)
!220 = !DILocation(line: 19, column: 7, scope: !221)
!221 = distinct !DILexicalBlock(scope: !195, file: !196, line: 19, column: 7)
!222 = !DILocation(line: 19, column: 13, scope: !221)
!223 = !DILocation(line: 19, column: 11, scope: !221)
!224 = !DILocation(line: 19, column: 7, scope: !195)
!225 = !DILocation(line: 20, column: 17, scope: !226)
!226 = distinct !DILexicalBlock(scope: !221, file: !196, line: 19, column: 18)
!227 = !DILocation(line: 20, column: 5, scope: !226)
!228 = !DILocation(line: 21, column: 16, scope: !226)
!229 = !DILocation(line: 21, column: 14, scope: !226)
!230 = !DILocation(line: 21, column: 9, scope: !226)
!231 = !DILocation(line: 21, column: 12, scope: !226)
!232 = distinct !{!232, !227, !228, !233}
!233 = !{!"llvm.loop.mustprogress"}
!234 = !DILocation(line: 23, column: 10, scope: !235)
!235 = distinct !DILexicalBlock(scope: !221, file: !196, line: 22, column: 10)
!236 = !DILocation(line: 23, column: 16, scope: !235)
!237 = !DILocation(line: 23, column: 7, scope: !235)
!238 = !DILocation(line: 24, column: 10, scope: !235)
!239 = !DILocation(line: 24, column: 16, scope: !235)
!240 = !DILocation(line: 24, column: 7, scope: !235)
!241 = !DILocation(line: 25, column: 5, scope: !235)
!242 = !DILocation(line: 25, column: 17, scope: !235)
!243 = !DILocation(line: 26, column: 16, scope: !235)
!244 = !DILocation(line: 26, column: 14, scope: !235)
!245 = !DILocation(line: 26, column: 9, scope: !235)
!246 = !DILocation(line: 26, column: 12, scope: !235)
!247 = distinct !{!247, !241, !243, !233}
!248 = !DILocation(line: 29, column: 10, scope: !195)
!249 = !DILocation(line: 29, column: 3, scope: !195)
!250 = !DILocation(line: 30, column: 1, scope: !195)

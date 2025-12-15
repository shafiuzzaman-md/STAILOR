; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/184_tree.c_7635_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/184_tree.c_7635_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlBuffer = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"growing buffer\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"(buf->use + len < buf->size) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_55980_vul/184_tree.c_7635_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlBufferAdd = private unnamed_addr constant [49 x i8] c"int xmlBufferAdd(xmlBuffer *, const char *, int)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"str\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlBufferResize(%struct._xmlBuffer* noundef %0, i32 noundef %1) #0 !dbg !21 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlBuffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct._xmlBuffer* %0, %struct._xmlBuffer** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlBuffer** %4, metadata !35, metadata !DIExpression()), !dbg !36
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !37, metadata !DIExpression()), !dbg !38
  %8 = load i32, i32* %5, align 4, !dbg !39
  %9 = icmp eq i32 %8, 0, !dbg !41
  br i1 %9, label %10, label %11, !dbg !42

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !43
  br label %72, !dbg !43

11:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %6, metadata !44, metadata !DIExpression()), !dbg !45
  %12 = load i32, i32* %5, align 4, !dbg !46
  %13 = zext i32 %12 to i64, !dbg !46
  %14 = call noalias i8* @malloc(i64 noundef %13) #7, !dbg !47
  store i8* %14, i8** %6, align 8, !dbg !45
  %15 = load i8*, i8** %6, align 8, !dbg !48
  %16 = icmp ne i8* %15, null, !dbg !48
  br i1 %16, label %18, label %17, !dbg !50

17:                                               ; preds = %11
  store i32 0, i32* %3, align 4, !dbg !51
  br label %72, !dbg !51

18:                                               ; preds = %11
  %19 = load %struct._xmlBuffer*, %struct._xmlBuffer** %4, align 8, !dbg !52
  %20 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %19, i32 0, i32 0, !dbg !54
  %21 = load i8*, i8** %20, align 8, !dbg !54
  %22 = icmp ne i8* %21, null, !dbg !52
  br i1 %22, label %23, label %57, !dbg !55

23:                                               ; preds = %18
  %24 = load %struct._xmlBuffer*, %struct._xmlBuffer** %4, align 8, !dbg !56
  %25 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %24, i32 0, i32 1, !dbg !57
  %26 = load i32, i32* %25, align 8, !dbg !57
  %27 = icmp ugt i32 %26, 0, !dbg !58
  br i1 %27, label %28, label %57, !dbg !59

28:                                               ; preds = %23
  call void @llvm.dbg.declare(metadata i32* %7, metadata !60, metadata !DIExpression()), !dbg !62
  %29 = load %struct._xmlBuffer*, %struct._xmlBuffer** %4, align 8, !dbg !63
  %30 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %29, i32 0, i32 1, !dbg !64
  %31 = load i32, i32* %30, align 8, !dbg !64
  %32 = load i32, i32* %5, align 4, !dbg !65
  %33 = icmp ult i32 %31, %32, !dbg !66
  br i1 %33, label %34, label %38, !dbg !63

34:                                               ; preds = %28
  %35 = load %struct._xmlBuffer*, %struct._xmlBuffer** %4, align 8, !dbg !67
  %36 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %35, i32 0, i32 1, !dbg !68
  %37 = load i32, i32* %36, align 8, !dbg !68
  br label %41, !dbg !63

38:                                               ; preds = %28
  %39 = load i32, i32* %5, align 4, !dbg !69
  %40 = sub i32 %39, 1, !dbg !70
  br label %41, !dbg !63

41:                                               ; preds = %38, %34
  %42 = phi i32 [ %37, %34 ], [ %40, %38 ], !dbg !63
  store i32 %42, i32* %7, align 4, !dbg !62
  %43 = load i8*, i8** %6, align 8, !dbg !71
  %44 = load %struct._xmlBuffer*, %struct._xmlBuffer** %4, align 8, !dbg !72
  %45 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %44, i32 0, i32 0, !dbg !73
  %46 = load i8*, i8** %45, align 8, !dbg !73
  %47 = load i32, i32* %7, align 4, !dbg !74
  %48 = zext i32 %47 to i64, !dbg !74
  %49 = call i8* @memcpy(i8* %43, i8* %46, i64 %48), !dbg !75
  %50 = load i8*, i8** %6, align 8, !dbg !76
  %51 = load i32, i32* %7, align 4, !dbg !77
  %52 = zext i32 %51 to i64, !dbg !76
  %53 = getelementptr inbounds i8, i8* %50, i64 %52, !dbg !76
  store i8 0, i8* %53, align 1, !dbg !78
  %54 = load i32, i32* %7, align 4, !dbg !79
  %55 = load %struct._xmlBuffer*, %struct._xmlBuffer** %4, align 8, !dbg !80
  %56 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %55, i32 0, i32 1, !dbg !81
  store i32 %54, i32* %56, align 8, !dbg !82
  br label %62, !dbg !83

57:                                               ; preds = %23, %18
  %58 = load %struct._xmlBuffer*, %struct._xmlBuffer** %4, align 8, !dbg !84
  %59 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %58, i32 0, i32 1, !dbg !86
  store i32 0, i32* %59, align 8, !dbg !87
  %60 = load i8*, i8** %6, align 8, !dbg !88
  %61 = getelementptr inbounds i8, i8* %60, i64 0, !dbg !88
  store i8 0, i8* %61, align 1, !dbg !89
  br label %62

62:                                               ; preds = %57, %41
  %63 = load %struct._xmlBuffer*, %struct._xmlBuffer** %4, align 8, !dbg !90
  %64 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %63, i32 0, i32 0, !dbg !91
  %65 = load i8*, i8** %64, align 8, !dbg !91
  call void @free(i8* noundef %65) #7, !dbg !92
  %66 = load i8*, i8** %6, align 8, !dbg !93
  %67 = load %struct._xmlBuffer*, %struct._xmlBuffer** %4, align 8, !dbg !94
  %68 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %67, i32 0, i32 0, !dbg !95
  store i8* %66, i8** %68, align 8, !dbg !96
  %69 = load i32, i32* %5, align 4, !dbg !97
  %70 = load %struct._xmlBuffer*, %struct._xmlBuffer** %4, align 8, !dbg !98
  %71 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %70, i32 0, i32 2, !dbg !99
  store i32 %69, i32* %71, align 4, !dbg !100
  store i32 1, i32* %3, align 4, !dbg !101
  br label %72, !dbg !101

72:                                               ; preds = %62, %17, %10
  %73 = load i32, i32* %3, align 4, !dbg !102
  ret i32 %73, !dbg !102
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlTreeErrMemory(i8* noundef %0) #0 !dbg !103 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !108, metadata !DIExpression()), !dbg !109
  ret void, !dbg !110
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlBufferAdd(%struct._xmlBuffer* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !111 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._xmlBuffer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct._xmlBuffer* %0, %struct._xmlBuffer** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlBuffer** %5, metadata !114, metadata !DIExpression()), !dbg !115
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !116, metadata !DIExpression()), !dbg !117
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !118, metadata !DIExpression()), !dbg !119
  call void @llvm.dbg.declare(metadata i32* %8, metadata !120, metadata !DIExpression()), !dbg !121
  %9 = load %struct._xmlBuffer*, %struct._xmlBuffer** %5, align 8, !dbg !122
  %10 = icmp eq %struct._xmlBuffer* %9, null, !dbg !124
  br i1 %10, label %14, label %11, !dbg !125

11:                                               ; preds = %3
  %12 = load i8*, i8** %6, align 8, !dbg !126
  %13 = icmp eq i8* %12, null, !dbg !127
  br i1 %13, label %14, label %15, !dbg !128

14:                                               ; preds = %11, %3
  store i32 -1, i32* %4, align 4, !dbg !129
  br label %98, !dbg !129

15:                                               ; preds = %11
  %16 = load i32, i32* %7, align 4, !dbg !130
  %17 = icmp slt i32 %16, 0, !dbg !132
  br i1 %17, label %18, label %19, !dbg !133

18:                                               ; preds = %15
  store i32 -1, i32* %4, align 4, !dbg !134
  br label %98, !dbg !134

19:                                               ; preds = %15
  %20 = load %struct._xmlBuffer*, %struct._xmlBuffer** %5, align 8, !dbg !135
  %21 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %20, i32 0, i32 2, !dbg !137
  %22 = load i32, i32* %21, align 4, !dbg !137
  %23 = icmp eq i32 %22, 0, !dbg !138
  br i1 %23, label %24, label %32, !dbg !139

24:                                               ; preds = %19
  %25 = load %struct._xmlBuffer*, %struct._xmlBuffer** %5, align 8, !dbg !140
  %26 = load i32, i32* %7, align 4, !dbg !143
  %27 = add nsw i32 %26, 1, !dbg !144
  %28 = call i32 @xmlBufferResize(%struct._xmlBuffer* noundef %25, i32 noundef %27), !dbg !145
  %29 = icmp ne i32 %28, 0, !dbg !145
  br i1 %29, label %31, label %30, !dbg !146

30:                                               ; preds = %24
  call void @xmlTreeErrMemory(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !147
  store i32 -1, i32* %4, align 4, !dbg !149
  br label %98, !dbg !149

31:                                               ; preds = %24
  br label %57, !dbg !150

32:                                               ; preds = %19
  %33 = load %struct._xmlBuffer*, %struct._xmlBuffer** %5, align 8, !dbg !151
  %34 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %33, i32 0, i32 1, !dbg !153
  %35 = load i32, i32* %34, align 8, !dbg !153
  %36 = load i32, i32* %7, align 4, !dbg !154
  %37 = add i32 %35, %36, !dbg !155
  %38 = add i32 %37, 1, !dbg !156
  %39 = load %struct._xmlBuffer*, %struct._xmlBuffer** %5, align 8, !dbg !157
  %40 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %39, i32 0, i32 2, !dbg !158
  %41 = load i32, i32* %40, align 4, !dbg !158
  %42 = icmp ugt i32 %38, %41, !dbg !159
  br i1 %42, label %43, label %56, !dbg !160

43:                                               ; preds = %32
  %44 = load %struct._xmlBuffer*, %struct._xmlBuffer** %5, align 8, !dbg !161
  %45 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %44, i32 0, i32 1, !dbg !163
  %46 = load i32, i32* %45, align 8, !dbg !163
  %47 = load i32, i32* %7, align 4, !dbg !164
  %48 = add i32 %46, %47, !dbg !165
  %49 = add i32 %48, 1, !dbg !166
  store i32 %49, i32* %8, align 4, !dbg !167
  %50 = load %struct._xmlBuffer*, %struct._xmlBuffer** %5, align 8, !dbg !168
  %51 = load i32, i32* %8, align 4, !dbg !170
  %52 = call i32 @xmlBufferResize(%struct._xmlBuffer* noundef %50, i32 noundef %51), !dbg !171
  %53 = icmp ne i32 %52, 0, !dbg !171
  br i1 %53, label %55, label %54, !dbg !172

54:                                               ; preds = %43
  call void @xmlTreeErrMemory(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !173
  store i32 -1, i32* %4, align 4, !dbg !175
  br label %98, !dbg !175

55:                                               ; preds = %43
  br label %56, !dbg !176

56:                                               ; preds = %55, %32
  br label %57

57:                                               ; preds = %56, %31
  %58 = load %struct._xmlBuffer*, %struct._xmlBuffer** %5, align 8, !dbg !177
  %59 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %58, i32 0, i32 0, !dbg !178
  %60 = load i8*, i8** %59, align 8, !dbg !178
  %61 = load %struct._xmlBuffer*, %struct._xmlBuffer** %5, align 8, !dbg !179
  %62 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %61, i32 0, i32 1, !dbg !180
  %63 = load i32, i32* %62, align 8, !dbg !180
  %64 = zext i32 %63 to i64, !dbg !177
  %65 = getelementptr inbounds i8, i8* %60, i64 %64, !dbg !177
  %66 = load i8*, i8** %6, align 8, !dbg !181
  %67 = load i32, i32* %7, align 4, !dbg !182
  %68 = sext i32 %67 to i64, !dbg !182
  %69 = call i8* @memmove(i8* %65, i8* %66, i64 %68), !dbg !183
  %70 = load %struct._xmlBuffer*, %struct._xmlBuffer** %5, align 8, !dbg !184
  %71 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %70, i32 0, i32 1, !dbg !184
  %72 = load i32, i32* %71, align 8, !dbg !184
  %73 = load i32, i32* %7, align 4, !dbg !184
  %74 = add i32 %72, %73, !dbg !184
  %75 = load %struct._xmlBuffer*, %struct._xmlBuffer** %5, align 8, !dbg !184
  %76 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %75, i32 0, i32 2, !dbg !184
  %77 = load i32, i32* %76, align 4, !dbg !184
  %78 = icmp ult i32 %74, %77, !dbg !184
  br i1 %78, label %79, label %81, !dbg !184

79:                                               ; preds = %57
  br i1 true, label %80, label %81, !dbg !184

80:                                               ; preds = %79
  br label %83, !dbg !184

81:                                               ; preds = %79, %57
  %82 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.3, i64 0, i64 0), i32 noundef 70, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.xmlBufferAdd, i64 0, i64 0)), !dbg !184
  br label %83, !dbg !184

83:                                               ; preds = %81, %80
  %84 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.3, i64 0, i64 0), i32 noundef 73, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.xmlBufferAdd, i64 0, i64 0)), !dbg !185
  %85 = load i32, i32* %7, align 4, !dbg !186
  %86 = load %struct._xmlBuffer*, %struct._xmlBuffer** %5, align 8, !dbg !187
  %87 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %86, i32 0, i32 1, !dbg !188
  %88 = load i32, i32* %87, align 8, !dbg !189
  %89 = add i32 %88, %85, !dbg !189
  store i32 %89, i32* %87, align 8, !dbg !189
  %90 = load %struct._xmlBuffer*, %struct._xmlBuffer** %5, align 8, !dbg !190
  %91 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %90, i32 0, i32 0, !dbg !191
  %92 = load i8*, i8** %91, align 8, !dbg !191
  %93 = load %struct._xmlBuffer*, %struct._xmlBuffer** %5, align 8, !dbg !192
  %94 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %93, i32 0, i32 1, !dbg !193
  %95 = load i32, i32* %94, align 8, !dbg !193
  %96 = zext i32 %95 to i64, !dbg !190
  %97 = getelementptr inbounds i8, i8* %92, i64 %96, !dbg !190
  store i8 0, i8* %97, align 1, !dbg !194
  store i32 0, i32* %4, align 4, !dbg !195
  br label %98, !dbg !195

98:                                               ; preds = %83, %54, %30, %18, %14
  %99 = load i32, i32* %4, align 4, !dbg !196
  ret i32 %99, !dbg !196
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !197 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlBuffer, align 8
  %3 = alloca [256 x i8], align 16
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlBuffer* %2, metadata !200, metadata !DIExpression()), !dbg !201
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !202, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.declare(metadata i32* %4, metadata !207, metadata !DIExpression()), !dbg !208
  %5 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 0, !dbg !209
  store i8* null, i8** %5, align 8, !dbg !210
  %6 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 1, !dbg !211
  store i32 0, i32* %6, align 8, !dbg !212
  %7 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 2, !dbg !213
  store i32 0, i32* %7, align 4, !dbg !214
  %8 = bitcast i32* %4 to i8*, !dbg !215
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)), !dbg !216
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !217
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 256, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)), !dbg !218
  %10 = load i32, i32* %4, align 4, !dbg !219
  %11 = icmp sge i32 %10, 0, !dbg !220
  %12 = zext i1 %11 to i32, !dbg !220
  %13 = sext i32 %12 to i64, !dbg !219
  call void @klee_assume(i64 noundef %13), !dbg !221
  %14 = load i32, i32* %4, align 4, !dbg !222
  %15 = icmp slt i32 %14, 256, !dbg !223
  %16 = zext i1 %15 to i32, !dbg !223
  %17 = sext i32 %16 to i64, !dbg !222
  call void @klee_assume(i64 noundef %17), !dbg !224
  %18 = load i32, i32* %4, align 4, !dbg !225
  %19 = icmp sge i32 %18, 0, !dbg !226
  %20 = zext i1 %19 to i32, !dbg !226
  %21 = sext i32 %20 to i64, !dbg !225
  call void @klee_assume(i64 noundef %21), !dbg !227
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !228
  %23 = load i32, i32* %4, align 4, !dbg !229
  %24 = call i32 @xmlBufferAdd(%struct._xmlBuffer* noundef %2, i8* noundef %22, i32 noundef %23), !dbg !230
  %25 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 0, !dbg !231
  %26 = load i8*, i8** %25, align 8, !dbg !231
  %27 = icmp ne i8* %26, null, !dbg !233
  br i1 %27, label %28, label %31, !dbg !234

28:                                               ; preds = %0
  %29 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 0, !dbg !235
  %30 = load i8*, i8** %29, align 8, !dbg !235
  call void @free(i8* noundef %30) #7, !dbg !237
  br label %31, !dbg !238

31:                                               ; preds = %28, %0
  ret i32 0, !dbg !239
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !240 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !249, metadata !DIExpression()), !dbg !250
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !251, metadata !DIExpression()), !dbg !252
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !253, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.declare(metadata i8** %7, metadata !255, metadata !DIExpression()), !dbg !256
  %9 = load i8*, i8** %4, align 8, !dbg !257
  store i8* %9, i8** %7, align 8, !dbg !256
  call void @llvm.dbg.declare(metadata i8** %8, metadata !258, metadata !DIExpression()), !dbg !259
  %10 = load i8*, i8** %5, align 8, !dbg !260
  store i8* %10, i8** %8, align 8, !dbg !259
  br label %11, !dbg !261

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !262
  %13 = add i64 %12, -1, !dbg !262
  store i64 %13, i64* %6, align 8, !dbg !262
  %14 = icmp ugt i64 %12, 0, !dbg !263
  br i1 %14, label %15, label %21, !dbg !261

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !264
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !264
  store i8* %17, i8** %8, align 8, !dbg !264
  %18 = load i8, i8* %16, align 1, !dbg !265
  %19 = load i8*, i8** %7, align 8, !dbg !266
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !266
  store i8* %20, i8** %7, align 8, !dbg !266
  store i8 %18, i8* %19, align 1, !dbg !267
  br label %11, !dbg !261, !llvm.loop !268

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !270
  ret i8* %22, !dbg !271
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memmove(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !272 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !274, metadata !DIExpression()), !dbg !275
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !276, metadata !DIExpression()), !dbg !277
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !278, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.declare(metadata i8** %8, metadata !280, metadata !DIExpression()), !dbg !281
  %10 = load i8*, i8** %5, align 8, !dbg !282
  store i8* %10, i8** %8, align 8, !dbg !281
  call void @llvm.dbg.declare(metadata i8** %9, metadata !283, metadata !DIExpression()), !dbg !284
  %11 = load i8*, i8** %6, align 8, !dbg !285
  store i8* %11, i8** %9, align 8, !dbg !284
  %12 = load i8*, i8** %6, align 8, !dbg !286
  %13 = load i8*, i8** %5, align 8, !dbg !288
  %14 = icmp eq i8* %12, %13, !dbg !289
  br i1 %14, label %15, label %17, !dbg !290

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8, !dbg !291
  store i8* %16, i8** %4, align 8, !dbg !292
  br label %52, !dbg !292

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8, !dbg !293
  %19 = load i8*, i8** %5, align 8, !dbg !295
  %20 = icmp ugt i8* %18, %19, !dbg !296
  br i1 %20, label %21, label %31, !dbg !297

21:                                               ; preds = %17, %25
  %22 = load i64, i64* %7, align 8, !dbg !298
  %23 = add i64 %22, -1, !dbg !298
  store i64 %23, i64* %7, align 8, !dbg !298
  %24 = icmp ne i64 %22, 0, !dbg !300
  br i1 %24, label %25, label %50, !dbg !300

25:                                               ; preds = %21
  %26 = load i8*, i8** %9, align 8, !dbg !301
  %27 = getelementptr inbounds i8, i8* %26, i32 1, !dbg !301
  store i8* %27, i8** %9, align 8, !dbg !301
  %28 = load i8, i8* %26, align 1, !dbg !302
  %29 = load i8*, i8** %8, align 8, !dbg !303
  %30 = getelementptr inbounds i8, i8* %29, i32 1, !dbg !303
  store i8* %30, i8** %8, align 8, !dbg !303
  store i8 %28, i8* %29, align 1, !dbg !304
  br label %21, !dbg !300, !llvm.loop !305

31:                                               ; preds = %17
  %32 = load i64, i64* %7, align 8, !dbg !306
  %33 = sub i64 %32, 1, !dbg !308
  %34 = load i8*, i8** %8, align 8, !dbg !309
  %35 = getelementptr inbounds i8, i8* %34, i64 %33, !dbg !309
  store i8* %35, i8** %8, align 8, !dbg !309
  %36 = load i64, i64* %7, align 8, !dbg !310
  %37 = sub i64 %36, 1, !dbg !311
  %38 = load i8*, i8** %9, align 8, !dbg !312
  %39 = getelementptr inbounds i8, i8* %38, i64 %37, !dbg !312
  store i8* %39, i8** %9, align 8, !dbg !312
  br label %40, !dbg !313

40:                                               ; preds = %44, %31
  %41 = load i64, i64* %7, align 8, !dbg !314
  %42 = add i64 %41, -1, !dbg !314
  store i64 %42, i64* %7, align 8, !dbg !314
  %43 = icmp ne i64 %41, 0, !dbg !313
  br i1 %43, label %44, label %50, !dbg !313

44:                                               ; preds = %40
  %45 = load i8*, i8** %9, align 8, !dbg !315
  %46 = getelementptr inbounds i8, i8* %45, i32 -1, !dbg !315
  store i8* %46, i8** %9, align 8, !dbg !315
  %47 = load i8, i8* %45, align 1, !dbg !316
  %48 = load i8*, i8** %8, align 8, !dbg !317
  %49 = getelementptr inbounds i8, i8* %48, i32 -1, !dbg !317
  store i8* %49, i8** %8, align 8, !dbg !317
  store i8 %47, i8* %48, align 1, !dbg !318
  br label %40, !dbg !313, !llvm.loop !319

50:                                               ; preds = %40, %21
  %51 = load i8*, i8** %5, align 8, !dbg !320
  store i8* %51, i8** %4, align 8, !dbg !321
  br label %52, !dbg !321

52:                                               ; preds = %50, %15
  %53 = load i8*, i8** %4, align 8, !dbg !322
  ret i8* %53, !dbg !322
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !9, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20, !20, !20}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !7, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/184_tree.c_7635_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "9c0b01fb3603e5b1572990a3f1226d4d")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 17, baseType: !4, size: 32, elements: !5)
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{!6}
!6 = !DIEnumerator(name: "XML_ERR_NO_MEMORY", value: -1)
!7 = !{!8}
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
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
!21 = distinct !DISubprogram(name: "xmlBufferResize", scope: !1, file: !1, line: 22, type: !22, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!22 = !DISubroutineType(types: !23)
!23 = !{!4, !24, !32}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBuffer", file: !1, line: 10, baseType: !26)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlBuffer", file: !1, line: 11, size: 128, elements: !27)
!27 = !{!28, !31, !33}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !26, file: !1, line: 12, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !26, file: !1, line: 13, baseType: !32, size: 32, offset: 64)
!32 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !26, file: !1, line: 14, baseType: !32, size: 32, offset: 96)
!34 = !{}
!35 = !DILocalVariable(name: "buf", arg: 1, scope: !21, file: !1, line: 22, type: !24)
!36 = !DILocation(line: 22, column: 32, scope: !21)
!37 = !DILocalVariable(name: "size", arg: 2, scope: !21, file: !1, line: 22, type: !32)
!38 = !DILocation(line: 22, column: 50, scope: !21)
!39 = !DILocation(line: 23, column: 9, scope: !40)
!40 = distinct !DILexicalBlock(scope: !21, file: !1, line: 23, column: 9)
!41 = !DILocation(line: 23, column: 14, scope: !40)
!42 = !DILocation(line: 23, column: 9, scope: !21)
!43 = !DILocation(line: 23, column: 20, scope: !40)
!44 = !DILocalVariable(name: "new_content", scope: !21, file: !1, line: 24, type: !29)
!45 = !DILocation(line: 24, column: 11, scope: !21)
!46 = !DILocation(line: 24, column: 32, scope: !21)
!47 = !DILocation(line: 24, column: 25, scope: !21)
!48 = !DILocation(line: 25, column: 10, scope: !49)
!49 = distinct !DILexicalBlock(scope: !21, file: !1, line: 25, column: 9)
!50 = !DILocation(line: 25, column: 9, scope: !21)
!51 = !DILocation(line: 25, column: 23, scope: !49)
!52 = !DILocation(line: 26, column: 9, scope: !53)
!53 = distinct !DILexicalBlock(scope: !21, file: !1, line: 26, column: 9)
!54 = !DILocation(line: 26, column: 14, scope: !53)
!55 = !DILocation(line: 26, column: 22, scope: !53)
!56 = !DILocation(line: 26, column: 25, scope: !53)
!57 = !DILocation(line: 26, column: 30, scope: !53)
!58 = !DILocation(line: 26, column: 34, scope: !53)
!59 = !DILocation(line: 26, column: 9, scope: !21)
!60 = !DILocalVariable(name: "copy_len", scope: !61, file: !1, line: 27, type: !32)
!61 = distinct !DILexicalBlock(scope: !53, file: !1, line: 26, column: 39)
!62 = !DILocation(line: 27, column: 22, scope: !61)
!63 = !DILocation(line: 27, column: 33, scope: !61)
!64 = !DILocation(line: 27, column: 38, scope: !61)
!65 = !DILocation(line: 27, column: 44, scope: !61)
!66 = !DILocation(line: 27, column: 42, scope: !61)
!67 = !DILocation(line: 27, column: 51, scope: !61)
!68 = !DILocation(line: 27, column: 56, scope: !61)
!69 = !DILocation(line: 27, column: 62, scope: !61)
!70 = !DILocation(line: 27, column: 67, scope: !61)
!71 = !DILocation(line: 28, column: 16, scope: !61)
!72 = !DILocation(line: 28, column: 29, scope: !61)
!73 = !DILocation(line: 28, column: 34, scope: !61)
!74 = !DILocation(line: 28, column: 43, scope: !61)
!75 = !DILocation(line: 28, column: 9, scope: !61)
!76 = !DILocation(line: 29, column: 9, scope: !61)
!77 = !DILocation(line: 29, column: 21, scope: !61)
!78 = !DILocation(line: 29, column: 31, scope: !61)
!79 = !DILocation(line: 30, column: 20, scope: !61)
!80 = !DILocation(line: 30, column: 9, scope: !61)
!81 = !DILocation(line: 30, column: 14, scope: !61)
!82 = !DILocation(line: 30, column: 18, scope: !61)
!83 = !DILocation(line: 31, column: 5, scope: !61)
!84 = !DILocation(line: 32, column: 9, scope: !85)
!85 = distinct !DILexicalBlock(scope: !53, file: !1, line: 31, column: 12)
!86 = !DILocation(line: 32, column: 14, scope: !85)
!87 = !DILocation(line: 32, column: 18, scope: !85)
!88 = !DILocation(line: 33, column: 9, scope: !85)
!89 = !DILocation(line: 33, column: 24, scope: !85)
!90 = !DILocation(line: 35, column: 10, scope: !21)
!91 = !DILocation(line: 35, column: 15, scope: !21)
!92 = !DILocation(line: 35, column: 5, scope: !21)
!93 = !DILocation(line: 36, column: 20, scope: !21)
!94 = !DILocation(line: 36, column: 5, scope: !21)
!95 = !DILocation(line: 36, column: 10, scope: !21)
!96 = !DILocation(line: 36, column: 18, scope: !21)
!97 = !DILocation(line: 37, column: 17, scope: !21)
!98 = !DILocation(line: 37, column: 5, scope: !21)
!99 = !DILocation(line: 37, column: 10, scope: !21)
!100 = !DILocation(line: 37, column: 15, scope: !21)
!101 = !DILocation(line: 38, column: 5, scope: !21)
!102 = !DILocation(line: 39, column: 1, scope: !21)
!103 = distinct !DISubprogram(name: "xmlTreeErrMemory", scope: !1, file: !1, line: 42, type: !104, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!104 = !DISubroutineType(types: !105)
!105 = !{null, !106}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!108 = !DILocalVariable(name: "msg", arg: 1, scope: !103, file: !1, line: 42, type: !106)
!109 = !DILocation(line: 42, column: 35, scope: !103)
!110 = !DILocation(line: 44, column: 1, scope: !103)
!111 = distinct !DISubprogram(name: "xmlBufferAdd", scope: !1, file: !1, line: 47, type: !112, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!112 = !DISubroutineType(types: !113)
!113 = !{!4, !24, !106, !4}
!114 = !DILocalVariable(name: "buf", arg: 1, scope: !111, file: !1, line: 47, type: !24)
!115 = !DILocation(line: 47, column: 29, scope: !111)
!116 = !DILocalVariable(name: "str", arg: 2, scope: !111, file: !1, line: 47, type: !106)
!117 = !DILocation(line: 47, column: 46, scope: !111)
!118 = !DILocalVariable(name: "len", arg: 3, scope: !111, file: !1, line: 47, type: !4)
!119 = !DILocation(line: 47, column: 55, scope: !111)
!120 = !DILocalVariable(name: "needSize", scope: !111, file: !1, line: 48, type: !32)
!121 = !DILocation(line: 48, column: 18, scope: !111)
!122 = !DILocation(line: 50, column: 9, scope: !123)
!123 = distinct !DILexicalBlock(scope: !111, file: !1, line: 50, column: 9)
!124 = !DILocation(line: 50, column: 13, scope: !123)
!125 = !DILocation(line: 50, column: 21, scope: !123)
!126 = !DILocation(line: 50, column: 24, scope: !123)
!127 = !DILocation(line: 50, column: 28, scope: !123)
!128 = !DILocation(line: 50, column: 9, scope: !111)
!129 = !DILocation(line: 50, column: 37, scope: !123)
!130 = !DILocation(line: 51, column: 9, scope: !131)
!131 = distinct !DILexicalBlock(scope: !111, file: !1, line: 51, column: 9)
!132 = !DILocation(line: 51, column: 13, scope: !131)
!133 = !DILocation(line: 51, column: 9, scope: !111)
!134 = !DILocation(line: 51, column: 18, scope: !131)
!135 = !DILocation(line: 53, column: 9, scope: !136)
!136 = distinct !DILexicalBlock(scope: !111, file: !1, line: 53, column: 9)
!137 = !DILocation(line: 53, column: 14, scope: !136)
!138 = !DILocation(line: 53, column: 19, scope: !136)
!139 = !DILocation(line: 53, column: 9, scope: !111)
!140 = !DILocation(line: 54, column: 30, scope: !141)
!141 = distinct !DILexicalBlock(scope: !142, file: !1, line: 54, column: 13)
!142 = distinct !DILexicalBlock(scope: !136, file: !1, line: 53, column: 25)
!143 = !DILocation(line: 54, column: 35, scope: !141)
!144 = !DILocation(line: 54, column: 39, scope: !141)
!145 = !DILocation(line: 54, column: 14, scope: !141)
!146 = !DILocation(line: 54, column: 13, scope: !142)
!147 = !DILocation(line: 55, column: 13, scope: !148)
!148 = distinct !DILexicalBlock(scope: !141, file: !1, line: 54, column: 45)
!149 = !DILocation(line: 56, column: 13, scope: !148)
!150 = !DILocation(line: 58, column: 5, scope: !142)
!151 = !DILocation(line: 58, column: 16, scope: !152)
!152 = distinct !DILexicalBlock(scope: !136, file: !1, line: 58, column: 16)
!153 = !DILocation(line: 58, column: 21, scope: !152)
!154 = !DILocation(line: 58, column: 27, scope: !152)
!155 = !DILocation(line: 58, column: 25, scope: !152)
!156 = !DILocation(line: 58, column: 31, scope: !152)
!157 = !DILocation(line: 58, column: 37, scope: !152)
!158 = !DILocation(line: 58, column: 42, scope: !152)
!159 = !DILocation(line: 58, column: 35, scope: !152)
!160 = !DILocation(line: 58, column: 16, scope: !136)
!161 = !DILocation(line: 59, column: 20, scope: !162)
!162 = distinct !DILexicalBlock(scope: !152, file: !1, line: 58, column: 48)
!163 = !DILocation(line: 59, column: 25, scope: !162)
!164 = !DILocation(line: 59, column: 31, scope: !162)
!165 = !DILocation(line: 59, column: 29, scope: !162)
!166 = !DILocation(line: 59, column: 35, scope: !162)
!167 = !DILocation(line: 59, column: 18, scope: !162)
!168 = !DILocation(line: 60, column: 30, scope: !169)
!169 = distinct !DILexicalBlock(scope: !162, file: !1, line: 60, column: 13)
!170 = !DILocation(line: 60, column: 35, scope: !169)
!171 = !DILocation(line: 60, column: 14, scope: !169)
!172 = !DILocation(line: 60, column: 13, scope: !162)
!173 = !DILocation(line: 61, column: 13, scope: !174)
!174 = distinct !DILexicalBlock(scope: !169, file: !1, line: 60, column: 46)
!175 = !DILocation(line: 62, column: 13, scope: !174)
!176 = !DILocation(line: 64, column: 5, scope: !162)
!177 = !DILocation(line: 67, column: 14, scope: !111)
!178 = !DILocation(line: 67, column: 19, scope: !111)
!179 = !DILocation(line: 67, column: 27, scope: !111)
!180 = !DILocation(line: 67, column: 32, scope: !111)
!181 = !DILocation(line: 67, column: 38, scope: !111)
!182 = !DILocation(line: 67, column: 43, scope: !111)
!183 = !DILocation(line: 67, column: 5, scope: !111)
!184 = !DILocation(line: 70, column: 5, scope: !111)
!185 = !DILocation(line: 73, column: 5, scope: !111)
!186 = !DILocation(line: 75, column: 17, scope: !111)
!187 = !DILocation(line: 75, column: 5, scope: !111)
!188 = !DILocation(line: 75, column: 10, scope: !111)
!189 = !DILocation(line: 75, column: 14, scope: !111)
!190 = !DILocation(line: 76, column: 5, scope: !111)
!191 = !DILocation(line: 76, column: 10, scope: !111)
!192 = !DILocation(line: 76, column: 18, scope: !111)
!193 = !DILocation(line: 76, column: 23, scope: !111)
!194 = !DILocation(line: 76, column: 28, scope: !111)
!195 = !DILocation(line: 77, column: 5, scope: !111)
!196 = !DILocation(line: 78, column: 1, scope: !111)
!197 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 80, type: !198, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!198 = !DISubroutineType(types: !199)
!199 = !{!4}
!200 = !DILocalVariable(name: "buf", scope: !197, file: !1, line: 81, type: !25)
!201 = !DILocation(line: 81, column: 15, scope: !197)
!202 = !DILocalVariable(name: "str", scope: !197, file: !1, line: 82, type: !203)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 2048, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 256)
!206 = !DILocation(line: 82, column: 10, scope: !197)
!207 = !DILocalVariable(name: "len", scope: !197, file: !1, line: 83, type: !4)
!208 = !DILocation(line: 83, column: 9, scope: !197)
!209 = !DILocation(line: 86, column: 9, scope: !197)
!210 = !DILocation(line: 86, column: 17, scope: !197)
!211 = !DILocation(line: 87, column: 9, scope: !197)
!212 = !DILocation(line: 87, column: 13, scope: !197)
!213 = !DILocation(line: 88, column: 9, scope: !197)
!214 = !DILocation(line: 88, column: 14, scope: !197)
!215 = !DILocation(line: 91, column: 24, scope: !197)
!216 = !DILocation(line: 91, column: 5, scope: !197)
!217 = !DILocation(line: 92, column: 24, scope: !197)
!218 = !DILocation(line: 92, column: 5, scope: !197)
!219 = !DILocation(line: 95, column: 17, scope: !197)
!220 = !DILocation(line: 95, column: 21, scope: !197)
!221 = !DILocation(line: 95, column: 5, scope: !197)
!222 = !DILocation(line: 96, column: 17, scope: !197)
!223 = !DILocation(line: 96, column: 21, scope: !197)
!224 = !DILocation(line: 96, column: 5, scope: !197)
!225 = !DILocation(line: 99, column: 17, scope: !197)
!226 = !DILocation(line: 99, column: 21, scope: !197)
!227 = !DILocation(line: 99, column: 5, scope: !197)
!228 = !DILocation(line: 102, column: 24, scope: !197)
!229 = !DILocation(line: 102, column: 29, scope: !197)
!230 = !DILocation(line: 102, column: 5, scope: !197)
!231 = !DILocation(line: 105, column: 13, scope: !232)
!232 = distinct !DILexicalBlock(scope: !197, file: !1, line: 105, column: 9)
!233 = !DILocation(line: 105, column: 9, scope: !232)
!234 = !DILocation(line: 105, column: 9, scope: !197)
!235 = !DILocation(line: 106, column: 18, scope: !236)
!236 = distinct !DILexicalBlock(scope: !232, file: !1, line: 105, column: 22)
!237 = !DILocation(line: 106, column: 9, scope: !236)
!238 = !DILocation(line: 107, column: 5, scope: !236)
!239 = !DILocation(line: 109, column: 5, scope: !197)
!240 = distinct !DISubprogram(name: "memcpy", scope: !241, file: !241, line: 12, type: !242, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !34)
!241 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!242 = !DISubroutineType(types: !243)
!243 = !{!8, !8, !244, !246}
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !247, line: 46, baseType: !248)
!247 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!248 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!249 = !DILocalVariable(name: "destaddr", arg: 1, scope: !240, file: !241, line: 12, type: !8)
!250 = !DILocation(line: 12, column: 20, scope: !240)
!251 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !240, file: !241, line: 12, type: !244)
!252 = !DILocation(line: 12, column: 42, scope: !240)
!253 = !DILocalVariable(name: "len", arg: 3, scope: !240, file: !241, line: 12, type: !246)
!254 = !DILocation(line: 12, column: 58, scope: !240)
!255 = !DILocalVariable(name: "dest", scope: !240, file: !241, line: 13, type: !29)
!256 = !DILocation(line: 13, column: 9, scope: !240)
!257 = !DILocation(line: 13, column: 16, scope: !240)
!258 = !DILocalVariable(name: "src", scope: !240, file: !241, line: 14, type: !106)
!259 = !DILocation(line: 14, column: 15, scope: !240)
!260 = !DILocation(line: 14, column: 21, scope: !240)
!261 = !DILocation(line: 16, column: 3, scope: !240)
!262 = !DILocation(line: 16, column: 13, scope: !240)
!263 = !DILocation(line: 16, column: 16, scope: !240)
!264 = !DILocation(line: 17, column: 19, scope: !240)
!265 = !DILocation(line: 17, column: 15, scope: !240)
!266 = !DILocation(line: 17, column: 10, scope: !240)
!267 = !DILocation(line: 17, column: 13, scope: !240)
!268 = distinct !{!268, !261, !264, !269}
!269 = !{!"llvm.loop.mustprogress"}
!270 = !DILocation(line: 18, column: 10, scope: !240)
!271 = !DILocation(line: 18, column: 3, scope: !240)
!272 = distinct !DISubprogram(name: "memmove", scope: !273, file: !273, line: 12, type: !242, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !34)
!273 = !DIFile(filename: "runtime/Freestanding/memmove.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "6cd27189cdce56ce74ae860a315e13f2")
!274 = !DILocalVariable(name: "dst", arg: 1, scope: !272, file: !273, line: 12, type: !8)
!275 = !DILocation(line: 12, column: 21, scope: !272)
!276 = !DILocalVariable(name: "src", arg: 2, scope: !272, file: !273, line: 12, type: !244)
!277 = !DILocation(line: 12, column: 38, scope: !272)
!278 = !DILocalVariable(name: "count", arg: 3, scope: !272, file: !273, line: 12, type: !246)
!279 = !DILocation(line: 12, column: 50, scope: !272)
!280 = !DILocalVariable(name: "a", scope: !272, file: !273, line: 13, type: !29)
!281 = !DILocation(line: 13, column: 9, scope: !272)
!282 = !DILocation(line: 13, column: 13, scope: !272)
!283 = !DILocalVariable(name: "b", scope: !272, file: !273, line: 14, type: !106)
!284 = !DILocation(line: 14, column: 15, scope: !272)
!285 = !DILocation(line: 14, column: 19, scope: !272)
!286 = !DILocation(line: 16, column: 7, scope: !287)
!287 = distinct !DILexicalBlock(scope: !272, file: !273, line: 16, column: 7)
!288 = !DILocation(line: 16, column: 14, scope: !287)
!289 = !DILocation(line: 16, column: 11, scope: !287)
!290 = !DILocation(line: 16, column: 7, scope: !272)
!291 = !DILocation(line: 17, column: 12, scope: !287)
!292 = !DILocation(line: 17, column: 5, scope: !287)
!293 = !DILocation(line: 19, column: 7, scope: !294)
!294 = distinct !DILexicalBlock(scope: !272, file: !273, line: 19, column: 7)
!295 = !DILocation(line: 19, column: 13, scope: !294)
!296 = !DILocation(line: 19, column: 11, scope: !294)
!297 = !DILocation(line: 19, column: 7, scope: !272)
!298 = !DILocation(line: 20, column: 17, scope: !299)
!299 = distinct !DILexicalBlock(scope: !294, file: !273, line: 19, column: 18)
!300 = !DILocation(line: 20, column: 5, scope: !299)
!301 = !DILocation(line: 21, column: 16, scope: !299)
!302 = !DILocation(line: 21, column: 14, scope: !299)
!303 = !DILocation(line: 21, column: 9, scope: !299)
!304 = !DILocation(line: 21, column: 12, scope: !299)
!305 = distinct !{!305, !300, !301, !269}
!306 = !DILocation(line: 23, column: 10, scope: !307)
!307 = distinct !DILexicalBlock(scope: !294, file: !273, line: 22, column: 10)
!308 = !DILocation(line: 23, column: 16, scope: !307)
!309 = !DILocation(line: 23, column: 7, scope: !307)
!310 = !DILocation(line: 24, column: 10, scope: !307)
!311 = !DILocation(line: 24, column: 16, scope: !307)
!312 = !DILocation(line: 24, column: 7, scope: !307)
!313 = !DILocation(line: 25, column: 5, scope: !307)
!314 = !DILocation(line: 25, column: 17, scope: !307)
!315 = !DILocation(line: 26, column: 16, scope: !307)
!316 = !DILocation(line: 26, column: 14, scope: !307)
!317 = !DILocation(line: 26, column: 9, scope: !307)
!318 = !DILocation(line: 26, column: 12, scope: !307)
!319 = distinct !{!319, !313, !315, !269}
!320 = !DILocation(line: 29, column: 10, scope: !272)
!321 = !DILocation(line: 29, column: 3, scope: !272)
!322 = !DILocation(line: 30, column: 1, scope: !272)

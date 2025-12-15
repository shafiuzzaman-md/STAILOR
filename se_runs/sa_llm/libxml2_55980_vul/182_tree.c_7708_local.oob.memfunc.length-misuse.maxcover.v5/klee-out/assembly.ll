; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/182_tree.c_7708_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/182_tree.c_7708_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlBuffer = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"growing buffer\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"buf_use\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"buf_content\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"(len + buf.use <= buf.size) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_55980_vul/182_tree.c_7708_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlBufferResize(%struct._xmlBuffer* noundef %0, i32 noundef %1) #0 !dbg !22 {
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
  br label %59, !dbg !43

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
  br label %59, !dbg !51

18:                                               ; preds = %11
  %19 = load %struct._xmlBuffer*, %struct._xmlBuffer** %4, align 8, !dbg !52
  %20 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %19, i32 0, i32 0, !dbg !54
  %21 = load i8*, i8** %20, align 8, !dbg !54
  %22 = icmp ne i8* %21, null, !dbg !52
  br i1 %22, label %23, label %52, !dbg !55

23:                                               ; preds = %18
  %24 = load %struct._xmlBuffer*, %struct._xmlBuffer** %4, align 8, !dbg !56
  %25 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %24, i32 0, i32 1, !dbg !57
  %26 = load i32, i32* %25, align 8, !dbg !57
  %27 = icmp ugt i32 %26, 0, !dbg !58
  br i1 %27, label %28, label %52, !dbg !59

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
  br label %40, !dbg !63

38:                                               ; preds = %28
  %39 = load i32, i32* %5, align 4, !dbg !69
  br label %40, !dbg !63

40:                                               ; preds = %38, %34
  %41 = phi i32 [ %37, %34 ], [ %39, %38 ], !dbg !63
  store i32 %41, i32* %7, align 4, !dbg !62
  %42 = load i8*, i8** %6, align 8, !dbg !70
  %43 = load %struct._xmlBuffer*, %struct._xmlBuffer** %4, align 8, !dbg !71
  %44 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %43, i32 0, i32 0, !dbg !72
  %45 = load i8*, i8** %44, align 8, !dbg !72
  %46 = load i32, i32* %7, align 4, !dbg !73
  %47 = zext i32 %46 to i64, !dbg !73
  %48 = call i8* @memcpy(i8* %42, i8* %45, i64 %47), !dbg !74
  %49 = load %struct._xmlBuffer*, %struct._xmlBuffer** %4, align 8, !dbg !75
  %50 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %49, i32 0, i32 0, !dbg !76
  %51 = load i8*, i8** %50, align 8, !dbg !76
  call void @free(i8* noundef %51) #7, !dbg !77
  br label %52, !dbg !78

52:                                               ; preds = %40, %23, %18
  %53 = load i8*, i8** %6, align 8, !dbg !79
  %54 = load %struct._xmlBuffer*, %struct._xmlBuffer** %4, align 8, !dbg !80
  %55 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %54, i32 0, i32 0, !dbg !81
  store i8* %53, i8** %55, align 8, !dbg !82
  %56 = load i32, i32* %5, align 4, !dbg !83
  %57 = load %struct._xmlBuffer*, %struct._xmlBuffer** %4, align 8, !dbg !84
  %58 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %57, i32 0, i32 2, !dbg !85
  store i32 %56, i32* %58, align 4, !dbg !86
  store i32 1, i32* %3, align 4, !dbg !87
  br label %59, !dbg !87

59:                                               ; preds = %52, %17, %10
  %60 = load i32, i32* %3, align 4, !dbg !88
  ret i32 %60, !dbg !88
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
define dso_local void @xmlTreeErrMemory(i8* noundef %0) #0 !dbg !89 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !94, metadata !DIExpression()), !dbg !95
  ret void, !dbg !96
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlBufferAdd(%struct._xmlBuffer* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !97 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._xmlBuffer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct._xmlBuffer* %0, %struct._xmlBuffer** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlBuffer** %5, metadata !100, metadata !DIExpression()), !dbg !101
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !102, metadata !DIExpression()), !dbg !103
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !104, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata i32* %8, metadata !106, metadata !DIExpression()), !dbg !107
  %9 = load %struct._xmlBuffer*, %struct._xmlBuffer** %5, align 8, !dbg !108
  %10 = icmp eq %struct._xmlBuffer* %9, null, !dbg !110
  br i1 %10, label %14, label %11, !dbg !111

11:                                               ; preds = %3
  %12 = load i8*, i8** %6, align 8, !dbg !112
  %13 = icmp eq i8* %12, null, !dbg !113
  br i1 %13, label %14, label %15, !dbg !114

14:                                               ; preds = %11, %3
  store i32 -1, i32* %4, align 4, !dbg !115
  br label %84, !dbg !115

15:                                               ; preds = %11
  %16 = load i32, i32* %7, align 4, !dbg !116
  %17 = icmp slt i32 %16, 0, !dbg !118
  br i1 %17, label %18, label %19, !dbg !119

18:                                               ; preds = %15
  store i32 -1, i32* %4, align 4, !dbg !120
  br label %84, !dbg !120

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4, !dbg !121
  %21 = icmp eq i32 %20, 0, !dbg !123
  br i1 %21, label %22, label %23, !dbg !124

22:                                               ; preds = %19
  store i32 0, i32* %4, align 4, !dbg !125
  br label %84, !dbg !125

23:                                               ; preds = %19
  %24 = load %struct._xmlBuffer*, %struct._xmlBuffer** %5, align 8, !dbg !126
  %25 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %24, i32 0, i32 2, !dbg !128
  %26 = load i32, i32* %25, align 4, !dbg !128
  %27 = load %struct._xmlBuffer*, %struct._xmlBuffer** %5, align 8, !dbg !129
  %28 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %27, i32 0, i32 1, !dbg !130
  %29 = load i32, i32* %28, align 8, !dbg !130
  %30 = sub i32 %26, %29, !dbg !131
  %31 = load i32, i32* %7, align 4, !dbg !132
  %32 = add i32 %31, 1, !dbg !133
  %33 = icmp ult i32 %30, %32, !dbg !134
  br i1 %33, label %34, label %47, !dbg !135

34:                                               ; preds = %23
  %35 = load %struct._xmlBuffer*, %struct._xmlBuffer** %5, align 8, !dbg !136
  %36 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %35, i32 0, i32 1, !dbg !138
  %37 = load i32, i32* %36, align 8, !dbg !138
  %38 = load i32, i32* %7, align 4, !dbg !139
  %39 = add i32 %37, %38, !dbg !140
  %40 = add i32 %39, 1, !dbg !141
  store i32 %40, i32* %8, align 4, !dbg !142
  %41 = load %struct._xmlBuffer*, %struct._xmlBuffer** %5, align 8, !dbg !143
  %42 = load i32, i32* %8, align 4, !dbg !145
  %43 = call i32 @xmlBufferResize(%struct._xmlBuffer* noundef %41, i32 noundef %42), !dbg !146
  %44 = icmp ne i32 %43, 0, !dbg !146
  br i1 %44, label %46, label %45, !dbg !147

45:                                               ; preds = %34
  call void @xmlTreeErrMemory(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !148
  store i32 -1, i32* %4, align 4, !dbg !150
  br label %84, !dbg !150

46:                                               ; preds = %34
  br label %47, !dbg !151

47:                                               ; preds = %46, %23
  %48 = load %struct._xmlBuffer*, %struct._xmlBuffer** %5, align 8, !dbg !152
  %49 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %48, i32 0, i32 0, !dbg !153
  %50 = load i8*, i8** %49, align 8, !dbg !153
  %51 = load i32, i32* %7, align 4, !dbg !154
  %52 = sext i32 %51 to i64, !dbg !152
  %53 = getelementptr inbounds i8, i8* %50, i64 %52, !dbg !152
  %54 = load %struct._xmlBuffer*, %struct._xmlBuffer** %5, align 8, !dbg !155
  %55 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %54, i32 0, i32 0, !dbg !156
  %56 = load i8*, i8** %55, align 8, !dbg !156
  %57 = getelementptr inbounds i8, i8* %56, i64 0, !dbg !155
  %58 = load %struct._xmlBuffer*, %struct._xmlBuffer** %5, align 8, !dbg !157
  %59 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %58, i32 0, i32 1, !dbg !158
  %60 = load i32, i32* %59, align 8, !dbg !158
  %61 = zext i32 %60 to i64, !dbg !157
  %62 = call i8* @memmove(i8* %53, i8* %57, i64 %61), !dbg !159
  %63 = load %struct._xmlBuffer*, %struct._xmlBuffer** %5, align 8, !dbg !160
  %64 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %63, i32 0, i32 0, !dbg !161
  %65 = load i8*, i8** %64, align 8, !dbg !161
  %66 = getelementptr inbounds i8, i8* %65, i64 0, !dbg !160
  %67 = load i8*, i8** %6, align 8, !dbg !162
  %68 = load i32, i32* %7, align 4, !dbg !163
  %69 = sext i32 %68 to i64, !dbg !163
  %70 = call i8* @memmove(i8* %66, i8* %67, i64 %69), !dbg !164
  %71 = load i32, i32* %7, align 4, !dbg !165
  %72 = load %struct._xmlBuffer*, %struct._xmlBuffer** %5, align 8, !dbg !166
  %73 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %72, i32 0, i32 1, !dbg !167
  %74 = load i32, i32* %73, align 8, !dbg !168
  %75 = add i32 %74, %71, !dbg !168
  store i32 %75, i32* %73, align 8, !dbg !168
  %76 = load %struct._xmlBuffer*, %struct._xmlBuffer** %5, align 8, !dbg !169
  %77 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %76, i32 0, i32 0, !dbg !170
  %78 = load i8*, i8** %77, align 8, !dbg !170
  %79 = load %struct._xmlBuffer*, %struct._xmlBuffer** %5, align 8, !dbg !171
  %80 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %79, i32 0, i32 1, !dbg !172
  %81 = load i32, i32* %80, align 8, !dbg !172
  %82 = zext i32 %81 to i64, !dbg !169
  %83 = getelementptr inbounds i8, i8* %78, i64 %82, !dbg !169
  store i8 0, i8* %83, align 1, !dbg !173
  store i32 0, i32* %4, align 4, !dbg !174
  br label %84, !dbg !174

84:                                               ; preds = %47, %45, %22, %18, %14
  %85 = load i32, i32* %4, align 4, !dbg !175
  ret i32 %85, !dbg !175
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !176 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlBuffer, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlBuffer* %2, metadata !179, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.declare(metadata i8** %3, metadata !181, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.declare(metadata i32* %4, metadata !183, metadata !DIExpression()), !dbg !184
  %7 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 0, !dbg !185
  store i8* null, i8** %7, align 8, !dbg !186
  %8 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 1, !dbg !187
  store i32 0, i32* %8, align 8, !dbg !188
  %9 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 2, !dbg !189
  store i32 0, i32* %9, align 4, !dbg !190
  %10 = bitcast i32* %4 to i8*, !dbg !191
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !192
  %11 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 1, !dbg !193
  %12 = bitcast i32* %11 to i8*, !dbg !194
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)), !dbg !195
  %13 = load i32, i32* %4, align 4, !dbg !196
  %14 = icmp sge i32 %13, 0, !dbg !197
  br i1 %14, label %15, label %18, !dbg !198

15:                                               ; preds = %0
  %16 = load i32, i32* %4, align 4, !dbg !199
  %17 = icmp slt i32 %16, 1024, !dbg !200
  br label %18

18:                                               ; preds = %15, %0
  %19 = phi i1 [ false, %0 ], [ %17, %15 ], !dbg !201
  %20 = zext i1 %19 to i32, !dbg !198
  %21 = sext i32 %20 to i64, !dbg !196
  call void @klee_assume(i64 noundef %21), !dbg !202
  %22 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 1, !dbg !203
  %23 = load i32, i32* %22, align 8, !dbg !203
  %24 = icmp uge i32 %23, 0, !dbg !204
  br i1 %24, label %25, label %29, !dbg !205

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 1, !dbg !206
  %27 = load i32, i32* %26, align 8, !dbg !206
  %28 = icmp ult i32 %27, 1024, !dbg !207
  br label %29

29:                                               ; preds = %25, %18
  %30 = phi i1 [ false, %18 ], [ %28, %25 ], !dbg !201
  %31 = zext i1 %30 to i32, !dbg !205
  %32 = sext i32 %31 to i64, !dbg !208
  call void @klee_assume(i64 noundef %32), !dbg !209
  call void @llvm.dbg.declare(metadata i32* %5, metadata !210, metadata !DIExpression()), !dbg !211
  %33 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 1, !dbg !212
  %34 = load i32, i32* %33, align 8, !dbg !212
  %35 = load i32, i32* %4, align 4, !dbg !213
  %36 = add i32 %34, %35, !dbg !214
  %37 = add i32 %36, 1, !dbg !215
  store i32 %37, i32* %5, align 4, !dbg !211
  %38 = load i32, i32* %5, align 4, !dbg !216
  %39 = icmp ugt i32 %38, 0, !dbg !218
  br i1 %39, label %40, label %70, !dbg !219

40:                                               ; preds = %29
  %41 = load i32, i32* %5, align 4, !dbg !220
  %42 = zext i32 %41 to i64, !dbg !220
  %43 = call noalias i8* @malloc(i64 noundef %42) #7, !dbg !222
  %44 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 0, !dbg !223
  store i8* %43, i8** %44, align 8, !dbg !224
  %45 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 0, !dbg !225
  %46 = load i8*, i8** %45, align 8, !dbg !225
  %47 = icmp ne i8* %46, null, !dbg !227
  br i1 %47, label %49, label %48, !dbg !228

48:                                               ; preds = %40
  store i32 0, i32* %1, align 4, !dbg !229
  br label %130, !dbg !229

49:                                               ; preds = %40
  %50 = load i32, i32* %5, align 4, !dbg !230
  %51 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 2, !dbg !231
  store i32 %50, i32* %51, align 4, !dbg !232
  %52 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 0, !dbg !233
  %53 = load i8*, i8** %52, align 8, !dbg !233
  %54 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 2, !dbg !234
  %55 = load i32, i32* %54, align 4, !dbg !234
  %56 = zext i32 %55 to i64, !dbg !235
  call void @klee_make_symbolic(i8* noundef %53, i64 noundef %56, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)), !dbg !236
  %57 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 1, !dbg !237
  %58 = load i32, i32* %57, align 8, !dbg !237
  %59 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 2, !dbg !239
  %60 = load i32, i32* %59, align 4, !dbg !239
  %61 = icmp ult i32 %58, %60, !dbg !240
  br i1 %61, label %62, label %69, !dbg !241

62:                                               ; preds = %49
  %63 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 0, !dbg !242
  %64 = load i8*, i8** %63, align 8, !dbg !242
  %65 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 1, !dbg !244
  %66 = load i32, i32* %65, align 8, !dbg !244
  %67 = zext i32 %66 to i64, !dbg !245
  %68 = getelementptr inbounds i8, i8* %64, i64 %67, !dbg !245
  store i8 0, i8* %68, align 1, !dbg !246
  br label %69, !dbg !247

69:                                               ; preds = %62, %49
  br label %70, !dbg !248

70:                                               ; preds = %69, %29
  %71 = load i32, i32* %4, align 4, !dbg !249
  %72 = add nsw i32 %71, 1, !dbg !250
  %73 = sext i32 %72 to i64, !dbg !249
  %74 = call noalias i8* @malloc(i64 noundef %73) #7, !dbg !251
  store i8* %74, i8** %3, align 8, !dbg !252
  %75 = load i8*, i8** %3, align 8, !dbg !253
  %76 = icmp ne i8* %75, null, !dbg !253
  br i1 %76, label %85, label %77, !dbg !255

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 0, !dbg !256
  %79 = load i8*, i8** %78, align 8, !dbg !256
  %80 = icmp ne i8* %79, null, !dbg !259
  br i1 %80, label %81, label %84, !dbg !260

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 0, !dbg !261
  %83 = load i8*, i8** %82, align 8, !dbg !261
  call void @free(i8* noundef %83) #7, !dbg !262
  br label %84, !dbg !262

84:                                               ; preds = %81, %77
  store i32 0, i32* %1, align 4, !dbg !263
  br label %130, !dbg !263

85:                                               ; preds = %70
  %86 = load i8*, i8** %3, align 8, !dbg !264
  %87 = load i32, i32* %4, align 4, !dbg !265
  %88 = add nsw i32 %87, 1, !dbg !266
  %89 = sext i32 %88 to i64, !dbg !265
  call void @klee_make_symbolic(i8* noundef %86, i64 noundef %89, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)), !dbg !267
  %90 = load i32, i32* %4, align 4, !dbg !268
  %91 = icmp sgt i32 %90, 0, !dbg !270
  br i1 %91, label %92, label %97, !dbg !271

92:                                               ; preds = %85
  %93 = load i8*, i8** %3, align 8, !dbg !272
  %94 = load i32, i32* %4, align 4, !dbg !274
  %95 = sext i32 %94 to i64, !dbg !272
  %96 = getelementptr inbounds i8, i8* %93, i64 %95, !dbg !272
  store i8 0, i8* %96, align 1, !dbg !275
  br label %97, !dbg !276

97:                                               ; preds = %92, %85
  call void @llvm.dbg.declare(metadata i32* %6, metadata !277, metadata !DIExpression()), !dbg !278
  %98 = load i8*, i8** %3, align 8, !dbg !279
  %99 = load i32, i32* %4, align 4, !dbg !280
  %100 = call i32 @xmlBufferAdd(%struct._xmlBuffer* noundef %2, i8* noundef %98, i32 noundef %99), !dbg !281
  store i32 %100, i32* %6, align 4, !dbg !278
  %101 = load i32, i32* %6, align 4, !dbg !282
  %102 = icmp eq i32 %101, 0, !dbg !284
  br i1 %102, label %103, label %117, !dbg !285

103:                                              ; preds = %97
  %104 = load i32, i32* %4, align 4, !dbg !286
  %105 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 1, !dbg !286
  %106 = load i32, i32* %105, align 8, !dbg !286
  %107 = add i32 %104, %106, !dbg !286
  %108 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 2, !dbg !286
  %109 = load i32, i32* %108, align 4, !dbg !286
  %110 = icmp ule i32 %107, %109, !dbg !286
  br i1 %110, label %111, label %113, !dbg !286

111:                                              ; preds = %103
  br i1 true, label %112, label %113, !dbg !286

112:                                              ; preds = %111
  br label %115, !dbg !286

113:                                              ; preds = %111, %103
  %114 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.7, i64 0, i64 0), i32 noundef 118, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !286
  br label %115, !dbg !286

115:                                              ; preds = %113, %112
  %116 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.7, i64 0, i64 0), i32 noundef 119, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !288
  br label %117, !dbg !289

117:                                              ; preds = %115, %97
  %118 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 0, !dbg !290
  %119 = load i8*, i8** %118, align 8, !dbg !290
  %120 = icmp ne i8* %119, null, !dbg !292
  br i1 %120, label %121, label %124, !dbg !293

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 0, !dbg !294
  %123 = load i8*, i8** %122, align 8, !dbg !294
  call void @free(i8* noundef %123) #7, !dbg !295
  br label %124, !dbg !295

124:                                              ; preds = %121, %117
  %125 = load i8*, i8** %3, align 8, !dbg !296
  %126 = icmp ne i8* %125, null, !dbg !296
  br i1 %126, label %127, label %129, !dbg !298

127:                                              ; preds = %124
  %128 = load i8*, i8** %3, align 8, !dbg !299
  call void @free(i8* noundef %128) #7, !dbg !300
  br label %129, !dbg !300

129:                                              ; preds = %127, %124
  store i32 0, i32* %1, align 4, !dbg !301
  br label %130, !dbg !301

130:                                              ; preds = %129, %84, %48
  %131 = load i32, i32* %1, align 4, !dbg !302
  ret i32 %131, !dbg !302
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !303 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !312, metadata !DIExpression()), !dbg !313
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !314, metadata !DIExpression()), !dbg !315
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !316, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.declare(metadata i8** %7, metadata !318, metadata !DIExpression()), !dbg !319
  %9 = load i8*, i8** %4, align 8, !dbg !320
  store i8* %9, i8** %7, align 8, !dbg !319
  call void @llvm.dbg.declare(metadata i8** %8, metadata !321, metadata !DIExpression()), !dbg !322
  %10 = load i8*, i8** %5, align 8, !dbg !323
  store i8* %10, i8** %8, align 8, !dbg !322
  br label %11, !dbg !324

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !325
  %13 = add i64 %12, -1, !dbg !325
  store i64 %13, i64* %6, align 8, !dbg !325
  %14 = icmp ugt i64 %12, 0, !dbg !326
  br i1 %14, label %15, label %21, !dbg !324

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !327
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !327
  store i8* %17, i8** %8, align 8, !dbg !327
  %18 = load i8, i8* %16, align 1, !dbg !328
  %19 = load i8*, i8** %7, align 8, !dbg !329
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !329
  store i8* %20, i8** %7, align 8, !dbg !329
  store i8 %18, i8* %19, align 1, !dbg !330
  br label %11, !dbg !324, !llvm.loop !331

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !333
  ret i8* %22, !dbg !334
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memmove(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !335 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !337, metadata !DIExpression()), !dbg !338
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !339, metadata !DIExpression()), !dbg !340
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !341, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.declare(metadata i8** %8, metadata !343, metadata !DIExpression()), !dbg !344
  %10 = load i8*, i8** %5, align 8, !dbg !345
  store i8* %10, i8** %8, align 8, !dbg !344
  call void @llvm.dbg.declare(metadata i8** %9, metadata !346, metadata !DIExpression()), !dbg !347
  %11 = load i8*, i8** %6, align 8, !dbg !348
  store i8* %11, i8** %9, align 8, !dbg !347
  %12 = load i8*, i8** %6, align 8, !dbg !349
  %13 = load i8*, i8** %5, align 8, !dbg !351
  %14 = icmp eq i8* %12, %13, !dbg !352
  br i1 %14, label %15, label %17, !dbg !353

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8, !dbg !354
  store i8* %16, i8** %4, align 8, !dbg !355
  br label %52, !dbg !355

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8, !dbg !356
  %19 = load i8*, i8** %5, align 8, !dbg !358
  %20 = icmp ugt i8* %18, %19, !dbg !359
  br i1 %20, label %21, label %31, !dbg !360

21:                                               ; preds = %17, %25
  %22 = load i64, i64* %7, align 8, !dbg !361
  %23 = add i64 %22, -1, !dbg !361
  store i64 %23, i64* %7, align 8, !dbg !361
  %24 = icmp ne i64 %22, 0, !dbg !363
  br i1 %24, label %25, label %50, !dbg !363

25:                                               ; preds = %21
  %26 = load i8*, i8** %9, align 8, !dbg !364
  %27 = getelementptr inbounds i8, i8* %26, i32 1, !dbg !364
  store i8* %27, i8** %9, align 8, !dbg !364
  %28 = load i8, i8* %26, align 1, !dbg !365
  %29 = load i8*, i8** %8, align 8, !dbg !366
  %30 = getelementptr inbounds i8, i8* %29, i32 1, !dbg !366
  store i8* %30, i8** %8, align 8, !dbg !366
  store i8 %28, i8* %29, align 1, !dbg !367
  br label %21, !dbg !363, !llvm.loop !368

31:                                               ; preds = %17
  %32 = load i64, i64* %7, align 8, !dbg !369
  %33 = sub i64 %32, 1, !dbg !371
  %34 = load i8*, i8** %8, align 8, !dbg !372
  %35 = getelementptr inbounds i8, i8* %34, i64 %33, !dbg !372
  store i8* %35, i8** %8, align 8, !dbg !372
  %36 = load i64, i64* %7, align 8, !dbg !373
  %37 = sub i64 %36, 1, !dbg !374
  %38 = load i8*, i8** %9, align 8, !dbg !375
  %39 = getelementptr inbounds i8, i8* %38, i64 %37, !dbg !375
  store i8* %39, i8** %9, align 8, !dbg !375
  br label %40, !dbg !376

40:                                               ; preds = %44, %31
  %41 = load i64, i64* %7, align 8, !dbg !377
  %42 = add i64 %41, -1, !dbg !377
  store i64 %42, i64* %7, align 8, !dbg !377
  %43 = icmp ne i64 %41, 0, !dbg !376
  br i1 %43, label %44, label %50, !dbg !376

44:                                               ; preds = %40
  %45 = load i8*, i8** %9, align 8, !dbg !378
  %46 = getelementptr inbounds i8, i8* %45, i32 -1, !dbg !378
  store i8* %46, i8** %9, align 8, !dbg !378
  %47 = load i8, i8* %45, align 1, !dbg !379
  %48 = load i8*, i8** %8, align 8, !dbg !380
  %49 = getelementptr inbounds i8, i8* %48, i32 -1, !dbg !380
  store i8* %49, i8** %8, align 8, !dbg !380
  store i8 %47, i8* %48, align 1, !dbg !381
  br label %40, !dbg !376, !llvm.loop !382

50:                                               ; preds = %40, %21
  %51 = load i8*, i8** %5, align 8, !dbg !383
  store i8* %51, i8** %4, align 8, !dbg !384
  br label %52, !dbg !384

52:                                               ; preds = %50, %15
  %53 = load i8*, i8** %4, align 8, !dbg !385
  ret i8* %53, !dbg !385
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21, !21, !21}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !7, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/182_tree.c_7708_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "7865045b5147d080cb85e78dabf27963")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 17, baseType: !4, size: 32, elements: !5)
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{!6}
!6 = !DIEnumerator(name: "XML_ERR_NO_MEMORY", value: -1)
!7 = !{!8, !9}
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !11, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!11 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!12 = distinct !DICompileUnit(language: DW_LANG_C99, file: !13, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!13 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memmove.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "6cd27189cdce56ce74ae860a315e13f2")
!14 = !{i32 7, !"Dwarf Version", i32 5}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{i32 7, !"PIC Level", i32 2}
!18 = !{i32 7, !"PIE Level", i32 2}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"Ubuntu clang version 14.0.6"}
!22 = distinct !DISubprogram(name: "xmlBufferResize", scope: !1, file: !1, line: 22, type: !23, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!23 = !DISubroutineType(types: !24)
!24 = !{!4, !25, !9}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBuffer", file: !1, line: 10, baseType: !27)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlBuffer", file: !1, line: 11, size: 128, elements: !28)
!28 = !{!29, !32, !33}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !27, file: !1, line: 12, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !27, file: !1, line: 13, baseType: !9, size: 32, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !27, file: !1, line: 14, baseType: !9, size: 32, offset: 96)
!34 = !{}
!35 = !DILocalVariable(name: "buf", arg: 1, scope: !22, file: !1, line: 22, type: !25)
!36 = !DILocation(line: 22, column: 32, scope: !22)
!37 = !DILocalVariable(name: "size", arg: 2, scope: !22, file: !1, line: 22, type: !9)
!38 = !DILocation(line: 22, column: 50, scope: !22)
!39 = !DILocation(line: 23, column: 9, scope: !40)
!40 = distinct !DILexicalBlock(scope: !22, file: !1, line: 23, column: 9)
!41 = !DILocation(line: 23, column: 14, scope: !40)
!42 = !DILocation(line: 23, column: 9, scope: !22)
!43 = !DILocation(line: 23, column: 20, scope: !40)
!44 = !DILocalVariable(name: "new_content", scope: !22, file: !1, line: 24, type: !30)
!45 = !DILocation(line: 24, column: 11, scope: !22)
!46 = !DILocation(line: 24, column: 32, scope: !22)
!47 = !DILocation(line: 24, column: 25, scope: !22)
!48 = !DILocation(line: 25, column: 10, scope: !49)
!49 = distinct !DILexicalBlock(scope: !22, file: !1, line: 25, column: 9)
!50 = !DILocation(line: 25, column: 9, scope: !22)
!51 = !DILocation(line: 25, column: 23, scope: !49)
!52 = !DILocation(line: 26, column: 9, scope: !53)
!53 = distinct !DILexicalBlock(scope: !22, file: !1, line: 26, column: 9)
!54 = !DILocation(line: 26, column: 14, scope: !53)
!55 = !DILocation(line: 26, column: 22, scope: !53)
!56 = !DILocation(line: 26, column: 25, scope: !53)
!57 = !DILocation(line: 26, column: 30, scope: !53)
!58 = !DILocation(line: 26, column: 34, scope: !53)
!59 = !DILocation(line: 26, column: 9, scope: !22)
!60 = !DILocalVariable(name: "copy_len", scope: !61, file: !1, line: 27, type: !9)
!61 = distinct !DILexicalBlock(scope: !53, file: !1, line: 26, column: 39)
!62 = !DILocation(line: 27, column: 22, scope: !61)
!63 = !DILocation(line: 27, column: 33, scope: !61)
!64 = !DILocation(line: 27, column: 38, scope: !61)
!65 = !DILocation(line: 27, column: 44, scope: !61)
!66 = !DILocation(line: 27, column: 42, scope: !61)
!67 = !DILocation(line: 27, column: 51, scope: !61)
!68 = !DILocation(line: 27, column: 56, scope: !61)
!69 = !DILocation(line: 27, column: 62, scope: !61)
!70 = !DILocation(line: 28, column: 16, scope: !61)
!71 = !DILocation(line: 28, column: 29, scope: !61)
!72 = !DILocation(line: 28, column: 34, scope: !61)
!73 = !DILocation(line: 28, column: 43, scope: !61)
!74 = !DILocation(line: 28, column: 9, scope: !61)
!75 = !DILocation(line: 29, column: 14, scope: !61)
!76 = !DILocation(line: 29, column: 19, scope: !61)
!77 = !DILocation(line: 29, column: 9, scope: !61)
!78 = !DILocation(line: 30, column: 5, scope: !61)
!79 = !DILocation(line: 31, column: 20, scope: !22)
!80 = !DILocation(line: 31, column: 5, scope: !22)
!81 = !DILocation(line: 31, column: 10, scope: !22)
!82 = !DILocation(line: 31, column: 18, scope: !22)
!83 = !DILocation(line: 32, column: 17, scope: !22)
!84 = !DILocation(line: 32, column: 5, scope: !22)
!85 = !DILocation(line: 32, column: 10, scope: !22)
!86 = !DILocation(line: 32, column: 15, scope: !22)
!87 = !DILocation(line: 33, column: 5, scope: !22)
!88 = !DILocation(line: 34, column: 1, scope: !22)
!89 = distinct !DISubprogram(name: "xmlTreeErrMemory", scope: !1, file: !1, line: 37, type: !90, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!90 = !DISubroutineType(types: !91)
!91 = !{null, !92}
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!94 = !DILocalVariable(name: "msg", arg: 1, scope: !89, file: !1, line: 37, type: !92)
!95 = !DILocation(line: 37, column: 35, scope: !89)
!96 = !DILocation(line: 39, column: 1, scope: !89)
!97 = distinct !DISubprogram(name: "xmlBufferAdd", scope: !1, file: !1, line: 42, type: !98, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!98 = !DISubroutineType(types: !99)
!99 = !{!4, !25, !92, !4}
!100 = !DILocalVariable(name: "buf", arg: 1, scope: !97, file: !1, line: 42, type: !25)
!101 = !DILocation(line: 42, column: 29, scope: !97)
!102 = !DILocalVariable(name: "str", arg: 2, scope: !97, file: !1, line: 42, type: !92)
!103 = !DILocation(line: 42, column: 46, scope: !97)
!104 = !DILocalVariable(name: "len", arg: 3, scope: !97, file: !1, line: 42, type: !4)
!105 = !DILocation(line: 42, column: 55, scope: !97)
!106 = !DILocalVariable(name: "needSize", scope: !97, file: !1, line: 43, type: !9)
!107 = !DILocation(line: 43, column: 18, scope: !97)
!108 = !DILocation(line: 45, column: 9, scope: !109)
!109 = distinct !DILexicalBlock(scope: !97, file: !1, line: 45, column: 9)
!110 = !DILocation(line: 45, column: 13, scope: !109)
!111 = !DILocation(line: 45, column: 21, scope: !109)
!112 = !DILocation(line: 45, column: 24, scope: !109)
!113 = !DILocation(line: 45, column: 28, scope: !109)
!114 = !DILocation(line: 45, column: 9, scope: !97)
!115 = !DILocation(line: 45, column: 37, scope: !109)
!116 = !DILocation(line: 46, column: 9, scope: !117)
!117 = distinct !DILexicalBlock(scope: !97, file: !1, line: 46, column: 9)
!118 = !DILocation(line: 46, column: 13, scope: !117)
!119 = !DILocation(line: 46, column: 9, scope: !97)
!120 = !DILocation(line: 46, column: 18, scope: !117)
!121 = !DILocation(line: 47, column: 9, scope: !122)
!122 = distinct !DILexicalBlock(scope: !97, file: !1, line: 47, column: 9)
!123 = !DILocation(line: 47, column: 13, scope: !122)
!124 = !DILocation(line: 47, column: 9, scope: !97)
!125 = !DILocation(line: 47, column: 19, scope: !122)
!126 = !DILocation(line: 49, column: 9, scope: !127)
!127 = distinct !DILexicalBlock(scope: !97, file: !1, line: 49, column: 9)
!128 = !DILocation(line: 49, column: 14, scope: !127)
!129 = !DILocation(line: 49, column: 21, scope: !127)
!130 = !DILocation(line: 49, column: 26, scope: !127)
!131 = !DILocation(line: 49, column: 19, scope: !127)
!132 = !DILocation(line: 49, column: 46, scope: !127)
!133 = !DILocation(line: 49, column: 50, scope: !127)
!134 = !DILocation(line: 49, column: 30, scope: !127)
!135 = !DILocation(line: 49, column: 9, scope: !97)
!136 = !DILocation(line: 50, column: 20, scope: !137)
!137 = distinct !DILexicalBlock(scope: !127, file: !1, line: 49, column: 55)
!138 = !DILocation(line: 50, column: 25, scope: !137)
!139 = !DILocation(line: 50, column: 31, scope: !137)
!140 = !DILocation(line: 50, column: 29, scope: !137)
!141 = !DILocation(line: 50, column: 35, scope: !137)
!142 = !DILocation(line: 50, column: 18, scope: !137)
!143 = !DILocation(line: 51, column: 30, scope: !144)
!144 = distinct !DILexicalBlock(scope: !137, file: !1, line: 51, column: 13)
!145 = !DILocation(line: 51, column: 35, scope: !144)
!146 = !DILocation(line: 51, column: 14, scope: !144)
!147 = !DILocation(line: 51, column: 13, scope: !137)
!148 = !DILocation(line: 52, column: 13, scope: !149)
!149 = distinct !DILexicalBlock(scope: !144, file: !1, line: 51, column: 46)
!150 = !DILocation(line: 53, column: 13, scope: !149)
!151 = !DILocation(line: 55, column: 5, scope: !137)
!152 = !DILocation(line: 58, column: 14, scope: !97)
!153 = !DILocation(line: 58, column: 19, scope: !97)
!154 = !DILocation(line: 58, column: 27, scope: !97)
!155 = !DILocation(line: 58, column: 34, scope: !97)
!156 = !DILocation(line: 58, column: 39, scope: !97)
!157 = !DILocation(line: 58, column: 51, scope: !97)
!158 = !DILocation(line: 58, column: 56, scope: !97)
!159 = !DILocation(line: 58, column: 5, scope: !97)
!160 = !DILocation(line: 59, column: 14, scope: !97)
!161 = !DILocation(line: 59, column: 19, scope: !97)
!162 = !DILocation(line: 59, column: 31, scope: !97)
!163 = !DILocation(line: 59, column: 36, scope: !97)
!164 = !DILocation(line: 59, column: 5, scope: !97)
!165 = !DILocation(line: 60, column: 17, scope: !97)
!166 = !DILocation(line: 60, column: 5, scope: !97)
!167 = !DILocation(line: 60, column: 10, scope: !97)
!168 = !DILocation(line: 60, column: 14, scope: !97)
!169 = !DILocation(line: 61, column: 5, scope: !97)
!170 = !DILocation(line: 61, column: 10, scope: !97)
!171 = !DILocation(line: 61, column: 18, scope: !97)
!172 = !DILocation(line: 61, column: 23, scope: !97)
!173 = !DILocation(line: 61, column: 28, scope: !97)
!174 = !DILocation(line: 62, column: 5, scope: !97)
!175 = !DILocation(line: 63, column: 1, scope: !97)
!176 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 65, type: !177, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!177 = !DISubroutineType(types: !178)
!178 = !{!4}
!179 = !DILocalVariable(name: "buf", scope: !176, file: !1, line: 66, type: !26)
!180 = !DILocation(line: 66, column: 15, scope: !176)
!181 = !DILocalVariable(name: "str", scope: !176, file: !1, line: 67, type: !30)
!182 = !DILocation(line: 67, column: 11, scope: !176)
!183 = !DILocalVariable(name: "len", scope: !176, file: !1, line: 68, type: !4)
!184 = !DILocation(line: 68, column: 9, scope: !176)
!185 = !DILocation(line: 71, column: 9, scope: !176)
!186 = !DILocation(line: 71, column: 17, scope: !176)
!187 = !DILocation(line: 72, column: 9, scope: !176)
!188 = !DILocation(line: 72, column: 13, scope: !176)
!189 = !DILocation(line: 73, column: 9, scope: !176)
!190 = !DILocation(line: 73, column: 14, scope: !176)
!191 = !DILocation(line: 76, column: 24, scope: !176)
!192 = !DILocation(line: 76, column: 5, scope: !176)
!193 = !DILocation(line: 77, column: 29, scope: !176)
!194 = !DILocation(line: 77, column: 24, scope: !176)
!195 = !DILocation(line: 77, column: 5, scope: !176)
!196 = !DILocation(line: 80, column: 17, scope: !176)
!197 = !DILocation(line: 80, column: 21, scope: !176)
!198 = !DILocation(line: 80, column: 26, scope: !176)
!199 = !DILocation(line: 80, column: 29, scope: !176)
!200 = !DILocation(line: 80, column: 33, scope: !176)
!201 = !DILocation(line: 0, scope: !176)
!202 = !DILocation(line: 80, column: 5, scope: !176)
!203 = !DILocation(line: 81, column: 21, scope: !176)
!204 = !DILocation(line: 81, column: 25, scope: !176)
!205 = !DILocation(line: 81, column: 30, scope: !176)
!206 = !DILocation(line: 81, column: 37, scope: !176)
!207 = !DILocation(line: 81, column: 41, scope: !176)
!208 = !DILocation(line: 81, column: 17, scope: !176)
!209 = !DILocation(line: 81, column: 5, scope: !176)
!210 = !DILocalVariable(name: "initial_size", scope: !176, file: !1, line: 84, type: !9)
!211 = !DILocation(line: 84, column: 18, scope: !176)
!212 = !DILocation(line: 84, column: 37, scope: !176)
!213 = !DILocation(line: 84, column: 43, scope: !176)
!214 = !DILocation(line: 84, column: 41, scope: !176)
!215 = !DILocation(line: 84, column: 47, scope: !176)
!216 = !DILocation(line: 85, column: 9, scope: !217)
!217 = distinct !DILexicalBlock(scope: !176, file: !1, line: 85, column: 9)
!218 = !DILocation(line: 85, column: 22, scope: !217)
!219 = !DILocation(line: 85, column: 9, scope: !176)
!220 = !DILocation(line: 86, column: 30, scope: !221)
!221 = distinct !DILexicalBlock(scope: !217, file: !1, line: 85, column: 27)
!222 = !DILocation(line: 86, column: 23, scope: !221)
!223 = !DILocation(line: 86, column: 13, scope: !221)
!224 = !DILocation(line: 86, column: 21, scope: !221)
!225 = !DILocation(line: 87, column: 18, scope: !226)
!226 = distinct !DILexicalBlock(scope: !221, file: !1, line: 87, column: 13)
!227 = !DILocation(line: 87, column: 14, scope: !226)
!228 = !DILocation(line: 87, column: 13, scope: !221)
!229 = !DILocation(line: 87, column: 27, scope: !226)
!230 = !DILocation(line: 88, column: 20, scope: !221)
!231 = !DILocation(line: 88, column: 13, scope: !221)
!232 = !DILocation(line: 88, column: 18, scope: !221)
!233 = !DILocation(line: 91, column: 32, scope: !221)
!234 = !DILocation(line: 91, column: 45, scope: !221)
!235 = !DILocation(line: 91, column: 41, scope: !221)
!236 = !DILocation(line: 91, column: 9, scope: !221)
!237 = !DILocation(line: 94, column: 17, scope: !238)
!238 = distinct !DILexicalBlock(scope: !221, file: !1, line: 94, column: 13)
!239 = !DILocation(line: 94, column: 27, scope: !238)
!240 = !DILocation(line: 94, column: 21, scope: !238)
!241 = !DILocation(line: 94, column: 13, scope: !221)
!242 = !DILocation(line: 95, column: 17, scope: !243)
!243 = distinct !DILexicalBlock(scope: !238, file: !1, line: 94, column: 33)
!244 = !DILocation(line: 95, column: 29, scope: !243)
!245 = !DILocation(line: 95, column: 13, scope: !243)
!246 = !DILocation(line: 95, column: 34, scope: !243)
!247 = !DILocation(line: 96, column: 9, scope: !243)
!248 = !DILocation(line: 97, column: 5, scope: !221)
!249 = !DILocation(line: 100, column: 18, scope: !176)
!250 = !DILocation(line: 100, column: 22, scope: !176)
!251 = !DILocation(line: 100, column: 11, scope: !176)
!252 = !DILocation(line: 100, column: 9, scope: !176)
!253 = !DILocation(line: 101, column: 10, scope: !254)
!254 = distinct !DILexicalBlock(scope: !176, file: !1, line: 101, column: 9)
!255 = !DILocation(line: 101, column: 9, scope: !176)
!256 = !DILocation(line: 102, column: 17, scope: !257)
!257 = distinct !DILexicalBlock(scope: !258, file: !1, line: 102, column: 13)
!258 = distinct !DILexicalBlock(scope: !254, file: !1, line: 101, column: 15)
!259 = !DILocation(line: 102, column: 13, scope: !257)
!260 = !DILocation(line: 102, column: 13, scope: !258)
!261 = !DILocation(line: 102, column: 35, scope: !257)
!262 = !DILocation(line: 102, column: 26, scope: !257)
!263 = !DILocation(line: 103, column: 9, scope: !258)
!264 = !DILocation(line: 105, column: 24, scope: !176)
!265 = !DILocation(line: 105, column: 29, scope: !176)
!266 = !DILocation(line: 105, column: 33, scope: !176)
!267 = !DILocation(line: 105, column: 5, scope: !176)
!268 = !DILocation(line: 106, column: 9, scope: !269)
!269 = distinct !DILexicalBlock(scope: !176, file: !1, line: 106, column: 9)
!270 = !DILocation(line: 106, column: 13, scope: !269)
!271 = !DILocation(line: 106, column: 9, scope: !176)
!272 = !DILocation(line: 107, column: 9, scope: !273)
!273 = distinct !DILexicalBlock(scope: !269, file: !1, line: 106, column: 18)
!274 = !DILocation(line: 107, column: 13, scope: !273)
!275 = !DILocation(line: 107, column: 18, scope: !273)
!276 = !DILocation(line: 108, column: 5, scope: !273)
!277 = !DILocalVariable(name: "result", scope: !176, file: !1, line: 111, type: !4)
!278 = !DILocation(line: 111, column: 9, scope: !176)
!279 = !DILocation(line: 111, column: 37, scope: !176)
!280 = !DILocation(line: 111, column: 42, scope: !176)
!281 = !DILocation(line: 111, column: 18, scope: !176)
!282 = !DILocation(line: 117, column: 9, scope: !283)
!283 = distinct !DILexicalBlock(scope: !176, file: !1, line: 117, column: 9)
!284 = !DILocation(line: 117, column: 16, scope: !283)
!285 = !DILocation(line: 117, column: 9, scope: !176)
!286 = !DILocation(line: 118, column: 9, scope: !287)
!287 = distinct !DILexicalBlock(scope: !283, file: !1, line: 117, column: 22)
!288 = !DILocation(line: 119, column: 9, scope: !287)
!289 = !DILocation(line: 120, column: 5, scope: !287)
!290 = !DILocation(line: 123, column: 13, scope: !291)
!291 = distinct !DILexicalBlock(scope: !176, file: !1, line: 123, column: 9)
!292 = !DILocation(line: 123, column: 9, scope: !291)
!293 = !DILocation(line: 123, column: 9, scope: !176)
!294 = !DILocation(line: 123, column: 31, scope: !291)
!295 = !DILocation(line: 123, column: 22, scope: !291)
!296 = !DILocation(line: 124, column: 9, scope: !297)
!297 = distinct !DILexicalBlock(scope: !176, file: !1, line: 124, column: 9)
!298 = !DILocation(line: 124, column: 9, scope: !176)
!299 = !DILocation(line: 124, column: 19, scope: !297)
!300 = !DILocation(line: 124, column: 14, scope: !297)
!301 = !DILocation(line: 126, column: 5, scope: !176)
!302 = !DILocation(line: 127, column: 1, scope: !176)
!303 = distinct !DISubprogram(name: "memcpy", scope: !304, file: !304, line: 12, type: !305, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !34)
!304 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!305 = !DISubroutineType(types: !306)
!306 = !{!8, !8, !307, !309}
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !310, line: 46, baseType: !311)
!310 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!311 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!312 = !DILocalVariable(name: "destaddr", arg: 1, scope: !303, file: !304, line: 12, type: !8)
!313 = !DILocation(line: 12, column: 20, scope: !303)
!314 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !303, file: !304, line: 12, type: !307)
!315 = !DILocation(line: 12, column: 42, scope: !303)
!316 = !DILocalVariable(name: "len", arg: 3, scope: !303, file: !304, line: 12, type: !309)
!317 = !DILocation(line: 12, column: 58, scope: !303)
!318 = !DILocalVariable(name: "dest", scope: !303, file: !304, line: 13, type: !30)
!319 = !DILocation(line: 13, column: 9, scope: !303)
!320 = !DILocation(line: 13, column: 16, scope: !303)
!321 = !DILocalVariable(name: "src", scope: !303, file: !304, line: 14, type: !92)
!322 = !DILocation(line: 14, column: 15, scope: !303)
!323 = !DILocation(line: 14, column: 21, scope: !303)
!324 = !DILocation(line: 16, column: 3, scope: !303)
!325 = !DILocation(line: 16, column: 13, scope: !303)
!326 = !DILocation(line: 16, column: 16, scope: !303)
!327 = !DILocation(line: 17, column: 19, scope: !303)
!328 = !DILocation(line: 17, column: 15, scope: !303)
!329 = !DILocation(line: 17, column: 10, scope: !303)
!330 = !DILocation(line: 17, column: 13, scope: !303)
!331 = distinct !{!331, !324, !327, !332}
!332 = !{!"llvm.loop.mustprogress"}
!333 = !DILocation(line: 18, column: 10, scope: !303)
!334 = !DILocation(line: 18, column: 3, scope: !303)
!335 = distinct !DISubprogram(name: "memmove", scope: !336, file: !336, line: 12, type: !305, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !34)
!336 = !DIFile(filename: "runtime/Freestanding/memmove.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "6cd27189cdce56ce74ae860a315e13f2")
!337 = !DILocalVariable(name: "dst", arg: 1, scope: !335, file: !336, line: 12, type: !8)
!338 = !DILocation(line: 12, column: 21, scope: !335)
!339 = !DILocalVariable(name: "src", arg: 2, scope: !335, file: !336, line: 12, type: !307)
!340 = !DILocation(line: 12, column: 38, scope: !335)
!341 = !DILocalVariable(name: "count", arg: 3, scope: !335, file: !336, line: 12, type: !309)
!342 = !DILocation(line: 12, column: 50, scope: !335)
!343 = !DILocalVariable(name: "a", scope: !335, file: !336, line: 13, type: !30)
!344 = !DILocation(line: 13, column: 9, scope: !335)
!345 = !DILocation(line: 13, column: 13, scope: !335)
!346 = !DILocalVariable(name: "b", scope: !335, file: !336, line: 14, type: !92)
!347 = !DILocation(line: 14, column: 15, scope: !335)
!348 = !DILocation(line: 14, column: 19, scope: !335)
!349 = !DILocation(line: 16, column: 7, scope: !350)
!350 = distinct !DILexicalBlock(scope: !335, file: !336, line: 16, column: 7)
!351 = !DILocation(line: 16, column: 14, scope: !350)
!352 = !DILocation(line: 16, column: 11, scope: !350)
!353 = !DILocation(line: 16, column: 7, scope: !335)
!354 = !DILocation(line: 17, column: 12, scope: !350)
!355 = !DILocation(line: 17, column: 5, scope: !350)
!356 = !DILocation(line: 19, column: 7, scope: !357)
!357 = distinct !DILexicalBlock(scope: !335, file: !336, line: 19, column: 7)
!358 = !DILocation(line: 19, column: 13, scope: !357)
!359 = !DILocation(line: 19, column: 11, scope: !357)
!360 = !DILocation(line: 19, column: 7, scope: !335)
!361 = !DILocation(line: 20, column: 17, scope: !362)
!362 = distinct !DILexicalBlock(scope: !357, file: !336, line: 19, column: 18)
!363 = !DILocation(line: 20, column: 5, scope: !362)
!364 = !DILocation(line: 21, column: 16, scope: !362)
!365 = !DILocation(line: 21, column: 14, scope: !362)
!366 = !DILocation(line: 21, column: 9, scope: !362)
!367 = !DILocation(line: 21, column: 12, scope: !362)
!368 = distinct !{!368, !363, !364, !332}
!369 = !DILocation(line: 23, column: 10, scope: !370)
!370 = distinct !DILexicalBlock(scope: !357, file: !336, line: 22, column: 10)
!371 = !DILocation(line: 23, column: 16, scope: !370)
!372 = !DILocation(line: 23, column: 7, scope: !370)
!373 = !DILocation(line: 24, column: 10, scope: !370)
!374 = !DILocation(line: 24, column: 16, scope: !370)
!375 = !DILocation(line: 24, column: 7, scope: !370)
!376 = !DILocation(line: 25, column: 5, scope: !370)
!377 = !DILocation(line: 25, column: 17, scope: !370)
!378 = !DILocation(line: 26, column: 16, scope: !370)
!379 = !DILocation(line: 26, column: 14, scope: !370)
!380 = !DILocation(line: 26, column: 9, scope: !370)
!381 = !DILocation(line: 26, column: 12, scope: !370)
!382 = distinct !{!382, !376, !378, !332}
!383 = !DILocation(line: 29, column: 10, scope: !335)
!384 = !DILocation(line: 29, column: 3, scope: !335)
!385 = !DILocation(line: 30, column: 1, scope: !335)

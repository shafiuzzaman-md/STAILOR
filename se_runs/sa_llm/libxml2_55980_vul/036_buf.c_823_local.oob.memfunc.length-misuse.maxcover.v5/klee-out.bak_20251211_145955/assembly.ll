; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/036_buf.c_823_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/036_buf.c_823_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlBuf = type { i8*, i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"growing buffer\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"initial_size\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"initial_use\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"(buf.use + len < buf.size) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [101 x i8] c"se_runs/sa_llm/libxml2_55980_vul/036_buf.c_823_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
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
  %6 = load i8*, i8** %4, align 8, !dbg !39
  ret void, !dbg !40
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlBufResize(%struct._xmlBuf* noundef %0, i64 noundef %1) #0 !dbg !41 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlBuf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct._xmlBuf* %0, %struct._xmlBuf** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlBuf** %4, metadata !45, metadata !DIExpression()), !dbg !46
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !47, metadata !DIExpression()), !dbg !48
  %7 = load i64, i64* %5, align 8, !dbg !49
  %8 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !51
  %9 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %8, i32 0, i32 1, !dbg !52
  %10 = load i64, i64* %9, align 8, !dbg !52
  %11 = icmp ule i64 %7, %10, !dbg !53
  br i1 %11, label %12, label %13, !dbg !54

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4, !dbg !55
  br label %48, !dbg !55

13:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %6, metadata !57, metadata !DIExpression()), !dbg !58
  %14 = load i64, i64* %5, align 8, !dbg !59
  %15 = call noalias i8* @malloc(i64 noundef %14) #7, !dbg !60
  store i8* %15, i8** %6, align 8, !dbg !58
  %16 = load i8*, i8** %6, align 8, !dbg !61
  %17 = icmp ne i8* %16, null, !dbg !61
  br i1 %17, label %19, label %18, !dbg !63

18:                                               ; preds = %13
  store i32 0, i32* %3, align 4, !dbg !64
  br label %48, !dbg !64

19:                                               ; preds = %13
  %20 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !66
  %21 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %20, i32 0, i32 0, !dbg !68
  %22 = load i8*, i8** %21, align 8, !dbg !68
  %23 = icmp ne i8* %22, null, !dbg !66
  br i1 %23, label %24, label %38, !dbg !69

24:                                               ; preds = %19
  %25 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !70
  %26 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %25, i32 0, i32 2, !dbg !71
  %27 = load i64, i64* %26, align 8, !dbg !71
  %28 = icmp ugt i64 %27, 0, !dbg !72
  br i1 %28, label %29, label %38, !dbg !73

29:                                               ; preds = %24
  %30 = load i8*, i8** %6, align 8, !dbg !74
  %31 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !76
  %32 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %31, i32 0, i32 0, !dbg !77
  %33 = load i8*, i8** %32, align 8, !dbg !77
  %34 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !78
  %35 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %34, i32 0, i32 2, !dbg !79
  %36 = load i64, i64* %35, align 8, !dbg !79
  %37 = call i8* @memcpy(i8* %30, i8* %33, i64 %36), !dbg !80
  br label %38, !dbg !81

38:                                               ; preds = %29, %24, %19
  %39 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !82
  %40 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %39, i32 0, i32 0, !dbg !83
  %41 = load i8*, i8** %40, align 8, !dbg !83
  call void @free(i8* noundef %41) #7, !dbg !84
  %42 = load i8*, i8** %6, align 8, !dbg !85
  %43 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !86
  %44 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %43, i32 0, i32 0, !dbg !87
  store i8* %42, i8** %44, align 8, !dbg !88
  %45 = load i64, i64* %5, align 8, !dbg !89
  %46 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !90
  %47 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %46, i32 0, i32 1, !dbg !91
  store i64 %45, i64* %47, align 8, !dbg !92
  store i32 1, i32* %3, align 4, !dbg !93
  br label %48, !dbg !93

48:                                               ; preds = %38, %18, %12
  %49 = load i32, i32* %3, align 4, !dbg !94
  ret i32 %49, !dbg !94
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlBufAdd(%struct._xmlBuf* noundef %0, i8* noundef %1, i64 noundef %2) #0 !dbg !95 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._xmlBuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct._xmlBuf* %0, %struct._xmlBuf** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlBuf** %5, metadata !98, metadata !DIExpression()), !dbg !99
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !100, metadata !DIExpression()), !dbg !101
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !102, metadata !DIExpression()), !dbg !103
  call void @llvm.dbg.declare(metadata i64* %8, metadata !104, metadata !DIExpression()), !dbg !105
  %9 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !106
  %10 = icmp eq %struct._xmlBuf* %9, null, !dbg !108
  br i1 %10, label %14, label %11, !dbg !109

11:                                               ; preds = %3
  %12 = load i8*, i8** %6, align 8, !dbg !110
  %13 = icmp eq i8* %12, null, !dbg !111
  br i1 %13, label %14, label %15, !dbg !112

14:                                               ; preds = %11, %3
  store i32 -1, i32* %4, align 4, !dbg !113
  br label %80, !dbg !113

15:                                               ; preds = %11
  %16 = load i64, i64* %7, align 8, !dbg !115
  %17 = icmp eq i64 %16, 0, !dbg !117
  br i1 %17, label %18, label %19, !dbg !118

18:                                               ; preds = %15
  store i32 0, i32* %4, align 4, !dbg !119
  br label %80, !dbg !119

19:                                               ; preds = %15
  %20 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !121
  %21 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %20, i32 0, i32 0, !dbg !123
  %22 = load i8*, i8** %21, align 8, !dbg !123
  %23 = icmp eq i8* %22, null, !dbg !124
  br i1 %23, label %24, label %25, !dbg !125

24:                                               ; preds = %19
  store i32 -1, i32* %4, align 4, !dbg !126
  br label %80, !dbg !126

25:                                               ; preds = %19
  %26 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !128
  %27 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %26, i32 0, i32 2, !dbg !130
  %28 = load i64, i64* %27, align 8, !dbg !130
  %29 = load i64, i64* %7, align 8, !dbg !131
  %30 = add i64 %28, %29, !dbg !132
  %31 = add i64 %30, 1, !dbg !133
  %32 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !134
  %33 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %32, i32 0, i32 2, !dbg !135
  %34 = load i64, i64* %33, align 8, !dbg !135
  %35 = icmp ult i64 %31, %34, !dbg !136
  br i1 %35, label %36, label %37, !dbg !137

36:                                               ; preds = %25
  store i32 -1, i32* %4, align 4, !dbg !138
  br label %80, !dbg !138

37:                                               ; preds = %25
  %38 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !140
  %39 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %38, i32 0, i32 2, !dbg !141
  %40 = load i64, i64* %39, align 8, !dbg !141
  %41 = load i64, i64* %7, align 8, !dbg !142
  %42 = add i64 %40, %41, !dbg !143
  %43 = add i64 %42, 1, !dbg !144
  store i64 %43, i64* %8, align 8, !dbg !145
  %44 = load i64, i64* %8, align 8, !dbg !146
  %45 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !148
  %46 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %45, i32 0, i32 1, !dbg !149
  %47 = load i64, i64* %46, align 8, !dbg !149
  %48 = icmp ugt i64 %44, %47, !dbg !150
  br i1 %48, label %49, label %57, !dbg !151

49:                                               ; preds = %37
  %50 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !152
  %51 = load i64, i64* %8, align 8, !dbg !155
  %52 = call i32 @xmlBufResize(%struct._xmlBuf* noundef %50, i64 noundef %51), !dbg !156
  %53 = icmp ne i32 %52, 0, !dbg !156
  br i1 %53, label %56, label %54, !dbg !157

54:                                               ; preds = %49
  %55 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !158
  call void @xmlBufMemoryError(%struct._xmlBuf* noundef %55, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !160
  store i32 1, i32* %4, align 4, !dbg !161
  br label %80, !dbg !161

56:                                               ; preds = %49
  br label %57, !dbg !162

57:                                               ; preds = %56, %37
  %58 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !163
  %59 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %58, i32 0, i32 0, !dbg !164
  %60 = load i8*, i8** %59, align 8, !dbg !164
  %61 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !165
  %62 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %61, i32 0, i32 2, !dbg !166
  %63 = load i64, i64* %62, align 8, !dbg !166
  %64 = getelementptr inbounds i8, i8* %60, i64 %63, !dbg !163
  %65 = load i8*, i8** %6, align 8, !dbg !167
  %66 = load i64, i64* %7, align 8, !dbg !168
  %67 = call i8* @memmove(i8* %64, i8* %65, i64 %66), !dbg !169
  %68 = load i64, i64* %7, align 8, !dbg !170
  %69 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !171
  %70 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %69, i32 0, i32 2, !dbg !172
  %71 = load i64, i64* %70, align 8, !dbg !173
  %72 = add i64 %71, %68, !dbg !173
  store i64 %72, i64* %70, align 8, !dbg !173
  %73 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !174
  %74 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %73, i32 0, i32 0, !dbg !175
  %75 = load i8*, i8** %74, align 8, !dbg !175
  %76 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !176
  %77 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %76, i32 0, i32 2, !dbg !177
  %78 = load i64, i64* %77, align 8, !dbg !177
  %79 = getelementptr inbounds i8, i8* %75, i64 %78, !dbg !174
  store i8 0, i8* %79, align 1, !dbg !178
  store i32 0, i32* %4, align 4, !dbg !179
  br label %80, !dbg !179

80:                                               ; preds = %57, %54, %36, %24, %18, %14
  %81 = load i32, i32* %4, align 4, !dbg !180
  ret i32 %81, !dbg !180
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !181 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlBuf, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlBuf* %2, metadata !184, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.declare(metadata i8** %3, metadata !186, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.declare(metadata i64* %4, metadata !188, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.declare(metadata i64* %5, metadata !190, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.declare(metadata i64* %6, metadata !192, metadata !DIExpression()), !dbg !193
  %10 = bitcast i64* %5 to i8*, !dbg !194
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 8, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0)), !dbg !195
  %11 = bitcast i64* %6 to i8*, !dbg !196
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 8, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0)), !dbg !197
  %12 = bitcast i64* %4 to i8*, !dbg !198
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)), !dbg !199
  %13 = load i64, i64* %5, align 8, !dbg !200
  %14 = icmp ugt i64 %13, 0, !dbg !201
  br i1 %14, label %15, label %18, !dbg !202

15:                                               ; preds = %0
  %16 = load i64, i64* %5, align 8, !dbg !203
  %17 = icmp ule i64 %16, 1024, !dbg !204
  br label %18

18:                                               ; preds = %15, %0
  %19 = phi i1 [ false, %0 ], [ %17, %15 ], !dbg !205
  %20 = zext i1 %19 to i32, !dbg !202
  %21 = sext i32 %20 to i64, !dbg !200
  call void @klee_assume(i64 noundef %21), !dbg !206
  %22 = load i64, i64* %6, align 8, !dbg !207
  %23 = load i64, i64* %5, align 8, !dbg !208
  %24 = icmp ult i64 %22, %23, !dbg !209
  %25 = zext i1 %24 to i32, !dbg !209
  %26 = sext i32 %25 to i64, !dbg !207
  call void @klee_assume(i64 noundef %26), !dbg !210
  %27 = load i64, i64* %4, align 8, !dbg !211
  %28 = icmp ugt i64 %27, 0, !dbg !212
  br i1 %28, label %29, label %32, !dbg !213

29:                                               ; preds = %18
  %30 = load i64, i64* %4, align 8, !dbg !214
  %31 = icmp ule i64 %30, 1024, !dbg !215
  br label %32

32:                                               ; preds = %29, %18
  %33 = phi i1 [ false, %18 ], [ %31, %29 ], !dbg !205
  %34 = zext i1 %33 to i32, !dbg !213
  %35 = sext i32 %34 to i64, !dbg !211
  call void @klee_assume(i64 noundef %35), !dbg !216
  %36 = load i64, i64* %5, align 8, !dbg !217
  %37 = call noalias i8* @malloc(i64 noundef %36) #7, !dbg !218
  %38 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 0, !dbg !219
  store i8* %37, i8** %38, align 8, !dbg !220
  %39 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 0, !dbg !221
  %40 = load i8*, i8** %39, align 8, !dbg !221
  %41 = icmp ne i8* %40, null, !dbg !222
  %42 = zext i1 %41 to i32, !dbg !222
  %43 = sext i32 %42 to i64, !dbg !223
  call void @klee_assume(i64 noundef %43), !dbg !224
  %44 = load i64, i64* %5, align 8, !dbg !225
  %45 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 1, !dbg !226
  store i64 %44, i64* %45, align 8, !dbg !227
  %46 = load i64, i64* %6, align 8, !dbg !228
  %47 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 2, !dbg !229
  store i64 %46, i64* %47, align 8, !dbg !230
  %48 = load i64, i64* %6, align 8, !dbg !231
  %49 = icmp ugt i64 %48, 0, !dbg !233
  br i1 %49, label %50, label %64, !dbg !234

50:                                               ; preds = %32
  call void @llvm.dbg.declare(metadata i64* %7, metadata !235, metadata !DIExpression()), !dbg !238
  store i64 0, i64* %7, align 8, !dbg !238
  br label %51, !dbg !239

51:                                               ; preds = %60, %50
  %52 = load i64, i64* %7, align 8, !dbg !240
  %53 = load i64, i64* %6, align 8, !dbg !242
  %54 = icmp ult i64 %52, %53, !dbg !243
  br i1 %54, label %55, label %63, !dbg !244

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 0, !dbg !245
  %57 = load i8*, i8** %56, align 8, !dbg !245
  %58 = load i64, i64* %7, align 8, !dbg !247
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !248
  store i8 97, i8* %59, align 1, !dbg !249
  br label %60, !dbg !250

60:                                               ; preds = %55
  %61 = load i64, i64* %7, align 8, !dbg !251
  %62 = add i64 %61, 1, !dbg !251
  store i64 %62, i64* %7, align 8, !dbg !251
  br label %51, !dbg !252, !llvm.loop !253

63:                                               ; preds = %51
  br label %64, !dbg !256

64:                                               ; preds = %63, %32
  %65 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 0, !dbg !257
  %66 = load i8*, i8** %65, align 8, !dbg !257
  %67 = load i64, i64* %6, align 8, !dbg !258
  %68 = getelementptr inbounds i8, i8* %66, i64 %67, !dbg !259
  store i8 0, i8* %68, align 1, !dbg !260
  %69 = load i64, i64* %4, align 8, !dbg !261
  %70 = call noalias i8* @malloc(i64 noundef %69) #7, !dbg !262
  store i8* %70, i8** %3, align 8, !dbg !263
  %71 = load i8*, i8** %3, align 8, !dbg !264
  %72 = icmp ne i8* %71, null, !dbg !265
  %73 = zext i1 %72 to i32, !dbg !265
  %74 = sext i32 %73 to i64, !dbg !264
  call void @klee_assume(i64 noundef %74), !dbg !266
  call void @llvm.dbg.declare(metadata i64* %8, metadata !267, metadata !DIExpression()), !dbg !269
  store i64 0, i64* %8, align 8, !dbg !269
  br label %75, !dbg !270

75:                                               ; preds = %83, %64
  %76 = load i64, i64* %8, align 8, !dbg !271
  %77 = load i64, i64* %4, align 8, !dbg !273
  %78 = icmp ult i64 %76, %77, !dbg !274
  br i1 %78, label %79, label %86, !dbg !275

79:                                               ; preds = %75
  %80 = load i8*, i8** %3, align 8, !dbg !276
  %81 = load i64, i64* %8, align 8, !dbg !278
  %82 = getelementptr inbounds i8, i8* %80, i64 %81, !dbg !276
  store i8 98, i8* %82, align 1, !dbg !279
  br label %83, !dbg !280

83:                                               ; preds = %79
  %84 = load i64, i64* %8, align 8, !dbg !281
  %85 = add i64 %84, 1, !dbg !281
  store i64 %85, i64* %8, align 8, !dbg !281
  br label %75, !dbg !282, !llvm.loop !283

86:                                               ; preds = %75
  call void @llvm.dbg.declare(metadata i32* %9, metadata !285, metadata !DIExpression()), !dbg !286
  %87 = load i8*, i8** %3, align 8, !dbg !287
  %88 = load i64, i64* %4, align 8, !dbg !288
  %89 = call i32 @xmlBufAdd(%struct._xmlBuf* noundef %2, i8* noundef %87, i64 noundef %88), !dbg !289
  store i32 %89, i32* %9, align 4, !dbg !286
  %90 = load i32, i32* %9, align 4, !dbg !290
  %91 = icmp eq i32 %90, 0, !dbg !292
  br i1 %91, label %92, label %106, !dbg !293

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 2, !dbg !294
  %94 = load i64, i64* %93, align 8, !dbg !294
  %95 = load i64, i64* %4, align 8, !dbg !294
  %96 = add i64 %94, %95, !dbg !294
  %97 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 1, !dbg !294
  %98 = load i64, i64* %97, align 8, !dbg !294
  %99 = icmp ult i64 %96, %98, !dbg !294
  br i1 %99, label %100, label %102, !dbg !294

100:                                              ; preds = %92
  br i1 true, label %101, label %102, !dbg !294

101:                                              ; preds = %100
  br label %104, !dbg !294

102:                                              ; preds = %100, %92
  %103 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([101 x i8], [101 x i8]* @.str.6, i64 0, i64 0), i32 noundef 138, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !294
  br label %104, !dbg !294

104:                                              ; preds = %102, %101
  %105 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([101 x i8], [101 x i8]* @.str.6, i64 0, i64 0), i32 noundef 139, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !296
  br label %106, !dbg !297

106:                                              ; preds = %104, %86
  %107 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 0, !dbg !298
  %108 = load i8*, i8** %107, align 8, !dbg !298
  call void @free(i8* noundef %108) #7, !dbg !299
  %109 = load i8*, i8** %3, align 8, !dbg !300
  call void @free(i8* noundef %109) #7, !dbg !301
  ret i32 0, !dbg !302
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
  call void @llvm.dbg.declare(metadata i8** %4, metadata !309, metadata !DIExpression()), !dbg !310
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !311, metadata !DIExpression()), !dbg !312
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !313, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.declare(metadata i8** %7, metadata !315, metadata !DIExpression()), !dbg !316
  %9 = load i8*, i8** %4, align 8, !dbg !317
  store i8* %9, i8** %7, align 8, !dbg !316
  call void @llvm.dbg.declare(metadata i8** %8, metadata !318, metadata !DIExpression()), !dbg !319
  %10 = load i8*, i8** %5, align 8, !dbg !320
  store i8* %10, i8** %8, align 8, !dbg !319
  br label %11, !dbg !321

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !322
  %13 = add i64 %12, -1, !dbg !322
  store i64 %13, i64* %6, align 8, !dbg !322
  %14 = icmp ugt i64 %12, 0, !dbg !323
  br i1 %14, label %15, label %21, !dbg !321

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !324
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !324
  store i8* %17, i8** %8, align 8, !dbg !324
  %18 = load i8, i8* %16, align 1, !dbg !325
  %19 = load i8*, i8** %7, align 8, !dbg !326
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !326
  store i8* %20, i8** %7, align 8, !dbg !326
  store i8 %18, i8* %19, align 1, !dbg !327
  br label %11, !dbg !321, !llvm.loop !328

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !329
  ret i8* %22, !dbg !330
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memmove(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !331 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !333, metadata !DIExpression()), !dbg !334
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !335, metadata !DIExpression()), !dbg !336
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !337, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.declare(metadata i8** %8, metadata !339, metadata !DIExpression()), !dbg !340
  %10 = load i8*, i8** %5, align 8, !dbg !341
  store i8* %10, i8** %8, align 8, !dbg !340
  call void @llvm.dbg.declare(metadata i8** %9, metadata !342, metadata !DIExpression()), !dbg !343
  %11 = load i8*, i8** %6, align 8, !dbg !344
  store i8* %11, i8** %9, align 8, !dbg !343
  %12 = load i8*, i8** %6, align 8, !dbg !345
  %13 = load i8*, i8** %5, align 8, !dbg !347
  %14 = icmp eq i8* %12, %13, !dbg !348
  br i1 %14, label %15, label %17, !dbg !349

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8, !dbg !350
  store i8* %16, i8** %4, align 8, !dbg !351
  br label %52, !dbg !351

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8, !dbg !352
  %19 = load i8*, i8** %5, align 8, !dbg !354
  %20 = icmp ugt i8* %18, %19, !dbg !355
  br i1 %20, label %21, label %31, !dbg !356

21:                                               ; preds = %17, %25
  %22 = load i64, i64* %7, align 8, !dbg !357
  %23 = add i64 %22, -1, !dbg !357
  store i64 %23, i64* %7, align 8, !dbg !357
  %24 = icmp ne i64 %22, 0, !dbg !359
  br i1 %24, label %25, label %50, !dbg !359

25:                                               ; preds = %21
  %26 = load i8*, i8** %9, align 8, !dbg !360
  %27 = getelementptr inbounds i8, i8* %26, i32 1, !dbg !360
  store i8* %27, i8** %9, align 8, !dbg !360
  %28 = load i8, i8* %26, align 1, !dbg !361
  %29 = load i8*, i8** %8, align 8, !dbg !362
  %30 = getelementptr inbounds i8, i8* %29, i32 1, !dbg !362
  store i8* %30, i8** %8, align 8, !dbg !362
  store i8 %28, i8* %29, align 1, !dbg !363
  br label %21, !dbg !359, !llvm.loop !364

31:                                               ; preds = %17
  %32 = load i64, i64* %7, align 8, !dbg !365
  %33 = sub i64 %32, 1, !dbg !367
  %34 = load i8*, i8** %8, align 8, !dbg !368
  %35 = getelementptr inbounds i8, i8* %34, i64 %33, !dbg !368
  store i8* %35, i8** %8, align 8, !dbg !368
  %36 = load i64, i64* %7, align 8, !dbg !369
  %37 = sub i64 %36, 1, !dbg !370
  %38 = load i8*, i8** %9, align 8, !dbg !371
  %39 = getelementptr inbounds i8, i8* %38, i64 %37, !dbg !371
  store i8* %39, i8** %9, align 8, !dbg !371
  br label %40, !dbg !372

40:                                               ; preds = %44, %31
  %41 = load i64, i64* %7, align 8, !dbg !373
  %42 = add i64 %41, -1, !dbg !373
  store i64 %42, i64* %7, align 8, !dbg !373
  %43 = icmp ne i64 %41, 0, !dbg !372
  br i1 %43, label %44, label %50, !dbg !372

44:                                               ; preds = %40
  %45 = load i8*, i8** %9, align 8, !dbg !374
  %46 = getelementptr inbounds i8, i8* %45, i32 -1, !dbg !374
  store i8* %46, i8** %9, align 8, !dbg !374
  %47 = load i8, i8* %45, align 1, !dbg !375
  %48 = load i8*, i8** %8, align 8, !dbg !376
  %49 = getelementptr inbounds i8, i8* %48, i32 -1, !dbg !376
  store i8* %49, i8** %8, align 8, !dbg !376
  store i8 %47, i8* %48, align 1, !dbg !377
  br label %40, !dbg !372, !llvm.loop !378

50:                                               ; preds = %40, %21
  %51 = load i8*, i8** %5, align 8, !dbg !379
  store i8* %51, i8** %4, align 8, !dbg !380
  br label %52, !dbg !380

52:                                               ; preds = %50, %15
  %53 = load i8*, i8** %4, align 8, !dbg !381
  ret i8* %53, !dbg !381
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15, !15, !15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/036_buf.c_823_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "193ba0e9432e1d1241be64397ddbb6cb")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = distinct !DICompileUnit(language: DW_LANG_C99, file: !5, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!5 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
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
!16 = distinct !DISubprogram(name: "xmlBufMemoryError", scope: !1, file: !1, line: 21, type: !17, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!17 = !DISubroutineType(types: !18)
!18 = !{null, !19, !31}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBuf", file: !1, line: 10, baseType: !21)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlBuf", file: !1, line: 11, size: 192, elements: !22)
!22 = !{!23, !26, !30}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !21, file: !1, line: 12, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !21, file: !1, line: 13, baseType: !27, size: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !28, line: 46, baseType: !29)
!28 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!29 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !21, file: !1, line: 14, baseType: !27, size: 64, offset: 128)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!33 = !{}
!34 = !DILocalVariable(name: "buf", arg: 1, scope: !16, file: !1, line: 21, type: !19)
!35 = !DILocation(line: 21, column: 32, scope: !16)
!36 = !DILocalVariable(name: "msg", arg: 2, scope: !16, file: !1, line: 21, type: !31)
!37 = !DILocation(line: 21, column: 49, scope: !16)
!38 = !DILocation(line: 22, column: 11, scope: !16)
!39 = !DILocation(line: 23, column: 11, scope: !16)
!40 = !DILocation(line: 24, column: 1, scope: !16)
!41 = distinct !DISubprogram(name: "xmlBufResize", scope: !1, file: !1, line: 27, type: !42, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !19, !27}
!44 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!45 = !DILocalVariable(name: "buf", arg: 1, scope: !41, file: !1, line: 27, type: !19)
!46 = !DILocation(line: 27, column: 26, scope: !41)
!47 = !DILocalVariable(name: "size", arg: 2, scope: !41, file: !1, line: 27, type: !27)
!48 = !DILocation(line: 27, column: 38, scope: !41)
!49 = !DILocation(line: 28, column: 9, scope: !50)
!50 = distinct !DILexicalBlock(scope: !41, file: !1, line: 28, column: 9)
!51 = !DILocation(line: 28, column: 17, scope: !50)
!52 = !DILocation(line: 28, column: 22, scope: !50)
!53 = !DILocation(line: 28, column: 14, scope: !50)
!54 = !DILocation(line: 28, column: 9, scope: !41)
!55 = !DILocation(line: 29, column: 9, scope: !56)
!56 = distinct !DILexicalBlock(scope: !50, file: !1, line: 28, column: 28)
!57 = !DILocalVariable(name: "new_content", scope: !41, file: !1, line: 32, type: !24)
!58 = !DILocation(line: 32, column: 11, scope: !41)
!59 = !DILocation(line: 32, column: 32, scope: !41)
!60 = !DILocation(line: 32, column: 25, scope: !41)
!61 = !DILocation(line: 33, column: 10, scope: !62)
!62 = distinct !DILexicalBlock(scope: !41, file: !1, line: 33, column: 9)
!63 = !DILocation(line: 33, column: 9, scope: !41)
!64 = !DILocation(line: 34, column: 9, scope: !65)
!65 = distinct !DILexicalBlock(scope: !62, file: !1, line: 33, column: 23)
!66 = !DILocation(line: 37, column: 9, scope: !67)
!67 = distinct !DILexicalBlock(scope: !41, file: !1, line: 37, column: 9)
!68 = !DILocation(line: 37, column: 14, scope: !67)
!69 = !DILocation(line: 37, column: 22, scope: !67)
!70 = !DILocation(line: 37, column: 25, scope: !67)
!71 = !DILocation(line: 37, column: 30, scope: !67)
!72 = !DILocation(line: 37, column: 34, scope: !67)
!73 = !DILocation(line: 37, column: 9, scope: !41)
!74 = !DILocation(line: 38, column: 16, scope: !75)
!75 = distinct !DILexicalBlock(scope: !67, file: !1, line: 37, column: 39)
!76 = !DILocation(line: 38, column: 29, scope: !75)
!77 = !DILocation(line: 38, column: 34, scope: !75)
!78 = !DILocation(line: 38, column: 43, scope: !75)
!79 = !DILocation(line: 38, column: 48, scope: !75)
!80 = !DILocation(line: 38, column: 9, scope: !75)
!81 = !DILocation(line: 39, column: 5, scope: !75)
!82 = !DILocation(line: 40, column: 10, scope: !41)
!83 = !DILocation(line: 40, column: 15, scope: !41)
!84 = !DILocation(line: 40, column: 5, scope: !41)
!85 = !DILocation(line: 41, column: 20, scope: !41)
!86 = !DILocation(line: 41, column: 5, scope: !41)
!87 = !DILocation(line: 41, column: 10, scope: !41)
!88 = !DILocation(line: 41, column: 18, scope: !41)
!89 = !DILocation(line: 42, column: 17, scope: !41)
!90 = !DILocation(line: 42, column: 5, scope: !41)
!91 = !DILocation(line: 42, column: 10, scope: !41)
!92 = !DILocation(line: 42, column: 15, scope: !41)
!93 = !DILocation(line: 43, column: 5, scope: !41)
!94 = !DILocation(line: 44, column: 1, scope: !41)
!95 = distinct !DISubprogram(name: "xmlBufAdd", scope: !1, file: !1, line: 47, type: !96, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!96 = !DISubroutineType(types: !97)
!97 = !{!44, !19, !31, !27}
!98 = !DILocalVariable(name: "buf", arg: 1, scope: !95, file: !1, line: 47, type: !19)
!99 = !DILocation(line: 47, column: 23, scope: !95)
!100 = !DILocalVariable(name: "str", arg: 2, scope: !95, file: !1, line: 47, type: !31)
!101 = !DILocation(line: 47, column: 40, scope: !95)
!102 = !DILocalVariable(name: "len", arg: 3, scope: !95, file: !1, line: 47, type: !27)
!103 = !DILocation(line: 47, column: 52, scope: !95)
!104 = !DILocalVariable(name: "needSize", scope: !95, file: !1, line: 48, type: !27)
!105 = !DILocation(line: 48, column: 12, scope: !95)
!106 = !DILocation(line: 50, column: 9, scope: !107)
!107 = distinct !DILexicalBlock(scope: !95, file: !1, line: 50, column: 9)
!108 = !DILocation(line: 50, column: 13, scope: !107)
!109 = !DILocation(line: 50, column: 21, scope: !107)
!110 = !DILocation(line: 50, column: 24, scope: !107)
!111 = !DILocation(line: 50, column: 28, scope: !107)
!112 = !DILocation(line: 50, column: 9, scope: !95)
!113 = !DILocation(line: 51, column: 9, scope: !114)
!114 = distinct !DILexicalBlock(scope: !107, file: !1, line: 50, column: 37)
!115 = !DILocation(line: 54, column: 9, scope: !116)
!116 = distinct !DILexicalBlock(scope: !95, file: !1, line: 54, column: 9)
!117 = !DILocation(line: 54, column: 13, scope: !116)
!118 = !DILocation(line: 54, column: 9, scope: !95)
!119 = !DILocation(line: 55, column: 9, scope: !120)
!120 = distinct !DILexicalBlock(scope: !116, file: !1, line: 54, column: 19)
!121 = !DILocation(line: 58, column: 9, scope: !122)
!122 = distinct !DILexicalBlock(scope: !95, file: !1, line: 58, column: 9)
!123 = !DILocation(line: 58, column: 14, scope: !122)
!124 = !DILocation(line: 58, column: 22, scope: !122)
!125 = !DILocation(line: 58, column: 9, scope: !95)
!126 = !DILocation(line: 59, column: 9, scope: !127)
!127 = distinct !DILexicalBlock(scope: !122, file: !1, line: 58, column: 31)
!128 = !DILocation(line: 62, column: 9, scope: !129)
!129 = distinct !DILexicalBlock(scope: !95, file: !1, line: 62, column: 9)
!130 = !DILocation(line: 62, column: 14, scope: !129)
!131 = !DILocation(line: 62, column: 20, scope: !129)
!132 = !DILocation(line: 62, column: 18, scope: !129)
!133 = !DILocation(line: 62, column: 24, scope: !129)
!134 = !DILocation(line: 62, column: 30, scope: !129)
!135 = !DILocation(line: 62, column: 35, scope: !129)
!136 = !DILocation(line: 62, column: 28, scope: !129)
!137 = !DILocation(line: 62, column: 9, scope: !95)
!138 = !DILocation(line: 63, column: 9, scope: !139)
!139 = distinct !DILexicalBlock(scope: !129, file: !1, line: 62, column: 40)
!140 = !DILocation(line: 66, column: 16, scope: !95)
!141 = !DILocation(line: 66, column: 21, scope: !95)
!142 = !DILocation(line: 66, column: 27, scope: !95)
!143 = !DILocation(line: 66, column: 25, scope: !95)
!144 = !DILocation(line: 66, column: 31, scope: !95)
!145 = !DILocation(line: 66, column: 14, scope: !95)
!146 = !DILocation(line: 67, column: 9, scope: !147)
!147 = distinct !DILexicalBlock(scope: !95, file: !1, line: 67, column: 9)
!148 = !DILocation(line: 67, column: 20, scope: !147)
!149 = !DILocation(line: 67, column: 25, scope: !147)
!150 = !DILocation(line: 67, column: 18, scope: !147)
!151 = !DILocation(line: 67, column: 9, scope: !95)
!152 = !DILocation(line: 68, column: 27, scope: !153)
!153 = distinct !DILexicalBlock(scope: !154, file: !1, line: 68, column: 13)
!154 = distinct !DILexicalBlock(scope: !147, file: !1, line: 67, column: 31)
!155 = !DILocation(line: 68, column: 32, scope: !153)
!156 = !DILocation(line: 68, column: 14, scope: !153)
!157 = !DILocation(line: 68, column: 13, scope: !154)
!158 = !DILocation(line: 69, column: 31, scope: !159)
!159 = distinct !DILexicalBlock(scope: !153, file: !1, line: 68, column: 43)
!160 = !DILocation(line: 69, column: 13, scope: !159)
!161 = !DILocation(line: 70, column: 13, scope: !159)
!162 = !DILocation(line: 72, column: 5, scope: !154)
!163 = !DILocation(line: 75, column: 14, scope: !95)
!164 = !DILocation(line: 75, column: 19, scope: !95)
!165 = !DILocation(line: 75, column: 27, scope: !95)
!166 = !DILocation(line: 75, column: 32, scope: !95)
!167 = !DILocation(line: 75, column: 38, scope: !95)
!168 = !DILocation(line: 75, column: 43, scope: !95)
!169 = !DILocation(line: 75, column: 5, scope: !95)
!170 = !DILocation(line: 76, column: 17, scope: !95)
!171 = !DILocation(line: 76, column: 5, scope: !95)
!172 = !DILocation(line: 76, column: 10, scope: !95)
!173 = !DILocation(line: 76, column: 14, scope: !95)
!174 = !DILocation(line: 77, column: 5, scope: !95)
!175 = !DILocation(line: 77, column: 10, scope: !95)
!176 = !DILocation(line: 77, column: 18, scope: !95)
!177 = !DILocation(line: 77, column: 23, scope: !95)
!178 = !DILocation(line: 77, column: 28, scope: !95)
!179 = !DILocation(line: 79, column: 5, scope: !95)
!180 = !DILocation(line: 80, column: 1, scope: !95)
!181 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 82, type: !182, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!182 = !DISubroutineType(types: !183)
!183 = !{!44}
!184 = !DILocalVariable(name: "buf", scope: !181, file: !1, line: 83, type: !20)
!185 = !DILocation(line: 83, column: 12, scope: !181)
!186 = !DILocalVariable(name: "str", scope: !181, file: !1, line: 84, type: !24)
!187 = !DILocation(line: 84, column: 11, scope: !181)
!188 = !DILocalVariable(name: "len", scope: !181, file: !1, line: 85, type: !27)
!189 = !DILocation(line: 85, column: 12, scope: !181)
!190 = !DILocalVariable(name: "initial_size", scope: !181, file: !1, line: 86, type: !27)
!191 = !DILocation(line: 86, column: 12, scope: !181)
!192 = !DILocalVariable(name: "initial_use", scope: !181, file: !1, line: 87, type: !27)
!193 = !DILocation(line: 87, column: 12, scope: !181)
!194 = !DILocation(line: 90, column: 24, scope: !181)
!195 = !DILocation(line: 90, column: 5, scope: !181)
!196 = !DILocation(line: 91, column: 24, scope: !181)
!197 = !DILocation(line: 91, column: 5, scope: !181)
!198 = !DILocation(line: 92, column: 24, scope: !181)
!199 = !DILocation(line: 92, column: 5, scope: !181)
!200 = !DILocation(line: 95, column: 17, scope: !181)
!201 = !DILocation(line: 95, column: 30, scope: !181)
!202 = !DILocation(line: 95, column: 34, scope: !181)
!203 = !DILocation(line: 95, column: 37, scope: !181)
!204 = !DILocation(line: 95, column: 50, scope: !181)
!205 = !DILocation(line: 0, scope: !181)
!206 = !DILocation(line: 95, column: 5, scope: !181)
!207 = !DILocation(line: 96, column: 17, scope: !181)
!208 = !DILocation(line: 96, column: 31, scope: !181)
!209 = !DILocation(line: 96, column: 29, scope: !181)
!210 = !DILocation(line: 96, column: 5, scope: !181)
!211 = !DILocation(line: 97, column: 17, scope: !181)
!212 = !DILocation(line: 97, column: 21, scope: !181)
!213 = !DILocation(line: 97, column: 25, scope: !181)
!214 = !DILocation(line: 97, column: 28, scope: !181)
!215 = !DILocation(line: 97, column: 32, scope: !181)
!216 = !DILocation(line: 97, column: 5, scope: !181)
!217 = !DILocation(line: 100, column: 26, scope: !181)
!218 = !DILocation(line: 100, column: 19, scope: !181)
!219 = !DILocation(line: 100, column: 9, scope: !181)
!220 = !DILocation(line: 100, column: 17, scope: !181)
!221 = !DILocation(line: 101, column: 21, scope: !181)
!222 = !DILocation(line: 101, column: 29, scope: !181)
!223 = !DILocation(line: 101, column: 17, scope: !181)
!224 = !DILocation(line: 101, column: 5, scope: !181)
!225 = !DILocation(line: 102, column: 16, scope: !181)
!226 = !DILocation(line: 102, column: 9, scope: !181)
!227 = !DILocation(line: 102, column: 14, scope: !181)
!228 = !DILocation(line: 103, column: 15, scope: !181)
!229 = !DILocation(line: 103, column: 9, scope: !181)
!230 = !DILocation(line: 103, column: 13, scope: !181)
!231 = !DILocation(line: 106, column: 9, scope: !232)
!232 = distinct !DILexicalBlock(scope: !181, file: !1, line: 106, column: 9)
!233 = !DILocation(line: 106, column: 21, scope: !232)
!234 = !DILocation(line: 106, column: 9, scope: !181)
!235 = !DILocalVariable(name: "i", scope: !236, file: !1, line: 107, type: !27)
!236 = distinct !DILexicalBlock(scope: !237, file: !1, line: 107, column: 9)
!237 = distinct !DILexicalBlock(scope: !232, file: !1, line: 106, column: 26)
!238 = !DILocation(line: 107, column: 21, scope: !236)
!239 = !DILocation(line: 107, column: 14, scope: !236)
!240 = !DILocation(line: 107, column: 28, scope: !241)
!241 = distinct !DILexicalBlock(scope: !236, file: !1, line: 107, column: 9)
!242 = !DILocation(line: 107, column: 32, scope: !241)
!243 = !DILocation(line: 107, column: 30, scope: !241)
!244 = !DILocation(line: 107, column: 9, scope: !236)
!245 = !DILocation(line: 108, column: 17, scope: !246)
!246 = distinct !DILexicalBlock(scope: !241, file: !1, line: 107, column: 50)
!247 = !DILocation(line: 108, column: 25, scope: !246)
!248 = !DILocation(line: 108, column: 13, scope: !246)
!249 = !DILocation(line: 108, column: 28, scope: !246)
!250 = !DILocation(line: 109, column: 9, scope: !246)
!251 = !DILocation(line: 107, column: 46, scope: !241)
!252 = !DILocation(line: 107, column: 9, scope: !241)
!253 = distinct !{!253, !244, !254, !255}
!254 = !DILocation(line: 109, column: 9, scope: !236)
!255 = !{!"llvm.loop.mustprogress"}
!256 = !DILocation(line: 110, column: 5, scope: !237)
!257 = !DILocation(line: 111, column: 9, scope: !181)
!258 = !DILocation(line: 111, column: 17, scope: !181)
!259 = !DILocation(line: 111, column: 5, scope: !181)
!260 = !DILocation(line: 111, column: 30, scope: !181)
!261 = !DILocation(line: 114, column: 18, scope: !181)
!262 = !DILocation(line: 114, column: 11, scope: !181)
!263 = !DILocation(line: 114, column: 9, scope: !181)
!264 = !DILocation(line: 115, column: 17, scope: !181)
!265 = !DILocation(line: 115, column: 21, scope: !181)
!266 = !DILocation(line: 115, column: 5, scope: !181)
!267 = !DILocalVariable(name: "i", scope: !268, file: !1, line: 116, type: !27)
!268 = distinct !DILexicalBlock(scope: !181, file: !1, line: 116, column: 5)
!269 = !DILocation(line: 116, column: 17, scope: !268)
!270 = !DILocation(line: 116, column: 10, scope: !268)
!271 = !DILocation(line: 116, column: 24, scope: !272)
!272 = distinct !DILexicalBlock(scope: !268, file: !1, line: 116, column: 5)
!273 = !DILocation(line: 116, column: 28, scope: !272)
!274 = !DILocation(line: 116, column: 26, scope: !272)
!275 = !DILocation(line: 116, column: 5, scope: !268)
!276 = !DILocation(line: 117, column: 9, scope: !277)
!277 = distinct !DILexicalBlock(scope: !272, file: !1, line: 116, column: 38)
!278 = !DILocation(line: 117, column: 13, scope: !277)
!279 = !DILocation(line: 117, column: 16, scope: !277)
!280 = !DILocation(line: 118, column: 5, scope: !277)
!281 = !DILocation(line: 116, column: 34, scope: !272)
!282 = !DILocation(line: 116, column: 5, scope: !272)
!283 = distinct !{!283, !275, !284, !255}
!284 = !DILocation(line: 118, column: 5, scope: !268)
!285 = !DILocalVariable(name: "result", scope: !181, file: !1, line: 121, type: !44)
!286 = !DILocation(line: 121, column: 9, scope: !181)
!287 = !DILocation(line: 121, column: 34, scope: !181)
!288 = !DILocation(line: 121, column: 39, scope: !181)
!289 = !DILocation(line: 121, column: 18, scope: !181)
!290 = !DILocation(line: 136, column: 9, scope: !291)
!291 = distinct !DILexicalBlock(scope: !181, file: !1, line: 136, column: 9)
!292 = !DILocation(line: 136, column: 16, scope: !291)
!293 = !DILocation(line: 136, column: 9, scope: !181)
!294 = !DILocation(line: 138, column: 9, scope: !295)
!295 = distinct !DILexicalBlock(scope: !291, file: !1, line: 136, column: 22)
!296 = !DILocation(line: 139, column: 9, scope: !295)
!297 = !DILocation(line: 140, column: 5, scope: !295)
!298 = !DILocation(line: 143, column: 14, scope: !181)
!299 = !DILocation(line: 143, column: 5, scope: !181)
!300 = !DILocation(line: 144, column: 10, scope: !181)
!301 = !DILocation(line: 144, column: 5, scope: !181)
!302 = !DILocation(line: 146, column: 5, scope: !181)
!303 = distinct !DISubprogram(name: "memcpy", scope: !304, file: !304, line: 12, type: !305, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !33)
!304 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!305 = !DISubroutineType(types: !306)
!306 = !{!3, !3, !307, !27}
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!309 = !DILocalVariable(name: "destaddr", arg: 1, scope: !303, file: !304, line: 12, type: !3)
!310 = !DILocation(line: 12, column: 20, scope: !303)
!311 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !303, file: !304, line: 12, type: !307)
!312 = !DILocation(line: 12, column: 42, scope: !303)
!313 = !DILocalVariable(name: "len", arg: 3, scope: !303, file: !304, line: 12, type: !27)
!314 = !DILocation(line: 12, column: 58, scope: !303)
!315 = !DILocalVariable(name: "dest", scope: !303, file: !304, line: 13, type: !24)
!316 = !DILocation(line: 13, column: 9, scope: !303)
!317 = !DILocation(line: 13, column: 16, scope: !303)
!318 = !DILocalVariable(name: "src", scope: !303, file: !304, line: 14, type: !31)
!319 = !DILocation(line: 14, column: 15, scope: !303)
!320 = !DILocation(line: 14, column: 21, scope: !303)
!321 = !DILocation(line: 16, column: 3, scope: !303)
!322 = !DILocation(line: 16, column: 13, scope: !303)
!323 = !DILocation(line: 16, column: 16, scope: !303)
!324 = !DILocation(line: 17, column: 19, scope: !303)
!325 = !DILocation(line: 17, column: 15, scope: !303)
!326 = !DILocation(line: 17, column: 10, scope: !303)
!327 = !DILocation(line: 17, column: 13, scope: !303)
!328 = distinct !{!328, !321, !324, !255}
!329 = !DILocation(line: 18, column: 10, scope: !303)
!330 = !DILocation(line: 18, column: 3, scope: !303)
!331 = distinct !DISubprogram(name: "memmove", scope: !332, file: !332, line: 12, type: !305, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !33)
!332 = !DIFile(filename: "runtime/Freestanding/memmove.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "6cd27189cdce56ce74ae860a315e13f2")
!333 = !DILocalVariable(name: "dst", arg: 1, scope: !331, file: !332, line: 12, type: !3)
!334 = !DILocation(line: 12, column: 21, scope: !331)
!335 = !DILocalVariable(name: "src", arg: 2, scope: !331, file: !332, line: 12, type: !307)
!336 = !DILocation(line: 12, column: 38, scope: !331)
!337 = !DILocalVariable(name: "count", arg: 3, scope: !331, file: !332, line: 12, type: !27)
!338 = !DILocation(line: 12, column: 50, scope: !331)
!339 = !DILocalVariable(name: "a", scope: !331, file: !332, line: 13, type: !24)
!340 = !DILocation(line: 13, column: 9, scope: !331)
!341 = !DILocation(line: 13, column: 13, scope: !331)
!342 = !DILocalVariable(name: "b", scope: !331, file: !332, line: 14, type: !31)
!343 = !DILocation(line: 14, column: 15, scope: !331)
!344 = !DILocation(line: 14, column: 19, scope: !331)
!345 = !DILocation(line: 16, column: 7, scope: !346)
!346 = distinct !DILexicalBlock(scope: !331, file: !332, line: 16, column: 7)
!347 = !DILocation(line: 16, column: 14, scope: !346)
!348 = !DILocation(line: 16, column: 11, scope: !346)
!349 = !DILocation(line: 16, column: 7, scope: !331)
!350 = !DILocation(line: 17, column: 12, scope: !346)
!351 = !DILocation(line: 17, column: 5, scope: !346)
!352 = !DILocation(line: 19, column: 7, scope: !353)
!353 = distinct !DILexicalBlock(scope: !331, file: !332, line: 19, column: 7)
!354 = !DILocation(line: 19, column: 13, scope: !353)
!355 = !DILocation(line: 19, column: 11, scope: !353)
!356 = !DILocation(line: 19, column: 7, scope: !331)
!357 = !DILocation(line: 20, column: 17, scope: !358)
!358 = distinct !DILexicalBlock(scope: !353, file: !332, line: 19, column: 18)
!359 = !DILocation(line: 20, column: 5, scope: !358)
!360 = !DILocation(line: 21, column: 16, scope: !358)
!361 = !DILocation(line: 21, column: 14, scope: !358)
!362 = !DILocation(line: 21, column: 9, scope: !358)
!363 = !DILocation(line: 21, column: 12, scope: !358)
!364 = distinct !{!364, !359, !360, !255}
!365 = !DILocation(line: 23, column: 10, scope: !366)
!366 = distinct !DILexicalBlock(scope: !353, file: !332, line: 22, column: 10)
!367 = !DILocation(line: 23, column: 16, scope: !366)
!368 = !DILocation(line: 23, column: 7, scope: !366)
!369 = !DILocation(line: 24, column: 10, scope: !366)
!370 = !DILocation(line: 24, column: 16, scope: !366)
!371 = !DILocation(line: 24, column: 7, scope: !366)
!372 = !DILocation(line: 25, column: 5, scope: !366)
!373 = !DILocation(line: 25, column: 17, scope: !366)
!374 = !DILocation(line: 26, column: 16, scope: !366)
!375 = !DILocation(line: 26, column: 14, scope: !366)
!376 = !DILocation(line: 26, column: 9, scope: !366)
!377 = !DILocation(line: 26, column: 12, scope: !366)
!378 = distinct !{!378, !372, !374, !255}
!379 = !DILocation(line: 29, column: 10, scope: !331)
!380 = !DILocation(line: 29, column: 3, scope: !331)
!381 = !DILocation(line: 30, column: 1, scope: !331)

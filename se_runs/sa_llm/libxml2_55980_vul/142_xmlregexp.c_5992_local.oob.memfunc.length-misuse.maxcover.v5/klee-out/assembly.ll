; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/142_xmlregexp.c_5992_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/142_xmlregexp.c_5992_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRegAtom = type { i32, i8*, i8*, i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"lenp\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"lenn\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"token\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"token2\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"(lenn + lenp + 1 < (lenn + lenp + 2)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_55980_vul/142_xmlregexp.c_5992_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"not %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlRegFreeAtom(%struct._xmlRegAtom* noundef %0) #0 !dbg !33 {
  %2 = alloca %struct._xmlRegAtom*, align 8
  store %struct._xmlRegAtom* %0, %struct._xmlRegAtom** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRegAtom** %2, metadata !37, metadata !DIExpression()), !dbg !38
  %3 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %2, align 8, !dbg !39
  %4 = icmp eq %struct._xmlRegAtom* %3, null, !dbg !41
  br i1 %4, label %5, label %6, !dbg !42

5:                                                ; preds = %1
  br label %27, !dbg !43

6:                                                ; preds = %1
  %7 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %2, align 8, !dbg !44
  %8 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %7, i32 0, i32 1, !dbg !46
  %9 = load i8*, i8** %8, align 8, !dbg !46
  %10 = icmp ne i8* %9, null, !dbg !47
  br i1 %10, label %11, label %15, !dbg !48

11:                                               ; preds = %6
  %12 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %2, align 8, !dbg !49
  %13 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %12, i32 0, i32 1, !dbg !50
  %14 = load i8*, i8** %13, align 8, !dbg !50
  call void @free(i8* noundef %14) #8, !dbg !51
  br label %15, !dbg !51

15:                                               ; preds = %11, %6
  %16 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %2, align 8, !dbg !52
  %17 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %16, i32 0, i32 2, !dbg !54
  %18 = load i8*, i8** %17, align 8, !dbg !54
  %19 = icmp ne i8* %18, null, !dbg !55
  br i1 %19, label %20, label %24, !dbg !56

20:                                               ; preds = %15
  %21 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %2, align 8, !dbg !57
  %22 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %21, i32 0, i32 2, !dbg !58
  %23 = load i8*, i8** %22, align 8, !dbg !58
  call void @free(i8* noundef %23) #8, !dbg !59
  br label %24, !dbg !59

24:                                               ; preds = %20, %15
  %25 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %2, align 8, !dbg !60
  %26 = bitcast %struct._xmlRegAtom* %25 to i8*, !dbg !60
  call void @free(i8* noundef %26) #8, !dbg !61
  br label %27, !dbg !62

27:                                               ; preds = %24, %5
  ret void, !dbg !62
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMallocAtomic(i64 noundef %0) #0 !dbg !63 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !69, metadata !DIExpression()), !dbg !70
  %3 = load i64, i64* %2, align 8, !dbg !71
  %4 = call noalias i8* @malloc(i64 noundef %3) #8, !dbg !72
  ret i8* %4, !dbg !73
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlStrdup(i8* noundef %0) #0 !dbg !74 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !79, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.declare(metadata i8** %4, metadata !81, metadata !DIExpression()), !dbg !82
  %5 = load i8*, i8** %3, align 8, !dbg !83
  %6 = icmp eq i8* %5, null, !dbg !85
  br i1 %6, label %7, label %8, !dbg !86

7:                                                ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !87
  br label %21, !dbg !87

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8, !dbg !88
  %10 = call i64 @strlen(i8* noundef %9) #9, !dbg !89
  %11 = add i64 %10, 1, !dbg !90
  %12 = call noalias i8* @malloc(i64 noundef %11) #8, !dbg !91
  store i8* %12, i8** %4, align 8, !dbg !92
  %13 = load i8*, i8** %4, align 8, !dbg !93
  %14 = icmp eq i8* %13, null, !dbg !95
  br i1 %14, label %15, label %16, !dbg !96

15:                                               ; preds = %8
  store i8* null, i8** %2, align 8, !dbg !97
  br label %21, !dbg !97

16:                                               ; preds = %8
  %17 = load i8*, i8** %4, align 8, !dbg !98
  %18 = load i8*, i8** %3, align 8, !dbg !99
  %19 = call i8* @strcpy(i8* noundef %17, i8* noundef %18) #8, !dbg !100
  %20 = load i8*, i8** %4, align 8, !dbg !101
  store i8* %20, i8** %2, align 8, !dbg !102
  br label %21, !dbg !102

21:                                               ; preds = %16, %15, %7
  %22 = load i8*, i8** %2, align 8, !dbg !103
  ret i8* %22, !dbg !103
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !104 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlRegAtom*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [256 x i8], align 16
  %5 = alloca [256 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [200 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlRegAtom** %2, metadata !107, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.declare(metadata i8** %3, metadata !109, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.declare(metadata [256 x i8]* %4, metadata !111, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.declare(metadata [256 x i8]* %5, metadata !116, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.declare(metadata i32* %6, metadata !118, metadata !DIExpression()), !dbg !119
  call void @llvm.dbg.declare(metadata i32* %7, metadata !120, metadata !DIExpression()), !dbg !121
  call void @llvm.dbg.declare(metadata [200 x i8]* %8, metadata !122, metadata !DIExpression()), !dbg !126
  %9 = call noalias i8* @malloc(i64 noundef 48) #8, !dbg !127
  %10 = bitcast i8* %9 to %struct._xmlRegAtom*, !dbg !128
  store %struct._xmlRegAtom* %10, %struct._xmlRegAtom** %2, align 8, !dbg !129
  %11 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %2, align 8, !dbg !130
  %12 = icmp eq %struct._xmlRegAtom* %11, null, !dbg !132
  br i1 %12, label %13, label %14, !dbg !133

13:                                               ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !134
  br label %113, !dbg !134

14:                                               ; preds = %0
  %15 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %2, align 8, !dbg !135
  %16 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %15, i32 0, i32 1, !dbg !136
  store i8* null, i8** %16, align 8, !dbg !137
  %17 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %2, align 8, !dbg !138
  %18 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %17, i32 0, i32 2, !dbg !139
  store i8* null, i8** %18, align 8, !dbg !140
  %19 = bitcast i32* %6 to i8*, !dbg !141
  call void @klee_make_symbolic(i8* noundef %19, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !142
  %20 = bitcast i32* %7 to i8*, !dbg !143
  call void @klee_make_symbolic(i8* noundef %20, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !144
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !145
  call void @klee_make_symbolic(i8* noundef %21, i64 noundef 256, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)), !dbg !146
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !147
  call void @klee_make_symbolic(i8* noundef %22, i64 noundef 256, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)), !dbg !148
  %23 = load i32, i32* %6, align 4, !dbg !149
  %24 = icmp sge i32 %23, 0, !dbg !150
  br i1 %24, label %25, label %28, !dbg !151

25:                                               ; preds = %14
  %26 = load i32, i32* %6, align 4, !dbg !152
  %27 = icmp slt i32 %26, 256, !dbg !153
  br label %28

28:                                               ; preds = %25, %14
  %29 = phi i1 [ false, %14 ], [ %27, %25 ], !dbg !154
  %30 = zext i1 %29 to i32, !dbg !151
  %31 = sext i32 %30 to i64, !dbg !149
  call void @klee_assume(i64 noundef %31), !dbg !155
  %32 = load i32, i32* %7, align 4, !dbg !156
  %33 = icmp sge i32 %32, 0, !dbg !157
  br i1 %33, label %34, label %37, !dbg !158

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4, !dbg !159
  %36 = icmp slt i32 %35, 256, !dbg !160
  br label %37

37:                                               ; preds = %34, %28
  %38 = phi i1 [ false, %28 ], [ %36, %34 ], !dbg !154
  %39 = zext i1 %38 to i32, !dbg !158
  %40 = sext i32 %39 to i64, !dbg !156
  call void @klee_assume(i64 noundef %40), !dbg !161
  %41 = load i32, i32* %6, align 4, !dbg !162
  %42 = sext i32 %41 to i64, !dbg !163
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 %42, !dbg !163
  store i8 0, i8* %43, align 1, !dbg !164
  %44 = load i32, i32* %7, align 4, !dbg !165
  %45 = sext i32 %44 to i64, !dbg !166
  %46 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 %45, !dbg !166
  store i8 0, i8* %46, align 1, !dbg !167
  %47 = load i32, i32* %7, align 4, !dbg !168
  %48 = load i32, i32* %6, align 4, !dbg !169
  %49 = add nsw i32 %47, %48, !dbg !170
  %50 = add nsw i32 %49, 2, !dbg !171
  %51 = sext i32 %50 to i64, !dbg !168
  %52 = call i8* @xmlMallocAtomic(i64 noundef %51), !dbg !172
  store i8* %52, i8** %3, align 8, !dbg !173
  %53 = load i8*, i8** %3, align 8, !dbg !174
  %54 = icmp eq i8* %53, null, !dbg !176
  br i1 %54, label %55, label %57, !dbg !177

55:                                               ; preds = %37
  %56 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %2, align 8, !dbg !178
  call void @xmlRegFreeAtom(%struct._xmlRegAtom* noundef %56), !dbg !180
  store i32 0, i32* %1, align 4, !dbg !181
  br label %113, !dbg !181

57:                                               ; preds = %37
  %58 = load i8*, i8** %3, align 8, !dbg !182
  %59 = getelementptr inbounds i8, i8* %58, i64 0, !dbg !182
  %60 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !183
  %61 = load i32, i32* %6, align 4, !dbg !184
  %62 = sext i32 %61 to i64, !dbg !184
  %63 = call i8* @memcpy(i8* %59, i8* %60, i64 %62), !dbg !183
  %64 = load i8*, i8** %3, align 8, !dbg !185
  %65 = load i32, i32* %6, align 4, !dbg !186
  %66 = sext i32 %65 to i64, !dbg !185
  %67 = getelementptr inbounds i8, i8* %64, i64 %66, !dbg !185
  store i8 124, i8* %67, align 1, !dbg !187
  %68 = load i32, i32* %7, align 4, !dbg !188
  %69 = load i32, i32* %6, align 4, !dbg !188
  %70 = add nsw i32 %68, %69, !dbg !188
  %71 = add nsw i32 %70, 1, !dbg !188
  %72 = load i32, i32* %7, align 4, !dbg !188
  %73 = load i32, i32* %6, align 4, !dbg !188
  %74 = add nsw i32 %72, %73, !dbg !188
  %75 = add nsw i32 %74, 2, !dbg !188
  %76 = icmp slt i32 %71, %75, !dbg !188
  br i1 %76, label %77, label %79, !dbg !188

77:                                               ; preds = %57
  br i1 true, label %78, label %79, !dbg !188

78:                                               ; preds = %77
  br label %81, !dbg !188

79:                                               ; preds = %77, %57
  %80 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.6, i64 0, i64 0), i32 noundef 74, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !188
  br label %81, !dbg !188

81:                                               ; preds = %79, %78
  %82 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.6, i64 0, i64 0), i32 noundef 75, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !189
  %83 = load i8*, i8** %3, align 8, !dbg !190
  %84 = load i32, i32* %6, align 4, !dbg !191
  %85 = add nsw i32 %84, 1, !dbg !192
  %86 = sext i32 %85 to i64, !dbg !190
  %87 = getelementptr inbounds i8, i8* %83, i64 %86, !dbg !190
  %88 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !193
  %89 = load i32, i32* %7, align 4, !dbg !194
  %90 = sext i32 %89 to i64, !dbg !194
  %91 = call i8* @memcpy(i8* %87, i8* %88, i64 %90), !dbg !193
  %92 = load i8*, i8** %3, align 8, !dbg !195
  %93 = load i32, i32* %7, align 4, !dbg !196
  %94 = load i32, i32* %6, align 4, !dbg !197
  %95 = add nsw i32 %93, %94, !dbg !198
  %96 = add nsw i32 %95, 1, !dbg !199
  %97 = sext i32 %96 to i64, !dbg !195
  %98 = getelementptr inbounds i8, i8* %92, i64 %97, !dbg !195
  store i8 0, i8* %98, align 1, !dbg !200
  %99 = load i8*, i8** %3, align 8, !dbg !201
  %100 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %2, align 8, !dbg !202
  %101 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %100, i32 0, i32 1, !dbg !203
  store i8* %99, i8** %101, align 8, !dbg !204
  %102 = getelementptr inbounds [200 x i8], [200 x i8]* %8, i64 0, i64 0, !dbg !205
  %103 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %2, align 8, !dbg !206
  %104 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %103, i32 0, i32 1, !dbg !207
  %105 = load i8*, i8** %104, align 8, !dbg !207
  %106 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %102, i64 noundef 199, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* noundef %105), !dbg !208
  %107 = getelementptr inbounds [200 x i8], [200 x i8]* %8, i64 0, i64 199, !dbg !209
  store i8 0, i8* %107, align 1, !dbg !210
  %108 = getelementptr inbounds [200 x i8], [200 x i8]* %8, i64 0, i64 0, !dbg !211
  %109 = call i8* @xmlStrdup(i8* noundef %108), !dbg !212
  %110 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %2, align 8, !dbg !213
  %111 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %110, i32 0, i32 2, !dbg !214
  store i8* %109, i8** %111, align 8, !dbg !215
  %112 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %2, align 8, !dbg !216
  call void @xmlRegFreeAtom(%struct._xmlRegAtom* noundef %112), !dbg !217
  store i32 0, i32* %1, align 4, !dbg !218
  br label %113, !dbg !218

113:                                              ; preds = %81, %55, %13
  %114 = load i32, i32* %1, align 4, !dbg !219
  ret i32 %114, !dbg !219
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #6

declare i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !220 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !226, metadata !DIExpression()), !dbg !227
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !228, metadata !DIExpression()), !dbg !229
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !230, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.declare(metadata i8** %7, metadata !232, metadata !DIExpression()), !dbg !233
  %9 = load i8*, i8** %4, align 8, !dbg !234
  store i8* %9, i8** %7, align 8, !dbg !233
  call void @llvm.dbg.declare(metadata i8** %8, metadata !235, metadata !DIExpression()), !dbg !236
  %10 = load i8*, i8** %5, align 8, !dbg !237
  store i8* %10, i8** %8, align 8, !dbg !236
  br label %11, !dbg !238

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !239
  %13 = add i64 %12, -1, !dbg !239
  store i64 %13, i64* %6, align 8, !dbg !239
  %14 = icmp ugt i64 %12, 0, !dbg !240
  br i1 %14, label %15, label %21, !dbg !238

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !241
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !241
  store i8* %17, i8** %8, align 8, !dbg !241
  %18 = load i8, i8* %16, align 1, !dbg !242
  %19 = load i8*, i8** %7, align 8, !dbg !243
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !243
  store i8* %20, i8** %7, align 8, !dbg !243
  store i8 %18, i8* %19, align 1, !dbg !244
  br label %11, !dbg !238, !llvm.loop !245

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !247
  ret i8* %22, !dbg !248
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32, !32}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/142_xmlregexp.c_5992_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "3bcf2a95f5085aa63002326a8bc93fb7")
!2 = !{!3, !4, !7, !10, !11}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !1, line: 10, baseType: !6)
!6 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegAtom", file: !1, line: 9, baseType: !13)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegAtom", file: !1, line: 12, size: 384, elements: !14)
!14 = !{!15, !17, !18, !19, !20, !21, !22}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !13, file: !1, line: 13, baseType: !16, size: 32)
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "valuep", scope: !13, file: !1, line: 14, baseType: !4, size: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "valuep2", scope: !13, file: !1, line: 15, baseType: !4, size: 64, offset: 128)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !13, file: !1, line: 16, baseType: !16, size: 32, offset: 192)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !13, file: !1, line: 17, baseType: !16, size: 32, offset: 224)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "valuep3", scope: !13, file: !1, line: 18, baseType: !3, size: 64, offset: 256)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "valuep4", scope: !13, file: !1, line: 19, baseType: !3, size: 64, offset: 320)
!23 = distinct !DICompileUnit(language: DW_LANG_C99, file: !24, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!24 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!25 = !{i32 7, !"Dwarf Version", i32 5}
!26 = !{i32 2, !"Debug Info Version", i32 3}
!27 = !{i32 1, !"wchar_size", i32 4}
!28 = !{i32 7, !"PIC Level", i32 2}
!29 = !{i32 7, !"PIE Level", i32 2}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"Ubuntu clang version 14.0.6"}
!33 = distinct !DISubprogram(name: "xmlRegFreeAtom", scope: !1, file: !1, line: 22, type: !34, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !36)
!34 = !DISubroutineType(types: !35)
!35 = !{null, !11}
!36 = !{}
!37 = !DILocalVariable(name: "atom", arg: 1, scope: !33, file: !1, line: 22, type: !11)
!38 = !DILocation(line: 22, column: 33, scope: !33)
!39 = !DILocation(line: 23, column: 9, scope: !40)
!40 = distinct !DILexicalBlock(scope: !33, file: !1, line: 23, column: 9)
!41 = !DILocation(line: 23, column: 14, scope: !40)
!42 = !DILocation(line: 23, column: 9, scope: !33)
!43 = !DILocation(line: 23, column: 23, scope: !40)
!44 = !DILocation(line: 24, column: 9, scope: !45)
!45 = distinct !DILexicalBlock(scope: !33, file: !1, line: 24, column: 9)
!46 = !DILocation(line: 24, column: 15, scope: !45)
!47 = !DILocation(line: 24, column: 22, scope: !45)
!48 = !DILocation(line: 24, column: 9, scope: !33)
!49 = !DILocation(line: 24, column: 36, scope: !45)
!50 = !DILocation(line: 24, column: 42, scope: !45)
!51 = !DILocation(line: 24, column: 31, scope: !45)
!52 = !DILocation(line: 25, column: 9, scope: !53)
!53 = distinct !DILexicalBlock(scope: !33, file: !1, line: 25, column: 9)
!54 = !DILocation(line: 25, column: 15, scope: !53)
!55 = !DILocation(line: 25, column: 23, scope: !53)
!56 = !DILocation(line: 25, column: 9, scope: !33)
!57 = !DILocation(line: 25, column: 37, scope: !53)
!58 = !DILocation(line: 25, column: 43, scope: !53)
!59 = !DILocation(line: 25, column: 32, scope: !53)
!60 = !DILocation(line: 26, column: 10, scope: !33)
!61 = !DILocation(line: 26, column: 5, scope: !33)
!62 = !DILocation(line: 27, column: 1, scope: !33)
!63 = distinct !DISubprogram(name: "xmlMallocAtomic", scope: !1, file: !1, line: 29, type: !64, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !36)
!64 = !DISubroutineType(types: !65)
!65 = !{!4, !66}
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !67, line: 46, baseType: !68)
!67 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!68 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!69 = !DILocalVariable(name: "size", arg: 1, scope: !63, file: !1, line: 29, type: !66)
!70 = !DILocation(line: 29, column: 33, scope: !63)
!71 = !DILocation(line: 30, column: 30, scope: !63)
!72 = !DILocation(line: 30, column: 23, scope: !63)
!73 = !DILocation(line: 30, column: 5, scope: !63)
!74 = distinct !DISubprogram(name: "xmlStrdup", scope: !1, file: !1, line: 33, type: !75, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !36)
!75 = !DISubroutineType(types: !76)
!76 = !{!4, !77}
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!79 = !DILocalVariable(name: "cur", arg: 1, scope: !74, file: !1, line: 33, type: !77)
!80 = !DILocation(line: 33, column: 35, scope: !74)
!81 = !DILocalVariable(name: "res", scope: !74, file: !1, line: 34, type: !4)
!82 = !DILocation(line: 34, column: 14, scope: !74)
!83 = !DILocation(line: 35, column: 9, scope: !84)
!84 = distinct !DILexicalBlock(scope: !74, file: !1, line: 35, column: 9)
!85 = !DILocation(line: 35, column: 13, scope: !84)
!86 = !DILocation(line: 35, column: 9, scope: !74)
!87 = !DILocation(line: 35, column: 22, scope: !84)
!88 = !DILocation(line: 36, column: 50, scope: !74)
!89 = !DILocation(line: 36, column: 29, scope: !74)
!90 = !DILocation(line: 36, column: 55, scope: !74)
!91 = !DILocation(line: 36, column: 22, scope: !74)
!92 = !DILocation(line: 36, column: 9, scope: !74)
!93 = !DILocation(line: 37, column: 9, scope: !94)
!94 = distinct !DILexicalBlock(scope: !74, file: !1, line: 37, column: 9)
!95 = !DILocation(line: 37, column: 13, scope: !94)
!96 = !DILocation(line: 37, column: 9, scope: !74)
!97 = !DILocation(line: 37, column: 22, scope: !94)
!98 = !DILocation(line: 38, column: 20, scope: !74)
!99 = !DILocation(line: 38, column: 39, scope: !74)
!100 = !DILocation(line: 38, column: 5, scope: !74)
!101 = !DILocation(line: 39, column: 12, scope: !74)
!102 = !DILocation(line: 39, column: 5, scope: !74)
!103 = !DILocation(line: 40, column: 1, scope: !74)
!104 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 42, type: !105, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !36)
!105 = !DISubroutineType(types: !106)
!106 = !{!16}
!107 = !DILocalVariable(name: "atom", scope: !104, file: !1, line: 43, type: !11)
!108 = !DILocation(line: 43, column: 17, scope: !104)
!109 = !DILocalVariable(name: "str", scope: !104, file: !1, line: 44, type: !4)
!110 = !DILocation(line: 44, column: 14, scope: !104)
!111 = !DILocalVariable(name: "token", scope: !104, file: !1, line: 45, type: !112)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 2048, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 256)
!115 = !DILocation(line: 45, column: 13, scope: !104)
!116 = !DILocalVariable(name: "token2", scope: !104, file: !1, line: 46, type: !112)
!117 = !DILocation(line: 46, column: 13, scope: !104)
!118 = !DILocalVariable(name: "lenp", scope: !104, file: !1, line: 47, type: !16)
!119 = !DILocation(line: 47, column: 9, scope: !104)
!120 = !DILocalVariable(name: "lenn", scope: !104, file: !1, line: 47, type: !16)
!121 = !DILocation(line: 47, column: 15, scope: !104)
!122 = !DILocalVariable(name: "err_msg", scope: !104, file: !1, line: 48, type: !123)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 1600, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 200)
!126 = !DILocation(line: 48, column: 13, scope: !104)
!127 = !DILocation(line: 50, column: 26, scope: !104)
!128 = !DILocation(line: 50, column: 12, scope: !104)
!129 = !DILocation(line: 50, column: 10, scope: !104)
!130 = !DILocation(line: 51, column: 9, scope: !131)
!131 = distinct !DILexicalBlock(scope: !104, file: !1, line: 51, column: 9)
!132 = !DILocation(line: 51, column: 14, scope: !131)
!133 = !DILocation(line: 51, column: 9, scope: !104)
!134 = !DILocation(line: 51, column: 23, scope: !131)
!135 = !DILocation(line: 52, column: 5, scope: !104)
!136 = !DILocation(line: 52, column: 11, scope: !104)
!137 = !DILocation(line: 52, column: 18, scope: !104)
!138 = !DILocation(line: 53, column: 5, scope: !104)
!139 = !DILocation(line: 53, column: 11, scope: !104)
!140 = !DILocation(line: 53, column: 19, scope: !104)
!141 = !DILocation(line: 55, column: 24, scope: !104)
!142 = !DILocation(line: 55, column: 5, scope: !104)
!143 = !DILocation(line: 56, column: 24, scope: !104)
!144 = !DILocation(line: 56, column: 5, scope: !104)
!145 = !DILocation(line: 57, column: 24, scope: !104)
!146 = !DILocation(line: 57, column: 5, scope: !104)
!147 = !DILocation(line: 58, column: 24, scope: !104)
!148 = !DILocation(line: 58, column: 5, scope: !104)
!149 = !DILocation(line: 60, column: 17, scope: !104)
!150 = !DILocation(line: 60, column: 22, scope: !104)
!151 = !DILocation(line: 60, column: 27, scope: !104)
!152 = !DILocation(line: 60, column: 30, scope: !104)
!153 = !DILocation(line: 60, column: 35, scope: !104)
!154 = !DILocation(line: 0, scope: !104)
!155 = !DILocation(line: 60, column: 5, scope: !104)
!156 = !DILocation(line: 61, column: 17, scope: !104)
!157 = !DILocation(line: 61, column: 22, scope: !104)
!158 = !DILocation(line: 61, column: 27, scope: !104)
!159 = !DILocation(line: 61, column: 30, scope: !104)
!160 = !DILocation(line: 61, column: 35, scope: !104)
!161 = !DILocation(line: 61, column: 5, scope: !104)
!162 = !DILocation(line: 62, column: 11, scope: !104)
!163 = !DILocation(line: 62, column: 5, scope: !104)
!164 = !DILocation(line: 62, column: 17, scope: !104)
!165 = !DILocation(line: 63, column: 12, scope: !104)
!166 = !DILocation(line: 63, column: 5, scope: !104)
!167 = !DILocation(line: 63, column: 18, scope: !104)
!168 = !DILocation(line: 65, column: 38, scope: !104)
!169 = !DILocation(line: 65, column: 45, scope: !104)
!170 = !DILocation(line: 65, column: 43, scope: !104)
!171 = !DILocation(line: 65, column: 50, scope: !104)
!172 = !DILocation(line: 65, column: 22, scope: !104)
!173 = !DILocation(line: 65, column: 9, scope: !104)
!174 = !DILocation(line: 66, column: 9, scope: !175)
!175 = distinct !DILexicalBlock(scope: !104, file: !1, line: 66, column: 9)
!176 = !DILocation(line: 66, column: 13, scope: !175)
!177 = !DILocation(line: 66, column: 9, scope: !104)
!178 = !DILocation(line: 67, column: 24, scope: !179)
!179 = distinct !DILexicalBlock(scope: !175, file: !1, line: 66, column: 22)
!180 = !DILocation(line: 67, column: 9, scope: !179)
!181 = !DILocation(line: 68, column: 9, scope: !179)
!182 = !DILocation(line: 71, column: 13, scope: !104)
!183 = !DILocation(line: 71, column: 5, scope: !104)
!184 = !DILocation(line: 71, column: 28, scope: !104)
!185 = !DILocation(line: 72, column: 5, scope: !104)
!186 = !DILocation(line: 72, column: 9, scope: !104)
!187 = !DILocation(line: 72, column: 15, scope: !104)
!188 = !DILocation(line: 74, column: 5, scope: !104)
!189 = !DILocation(line: 75, column: 5, scope: !104)
!190 = !DILocation(line: 77, column: 13, scope: !104)
!191 = !DILocation(line: 77, column: 17, scope: !104)
!192 = !DILocation(line: 77, column: 22, scope: !104)
!193 = !DILocation(line: 77, column: 5, scope: !104)
!194 = !DILocation(line: 77, column: 36, scope: !104)
!195 = !DILocation(line: 78, column: 5, scope: !104)
!196 = !DILocation(line: 78, column: 9, scope: !104)
!197 = !DILocation(line: 78, column: 16, scope: !104)
!198 = !DILocation(line: 78, column: 14, scope: !104)
!199 = !DILocation(line: 78, column: 21, scope: !104)
!200 = !DILocation(line: 78, column: 26, scope: !104)
!201 = !DILocation(line: 80, column: 20, scope: !104)
!202 = !DILocation(line: 80, column: 5, scope: !104)
!203 = !DILocation(line: 80, column: 11, scope: !104)
!204 = !DILocation(line: 80, column: 18, scope: !104)
!205 = !DILocation(line: 81, column: 22, scope: !104)
!206 = !DILocation(line: 81, column: 60, scope: !104)
!207 = !DILocation(line: 81, column: 66, scope: !104)
!208 = !DILocation(line: 81, column: 5, scope: !104)
!209 = !DILocation(line: 82, column: 5, scope: !104)
!210 = !DILocation(line: 82, column: 18, scope: !104)
!211 = !DILocation(line: 83, column: 31, scope: !104)
!212 = !DILocation(line: 83, column: 21, scope: !104)
!213 = !DILocation(line: 83, column: 5, scope: !104)
!214 = !DILocation(line: 83, column: 11, scope: !104)
!215 = !DILocation(line: 83, column: 19, scope: !104)
!216 = !DILocation(line: 85, column: 20, scope: !104)
!217 = !DILocation(line: 85, column: 5, scope: !104)
!218 = !DILocation(line: 86, column: 5, scope: !104)
!219 = !DILocation(line: 87, column: 1, scope: !104)
!220 = distinct !DISubprogram(name: "memcpy", scope: !221, file: !221, line: 12, type: !222, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !23, retainedNodes: !36)
!221 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!222 = !DISubroutineType(types: !223)
!223 = !{!3, !3, !224, !66}
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!226 = !DILocalVariable(name: "destaddr", arg: 1, scope: !220, file: !221, line: 12, type: !3)
!227 = !DILocation(line: 12, column: 20, scope: !220)
!228 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !220, file: !221, line: 12, type: !224)
!229 = !DILocation(line: 12, column: 42, scope: !220)
!230 = !DILocalVariable(name: "len", arg: 3, scope: !220, file: !221, line: 12, type: !66)
!231 = !DILocation(line: 12, column: 58, scope: !220)
!232 = !DILocalVariable(name: "dest", scope: !220, file: !221, line: 13, type: !10)
!233 = !DILocation(line: 13, column: 9, scope: !220)
!234 = !DILocation(line: 13, column: 16, scope: !220)
!235 = !DILocalVariable(name: "src", scope: !220, file: !221, line: 14, type: !7)
!236 = !DILocation(line: 14, column: 15, scope: !220)
!237 = !DILocation(line: 14, column: 21, scope: !220)
!238 = !DILocation(line: 16, column: 3, scope: !220)
!239 = !DILocation(line: 16, column: 13, scope: !220)
!240 = !DILocation(line: 16, column: 16, scope: !220)
!241 = !DILocation(line: 17, column: 19, scope: !220)
!242 = !DILocation(line: 17, column: 15, scope: !220)
!243 = !DILocation(line: 17, column: 10, scope: !220)
!244 = !DILocation(line: 17, column: 13, scope: !220)
!245 = distinct !{!245, !238, !241, !246}
!246 = !{!"llvm.loop.mustprogress"}
!247 = !DILocation(line: 18, column: 10, scope: !220)
!248 = !DILocation(line: 18, column: 3, scope: !220)

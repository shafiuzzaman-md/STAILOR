; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/263_relaxng.c_4404_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/263_relaxng.c_4404_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRelaxNGPartition = type { i32, i8* }

@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"(nbgroups >= 0) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_55980_vul/263_relaxng.c_4404_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.target_function = private unnamed_addr constant [35 x i8] c"void target_function(int, void **)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"nbgroups\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"is_null\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !23 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !30, metadata !DIExpression()), !dbg !31
  %3 = load i64, i64* %2, align 8, !dbg !32
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !33
  ret i8* %4, !dbg !34
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlHashCreate(i32 noundef %0) #0 !dbg !35 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !38, metadata !DIExpression()), !dbg !39
  %4 = load i32, i32* %3, align 4, !dbg !40
  %5 = icmp slt i32 %4, 0, !dbg !42
  br i1 %5, label %6, label %7, !dbg !43

6:                                                ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !44
  br label %12, !dbg !44

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4, !dbg !45
  %9 = sext i32 %8 to i64, !dbg !45
  %10 = mul i64 %9, 8, !dbg !46
  %11 = call noalias i8* @malloc(i64 noundef %10) #7, !dbg !47
  store i8* %11, i8** %2, align 8, !dbg !48
  br label %12, !dbg !48

12:                                               ; preds = %7, %6
  %13 = load i8*, i8** %2, align 8, !dbg !49
  ret i8* %13, !dbg !49
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !50 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !53, metadata !DIExpression()), !dbg !54
  %3 = load i8*, i8** %2, align 8, !dbg !55
  call void @free(i8* noundef %3) #7, !dbg !56
  ret void, !dbg !57
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @target_function(i32 noundef %0, i8** noundef %1) #0 !dbg !58 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct._xmlRelaxNGPartition*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !61, metadata !DIExpression()), !dbg !62
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !63, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGPartition** %5, metadata !65, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.declare(metadata i32* %6, metadata !67, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.declare(metadata i32* %7, metadata !69, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.declare(metadata i8** %8, metadata !71, metadata !DIExpression()), !dbg !72
  %9 = call i8* @xmlMalloc(i64 noundef 16), !dbg !73
  %10 = bitcast i8* %9 to %struct._xmlRelaxNGPartition*, !dbg !74
  store %struct._xmlRelaxNGPartition* %10, %struct._xmlRelaxNGPartition** %5, align 8, !dbg !75
  %11 = load %struct._xmlRelaxNGPartition*, %struct._xmlRelaxNGPartition** %5, align 8, !dbg !76
  %12 = icmp eq %struct._xmlRelaxNGPartition* %11, null, !dbg !78
  br i1 %12, label %13, label %14, !dbg !79

13:                                               ; preds = %2
  br label %71, !dbg !80

14:                                               ; preds = %2
  %15 = load i32, i32* %3, align 4, !dbg !81
  %16 = icmp sge i32 %15, 0, !dbg !81
  br i1 %16, label %17, label %19, !dbg !81

17:                                               ; preds = %14
  br i1 true, label %18, label %19, !dbg !81

18:                                               ; preds = %17
  br label %21, !dbg !81

19:                                               ; preds = %17, %14
  %20 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.2, i64 0, i64 0), i32 noundef 50, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !81
  br label %21, !dbg !81

21:                                               ; preds = %19, %18
  %22 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.2, i64 0, i64 0), i32 noundef 51, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !82
  %23 = load %struct._xmlRelaxNGPartition*, %struct._xmlRelaxNGPartition** %5, align 8, !dbg !83
  %24 = bitcast %struct._xmlRelaxNGPartition* %23 to i8*, !dbg !84
  %25 = call i8* @memset(i8* %24, i32 0, i64 16), !dbg !84
  %26 = load i32, i32* %3, align 4, !dbg !85
  %27 = load %struct._xmlRelaxNGPartition*, %struct._xmlRelaxNGPartition** %5, align 8, !dbg !86
  %28 = getelementptr inbounds %struct._xmlRelaxNGPartition, %struct._xmlRelaxNGPartition* %27, i32 0, i32 0, !dbg !87
  store i32 %26, i32* %28, align 8, !dbg !88
  %29 = load i32, i32* %3, align 4, !dbg !89
  %30 = call i8* @xmlHashCreate(i32 noundef %29), !dbg !90
  %31 = load %struct._xmlRelaxNGPartition*, %struct._xmlRelaxNGPartition** %5, align 8, !dbg !91
  %32 = getelementptr inbounds %struct._xmlRelaxNGPartition, %struct._xmlRelaxNGPartition* %31, i32 0, i32 1, !dbg !92
  store i8* %30, i8** %32, align 8, !dbg !93
  store i32 0, i32* %6, align 4, !dbg !94
  br label %33, !dbg !96

33:                                               ; preds = %62, %21
  %34 = load i32, i32* %6, align 4, !dbg !97
  %35 = load i32, i32* %3, align 4, !dbg !99
  %36 = icmp slt i32 %34, %35, !dbg !100
  br i1 %36, label %37, label %65, !dbg !101

37:                                               ; preds = %33
  %38 = load i8**, i8*** %4, align 8, !dbg !102
  %39 = load i32, i32* %6, align 4, !dbg !104
  %40 = sext i32 %39 to i64, !dbg !102
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40, !dbg !102
  %42 = load i8*, i8** %41, align 8, !dbg !102
  store i8* %42, i8** %8, align 8, !dbg !105
  %43 = load i32, i32* %6, align 4, !dbg !106
  %44 = add nsw i32 %43, 1, !dbg !108
  store i32 %44, i32* %7, align 4, !dbg !109
  br label %45, !dbg !110

45:                                               ; preds = %58, %37
  %46 = load i32, i32* %7, align 4, !dbg !111
  %47 = load i32, i32* %3, align 4, !dbg !113
  %48 = icmp slt i32 %46, %47, !dbg !114
  br i1 %48, label %49, label %61, !dbg !115

49:                                               ; preds = %45
  %50 = load i8**, i8*** %4, align 8, !dbg !116
  %51 = load i32, i32* %7, align 4, !dbg !119
  %52 = sext i32 %51 to i64, !dbg !116
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52, !dbg !116
  %54 = load i8*, i8** %53, align 8, !dbg !116
  %55 = icmp eq i8* %54, null, !dbg !120
  br i1 %55, label %56, label %57, !dbg !121

56:                                               ; preds = %49
  br label %58, !dbg !122

57:                                               ; preds = %49
  br label %58, !dbg !123

58:                                               ; preds = %57, %56
  %59 = load i32, i32* %7, align 4, !dbg !124
  %60 = add nsw i32 %59, 1, !dbg !124
  store i32 %60, i32* %7, align 4, !dbg !124
  br label %45, !dbg !125, !llvm.loop !126

61:                                               ; preds = %45
  br label %62, !dbg !129

62:                                               ; preds = %61
  %63 = load i32, i32* %6, align 4, !dbg !130
  %64 = add nsw i32 %63, 1, !dbg !130
  store i32 %64, i32* %6, align 4, !dbg !130
  br label %33, !dbg !131, !llvm.loop !132

65:                                               ; preds = %33
  %66 = load %struct._xmlRelaxNGPartition*, %struct._xmlRelaxNGPartition** %5, align 8, !dbg !134
  %67 = getelementptr inbounds %struct._xmlRelaxNGPartition, %struct._xmlRelaxNGPartition* %66, i32 0, i32 1, !dbg !135
  %68 = load i8*, i8** %67, align 8, !dbg !135
  call void @free(i8* noundef %68) #7, !dbg !136
  %69 = load %struct._xmlRelaxNGPartition*, %struct._xmlRelaxNGPartition** %5, align 8, !dbg !137
  %70 = bitcast %struct._xmlRelaxNGPartition* %69 to i8*, !dbg !137
  call void @free(i8* noundef %70) #7, !dbg !138
  br label %71, !dbg !139

71:                                               ; preds = %65, %13
  ret void, !dbg !139
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !140 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !143, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !145, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.declare(metadata i32* %4, metadata !147, metadata !DIExpression()), !dbg !148
  %6 = bitcast i32* %2 to i8*, !dbg !149
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)), !dbg !150
  %7 = load i32, i32* %2, align 4, !dbg !151
  %8 = icmp sge i32 %7, 0, !dbg !152
  %9 = zext i1 %8 to i32, !dbg !152
  %10 = sext i32 %9 to i64, !dbg !151
  call void @klee_assume(i64 noundef %10), !dbg !153
  %11 = load i32, i32* %2, align 4, !dbg !154
  %12 = icmp sle i32 %11, 100, !dbg !155
  %13 = zext i1 %12 to i32, !dbg !155
  %14 = sext i32 %13 to i64, !dbg !154
  call void @klee_assume(i64 noundef %14), !dbg !156
  %15 = load i32, i32* %2, align 4, !dbg !157
  %16 = add nsw i32 %15, 1, !dbg !158
  %17 = sext i32 %16 to i64, !dbg !159
  %18 = mul i64 %17, 8, !dbg !160
  %19 = call noalias i8* @malloc(i64 noundef %18) #7, !dbg !161
  %20 = bitcast i8* %19 to i8**, !dbg !162
  store i8** %20, i8*** %3, align 8, !dbg !163
  %21 = load i8**, i8*** %3, align 8, !dbg !164
  %22 = icmp eq i8** %21, null, !dbg !166
  br i1 %22, label %23, label %24, !dbg !167

23:                                               ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !168
  br label %84, !dbg !168

24:                                               ; preds = %0
  store i32 0, i32* %4, align 4, !dbg !169
  br label %25, !dbg !171

25:                                               ; preds = %54, %24
  %26 = load i32, i32* %4, align 4, !dbg !172
  %27 = load i32, i32* %2, align 4, !dbg !174
  %28 = icmp slt i32 %26, %27, !dbg !175
  br i1 %28, label %29, label %57, !dbg !176

29:                                               ; preds = %25
  call void @llvm.dbg.declare(metadata i32* %5, metadata !177, metadata !DIExpression()), !dbg !179
  %30 = bitcast i32* %5 to i8*, !dbg !180
  call void @klee_make_symbolic(i8* noundef %30, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)), !dbg !181
  %31 = load i32, i32* %5, align 4, !dbg !182
  %32 = icmp eq i32 %31, 0, !dbg !183
  br i1 %32, label %36, label %33, !dbg !184

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4, !dbg !185
  %35 = icmp eq i32 %34, 1, !dbg !186
  br label %36, !dbg !184

36:                                               ; preds = %33, %29
  %37 = phi i1 [ true, %29 ], [ %35, %33 ]
  %38 = zext i1 %37 to i32, !dbg !184
  %39 = sext i32 %38 to i64, !dbg !182
  call void @klee_assume(i64 noundef %39), !dbg !187
  %40 = load i32, i32* %5, align 4, !dbg !188
  %41 = icmp ne i32 %40, 0, !dbg !188
  br i1 %41, label %42, label %47, !dbg !190

42:                                               ; preds = %36
  %43 = load i8**, i8*** %3, align 8, !dbg !191
  %44 = load i32, i32* %4, align 4, !dbg !193
  %45 = sext i32 %44 to i64, !dbg !191
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45, !dbg !191
  store i8* null, i8** %46, align 8, !dbg !194
  br label %53, !dbg !195

47:                                               ; preds = %36
  %48 = call noalias i8* @malloc(i64 noundef 1) #7, !dbg !196
  %49 = load i8**, i8*** %3, align 8, !dbg !198
  %50 = load i32, i32* %4, align 4, !dbg !199
  %51 = sext i32 %50 to i64, !dbg !198
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51, !dbg !198
  store i8* %48, i8** %52, align 8, !dbg !200
  br label %53

53:                                               ; preds = %47, %42
  br label %54, !dbg !201

54:                                               ; preds = %53
  %55 = load i32, i32* %4, align 4, !dbg !202
  %56 = add nsw i32 %55, 1, !dbg !202
  store i32 %56, i32* %4, align 4, !dbg !202
  br label %25, !dbg !203, !llvm.loop !204

57:                                               ; preds = %25
  %58 = load i32, i32* %2, align 4, !dbg !206
  %59 = load i8**, i8*** %3, align 8, !dbg !207
  call void @target_function(i32 noundef %58, i8** noundef %59), !dbg !208
  store i32 0, i32* %4, align 4, !dbg !209
  br label %60, !dbg !211

60:                                               ; preds = %78, %57
  %61 = load i32, i32* %4, align 4, !dbg !212
  %62 = load i32, i32* %2, align 4, !dbg !214
  %63 = icmp slt i32 %61, %62, !dbg !215
  br i1 %63, label %64, label %81, !dbg !216

64:                                               ; preds = %60
  %65 = load i8**, i8*** %3, align 8, !dbg !217
  %66 = load i32, i32* %4, align 4, !dbg !220
  %67 = sext i32 %66 to i64, !dbg !217
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67, !dbg !217
  %69 = load i8*, i8** %68, align 8, !dbg !217
  %70 = icmp ne i8* %69, null, !dbg !221
  br i1 %70, label %71, label %77, !dbg !222

71:                                               ; preds = %64
  %72 = load i8**, i8*** %3, align 8, !dbg !223
  %73 = load i32, i32* %4, align 4, !dbg !224
  %74 = sext i32 %73 to i64, !dbg !223
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74, !dbg !223
  %76 = load i8*, i8** %75, align 8, !dbg !223
  call void @free(i8* noundef %76) #7, !dbg !225
  br label %77, !dbg !225

77:                                               ; preds = %71, %64
  br label %78, !dbg !226

78:                                               ; preds = %77
  %79 = load i32, i32* %4, align 4, !dbg !227
  %80 = add nsw i32 %79, 1, !dbg !227
  store i32 %80, i32* %4, align 4, !dbg !227
  br label %60, !dbg !228, !llvm.loop !229

81:                                               ; preds = %60
  %82 = load i8**, i8*** %3, align 8, !dbg !231
  %83 = bitcast i8** %82 to i8*, !dbg !231
  call void @free(i8* noundef %83) #7, !dbg !232
  store i32 0, i32* %1, align 4, !dbg !233
  br label %84, !dbg !233

84:                                               ; preds = %81, %23
  %85 = load i32, i32* %1, align 4, !dbg !234
  ret i32 %85, !dbg !234
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !235 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !239, metadata !DIExpression()), !dbg !240
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !241, metadata !DIExpression()), !dbg !242
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !243, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.declare(metadata i8** %7, metadata !245, metadata !DIExpression()), !dbg !248
  %8 = load i8*, i8** %4, align 8, !dbg !249
  store i8* %8, i8** %7, align 8, !dbg !248
  br label %9, !dbg !250

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !251
  %11 = add i64 %10, -1, !dbg !251
  store i64 %11, i64* %6, align 8, !dbg !251
  %12 = icmp ugt i64 %10, 0, !dbg !252
  br i1 %12, label %13, label %18, !dbg !250

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !253
  %15 = trunc i32 %14 to i8, !dbg !253
  %16 = load i8*, i8** %7, align 8, !dbg !254
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !254
  store i8* %17, i8** %7, align 8, !dbg !254
  store i8 %15, i8* %16, align 1, !dbg !255
  br label %9, !dbg !250, !llvm.loop !256

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !257
  ret i8* %19, !dbg !258
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22, !22}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/263_relaxng.c_4404_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "fbaacb604ff2e4688fc0361d8e7fc14a")
!2 = !{!3, !4, !12}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGPartitionPtr", file: !1, line: 11, baseType: !5)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGPartition", file: !1, line: 10, baseType: !7)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRelaxNGPartition", file: !1, line: 13, size: 128, elements: !8)
!8 = !{!9, !11}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "nbgroups", scope: !7, file: !1, line: 14, baseType: !10, size: 32)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "triage", scope: !7, file: !1, line: 15, baseType: !3, size: 64, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64)
!13 = distinct !DICompileUnit(language: DW_LANG_C99, file: !14, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!14 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!15 = !{i32 7, !"Dwarf Version", i32 5}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{i32 7, !"PIC Level", i32 2}
!19 = !{i32 7, !"PIE Level", i32 2}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"Ubuntu clang version 14.0.6"}
!23 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 19, type: !24, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!24 = !DISubroutineType(types: !25)
!25 = !{!3, !26}
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !27, line: 46, baseType: !28)
!27 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!28 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!29 = !{}
!30 = !DILocalVariable(name: "size", arg: 1, scope: !23, file: !1, line: 19, type: !26)
!31 = !DILocation(line: 19, column: 24, scope: !23)
!32 = !DILocation(line: 20, column: 19, scope: !23)
!33 = !DILocation(line: 20, column: 12, scope: !23)
!34 = !DILocation(line: 20, column: 5, scope: !23)
!35 = distinct !DISubprogram(name: "xmlHashCreate", scope: !1, file: !1, line: 24, type: !36, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!36 = !DISubroutineType(types: !37)
!37 = !{!3, !10}
!38 = !DILocalVariable(name: "size", arg: 1, scope: !35, file: !1, line: 24, type: !10)
!39 = !DILocation(line: 24, column: 25, scope: !35)
!40 = !DILocation(line: 25, column: 9, scope: !41)
!41 = distinct !DILexicalBlock(scope: !35, file: !1, line: 25, column: 9)
!42 = !DILocation(line: 25, column: 14, scope: !41)
!43 = !DILocation(line: 25, column: 9, scope: !35)
!44 = !DILocation(line: 25, column: 19, scope: !41)
!45 = !DILocation(line: 26, column: 19, scope: !35)
!46 = !DILocation(line: 26, column: 24, scope: !35)
!47 = !DILocation(line: 26, column: 12, scope: !35)
!48 = !DILocation(line: 26, column: 5, scope: !35)
!49 = !DILocation(line: 27, column: 1, scope: !35)
!50 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 30, type: !51, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!51 = !DISubroutineType(types: !52)
!52 = !{null, !3}
!53 = !DILocalVariable(name: "ptr", arg: 1, scope: !50, file: !1, line: 30, type: !3)
!54 = !DILocation(line: 30, column: 20, scope: !50)
!55 = !DILocation(line: 31, column: 10, scope: !50)
!56 = !DILocation(line: 31, column: 5, scope: !50)
!57 = !DILocation(line: 32, column: 1, scope: !50)
!58 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 35, type: !59, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!59 = !DISubroutineType(types: !60)
!60 = !{null, !10, !12}
!61 = !DILocalVariable(name: "nbgroups", arg: 1, scope: !58, file: !1, line: 35, type: !10)
!62 = !DILocation(line: 35, column: 26, scope: !58)
!63 = !DILocalVariable(name: "groups", arg: 2, scope: !58, file: !1, line: 35, type: !12)
!64 = !DILocation(line: 35, column: 43, scope: !58)
!65 = !DILocalVariable(name: "partitions", scope: !58, file: !1, line: 36, type: !4)
!66 = !DILocation(line: 36, column: 28, scope: !58)
!67 = !DILocalVariable(name: "i", scope: !58, file: !1, line: 37, type: !10)
!68 = !DILocation(line: 37, column: 9, scope: !58)
!69 = !DILocalVariable(name: "j", scope: !58, file: !1, line: 37, type: !10)
!70 = !DILocation(line: 37, column: 12, scope: !58)
!71 = !DILocalVariable(name: "group", scope: !58, file: !1, line: 38, type: !3)
!72 = !DILocation(line: 38, column: 11, scope: !58)
!73 = !DILocation(line: 44, column: 9, scope: !58)
!74 = !DILocation(line: 43, column: 18, scope: !58)
!75 = !DILocation(line: 43, column: 16, scope: !58)
!76 = !DILocation(line: 45, column: 9, scope: !77)
!77 = distinct !DILexicalBlock(scope: !58, file: !1, line: 45, column: 9)
!78 = !DILocation(line: 45, column: 20, scope: !77)
!79 = !DILocation(line: 45, column: 9, scope: !58)
!80 = !DILocation(line: 46, column: 9, scope: !77)
!81 = !DILocation(line: 50, column: 5, scope: !58)
!82 = !DILocation(line: 51, column: 5, scope: !58)
!83 = !DILocation(line: 53, column: 12, scope: !58)
!84 = !DILocation(line: 53, column: 5, scope: !58)
!85 = !DILocation(line: 54, column: 28, scope: !58)
!86 = !DILocation(line: 54, column: 5, scope: !58)
!87 = !DILocation(line: 54, column: 17, scope: !58)
!88 = !DILocation(line: 54, column: 26, scope: !58)
!89 = !DILocation(line: 55, column: 40, scope: !58)
!90 = !DILocation(line: 55, column: 26, scope: !58)
!91 = !DILocation(line: 55, column: 5, scope: !58)
!92 = !DILocation(line: 55, column: 17, scope: !58)
!93 = !DILocation(line: 55, column: 24, scope: !58)
!94 = !DILocation(line: 56, column: 12, scope: !95)
!95 = distinct !DILexicalBlock(scope: !58, file: !1, line: 56, column: 5)
!96 = !DILocation(line: 56, column: 10, scope: !95)
!97 = !DILocation(line: 56, column: 17, scope: !98)
!98 = distinct !DILexicalBlock(scope: !95, file: !1, line: 56, column: 5)
!99 = !DILocation(line: 56, column: 21, scope: !98)
!100 = !DILocation(line: 56, column: 19, scope: !98)
!101 = !DILocation(line: 56, column: 5, scope: !95)
!102 = !DILocation(line: 57, column: 17, scope: !103)
!103 = distinct !DILexicalBlock(scope: !98, file: !1, line: 56, column: 36)
!104 = !DILocation(line: 57, column: 24, scope: !103)
!105 = !DILocation(line: 57, column: 15, scope: !103)
!106 = !DILocation(line: 58, column: 18, scope: !107)
!107 = distinct !DILexicalBlock(scope: !103, file: !1, line: 58, column: 9)
!108 = !DILocation(line: 58, column: 20, scope: !107)
!109 = !DILocation(line: 58, column: 16, scope: !107)
!110 = !DILocation(line: 58, column: 14, scope: !107)
!111 = !DILocation(line: 58, column: 25, scope: !112)
!112 = distinct !DILexicalBlock(scope: !107, file: !1, line: 58, column: 9)
!113 = !DILocation(line: 58, column: 29, scope: !112)
!114 = !DILocation(line: 58, column: 27, scope: !112)
!115 = !DILocation(line: 58, column: 9, scope: !107)
!116 = !DILocation(line: 59, column: 17, scope: !117)
!117 = distinct !DILexicalBlock(scope: !118, file: !1, line: 59, column: 17)
!118 = distinct !DILexicalBlock(scope: !112, file: !1, line: 58, column: 44)
!119 = !DILocation(line: 59, column: 24, scope: !117)
!120 = !DILocation(line: 59, column: 27, scope: !117)
!121 = !DILocation(line: 59, column: 17, scope: !118)
!122 = !DILocation(line: 60, column: 17, scope: !117)
!123 = !DILocation(line: 61, column: 9, scope: !118)
!124 = !DILocation(line: 58, column: 40, scope: !112)
!125 = !DILocation(line: 58, column: 9, scope: !112)
!126 = distinct !{!126, !115, !127, !128}
!127 = !DILocation(line: 61, column: 9, scope: !107)
!128 = !{!"llvm.loop.mustprogress"}
!129 = !DILocation(line: 62, column: 5, scope: !103)
!130 = !DILocation(line: 56, column: 32, scope: !98)
!131 = !DILocation(line: 56, column: 5, scope: !98)
!132 = distinct !{!132, !101, !133, !128}
!133 = !DILocation(line: 62, column: 5, scope: !95)
!134 = !DILocation(line: 64, column: 10, scope: !58)
!135 = !DILocation(line: 64, column: 22, scope: !58)
!136 = !DILocation(line: 64, column: 5, scope: !58)
!137 = !DILocation(line: 65, column: 10, scope: !58)
!138 = !DILocation(line: 65, column: 5, scope: !58)
!139 = !DILocation(line: 66, column: 1, scope: !58)
!140 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 68, type: !141, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!141 = !DISubroutineType(types: !142)
!142 = !{!10}
!143 = !DILocalVariable(name: "nbgroups", scope: !140, file: !1, line: 69, type: !10)
!144 = !DILocation(line: 69, column: 9, scope: !140)
!145 = !DILocalVariable(name: "groups", scope: !140, file: !1, line: 70, type: !12)
!146 = !DILocation(line: 70, column: 12, scope: !140)
!147 = !DILocalVariable(name: "i", scope: !140, file: !1, line: 71, type: !10)
!148 = !DILocation(line: 71, column: 9, scope: !140)
!149 = !DILocation(line: 74, column: 24, scope: !140)
!150 = !DILocation(line: 74, column: 5, scope: !140)
!151 = !DILocation(line: 77, column: 17, scope: !140)
!152 = !DILocation(line: 77, column: 26, scope: !140)
!153 = !DILocation(line: 77, column: 5, scope: !140)
!154 = !DILocation(line: 78, column: 17, scope: !140)
!155 = !DILocation(line: 78, column: 26, scope: !140)
!156 = !DILocation(line: 78, column: 5, scope: !140)
!157 = !DILocation(line: 81, column: 30, scope: !140)
!158 = !DILocation(line: 81, column: 39, scope: !140)
!159 = !DILocation(line: 81, column: 29, scope: !140)
!160 = !DILocation(line: 81, column: 44, scope: !140)
!161 = !DILocation(line: 81, column: 22, scope: !140)
!162 = !DILocation(line: 81, column: 14, scope: !140)
!163 = !DILocation(line: 81, column: 12, scope: !140)
!164 = !DILocation(line: 82, column: 9, scope: !165)
!165 = distinct !DILexicalBlock(scope: !140, file: !1, line: 82, column: 9)
!166 = !DILocation(line: 82, column: 16, scope: !165)
!167 = !DILocation(line: 82, column: 9, scope: !140)
!168 = !DILocation(line: 82, column: 25, scope: !165)
!169 = !DILocation(line: 85, column: 12, scope: !170)
!170 = distinct !DILexicalBlock(scope: !140, file: !1, line: 85, column: 5)
!171 = !DILocation(line: 85, column: 10, scope: !170)
!172 = !DILocation(line: 85, column: 17, scope: !173)
!173 = distinct !DILexicalBlock(scope: !170, file: !1, line: 85, column: 5)
!174 = !DILocation(line: 85, column: 21, scope: !173)
!175 = !DILocation(line: 85, column: 19, scope: !173)
!176 = !DILocation(line: 85, column: 5, scope: !170)
!177 = !DILocalVariable(name: "is_null", scope: !178, file: !1, line: 86, type: !10)
!178 = distinct !DILexicalBlock(scope: !173, file: !1, line: 85, column: 36)
!179 = !DILocation(line: 86, column: 13, scope: !178)
!180 = !DILocation(line: 87, column: 28, scope: !178)
!181 = !DILocation(line: 87, column: 9, scope: !178)
!182 = !DILocation(line: 88, column: 21, scope: !178)
!183 = !DILocation(line: 88, column: 29, scope: !178)
!184 = !DILocation(line: 88, column: 34, scope: !178)
!185 = !DILocation(line: 88, column: 37, scope: !178)
!186 = !DILocation(line: 88, column: 45, scope: !178)
!187 = !DILocation(line: 88, column: 9, scope: !178)
!188 = !DILocation(line: 90, column: 13, scope: !189)
!189 = distinct !DILexicalBlock(scope: !178, file: !1, line: 90, column: 13)
!190 = !DILocation(line: 90, column: 13, scope: !178)
!191 = !DILocation(line: 91, column: 13, scope: !192)
!192 = distinct !DILexicalBlock(scope: !189, file: !1, line: 90, column: 22)
!193 = !DILocation(line: 91, column: 20, scope: !192)
!194 = !DILocation(line: 91, column: 23, scope: !192)
!195 = !DILocation(line: 92, column: 9, scope: !192)
!196 = !DILocation(line: 93, column: 25, scope: !197)
!197 = distinct !DILexicalBlock(scope: !189, file: !1, line: 92, column: 16)
!198 = !DILocation(line: 93, column: 13, scope: !197)
!199 = !DILocation(line: 93, column: 20, scope: !197)
!200 = !DILocation(line: 93, column: 23, scope: !197)
!201 = !DILocation(line: 95, column: 5, scope: !178)
!202 = !DILocation(line: 85, column: 32, scope: !173)
!203 = !DILocation(line: 85, column: 5, scope: !173)
!204 = distinct !{!204, !176, !205, !128}
!205 = !DILocation(line: 95, column: 5, scope: !170)
!206 = !DILocation(line: 98, column: 21, scope: !140)
!207 = !DILocation(line: 98, column: 31, scope: !140)
!208 = !DILocation(line: 98, column: 5, scope: !140)
!209 = !DILocation(line: 101, column: 12, scope: !210)
!210 = distinct !DILexicalBlock(scope: !140, file: !1, line: 101, column: 5)
!211 = !DILocation(line: 101, column: 10, scope: !210)
!212 = !DILocation(line: 101, column: 17, scope: !213)
!213 = distinct !DILexicalBlock(scope: !210, file: !1, line: 101, column: 5)
!214 = !DILocation(line: 101, column: 21, scope: !213)
!215 = !DILocation(line: 101, column: 19, scope: !213)
!216 = !DILocation(line: 101, column: 5, scope: !210)
!217 = !DILocation(line: 102, column: 13, scope: !218)
!218 = distinct !DILexicalBlock(scope: !219, file: !1, line: 102, column: 13)
!219 = distinct !DILexicalBlock(scope: !213, file: !1, line: 101, column: 36)
!220 = !DILocation(line: 102, column: 20, scope: !218)
!221 = !DILocation(line: 102, column: 23, scope: !218)
!222 = !DILocation(line: 102, column: 13, scope: !219)
!223 = !DILocation(line: 102, column: 37, scope: !218)
!224 = !DILocation(line: 102, column: 44, scope: !218)
!225 = !DILocation(line: 102, column: 32, scope: !218)
!226 = !DILocation(line: 103, column: 5, scope: !219)
!227 = !DILocation(line: 101, column: 32, scope: !213)
!228 = !DILocation(line: 101, column: 5, scope: !213)
!229 = distinct !{!229, !216, !230, !128}
!230 = !DILocation(line: 103, column: 5, scope: !210)
!231 = !DILocation(line: 104, column: 10, scope: !140)
!232 = !DILocation(line: 104, column: 5, scope: !140)
!233 = !DILocation(line: 106, column: 5, scope: !140)
!234 = !DILocation(line: 107, column: 1, scope: !140)
!235 = distinct !DISubprogram(name: "memset", scope: !236, file: !236, line: 12, type: !237, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !29)
!236 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!237 = !DISubroutineType(types: !238)
!238 = !{!3, !3, !10, !26}
!239 = !DILocalVariable(name: "dst", arg: 1, scope: !235, file: !236, line: 12, type: !3)
!240 = !DILocation(line: 12, column: 20, scope: !235)
!241 = !DILocalVariable(name: "s", arg: 2, scope: !235, file: !236, line: 12, type: !10)
!242 = !DILocation(line: 12, column: 29, scope: !235)
!243 = !DILocalVariable(name: "count", arg: 3, scope: !235, file: !236, line: 12, type: !26)
!244 = !DILocation(line: 12, column: 39, scope: !235)
!245 = !DILocalVariable(name: "a", scope: !235, file: !236, line: 13, type: !246)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!248 = !DILocation(line: 13, column: 9, scope: !235)
!249 = !DILocation(line: 13, column: 13, scope: !235)
!250 = !DILocation(line: 14, column: 3, scope: !235)
!251 = !DILocation(line: 14, column: 15, scope: !235)
!252 = !DILocation(line: 14, column: 18, scope: !235)
!253 = !DILocation(line: 15, column: 12, scope: !235)
!254 = !DILocation(line: 15, column: 7, scope: !235)
!255 = !DILocation(line: 15, column: 10, scope: !235)
!256 = distinct !{!256, !250, !253, !128}
!257 = !DILocation(line: 16, column: 10, scope: !235)
!258 = !DILocation(line: 16, column: 3, scope: !235)

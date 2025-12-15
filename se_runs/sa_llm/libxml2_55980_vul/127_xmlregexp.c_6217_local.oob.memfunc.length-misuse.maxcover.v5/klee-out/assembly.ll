; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/127_xmlregexp.c_6217_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/127_xmlregexp.c_6217_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRegAtom = type { i8*, i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"(lenn <= (lenn + lenp + 2 - (lenp + 1))) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_55980_vul/127_xmlregexp.c_6217_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.simulate_target_function = private unnamed_addr constant [99 x i8] c"xmlRegAtom *simulate_target_function(const xmlChar *, int, const xmlChar *, int, void *, int, int)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"lenp\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"lenn\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"token\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"token2\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"max\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMallocAtomic(i64 noundef %0) #0 !dbg !27 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !34, metadata !DIExpression()), !dbg !35
  %3 = load i64, i64* %2, align 8, !dbg !36
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !37
  ret i8* %4, !dbg !38
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlRegFreeAtom(%struct._xmlRegAtom* noundef %0) #0 !dbg !39 {
  %2 = alloca %struct._xmlRegAtom*, align 8
  store %struct._xmlRegAtom* %0, %struct._xmlRegAtom** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRegAtom** %2, metadata !42, metadata !DIExpression()), !dbg !43
  %3 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %2, align 8, !dbg !44
  %4 = icmp ne %struct._xmlRegAtom* %3, null, !dbg !44
  br i1 %4, label %5, label %11, !dbg !46

5:                                                ; preds = %1
  %6 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %2, align 8, !dbg !47
  %7 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %6, i32 0, i32 0, !dbg !49
  %8 = load i8*, i8** %7, align 8, !dbg !49
  call void @free(i8* noundef %8) #7, !dbg !50
  %9 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %2, align 8, !dbg !51
  %10 = bitcast %struct._xmlRegAtom* %9 to i8*, !dbg !51
  call void @free(i8* noundef %10) #7, !dbg !52
  br label %11, !dbg !53

11:                                               ; preds = %5, %1
  ret void, !dbg !54
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlRegAtom* @simulate_target_function(i8* noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, i32 noundef %5, i32 noundef %6) #0 !dbg !55 {
  %8 = alloca %struct._xmlRegAtom*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct._xmlRegAtom*, align 8
  %17 = alloca i8*, align 8
  store i8* %0, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !60, metadata !DIExpression()), !dbg !61
  store i32 %1, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !62, metadata !DIExpression()), !dbg !63
  store i8* %2, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !64, metadata !DIExpression()), !dbg !65
  store i32 %3, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !66, metadata !DIExpression()), !dbg !67
  store i8* %4, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !68, metadata !DIExpression()), !dbg !69
  store i32 %5, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !70, metadata !DIExpression()), !dbg !71
  store i32 %6, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !72, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.declare(metadata %struct._xmlRegAtom** %16, metadata !74, metadata !DIExpression()), !dbg !75
  %18 = call noalias i8* @malloc(i64 noundef 32) #7, !dbg !76
  %19 = bitcast i8* %18 to %struct._xmlRegAtom*, !dbg !77
  store %struct._xmlRegAtom* %19, %struct._xmlRegAtom** %16, align 8, !dbg !75
  %20 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %16, align 8, !dbg !78
  %21 = icmp ne %struct._xmlRegAtom* %20, null, !dbg !78
  br i1 %21, label %23, label %22, !dbg !80

22:                                               ; preds = %7
  store %struct._xmlRegAtom* null, %struct._xmlRegAtom** %8, align 8, !dbg !81
  br label %93, !dbg !81

23:                                               ; preds = %7
  %24 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %16, align 8, !dbg !82
  %25 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %24, i32 0, i32 0, !dbg !83
  store i8* null, i8** %25, align 8, !dbg !84
  call void @llvm.dbg.declare(metadata i8** %17, metadata !85, metadata !DIExpression()), !dbg !86
  %26 = load i32, i32* %12, align 4, !dbg !87
  %27 = load i32, i32* %10, align 4, !dbg !88
  %28 = add nsw i32 %26, %27, !dbg !89
  %29 = add nsw i32 %28, 2, !dbg !90
  %30 = sext i32 %29 to i64, !dbg !87
  %31 = call i8* @xmlMallocAtomic(i64 noundef %30), !dbg !91
  store i8* %31, i8** %17, align 8, !dbg !86
  %32 = load i8*, i8** %17, align 8, !dbg !92
  %33 = icmp eq i8* %32, null, !dbg !94
  br i1 %33, label %34, label %36, !dbg !95

34:                                               ; preds = %23
  %35 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %16, align 8, !dbg !96
  call void @xmlRegFreeAtom(%struct._xmlRegAtom* noundef %35), !dbg !98
  store %struct._xmlRegAtom* null, %struct._xmlRegAtom** %8, align 8, !dbg !99
  br label %93, !dbg !99

36:                                               ; preds = %23
  %37 = load i8*, i8** %17, align 8, !dbg !100
  %38 = getelementptr inbounds i8, i8* %37, i64 0, !dbg !100
  %39 = load i8*, i8** %9, align 8, !dbg !101
  %40 = load i32, i32* %10, align 4, !dbg !102
  %41 = sext i32 %40 to i64, !dbg !102
  %42 = call i8* @memcpy(i8* %38, i8* %39, i64 %41), !dbg !103
  %43 = load i8*, i8** %17, align 8, !dbg !104
  %44 = load i32, i32* %10, align 4, !dbg !105
  %45 = sext i32 %44 to i64, !dbg !104
  %46 = getelementptr inbounds i8, i8* %43, i64 %45, !dbg !104
  store i8 124, i8* %46, align 1, !dbg !106
  %47 = load i32, i32* %12, align 4, !dbg !107
  %48 = load i32, i32* %12, align 4, !dbg !107
  %49 = load i32, i32* %10, align 4, !dbg !107
  %50 = add nsw i32 %48, %49, !dbg !107
  %51 = add nsw i32 %50, 2, !dbg !107
  %52 = load i32, i32* %10, align 4, !dbg !107
  %53 = add nsw i32 %52, 1, !dbg !107
  %54 = sub nsw i32 %51, %53, !dbg !107
  %55 = icmp sle i32 %47, %54, !dbg !107
  br i1 %55, label %56, label %58, !dbg !107

56:                                               ; preds = %36
  br i1 true, label %57, label %58, !dbg !107

57:                                               ; preds = %56
  br label %60, !dbg !107

58:                                               ; preds = %56, %36
  %59 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.2, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @__PRETTY_FUNCTION__.simulate_target_function, i64 0, i64 0)), !dbg !107
  br label %60, !dbg !107

60:                                               ; preds = %58, %57
  %61 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.2, i64 0, i64 0), i32 noundef 58, i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @__PRETTY_FUNCTION__.simulate_target_function, i64 0, i64 0)), !dbg !108
  %62 = load i8*, i8** %17, align 8, !dbg !109
  %63 = load i32, i32* %10, align 4, !dbg !110
  %64 = add nsw i32 %63, 1, !dbg !111
  %65 = sext i32 %64 to i64, !dbg !109
  %66 = getelementptr inbounds i8, i8* %62, i64 %65, !dbg !109
  %67 = load i8*, i8** %11, align 8, !dbg !112
  %68 = load i32, i32* %12, align 4, !dbg !113
  %69 = sext i32 %68 to i64, !dbg !113
  %70 = call i8* @memcpy(i8* %66, i8* %67, i64 %69), !dbg !114
  %71 = load i8*, i8** %17, align 8, !dbg !115
  %72 = load i32, i32* %12, align 4, !dbg !116
  %73 = load i32, i32* %10, align 4, !dbg !117
  %74 = add nsw i32 %72, %73, !dbg !118
  %75 = add nsw i32 %74, 1, !dbg !119
  %76 = sext i32 %75 to i64, !dbg !115
  %77 = getelementptr inbounds i8, i8* %71, i64 %76, !dbg !115
  store i8 0, i8* %77, align 1, !dbg !120
  %78 = load i8*, i8** %17, align 8, !dbg !121
  %79 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %16, align 8, !dbg !122
  %80 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %79, i32 0, i32 0, !dbg !123
  store i8* %78, i8** %80, align 8, !dbg !124
  %81 = load i8*, i8** %13, align 8, !dbg !125
  %82 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %16, align 8, !dbg !126
  %83 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %82, i32 0, i32 1, !dbg !127
  store i8* %81, i8** %83, align 8, !dbg !128
  %84 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %16, align 8, !dbg !129
  %85 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %84, i32 0, i32 2, !dbg !130
  store i32 1, i32* %85, align 8, !dbg !131
  %86 = load i32, i32* %14, align 4, !dbg !132
  %87 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %16, align 8, !dbg !133
  %88 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %87, i32 0, i32 3, !dbg !134
  store i32 %86, i32* %88, align 4, !dbg !135
  %89 = load i32, i32* %15, align 4, !dbg !136
  %90 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %16, align 8, !dbg !137
  %91 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %90, i32 0, i32 4, !dbg !138
  store i32 %89, i32* %91, align 8, !dbg !139
  %92 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %16, align 8, !dbg !140
  store %struct._xmlRegAtom* %92, %struct._xmlRegAtom** %8, align 8, !dbg !141
  br label %93, !dbg !141

93:                                               ; preds = %60, %34, %22
  %94 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %8, align 8, !dbg !142
  ret %struct._xmlRegAtom* %94, !dbg !142
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !143 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [256 x i8], align 16
  %5 = alloca [256 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct._xmlRegAtom*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !146, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.declare(metadata i32* %3, metadata !148, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.declare(metadata [256 x i8]* %4, metadata !150, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.declare(metadata [256 x i8]* %5, metadata !155, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.declare(metadata i8** %6, metadata !157, metadata !DIExpression()), !dbg !158
  call void @llvm.dbg.declare(metadata i32* %7, metadata !159, metadata !DIExpression()), !dbg !160
  call void @llvm.dbg.declare(metadata i32* %8, metadata !161, metadata !DIExpression()), !dbg !162
  %10 = bitcast i32* %2 to i8*, !dbg !163
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)), !dbg !164
  %11 = bitcast i32* %3 to i8*, !dbg !165
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)), !dbg !166
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !167
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 256, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)), !dbg !168
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !169
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 256, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)), !dbg !170
  %14 = bitcast i8** %6 to i8*, !dbg !171
  call void @klee_make_symbolic(i8* noundef %14, i64 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)), !dbg !172
  %15 = bitcast i32* %7 to i8*, !dbg !173
  call void @klee_make_symbolic(i8* noundef %15, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)), !dbg !174
  %16 = bitcast i32* %8 to i8*, !dbg !175
  call void @klee_make_symbolic(i8* noundef %16, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)), !dbg !176
  %17 = load i32, i32* %2, align 4, !dbg !177
  %18 = icmp sge i32 %17, 0, !dbg !178
  br i1 %18, label %19, label %22, !dbg !179

19:                                               ; preds = %0
  %20 = load i32, i32* %2, align 4, !dbg !180
  %21 = icmp slt i32 %20, 256, !dbg !181
  br label %22

22:                                               ; preds = %19, %0
  %23 = phi i1 [ false, %0 ], [ %21, %19 ], !dbg !182
  %24 = zext i1 %23 to i32, !dbg !179
  %25 = sext i32 %24 to i64, !dbg !177
  call void @klee_assume(i64 noundef %25), !dbg !183
  %26 = load i32, i32* %3, align 4, !dbg !184
  %27 = icmp sge i32 %26, 0, !dbg !185
  br i1 %27, label %28, label %31, !dbg !186

28:                                               ; preds = %22
  %29 = load i32, i32* %3, align 4, !dbg !187
  %30 = icmp slt i32 %29, 256, !dbg !188
  br label %31

31:                                               ; preds = %28, %22
  %32 = phi i1 [ false, %22 ], [ %30, %28 ], !dbg !182
  %33 = zext i1 %32 to i32, !dbg !186
  %34 = sext i32 %33 to i64, !dbg !184
  call void @klee_assume(i64 noundef %34), !dbg !189
  %35 = load i32, i32* %2, align 4, !dbg !190
  %36 = icmp sle i32 %35, 256, !dbg !191
  %37 = zext i1 %36 to i32, !dbg !191
  %38 = sext i32 %37 to i64, !dbg !190
  call void @klee_assume(i64 noundef %38), !dbg !192
  %39 = load i32, i32* %3, align 4, !dbg !193
  %40 = icmp sle i32 %39, 256, !dbg !194
  %41 = zext i1 %40 to i32, !dbg !194
  %42 = sext i32 %41 to i64, !dbg !193
  call void @klee_assume(i64 noundef %42), !dbg !195
  call void @llvm.dbg.declare(metadata %struct._xmlRegAtom** %9, metadata !196, metadata !DIExpression()), !dbg !197
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !198
  %44 = load i32, i32* %2, align 4, !dbg !199
  %45 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !200
  %46 = load i32, i32* %3, align 4, !dbg !201
  %47 = load i8*, i8** %6, align 8, !dbg !202
  %48 = load i32, i32* %7, align 4, !dbg !203
  %49 = load i32, i32* %8, align 4, !dbg !204
  %50 = call %struct._xmlRegAtom* @simulate_target_function(i8* noundef %43, i32 noundef %44, i8* noundef %45, i32 noundef %46, i8* noundef %47, i32 noundef %48, i32 noundef %49), !dbg !205
  store %struct._xmlRegAtom* %50, %struct._xmlRegAtom** %9, align 8, !dbg !197
  %51 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %9, align 8, !dbg !206
  %52 = icmp ne %struct._xmlRegAtom* %51, null, !dbg !206
  br i1 %52, label %53, label %55, !dbg !208

53:                                               ; preds = %31
  %54 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %9, align 8, !dbg !209
  call void @xmlRegFreeAtom(%struct._xmlRegAtom* noundef %54), !dbg !211
  br label %55, !dbg !212

55:                                               ; preds = %53, %31
  ret i32 0, !dbg !213
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !214 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !220, metadata !DIExpression()), !dbg !221
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !222, metadata !DIExpression()), !dbg !223
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !224, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.declare(metadata i8** %7, metadata !226, metadata !DIExpression()), !dbg !229
  %9 = load i8*, i8** %4, align 8, !dbg !230
  store i8* %9, i8** %7, align 8, !dbg !229
  call void @llvm.dbg.declare(metadata i8** %8, metadata !231, metadata !DIExpression()), !dbg !234
  %10 = load i8*, i8** %5, align 8, !dbg !235
  store i8* %10, i8** %8, align 8, !dbg !234
  br label %11, !dbg !236

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !237
  %13 = add i64 %12, -1, !dbg !237
  store i64 %13, i64* %6, align 8, !dbg !237
  %14 = icmp ugt i64 %12, 0, !dbg !238
  br i1 %14, label %15, label %21, !dbg !236

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !239
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !239
  store i8* %17, i8** %8, align 8, !dbg !239
  %18 = load i8, i8* %16, align 1, !dbg !240
  %19 = load i8*, i8** %7, align 8, !dbg !241
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !241
  store i8* %20, i8** %7, align 8, !dbg !241
  store i8 %18, i8* %19, align 1, !dbg !242
  br label %11, !dbg !236, !llvm.loop !243

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !245
  ret i8* %22, !dbg !246
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26, !26}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/127_xmlregexp.c_6217_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "cf8b833c11a6232ecf1b5b4422a5f276")
!2 = !{!3, !8, !12}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegAtom", file: !1, line: 11, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegAtom", file: !1, line: 12, size: 256, elements: !6)
!6 = !{!7, !11, !13, !15, !16}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "valuep", scope: !5, file: !1, line: 13, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !1, line: 10, baseType: !10)
!10 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5, file: !1, line: 14, baseType: !12, size: 64, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "quant", scope: !5, file: !1, line: 15, baseType: !14, size: 32, offset: 128)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !5, file: !1, line: 16, baseType: !14, size: 32, offset: 160)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !5, file: !1, line: 17, baseType: !14, size: 32, offset: 192)
!17 = distinct !DICompileUnit(language: DW_LANG_C99, file: !18, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!19 = !{i32 7, !"Dwarf Version", i32 5}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{i32 1, !"wchar_size", i32 4}
!22 = !{i32 7, !"PIC Level", i32 2}
!23 = !{i32 7, !"PIE Level", i32 2}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"Ubuntu clang version 14.0.6"}
!27 = distinct !DISubprogram(name: "xmlMallocAtomic", scope: !1, file: !1, line: 21, type: !28, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!28 = !DISubroutineType(types: !29)
!29 = !{!12, !30}
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !31, line: 46, baseType: !32)
!31 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!32 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!33 = !{}
!34 = !DILocalVariable(name: "size", arg: 1, scope: !27, file: !1, line: 21, type: !30)
!35 = !DILocation(line: 21, column: 30, scope: !27)
!36 = !DILocation(line: 22, column: 19, scope: !27)
!37 = !DILocation(line: 22, column: 12, scope: !27)
!38 = !DILocation(line: 22, column: 5, scope: !27)
!39 = distinct !DISubprogram(name: "xmlRegFreeAtom", scope: !1, file: !1, line: 26, type: !40, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !3}
!42 = !DILocalVariable(name: "atom", arg: 1, scope: !39, file: !1, line: 26, type: !3)
!43 = !DILocation(line: 26, column: 33, scope: !39)
!44 = !DILocation(line: 27, column: 9, scope: !45)
!45 = distinct !DILexicalBlock(scope: !39, file: !1, line: 27, column: 9)
!46 = !DILocation(line: 27, column: 9, scope: !39)
!47 = !DILocation(line: 28, column: 14, scope: !48)
!48 = distinct !DILexicalBlock(scope: !45, file: !1, line: 27, column: 15)
!49 = !DILocation(line: 28, column: 20, scope: !48)
!50 = !DILocation(line: 28, column: 9, scope: !48)
!51 = !DILocation(line: 29, column: 14, scope: !48)
!52 = !DILocation(line: 29, column: 9, scope: !48)
!53 = !DILocation(line: 30, column: 5, scope: !48)
!54 = !DILocation(line: 31, column: 1, scope: !39)
!55 = distinct !DISubprogram(name: "simulate_target_function", scope: !1, file: !1, line: 34, type: !56, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!56 = !DISubroutineType(types: !57)
!57 = !{!3, !58, !14, !58, !14, !12, !14, !14}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!60 = !DILocalVariable(name: "token", arg: 1, scope: !55, file: !1, line: 34, type: !58)
!61 = !DILocation(line: 34, column: 53, scope: !55)
!62 = !DILocalVariable(name: "lenp", arg: 2, scope: !55, file: !1, line: 34, type: !14)
!63 = !DILocation(line: 34, column: 64, scope: !55)
!64 = !DILocalVariable(name: "token2", arg: 3, scope: !55, file: !1, line: 35, type: !58)
!65 = !DILocation(line: 35, column: 53, scope: !55)
!66 = !DILocalVariable(name: "lenn", arg: 4, scope: !55, file: !1, line: 35, type: !14)
!67 = !DILocation(line: 35, column: 65, scope: !55)
!68 = !DILocalVariable(name: "data", arg: 5, scope: !55, file: !1, line: 36, type: !12)
!69 = !DILocation(line: 36, column: 44, scope: !55)
!70 = !DILocalVariable(name: "min", arg: 6, scope: !55, file: !1, line: 36, type: !14)
!71 = !DILocation(line: 36, column: 54, scope: !55)
!72 = !DILocalVariable(name: "max", arg: 7, scope: !55, file: !1, line: 36, type: !14)
!73 = !DILocation(line: 36, column: 63, scope: !55)
!74 = !DILocalVariable(name: "atom", scope: !55, file: !1, line: 37, type: !3)
!75 = !DILocation(line: 37, column: 17, scope: !55)
!76 = !DILocation(line: 37, column: 37, scope: !55)
!77 = !DILocation(line: 37, column: 24, scope: !55)
!78 = !DILocation(line: 38, column: 10, scope: !79)
!79 = distinct !DILexicalBlock(scope: !55, file: !1, line: 38, column: 9)
!80 = !DILocation(line: 38, column: 9, scope: !55)
!81 = !DILocation(line: 38, column: 16, scope: !79)
!82 = !DILocation(line: 40, column: 5, scope: !55)
!83 = !DILocation(line: 40, column: 11, scope: !55)
!84 = !DILocation(line: 40, column: 18, scope: !55)
!85 = !DILocalVariable(name: "str", scope: !55, file: !1, line: 43, type: !8)
!86 = !DILocation(line: 43, column: 14, scope: !55)
!87 = !DILocation(line: 43, column: 46, scope: !55)
!88 = !DILocation(line: 43, column: 53, scope: !55)
!89 = !DILocation(line: 43, column: 51, scope: !55)
!90 = !DILocation(line: 43, column: 58, scope: !55)
!91 = !DILocation(line: 43, column: 30, scope: !55)
!92 = !DILocation(line: 44, column: 9, scope: !93)
!93 = distinct !DILexicalBlock(scope: !55, file: !1, line: 44, column: 9)
!94 = !DILocation(line: 44, column: 13, scope: !93)
!95 = !DILocation(line: 44, column: 9, scope: !55)
!96 = !DILocation(line: 45, column: 24, scope: !97)
!97 = distinct !DILexicalBlock(scope: !93, file: !1, line: 44, column: 22)
!98 = !DILocation(line: 45, column: 9, scope: !97)
!99 = !DILocation(line: 46, column: 9, scope: !97)
!100 = !DILocation(line: 50, column: 13, scope: !55)
!101 = !DILocation(line: 50, column: 21, scope: !55)
!102 = !DILocation(line: 50, column: 28, scope: !55)
!103 = !DILocation(line: 50, column: 5, scope: !55)
!104 = !DILocation(line: 51, column: 5, scope: !55)
!105 = !DILocation(line: 51, column: 9, scope: !55)
!106 = !DILocation(line: 51, column: 15, scope: !55)
!107 = !DILocation(line: 55, column: 5, scope: !55)
!108 = !DILocation(line: 58, column: 5, scope: !55)
!109 = !DILocation(line: 60, column: 13, scope: !55)
!110 = !DILocation(line: 60, column: 17, scope: !55)
!111 = !DILocation(line: 60, column: 22, scope: !55)
!112 = !DILocation(line: 60, column: 28, scope: !55)
!113 = !DILocation(line: 60, column: 36, scope: !55)
!114 = !DILocation(line: 60, column: 5, scope: !55)
!115 = !DILocation(line: 61, column: 5, scope: !55)
!116 = !DILocation(line: 61, column: 9, scope: !55)
!117 = !DILocation(line: 61, column: 16, scope: !55)
!118 = !DILocation(line: 61, column: 14, scope: !55)
!119 = !DILocation(line: 61, column: 21, scope: !55)
!120 = !DILocation(line: 61, column: 26, scope: !55)
!121 = !DILocation(line: 63, column: 20, scope: !55)
!122 = !DILocation(line: 63, column: 5, scope: !55)
!123 = !DILocation(line: 63, column: 11, scope: !55)
!124 = !DILocation(line: 63, column: 18, scope: !55)
!125 = !DILocation(line: 64, column: 18, scope: !55)
!126 = !DILocation(line: 64, column: 5, scope: !55)
!127 = !DILocation(line: 64, column: 11, scope: !55)
!128 = !DILocation(line: 64, column: 16, scope: !55)
!129 = !DILocation(line: 65, column: 5, scope: !55)
!130 = !DILocation(line: 65, column: 11, scope: !55)
!131 = !DILocation(line: 65, column: 17, scope: !55)
!132 = !DILocation(line: 66, column: 17, scope: !55)
!133 = !DILocation(line: 66, column: 5, scope: !55)
!134 = !DILocation(line: 66, column: 11, scope: !55)
!135 = !DILocation(line: 66, column: 15, scope: !55)
!136 = !DILocation(line: 67, column: 17, scope: !55)
!137 = !DILocation(line: 67, column: 5, scope: !55)
!138 = !DILocation(line: 67, column: 11, scope: !55)
!139 = !DILocation(line: 67, column: 15, scope: !55)
!140 = !DILocation(line: 69, column: 12, scope: !55)
!141 = !DILocation(line: 69, column: 5, scope: !55)
!142 = !DILocation(line: 70, column: 1, scope: !55)
!143 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 72, type: !144, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!144 = !DISubroutineType(types: !145)
!145 = !{!14}
!146 = !DILocalVariable(name: "lenp", scope: !143, file: !1, line: 74, type: !14)
!147 = !DILocation(line: 74, column: 9, scope: !143)
!148 = !DILocalVariable(name: "lenn", scope: !143, file: !1, line: 74, type: !14)
!149 = !DILocation(line: 74, column: 15, scope: !143)
!150 = !DILocalVariable(name: "token", scope: !143, file: !1, line: 75, type: !151)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 2048, elements: !152)
!152 = !{!153}
!153 = !DISubrange(count: 256)
!154 = !DILocation(line: 75, column: 13, scope: !143)
!155 = !DILocalVariable(name: "token2", scope: !143, file: !1, line: 76, type: !151)
!156 = !DILocation(line: 76, column: 13, scope: !143)
!157 = !DILocalVariable(name: "data", scope: !143, file: !1, line: 77, type: !12)
!158 = !DILocation(line: 77, column: 11, scope: !143)
!159 = !DILocalVariable(name: "min", scope: !143, file: !1, line: 78, type: !14)
!160 = !DILocation(line: 78, column: 9, scope: !143)
!161 = !DILocalVariable(name: "max", scope: !143, file: !1, line: 78, type: !14)
!162 = !DILocation(line: 78, column: 14, scope: !143)
!163 = !DILocation(line: 81, column: 24, scope: !143)
!164 = !DILocation(line: 81, column: 5, scope: !143)
!165 = !DILocation(line: 82, column: 24, scope: !143)
!166 = !DILocation(line: 82, column: 5, scope: !143)
!167 = !DILocation(line: 83, column: 24, scope: !143)
!168 = !DILocation(line: 83, column: 5, scope: !143)
!169 = !DILocation(line: 84, column: 24, scope: !143)
!170 = !DILocation(line: 84, column: 5, scope: !143)
!171 = !DILocation(line: 85, column: 24, scope: !143)
!172 = !DILocation(line: 85, column: 5, scope: !143)
!173 = !DILocation(line: 86, column: 24, scope: !143)
!174 = !DILocation(line: 86, column: 5, scope: !143)
!175 = !DILocation(line: 87, column: 24, scope: !143)
!176 = !DILocation(line: 87, column: 5, scope: !143)
!177 = !DILocation(line: 90, column: 17, scope: !143)
!178 = !DILocation(line: 90, column: 22, scope: !143)
!179 = !DILocation(line: 90, column: 27, scope: !143)
!180 = !DILocation(line: 90, column: 30, scope: !143)
!181 = !DILocation(line: 90, column: 35, scope: !143)
!182 = !DILocation(line: 0, scope: !143)
!183 = !DILocation(line: 90, column: 5, scope: !143)
!184 = !DILocation(line: 91, column: 17, scope: !143)
!185 = !DILocation(line: 91, column: 22, scope: !143)
!186 = !DILocation(line: 91, column: 27, scope: !143)
!187 = !DILocation(line: 91, column: 30, scope: !143)
!188 = !DILocation(line: 91, column: 35, scope: !143)
!189 = !DILocation(line: 91, column: 5, scope: !143)
!190 = !DILocation(line: 94, column: 17, scope: !143)
!191 = !DILocation(line: 94, column: 22, scope: !143)
!192 = !DILocation(line: 94, column: 5, scope: !143)
!193 = !DILocation(line: 95, column: 17, scope: !143)
!194 = !DILocation(line: 95, column: 22, scope: !143)
!195 = !DILocation(line: 95, column: 5, scope: !143)
!196 = !DILocalVariable(name: "result", scope: !143, file: !1, line: 98, type: !3)
!197 = !DILocation(line: 98, column: 17, scope: !143)
!198 = !DILocation(line: 98, column: 51, scope: !143)
!199 = !DILocation(line: 98, column: 58, scope: !143)
!200 = !DILocation(line: 98, column: 64, scope: !143)
!201 = !DILocation(line: 98, column: 72, scope: !143)
!202 = !DILocation(line: 98, column: 78, scope: !143)
!203 = !DILocation(line: 98, column: 84, scope: !143)
!204 = !DILocation(line: 98, column: 89, scope: !143)
!205 = !DILocation(line: 98, column: 26, scope: !143)
!206 = !DILocation(line: 101, column: 9, scope: !207)
!207 = distinct !DILexicalBlock(scope: !143, file: !1, line: 101, column: 9)
!208 = !DILocation(line: 101, column: 9, scope: !143)
!209 = !DILocation(line: 102, column: 24, scope: !210)
!210 = distinct !DILexicalBlock(scope: !207, file: !1, line: 101, column: 17)
!211 = !DILocation(line: 102, column: 9, scope: !210)
!212 = !DILocation(line: 103, column: 5, scope: !210)
!213 = !DILocation(line: 105, column: 5, scope: !143)
!214 = distinct !DISubprogram(name: "memcpy", scope: !215, file: !215, line: 12, type: !216, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !33)
!215 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!216 = !DISubroutineType(types: !217)
!217 = !{!12, !12, !218, !30}
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!220 = !DILocalVariable(name: "destaddr", arg: 1, scope: !214, file: !215, line: 12, type: !12)
!221 = !DILocation(line: 12, column: 20, scope: !214)
!222 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !214, file: !215, line: 12, type: !218)
!223 = !DILocation(line: 12, column: 42, scope: !214)
!224 = !DILocalVariable(name: "len", arg: 3, scope: !214, file: !215, line: 12, type: !30)
!225 = !DILocation(line: 12, column: 58, scope: !214)
!226 = !DILocalVariable(name: "dest", scope: !214, file: !215, line: 13, type: !227)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!229 = !DILocation(line: 13, column: 9, scope: !214)
!230 = !DILocation(line: 13, column: 16, scope: !214)
!231 = !DILocalVariable(name: "src", scope: !214, file: !215, line: 14, type: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !228)
!234 = !DILocation(line: 14, column: 15, scope: !214)
!235 = !DILocation(line: 14, column: 21, scope: !214)
!236 = !DILocation(line: 16, column: 3, scope: !214)
!237 = !DILocation(line: 16, column: 13, scope: !214)
!238 = !DILocation(line: 16, column: 16, scope: !214)
!239 = !DILocation(line: 17, column: 19, scope: !214)
!240 = !DILocation(line: 17, column: 15, scope: !214)
!241 = !DILocation(line: 17, column: 10, scope: !214)
!242 = !DILocation(line: 17, column: 13, scope: !214)
!243 = distinct !{!243, !236, !239, !244}
!244 = !{!"llvm.loop.mustprogress"}
!245 = !DILocation(line: 18, column: 10, scope: !214)
!246 = !DILocation(line: 18, column: 3, scope: !214)

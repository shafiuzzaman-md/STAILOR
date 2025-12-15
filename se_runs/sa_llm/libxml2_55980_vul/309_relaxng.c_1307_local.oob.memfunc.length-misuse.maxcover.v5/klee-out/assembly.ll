; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/309_relaxng.c_1307_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/309_relaxng.c_1307_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRelaxNGValidState = type { %struct._xmlAttr**, i32, i32 }
%struct._xmlAttr = type opaque

@.str = private unnamed_addr constant [19 x i8] c"allocating states\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [102 x i8] c"(state.maxAttrs >= 0 && state.nbAttrs >= 0 && state.nbAttrs <= state.maxAttrs) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_55980_vul/309_relaxng.c_1307_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !29 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !36, metadata !DIExpression()), !dbg !37
  %3 = load i64, i64* %2, align 8, !dbg !38
  %4 = call noalias i8* @malloc(i64 noundef %3) #8, !dbg !39
  ret i8* %4, !dbg !40
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlRngVErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !41 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !47, metadata !DIExpression()), !dbg !48
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !49, metadata !DIExpression()), !dbg !50
  ret void, !dbg !51
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlRelaxNGValidState* @target_function(%struct._xmlRelaxNGValidState* noundef %0) #0 !dbg !52 {
  %2 = alloca %struct._xmlRelaxNGValidState*, align 8
  %3 = alloca %struct._xmlRelaxNGValidState*, align 8
  %4 = alloca %struct._xmlRelaxNGValidState*, align 8
  %5 = alloca %struct._xmlAttr**, align 8
  %6 = alloca i32, align 4
  store %struct._xmlRelaxNGValidState* %0, %struct._xmlRelaxNGValidState** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidState** %3, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidState** %4, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata %struct._xmlAttr*** %5, metadata !59, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata i32* %6, metadata !61, metadata !DIExpression()), !dbg !62
  %7 = call noalias i8* @malloc(i64 noundef 16) #8, !dbg !63
  %8 = bitcast i8* %7 to %struct._xmlRelaxNGValidState*, !dbg !64
  store %struct._xmlRelaxNGValidState* %8, %struct._xmlRelaxNGValidState** %4, align 8, !dbg !65
  %9 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %4, align 8, !dbg !66
  %10 = icmp eq %struct._xmlRelaxNGValidState* %9, null, !dbg !68
  br i1 %10, label %11, label %12, !dbg !69

11:                                               ; preds = %1
  call void @xmlRngVErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0)), !dbg !70
  store %struct._xmlRelaxNGValidState* null, %struct._xmlRelaxNGValidState** %2, align 8, !dbg !72
  br label %68, !dbg !72

12:                                               ; preds = %1
  %13 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %4, align 8, !dbg !73
  %14 = bitcast %struct._xmlRelaxNGValidState* %13 to i8*, !dbg !74
  %15 = call i8* @memset(i8* %14, i32 0, i64 16), !dbg !74
  %16 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %4, align 8, !dbg !75
  %17 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %16, i32 0, i32 0, !dbg !76
  %18 = load %struct._xmlAttr**, %struct._xmlAttr*** %17, align 8, !dbg !76
  store %struct._xmlAttr** %18, %struct._xmlAttr*** %5, align 8, !dbg !77
  %19 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %4, align 8, !dbg !78
  %20 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %19, i32 0, i32 1, !dbg !79
  %21 = load i32, i32* %20, align 8, !dbg !79
  store i32 %21, i32* %6, align 4, !dbg !80
  %22 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %4, align 8, !dbg !81
  %23 = bitcast %struct._xmlRelaxNGValidState* %22 to i8*, !dbg !82
  %24 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %3, align 8, !dbg !83
  %25 = bitcast %struct._xmlRelaxNGValidState* %24 to i8*, !dbg !82
  %26 = call i8* @memcpy(i8* %23, i8* %25, i64 16), !dbg !82
  %27 = load %struct._xmlAttr**, %struct._xmlAttr*** %5, align 8, !dbg !84
  %28 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %4, align 8, !dbg !85
  %29 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %28, i32 0, i32 0, !dbg !86
  store %struct._xmlAttr** %27, %struct._xmlAttr*** %29, align 8, !dbg !87
  %30 = load i32, i32* %6, align 4, !dbg !88
  %31 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %4, align 8, !dbg !89
  %32 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %31, i32 0, i32 1, !dbg !90
  store i32 %30, i32* %32, align 8, !dbg !91
  %33 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %3, align 8, !dbg !92
  %34 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %33, i32 0, i32 2, !dbg !94
  %35 = load i32, i32* %34, align 4, !dbg !94
  %36 = icmp sgt i32 %35, 0, !dbg !95
  br i1 %36, label %37, label %66, !dbg !96

37:                                               ; preds = %12
  %38 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %4, align 8, !dbg !97
  %39 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %38, i32 0, i32 0, !dbg !100
  %40 = load %struct._xmlAttr**, %struct._xmlAttr*** %39, align 8, !dbg !100
  %41 = icmp eq %struct._xmlAttr** %40, null, !dbg !101
  br i1 %41, label %42, label %65, !dbg !102

42:                                               ; preds = %37
  %43 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %3, align 8, !dbg !103
  %44 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %43, i32 0, i32 1, !dbg !105
  %45 = load i32, i32* %44, align 8, !dbg !105
  %46 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %4, align 8, !dbg !106
  %47 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %46, i32 0, i32 1, !dbg !107
  store i32 %45, i32* %47, align 8, !dbg !108
  %48 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %4, align 8, !dbg !109
  %49 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %48, i32 0, i32 1, !dbg !110
  %50 = load i32, i32* %49, align 8, !dbg !110
  %51 = sext i32 %50 to i64, !dbg !109
  %52 = mul i64 %51, 8, !dbg !111
  %53 = call i8* @xmlMalloc(i64 noundef %52), !dbg !112
  %54 = bitcast i8* %53 to %struct._xmlAttr**, !dbg !113
  %55 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %4, align 8, !dbg !114
  %56 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %55, i32 0, i32 0, !dbg !115
  store %struct._xmlAttr** %54, %struct._xmlAttr*** %56, align 8, !dbg !116
  %57 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %4, align 8, !dbg !117
  %58 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %57, i32 0, i32 0, !dbg !119
  %59 = load %struct._xmlAttr**, %struct._xmlAttr*** %58, align 8, !dbg !119
  %60 = icmp eq %struct._xmlAttr** %59, null, !dbg !120
  br i1 %60, label %61, label %64, !dbg !121

61:                                               ; preds = %42
  %62 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %4, align 8, !dbg !122
  %63 = bitcast %struct._xmlRelaxNGValidState* %62 to i8*, !dbg !122
  call void @free(i8* noundef %63) #8, !dbg !124
  store %struct._xmlRelaxNGValidState* null, %struct._xmlRelaxNGValidState** %2, align 8, !dbg !125
  br label %68, !dbg !125

64:                                               ; preds = %42
  br label %65, !dbg !126

65:                                               ; preds = %64, %37
  br label %66, !dbg !127

66:                                               ; preds = %65, %12
  %67 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %4, align 8, !dbg !128
  store %struct._xmlRelaxNGValidState* %67, %struct._xmlRelaxNGValidState** %2, align 8, !dbg !129
  br label %68, !dbg !129

68:                                               ; preds = %66, %61, %11
  %69 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %2, align 8, !dbg !130
  ret %struct._xmlRelaxNGValidState* %69, !dbg !130
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !131 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlRelaxNGValidState, align 8
  %3 = alloca %struct._xmlRelaxNGValidState*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidState* %2, metadata !134, metadata !DIExpression()), !dbg !135
  %4 = bitcast %struct._xmlRelaxNGValidState* %2 to i8*, !dbg !136
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 16, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)), !dbg !137
  %5 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %2, i32 0, i32 1, !dbg !138
  %6 = load i32, i32* %5, align 8, !dbg !138
  %7 = icmp sge i32 %6, 0, !dbg !139
  %8 = zext i1 %7 to i32, !dbg !139
  %9 = sext i32 %8 to i64, !dbg !140
  call void @klee_assume(i64 noundef %9), !dbg !141
  %10 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %2, i32 0, i32 2, !dbg !142
  %11 = load i32, i32* %10, align 4, !dbg !142
  %12 = icmp sge i32 %11, 0, !dbg !143
  %13 = zext i1 %12 to i32, !dbg !143
  %14 = sext i32 %13 to i64, !dbg !144
  call void @klee_assume(i64 noundef %14), !dbg !145
  %15 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %2, i32 0, i32 2, !dbg !146
  %16 = load i32, i32* %15, align 4, !dbg !146
  %17 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %2, i32 0, i32 1, !dbg !147
  %18 = load i32, i32* %17, align 8, !dbg !147
  %19 = icmp sle i32 %16, %18, !dbg !148
  %20 = zext i1 %19 to i32, !dbg !148
  %21 = sext i32 %20 to i64, !dbg !149
  call void @klee_assume(i64 noundef %21), !dbg !150
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidState** %3, metadata !151, metadata !DIExpression()), !dbg !152
  %22 = call %struct._xmlRelaxNGValidState* @target_function(%struct._xmlRelaxNGValidState* noundef %2), !dbg !153
  store %struct._xmlRelaxNGValidState* %22, %struct._xmlRelaxNGValidState** %3, align 8, !dbg !152
  %23 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %3, align 8, !dbg !154
  %24 = icmp ne %struct._xmlRelaxNGValidState* %23, null, !dbg !156
  br i1 %24, label %25, label %47, !dbg !157

25:                                               ; preds = %0
  %26 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %2, i32 0, i32 1, !dbg !158
  %27 = load i32, i32* %26, align 8, !dbg !158
  %28 = icmp sge i32 %27, 0, !dbg !158
  br i1 %28, label %29, label %41, !dbg !158

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %2, i32 0, i32 2, !dbg !158
  %31 = load i32, i32* %30, align 4, !dbg !158
  %32 = icmp sge i32 %31, 0, !dbg !158
  br i1 %32, label %33, label %41, !dbg !158

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %2, i32 0, i32 2, !dbg !158
  %35 = load i32, i32* %34, align 4, !dbg !158
  %36 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %2, i32 0, i32 1, !dbg !158
  %37 = load i32, i32* %36, align 8, !dbg !158
  %38 = icmp sle i32 %35, %37, !dbg !158
  br i1 %38, label %39, label %41, !dbg !158

39:                                               ; preds = %33
  br i1 true, label %40, label %41, !dbg !158

40:                                               ; preds = %39
  br label %43, !dbg !158

41:                                               ; preds = %39, %33, %29, %25
  %42 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.4, i64 0, i64 0), i32 noundef 84, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !158
  br label %43, !dbg !158

43:                                               ; preds = %41, %40
  %44 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.4, i64 0, i64 0), i32 noundef 87, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !160
  %45 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %3, align 8, !dbg !161
  %46 = bitcast %struct._xmlRelaxNGValidState* %45 to i8*, !dbg !161
  call void @free(i8* noundef %46) #8, !dbg !162
  br label %47, !dbg !163

47:                                               ; preds = %43, %0
  ret i32 0, !dbg !164
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !165 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !171, metadata !DIExpression()), !dbg !172
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !173, metadata !DIExpression()), !dbg !174
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !175, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.declare(metadata i8** %7, metadata !177, metadata !DIExpression()), !dbg !179
  %9 = load i8*, i8** %4, align 8, !dbg !180
  store i8* %9, i8** %7, align 8, !dbg !179
  call void @llvm.dbg.declare(metadata i8** %8, metadata !181, metadata !DIExpression()), !dbg !182
  %10 = load i8*, i8** %5, align 8, !dbg !183
  store i8* %10, i8** %8, align 8, !dbg !182
  br label %11, !dbg !184

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !185
  %13 = add i64 %12, -1, !dbg !185
  store i64 %13, i64* %6, align 8, !dbg !185
  %14 = icmp ugt i64 %12, 0, !dbg !186
  br i1 %14, label %15, label %21, !dbg !184

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !187
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !187
  store i8* %17, i8** %8, align 8, !dbg !187
  %18 = load i8, i8* %16, align 1, !dbg !188
  %19 = load i8*, i8** %7, align 8, !dbg !189
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !189
  store i8* %20, i8** %7, align 8, !dbg !189
  store i8 %18, i8* %19, align 1, !dbg !190
  br label %11, !dbg !184, !llvm.loop !191

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !193
  ret i8* %22, !dbg !194
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #7 !dbg !195 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !199, metadata !DIExpression()), !dbg !200
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !201, metadata !DIExpression()), !dbg !202
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !203, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.declare(metadata i8** %7, metadata !205, metadata !DIExpression()), !dbg !206
  %8 = load i8*, i8** %4, align 8, !dbg !207
  store i8* %8, i8** %7, align 8, !dbg !206
  br label %9, !dbg !208

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !209
  %11 = add i64 %10, -1, !dbg !209
  store i64 %11, i64* %6, align 8, !dbg !209
  %12 = icmp ugt i64 %10, 0, !dbg !210
  br i1 %12, label %13, label %18, !dbg !208

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !211
  %15 = trunc i32 %14 to i8, !dbg !211
  %16 = load i8*, i8** %7, align 8, !dbg !212
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !212
  store i8* %17, i8** %7, align 8, !dbg !212
  store i8 %15, i8* %16, align 1, !dbg !213
  br label %9, !dbg !208, !llvm.loop !214

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !215
  ret i8* %19, !dbg !216
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0, !17, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28, !28, !28}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/309_relaxng.c_1307_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "5941a217ac1c6b2cccff45081b28d1d4")
!2 = !{!3, !16, !8}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGValidState", file: !1, line: 18, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRelaxNGValidState", file: !1, line: 13, size: 128, elements: !6)
!6 = !{!7, !13, !15}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !5, file: !1, line: 14, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttrPtr", file: !1, line: 11, baseType: !10)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttr", file: !1, line: 10, baseType: !12)
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !1, line: 10, flags: DIFlagFwdDecl)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "maxAttrs", scope: !5, file: !1, line: 15, baseType: !14, size: 32, offset: 64)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "nbAttrs", scope: !5, file: !1, line: 16, baseType: !14, size: 32, offset: 96)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!17 = distinct !DICompileUnit(language: DW_LANG_C99, file: !18, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!19 = distinct !DICompileUnit(language: DW_LANG_C99, file: !20, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!20 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!21 = !{i32 7, !"Dwarf Version", i32 5}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 1, !"wchar_size", i32 4}
!24 = !{i32 7, !"PIC Level", i32 2}
!25 = !{i32 7, !"PIE Level", i32 2}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"Ubuntu clang version 14.0.6"}
!29 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 21, type: !30, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!30 = !DISubroutineType(types: !31)
!31 = !{!16, !32}
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !33, line: 46, baseType: !34)
!33 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!34 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!35 = !{}
!36 = !DILocalVariable(name: "size", arg: 1, scope: !29, file: !1, line: 21, type: !32)
!37 = !DILocation(line: 21, column: 24, scope: !29)
!38 = !DILocation(line: 22, column: 19, scope: !29)
!39 = !DILocation(line: 22, column: 12, scope: !29)
!40 = !DILocation(line: 22, column: 5, scope: !29)
!41 = distinct !DISubprogram(name: "xmlRngVErrMemory", scope: !1, file: !1, line: 26, type: !42, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!42 = !DISubroutineType(types: !43)
!43 = !{null, !16, !44}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!46 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!47 = !DILocalVariable(name: "ctxt", arg: 1, scope: !41, file: !1, line: 26, type: !16)
!48 = !DILocation(line: 26, column: 29, scope: !41)
!49 = !DILocalVariable(name: "msg", arg: 2, scope: !41, file: !1, line: 26, type: !44)
!50 = !DILocation(line: 26, column: 47, scope: !41)
!51 = !DILocation(line: 28, column: 1, scope: !41)
!52 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 31, type: !53, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!53 = !DISubroutineType(types: !54)
!54 = !{!3, !3}
!55 = !DILocalVariable(name: "state", arg: 1, scope: !52, file: !1, line: 31, type: !3)
!56 = !DILocation(line: 31, column: 61, scope: !52)
!57 = !DILocalVariable(name: "ret", scope: !52, file: !1, line: 32, type: !3)
!58 = !DILocation(line: 32, column: 27, scope: !52)
!59 = !DILocalVariable(name: "attrs", scope: !52, file: !1, line: 33, type: !8)
!60 = !DILocation(line: 33, column: 17, scope: !52)
!61 = !DILocalVariable(name: "maxAttrs", scope: !52, file: !1, line: 34, type: !14)
!62 = !DILocation(line: 34, column: 9, scope: !52)
!63 = !DILocation(line: 37, column: 34, scope: !52)
!64 = !DILocation(line: 37, column: 11, scope: !52)
!65 = !DILocation(line: 37, column: 9, scope: !52)
!66 = !DILocation(line: 38, column: 9, scope: !67)
!67 = distinct !DILexicalBlock(scope: !52, file: !1, line: 38, column: 9)
!68 = !DILocation(line: 38, column: 13, scope: !67)
!69 = !DILocation(line: 38, column: 9, scope: !52)
!70 = !DILocation(line: 39, column: 9, scope: !71)
!71 = distinct !DILexicalBlock(scope: !67, file: !1, line: 38, column: 22)
!72 = !DILocation(line: 40, column: 9, scope: !71)
!73 = !DILocation(line: 42, column: 12, scope: !52)
!74 = !DILocation(line: 42, column: 5, scope: !52)
!75 = !DILocation(line: 44, column: 13, scope: !52)
!76 = !DILocation(line: 44, column: 18, scope: !52)
!77 = !DILocation(line: 44, column: 11, scope: !52)
!78 = !DILocation(line: 45, column: 16, scope: !52)
!79 = !DILocation(line: 45, column: 21, scope: !52)
!80 = !DILocation(line: 45, column: 14, scope: !52)
!81 = !DILocation(line: 48, column: 12, scope: !52)
!82 = !DILocation(line: 48, column: 5, scope: !52)
!83 = !DILocation(line: 48, column: 17, scope: !52)
!84 = !DILocation(line: 50, column: 18, scope: !52)
!85 = !DILocation(line: 50, column: 5, scope: !52)
!86 = !DILocation(line: 50, column: 10, scope: !52)
!87 = !DILocation(line: 50, column: 16, scope: !52)
!88 = !DILocation(line: 51, column: 21, scope: !52)
!89 = !DILocation(line: 51, column: 5, scope: !52)
!90 = !DILocation(line: 51, column: 10, scope: !52)
!91 = !DILocation(line: 51, column: 19, scope: !52)
!92 = !DILocation(line: 53, column: 9, scope: !93)
!93 = distinct !DILexicalBlock(scope: !52, file: !1, line: 53, column: 9)
!94 = !DILocation(line: 53, column: 16, scope: !93)
!95 = !DILocation(line: 53, column: 24, scope: !93)
!96 = !DILocation(line: 53, column: 9, scope: !52)
!97 = !DILocation(line: 54, column: 13, scope: !98)
!98 = distinct !DILexicalBlock(scope: !99, file: !1, line: 54, column: 13)
!99 = distinct !DILexicalBlock(scope: !93, file: !1, line: 53, column: 29)
!100 = !DILocation(line: 54, column: 18, scope: !98)
!101 = !DILocation(line: 54, column: 24, scope: !98)
!102 = !DILocation(line: 54, column: 13, scope: !99)
!103 = !DILocation(line: 55, column: 29, scope: !104)
!104 = distinct !DILexicalBlock(scope: !98, file: !1, line: 54, column: 33)
!105 = !DILocation(line: 55, column: 36, scope: !104)
!106 = !DILocation(line: 55, column: 13, scope: !104)
!107 = !DILocation(line: 55, column: 18, scope: !104)
!108 = !DILocation(line: 55, column: 27, scope: !104)
!109 = !DILocation(line: 56, column: 49, scope: !104)
!110 = !DILocation(line: 56, column: 54, scope: !104)
!111 = !DILocation(line: 56, column: 63, scope: !104)
!112 = !DILocation(line: 56, column: 39, scope: !104)
!113 = !DILocation(line: 56, column: 26, scope: !104)
!114 = !DILocation(line: 56, column: 13, scope: !104)
!115 = !DILocation(line: 56, column: 18, scope: !104)
!116 = !DILocation(line: 56, column: 24, scope: !104)
!117 = !DILocation(line: 57, column: 17, scope: !118)
!118 = distinct !DILexicalBlock(scope: !104, file: !1, line: 57, column: 17)
!119 = !DILocation(line: 57, column: 22, scope: !118)
!120 = !DILocation(line: 57, column: 28, scope: !118)
!121 = !DILocation(line: 57, column: 17, scope: !104)
!122 = !DILocation(line: 58, column: 22, scope: !123)
!123 = distinct !DILexicalBlock(scope: !118, file: !1, line: 57, column: 37)
!124 = !DILocation(line: 58, column: 17, scope: !123)
!125 = !DILocation(line: 59, column: 17, scope: !123)
!126 = !DILocation(line: 61, column: 9, scope: !104)
!127 = !DILocation(line: 62, column: 5, scope: !99)
!128 = !DILocation(line: 64, column: 12, scope: !52)
!129 = !DILocation(line: 64, column: 5, scope: !52)
!130 = !DILocation(line: 65, column: 1, scope: !52)
!131 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 67, type: !132, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!132 = !DISubroutineType(types: !133)
!133 = !{!14}
!134 = !DILocalVariable(name: "state", scope: !131, file: !1, line: 68, type: !4)
!135 = !DILocation(line: 68, column: 26, scope: !131)
!136 = !DILocation(line: 71, column: 24, scope: !131)
!137 = !DILocation(line: 71, column: 5, scope: !131)
!138 = !DILocation(line: 74, column: 23, scope: !131)
!139 = !DILocation(line: 74, column: 32, scope: !131)
!140 = !DILocation(line: 74, column: 17, scope: !131)
!141 = !DILocation(line: 74, column: 5, scope: !131)
!142 = !DILocation(line: 75, column: 23, scope: !131)
!143 = !DILocation(line: 75, column: 31, scope: !131)
!144 = !DILocation(line: 75, column: 17, scope: !131)
!145 = !DILocation(line: 75, column: 5, scope: !131)
!146 = !DILocation(line: 76, column: 23, scope: !131)
!147 = !DILocation(line: 76, column: 40, scope: !131)
!148 = !DILocation(line: 76, column: 31, scope: !131)
!149 = !DILocation(line: 76, column: 17, scope: !131)
!150 = !DILocation(line: 76, column: 5, scope: !131)
!151 = !DILocalVariable(name: "result", scope: !131, file: !1, line: 79, type: !3)
!152 = !DILocation(line: 79, column: 27, scope: !131)
!153 = !DILocation(line: 79, column: 36, scope: !131)
!154 = !DILocation(line: 81, column: 9, scope: !155)
!155 = distinct !DILexicalBlock(scope: !131, file: !1, line: 81, column: 9)
!156 = !DILocation(line: 81, column: 16, scope: !155)
!157 = !DILocation(line: 81, column: 9, scope: !131)
!158 = !DILocation(line: 84, column: 9, scope: !159)
!159 = distinct !DILexicalBlock(scope: !155, file: !1, line: 81, column: 25)
!160 = !DILocation(line: 87, column: 9, scope: !159)
!161 = !DILocation(line: 89, column: 14, scope: !159)
!162 = !DILocation(line: 89, column: 9, scope: !159)
!163 = !DILocation(line: 90, column: 5, scope: !159)
!164 = !DILocation(line: 92, column: 5, scope: !131)
!165 = distinct !DISubprogram(name: "memcpy", scope: !166, file: !166, line: 12, type: !167, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !35)
!166 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!167 = !DISubroutineType(types: !168)
!168 = !{!16, !16, !169, !32}
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!171 = !DILocalVariable(name: "destaddr", arg: 1, scope: !165, file: !166, line: 12, type: !16)
!172 = !DILocation(line: 12, column: 20, scope: !165)
!173 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !165, file: !166, line: 12, type: !169)
!174 = !DILocation(line: 12, column: 42, scope: !165)
!175 = !DILocalVariable(name: "len", arg: 3, scope: !165, file: !166, line: 12, type: !32)
!176 = !DILocation(line: 12, column: 58, scope: !165)
!177 = !DILocalVariable(name: "dest", scope: !165, file: !166, line: 13, type: !178)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!179 = !DILocation(line: 13, column: 9, scope: !165)
!180 = !DILocation(line: 13, column: 16, scope: !165)
!181 = !DILocalVariable(name: "src", scope: !165, file: !166, line: 14, type: !44)
!182 = !DILocation(line: 14, column: 15, scope: !165)
!183 = !DILocation(line: 14, column: 21, scope: !165)
!184 = !DILocation(line: 16, column: 3, scope: !165)
!185 = !DILocation(line: 16, column: 13, scope: !165)
!186 = !DILocation(line: 16, column: 16, scope: !165)
!187 = !DILocation(line: 17, column: 19, scope: !165)
!188 = !DILocation(line: 17, column: 15, scope: !165)
!189 = !DILocation(line: 17, column: 10, scope: !165)
!190 = !DILocation(line: 17, column: 13, scope: !165)
!191 = distinct !{!191, !184, !187, !192}
!192 = !{!"llvm.loop.mustprogress"}
!193 = !DILocation(line: 18, column: 10, scope: !165)
!194 = !DILocation(line: 18, column: 3, scope: !165)
!195 = distinct !DISubprogram(name: "memset", scope: !196, file: !196, line: 12, type: !197, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !35)
!196 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!197 = !DISubroutineType(types: !198)
!198 = !{!16, !16, !14, !32}
!199 = !DILocalVariable(name: "dst", arg: 1, scope: !195, file: !196, line: 12, type: !16)
!200 = !DILocation(line: 12, column: 20, scope: !195)
!201 = !DILocalVariable(name: "s", arg: 2, scope: !195, file: !196, line: 12, type: !14)
!202 = !DILocation(line: 12, column: 29, scope: !195)
!203 = !DILocalVariable(name: "count", arg: 3, scope: !195, file: !196, line: 12, type: !32)
!204 = !DILocation(line: 12, column: 39, scope: !195)
!205 = !DILocalVariable(name: "a", scope: !195, file: !196, line: 13, type: !178)
!206 = !DILocation(line: 13, column: 9, scope: !195)
!207 = !DILocation(line: 13, column: 13, scope: !195)
!208 = !DILocation(line: 14, column: 3, scope: !195)
!209 = !DILocation(line: 14, column: 15, scope: !195)
!210 = !DILocation(line: 14, column: 18, scope: !195)
!211 = !DILocation(line: 15, column: 12, scope: !195)
!212 = !DILocation(line: 15, column: 7, scope: !195)
!213 = !DILocation(line: 15, column: 10, scope: !195)
!214 = distinct !{!214, !208, !211, !192}
!215 = !DILocation(line: 16, column: 10, scope: !195)
!216 = !DILocation(line: 16, column: 3, scope: !195)

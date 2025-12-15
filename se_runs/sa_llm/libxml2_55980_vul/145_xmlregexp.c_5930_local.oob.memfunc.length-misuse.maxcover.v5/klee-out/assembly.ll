; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/145_xmlregexp.c_5930_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/145_xmlregexp.c_5930_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRegAtom = type { i8*, i32, i8*, i8*, i32, i32, i32 }
%struct._xmlAutomata = type { %struct._xmlAutomataState*, %struct._xmlAutomataState* }
%struct._xmlAutomataState = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"(lenn + lenp + 1 < (lenn + lenp + 2)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_55980_vul/145_xmlregexp.c_5930_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.target_function = private unnamed_addr constant [60 x i8] c"xmlRegAtom *target_function(xmlChar *, int, xmlChar *, int)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"lenp\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"lenn\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"token\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"token2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMallocAtomic(i64 noundef %0) #0 !dbg !29 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !36, metadata !DIExpression()), !dbg !37
  %3 = load i64, i64* %2, align 8, !dbg !38
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !39
  ret i8* %4, !dbg !40
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlRegFreeAtom(%struct._xmlRegAtom* noundef %0) #0 !dbg !41 {
  %2 = alloca %struct._xmlRegAtom*, align 8
  store %struct._xmlRegAtom* %0, %struct._xmlRegAtom** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRegAtom** %2, metadata !44, metadata !DIExpression()), !dbg !45
  %3 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %2, align 8, !dbg !46
  %4 = icmp ne %struct._xmlRegAtom* %3, null, !dbg !46
  br i1 %4, label %5, label %11, !dbg !48

5:                                                ; preds = %1
  %6 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %2, align 8, !dbg !49
  %7 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %6, i32 0, i32 0, !dbg !51
  %8 = load i8*, i8** %7, align 8, !dbg !51
  call void @free(i8* noundef %8) #7, !dbg !52
  %9 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %2, align 8, !dbg !53
  %10 = bitcast %struct._xmlRegAtom* %9 to i8*, !dbg !53
  call void @free(i8* noundef %10) #7, !dbg !54
  br label %11, !dbg !55

11:                                               ; preds = %5, %1
  ret void, !dbg !56
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlFAGenerateTransitions(%struct._xmlAutomata* noundef %0, %struct._xmlAutomataState* noundef %1, %struct._xmlAutomataState* noundef %2, %struct._xmlRegAtom* noundef %3) #0 !dbg !57 {
  %5 = alloca %struct._xmlAutomata*, align 8
  %6 = alloca %struct._xmlAutomataState*, align 8
  %7 = alloca %struct._xmlAutomataState*, align 8
  %8 = alloca %struct._xmlRegAtom*, align 8
  store %struct._xmlAutomata* %0, %struct._xmlAutomata** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlAutomata** %5, metadata !71, metadata !DIExpression()), !dbg !72
  store %struct._xmlAutomataState* %1, %struct._xmlAutomataState** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlAutomataState** %6, metadata !73, metadata !DIExpression()), !dbg !74
  store %struct._xmlAutomataState* %2, %struct._xmlAutomataState** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlAutomataState** %7, metadata !75, metadata !DIExpression()), !dbg !76
  store %struct._xmlRegAtom* %3, %struct._xmlRegAtom** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRegAtom** %8, metadata !77, metadata !DIExpression()), !dbg !78
  ret i32 0, !dbg !79
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlRegAtom* @target_function(i8* noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3) #0 !dbg !80 {
  %5 = alloca %struct._xmlRegAtom*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct._xmlRegAtom*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !83, metadata !DIExpression()), !dbg !84
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !85, metadata !DIExpression()), !dbg !86
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !87, metadata !DIExpression()), !dbg !88
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !89, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.declare(metadata %struct._xmlRegAtom** %10, metadata !91, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.declare(metadata i8** %11, metadata !93, metadata !DIExpression()), !dbg !94
  %12 = call noalias i8* @malloc(i64 noundef 48) #7, !dbg !95
  %13 = bitcast i8* %12 to %struct._xmlRegAtom*, !dbg !96
  store %struct._xmlRegAtom* %13, %struct._xmlRegAtom** %10, align 8, !dbg !97
  %14 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %10, align 8, !dbg !98
  %15 = icmp ne %struct._xmlRegAtom* %14, null, !dbg !98
  br i1 %15, label %17, label %16, !dbg !100

16:                                               ; preds = %4
  store %struct._xmlRegAtom* null, %struct._xmlRegAtom** %5, align 8, !dbg !101
  br label %86, !dbg !101

17:                                               ; preds = %4
  %18 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %10, align 8, !dbg !102
  %19 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %18, i32 0, i32 1, !dbg !103
  store i32 0, i32* %19, align 8, !dbg !104
  %20 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %10, align 8, !dbg !105
  %21 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %20, i32 0, i32 2, !dbg !106
  store i8* null, i8** %21, align 8, !dbg !107
  %22 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %10, align 8, !dbg !108
  %23 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %22, i32 0, i32 3, !dbg !109
  store i8* null, i8** %23, align 8, !dbg !110
  %24 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %10, align 8, !dbg !111
  %25 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %24, i32 0, i32 4, !dbg !112
  store i32 0, i32* %25, align 8, !dbg !113
  %26 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %10, align 8, !dbg !114
  %27 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %26, i32 0, i32 5, !dbg !115
  store i32 0, i32* %27, align 4, !dbg !116
  %28 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %10, align 8, !dbg !117
  %29 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %28, i32 0, i32 6, !dbg !118
  store i32 0, i32* %29, align 8, !dbg !119
  %30 = load i32, i32* %9, align 4, !dbg !120
  %31 = load i32, i32* %7, align 4, !dbg !121
  %32 = add nsw i32 %30, %31, !dbg !122
  %33 = add nsw i32 %32, 2, !dbg !123
  %34 = sext i32 %33 to i64, !dbg !120
  %35 = call i8* @xmlMallocAtomic(i64 noundef %34), !dbg !124
  store i8* %35, i8** %11, align 8, !dbg !125
  %36 = load i8*, i8** %11, align 8, !dbg !126
  %37 = icmp eq i8* %36, null, !dbg !128
  br i1 %37, label %38, label %40, !dbg !129

38:                                               ; preds = %17
  %39 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %10, align 8, !dbg !130
  call void @xmlRegFreeAtom(%struct._xmlRegAtom* noundef %39), !dbg !132
  store %struct._xmlRegAtom* null, %struct._xmlRegAtom** %5, align 8, !dbg !133
  br label %86, !dbg !133

40:                                               ; preds = %17
  %41 = load i8*, i8** %11, align 8, !dbg !134
  %42 = getelementptr inbounds i8, i8* %41, i64 0, !dbg !134
  %43 = load i8*, i8** %6, align 8, !dbg !135
  %44 = load i32, i32* %7, align 4, !dbg !136
  %45 = sext i32 %44 to i64, !dbg !136
  %46 = call i8* @memcpy(i8* %42, i8* %43, i64 %45), !dbg !137
  %47 = load i8*, i8** %11, align 8, !dbg !138
  %48 = load i32, i32* %7, align 4, !dbg !139
  %49 = sext i32 %48 to i64, !dbg !138
  %50 = getelementptr inbounds i8, i8* %47, i64 %49, !dbg !138
  store i8 124, i8* %50, align 1, !dbg !140
  %51 = load i32, i32* %9, align 4, !dbg !141
  %52 = load i32, i32* %7, align 4, !dbg !141
  %53 = add nsw i32 %51, %52, !dbg !141
  %54 = add nsw i32 %53, 1, !dbg !141
  %55 = load i32, i32* %9, align 4, !dbg !141
  %56 = load i32, i32* %7, align 4, !dbg !141
  %57 = add nsw i32 %55, %56, !dbg !141
  %58 = add nsw i32 %57, 2, !dbg !141
  %59 = icmp slt i32 %54, %58, !dbg !141
  br i1 %59, label %60, label %62, !dbg !141

60:                                               ; preds = %40
  br i1 true, label %61, label %62, !dbg !141

61:                                               ; preds = %60
  br label %64, !dbg !141

62:                                               ; preds = %60, %40
  %63 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.2, i64 0, i64 0), i32 noundef 78, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !141
  br label %64, !dbg !141

64:                                               ; preds = %62, %61
  %65 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.2, i64 0, i64 0), i32 noundef 81, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !142
  %66 = load i8*, i8** %11, align 8, !dbg !143
  %67 = load i32, i32* %7, align 4, !dbg !144
  %68 = add nsw i32 %67, 1, !dbg !145
  %69 = sext i32 %68 to i64, !dbg !143
  %70 = getelementptr inbounds i8, i8* %66, i64 %69, !dbg !143
  %71 = load i8*, i8** %8, align 8, !dbg !146
  %72 = load i32, i32* %9, align 4, !dbg !147
  %73 = sext i32 %72 to i64, !dbg !147
  %74 = call i8* @memcpy(i8* %70, i8* %71, i64 %73), !dbg !148
  %75 = load i8*, i8** %11, align 8, !dbg !149
  %76 = load i32, i32* %9, align 4, !dbg !150
  %77 = load i32, i32* %7, align 4, !dbg !151
  %78 = add nsw i32 %76, %77, !dbg !152
  %79 = add nsw i32 %78, 1, !dbg !153
  %80 = sext i32 %79 to i64, !dbg !149
  %81 = getelementptr inbounds i8, i8* %75, i64 %80, !dbg !149
  store i8 0, i8* %81, align 1, !dbg !154
  %82 = load i8*, i8** %11, align 8, !dbg !155
  %83 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %10, align 8, !dbg !156
  %84 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %83, i32 0, i32 0, !dbg !157
  store i8* %82, i8** %84, align 8, !dbg !158
  %85 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %10, align 8, !dbg !159
  store %struct._xmlRegAtom* %85, %struct._xmlRegAtom** %5, align 8, !dbg !160
  br label %86, !dbg !160

86:                                               ; preds = %64, %38, %16
  %87 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %5, align 8, !dbg !161
  ret %struct._xmlRegAtom* %87, !dbg !161
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !162 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca [256 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct._xmlRegAtom*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !165, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !170, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.declare(metadata i32* %4, metadata !172, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.declare(metadata i32* %5, metadata !174, metadata !DIExpression()), !dbg !175
  call void @llvm.dbg.declare(metadata %struct._xmlRegAtom** %6, metadata !176, metadata !DIExpression()), !dbg !177
  %7 = bitcast i32* %4 to i8*, !dbg !178
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)), !dbg !179
  %8 = bitcast i32* %5 to i8*, !dbg !180
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)), !dbg !181
  %9 = load i32, i32* %4, align 4, !dbg !182
  %10 = icmp sge i32 %9, 0, !dbg !183
  br i1 %10, label %11, label %14, !dbg !184

11:                                               ; preds = %0
  %12 = load i32, i32* %4, align 4, !dbg !185
  %13 = icmp slt i32 %12, 256, !dbg !186
  br label %14

14:                                               ; preds = %11, %0
  %15 = phi i1 [ false, %0 ], [ %13, %11 ], !dbg !187
  %16 = zext i1 %15 to i32, !dbg !184
  %17 = sext i32 %16 to i64, !dbg !182
  call void @klee_assume(i64 noundef %17), !dbg !188
  %18 = load i32, i32* %5, align 4, !dbg !189
  %19 = icmp sge i32 %18, 0, !dbg !190
  br i1 %19, label %20, label %23, !dbg !191

20:                                               ; preds = %14
  %21 = load i32, i32* %5, align 4, !dbg !192
  %22 = icmp slt i32 %21, 256, !dbg !193
  br label %23

23:                                               ; preds = %20, %14
  %24 = phi i1 [ false, %14 ], [ %22, %20 ], !dbg !187
  %25 = zext i1 %24 to i32, !dbg !191
  %26 = sext i32 %25 to i64, !dbg !189
  call void @klee_assume(i64 noundef %26), !dbg !194
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !195
  call void @klee_make_symbolic(i8* noundef %27, i64 noundef 256, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)), !dbg !196
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !197
  call void @klee_make_symbolic(i8* noundef %28, i64 noundef 256, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)), !dbg !198
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !199
  %30 = load i32, i32* %4, align 4, !dbg !200
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !201
  %32 = load i32, i32* %5, align 4, !dbg !202
  %33 = call %struct._xmlRegAtom* @target_function(i8* noundef %29, i32 noundef %30, i8* noundef %31, i32 noundef %32), !dbg !203
  store %struct._xmlRegAtom* %33, %struct._xmlRegAtom** %6, align 8, !dbg !204
  %34 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %6, align 8, !dbg !205
  %35 = icmp ne %struct._xmlRegAtom* %34, null, !dbg !205
  br i1 %35, label %36, label %38, !dbg !207

36:                                               ; preds = %23
  %37 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %6, align 8, !dbg !208
  call void @xmlRegFreeAtom(%struct._xmlRegAtom* noundef %37), !dbg !210
  br label %38, !dbg !211

38:                                               ; preds = %36, %23
  ret i32 0, !dbg !212
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !213 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !219, metadata !DIExpression()), !dbg !220
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !221, metadata !DIExpression()), !dbg !222
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !223, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.declare(metadata i8** %7, metadata !225, metadata !DIExpression()), !dbg !228
  %9 = load i8*, i8** %4, align 8, !dbg !229
  store i8* %9, i8** %7, align 8, !dbg !228
  call void @llvm.dbg.declare(metadata i8** %8, metadata !230, metadata !DIExpression()), !dbg !233
  %10 = load i8*, i8** %5, align 8, !dbg !234
  store i8* %10, i8** %8, align 8, !dbg !233
  br label %11, !dbg !235

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !236
  %13 = add i64 %12, -1, !dbg !236
  store i64 %13, i64* %6, align 8, !dbg !236
  %14 = icmp ugt i64 %12, 0, !dbg !237
  br i1 %14, label %15, label %21, !dbg !235

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !238
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !238
  store i8* %17, i8** %8, align 8, !dbg !238
  %18 = load i8, i8* %16, align 1, !dbg !239
  %19 = load i8*, i8** %7, align 8, !dbg !240
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !240
  store i8* %20, i8** %7, align 8, !dbg !240
  store i8 %18, i8* %19, align 1, !dbg !241
  br label %11, !dbg !235, !llvm.loop !242

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !244
  ret i8* %22, !dbg !245
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28, !28}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/145_xmlregexp.c_5930_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "9c62560f1766069d2a9ba7a923a3c7e8")
!2 = !{!3, !14, !8}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegAtom", file: !1, line: 11, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegAtom", file: !1, line: 16, size: 384, elements: !6)
!6 = !{!7, !11, !13, !15, !16, !17, !18}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "valuep", scope: !5, file: !1, line: 17, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !1, line: 10, baseType: !10)
!10 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5, file: !1, line: 18, baseType: !12, size: 32, offset: 64)
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !5, file: !1, line: 19, baseType: !14, size: 64, offset: 128)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "value2", scope: !5, file: !1, line: 20, baseType: !14, size: 64, offset: 192)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "neg", scope: !5, file: !1, line: 21, baseType: !12, size: 32, offset: 256)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !5, file: !1, line: 22, baseType: !12, size: 32, offset: 288)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !5, file: !1, line: 23, baseType: !12, size: 32, offset: 320)
!19 = distinct !DICompileUnit(language: DW_LANG_C99, file: !20, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!20 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!21 = !{i32 7, !"Dwarf Version", i32 5}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 1, !"wchar_size", i32 4}
!24 = !{i32 7, !"PIC Level", i32 2}
!25 = !{i32 7, !"PIE Level", i32 2}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"Ubuntu clang version 14.0.6"}
!29 = distinct !DISubprogram(name: "xmlMallocAtomic", scope: !1, file: !1, line: 36, type: !30, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!30 = !DISubroutineType(types: !31)
!31 = !{!14, !32}
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !33, line: 46, baseType: !34)
!33 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!34 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!35 = !{}
!36 = !DILocalVariable(name: "size", arg: 1, scope: !29, file: !1, line: 36, type: !32)
!37 = !DILocation(line: 36, column: 30, scope: !29)
!38 = !DILocation(line: 37, column: 19, scope: !29)
!39 = !DILocation(line: 37, column: 12, scope: !29)
!40 = !DILocation(line: 37, column: 5, scope: !29)
!41 = distinct !DISubprogram(name: "xmlRegFreeAtom", scope: !1, file: !1, line: 40, type: !42, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!42 = !DISubroutineType(types: !43)
!43 = !{null, !3}
!44 = !DILocalVariable(name: "atom", arg: 1, scope: !41, file: !1, line: 40, type: !3)
!45 = !DILocation(line: 40, column: 33, scope: !41)
!46 = !DILocation(line: 41, column: 9, scope: !47)
!47 = distinct !DILexicalBlock(scope: !41, file: !1, line: 41, column: 9)
!48 = !DILocation(line: 41, column: 9, scope: !41)
!49 = !DILocation(line: 42, column: 14, scope: !50)
!50 = distinct !DILexicalBlock(scope: !47, file: !1, line: 41, column: 15)
!51 = !DILocation(line: 42, column: 20, scope: !50)
!52 = !DILocation(line: 42, column: 9, scope: !50)
!53 = !DILocation(line: 43, column: 14, scope: !50)
!54 = !DILocation(line: 43, column: 9, scope: !50)
!55 = !DILocation(line: 44, column: 5, scope: !50)
!56 = !DILocation(line: 45, column: 1, scope: !41)
!57 = distinct !DISubprogram(name: "xmlFAGenerateTransitions", scope: !1, file: !1, line: 47, type: !58, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!58 = !DISubroutineType(types: !59)
!59 = !{!12, !60, !65, !65, !3}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAutomata", file: !1, line: 13, baseType: !62)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAutomata", file: !1, line: 30, size: 128, elements: !63)
!63 = !{!64, !70}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !62, file: !1, line: 31, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAutomataState", file: !1, line: 12, baseType: !67)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAutomataState", file: !1, line: 26, size: 32, elements: !68)
!68 = !{!69}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !67, file: !1, line: 27, baseType: !12, size: 32)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !62, file: !1, line: 32, baseType: !65, size: 64, offset: 64)
!71 = !DILocalVariable(name: "am", arg: 1, scope: !57, file: !1, line: 47, type: !60)
!72 = !DILocation(line: 47, column: 43, scope: !57)
!73 = !DILocalVariable(name: "from", arg: 2, scope: !57, file: !1, line: 47, type: !65)
!74 = !DILocation(line: 47, column: 65, scope: !57)
!75 = !DILocalVariable(name: "to", arg: 3, scope: !57, file: !1, line: 48, type: !65)
!76 = !DILocation(line: 48, column: 48, scope: !57)
!77 = !DILocalVariable(name: "atom", arg: 4, scope: !57, file: !1, line: 48, type: !3)
!78 = !DILocation(line: 48, column: 64, scope: !57)
!79 = !DILocation(line: 49, column: 5, scope: !57)
!80 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 53, type: !81, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!81 = !DISubroutineType(types: !82)
!82 = !{!3, !8, !12, !8, !12}
!83 = !DILocalVariable(name: "token", arg: 1, scope: !80, file: !1, line: 53, type: !8)
!84 = !DILocation(line: 53, column: 38, scope: !80)
!85 = !DILocalVariable(name: "lenp", arg: 2, scope: !80, file: !1, line: 53, type: !12)
!86 = !DILocation(line: 53, column: 49, scope: !80)
!87 = !DILocalVariable(name: "token2", arg: 3, scope: !80, file: !1, line: 53, type: !8)
!88 = !DILocation(line: 53, column: 64, scope: !80)
!89 = !DILocalVariable(name: "lenn", arg: 4, scope: !80, file: !1, line: 53, type: !12)
!90 = !DILocation(line: 53, column: 76, scope: !80)
!91 = !DILocalVariable(name: "atom", scope: !80, file: !1, line: 54, type: !3)
!92 = !DILocation(line: 54, column: 17, scope: !80)
!93 = !DILocalVariable(name: "str", scope: !80, file: !1, line: 55, type: !8)
!94 = !DILocation(line: 55, column: 14, scope: !80)
!95 = !DILocation(line: 57, column: 25, scope: !80)
!96 = !DILocation(line: 57, column: 12, scope: !80)
!97 = !DILocation(line: 57, column: 10, scope: !80)
!98 = !DILocation(line: 58, column: 10, scope: !99)
!99 = distinct !DILexicalBlock(scope: !80, file: !1, line: 58, column: 9)
!100 = !DILocation(line: 58, column: 9, scope: !80)
!101 = !DILocation(line: 58, column: 16, scope: !99)
!102 = !DILocation(line: 60, column: 5, scope: !80)
!103 = !DILocation(line: 60, column: 11, scope: !80)
!104 = !DILocation(line: 60, column: 16, scope: !80)
!105 = !DILocation(line: 61, column: 5, scope: !80)
!106 = !DILocation(line: 61, column: 11, scope: !80)
!107 = !DILocation(line: 61, column: 17, scope: !80)
!108 = !DILocation(line: 62, column: 5, scope: !80)
!109 = !DILocation(line: 62, column: 11, scope: !80)
!110 = !DILocation(line: 62, column: 18, scope: !80)
!111 = !DILocation(line: 63, column: 5, scope: !80)
!112 = !DILocation(line: 63, column: 11, scope: !80)
!113 = !DILocation(line: 63, column: 15, scope: !80)
!114 = !DILocation(line: 64, column: 5, scope: !80)
!115 = !DILocation(line: 64, column: 11, scope: !80)
!116 = !DILocation(line: 64, column: 15, scope: !80)
!117 = !DILocation(line: 65, column: 5, scope: !80)
!118 = !DILocation(line: 65, column: 11, scope: !80)
!119 = !DILocation(line: 65, column: 15, scope: !80)
!120 = !DILocation(line: 67, column: 37, scope: !80)
!121 = !DILocation(line: 67, column: 44, scope: !80)
!122 = !DILocation(line: 67, column: 42, scope: !80)
!123 = !DILocation(line: 67, column: 49, scope: !80)
!124 = !DILocation(line: 67, column: 21, scope: !80)
!125 = !DILocation(line: 67, column: 9, scope: !80)
!126 = !DILocation(line: 68, column: 9, scope: !127)
!127 = distinct !DILexicalBlock(scope: !80, file: !1, line: 68, column: 9)
!128 = !DILocation(line: 68, column: 13, scope: !127)
!129 = !DILocation(line: 68, column: 9, scope: !80)
!130 = !DILocation(line: 69, column: 24, scope: !131)
!131 = distinct !DILexicalBlock(scope: !127, file: !1, line: 68, column: 22)
!132 = !DILocation(line: 69, column: 9, scope: !131)
!133 = !DILocation(line: 70, column: 9, scope: !131)
!134 = !DILocation(line: 73, column: 13, scope: !80)
!135 = !DILocation(line: 73, column: 21, scope: !80)
!136 = !DILocation(line: 73, column: 28, scope: !80)
!137 = !DILocation(line: 73, column: 5, scope: !80)
!138 = !DILocation(line: 74, column: 5, scope: !80)
!139 = !DILocation(line: 74, column: 9, scope: !80)
!140 = !DILocation(line: 74, column: 15, scope: !80)
!141 = !DILocation(line: 78, column: 5, scope: !80)
!142 = !DILocation(line: 81, column: 5, scope: !80)
!143 = !DILocation(line: 83, column: 13, scope: !80)
!144 = !DILocation(line: 83, column: 17, scope: !80)
!145 = !DILocation(line: 83, column: 22, scope: !80)
!146 = !DILocation(line: 83, column: 28, scope: !80)
!147 = !DILocation(line: 83, column: 36, scope: !80)
!148 = !DILocation(line: 83, column: 5, scope: !80)
!149 = !DILocation(line: 84, column: 5, scope: !80)
!150 = !DILocation(line: 84, column: 9, scope: !80)
!151 = !DILocation(line: 84, column: 16, scope: !80)
!152 = !DILocation(line: 84, column: 14, scope: !80)
!153 = !DILocation(line: 84, column: 21, scope: !80)
!154 = !DILocation(line: 84, column: 26, scope: !80)
!155 = !DILocation(line: 86, column: 20, scope: !80)
!156 = !DILocation(line: 86, column: 5, scope: !80)
!157 = !DILocation(line: 86, column: 11, scope: !80)
!158 = !DILocation(line: 86, column: 18, scope: !80)
!159 = !DILocation(line: 87, column: 12, scope: !80)
!160 = !DILocation(line: 87, column: 5, scope: !80)
!161 = !DILocation(line: 88, column: 1, scope: !80)
!162 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 90, type: !163, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!163 = !DISubroutineType(types: !164)
!164 = !{!12}
!165 = !DILocalVariable(name: "token", scope: !162, file: !1, line: 91, type: !166)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 2048, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 256)
!169 = !DILocation(line: 91, column: 13, scope: !162)
!170 = !DILocalVariable(name: "token2", scope: !162, file: !1, line: 92, type: !166)
!171 = !DILocation(line: 92, column: 13, scope: !162)
!172 = !DILocalVariable(name: "lenp", scope: !162, file: !1, line: 93, type: !12)
!173 = !DILocation(line: 93, column: 9, scope: !162)
!174 = !DILocalVariable(name: "lenn", scope: !162, file: !1, line: 93, type: !12)
!175 = !DILocation(line: 93, column: 15, scope: !162)
!176 = !DILocalVariable(name: "result", scope: !162, file: !1, line: 94, type: !3)
!177 = !DILocation(line: 94, column: 17, scope: !162)
!178 = !DILocation(line: 97, column: 24, scope: !162)
!179 = !DILocation(line: 97, column: 5, scope: !162)
!180 = !DILocation(line: 98, column: 24, scope: !162)
!181 = !DILocation(line: 98, column: 5, scope: !162)
!182 = !DILocation(line: 101, column: 17, scope: !162)
!183 = !DILocation(line: 101, column: 22, scope: !162)
!184 = !DILocation(line: 101, column: 27, scope: !162)
!185 = !DILocation(line: 101, column: 30, scope: !162)
!186 = !DILocation(line: 101, column: 35, scope: !162)
!187 = !DILocation(line: 0, scope: !162)
!188 = !DILocation(line: 101, column: 5, scope: !162)
!189 = !DILocation(line: 102, column: 17, scope: !162)
!190 = !DILocation(line: 102, column: 22, scope: !162)
!191 = !DILocation(line: 102, column: 27, scope: !162)
!192 = !DILocation(line: 102, column: 30, scope: !162)
!193 = !DILocation(line: 102, column: 35, scope: !162)
!194 = !DILocation(line: 102, column: 5, scope: !162)
!195 = !DILocation(line: 105, column: 24, scope: !162)
!196 = !DILocation(line: 105, column: 5, scope: !162)
!197 = !DILocation(line: 106, column: 24, scope: !162)
!198 = !DILocation(line: 106, column: 5, scope: !162)
!199 = !DILocation(line: 109, column: 30, scope: !162)
!200 = !DILocation(line: 109, column: 37, scope: !162)
!201 = !DILocation(line: 109, column: 43, scope: !162)
!202 = !DILocation(line: 109, column: 51, scope: !162)
!203 = !DILocation(line: 109, column: 14, scope: !162)
!204 = !DILocation(line: 109, column: 12, scope: !162)
!205 = !DILocation(line: 112, column: 9, scope: !206)
!206 = distinct !DILexicalBlock(scope: !162, file: !1, line: 112, column: 9)
!207 = !DILocation(line: 112, column: 9, scope: !162)
!208 = !DILocation(line: 113, column: 24, scope: !209)
!209 = distinct !DILexicalBlock(scope: !206, file: !1, line: 112, column: 17)
!210 = !DILocation(line: 113, column: 9, scope: !209)
!211 = !DILocation(line: 114, column: 5, scope: !209)
!212 = !DILocation(line: 116, column: 5, scope: !162)
!213 = distinct !DISubprogram(name: "memcpy", scope: !214, file: !214, line: 12, type: !215, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !35)
!214 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!215 = !DISubroutineType(types: !216)
!216 = !{!14, !14, !217, !32}
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!219 = !DILocalVariable(name: "destaddr", arg: 1, scope: !213, file: !214, line: 12, type: !14)
!220 = !DILocation(line: 12, column: 20, scope: !213)
!221 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !213, file: !214, line: 12, type: !217)
!222 = !DILocation(line: 12, column: 42, scope: !213)
!223 = !DILocalVariable(name: "len", arg: 3, scope: !213, file: !214, line: 12, type: !32)
!224 = !DILocation(line: 12, column: 58, scope: !213)
!225 = !DILocalVariable(name: "dest", scope: !213, file: !214, line: 13, type: !226)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!228 = !DILocation(line: 13, column: 9, scope: !213)
!229 = !DILocation(line: 13, column: 16, scope: !213)
!230 = !DILocalVariable(name: "src", scope: !213, file: !214, line: 14, type: !231)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !227)
!233 = !DILocation(line: 14, column: 15, scope: !213)
!234 = !DILocation(line: 14, column: 21, scope: !213)
!235 = !DILocation(line: 16, column: 3, scope: !213)
!236 = !DILocation(line: 16, column: 13, scope: !213)
!237 = !DILocation(line: 16, column: 16, scope: !213)
!238 = !DILocation(line: 17, column: 19, scope: !213)
!239 = !DILocation(line: 17, column: 15, scope: !213)
!240 = !DILocation(line: 17, column: 10, scope: !213)
!241 = !DILocation(line: 17, column: 13, scope: !213)
!242 = distinct !{!242, !235, !238, !243}
!243 = !{!"llvm.loop.mustprogress"}
!244 = !DILocation(line: 18, column: 10, scope: !213)
!245 = !DILocation(line: 18, column: 3, scope: !213)

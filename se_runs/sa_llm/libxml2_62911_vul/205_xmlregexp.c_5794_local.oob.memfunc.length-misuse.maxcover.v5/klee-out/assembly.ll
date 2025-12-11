; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/205_xmlregexp.c_5794_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/205_xmlregexp.c_5794_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRegState = type { i32, i32, %struct._xmlRegAtom* }
%struct._xmlRegAtom = type { i32, i8* }

@.str = private unnamed_addr constant [6 x i8] c"token\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"token2\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"lenp\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"lenn\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"not %s\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.6 = private unnamed_addr constant [76 x i8] c"(lenp >= 0 && lenn >= 0 && (lenp + lenn + 2) <= 200) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_62911_vul/205_xmlregexp.c_5794_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlFAGenerateTransitions = private unnamed_addr constant [118 x i8] c"void xmlFAGenerateTransitions(xmlRegStatePtr, xmlRegStatePtr, const unsigned char *, int, const unsigned char *, int)\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !20 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlRegState, align 8
  %3 = alloca %struct._xmlRegState, align 8
  %4 = alloca [100 x i8], align 16
  %5 = alloca [100 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlRegState* %2, metadata !25, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.declare(metadata %struct._xmlRegState* %3, metadata !40, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata [100 x i8]* %4, metadata !42, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.declare(metadata [100 x i8]* %5, metadata !48, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.declare(metadata i32* %6, metadata !50, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.declare(metadata i32* %7, metadata !52, metadata !DIExpression()), !dbg !53
  %8 = bitcast %struct._xmlRegState* %2 to i8*, !dbg !54
  %9 = call i8* @memset(i8* %8, i32 0, i64 16), !dbg !54
  %10 = bitcast %struct._xmlRegState* %3 to i8*, !dbg !55
  %11 = call i8* @memset(i8* %10, i32 0, i64 16), !dbg !55
  %12 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0, !dbg !56
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 100, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)), !dbg !57
  %13 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0, !dbg !58
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 100, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)), !dbg !59
  %14 = bitcast i32* %6 to i8*, !dbg !60
  call void @klee_make_symbolic(i8* noundef %14, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !dbg !61
  %15 = bitcast i32* %7 to i8*, !dbg !62
  call void @klee_make_symbolic(i8* noundef %15, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)), !dbg !63
  %16 = load i32, i32* %6, align 4, !dbg !64
  %17 = icmp sge i32 %16, 0, !dbg !65
  br i1 %17, label %18, label %21, !dbg !66

18:                                               ; preds = %0
  %19 = load i32, i32* %6, align 4, !dbg !67
  %20 = icmp slt i32 %19, 100, !dbg !68
  br label %21

21:                                               ; preds = %18, %0
  %22 = phi i1 [ false, %0 ], [ %20, %18 ], !dbg !69
  %23 = zext i1 %22 to i32, !dbg !66
  %24 = sext i32 %23 to i64, !dbg !64
  call void @klee_assume(i64 noundef %24), !dbg !70
  %25 = load i32, i32* %7, align 4, !dbg !71
  %26 = icmp sge i32 %25, 0, !dbg !72
  br i1 %26, label %27, label %30, !dbg !73

27:                                               ; preds = %21
  %28 = load i32, i32* %7, align 4, !dbg !74
  %29 = icmp slt i32 %28, 100, !dbg !75
  br label %30

30:                                               ; preds = %27, %21
  %31 = phi i1 [ false, %21 ], [ %29, %27 ], !dbg !69
  %32 = zext i1 %31 to i32, !dbg !73
  %33 = sext i32 %32 to i64, !dbg !71
  call void @klee_assume(i64 noundef %33), !dbg !76
  %34 = load i32, i32* %6, align 4, !dbg !77
  %35 = sext i32 %34 to i64, !dbg !78
  %36 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 %35, !dbg !78
  %37 = load i8, i8* %36, align 1, !dbg !78
  %38 = zext i8 %37 to i32, !dbg !78
  %39 = icmp eq i32 %38, 0, !dbg !79
  %40 = zext i1 %39 to i32, !dbg !79
  %41 = sext i32 %40 to i64, !dbg !78
  call void @klee_assume(i64 noundef %41), !dbg !80
  %42 = load i32, i32* %7, align 4, !dbg !81
  %43 = sext i32 %42 to i64, !dbg !82
  %44 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 %43, !dbg !82
  %45 = load i8, i8* %44, align 1, !dbg !82
  %46 = zext i8 %45 to i32, !dbg !82
  %47 = icmp eq i32 %46, 0, !dbg !83
  %48 = zext i1 %47 to i32, !dbg !83
  %49 = sext i32 %48 to i64, !dbg !82
  call void @klee_assume(i64 noundef %49), !dbg !84
  %50 = call %struct._xmlRegAtom* @xmlRegNewAtom(i32 noundef 0), !dbg !85
  %51 = getelementptr inbounds %struct._xmlRegState, %struct._xmlRegState* %2, i32 0, i32 2, !dbg !86
  store %struct._xmlRegAtom* %50, %struct._xmlRegAtom** %51, align 8, !dbg !87
  %52 = call %struct._xmlRegAtom* @xmlRegNewAtom(i32 noundef 0), !dbg !88
  %53 = getelementptr inbounds %struct._xmlRegState, %struct._xmlRegState* %3, i32 0, i32 2, !dbg !89
  store %struct._xmlRegAtom* %52, %struct._xmlRegAtom** %53, align 8, !dbg !90
  %54 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0, !dbg !91
  %55 = load i32, i32* %6, align 4, !dbg !92
  %56 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0, !dbg !93
  %57 = load i32, i32* %7, align 4, !dbg !94
  call void @xmlFAGenerateTransitions(%struct._xmlRegState* noundef %2, %struct._xmlRegState* noundef %3, i8* noundef %54, i32 noundef %55, i8* noundef %56, i32 noundef %57), !dbg !95
  %58 = getelementptr inbounds %struct._xmlRegState, %struct._xmlRegState* %2, i32 0, i32 2, !dbg !96
  %59 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %58, align 8, !dbg !96
  %60 = icmp ne %struct._xmlRegAtom* %59, null, !dbg !98
  br i1 %60, label %61, label %64, !dbg !99

61:                                               ; preds = %30
  %62 = getelementptr inbounds %struct._xmlRegState, %struct._xmlRegState* %2, i32 0, i32 2, !dbg !100
  %63 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %62, align 8, !dbg !100
  call void @xmlRegFreeAtom(%struct._xmlRegAtom* noundef %63), !dbg !101
  br label %64, !dbg !101

64:                                               ; preds = %61, %30
  %65 = getelementptr inbounds %struct._xmlRegState, %struct._xmlRegState* %3, i32 0, i32 2, !dbg !102
  %66 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %65, align 8, !dbg !102
  %67 = icmp ne %struct._xmlRegAtom* %66, null, !dbg !104
  br i1 %67, label %68, label %71, !dbg !105

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct._xmlRegState, %struct._xmlRegState* %3, i32 0, i32 2, !dbg !106
  %70 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %69, align 8, !dbg !106
  call void @xmlRegFreeAtom(%struct._xmlRegAtom* noundef %70), !dbg !107
  br label %71, !dbg !107

71:                                               ; preds = %68, %64
  ret i32 0, !dbg !108
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct._xmlRegAtom* @xmlRegNewAtom(i32 noundef %0) #0 !dbg !109 {
  %2 = alloca %struct._xmlRegAtom*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlRegAtom*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !112, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata %struct._xmlRegAtom** %4, metadata !114, metadata !DIExpression()), !dbg !115
  %5 = call noalias i8* @malloc(i64 noundef 16) #8, !dbg !116
  %6 = bitcast i8* %5 to %struct._xmlRegAtom*, !dbg !116
  store %struct._xmlRegAtom* %6, %struct._xmlRegAtom** %4, align 8, !dbg !115
  %7 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %4, align 8, !dbg !117
  %8 = icmp eq %struct._xmlRegAtom* %7, null, !dbg !119
  br i1 %8, label %9, label %10, !dbg !120

9:                                                ; preds = %1
  store %struct._xmlRegAtom* null, %struct._xmlRegAtom** %2, align 8, !dbg !121
  br label %17, !dbg !121

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4, !dbg !122
  %12 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %4, align 8, !dbg !123
  %13 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %12, i32 0, i32 0, !dbg !124
  store i32 %11, i32* %13, align 8, !dbg !125
  %14 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %4, align 8, !dbg !126
  %15 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %14, i32 0, i32 1, !dbg !127
  store i8* null, i8** %15, align 8, !dbg !128
  %16 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %4, align 8, !dbg !129
  store %struct._xmlRegAtom* %16, %struct._xmlRegAtom** %2, align 8, !dbg !130
  br label %17, !dbg !130

17:                                               ; preds = %10, %9
  %18 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %2, align 8, !dbg !131
  ret %struct._xmlRegAtom* %18, !dbg !131
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmlFAGenerateTransitions(%struct._xmlRegState* noundef %0, %struct._xmlRegState* noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, i32 noundef %5) #0 !dbg !132 {
  %7 = alloca %struct._xmlRegState*, align 8
  %8 = alloca %struct._xmlRegState*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct._xmlRegAtom*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca [200 x i8], align 16
  store %struct._xmlRegState* %0, %struct._xmlRegState** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRegState** %7, metadata !139, metadata !DIExpression()), !dbg !140
  store %struct._xmlRegState* %1, %struct._xmlRegState** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRegState** %8, metadata !141, metadata !DIExpression()), !dbg !142
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !143, metadata !DIExpression()), !dbg !144
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !145, metadata !DIExpression()), !dbg !146
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !147, metadata !DIExpression()), !dbg !148
  store i32 %5, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !149, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.declare(metadata %struct._xmlRegAtom** %13, metadata !151, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.declare(metadata i8** %14, metadata !153, metadata !DIExpression()), !dbg !155
  %16 = load %struct._xmlRegState*, %struct._xmlRegState** %7, align 8, !dbg !156
  %17 = icmp eq %struct._xmlRegState* %16, null, !dbg !158
  br i1 %17, label %21, label %18, !dbg !159

18:                                               ; preds = %6
  %19 = load %struct._xmlRegState*, %struct._xmlRegState** %8, align 8, !dbg !160
  %20 = icmp eq %struct._xmlRegState* %19, null, !dbg !161
  br i1 %20, label %21, label %22, !dbg !162

21:                                               ; preds = %18, %6
  br label %99, !dbg !163

22:                                               ; preds = %18
  %23 = call %struct._xmlRegAtom* @xmlRegNewAtom(i32 noundef 1), !dbg !164
  store %struct._xmlRegAtom* %23, %struct._xmlRegAtom** %13, align 8, !dbg !165
  %24 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %13, align 8, !dbg !166
  %25 = icmp eq %struct._xmlRegAtom* %24, null, !dbg !168
  br i1 %25, label %26, label %27, !dbg !169

26:                                               ; preds = %22
  br label %99, !dbg !170

27:                                               ; preds = %22
  %28 = load i8*, i8** %9, align 8, !dbg !171
  %29 = icmp eq i8* %28, null, !dbg !173
  br i1 %29, label %33, label %30, !dbg !174

30:                                               ; preds = %27
  %31 = load i8*, i8** %11, align 8, !dbg !175
  %32 = icmp eq i8* %31, null, !dbg !176
  br i1 %32, label %33, label %35, !dbg !177

33:                                               ; preds = %30, %27
  %34 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %13, align 8, !dbg !178
  call void @xmlRegFreeAtom(%struct._xmlRegAtom* noundef %34), !dbg !180
  br label %99, !dbg !181

35:                                               ; preds = %30
  %36 = load i32, i32* %12, align 4, !dbg !182
  %37 = load i32, i32* %10, align 4, !dbg !183
  %38 = add nsw i32 %36, %37, !dbg !184
  %39 = add nsw i32 %38, 2, !dbg !185
  %40 = sext i32 %39 to i64, !dbg !182
  %41 = call noalias i8* @malloc(i64 noundef %40) #8, !dbg !186
  store i8* %41, i8** %14, align 8, !dbg !187
  %42 = load i8*, i8** %14, align 8, !dbg !188
  %43 = icmp eq i8* %42, null, !dbg !190
  br i1 %43, label %44, label %46, !dbg !191

44:                                               ; preds = %35
  %45 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %13, align 8, !dbg !192
  call void @xmlRegFreeAtom(%struct._xmlRegAtom* noundef %45), !dbg !194
  br label %99, !dbg !195

46:                                               ; preds = %35
  %47 = load i8*, i8** %14, align 8, !dbg !196
  %48 = getelementptr inbounds i8, i8* %47, i64 0, !dbg !196
  %49 = load i8*, i8** %9, align 8, !dbg !197
  %50 = load i32, i32* %10, align 4, !dbg !198
  %51 = sext i32 %50 to i64, !dbg !198
  %52 = call i8* @memcpy(i8* %48, i8* %49, i64 %51), !dbg !199
  %53 = load i8*, i8** %14, align 8, !dbg !200
  %54 = load i32, i32* %10, align 4, !dbg !201
  %55 = sext i32 %54 to i64, !dbg !200
  %56 = getelementptr inbounds i8, i8* %53, i64 %55, !dbg !200
  store i8 124, i8* %56, align 1, !dbg !202
  %57 = load i8*, i8** %14, align 8, !dbg !203
  %58 = load i32, i32* %10, align 4, !dbg !204
  %59 = add nsw i32 %58, 1, !dbg !205
  %60 = sext i32 %59 to i64, !dbg !203
  %61 = getelementptr inbounds i8, i8* %57, i64 %60, !dbg !203
  %62 = load i8*, i8** %11, align 8, !dbg !206
  %63 = load i32, i32* %12, align 4, !dbg !207
  %64 = sext i32 %63 to i64, !dbg !207
  %65 = call i8* @memcpy(i8* %61, i8* %62, i64 %64), !dbg !208
  %66 = load i8*, i8** %14, align 8, !dbg !209
  %67 = load i32, i32* %12, align 4, !dbg !210
  %68 = load i32, i32* %10, align 4, !dbg !211
  %69 = add nsw i32 %67, %68, !dbg !212
  %70 = add nsw i32 %69, 1, !dbg !213
  %71 = sext i32 %70 to i64, !dbg !209
  %72 = getelementptr inbounds i8, i8* %66, i64 %71, !dbg !209
  store i8 0, i8* %72, align 1, !dbg !214
  %73 = load i8*, i8** %14, align 8, !dbg !215
  %74 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %13, align 8, !dbg !216
  %75 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %74, i32 0, i32 1, !dbg !217
  store i8* %73, i8** %75, align 8, !dbg !218
  call void @llvm.dbg.declare(metadata [200 x i8]* %15, metadata !219, metadata !DIExpression()), !dbg !223
  %76 = getelementptr inbounds [200 x i8], [200 x i8]* %15, i64 0, i64 0, !dbg !224
  %77 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %13, align 8, !dbg !225
  %78 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %77, i32 0, i32 1, !dbg !226
  %79 = load i8*, i8** %78, align 8, !dbg !226
  %80 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %76, i64 noundef 199, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* noundef %79), !dbg !227
  %81 = load i32, i32* %10, align 4, !dbg !228
  %82 = icmp sge i32 %81, 0, !dbg !228
  br i1 %82, label %83, label %94, !dbg !228

83:                                               ; preds = %46
  %84 = load i32, i32* %12, align 4, !dbg !228
  %85 = icmp sge i32 %84, 0, !dbg !228
  br i1 %85, label %86, label %94, !dbg !228

86:                                               ; preds = %83
  %87 = load i32, i32* %10, align 4, !dbg !228
  %88 = load i32, i32* %12, align 4, !dbg !228
  %89 = add nsw i32 %87, %88, !dbg !228
  %90 = add nsw i32 %89, 2, !dbg !228
  %91 = icmp sle i32 %90, 200, !dbg !228
  br i1 %91, label %92, label %94, !dbg !228

92:                                               ; preds = %86
  br i1 true, label %93, label %94, !dbg !228

93:                                               ; preds = %92
  br label %96, !dbg !228

94:                                               ; preds = %92, %86, %83, %46
  %95 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.7, i64 0, i64 0), i32 noundef 74, i8* noundef getelementptr inbounds ([118 x i8], [118 x i8]* @__PRETTY_FUNCTION__.xmlFAGenerateTransitions, i64 0, i64 0)), !dbg !228
  br label %96, !dbg !228

96:                                               ; preds = %94, %93
  %97 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.7, i64 0, i64 0), i32 noundef 75, i8* noundef getelementptr inbounds ([118 x i8], [118 x i8]* @__PRETTY_FUNCTION__.xmlFAGenerateTransitions, i64 0, i64 0)), !dbg !229
  %98 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %13, align 8, !dbg !230
  call void @xmlRegFreeAtom(%struct._xmlRegAtom* noundef %98), !dbg !231
  br label %99, !dbg !232

99:                                               ; preds = %96, %44, %33, %26, %21
  ret void, !dbg !232
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmlRegFreeAtom(%struct._xmlRegAtom* noundef %0) #0 !dbg !233 {
  %2 = alloca %struct._xmlRegAtom*, align 8
  store %struct._xmlRegAtom* %0, %struct._xmlRegAtom** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRegAtom** %2, metadata !236, metadata !DIExpression()), !dbg !237
  %3 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %2, align 8, !dbg !238
  %4 = icmp eq %struct._xmlRegAtom* %3, null, !dbg !240
  br i1 %4, label %5, label %6, !dbg !241

5:                                                ; preds = %1
  br label %18, !dbg !242

6:                                                ; preds = %1
  %7 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %2, align 8, !dbg !243
  %8 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %7, i32 0, i32 1, !dbg !245
  %9 = load i8*, i8** %8, align 8, !dbg !245
  %10 = icmp ne i8* %9, null, !dbg !246
  br i1 %10, label %11, label %15, !dbg !247

11:                                               ; preds = %6
  %12 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %2, align 8, !dbg !248
  %13 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %12, i32 0, i32 1, !dbg !250
  %14 = load i8*, i8** %13, align 8, !dbg !250
  call void @free(i8* noundef %14) #8, !dbg !251
  br label %15, !dbg !252

15:                                               ; preds = %11, %6
  %16 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %2, align 8, !dbg !253
  %17 = bitcast %struct._xmlRegAtom* %16 to i8*, !dbg !253
  call void @free(i8* noundef %17) #8, !dbg !254
  br label %18, !dbg !255

18:                                               ; preds = %15, %5
  ret void, !dbg !255
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

declare i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #6

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !256 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !265, metadata !DIExpression()), !dbg !266
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !267, metadata !DIExpression()), !dbg !268
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !269, metadata !DIExpression()), !dbg !270
  call void @llvm.dbg.declare(metadata i8** %7, metadata !271, metadata !DIExpression()), !dbg !272
  %9 = load i8*, i8** %4, align 8, !dbg !273
  store i8* %9, i8** %7, align 8, !dbg !272
  call void @llvm.dbg.declare(metadata i8** %8, metadata !274, metadata !DIExpression()), !dbg !275
  %10 = load i8*, i8** %5, align 8, !dbg !276
  store i8* %10, i8** %8, align 8, !dbg !275
  br label %11, !dbg !277

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !278
  %13 = add i64 %12, -1, !dbg !278
  store i64 %13, i64* %6, align 8, !dbg !278
  %14 = icmp ugt i64 %12, 0, !dbg !279
  br i1 %14, label %15, label %21, !dbg !277

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !280
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !280
  store i8* %17, i8** %8, align 8, !dbg !280
  %18 = load i8, i8* %16, align 1, !dbg !281
  %19 = load i8*, i8** %7, align 8, !dbg !282
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !282
  store i8* %20, i8** %7, align 8, !dbg !282
  store i8 %18, i8* %19, align 1, !dbg !283
  br label %11, !dbg !277, !llvm.loop !284

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !286
  ret i8* %22, !dbg !287
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #7 !dbg !288 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !292, metadata !DIExpression()), !dbg !293
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !294, metadata !DIExpression()), !dbg !295
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !296, metadata !DIExpression()), !dbg !297
  call void @llvm.dbg.declare(metadata i8** %7, metadata !298, metadata !DIExpression()), !dbg !299
  %8 = load i8*, i8** %4, align 8, !dbg !300
  store i8* %8, i8** %7, align 8, !dbg !299
  br label %9, !dbg !301

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !302
  %11 = add i64 %10, -1, !dbg !302
  store i64 %11, i64* %6, align 8, !dbg !302
  %12 = icmp ugt i64 %10, 0, !dbg !303
  br i1 %12, label %13, label %18, !dbg !301

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !304
  %15 = trunc i32 %14 to i8, !dbg !304
  %16 = load i8*, i8** %7, align 8, !dbg !305
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !305
  store i8* %17, i8** %7, align 8, !dbg !305
  store i8 %15, i8* %16, align 1, !dbg !306
  br label %9, !dbg !301, !llvm.loop !307

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !308
  ret i8* %19, !dbg !309
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19, !19, !19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/205_xmlregexp.c_5794_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "d69e6549ee60f2a890d85f3485ed195e")
!2 = !{!3, !4, !6}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!8 = distinct !DICompileUnit(language: DW_LANG_C99, file: !9, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!9 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !11, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!11 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!12 = !{i32 7, !"Dwarf Version", i32 5}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{i32 7, !"PIC Level", i32 2}
!16 = !{i32 7, !"PIE Level", i32 2}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"Ubuntu clang version 14.0.6"}
!20 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 80, type: !21, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!21 = !DISubroutineType(types: !22)
!22 = !{!23}
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !{}
!25 = !DILocalVariable(name: "from_state", scope: !20, file: !1, line: 81, type: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegState", file: !1, line: 17, baseType: !27)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegState", file: !1, line: 20, size: 128, elements: !28)
!28 = !{!29, !30, !31}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !27, file: !1, line: 21, baseType: !23, size: 32)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !27, file: !1, line: 22, baseType: !23, size: 32, offset: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "atom", scope: !27, file: !1, line: 23, baseType: !32, size: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegAtomPtr", file: !1, line: 10, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegAtom", file: !1, line: 9, baseType: !35)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegAtom", file: !1, line: 12, size: 128, elements: !36)
!36 = !{!37, !38}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !35, file: !1, line: 13, baseType: !23, size: 32)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "valuep", scope: !35, file: !1, line: 14, baseType: !3, size: 64, offset: 64)
!39 = !DILocation(line: 81, column: 17, scope: !20)
!40 = !DILocalVariable(name: "to_state", scope: !20, file: !1, line: 81, type: !26)
!41 = !DILocation(line: 81, column: 29, scope: !20)
!42 = !DILocalVariable(name: "token", scope: !20, file: !1, line: 82, type: !43)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 800, elements: !45)
!44 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!45 = !{!46}
!46 = !DISubrange(count: 100)
!47 = !DILocation(line: 82, column: 19, scope: !20)
!48 = !DILocalVariable(name: "token2", scope: !20, file: !1, line: 83, type: !43)
!49 = !DILocation(line: 83, column: 19, scope: !20)
!50 = !DILocalVariable(name: "lenp", scope: !20, file: !1, line: 84, type: !23)
!51 = !DILocation(line: 84, column: 9, scope: !20)
!52 = !DILocalVariable(name: "lenn", scope: !20, file: !1, line: 84, type: !23)
!53 = !DILocation(line: 84, column: 15, scope: !20)
!54 = !DILocation(line: 86, column: 5, scope: !20)
!55 = !DILocation(line: 87, column: 5, scope: !20)
!56 = !DILocation(line: 89, column: 24, scope: !20)
!57 = !DILocation(line: 89, column: 5, scope: !20)
!58 = !DILocation(line: 90, column: 24, scope: !20)
!59 = !DILocation(line: 90, column: 5, scope: !20)
!60 = !DILocation(line: 91, column: 24, scope: !20)
!61 = !DILocation(line: 91, column: 5, scope: !20)
!62 = !DILocation(line: 92, column: 24, scope: !20)
!63 = !DILocation(line: 92, column: 5, scope: !20)
!64 = !DILocation(line: 94, column: 17, scope: !20)
!65 = !DILocation(line: 94, column: 22, scope: !20)
!66 = !DILocation(line: 94, column: 27, scope: !20)
!67 = !DILocation(line: 94, column: 30, scope: !20)
!68 = !DILocation(line: 94, column: 35, scope: !20)
!69 = !DILocation(line: 0, scope: !20)
!70 = !DILocation(line: 94, column: 5, scope: !20)
!71 = !DILocation(line: 95, column: 17, scope: !20)
!72 = !DILocation(line: 95, column: 22, scope: !20)
!73 = !DILocation(line: 95, column: 27, scope: !20)
!74 = !DILocation(line: 95, column: 30, scope: !20)
!75 = !DILocation(line: 95, column: 35, scope: !20)
!76 = !DILocation(line: 95, column: 5, scope: !20)
!77 = !DILocation(line: 96, column: 23, scope: !20)
!78 = !DILocation(line: 96, column: 17, scope: !20)
!79 = !DILocation(line: 96, column: 29, scope: !20)
!80 = !DILocation(line: 96, column: 5, scope: !20)
!81 = !DILocation(line: 97, column: 24, scope: !20)
!82 = !DILocation(line: 97, column: 17, scope: !20)
!83 = !DILocation(line: 97, column: 30, scope: !20)
!84 = !DILocation(line: 97, column: 5, scope: !20)
!85 = !DILocation(line: 99, column: 23, scope: !20)
!86 = !DILocation(line: 99, column: 16, scope: !20)
!87 = !DILocation(line: 99, column: 21, scope: !20)
!88 = !DILocation(line: 100, column: 21, scope: !20)
!89 = !DILocation(line: 100, column: 14, scope: !20)
!90 = !DILocation(line: 100, column: 19, scope: !20)
!91 = !DILocation(line: 102, column: 54, scope: !20)
!92 = !DILocation(line: 102, column: 61, scope: !20)
!93 = !DILocation(line: 102, column: 67, scope: !20)
!94 = !DILocation(line: 102, column: 75, scope: !20)
!95 = !DILocation(line: 102, column: 5, scope: !20)
!96 = !DILocation(line: 104, column: 20, scope: !97)
!97 = distinct !DILexicalBlock(scope: !20, file: !1, line: 104, column: 9)
!98 = !DILocation(line: 104, column: 25, scope: !97)
!99 = !DILocation(line: 104, column: 9, scope: !20)
!100 = !DILocation(line: 104, column: 60, scope: !97)
!101 = !DILocation(line: 104, column: 34, scope: !97)
!102 = !DILocation(line: 105, column: 18, scope: !103)
!103 = distinct !DILexicalBlock(scope: !20, file: !1, line: 105, column: 9)
!104 = !DILocation(line: 105, column: 23, scope: !103)
!105 = !DILocation(line: 105, column: 9, scope: !20)
!106 = !DILocation(line: 105, column: 56, scope: !103)
!107 = !DILocation(line: 105, column: 32, scope: !103)
!108 = !DILocation(line: 107, column: 5, scope: !20)
!109 = distinct !DISubprogram(name: "xmlRegNewAtom", scope: !1, file: !1, line: 34, type: !110, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !24)
!110 = !DISubroutineType(types: !111)
!111 = !{!32, !23}
!112 = !DILocalVariable(name: "type", arg: 1, scope: !109, file: !1, line: 34, type: !23)
!113 = !DILocation(line: 34, column: 40, scope: !109)
!114 = !DILocalVariable(name: "atom", scope: !109, file: !1, line: 35, type: !32)
!115 = !DILocation(line: 35, column: 19, scope: !109)
!116 = !DILocation(line: 35, column: 26, scope: !109)
!117 = !DILocation(line: 36, column: 9, scope: !118)
!118 = distinct !DILexicalBlock(scope: !109, file: !1, line: 36, column: 9)
!119 = !DILocation(line: 36, column: 14, scope: !118)
!120 = !DILocation(line: 36, column: 9, scope: !109)
!121 = !DILocation(line: 36, column: 23, scope: !118)
!122 = !DILocation(line: 37, column: 18, scope: !109)
!123 = !DILocation(line: 37, column: 5, scope: !109)
!124 = !DILocation(line: 37, column: 11, scope: !109)
!125 = !DILocation(line: 37, column: 16, scope: !109)
!126 = !DILocation(line: 38, column: 5, scope: !109)
!127 = !DILocation(line: 38, column: 11, scope: !109)
!128 = !DILocation(line: 38, column: 18, scope: !109)
!129 = !DILocation(line: 39, column: 12, scope: !109)
!130 = !DILocation(line: 39, column: 5, scope: !109)
!131 = !DILocation(line: 40, column: 1, scope: !109)
!132 = distinct !DISubprogram(name: "xmlFAGenerateTransitions", scope: !1, file: !1, line: 42, type: !133, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !24)
!133 = !DISubroutineType(types: !134)
!134 = !{null, !135, !135, !137, !23, !137, !23}
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegStatePtr", file: !1, line: 18, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!139 = !DILocalVariable(name: "from", arg: 1, scope: !132, file: !1, line: 42, type: !135)
!140 = !DILocation(line: 42, column: 53, scope: !132)
!141 = !DILocalVariable(name: "to", arg: 2, scope: !132, file: !1, line: 42, type: !135)
!142 = !DILocation(line: 42, column: 74, scope: !132)
!143 = !DILocalVariable(name: "token", arg: 3, scope: !132, file: !1, line: 43, type: !137)
!144 = !DILocation(line: 43, column: 59, scope: !132)
!145 = !DILocalVariable(name: "lenp", arg: 4, scope: !132, file: !1, line: 43, type: !23)
!146 = !DILocation(line: 43, column: 70, scope: !132)
!147 = !DILocalVariable(name: "token2", arg: 5, scope: !132, file: !1, line: 44, type: !137)
!148 = !DILocation(line: 44, column: 59, scope: !132)
!149 = !DILocalVariable(name: "lenn", arg: 6, scope: !132, file: !1, line: 44, type: !23)
!150 = !DILocation(line: 44, column: 71, scope: !132)
!151 = !DILocalVariable(name: "atom", scope: !132, file: !1, line: 45, type: !32)
!152 = !DILocation(line: 45, column: 19, scope: !132)
!153 = !DILocalVariable(name: "str", scope: !132, file: !1, line: 46, type: !154)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!155 = !DILocation(line: 46, column: 20, scope: !132)
!156 = !DILocation(line: 48, column: 9, scope: !157)
!157 = distinct !DILexicalBlock(scope: !132, file: !1, line: 48, column: 9)
!158 = !DILocation(line: 48, column: 14, scope: !157)
!159 = !DILocation(line: 48, column: 22, scope: !157)
!160 = !DILocation(line: 48, column: 25, scope: !157)
!161 = !DILocation(line: 48, column: 28, scope: !157)
!162 = !DILocation(line: 48, column: 9, scope: !132)
!163 = !DILocation(line: 48, column: 37, scope: !157)
!164 = !DILocation(line: 50, column: 12, scope: !132)
!165 = !DILocation(line: 50, column: 10, scope: !132)
!166 = !DILocation(line: 51, column: 9, scope: !167)
!167 = distinct !DILexicalBlock(scope: !132, file: !1, line: 51, column: 9)
!168 = !DILocation(line: 51, column: 14, scope: !167)
!169 = !DILocation(line: 51, column: 9, scope: !132)
!170 = !DILocation(line: 51, column: 23, scope: !167)
!171 = !DILocation(line: 53, column: 9, scope: !172)
!172 = distinct !DILexicalBlock(scope: !132, file: !1, line: 53, column: 9)
!173 = !DILocation(line: 53, column: 15, scope: !172)
!174 = !DILocation(line: 53, column: 23, scope: !172)
!175 = !DILocation(line: 53, column: 26, scope: !172)
!176 = !DILocation(line: 53, column: 33, scope: !172)
!177 = !DILocation(line: 53, column: 9, scope: !132)
!178 = !DILocation(line: 54, column: 24, scope: !179)
!179 = distinct !DILexicalBlock(scope: !172, file: !1, line: 53, column: 42)
!180 = !DILocation(line: 54, column: 9, scope: !179)
!181 = !DILocation(line: 55, column: 9, scope: !179)
!182 = !DILocation(line: 58, column: 18, scope: !132)
!183 = !DILocation(line: 58, column: 25, scope: !132)
!184 = !DILocation(line: 58, column: 23, scope: !132)
!185 = !DILocation(line: 58, column: 30, scope: !132)
!186 = !DILocation(line: 58, column: 11, scope: !132)
!187 = !DILocation(line: 58, column: 9, scope: !132)
!188 = !DILocation(line: 59, column: 9, scope: !189)
!189 = distinct !DILexicalBlock(scope: !132, file: !1, line: 59, column: 9)
!190 = !DILocation(line: 59, column: 13, scope: !189)
!191 = !DILocation(line: 59, column: 9, scope: !132)
!192 = !DILocation(line: 60, column: 24, scope: !193)
!193 = distinct !DILexicalBlock(scope: !189, file: !1, line: 59, column: 22)
!194 = !DILocation(line: 60, column: 9, scope: !193)
!195 = !DILocation(line: 61, column: 9, scope: !193)
!196 = !DILocation(line: 64, column: 13, scope: !132)
!197 = !DILocation(line: 64, column: 21, scope: !132)
!198 = !DILocation(line: 64, column: 28, scope: !132)
!199 = !DILocation(line: 64, column: 5, scope: !132)
!200 = !DILocation(line: 65, column: 5, scope: !132)
!201 = !DILocation(line: 65, column: 9, scope: !132)
!202 = !DILocation(line: 65, column: 15, scope: !132)
!203 = !DILocation(line: 66, column: 13, scope: !132)
!204 = !DILocation(line: 66, column: 17, scope: !132)
!205 = !DILocation(line: 66, column: 22, scope: !132)
!206 = !DILocation(line: 66, column: 28, scope: !132)
!207 = !DILocation(line: 66, column: 36, scope: !132)
!208 = !DILocation(line: 66, column: 5, scope: !132)
!209 = !DILocation(line: 67, column: 5, scope: !132)
!210 = !DILocation(line: 67, column: 9, scope: !132)
!211 = !DILocation(line: 67, column: 16, scope: !132)
!212 = !DILocation(line: 67, column: 14, scope: !132)
!213 = !DILocation(line: 67, column: 21, scope: !132)
!214 = !DILocation(line: 67, column: 26, scope: !132)
!215 = !DILocation(line: 69, column: 20, scope: !132)
!216 = !DILocation(line: 69, column: 5, scope: !132)
!217 = !DILocation(line: 69, column: 11, scope: !132)
!218 = !DILocation(line: 69, column: 18, scope: !132)
!219 = !DILocalVariable(name: "err_msg", scope: !132, file: !1, line: 71, type: !220)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 1600, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 200)
!223 = !DILocation(line: 71, column: 10, scope: !132)
!224 = !DILocation(line: 72, column: 23, scope: !132)
!225 = !DILocation(line: 72, column: 62, scope: !132)
!226 = !DILocation(line: 72, column: 68, scope: !132)
!227 = !DILocation(line: 72, column: 5, scope: !132)
!228 = !DILocation(line: 74, column: 5, scope: !132)
!229 = !DILocation(line: 75, column: 5, scope: !132)
!230 = !DILocation(line: 77, column: 20, scope: !132)
!231 = !DILocation(line: 77, column: 5, scope: !132)
!232 = !DILocation(line: 78, column: 1, scope: !132)
!233 = distinct !DISubprogram(name: "xmlRegFreeAtom", scope: !1, file: !1, line: 26, type: !234, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !24)
!234 = !DISubroutineType(types: !235)
!235 = !{null, !32}
!236 = !DILocalVariable(name: "atom", arg: 1, scope: !233, file: !1, line: 26, type: !32)
!237 = !DILocation(line: 26, column: 42, scope: !233)
!238 = !DILocation(line: 27, column: 9, scope: !239)
!239 = distinct !DILexicalBlock(scope: !233, file: !1, line: 27, column: 9)
!240 = !DILocation(line: 27, column: 14, scope: !239)
!241 = !DILocation(line: 27, column: 9, scope: !233)
!242 = !DILocation(line: 27, column: 23, scope: !239)
!243 = !DILocation(line: 28, column: 9, scope: !244)
!244 = distinct !DILexicalBlock(scope: !233, file: !1, line: 28, column: 9)
!245 = !DILocation(line: 28, column: 15, scope: !244)
!246 = !DILocation(line: 28, column: 22, scope: !244)
!247 = !DILocation(line: 28, column: 9, scope: !233)
!248 = !DILocation(line: 29, column: 14, scope: !249)
!249 = distinct !DILexicalBlock(scope: !244, file: !1, line: 28, column: 31)
!250 = !DILocation(line: 29, column: 20, scope: !249)
!251 = !DILocation(line: 29, column: 9, scope: !249)
!252 = !DILocation(line: 30, column: 5, scope: !249)
!253 = !DILocation(line: 31, column: 10, scope: !233)
!254 = !DILocation(line: 31, column: 5, scope: !233)
!255 = !DILocation(line: 32, column: 1, scope: !233)
!256 = distinct !DISubprogram(name: "memcpy", scope: !257, file: !257, line: 12, type: !258, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !24)
!257 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!258 = !DISubroutineType(types: !259)
!259 = !{!3, !3, !260, !262}
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !263, line: 46, baseType: !264)
!263 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!264 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!265 = !DILocalVariable(name: "destaddr", arg: 1, scope: !256, file: !257, line: 12, type: !3)
!266 = !DILocation(line: 12, column: 20, scope: !256)
!267 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !256, file: !257, line: 12, type: !260)
!268 = !DILocation(line: 12, column: 42, scope: !256)
!269 = !DILocalVariable(name: "len", arg: 3, scope: !256, file: !257, line: 12, type: !262)
!270 = !DILocation(line: 12, column: 58, scope: !256)
!271 = !DILocalVariable(name: "dest", scope: !256, file: !257, line: 13, type: !4)
!272 = !DILocation(line: 13, column: 9, scope: !256)
!273 = !DILocation(line: 13, column: 16, scope: !256)
!274 = !DILocalVariable(name: "src", scope: !256, file: !257, line: 14, type: !6)
!275 = !DILocation(line: 14, column: 15, scope: !256)
!276 = !DILocation(line: 14, column: 21, scope: !256)
!277 = !DILocation(line: 16, column: 3, scope: !256)
!278 = !DILocation(line: 16, column: 13, scope: !256)
!279 = !DILocation(line: 16, column: 16, scope: !256)
!280 = !DILocation(line: 17, column: 19, scope: !256)
!281 = !DILocation(line: 17, column: 15, scope: !256)
!282 = !DILocation(line: 17, column: 10, scope: !256)
!283 = !DILocation(line: 17, column: 13, scope: !256)
!284 = distinct !{!284, !277, !280, !285}
!285 = !{!"llvm.loop.mustprogress"}
!286 = !DILocation(line: 18, column: 10, scope: !256)
!287 = !DILocation(line: 18, column: 3, scope: !256)
!288 = distinct !DISubprogram(name: "memset", scope: !289, file: !289, line: 12, type: !290, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !24)
!289 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!290 = !DISubroutineType(types: !291)
!291 = !{!3, !3, !23, !262}
!292 = !DILocalVariable(name: "dst", arg: 1, scope: !288, file: !289, line: 12, type: !3)
!293 = !DILocation(line: 12, column: 20, scope: !288)
!294 = !DILocalVariable(name: "s", arg: 2, scope: !288, file: !289, line: 12, type: !23)
!295 = !DILocation(line: 12, column: 29, scope: !288)
!296 = !DILocalVariable(name: "count", arg: 3, scope: !288, file: !289, line: 12, type: !262)
!297 = !DILocation(line: 12, column: 39, scope: !288)
!298 = !DILocalVariable(name: "a", scope: !288, file: !289, line: 13, type: !4)
!299 = !DILocation(line: 13, column: 9, scope: !288)
!300 = !DILocation(line: 13, column: 13, scope: !288)
!301 = !DILocation(line: 14, column: 3, scope: !288)
!302 = !DILocation(line: 14, column: 15, scope: !288)
!303 = !DILocation(line: 14, column: 18, scope: !288)
!304 = !DILocation(line: 15, column: 12, scope: !288)
!305 = !DILocation(line: 15, column: 7, scope: !288)
!306 = !DILocation(line: 15, column: 10, scope: !288)
!307 = distinct !{!307, !301, !304, !285}
!308 = !DILocation(line: 16, column: 10, scope: !288)
!309 = !DILocation(line: 16, column: 3, scope: !288)

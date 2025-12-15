; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/310_relaxng.c_1333_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/310_relaxng.c_1333_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRelaxNGValidState = type { %struct._xmlAttr**, i32, i32 }
%struct._xmlAttr = type opaque

@.str = private unnamed_addr constant [18 x i8] c"allocating state\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"allocating states\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"(state->nbAttrs <= ret->maxAttrs) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_55980_vul/310_relaxng.c_1333_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlRelaxNGCopyValidState = private unnamed_addr constant [92 x i8] c"xmlRelaxNGValidState *xmlRelaxNGCopyValidState(xmlRelaxNGValidCtxt, xmlRelaxNGValidState *)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"state.nbAttrs\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"state.maxAttrs\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"state.attrs[i]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlRngVErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !25 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !33, metadata !DIExpression()), !dbg !34
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !35, metadata !DIExpression()), !dbg !36
  %5 = load i8*, i8** %3, align 8, !dbg !37
  %6 = load i8*, i8** %4, align 8, !dbg !38
  ret void, !dbg !39
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlRelaxNGValidState* @xmlRelaxNGCopyValidState(i8* noundef %0, %struct._xmlRelaxNGValidState* noundef %1) #0 !dbg !40 {
  %3 = alloca %struct._xmlRelaxNGValidState*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._xmlRelaxNGValidState*, align 8
  %6 = alloca %struct._xmlRelaxNGValidState*, align 8
  %7 = alloca %struct._xmlAttr**, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !43, metadata !DIExpression()), !dbg !44
  store %struct._xmlRelaxNGValidState* %1, %struct._xmlRelaxNGValidState** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidState** %5, metadata !45, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidState** %6, metadata !47, metadata !DIExpression()), !dbg !48
  %8 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %5, align 8, !dbg !49
  %9 = icmp eq %struct._xmlRelaxNGValidState* %8, null, !dbg !51
  br i1 %9, label %10, label %11, !dbg !52

10:                                               ; preds = %2
  store %struct._xmlRelaxNGValidState* null, %struct._xmlRelaxNGValidState** %3, align 8, !dbg !53
  br label %83, !dbg !53

11:                                               ; preds = %2
  %12 = call noalias i8* @malloc(i64 noundef 16) #5, !dbg !54
  %13 = bitcast i8* %12 to %struct._xmlRelaxNGValidState*, !dbg !55
  store %struct._xmlRelaxNGValidState* %13, %struct._xmlRelaxNGValidState** %6, align 8, !dbg !56
  %14 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %6, align 8, !dbg !57
  %15 = icmp eq %struct._xmlRelaxNGValidState* %14, null, !dbg !59
  br i1 %15, label %16, label %18, !dbg !60

16:                                               ; preds = %11
  %17 = load i8*, i8** %4, align 8, !dbg !61
  call void @xmlRngVErrMemory(i8* noundef %17, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0)), !dbg !63
  store %struct._xmlRelaxNGValidState* null, %struct._xmlRelaxNGValidState** %3, align 8, !dbg !64
  br label %83, !dbg !64

18:                                               ; preds = %11
  %19 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %5, align 8, !dbg !65
  %20 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %19, i32 0, i32 1, !dbg !66
  %21 = load i32, i32* %20, align 8, !dbg !66
  %22 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %6, align 8, !dbg !67
  %23 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %22, i32 0, i32 1, !dbg !68
  store i32 %21, i32* %23, align 8, !dbg !69
  %24 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %5, align 8, !dbg !70
  %25 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %24, i32 0, i32 2, !dbg !71
  %26 = load i32, i32* %25, align 4, !dbg !71
  %27 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %6, align 8, !dbg !72
  %28 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %27, i32 0, i32 2, !dbg !73
  store i32 %26, i32* %28, align 4, !dbg !74
  %29 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %6, align 8, !dbg !75
  %30 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %29, i32 0, i32 0, !dbg !76
  store %struct._xmlAttr** null, %struct._xmlAttr*** %30, align 8, !dbg !77
  %31 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %5, align 8, !dbg !78
  %32 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %31, i32 0, i32 1, !dbg !80
  %33 = load i32, i32* %32, align 8, !dbg !80
  %34 = icmp sgt i32 %33, 0, !dbg !81
  br i1 %34, label %35, label %81, !dbg !82

35:                                               ; preds = %18
  call void @llvm.dbg.declare(metadata %struct._xmlAttr*** %7, metadata !83, metadata !DIExpression()), !dbg !85
  %36 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %6, align 8, !dbg !86
  %37 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %36, i32 0, i32 2, !dbg !88
  %38 = load i32, i32* %37, align 4, !dbg !88
  %39 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %5, align 8, !dbg !89
  %40 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %39, i32 0, i32 1, !dbg !90
  %41 = load i32, i32* %40, align 8, !dbg !90
  %42 = icmp slt i32 %38, %41, !dbg !91
  br i1 %42, label %43, label %67, !dbg !92

43:                                               ; preds = %35
  %44 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %5, align 8, !dbg !93
  %45 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %44, i32 0, i32 1, !dbg !95
  %46 = load i32, i32* %45, align 8, !dbg !95
  %47 = sext i32 %46 to i64, !dbg !93
  %48 = mul i64 %47, 8, !dbg !96
  %49 = call noalias i8* @malloc(i64 noundef %48) #5, !dbg !97
  %50 = bitcast i8* %49 to %struct._xmlAttr**, !dbg !98
  store %struct._xmlAttr** %50, %struct._xmlAttr*** %7, align 8, !dbg !99
  %51 = load %struct._xmlAttr**, %struct._xmlAttr*** %7, align 8, !dbg !100
  %52 = icmp eq %struct._xmlAttr** %51, null, !dbg !102
  br i1 %52, label %53, label %58, !dbg !103

53:                                               ; preds = %43
  %54 = load i8*, i8** %4, align 8, !dbg !104
  call void @xmlRngVErrMemory(i8* noundef %54, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0)), !dbg !106
  %55 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %6, align 8, !dbg !107
  %56 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %55, i32 0, i32 1, !dbg !108
  store i32 0, i32* %56, align 8, !dbg !109
  %57 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %6, align 8, !dbg !110
  store %struct._xmlRelaxNGValidState* %57, %struct._xmlRelaxNGValidState** %3, align 8, !dbg !111
  br label %83, !dbg !111

58:                                               ; preds = %43
  %59 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %5, align 8, !dbg !112
  %60 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %59, i32 0, i32 2, !dbg !113
  %61 = load i32, i32* %60, align 4, !dbg !113
  %62 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %6, align 8, !dbg !114
  %63 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %62, i32 0, i32 2, !dbg !115
  store i32 %61, i32* %63, align 4, !dbg !116
  %64 = load %struct._xmlAttr**, %struct._xmlAttr*** %7, align 8, !dbg !117
  %65 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %6, align 8, !dbg !118
  %66 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %65, i32 0, i32 0, !dbg !119
  store %struct._xmlAttr** %64, %struct._xmlAttr*** %66, align 8, !dbg !120
  br label %67, !dbg !121

67:                                               ; preds = %58, %35
  %68 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %5, align 8, !dbg !122
  %69 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %68, i32 0, i32 1, !dbg !122
  %70 = load i32, i32* %69, align 8, !dbg !122
  %71 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %6, align 8, !dbg !122
  %72 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %71, i32 0, i32 2, !dbg !122
  %73 = load i32, i32* %72, align 4, !dbg !122
  %74 = icmp sle i32 %70, %73, !dbg !122
  br i1 %74, label %75, label %77, !dbg !122

75:                                               ; preds = %67
  br i1 true, label %76, label %77, !dbg !122

76:                                               ; preds = %75
  br label %79, !dbg !122

77:                                               ; preds = %75, %67
  %78 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.4, i64 0, i64 0), i32 noundef 65, i8* noundef getelementptr inbounds ([92 x i8], [92 x i8]* @__PRETTY_FUNCTION__.xmlRelaxNGCopyValidState, i64 0, i64 0)), !dbg !122
  br label %79, !dbg !122

79:                                               ; preds = %77, %76
  %80 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.4, i64 0, i64 0), i32 noundef 68, i8* noundef getelementptr inbounds ([92 x i8], [92 x i8]* @__PRETTY_FUNCTION__.xmlRelaxNGCopyValidState, i64 0, i64 0)), !dbg !123
  br label %81, !dbg !124

81:                                               ; preds = %79, %18
  %82 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %6, align 8, !dbg !125
  store %struct._xmlRelaxNGValidState* %82, %struct._xmlRelaxNGValidState** %3, align 8, !dbg !126
  br label %83, !dbg !126

83:                                               ; preds = %81, %53, %16, %10
  %84 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %3, align 8, !dbg !127
  ret %struct._xmlRelaxNGValidState* %84, !dbg !127
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !128 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlRelaxNGValidState, align 8
  %3 = alloca %struct._xmlRelaxNGValidState*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidState* %2, metadata !131, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidState** %3, metadata !133, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.declare(metadata i8** %4, metadata !135, metadata !DIExpression()), !dbg !136
  store i8* null, i8** %4, align 8, !dbg !136
  %6 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %2, i32 0, i32 1, !dbg !137
  %7 = bitcast i32* %6 to i8*, !dbg !138
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0)), !dbg !139
  %8 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %2, i32 0, i32 2, !dbg !140
  %9 = bitcast i32* %8 to i8*, !dbg !141
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0)), !dbg !142
  %10 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %2, i32 0, i32 1, !dbg !143
  %11 = load i32, i32* %10, align 8, !dbg !143
  %12 = icmp sge i32 %11, 0, !dbg !144
  br i1 %12, label %13, label %17, !dbg !145

13:                                               ; preds = %0
  %14 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %2, i32 0, i32 1, !dbg !146
  %15 = load i32, i32* %14, align 8, !dbg !146
  %16 = icmp slt i32 %15, 100, !dbg !147
  br label %17

17:                                               ; preds = %13, %0
  %18 = phi i1 [ false, %0 ], [ %16, %13 ], !dbg !148
  %19 = zext i1 %18 to i32, !dbg !145
  %20 = sext i32 %19 to i64, !dbg !149
  call void @klee_assume(i64 noundef %20), !dbg !150
  %21 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %2, i32 0, i32 2, !dbg !151
  %22 = load i32, i32* %21, align 4, !dbg !151
  %23 = icmp sge i32 %22, 0, !dbg !152
  br i1 %23, label %24, label %28, !dbg !153

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %2, i32 0, i32 2, !dbg !154
  %26 = load i32, i32* %25, align 4, !dbg !154
  %27 = icmp slt i32 %26, 100, !dbg !155
  br label %28

28:                                               ; preds = %24, %17
  %29 = phi i1 [ false, %17 ], [ %27, %24 ], !dbg !148
  %30 = zext i1 %29 to i32, !dbg !153
  %31 = sext i32 %30 to i64, !dbg !156
  call void @klee_assume(i64 noundef %31), !dbg !157
  %32 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %2, i32 0, i32 1, !dbg !158
  %33 = load i32, i32* %32, align 8, !dbg !158
  %34 = icmp sgt i32 %33, 0, !dbg !160
  br i1 %34, label %35, label %64, !dbg !161

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %2, i32 0, i32 1, !dbg !162
  %37 = load i32, i32* %36, align 8, !dbg !162
  %38 = sext i32 %37 to i64, !dbg !164
  %39 = mul i64 %38, 8, !dbg !165
  %40 = call noalias i8* @malloc(i64 noundef %39) #5, !dbg !166
  %41 = bitcast i8* %40 to %struct._xmlAttr**, !dbg !167
  %42 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %2, i32 0, i32 0, !dbg !168
  store %struct._xmlAttr** %41, %struct._xmlAttr*** %42, align 8, !dbg !169
  %43 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %2, i32 0, i32 0, !dbg !170
  %44 = load %struct._xmlAttr**, %struct._xmlAttr*** %43, align 8, !dbg !170
  %45 = icmp ne %struct._xmlAttr** %44, null, !dbg !171
  %46 = zext i1 %45 to i32, !dbg !171
  %47 = sext i32 %46 to i64, !dbg !172
  call void @klee_assume(i64 noundef %47), !dbg !173
  call void @llvm.dbg.declare(metadata i32* %5, metadata !174, metadata !DIExpression()), !dbg !176
  store i32 0, i32* %5, align 4, !dbg !176
  br label %48, !dbg !177

48:                                               ; preds = %60, %35
  %49 = load i32, i32* %5, align 4, !dbg !178
  %50 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %2, i32 0, i32 1, !dbg !180
  %51 = load i32, i32* %50, align 8, !dbg !180
  %52 = icmp slt i32 %49, %51, !dbg !181
  br i1 %52, label %53, label %63, !dbg !182

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %2, i32 0, i32 0, !dbg !183
  %55 = load %struct._xmlAttr**, %struct._xmlAttr*** %54, align 8, !dbg !183
  %56 = load i32, i32* %5, align 4, !dbg !185
  %57 = sext i32 %56 to i64, !dbg !186
  %58 = getelementptr inbounds %struct._xmlAttr*, %struct._xmlAttr** %55, i64 %57, !dbg !186
  %59 = bitcast %struct._xmlAttr** %58 to i8*, !dbg !187
  call void @klee_make_symbolic(i8* noundef %59, i64 noundef 8, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0)), !dbg !188
  br label %60, !dbg !189

60:                                               ; preds = %53
  %61 = load i32, i32* %5, align 4, !dbg !190
  %62 = add nsw i32 %61, 1, !dbg !190
  store i32 %62, i32* %5, align 4, !dbg !190
  br label %48, !dbg !191, !llvm.loop !192

63:                                               ; preds = %48
  br label %66, !dbg !195

64:                                               ; preds = %28
  %65 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %2, i32 0, i32 0, !dbg !196
  store %struct._xmlAttr** null, %struct._xmlAttr*** %65, align 8, !dbg !198
  br label %66

66:                                               ; preds = %64, %63
  %67 = load i8*, i8** %4, align 8, !dbg !199
  %68 = call %struct._xmlRelaxNGValidState* @xmlRelaxNGCopyValidState(i8* noundef %67, %struct._xmlRelaxNGValidState* noundef %2), !dbg !200
  store %struct._xmlRelaxNGValidState* %68, %struct._xmlRelaxNGValidState** %3, align 8, !dbg !201
  %69 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %2, i32 0, i32 0, !dbg !202
  %70 = load %struct._xmlAttr**, %struct._xmlAttr*** %69, align 8, !dbg !202
  %71 = icmp ne %struct._xmlAttr** %70, null, !dbg !204
  br i1 %71, label %72, label %76, !dbg !205

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %2, i32 0, i32 0, !dbg !206
  %74 = load %struct._xmlAttr**, %struct._xmlAttr*** %73, align 8, !dbg !206
  %75 = bitcast %struct._xmlAttr** %74 to i8*, !dbg !208
  call void @free(i8* noundef %75) #5, !dbg !209
  br label %76, !dbg !210

76:                                               ; preds = %72, %66
  %77 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %3, align 8, !dbg !211
  %78 = icmp ne %struct._xmlRelaxNGValidState* %77, null, !dbg !213
  br i1 %78, label %79, label %92, !dbg !214

79:                                               ; preds = %76
  %80 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %3, align 8, !dbg !215
  %81 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %80, i32 0, i32 0, !dbg !218
  %82 = load %struct._xmlAttr**, %struct._xmlAttr*** %81, align 8, !dbg !218
  %83 = icmp ne %struct._xmlAttr** %82, null, !dbg !219
  br i1 %83, label %84, label %89, !dbg !220

84:                                               ; preds = %79
  %85 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %3, align 8, !dbg !221
  %86 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %85, i32 0, i32 0, !dbg !223
  %87 = load %struct._xmlAttr**, %struct._xmlAttr*** %86, align 8, !dbg !223
  %88 = bitcast %struct._xmlAttr** %87 to i8*, !dbg !221
  call void @free(i8* noundef %88) #5, !dbg !224
  br label %89, !dbg !225

89:                                               ; preds = %84, %79
  %90 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %3, align 8, !dbg !226
  %91 = bitcast %struct._xmlRelaxNGValidState* %90 to i8*, !dbg !226
  call void @free(i8* noundef %91) #5, !dbg !227
  br label %92, !dbg !228

92:                                               ; preds = %89, %76
  ret i32 0, !dbg !229
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/310_relaxng.c_1333_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "007051f0a3288557d046f6cf4c3c0e89")
!2 = !{!3, !4, !9}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGValidState", file: !1, line: 10, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRelaxNGValidState", file: !1, line: 15, size: 128, elements: !7)
!7 = !{!8, !14, !16}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !6, file: !1, line: 16, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttrPtr", file: !1, line: 12, baseType: !11)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttr", file: !1, line: 11, baseType: !13)
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !1, line: 11, flags: DIFlagFwdDecl)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "nbAttrs", scope: !6, file: !1, line: 17, baseType: !15, size: 32, offset: 64)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "maxAttrs", scope: !6, file: !1, line: 18, baseType: !15, size: 32, offset: 96)
!17 = !{i32 7, !"Dwarf Version", i32 5}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 4}
!20 = !{i32 7, !"PIC Level", i32 2}
!21 = !{i32 7, !"PIE Level", i32 2}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"Ubuntu clang version 14.0.6"}
!25 = distinct !DISubprogram(name: "xmlRngVErrMemory", scope: !1, file: !1, line: 22, type: !26, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!26 = !DISubroutineType(types: !27)
!27 = !{null, !28, !29}
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGValidCtxt", file: !1, line: 13, baseType: !3)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!32 = !{}
!33 = !DILocalVariable(name: "ctxt", arg: 1, scope: !25, file: !1, line: 22, type: !28)
!34 = !DILocation(line: 22, column: 43, scope: !25)
!35 = !DILocalVariable(name: "msg", arg: 2, scope: !25, file: !1, line: 22, type: !29)
!36 = !DILocation(line: 22, column: 61, scope: !25)
!37 = !DILocation(line: 23, column: 11, scope: !25)
!38 = !DILocation(line: 24, column: 11, scope: !25)
!39 = !DILocation(line: 25, column: 1, scope: !25)
!40 = distinct !DISubprogram(name: "xmlRelaxNGCopyValidState", scope: !1, file: !1, line: 31, type: !41, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!41 = !DISubroutineType(types: !42)
!42 = !{!4, !28, !4}
!43 = !DILocalVariable(name: "ctxt", arg: 1, scope: !40, file: !1, line: 31, type: !28)
!44 = !DILocation(line: 31, column: 68, scope: !40)
!45 = !DILocalVariable(name: "state", arg: 2, scope: !40, file: !1, line: 31, type: !4)
!46 = !DILocation(line: 31, column: 96, scope: !40)
!47 = !DILocalVariable(name: "ret", scope: !40, file: !1, line: 32, type: !4)
!48 = !DILocation(line: 32, column: 27, scope: !40)
!49 = !DILocation(line: 34, column: 9, scope: !50)
!50 = distinct !DILexicalBlock(scope: !40, file: !1, line: 34, column: 9)
!51 = !DILocation(line: 34, column: 15, scope: !50)
!52 = !DILocation(line: 34, column: 9, scope: !40)
!53 = !DILocation(line: 35, column: 9, scope: !50)
!54 = !DILocation(line: 37, column: 34, scope: !40)
!55 = !DILocation(line: 37, column: 11, scope: !40)
!56 = !DILocation(line: 37, column: 9, scope: !40)
!57 = !DILocation(line: 38, column: 9, scope: !58)
!58 = distinct !DILexicalBlock(scope: !40, file: !1, line: 38, column: 9)
!59 = !DILocation(line: 38, column: 13, scope: !58)
!60 = !DILocation(line: 38, column: 9, scope: !40)
!61 = !DILocation(line: 39, column: 26, scope: !62)
!62 = distinct !DILexicalBlock(scope: !58, file: !1, line: 38, column: 22)
!63 = !DILocation(line: 39, column: 9, scope: !62)
!64 = !DILocation(line: 40, column: 9, scope: !62)
!65 = !DILocation(line: 43, column: 20, scope: !40)
!66 = !DILocation(line: 43, column: 27, scope: !40)
!67 = !DILocation(line: 43, column: 5, scope: !40)
!68 = !DILocation(line: 43, column: 10, scope: !40)
!69 = !DILocation(line: 43, column: 18, scope: !40)
!70 = !DILocation(line: 44, column: 21, scope: !40)
!71 = !DILocation(line: 44, column: 28, scope: !40)
!72 = !DILocation(line: 44, column: 5, scope: !40)
!73 = !DILocation(line: 44, column: 10, scope: !40)
!74 = !DILocation(line: 44, column: 19, scope: !40)
!75 = !DILocation(line: 45, column: 5, scope: !40)
!76 = !DILocation(line: 45, column: 10, scope: !40)
!77 = !DILocation(line: 45, column: 16, scope: !40)
!78 = !DILocation(line: 47, column: 9, scope: !79)
!79 = distinct !DILexicalBlock(scope: !40, file: !1, line: 47, column: 9)
!80 = !DILocation(line: 47, column: 16, scope: !79)
!81 = !DILocation(line: 47, column: 24, scope: !79)
!82 = !DILocation(line: 47, column: 9, scope: !40)
!83 = !DILocalVariable(name: "tmp", scope: !84, file: !1, line: 48, type: !9)
!84 = distinct !DILexicalBlock(scope: !79, file: !1, line: 47, column: 29)
!85 = !DILocation(line: 48, column: 21, scope: !84)
!86 = !DILocation(line: 50, column: 13, scope: !87)
!87 = distinct !DILexicalBlock(scope: !84, file: !1, line: 50, column: 13)
!88 = !DILocation(line: 50, column: 18, scope: !87)
!89 = !DILocation(line: 50, column: 29, scope: !87)
!90 = !DILocation(line: 50, column: 36, scope: !87)
!91 = !DILocation(line: 50, column: 27, scope: !87)
!92 = !DILocation(line: 50, column: 13, scope: !84)
!93 = !DILocation(line: 51, column: 39, scope: !94)
!94 = distinct !DILexicalBlock(scope: !87, file: !1, line: 50, column: 45)
!95 = !DILocation(line: 51, column: 46, scope: !94)
!96 = !DILocation(line: 51, column: 54, scope: !94)
!97 = !DILocation(line: 51, column: 32, scope: !94)
!98 = !DILocation(line: 51, column: 19, scope: !94)
!99 = !DILocation(line: 51, column: 17, scope: !94)
!100 = !DILocation(line: 52, column: 17, scope: !101)
!101 = distinct !DILexicalBlock(scope: !94, file: !1, line: 52, column: 17)
!102 = !DILocation(line: 52, column: 21, scope: !101)
!103 = !DILocation(line: 52, column: 17, scope: !94)
!104 = !DILocation(line: 53, column: 34, scope: !105)
!105 = distinct !DILexicalBlock(scope: !101, file: !1, line: 52, column: 30)
!106 = !DILocation(line: 53, column: 17, scope: !105)
!107 = !DILocation(line: 54, column: 17, scope: !105)
!108 = !DILocation(line: 54, column: 22, scope: !105)
!109 = !DILocation(line: 54, column: 30, scope: !105)
!110 = !DILocation(line: 55, column: 25, scope: !105)
!111 = !DILocation(line: 55, column: 17, scope: !105)
!112 = !DILocation(line: 57, column: 29, scope: !94)
!113 = !DILocation(line: 57, column: 36, scope: !94)
!114 = !DILocation(line: 57, column: 13, scope: !94)
!115 = !DILocation(line: 57, column: 18, scope: !94)
!116 = !DILocation(line: 57, column: 27, scope: !94)
!117 = !DILocation(line: 58, column: 26, scope: !94)
!118 = !DILocation(line: 58, column: 13, scope: !94)
!119 = !DILocation(line: 58, column: 18, scope: !94)
!120 = !DILocation(line: 58, column: 24, scope: !94)
!121 = !DILocation(line: 59, column: 9, scope: !94)
!122 = !DILocation(line: 65, column: 9, scope: !84)
!123 = !DILocation(line: 68, column: 9, scope: !84)
!124 = !DILocation(line: 72, column: 5, scope: !84)
!125 = !DILocation(line: 73, column: 13, scope: !40)
!126 = !DILocation(line: 73, column: 5, scope: !40)
!127 = !DILocation(line: 74, column: 1, scope: !40)
!128 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 76, type: !129, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!129 = !DISubroutineType(types: !130)
!130 = !{!15}
!131 = !DILocalVariable(name: "state", scope: !128, file: !1, line: 77, type: !5)
!132 = !DILocation(line: 77, column: 26, scope: !128)
!133 = !DILocalVariable(name: "ret", scope: !128, file: !1, line: 78, type: !4)
!134 = !DILocation(line: 78, column: 27, scope: !128)
!135 = !DILocalVariable(name: "ctxt", scope: !128, file: !1, line: 79, type: !28)
!136 = !DILocation(line: 79, column: 25, scope: !128)
!137 = !DILocation(line: 82, column: 31, scope: !128)
!138 = !DILocation(line: 82, column: 24, scope: !128)
!139 = !DILocation(line: 82, column: 5, scope: !128)
!140 = !DILocation(line: 83, column: 31, scope: !128)
!141 = !DILocation(line: 83, column: 24, scope: !128)
!142 = !DILocation(line: 83, column: 5, scope: !128)
!143 = !DILocation(line: 86, column: 23, scope: !128)
!144 = !DILocation(line: 86, column: 31, scope: !128)
!145 = !DILocation(line: 86, column: 36, scope: !128)
!146 = !DILocation(line: 86, column: 45, scope: !128)
!147 = !DILocation(line: 86, column: 53, scope: !128)
!148 = !DILocation(line: 0, scope: !128)
!149 = !DILocation(line: 86, column: 17, scope: !128)
!150 = !DILocation(line: 86, column: 5, scope: !128)
!151 = !DILocation(line: 87, column: 23, scope: !128)
!152 = !DILocation(line: 87, column: 32, scope: !128)
!153 = !DILocation(line: 87, column: 37, scope: !128)
!154 = !DILocation(line: 87, column: 46, scope: !128)
!155 = !DILocation(line: 87, column: 55, scope: !128)
!156 = !DILocation(line: 87, column: 17, scope: !128)
!157 = !DILocation(line: 87, column: 5, scope: !128)
!158 = !DILocation(line: 90, column: 15, scope: !159)
!159 = distinct !DILexicalBlock(scope: !128, file: !1, line: 90, column: 9)
!160 = !DILocation(line: 90, column: 23, scope: !159)
!161 = !DILocation(line: 90, column: 9, scope: !128)
!162 = !DILocation(line: 91, column: 49, scope: !163)
!163 = distinct !DILexicalBlock(scope: !159, file: !1, line: 90, column: 28)
!164 = !DILocation(line: 91, column: 43, scope: !163)
!165 = !DILocation(line: 91, column: 57, scope: !163)
!166 = !DILocation(line: 91, column: 36, scope: !163)
!167 = !DILocation(line: 91, column: 23, scope: !163)
!168 = !DILocation(line: 91, column: 15, scope: !163)
!169 = !DILocation(line: 91, column: 21, scope: !163)
!170 = !DILocation(line: 92, column: 27, scope: !163)
!171 = !DILocation(line: 92, column: 33, scope: !163)
!172 = !DILocation(line: 92, column: 21, scope: !163)
!173 = !DILocation(line: 92, column: 9, scope: !163)
!174 = !DILocalVariable(name: "i", scope: !175, file: !1, line: 95, type: !15)
!175 = distinct !DILexicalBlock(scope: !163, file: !1, line: 95, column: 9)
!176 = !DILocation(line: 95, column: 18, scope: !175)
!177 = !DILocation(line: 95, column: 14, scope: !175)
!178 = !DILocation(line: 95, column: 25, scope: !179)
!179 = distinct !DILexicalBlock(scope: !175, file: !1, line: 95, column: 9)
!180 = !DILocation(line: 95, column: 35, scope: !179)
!181 = !DILocation(line: 95, column: 27, scope: !179)
!182 = !DILocation(line: 95, column: 9, scope: !175)
!183 = !DILocation(line: 96, column: 39, scope: !184)
!184 = distinct !DILexicalBlock(scope: !179, file: !1, line: 95, column: 49)
!185 = !DILocation(line: 96, column: 45, scope: !184)
!186 = !DILocation(line: 96, column: 33, scope: !184)
!187 = !DILocation(line: 96, column: 32, scope: !184)
!188 = !DILocation(line: 96, column: 13, scope: !184)
!189 = !DILocation(line: 97, column: 9, scope: !184)
!190 = !DILocation(line: 95, column: 45, scope: !179)
!191 = !DILocation(line: 95, column: 9, scope: !179)
!192 = distinct !{!192, !182, !193, !194}
!193 = !DILocation(line: 97, column: 9, scope: !175)
!194 = !{!"llvm.loop.mustprogress"}
!195 = !DILocation(line: 98, column: 5, scope: !163)
!196 = !DILocation(line: 99, column: 15, scope: !197)
!197 = distinct !DILexicalBlock(scope: !159, file: !1, line: 98, column: 12)
!198 = !DILocation(line: 99, column: 21, scope: !197)
!199 = !DILocation(line: 103, column: 36, scope: !128)
!200 = !DILocation(line: 103, column: 11, scope: !128)
!201 = !DILocation(line: 103, column: 9, scope: !128)
!202 = !DILocation(line: 106, column: 15, scope: !203)
!203 = distinct !DILexicalBlock(scope: !128, file: !1, line: 106, column: 9)
!204 = !DILocation(line: 106, column: 21, scope: !203)
!205 = !DILocation(line: 106, column: 9, scope: !128)
!206 = !DILocation(line: 107, column: 20, scope: !207)
!207 = distinct !DILexicalBlock(scope: !203, file: !1, line: 106, column: 30)
!208 = !DILocation(line: 107, column: 14, scope: !207)
!209 = !DILocation(line: 107, column: 9, scope: !207)
!210 = !DILocation(line: 108, column: 5, scope: !207)
!211 = !DILocation(line: 109, column: 9, scope: !212)
!212 = distinct !DILexicalBlock(scope: !128, file: !1, line: 109, column: 9)
!213 = !DILocation(line: 109, column: 13, scope: !212)
!214 = !DILocation(line: 109, column: 9, scope: !128)
!215 = !DILocation(line: 110, column: 13, scope: !216)
!216 = distinct !DILexicalBlock(scope: !217, file: !1, line: 110, column: 13)
!217 = distinct !DILexicalBlock(scope: !212, file: !1, line: 109, column: 22)
!218 = !DILocation(line: 110, column: 18, scope: !216)
!219 = !DILocation(line: 110, column: 24, scope: !216)
!220 = !DILocation(line: 110, column: 13, scope: !217)
!221 = !DILocation(line: 111, column: 18, scope: !222)
!222 = distinct !DILexicalBlock(scope: !216, file: !1, line: 110, column: 33)
!223 = !DILocation(line: 111, column: 23, scope: !222)
!224 = !DILocation(line: 111, column: 13, scope: !222)
!225 = !DILocation(line: 112, column: 9, scope: !222)
!226 = !DILocation(line: 113, column: 14, scope: !217)
!227 = !DILocation(line: 113, column: 9, scope: !217)
!228 = !DILocation(line: 114, column: 5, scope: !217)
!229 = !DILocation(line: 116, column: 5, scope: !128)

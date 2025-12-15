; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/144_xmlregexp.c_5928_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/144_xmlregexp.c_5928_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRegAtom = type { i8* }

@.str = private unnamed_addr constant [19 x i8] c"transitions_result\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"(lenp <= lenn + lenp + 1) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_55980_vul/144_xmlregexp.c_5928_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.target_function = private unnamed_addr constant [74 x i8] c"xmlRegAtom *target_function(xmlChar *, xmlChar *, void *, void *, void *)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"token\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"token2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlRegFreeAtom(%struct._xmlRegAtom* noundef %0) #0 !dbg !24 {
  %2 = alloca %struct._xmlRegAtom*, align 8
  store %struct._xmlRegAtom* %0, %struct._xmlRegAtom** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRegAtom** %2, metadata !28, metadata !DIExpression()), !dbg !29
  %3 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %2, align 8, !dbg !30
  %4 = icmp ne %struct._xmlRegAtom* %3, null, !dbg !30
  br i1 %4, label %5, label %14, !dbg !32

5:                                                ; preds = %1
  %6 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %2, align 8, !dbg !33
  %7 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %6, i32 0, i32 0, !dbg !34
  %8 = load i8*, i8** %7, align 8, !dbg !34
  %9 = icmp ne i8* %8, null, !dbg !33
  br i1 %9, label %10, label %14, !dbg !35

10:                                               ; preds = %5
  %11 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %2, align 8, !dbg !36
  %12 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %11, i32 0, i32 0, !dbg !38
  %13 = load i8*, i8** %12, align 8, !dbg !38
  call void @free(i8* noundef %13) #8, !dbg !39
  br label %14, !dbg !40

14:                                               ; preds = %10, %5, %1
  %15 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %2, align 8, !dbg !41
  %16 = bitcast %struct._xmlRegAtom* %15 to i8*, !dbg !41
  call void @free(i8* noundef %16) #8, !dbg !42
  ret void, !dbg !43
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMallocAtomic(i64 noundef %0) #0 !dbg !44 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !50, metadata !DIExpression()), !dbg !51
  %3 = load i64, i64* %2, align 8, !dbg !52
  %4 = call noalias i8* @malloc(i64 noundef %3) #8, !dbg !53
  ret i8* %4, !dbg !54
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlFAGenerateTransitions(i8* noundef %0, i8* noundef %1, i8* noundef %2, %struct._xmlRegAtom* noundef %3) #0 !dbg !55 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._xmlRegAtom*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !59, metadata !DIExpression()), !dbg !60
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !61, metadata !DIExpression()), !dbg !62
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !63, metadata !DIExpression()), !dbg !64
  store %struct._xmlRegAtom* %3, %struct._xmlRegAtom** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRegAtom** %8, metadata !65, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.declare(metadata i32* %9, metadata !67, metadata !DIExpression()), !dbg !68
  %10 = bitcast i32* %9 to i8*, !dbg !69
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0)), !dbg !70
  %11 = load i32, i32* %9, align 4, !dbg !71
  %12 = icmp eq i32 %11, -1, !dbg !72
  br i1 %12, label %16, label %13, !dbg !73

13:                                               ; preds = %4
  %14 = load i32, i32* %9, align 4, !dbg !74
  %15 = icmp eq i32 %14, 0, !dbg !75
  br label %16, !dbg !73

16:                                               ; preds = %13, %4
  %17 = phi i1 [ true, %4 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32, !dbg !73
  %19 = sext i32 %18 to i64, !dbg !71
  call void @klee_assume(i64 noundef %19), !dbg !76
  %20 = load i32, i32* %9, align 4, !dbg !77
  ret i32 %20, !dbg !78
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlRegAtom* @target_function(i8* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4) #0 !dbg !79 {
  %6 = alloca %struct._xmlRegAtom*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct._xmlRegAtom*, align 8
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !82, metadata !DIExpression()), !dbg !83
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !84, metadata !DIExpression()), !dbg !85
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !86, metadata !DIExpression()), !dbg !87
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !88, metadata !DIExpression()), !dbg !89
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !90, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.declare(metadata i64* %12, metadata !92, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.declare(metadata i64* %13, metadata !94, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.declare(metadata i8** %14, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.declare(metadata %struct._xmlRegAtom** %15, metadata !98, metadata !DIExpression()), !dbg !99
  %16 = call noalias i8* @malloc(i64 noundef 8) #8, !dbg !100
  %17 = bitcast i8* %16 to %struct._xmlRegAtom*, !dbg !101
  store %struct._xmlRegAtom* %17, %struct._xmlRegAtom** %15, align 8, !dbg !102
  %18 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %15, align 8, !dbg !103
  %19 = icmp ne %struct._xmlRegAtom* %18, null, !dbg !103
  br i1 %19, label %21, label %20, !dbg !105

20:                                               ; preds = %5
  store %struct._xmlRegAtom* null, %struct._xmlRegAtom** %6, align 8, !dbg !106
  br label %84, !dbg !106

21:                                               ; preds = %5
  %22 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %15, align 8, !dbg !107
  %23 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %22, i32 0, i32 0, !dbg !108
  store i8* null, i8** %23, align 8, !dbg !109
  %24 = load i8*, i8** %8, align 8, !dbg !110
  %25 = call i64 @strlen(i8* noundef %24) #9, !dbg !111
  store i64 %25, i64* %12, align 8, !dbg !112
  %26 = load i8*, i8** %7, align 8, !dbg !113
  %27 = call i64 @strlen(i8* noundef %26) #9, !dbg !114
  store i64 %27, i64* %13, align 8, !dbg !115
  %28 = load i64, i64* %12, align 8, !dbg !116
  %29 = load i64, i64* %13, align 8, !dbg !117
  %30 = add i64 %28, %29, !dbg !118
  %31 = add i64 %30, 2, !dbg !119
  %32 = call i8* @xmlMallocAtomic(i64 noundef %31), !dbg !120
  store i8* %32, i8** %14, align 8, !dbg !121
  %33 = load i8*, i8** %14, align 8, !dbg !122
  %34 = icmp eq i8* %33, null, !dbg !124
  br i1 %34, label %35, label %37, !dbg !125

35:                                               ; preds = %21
  %36 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %15, align 8, !dbg !126
  call void @xmlRegFreeAtom(%struct._xmlRegAtom* noundef %36), !dbg !128
  store %struct._xmlRegAtom* null, %struct._xmlRegAtom** %6, align 8, !dbg !129
  br label %84, !dbg !129

37:                                               ; preds = %21
  %38 = load i64, i64* %13, align 8, !dbg !130
  %39 = load i64, i64* %12, align 8, !dbg !130
  %40 = load i64, i64* %13, align 8, !dbg !130
  %41 = add i64 %39, %40, !dbg !130
  %42 = add i64 %41, 1, !dbg !130
  %43 = icmp ule i64 %38, %42, !dbg !130
  br i1 %43, label %44, label %46, !dbg !130

44:                                               ; preds = %37
  br i1 true, label %45, label %46, !dbg !130

45:                                               ; preds = %44
  br label %48, !dbg !130

46:                                               ; preds = %44, %37
  %47 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.3, i64 0, i64 0), i32 noundef 67, i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !130
  br label %48, !dbg !130

48:                                               ; preds = %46, %45
  %49 = load i8*, i8** %14, align 8, !dbg !131
  %50 = getelementptr inbounds i8, i8* %49, i64 0, !dbg !131
  %51 = load i8*, i8** %7, align 8, !dbg !132
  %52 = load i64, i64* %13, align 8, !dbg !133
  %53 = call i8* @memcpy(i8* %50, i8* %51, i64 %52), !dbg !134
  %54 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.3, i64 0, i64 0), i32 noundef 71, i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !135
  %55 = load i8*, i8** %14, align 8, !dbg !136
  %56 = load i64, i64* %13, align 8, !dbg !137
  %57 = getelementptr inbounds i8, i8* %55, i64 %56, !dbg !136
  store i8 124, i8* %57, align 1, !dbg !138
  %58 = load i8*, i8** %14, align 8, !dbg !139
  %59 = load i64, i64* %13, align 8, !dbg !140
  %60 = add i64 %59, 1, !dbg !141
  %61 = getelementptr inbounds i8, i8* %58, i64 %60, !dbg !139
  %62 = load i8*, i8** %8, align 8, !dbg !142
  %63 = load i64, i64* %12, align 8, !dbg !143
  %64 = call i8* @memcpy(i8* %61, i8* %62, i64 %63), !dbg !144
  %65 = load i8*, i8** %14, align 8, !dbg !145
  %66 = load i64, i64* %12, align 8, !dbg !146
  %67 = load i64, i64* %13, align 8, !dbg !147
  %68 = add i64 %66, %67, !dbg !148
  %69 = add i64 %68, 1, !dbg !149
  %70 = getelementptr inbounds i8, i8* %65, i64 %69, !dbg !145
  store i8 0, i8* %70, align 1, !dbg !150
  %71 = load i8*, i8** %14, align 8, !dbg !151
  %72 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %15, align 8, !dbg !152
  %73 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %72, i32 0, i32 0, !dbg !153
  store i8* %71, i8** %73, align 8, !dbg !154
  %74 = load i8*, i8** %9, align 8, !dbg !155
  %75 = load i8*, i8** %10, align 8, !dbg !157
  %76 = load i8*, i8** %11, align 8, !dbg !158
  %77 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %15, align 8, !dbg !159
  %78 = call i32 @xmlFAGenerateTransitions(i8* noundef %74, i8* noundef %75, i8* noundef %76, %struct._xmlRegAtom* noundef %77), !dbg !160
  %79 = icmp slt i32 %78, 0, !dbg !161
  br i1 %79, label %80, label %82, !dbg !162

80:                                               ; preds = %48
  %81 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %15, align 8, !dbg !163
  call void @xmlRegFreeAtom(%struct._xmlRegAtom* noundef %81), !dbg !165
  store %struct._xmlRegAtom* null, %struct._xmlRegAtom** %6, align 8, !dbg !166
  br label %84, !dbg !166

82:                                               ; preds = %48
  %83 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %15, align 8, !dbg !167
  store %struct._xmlRegAtom* %83, %struct._xmlRegAtom** %6, align 8, !dbg !168
  br label %84, !dbg !168

84:                                               ; preds = %82, %80, %35, %20
  %85 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %6, align 8, !dbg !169
  ret %struct._xmlRegAtom* %85, !dbg !169
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !170 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca [256 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._xmlRegAtom*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !173, metadata !DIExpression()), !dbg !177
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !178, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.declare(metadata i8** %4, metadata !180, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.declare(metadata i8** %5, metadata !182, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.declare(metadata i8** %6, metadata !184, metadata !DIExpression()), !dbg !185
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !186
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 256, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)), !dbg !187
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !188
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 256, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)), !dbg !189
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !190
  store i8 0, i8* %10, align 1, !dbg !191
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 255, !dbg !192
  store i8 0, i8* %11, align 1, !dbg !193
  %12 = call noalias i8* @malloc(i64 noundef 1) #8, !dbg !194
  store i8* %12, i8** %4, align 8, !dbg !195
  %13 = call noalias i8* @malloc(i64 noundef 1) #8, !dbg !196
  store i8* %13, i8** %5, align 8, !dbg !197
  %14 = call noalias i8* @malloc(i64 noundef 1) #8, !dbg !198
  store i8* %14, i8** %6, align 8, !dbg !199
  call void @llvm.dbg.declare(metadata %struct._xmlRegAtom** %7, metadata !200, metadata !DIExpression()), !dbg !201
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !202
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !203
  %17 = load i8*, i8** %4, align 8, !dbg !204
  %18 = load i8*, i8** %5, align 8, !dbg !205
  %19 = load i8*, i8** %6, align 8, !dbg !206
  %20 = call %struct._xmlRegAtom* @target_function(i8* noundef %15, i8* noundef %16, i8* noundef %17, i8* noundef %18, i8* noundef %19), !dbg !207
  store %struct._xmlRegAtom* %20, %struct._xmlRegAtom** %7, align 8, !dbg !201
  %21 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %7, align 8, !dbg !208
  %22 = icmp ne %struct._xmlRegAtom* %21, null, !dbg !208
  br i1 %22, label %23, label %25, !dbg !210

23:                                               ; preds = %0
  %24 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %7, align 8, !dbg !211
  call void @xmlRegFreeAtom(%struct._xmlRegAtom* noundef %24), !dbg !213
  br label %25, !dbg !214

25:                                               ; preds = %23, %0
  %26 = load i8*, i8** %4, align 8, !dbg !215
  call void @free(i8* noundef %26) #8, !dbg !216
  %27 = load i8*, i8** %5, align 8, !dbg !217
  call void @free(i8* noundef %27) #8, !dbg !218
  %28 = load i8*, i8** %6, align 8, !dbg !219
  call void @free(i8* noundef %28) #8, !dbg !220
  ret i32 0, !dbg !221
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !222 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !228, metadata !DIExpression()), !dbg !229
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !230, metadata !DIExpression()), !dbg !231
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !232, metadata !DIExpression()), !dbg !233
  call void @llvm.dbg.declare(metadata i8** %7, metadata !234, metadata !DIExpression()), !dbg !235
  %9 = load i8*, i8** %4, align 8, !dbg !236
  store i8* %9, i8** %7, align 8, !dbg !235
  call void @llvm.dbg.declare(metadata i8** %8, metadata !237, metadata !DIExpression()), !dbg !240
  %10 = load i8*, i8** %5, align 8, !dbg !241
  store i8* %10, i8** %8, align 8, !dbg !240
  br label %11, !dbg !242

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !243
  %13 = add i64 %12, -1, !dbg !243
  store i64 %13, i64* %6, align 8, !dbg !243
  %14 = icmp ugt i64 %12, 0, !dbg !244
  br i1 %14, label %15, label %21, !dbg !242

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !245
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !245
  store i8* %17, i8** %8, align 8, !dbg !245
  %18 = load i8, i8* %16, align 1, !dbg !246
  %19 = load i8*, i8** %7, align 8, !dbg !247
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !247
  store i8* %20, i8** %7, align 8, !dbg !247
  store i8 %18, i8* %19, align 1, !dbg !248
  br label %11, !dbg !242, !llvm.loop !249

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !251
  ret i8* %22, !dbg !252
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23, !23}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/144_xmlregexp.c_5928_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "46dd8acbc0f1040f8544bce1efde805f")
!2 = !{!3, !11, !8, !13}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegAtom", file: !1, line: 10, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegAtom", file: !1, line: 13, size: 64, elements: !6)
!6 = !{!7}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "valuep", scope: !5, file: !1, line: 14, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !1, line: 11, baseType: !10)
!10 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!14 = distinct !DICompileUnit(language: DW_LANG_C99, file: !15, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!15 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!16 = !{i32 7, !"Dwarf Version", i32 5}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{i32 7, !"PIC Level", i32 2}
!20 = !{i32 7, !"PIE Level", i32 2}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"Ubuntu clang version 14.0.6"}
!24 = distinct !DISubprogram(name: "xmlRegFreeAtom", scope: !1, file: !1, line: 23, type: !25, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !27)
!25 = !DISubroutineType(types: !26)
!26 = !{null, !3}
!27 = !{}
!28 = !DILocalVariable(name: "atom", arg: 1, scope: !24, file: !1, line: 23, type: !3)
!29 = !DILocation(line: 23, column: 33, scope: !24)
!30 = !DILocation(line: 25, column: 9, scope: !31)
!31 = distinct !DILexicalBlock(scope: !24, file: !1, line: 25, column: 9)
!32 = !DILocation(line: 25, column: 14, scope: !31)
!33 = !DILocation(line: 25, column: 17, scope: !31)
!34 = !DILocation(line: 25, column: 23, scope: !31)
!35 = !DILocation(line: 25, column: 9, scope: !24)
!36 = !DILocation(line: 26, column: 14, scope: !37)
!37 = distinct !DILexicalBlock(scope: !31, file: !1, line: 25, column: 31)
!38 = !DILocation(line: 26, column: 20, scope: !37)
!39 = !DILocation(line: 26, column: 9, scope: !37)
!40 = !DILocation(line: 27, column: 5, scope: !37)
!41 = !DILocation(line: 28, column: 10, scope: !24)
!42 = !DILocation(line: 28, column: 5, scope: !24)
!43 = !DILocation(line: 29, column: 1, scope: !24)
!44 = distinct !DISubprogram(name: "xmlMallocAtomic", scope: !1, file: !1, line: 31, type: !45, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !27)
!45 = !DISubroutineType(types: !46)
!46 = !{!13, !47}
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !48, line: 46, baseType: !49)
!48 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!49 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!50 = !DILocalVariable(name: "size", arg: 1, scope: !44, file: !1, line: 31, type: !47)
!51 = !DILocation(line: 31, column: 30, scope: !44)
!52 = !DILocation(line: 32, column: 19, scope: !44)
!53 = !DILocation(line: 32, column: 12, scope: !44)
!54 = !DILocation(line: 32, column: 5, scope: !44)
!55 = distinct !DISubprogram(name: "xmlFAGenerateTransitions", scope: !1, file: !1, line: 35, type: !56, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !27)
!56 = !DISubroutineType(types: !57)
!57 = !{!58, !13, !13, !13, !3}
!58 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!59 = !DILocalVariable(name: "am", arg: 1, scope: !55, file: !1, line: 35, type: !13)
!60 = !DILocation(line: 35, column: 36, scope: !55)
!61 = !DILocalVariable(name: "from", arg: 2, scope: !55, file: !1, line: 35, type: !13)
!62 = !DILocation(line: 35, column: 46, scope: !55)
!63 = !DILocalVariable(name: "to", arg: 3, scope: !55, file: !1, line: 35, type: !13)
!64 = !DILocation(line: 35, column: 58, scope: !55)
!65 = !DILocalVariable(name: "atom", arg: 4, scope: !55, file: !1, line: 35, type: !3)
!66 = !DILocation(line: 35, column: 74, scope: !55)
!67 = !DILocalVariable(name: "result", scope: !55, file: !1, line: 37, type: !58)
!68 = !DILocation(line: 37, column: 9, scope: !55)
!69 = !DILocation(line: 38, column: 24, scope: !55)
!70 = !DILocation(line: 38, column: 5, scope: !55)
!71 = !DILocation(line: 39, column: 17, scope: !55)
!72 = !DILocation(line: 39, column: 24, scope: !55)
!73 = !DILocation(line: 39, column: 30, scope: !55)
!74 = !DILocation(line: 39, column: 33, scope: !55)
!75 = !DILocation(line: 39, column: 40, scope: !55)
!76 = !DILocation(line: 39, column: 5, scope: !55)
!77 = !DILocation(line: 40, column: 12, scope: !55)
!78 = !DILocation(line: 40, column: 5, scope: !55)
!79 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 44, type: !80, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !27)
!80 = !DISubroutineType(types: !81)
!81 = !{!3, !8, !8, !13, !13, !13}
!82 = !DILocalVariable(name: "token", arg: 1, scope: !79, file: !1, line: 44, type: !8)
!83 = !DILocation(line: 44, column: 38, scope: !79)
!84 = !DILocalVariable(name: "token2", arg: 2, scope: !79, file: !1, line: 44, type: !8)
!85 = !DILocation(line: 44, column: 54, scope: !79)
!86 = !DILocalVariable(name: "am", arg: 3, scope: !79, file: !1, line: 44, type: !13)
!87 = !DILocation(line: 44, column: 68, scope: !79)
!88 = !DILocalVariable(name: "from", arg: 4, scope: !79, file: !1, line: 44, type: !13)
!89 = !DILocation(line: 44, column: 78, scope: !79)
!90 = !DILocalVariable(name: "to", arg: 5, scope: !79, file: !1, line: 44, type: !13)
!91 = !DILocation(line: 44, column: 90, scope: !79)
!92 = !DILocalVariable(name: "lenn", scope: !79, file: !1, line: 45, type: !47)
!93 = !DILocation(line: 45, column: 12, scope: !79)
!94 = !DILocalVariable(name: "lenp", scope: !79, file: !1, line: 45, type: !47)
!95 = !DILocation(line: 45, column: 18, scope: !79)
!96 = !DILocalVariable(name: "str", scope: !79, file: !1, line: 46, type: !8)
!97 = !DILocation(line: 46, column: 14, scope: !79)
!98 = !DILocalVariable(name: "atom", scope: !79, file: !1, line: 47, type: !3)
!99 = !DILocation(line: 47, column: 17, scope: !79)
!100 = !DILocation(line: 50, column: 25, scope: !79)
!101 = !DILocation(line: 50, column: 12, scope: !79)
!102 = !DILocation(line: 50, column: 10, scope: !79)
!103 = !DILocation(line: 51, column: 10, scope: !104)
!104 = distinct !DILexicalBlock(scope: !79, file: !1, line: 51, column: 9)
!105 = !DILocation(line: 51, column: 9, scope: !79)
!106 = !DILocation(line: 51, column: 16, scope: !104)
!107 = !DILocation(line: 52, column: 5, scope: !79)
!108 = !DILocation(line: 52, column: 11, scope: !79)
!109 = !DILocation(line: 52, column: 18, scope: !79)
!110 = !DILocation(line: 55, column: 26, scope: !79)
!111 = !DILocation(line: 55, column: 12, scope: !79)
!112 = !DILocation(line: 55, column: 10, scope: !79)
!113 = !DILocation(line: 56, column: 26, scope: !79)
!114 = !DILocation(line: 56, column: 12, scope: !79)
!115 = !DILocation(line: 56, column: 10, scope: !79)
!116 = !DILocation(line: 59, column: 37, scope: !79)
!117 = !DILocation(line: 59, column: 44, scope: !79)
!118 = !DILocation(line: 59, column: 42, scope: !79)
!119 = !DILocation(line: 59, column: 49, scope: !79)
!120 = !DILocation(line: 59, column: 21, scope: !79)
!121 = !DILocation(line: 59, column: 9, scope: !79)
!122 = !DILocation(line: 60, column: 9, scope: !123)
!123 = distinct !DILexicalBlock(scope: !79, file: !1, line: 60, column: 9)
!124 = !DILocation(line: 60, column: 13, scope: !123)
!125 = !DILocation(line: 60, column: 9, scope: !79)
!126 = !DILocation(line: 61, column: 24, scope: !127)
!127 = distinct !DILexicalBlock(scope: !123, file: !1, line: 60, column: 22)
!128 = !DILocation(line: 61, column: 9, scope: !127)
!129 = !DILocation(line: 62, column: 9, scope: !127)
!130 = !DILocation(line: 67, column: 5, scope: !79)
!131 = !DILocation(line: 68, column: 13, scope: !79)
!132 = !DILocation(line: 68, column: 21, scope: !79)
!133 = !DILocation(line: 68, column: 28, scope: !79)
!134 = !DILocation(line: 68, column: 5, scope: !79)
!135 = !DILocation(line: 71, column: 5, scope: !79)
!136 = !DILocation(line: 74, column: 5, scope: !79)
!137 = !DILocation(line: 74, column: 9, scope: !79)
!138 = !DILocation(line: 74, column: 15, scope: !79)
!139 = !DILocation(line: 75, column: 13, scope: !79)
!140 = !DILocation(line: 75, column: 17, scope: !79)
!141 = !DILocation(line: 75, column: 22, scope: !79)
!142 = !DILocation(line: 75, column: 28, scope: !79)
!143 = !DILocation(line: 75, column: 36, scope: !79)
!144 = !DILocation(line: 75, column: 5, scope: !79)
!145 = !DILocation(line: 76, column: 5, scope: !79)
!146 = !DILocation(line: 76, column: 9, scope: !79)
!147 = !DILocation(line: 76, column: 16, scope: !79)
!148 = !DILocation(line: 76, column: 14, scope: !79)
!149 = !DILocation(line: 76, column: 21, scope: !79)
!150 = !DILocation(line: 76, column: 26, scope: !79)
!151 = !DILocation(line: 78, column: 20, scope: !79)
!152 = !DILocation(line: 78, column: 5, scope: !79)
!153 = !DILocation(line: 78, column: 11, scope: !79)
!154 = !DILocation(line: 78, column: 18, scope: !79)
!155 = !DILocation(line: 81, column: 34, scope: !156)
!156 = distinct !DILexicalBlock(scope: !79, file: !1, line: 81, column: 9)
!157 = !DILocation(line: 81, column: 38, scope: !156)
!158 = !DILocation(line: 81, column: 44, scope: !156)
!159 = !DILocation(line: 81, column: 48, scope: !156)
!160 = !DILocation(line: 81, column: 9, scope: !156)
!161 = !DILocation(line: 81, column: 54, scope: !156)
!162 = !DILocation(line: 81, column: 9, scope: !79)
!163 = !DILocation(line: 82, column: 24, scope: !164)
!164 = distinct !DILexicalBlock(scope: !156, file: !1, line: 81, column: 59)
!165 = !DILocation(line: 82, column: 9, scope: !164)
!166 = !DILocation(line: 83, column: 9, scope: !164)
!167 = !DILocation(line: 86, column: 12, scope: !79)
!168 = !DILocation(line: 86, column: 5, scope: !79)
!169 = !DILocation(line: 87, column: 1, scope: !79)
!170 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 89, type: !171, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !27)
!171 = !DISubroutineType(types: !172)
!172 = !{!58}
!173 = !DILocalVariable(name: "token", scope: !170, file: !1, line: 91, type: !174)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 2048, elements: !175)
!175 = !{!176}
!176 = !DISubrange(count: 256)
!177 = !DILocation(line: 91, column: 13, scope: !170)
!178 = !DILocalVariable(name: "token2", scope: !170, file: !1, line: 92, type: !174)
!179 = !DILocation(line: 92, column: 13, scope: !170)
!180 = !DILocalVariable(name: "am", scope: !170, file: !1, line: 93, type: !13)
!181 = !DILocation(line: 93, column: 11, scope: !170)
!182 = !DILocalVariable(name: "from", scope: !170, file: !1, line: 94, type: !13)
!183 = !DILocation(line: 94, column: 11, scope: !170)
!184 = !DILocalVariable(name: "to", scope: !170, file: !1, line: 95, type: !13)
!185 = !DILocation(line: 95, column: 11, scope: !170)
!186 = !DILocation(line: 98, column: 24, scope: !170)
!187 = !DILocation(line: 98, column: 5, scope: !170)
!188 = !DILocation(line: 99, column: 24, scope: !170)
!189 = !DILocation(line: 99, column: 5, scope: !170)
!190 = !DILocation(line: 102, column: 5, scope: !170)
!191 = !DILocation(line: 102, column: 16, scope: !170)
!192 = !DILocation(line: 103, column: 5, scope: !170)
!193 = !DILocation(line: 103, column: 17, scope: !170)
!194 = !DILocation(line: 106, column: 10, scope: !170)
!195 = !DILocation(line: 106, column: 8, scope: !170)
!196 = !DILocation(line: 107, column: 12, scope: !170)
!197 = !DILocation(line: 107, column: 10, scope: !170)
!198 = !DILocation(line: 108, column: 10, scope: !170)
!199 = !DILocation(line: 108, column: 8, scope: !170)
!200 = !DILocalVariable(name: "result", scope: !170, file: !1, line: 111, type: !3)
!201 = !DILocation(line: 111, column: 17, scope: !170)
!202 = !DILocation(line: 111, column: 42, scope: !170)
!203 = !DILocation(line: 111, column: 49, scope: !170)
!204 = !DILocation(line: 111, column: 57, scope: !170)
!205 = !DILocation(line: 111, column: 61, scope: !170)
!206 = !DILocation(line: 111, column: 67, scope: !170)
!207 = !DILocation(line: 111, column: 26, scope: !170)
!208 = !DILocation(line: 114, column: 9, scope: !209)
!209 = distinct !DILexicalBlock(scope: !170, file: !1, line: 114, column: 9)
!210 = !DILocation(line: 114, column: 9, scope: !170)
!211 = !DILocation(line: 115, column: 24, scope: !212)
!212 = distinct !DILexicalBlock(scope: !209, file: !1, line: 114, column: 17)
!213 = !DILocation(line: 115, column: 9, scope: !212)
!214 = !DILocation(line: 116, column: 5, scope: !212)
!215 = !DILocation(line: 117, column: 10, scope: !170)
!216 = !DILocation(line: 117, column: 5, scope: !170)
!217 = !DILocation(line: 118, column: 10, scope: !170)
!218 = !DILocation(line: 118, column: 5, scope: !170)
!219 = !DILocation(line: 119, column: 10, scope: !170)
!220 = !DILocation(line: 119, column: 5, scope: !170)
!221 = !DILocation(line: 121, column: 5, scope: !170)
!222 = distinct !DISubprogram(name: "memcpy", scope: !223, file: !223, line: 12, type: !224, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !27)
!223 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!224 = !DISubroutineType(types: !225)
!225 = !{!13, !13, !226, !47}
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!228 = !DILocalVariable(name: "destaddr", arg: 1, scope: !222, file: !223, line: 12, type: !13)
!229 = !DILocation(line: 12, column: 20, scope: !222)
!230 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !222, file: !223, line: 12, type: !226)
!231 = !DILocation(line: 12, column: 42, scope: !222)
!232 = !DILocalVariable(name: "len", arg: 3, scope: !222, file: !223, line: 12, type: !47)
!233 = !DILocation(line: 12, column: 58, scope: !222)
!234 = !DILocalVariable(name: "dest", scope: !222, file: !223, line: 13, type: !11)
!235 = !DILocation(line: 13, column: 9, scope: !222)
!236 = !DILocation(line: 13, column: 16, scope: !222)
!237 = !DILocalVariable(name: "src", scope: !222, file: !223, line: 14, type: !238)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!240 = !DILocation(line: 14, column: 15, scope: !222)
!241 = !DILocation(line: 14, column: 21, scope: !222)
!242 = !DILocation(line: 16, column: 3, scope: !222)
!243 = !DILocation(line: 16, column: 13, scope: !222)
!244 = !DILocation(line: 16, column: 16, scope: !222)
!245 = !DILocation(line: 17, column: 19, scope: !222)
!246 = !DILocation(line: 17, column: 15, scope: !222)
!247 = !DILocation(line: 17, column: 10, scope: !222)
!248 = !DILocation(line: 17, column: 13, scope: !222)
!249 = distinct !{!249, !242, !245, !250}
!250 = !{!"llvm.loop.mustprogress"}
!251 = !DILocation(line: 18, column: 10, scope: !222)
!252 = !DILocation(line: 18, column: 3, scope: !222)

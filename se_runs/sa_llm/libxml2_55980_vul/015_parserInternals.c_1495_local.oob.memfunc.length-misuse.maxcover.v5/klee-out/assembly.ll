; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/015_parserInternals.c_1495_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/015_parserInternals.c_1495_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSAXHandler = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8* }
%struct._xmlParserCtxt = type { %struct._xmlSAXHandler*, i8*, i32, i8**, i8*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"sax\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"userData\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [114 x i8] c"se_runs/sa_llm/libxml2_55980_vul/015_parserInternals.c_1495_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.target_function = private unnamed_addr constant [63 x i8] c"void target_function(xmlParserCtxt *, xmlSAXHandler *, void *)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSAXVersion(%struct._xmlSAXHandler* noundef %0, i32 noundef %1) #0 !dbg !72 {
  %3 = alloca %struct._xmlSAXHandler*, align 8
  %4 = alloca i32, align 4
  store %struct._xmlSAXHandler* %0, %struct._xmlSAXHandler** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSAXHandler** %3, metadata !76, metadata !DIExpression()), !dbg !77
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !78, metadata !DIExpression()), !dbg !79
  %5 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !80
  %6 = icmp ne %struct._xmlSAXHandler* %5, null, !dbg !80
  br i1 %6, label %7, label %14, !dbg !82

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4, !dbg !83
  %9 = icmp eq i32 %8, 2, !dbg !85
  %10 = zext i1 %9 to i64, !dbg !86
  %11 = select i1 %9, i32 -554844433, i32 0, !dbg !86
  %12 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !87
  %13 = getelementptr inbounds %struct._xmlSAXHandler, %struct._xmlSAXHandler* %12, i32 0, i32 0, !dbg !88
  store i32 %11, i32* %13, align 8, !dbg !89
  br label %14, !dbg !90

14:                                               ; preds = %7, %2
  ret void, !dbg !91
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !92 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlParserCtxt*, align 8
  %3 = alloca %struct._xmlSAXHandler*, align 8
  %4 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %2, metadata !95, metadata !DIExpression()), !dbg !96
  %5 = call noalias i8* @malloc(i64 noundef 56) #8, !dbg !97
  %6 = bitcast i8* %5 to %struct._xmlParserCtxt*, !dbg !98
  store %struct._xmlParserCtxt* %6, %struct._xmlParserCtxt** %2, align 8, !dbg !96
  %7 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !99
  %8 = bitcast %struct._xmlParserCtxt* %7 to i8*, !dbg !100
  %9 = call i8* @memset(i8* %8, i32 0, i64 56), !dbg !100
  %10 = call noalias i8* @malloc(i64 noundef 264) #8, !dbg !101
  %11 = bitcast i8* %10 to %struct._xmlSAXHandler*, !dbg !102
  %12 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !103
  %13 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %12, i32 0, i32 0, !dbg !104
  store %struct._xmlSAXHandler* %11, %struct._xmlSAXHandler** %13, align 8, !dbg !105
  %14 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !106
  %15 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %14, i32 0, i32 0, !dbg !107
  %16 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %15, align 8, !dbg !107
  %17 = bitcast %struct._xmlSAXHandler* %16 to i8*, !dbg !108
  %18 = call i8* @memset(i8* %17, i32 0, i64 264), !dbg !108
  call void @llvm.dbg.declare(metadata %struct._xmlSAXHandler** %3, metadata !109, metadata !DIExpression()), !dbg !110
  %19 = call noalias i8* @malloc(i64 noundef 264) #8, !dbg !111
  %20 = bitcast i8* %19 to %struct._xmlSAXHandler*, !dbg !112
  store %struct._xmlSAXHandler* %20, %struct._xmlSAXHandler** %3, align 8, !dbg !110
  %21 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !113
  %22 = bitcast %struct._xmlSAXHandler* %21 to i8*, !dbg !113
  call void @klee_make_symbolic(i8* noundef %22, i64 noundef 264, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !114
  %23 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !115
  %24 = getelementptr inbounds %struct._xmlSAXHandler, %struct._xmlSAXHandler* %23, i32 0, i32 0, !dbg !116
  %25 = load i32, i32* %24, align 8, !dbg !116
  %26 = icmp ne i32 %25, -554844433, !dbg !117
  %27 = zext i1 %26 to i32, !dbg !117
  %28 = sext i32 %27 to i64, !dbg !115
  call void @klee_assume(i64 noundef %28), !dbg !118
  call void @llvm.dbg.declare(metadata i8** %4, metadata !119, metadata !DIExpression()), !dbg !120
  %29 = call noalias i8* @malloc(i64 noundef 1) #8, !dbg !121
  store i8* %29, i8** %4, align 8, !dbg !120
  %30 = load i8*, i8** %4, align 8, !dbg !122
  call void @klee_make_symbolic(i8* noundef %30, i64 noundef 1, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)), !dbg !123
  %31 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !124
  %32 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !125
  %33 = load i8*, i8** %4, align 8, !dbg !126
  call void @target_function(%struct._xmlParserCtxt* noundef %31, %struct._xmlSAXHandler* noundef %32, i8* noundef %33), !dbg !127
  %34 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !128
  %35 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %34, i32 0, i32 0, !dbg !129
  %36 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %35, align 8, !dbg !129
  %37 = bitcast %struct._xmlSAXHandler* %36 to i8*, !dbg !128
  call void @free(i8* noundef %37) #8, !dbg !130
  %38 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !131
  %39 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %38, i32 0, i32 4, !dbg !132
  %40 = load i8*, i8** %39, align 8, !dbg !132
  call void @free(i8* noundef %40) #8, !dbg !133
  %41 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !134
  %42 = bitcast %struct._xmlParserCtxt* %41 to i8*, !dbg !134
  call void @free(i8* noundef %42) #8, !dbg !135
  %43 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !136
  %44 = bitcast %struct._xmlSAXHandler* %43 to i8*, !dbg !136
  call void @free(i8* noundef %44) #8, !dbg !137
  %45 = load i8*, i8** %4, align 8, !dbg !138
  call void @free(i8* noundef %45) #8, !dbg !139
  ret i32 0, !dbg !140
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @target_function(%struct._xmlParserCtxt* noundef %0, %struct._xmlSAXHandler* noundef %1, i8* noundef %2) #0 !dbg !141 {
  %4 = alloca %struct._xmlParserCtxt*, align 8
  %5 = alloca %struct._xmlSAXHandler*, align 8
  %6 = alloca i8*, align 8
  store %struct._xmlParserCtxt* %0, %struct._xmlParserCtxt** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %4, metadata !144, metadata !DIExpression()), !dbg !145
  store %struct._xmlSAXHandler* %1, %struct._xmlSAXHandler** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSAXHandler** %5, metadata !146, metadata !DIExpression()), !dbg !147
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !148, metadata !DIExpression()), !dbg !149
  %7 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !150
  %8 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %7, i32 0, i32 0, !dbg !152
  %9 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %8, align 8, !dbg !152
  %10 = icmp eq %struct._xmlSAXHandler* %9, null, !dbg !153
  br i1 %10, label %11, label %28, !dbg !154

11:                                               ; preds = %3
  %12 = call noalias i8* @malloc(i64 noundef 264) #8, !dbg !155
  %13 = bitcast i8* %12 to %struct._xmlSAXHandler*, !dbg !157
  %14 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !158
  %15 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %14, i32 0, i32 0, !dbg !159
  store %struct._xmlSAXHandler* %13, %struct._xmlSAXHandler** %15, align 8, !dbg !160
  %16 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !161
  %17 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %16, i32 0, i32 0, !dbg !162
  %18 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %17, align 8, !dbg !162
  %19 = bitcast %struct._xmlSAXHandler* %18 to i8*, !dbg !163
  %20 = call i8* @memset(i8* %19, i32 0, i64 264), !dbg !163
  %21 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !164
  %22 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %21, i32 0, i32 0, !dbg !165
  %23 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %22, align 8, !dbg !165
  call void @xmlSAXVersion(%struct._xmlSAXHandler* noundef %23, i32 noundef 2), !dbg !166
  %24 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !167
  %25 = bitcast %struct._xmlParserCtxt* %24 to i8*, !dbg !167
  %26 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !168
  %27 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %26, i32 0, i32 1, !dbg !169
  store i8* %25, i8** %27, align 8, !dbg !170
  br label %67, !dbg !171

28:                                               ; preds = %3
  %29 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %5, align 8, !dbg !172
  %30 = getelementptr inbounds %struct._xmlSAXHandler, %struct._xmlSAXHandler* %29, i32 0, i32 0, !dbg !175
  %31 = load i32, i32* %30, align 8, !dbg !175
  %32 = icmp eq i32 %31, -554844433, !dbg !176
  br i1 %32, label %33, label %41, !dbg !177

33:                                               ; preds = %28
  %34 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !178
  %35 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %34, i32 0, i32 0, !dbg !180
  %36 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %35, align 8, !dbg !180
  %37 = bitcast %struct._xmlSAXHandler* %36 to i8*, !dbg !181
  %38 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %5, align 8, !dbg !182
  %39 = bitcast %struct._xmlSAXHandler* %38 to i8*, !dbg !181
  %40 = call i8* @memcpy(i8* %37, i8* %39, i64 264), !dbg !181
  br label %55, !dbg !183

41:                                               ; preds = %28
  %42 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !184
  %43 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %42, i32 0, i32 0, !dbg !186
  %44 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %43, align 8, !dbg !186
  %45 = bitcast %struct._xmlSAXHandler* %44 to i8*, !dbg !187
  %46 = call i8* @memset(i8* %45, i32 0, i64 264), !dbg !187
  %47 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([114 x i8], [114 x i8]* @.str.3, i64 0, i64 0), i32 noundef 117, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !188
  %48 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !189
  %49 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %48, i32 0, i32 0, !dbg !190
  %50 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %49, align 8, !dbg !190
  %51 = bitcast %struct._xmlSAXHandler* %50 to i8*, !dbg !191
  %52 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %5, align 8, !dbg !192
  %53 = bitcast %struct._xmlSAXHandler* %52 to i8*, !dbg !191
  %54 = call i8* @memcpy(i8* %51, i8* %53, i64 224), !dbg !191
  br label %55

55:                                               ; preds = %41, %33
  %56 = load i8*, i8** %6, align 8, !dbg !193
  %57 = icmp ne i8* %56, null, !dbg !193
  br i1 %57, label %58, label %60, !dbg !193

58:                                               ; preds = %55
  %59 = load i8*, i8** %6, align 8, !dbg !194
  br label %63, !dbg !193

60:                                               ; preds = %55
  %61 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !195
  %62 = bitcast %struct._xmlParserCtxt* %61 to i8*, !dbg !195
  br label %63, !dbg !193

63:                                               ; preds = %60, %58
  %64 = phi i8* [ %59, %58 ], [ %62, %60 ], !dbg !193
  %65 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !196
  %66 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %65, i32 0, i32 1, !dbg !197
  store i8* %64, i8** %66, align 8, !dbg !198
  br label %67

67:                                               ; preds = %63, %11
  %68 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !199
  %69 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %68, i32 0, i32 2, !dbg !200
  store i32 0, i32* %69, align 8, !dbg !201
  %70 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !202
  %71 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %70, i32 0, i32 3, !dbg !203
  store i8** null, i8*** %71, align 8, !dbg !204
  %72 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !205
  %73 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %72, i32 0, i32 4, !dbg !207
  %74 = load i8*, i8** %73, align 8, !dbg !207
  %75 = icmp eq i8* %74, null, !dbg !208
  br i1 %75, label %76, label %80, !dbg !209

76:                                               ; preds = %67
  %77 = call noalias i8* @malloc(i64 noundef 16) #8, !dbg !210
  %78 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !212
  %79 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %78, i32 0, i32 4, !dbg !213
  store i8* %77, i8** %79, align 8, !dbg !214
  br label %80, !dbg !215

80:                                               ; preds = %76, %67
  ret void, !dbg !216
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !217 {
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
  call void @llvm.dbg.declare(metadata i8** %7, metadata !232, metadata !DIExpression()), !dbg !234
  %9 = load i8*, i8** %4, align 8, !dbg !235
  store i8* %9, i8** %7, align 8, !dbg !234
  call void @llvm.dbg.declare(metadata i8** %8, metadata !236, metadata !DIExpression()), !dbg !237
  %10 = load i8*, i8** %5, align 8, !dbg !238
  store i8* %10, i8** %8, align 8, !dbg !237
  br label %11, !dbg !239

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !240
  %13 = add i64 %12, -1, !dbg !240
  store i64 %13, i64* %6, align 8, !dbg !240
  %14 = icmp ugt i64 %12, 0, !dbg !241
  br i1 %14, label %15, label %21, !dbg !239

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !242
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !242
  store i8* %17, i8** %8, align 8, !dbg !242
  %18 = load i8, i8* %16, align 1, !dbg !243
  %19 = load i8*, i8** %7, align 8, !dbg !244
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !244
  store i8* %20, i8** %7, align 8, !dbg !244
  store i8 %18, i8* %19, align 1, !dbg !245
  br label %11, !dbg !239, !llvm.loop !246

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !248
  ret i8* %22, !dbg !249
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #7 !dbg !250 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !254, metadata !DIExpression()), !dbg !255
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !256, metadata !DIExpression()), !dbg !257
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !258, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.declare(metadata i8** %7, metadata !260, metadata !DIExpression()), !dbg !261
  %8 = load i8*, i8** %4, align 8, !dbg !262
  store i8* %8, i8** %7, align 8, !dbg !261
  br label %9, !dbg !263

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !264
  %11 = add i64 %10, -1, !dbg !264
  store i64 %11, i64* %6, align 8, !dbg !264
  %12 = icmp ugt i64 %10, 0, !dbg !265
  br i1 %12, label %13, label %18, !dbg !263

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !266
  %15 = trunc i32 %14 to i8, !dbg !266
  %16 = load i8*, i8** %7, align 8, !dbg !267
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !267
  store i8* %17, i8** %7, align 8, !dbg !267
  store i8 %15, i8* %16, align 1, !dbg !268
  br label %9, !dbg !263, !llvm.loop !269

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !270
  ret i8* %19, !dbg !271
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0, !60, !62}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71, !71, !71}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/015_parserInternals.c_1495_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "dcf60d4a499bcb6db62b77e95ea817ee")
!2 = !{!3, !8, !15}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxt", file: !1, line: 91, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserCtxt", file: !1, line: 80, size: 448, elements: !6)
!6 = !{!7, !51, !52, !53, !55, !56, !57, !58, !59}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "sax", scope: !5, file: !1, line: 81, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSAXHandler", file: !1, line: 78, baseType: !10)
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSAXHandler", file: !1, line: 42, size: 2112, elements: !11)
!11 = !{!12, !14, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !44, !48, !49, !50}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !10, file: !1, line: 43, baseType: !13, size: 32)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "internalSubset", scope: !10, file: !1, line: 45, baseType: !15, size: 64, offset: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "isStandalone", scope: !10, file: !1, line: 46, baseType: !15, size: 64, offset: 128)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "hasInternalSubset", scope: !10, file: !1, line: 47, baseType: !15, size: 64, offset: 192)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "hasExternalSubset", scope: !10, file: !1, line: 48, baseType: !15, size: 64, offset: 256)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "resolveEntity", scope: !10, file: !1, line: 49, baseType: !15, size: 64, offset: 320)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "getEntity", scope: !10, file: !1, line: 50, baseType: !15, size: 64, offset: 384)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "entityDecl", scope: !10, file: !1, line: 51, baseType: !15, size: 64, offset: 448)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "notationDecl", scope: !10, file: !1, line: 52, baseType: !15, size: 64, offset: 512)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "attributeDecl", scope: !10, file: !1, line: 53, baseType: !15, size: 64, offset: 576)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "elementDecl", scope: !10, file: !1, line: 54, baseType: !15, size: 64, offset: 640)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "unparsedEntityDecl", scope: !10, file: !1, line: 55, baseType: !15, size: 64, offset: 704)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "setDocumentLocator", scope: !10, file: !1, line: 56, baseType: !15, size: 64, offset: 768)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "startDocument", scope: !10, file: !1, line: 57, baseType: !15, size: 64, offset: 832)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "endDocument", scope: !10, file: !1, line: 58, baseType: !15, size: 64, offset: 896)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "startElement", scope: !10, file: !1, line: 59, baseType: !15, size: 64, offset: 960)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "endElement", scope: !10, file: !1, line: 60, baseType: !15, size: 64, offset: 1024)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !10, file: !1, line: 61, baseType: !15, size: 64, offset: 1088)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "characters", scope: !10, file: !1, line: 62, baseType: !15, size: 64, offset: 1152)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "ignorableWhitespace", scope: !10, file: !1, line: 63, baseType: !15, size: 64, offset: 1216)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "processingInstruction", scope: !10, file: !1, line: 64, baseType: !15, size: 64, offset: 1280)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !10, file: !1, line: 65, baseType: !15, size: 64, offset: 1344)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "warning", scope: !10, file: !1, line: 66, baseType: !15, size: 64, offset: 1408)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !10, file: !1, line: 67, baseType: !15, size: 64, offset: 1472)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "fatalError", scope: !10, file: !1, line: 68, baseType: !15, size: 64, offset: 1536)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "getParameterEntity", scope: !10, file: !1, line: 69, baseType: !15, size: 64, offset: 1600)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "cdataBlock", scope: !10, file: !1, line: 70, baseType: !15, size: 64, offset: 1664)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "externalSubset", scope: !10, file: !1, line: 71, baseType: !15, size: 64, offset: 1728)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "initialized2", scope: !10, file: !1, line: 73, baseType: !43, size: 32, offset: 1792)
!43 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "nsUri", scope: !10, file: !1, line: 74, baseType: !45, size: 64, offset: 1856)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "startElementNs", scope: !10, file: !1, line: 75, baseType: !15, size: 64, offset: 1920)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "endElementNs", scope: !10, file: !1, line: 76, baseType: !15, size: 64, offset: 1984)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "serror", scope: !10, file: !1, line: 77, baseType: !15, size: 64, offset: 2048)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !5, file: !1, line: 82, baseType: !15, size: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "maxatts", scope: !5, file: !1, line: 83, baseType: !13, size: 32, offset: 128)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "atts", scope: !5, file: !1, line: 84, baseType: !54, size: 64, offset: 192)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "inputTab", scope: !5, file: !1, line: 85, baseType: !15, size: 64, offset: 256)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "errNo", scope: !5, file: !1, line: 87, baseType: !13, size: 32, offset: 320)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "disableSAX", scope: !5, file: !1, line: 88, baseType: !13, size: 32, offset: 352)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "wellFormed", scope: !5, file: !1, line: 89, baseType: !13, size: 32, offset: 384)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !5, file: !1, line: 90, baseType: !13, size: 32, offset: 416)
!60 = distinct !DICompileUnit(language: DW_LANG_C99, file: !61, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!61 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!62 = distinct !DICompileUnit(language: DW_LANG_C99, file: !63, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!63 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!64 = !{i32 7, !"Dwarf Version", i32 5}
!65 = !{i32 2, !"Debug Info Version", i32 3}
!66 = !{i32 1, !"wchar_size", i32 4}
!67 = !{i32 7, !"PIC Level", i32 2}
!68 = !{i32 7, !"PIE Level", i32 2}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"Ubuntu clang version 14.0.6"}
!72 = distinct !DISubprogram(name: "xmlSAXVersion", scope: !1, file: !1, line: 97, type: !73, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !75)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !8, !13}
!75 = !{}
!76 = !DILocalVariable(name: "sax", arg: 1, scope: !72, file: !1, line: 97, type: !8)
!77 = !DILocation(line: 97, column: 35, scope: !72)
!78 = !DILocalVariable(name: "version", arg: 2, scope: !72, file: !1, line: 97, type: !13)
!79 = !DILocation(line: 97, column: 44, scope: !72)
!80 = !DILocation(line: 98, column: 9, scope: !81)
!81 = distinct !DILexicalBlock(scope: !72, file: !1, line: 98, column: 9)
!82 = !DILocation(line: 98, column: 9, scope: !72)
!83 = !DILocation(line: 99, column: 29, scope: !84)
!84 = distinct !DILexicalBlock(scope: !81, file: !1, line: 98, column: 14)
!85 = !DILocation(line: 99, column: 37, scope: !84)
!86 = !DILocation(line: 99, column: 28, scope: !84)
!87 = !DILocation(line: 99, column: 9, scope: !84)
!88 = !DILocation(line: 99, column: 14, scope: !84)
!89 = !DILocation(line: 99, column: 26, scope: !84)
!90 = !DILocation(line: 100, column: 5, scope: !84)
!91 = !DILocation(line: 101, column: 1, scope: !72)
!92 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 131, type: !93, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !75)
!93 = !DISubroutineType(types: !94)
!94 = !{!13}
!95 = !DILocalVariable(name: "ctxt", scope: !92, file: !1, line: 133, type: !3)
!96 = !DILocation(line: 133, column: 20, scope: !92)
!97 = !DILocation(line: 133, column: 44, scope: !92)
!98 = !DILocation(line: 133, column: 27, scope: !92)
!99 = !DILocation(line: 134, column: 12, scope: !92)
!100 = !DILocation(line: 134, column: 5, scope: !92)
!101 = !DILocation(line: 137, column: 34, scope: !92)
!102 = !DILocation(line: 137, column: 17, scope: !92)
!103 = !DILocation(line: 137, column: 5, scope: !92)
!104 = !DILocation(line: 137, column: 11, scope: !92)
!105 = !DILocation(line: 137, column: 15, scope: !92)
!106 = !DILocation(line: 138, column: 12, scope: !92)
!107 = !DILocation(line: 138, column: 18, scope: !92)
!108 = !DILocation(line: 138, column: 5, scope: !92)
!109 = !DILocalVariable(name: "sax", scope: !92, file: !1, line: 141, type: !8)
!110 = !DILocation(line: 141, column: 20, scope: !92)
!111 = !DILocation(line: 141, column: 43, scope: !92)
!112 = !DILocation(line: 141, column: 26, scope: !92)
!113 = !DILocation(line: 142, column: 24, scope: !92)
!114 = !DILocation(line: 142, column: 5, scope: !92)
!115 = !DILocation(line: 145, column: 17, scope: !92)
!116 = !DILocation(line: 145, column: 22, scope: !92)
!117 = !DILocation(line: 145, column: 34, scope: !92)
!118 = !DILocation(line: 145, column: 5, scope: !92)
!119 = !DILocalVariable(name: "userData", scope: !92, file: !1, line: 148, type: !15)
!120 = !DILocation(line: 148, column: 11, scope: !92)
!121 = !DILocation(line: 148, column: 22, scope: !92)
!122 = !DILocation(line: 149, column: 24, scope: !92)
!123 = !DILocation(line: 149, column: 5, scope: !92)
!124 = !DILocation(line: 152, column: 21, scope: !92)
!125 = !DILocation(line: 152, column: 27, scope: !92)
!126 = !DILocation(line: 152, column: 32, scope: !92)
!127 = !DILocation(line: 152, column: 5, scope: !92)
!128 = !DILocation(line: 155, column: 10, scope: !92)
!129 = !DILocation(line: 155, column: 16, scope: !92)
!130 = !DILocation(line: 155, column: 5, scope: !92)
!131 = !DILocation(line: 156, column: 10, scope: !92)
!132 = !DILocation(line: 156, column: 16, scope: !92)
!133 = !DILocation(line: 156, column: 5, scope: !92)
!134 = !DILocation(line: 157, column: 10, scope: !92)
!135 = !DILocation(line: 157, column: 5, scope: !92)
!136 = !DILocation(line: 158, column: 10, scope: !92)
!137 = !DILocation(line: 158, column: 5, scope: !92)
!138 = !DILocation(line: 159, column: 10, scope: !92)
!139 = !DILocation(line: 159, column: 5, scope: !92)
!140 = !DILocation(line: 161, column: 5, scope: !92)
!141 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 104, type: !142, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !75)
!142 = !DISubroutineType(types: !143)
!143 = !{null, !3, !8, !15}
!144 = !DILocalVariable(name: "ctxt", arg: 1, scope: !141, file: !1, line: 104, type: !3)
!145 = !DILocation(line: 104, column: 44, scope: !141)
!146 = !DILocalVariable(name: "sax", arg: 2, scope: !141, file: !1, line: 104, type: !8)
!147 = !DILocation(line: 104, column: 65, scope: !141)
!148 = !DILocalVariable(name: "userData", arg: 3, scope: !141, file: !1, line: 104, type: !15)
!149 = !DILocation(line: 104, column: 76, scope: !141)
!150 = !DILocation(line: 105, column: 9, scope: !151)
!151 = distinct !DILexicalBlock(scope: !141, file: !1, line: 105, column: 9)
!152 = !DILocation(line: 105, column: 15, scope: !151)
!153 = !DILocation(line: 105, column: 19, scope: !151)
!154 = !DILocation(line: 105, column: 9, scope: !141)
!155 = !DILocation(line: 106, column: 38, scope: !156)
!156 = distinct !DILexicalBlock(scope: !151, file: !1, line: 105, column: 28)
!157 = !DILocation(line: 106, column: 21, scope: !156)
!158 = !DILocation(line: 106, column: 9, scope: !156)
!159 = !DILocation(line: 106, column: 15, scope: !156)
!160 = !DILocation(line: 106, column: 19, scope: !156)
!161 = !DILocation(line: 107, column: 16, scope: !156)
!162 = !DILocation(line: 107, column: 22, scope: !156)
!163 = !DILocation(line: 107, column: 9, scope: !156)
!164 = !DILocation(line: 108, column: 23, scope: !156)
!165 = !DILocation(line: 108, column: 29, scope: !156)
!166 = !DILocation(line: 108, column: 9, scope: !156)
!167 = !DILocation(line: 109, column: 26, scope: !156)
!168 = !DILocation(line: 109, column: 9, scope: !156)
!169 = !DILocation(line: 109, column: 15, scope: !156)
!170 = !DILocation(line: 109, column: 24, scope: !156)
!171 = !DILocation(line: 110, column: 5, scope: !156)
!172 = !DILocation(line: 111, column: 13, scope: !173)
!173 = distinct !DILexicalBlock(scope: !174, file: !1, line: 111, column: 13)
!174 = distinct !DILexicalBlock(scope: !151, file: !1, line: 110, column: 12)
!175 = !DILocation(line: 111, column: 18, scope: !173)
!176 = !DILocation(line: 111, column: 30, scope: !173)
!177 = !DILocation(line: 111, column: 13, scope: !174)
!178 = !DILocation(line: 112, column: 20, scope: !179)
!179 = distinct !DILexicalBlock(scope: !173, file: !1, line: 111, column: 45)
!180 = !DILocation(line: 112, column: 26, scope: !179)
!181 = !DILocation(line: 112, column: 13, scope: !179)
!182 = !DILocation(line: 112, column: 31, scope: !179)
!183 = !DILocation(line: 113, column: 9, scope: !179)
!184 = !DILocation(line: 114, column: 20, scope: !185)
!185 = distinct !DILexicalBlock(scope: !173, file: !1, line: 113, column: 16)
!186 = !DILocation(line: 114, column: 26, scope: !185)
!187 = !DILocation(line: 114, column: 13, scope: !185)
!188 = !DILocation(line: 117, column: 13, scope: !185)
!189 = !DILocation(line: 118, column: 20, scope: !185)
!190 = !DILocation(line: 118, column: 26, scope: !185)
!191 = !DILocation(line: 118, column: 13, scope: !185)
!192 = !DILocation(line: 118, column: 31, scope: !185)
!193 = !DILocation(line: 120, column: 26, scope: !174)
!194 = !DILocation(line: 120, column: 37, scope: !174)
!195 = !DILocation(line: 120, column: 48, scope: !174)
!196 = !DILocation(line: 120, column: 9, scope: !174)
!197 = !DILocation(line: 120, column: 15, scope: !174)
!198 = !DILocation(line: 120, column: 24, scope: !174)
!199 = !DILocation(line: 123, column: 5, scope: !141)
!200 = !DILocation(line: 123, column: 11, scope: !141)
!201 = !DILocation(line: 123, column: 19, scope: !141)
!202 = !DILocation(line: 124, column: 5, scope: !141)
!203 = !DILocation(line: 124, column: 11, scope: !141)
!204 = !DILocation(line: 124, column: 16, scope: !141)
!205 = !DILocation(line: 125, column: 9, scope: !206)
!206 = distinct !DILexicalBlock(scope: !141, file: !1, line: 125, column: 9)
!207 = !DILocation(line: 125, column: 15, scope: !206)
!208 = !DILocation(line: 125, column: 24, scope: !206)
!209 = !DILocation(line: 125, column: 9, scope: !141)
!210 = !DILocation(line: 127, column: 26, scope: !211)
!211 = distinct !DILexicalBlock(scope: !206, file: !1, line: 125, column: 33)
!212 = !DILocation(line: 127, column: 9, scope: !211)
!213 = !DILocation(line: 127, column: 15, scope: !211)
!214 = !DILocation(line: 127, column: 24, scope: !211)
!215 = !DILocation(line: 128, column: 5, scope: !211)
!216 = !DILocation(line: 129, column: 1, scope: !141)
!217 = distinct !DISubprogram(name: "memcpy", scope: !218, file: !218, line: 12, type: !219, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !60, retainedNodes: !75)
!218 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!219 = !DISubroutineType(types: !220)
!220 = !{!15, !15, !221, !223}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !224, line: 46, baseType: !225)
!224 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!225 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!226 = !DILocalVariable(name: "destaddr", arg: 1, scope: !217, file: !218, line: 12, type: !15)
!227 = !DILocation(line: 12, column: 20, scope: !217)
!228 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !217, file: !218, line: 12, type: !221)
!229 = !DILocation(line: 12, column: 42, scope: !217)
!230 = !DILocalVariable(name: "len", arg: 3, scope: !217, file: !218, line: 12, type: !223)
!231 = !DILocation(line: 12, column: 58, scope: !217)
!232 = !DILocalVariable(name: "dest", scope: !217, file: !218, line: 13, type: !233)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!234 = !DILocation(line: 13, column: 9, scope: !217)
!235 = !DILocation(line: 13, column: 16, scope: !217)
!236 = !DILocalVariable(name: "src", scope: !217, file: !218, line: 14, type: !45)
!237 = !DILocation(line: 14, column: 15, scope: !217)
!238 = !DILocation(line: 14, column: 21, scope: !217)
!239 = !DILocation(line: 16, column: 3, scope: !217)
!240 = !DILocation(line: 16, column: 13, scope: !217)
!241 = !DILocation(line: 16, column: 16, scope: !217)
!242 = !DILocation(line: 17, column: 19, scope: !217)
!243 = !DILocation(line: 17, column: 15, scope: !217)
!244 = !DILocation(line: 17, column: 10, scope: !217)
!245 = !DILocation(line: 17, column: 13, scope: !217)
!246 = distinct !{!246, !239, !242, !247}
!247 = !{!"llvm.loop.mustprogress"}
!248 = !DILocation(line: 18, column: 10, scope: !217)
!249 = !DILocation(line: 18, column: 3, scope: !217)
!250 = distinct !DISubprogram(name: "memset", scope: !251, file: !251, line: 12, type: !252, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !62, retainedNodes: !75)
!251 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!252 = !DISubroutineType(types: !253)
!253 = !{!15, !15, !13, !223}
!254 = !DILocalVariable(name: "dst", arg: 1, scope: !250, file: !251, line: 12, type: !15)
!255 = !DILocation(line: 12, column: 20, scope: !250)
!256 = !DILocalVariable(name: "s", arg: 2, scope: !250, file: !251, line: 12, type: !13)
!257 = !DILocation(line: 12, column: 29, scope: !250)
!258 = !DILocalVariable(name: "count", arg: 3, scope: !250, file: !251, line: 12, type: !223)
!259 = !DILocation(line: 12, column: 39, scope: !250)
!260 = !DILocalVariable(name: "a", scope: !250, file: !251, line: 13, type: !233)
!261 = !DILocation(line: 13, column: 9, scope: !250)
!262 = !DILocation(line: 13, column: 13, scope: !250)
!263 = !DILocation(line: 14, column: 3, scope: !250)
!264 = !DILocation(line: 14, column: 15, scope: !250)
!265 = !DILocation(line: 14, column: 18, scope: !250)
!266 = !DILocation(line: 15, column: 12, scope: !250)
!267 = !DILocation(line: 15, column: 7, scope: !250)
!268 = !DILocation(line: 15, column: 10, scope: !250)
!269 = distinct !{!269, !263, !266, !247}
!270 = !DILocation(line: 16, column: 10, scope: !250)
!271 = !DILocation(line: 16, column: 3, scope: !250)

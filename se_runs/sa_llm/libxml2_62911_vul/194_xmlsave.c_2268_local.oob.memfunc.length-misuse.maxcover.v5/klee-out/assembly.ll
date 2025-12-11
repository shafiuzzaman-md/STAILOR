; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/194_xmlsave.c_2268_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/194_xmlsave.c_2268_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSaveCtxt = type { %struct._xmlBuf*, i32, i32, i8*, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._xmlBuf = type { i8*, i32, i32, i32, i32, i32 }
%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i16 }
%struct._xmlDoc = type opaque
%struct._xmlAttr = type opaque
%struct._xmlNs = type opaque

@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"(ctxt->buf->size >= sizeof(xmlSaveCtxt)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/194_xmlsave.c_2268_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlSaveCtxtInit = private unnamed_addr constant [36 x i8] c"void xmlSaveCtxtInit(xmlSaveCtxt *)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"node\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"buf_size\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"buf_use\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"buf_alloc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSaveCtxtInit(%struct._xmlSaveCtxt* noundef %0) #0 !dbg !55 {
  %2 = alloca %struct._xmlSaveCtxt*, align 8
  store %struct._xmlSaveCtxt* %0, %struct._xmlSaveCtxt** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSaveCtxt** %2, metadata !118, metadata !DIExpression()), !dbg !119
  %3 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !120
  %4 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %3, i32 0, i32 0, !dbg !122
  %5 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !122
  %6 = icmp ne %struct._xmlBuf* %5, null, !dbg !123
  br i1 %6, label %7, label %20, !dbg !124

7:                                                ; preds = %1
  %8 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !125
  %9 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %8, i32 0, i32 0, !dbg !125
  %10 = load %struct._xmlBuf*, %struct._xmlBuf** %9, align 8, !dbg !125
  %11 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %10, i32 0, i32 2, !dbg !125
  %12 = load i32, i32* %11, align 4, !dbg !125
  %13 = zext i32 %12 to i64, !dbg !125
  %14 = icmp uge i64 %13, 240, !dbg !125
  br i1 %14, label %15, label %17, !dbg !125

15:                                               ; preds = %7
  br i1 true, label %16, label %17, !dbg !125

16:                                               ; preds = %15
  br label %19, !dbg !125

17:                                               ; preds = %15, %7
  %18 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.2, i64 0, i64 0), i32 noundef 107, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.xmlSaveCtxtInit, i64 0, i64 0)), !dbg !125
  br label %19, !dbg !125

19:                                               ; preds = %17, %16
  br label %20, !dbg !127

20:                                               ; preds = %19, %1
  %21 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.2, i64 0, i64 0), i32 noundef 111, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.xmlSaveCtxtInit, i64 0, i64 0)), !dbg !128
  ret void, !dbg !129
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlNodeDumpOutputInternal(%struct._xmlBuf* noundef %0, %struct._xmlNode* noundef %1, i32 noundef %2, i32 noundef %3, i8* noundef %4) #0 !dbg !130 {
  %6 = alloca %struct._xmlBuf*, align 8
  %7 = alloca %struct._xmlNode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct._xmlSaveCtxt, align 8
  store %struct._xmlBuf* %0, %struct._xmlBuf** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlBuf** %6, metadata !133, metadata !DIExpression()), !dbg !134
  store %struct._xmlNode* %1, %struct._xmlNode** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %7, metadata !135, metadata !DIExpression()), !dbg !136
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !137, metadata !DIExpression()), !dbg !138
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !139, metadata !DIExpression()), !dbg !140
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !141, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.declare(metadata %struct._xmlSaveCtxt* %11, metadata !143, metadata !DIExpression()), !dbg !144
  %12 = load %struct._xmlBuf*, %struct._xmlBuf** %6, align 8, !dbg !145
  %13 = icmp eq %struct._xmlBuf* %12, null, !dbg !147
  br i1 %13, label %17, label %14, !dbg !148

14:                                               ; preds = %5
  %15 = load %struct._xmlNode*, %struct._xmlNode** %7, align 8, !dbg !149
  %16 = icmp eq %struct._xmlNode* %15, null, !dbg !150
  br i1 %16, label %17, label %18, !dbg !151

17:                                               ; preds = %14, %5
  br label %36, !dbg !152

18:                                               ; preds = %14
  %19 = load i8*, i8** %10, align 8, !dbg !153
  %20 = icmp eq i8* %19, null, !dbg !155
  br i1 %20, label %21, label %22, !dbg !156

21:                                               ; preds = %18
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %10, align 8, !dbg !157
  br label %22, !dbg !158

22:                                               ; preds = %21, %18
  %23 = bitcast %struct._xmlSaveCtxt* %11 to i8*, !dbg !159
  %24 = call i8* @memset(i8* %23, i32 0, i64 240), !dbg !159
  %25 = load %struct._xmlBuf*, %struct._xmlBuf** %6, align 8, !dbg !160
  %26 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %11, i32 0, i32 0, !dbg !161
  store %struct._xmlBuf* %25, %struct._xmlBuf** %26, align 8, !dbg !162
  %27 = load i32, i32* %8, align 4, !dbg !163
  %28 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %11, i32 0, i32 1, !dbg !164
  store i32 %27, i32* %28, align 8, !dbg !165
  %29 = load i32, i32* %9, align 4, !dbg !166
  %30 = icmp ne i32 %29, 0, !dbg !166
  %31 = zext i1 %30 to i64, !dbg !166
  %32 = select i1 %30, i32 1, i32 0, !dbg !166
  %33 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %11, i32 0, i32 2, !dbg !167
  store i32 %32, i32* %33, align 4, !dbg !168
  %34 = load i8*, i8** %10, align 8, !dbg !169
  %35 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %11, i32 0, i32 3, !dbg !170
  store i8* %34, i8** %35, align 8, !dbg !171
  call void @xmlSaveCtxtInit(%struct._xmlSaveCtxt* noundef %11), !dbg !172
  br label %36, !dbg !173

36:                                               ; preds = %22, %17
  ret void, !dbg !173
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !174 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlBuf*, align 8
  %3 = alloca %struct._xmlNode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [32 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlBuf** %2, metadata !177, metadata !DIExpression()), !dbg !178
  %7 = call noalias i8* @malloc(i64 noundef 32) #7, !dbg !179
  %8 = bitcast i8* %7 to %struct._xmlBuf*, !dbg !180
  store %struct._xmlBuf* %8, %struct._xmlBuf** %2, align 8, !dbg !178
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %3, metadata !181, metadata !DIExpression()), !dbg !182
  %9 = call noalias i8* @malloc(i64 noundef 104) #7, !dbg !183
  %10 = bitcast i8* %9 to %struct._xmlNode*, !dbg !184
  store %struct._xmlNode* %10, %struct._xmlNode** %3, align 8, !dbg !182
  call void @llvm.dbg.declare(metadata i32* %4, metadata !185, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.declare(metadata i32* %5, metadata !187, metadata !DIExpression()), !dbg !188
  call void @llvm.dbg.declare(metadata [32 x i8]* %6, metadata !189, metadata !DIExpression()), !dbg !193
  %11 = load %struct._xmlBuf*, %struct._xmlBuf** %2, align 8, !dbg !194
  %12 = bitcast %struct._xmlBuf* %11 to i8*, !dbg !194
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 32, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)), !dbg !195
  %13 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !196
  %14 = bitcast %struct._xmlNode* %13 to i8*, !dbg !196
  call void @klee_make_symbolic(i8* noundef %14, i64 noundef 104, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)), !dbg !197
  %15 = bitcast i32* %4 to i8*, !dbg !198
  call void @klee_make_symbolic(i8* noundef %15, i64 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)), !dbg !199
  %16 = bitcast i32* %5 to i8*, !dbg !200
  call void @klee_make_symbolic(i8* noundef %16, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)), !dbg !201
  %17 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0, !dbg !202
  call void @klee_make_symbolic(i8* noundef %17, i64 noundef 32, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0)), !dbg !203
  %18 = load %struct._xmlBuf*, %struct._xmlBuf** %2, align 8, !dbg !204
  %19 = icmp ne %struct._xmlBuf* %18, null, !dbg !206
  br i1 %19, label %20, label %58, !dbg !207

20:                                               ; preds = %0
  %21 = load %struct._xmlBuf*, %struct._xmlBuf** %2, align 8, !dbg !208
  %22 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %21, i32 0, i32 2, !dbg !210
  %23 = bitcast i32* %22 to i8*, !dbg !211
  call void @klee_make_symbolic(i8* noundef %23, i64 noundef 4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0)), !dbg !212
  %24 = load %struct._xmlBuf*, %struct._xmlBuf** %2, align 8, !dbg !213
  %25 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %24, i32 0, i32 1, !dbg !214
  %26 = bitcast i32* %25 to i8*, !dbg !215
  call void @klee_make_symbolic(i8* noundef %26, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0)), !dbg !216
  %27 = load %struct._xmlBuf*, %struct._xmlBuf** %2, align 8, !dbg !217
  %28 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %27, i32 0, i32 5, !dbg !218
  %29 = bitcast i32* %28 to i8*, !dbg !219
  call void @klee_make_symbolic(i8* noundef %29, i64 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0)), !dbg !220
  %30 = load %struct._xmlBuf*, %struct._xmlBuf** %2, align 8, !dbg !221
  %31 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %30, i32 0, i32 2, !dbg !222
  %32 = load i32, i32* %31, align 4, !dbg !222
  %33 = icmp ule i32 %32, 1048576, !dbg !223
  %34 = zext i1 %33 to i32, !dbg !223
  %35 = sext i32 %34 to i64, !dbg !221
  call void @klee_assume(i64 noundef %35), !dbg !224
  %36 = load %struct._xmlBuf*, %struct._xmlBuf** %2, align 8, !dbg !225
  %37 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %36, i32 0, i32 1, !dbg !226
  %38 = load i32, i32* %37, align 8, !dbg !226
  %39 = load %struct._xmlBuf*, %struct._xmlBuf** %2, align 8, !dbg !227
  %40 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %39, i32 0, i32 2, !dbg !228
  %41 = load i32, i32* %40, align 4, !dbg !228
  %42 = icmp ule i32 %38, %41, !dbg !229
  %43 = zext i1 %42 to i32, !dbg !229
  %44 = sext i32 %43 to i64, !dbg !225
  call void @klee_assume(i64 noundef %44), !dbg !230
  %45 = load %struct._xmlBuf*, %struct._xmlBuf** %2, align 8, !dbg !231
  %46 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %45, i32 0, i32 5, !dbg !232
  %47 = load i32, i32* %46, align 8, !dbg !232
  %48 = icmp sge i32 %47, 0, !dbg !233
  br i1 %48, label %49, label %54, !dbg !234

49:                                               ; preds = %20
  %50 = load %struct._xmlBuf*, %struct._xmlBuf** %2, align 8, !dbg !235
  %51 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %50, i32 0, i32 5, !dbg !236
  %52 = load i32, i32* %51, align 8, !dbg !236
  %53 = icmp sle i32 %52, 2, !dbg !237
  br label %54

54:                                               ; preds = %49, %20
  %55 = phi i1 [ false, %20 ], [ %53, %49 ], !dbg !238
  %56 = zext i1 %55 to i32, !dbg !234
  %57 = sext i32 %56 to i64, !dbg !231
  call void @klee_assume(i64 noundef %57), !dbg !239
  br label %58, !dbg !240

58:                                               ; preds = %54, %0
  %59 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !241
  %60 = icmp ne %struct._xmlNode* %59, null, !dbg !243
  br i1 %60, label %61, label %64, !dbg !244

61:                                               ; preds = %58
  %62 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !245
  %63 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %62, i32 0, i32 1, !dbg !247
  store i32 1, i32* %63, align 8, !dbg !248
  br label %64, !dbg !249

64:                                               ; preds = %61, %58
  %65 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 31, !dbg !250
  store i8 0, i8* %65, align 1, !dbg !251
  %66 = load %struct._xmlBuf*, %struct._xmlBuf** %2, align 8, !dbg !252
  %67 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !253
  %68 = load i32, i32* %4, align 4, !dbg !254
  %69 = load i32, i32* %5, align 4, !dbg !255
  %70 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0, !dbg !256
  %71 = load i8, i8* %70, align 16, !dbg !256
  %72 = sext i8 %71 to i32, !dbg !256
  %73 = icmp ne i32 %72, 0, !dbg !256
  br i1 %73, label %74, label %76, !dbg !256

74:                                               ; preds = %64
  %75 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0, !dbg !257
  br label %77, !dbg !256

76:                                               ; preds = %64
  br label %77, !dbg !256

77:                                               ; preds = %76, %74
  %78 = phi i8* [ %75, %74 ], [ null, %76 ], !dbg !256
  call void @xmlNodeDumpOutputInternal(%struct._xmlBuf* noundef %66, %struct._xmlNode* noundef %67, i32 noundef %68, i32 noundef %69, i8* noundef %78), !dbg !258
  %79 = load %struct._xmlBuf*, %struct._xmlBuf** %2, align 8, !dbg !259
  %80 = bitcast %struct._xmlBuf* %79 to i8*, !dbg !259
  call void @free(i8* noundef %80) #7, !dbg !260
  %81 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !261
  %82 = bitcast %struct._xmlNode* %81 to i8*, !dbg !261
  call void @free(i8* noundef %82) #7, !dbg !262
  ret i32 0, !dbg !263
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !264 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !271, metadata !DIExpression()), !dbg !272
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !273, metadata !DIExpression()), !dbg !274
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !275, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.declare(metadata i8** %7, metadata !277, metadata !DIExpression()), !dbg !278
  %8 = load i8*, i8** %4, align 8, !dbg !279
  store i8* %8, i8** %7, align 8, !dbg !278
  br label %9, !dbg !280

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !281
  %11 = add i64 %10, -1, !dbg !281
  store i64 %11, i64* %6, align 8, !dbg !281
  %12 = icmp ugt i64 %10, 0, !dbg !282
  br i1 %12, label %13, label %18, !dbg !280

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !283
  %15 = trunc i32 %14 to i8, !dbg !283
  %16 = load i8*, i8** %7, align 8, !dbg !284
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !284
  store i8* %17, i8** %7, align 8, !dbg !284
  store i8 %15, i8* %16, align 1, !dbg !285
  br label %9, !dbg !280, !llvm.loop !286

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !288
  ret i8* %19, !dbg !289
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !45}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54, !54}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/194_xmlsave.c_2268_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "112a144a31413bca05491c7e3655db2a")
!2 = !{!3, !4, !7, !20}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!6 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBuf", file: !1, line: 10, baseType: !9)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlBuf", file: !1, line: 15, size: 256, elements: !10)
!10 = !{!11, !13, !15, !16, !17, !18}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !9, file: !1, line: 16, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !9, file: !1, line: 17, baseType: !14, size: 32, offset: 64)
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !9, file: !1, line: 18, baseType: !14, size: 32, offset: 96)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "compat_use", scope: !9, file: !1, line: 19, baseType: !14, size: 32, offset: 128)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "compat_size", scope: !9, file: !1, line: 20, baseType: !14, size: 32, offset: 160)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !9, file: !1, line: 21, baseType: !19, size: 32, offset: 192)
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 11, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 24, size: 832, elements: !23)
!23 = !{!24, !25, !26, !27, !29, !30, !31, !32, !33, !36, !37, !40, !43}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !22, file: !1, line: 25, baseType: !3, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !22, file: !1, line: 26, baseType: !19, size: 32, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !22, file: !1, line: 27, baseType: !4, size: 64, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !22, file: !1, line: 28, baseType: !28, size: 64, offset: 192)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !22, file: !1, line: 29, baseType: !28, size: 64, offset: 256)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !22, file: !1, line: 30, baseType: !28, size: 64, offset: 320)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !22, file: !1, line: 31, baseType: !28, size: 64, offset: 384)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !22, file: !1, line: 32, baseType: !28, size: 64, offset: 448)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !22, file: !1, line: 33, baseType: !34, size: 64, offset: 512)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !1, line: 33, flags: DIFlagFwdDecl)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !22, file: !1, line: 34, baseType: !12, size: 64, offset: 576)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !22, file: !1, line: 35, baseType: !38, size: 64, offset: 640)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !1, line: 35, flags: DIFlagFwdDecl)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !22, file: !1, line: 36, baseType: !41, size: 64, offset: 704)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !1, line: 36, flags: DIFlagFwdDecl)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !22, file: !1, line: 37, baseType: !44, size: 16, offset: 768)
!44 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!45 = distinct !DICompileUnit(language: DW_LANG_C99, file: !46, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!46 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!47 = !{i32 7, !"Dwarf Version", i32 5}
!48 = !{i32 2, !"Debug Info Version", i32 3}
!49 = !{i32 1, !"wchar_size", i32 4}
!50 = !{i32 7, !"PIC Level", i32 2}
!51 = !{i32 7, !"PIE Level", i32 2}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"Ubuntu clang version 14.0.6"}
!55 = distinct !DISubprogram(name: "xmlSaveCtxtInit", scope: !1, file: !1, line: 99, type: !56, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !117)
!56 = !DISubroutineType(types: !57)
!57 = !{null, !58}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSaveCtxt", file: !1, line: 12, baseType: !60)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSaveCtxt", file: !1, line: 40, size: 1920, elements: !61)
!61 = !{!62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !60, file: !1, line: 41, baseType: !7, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !60, file: !1, line: 42, baseType: !19, size: 32, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !60, file: !1, line: 43, baseType: !19, size: 32, offset: 96)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !60, file: !1, line: 44, baseType: !4, size: 64, offset: 128)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !60, file: !1, line: 45, baseType: !19, size: 32, offset: 192)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "doc_charset", scope: !60, file: !1, line: 46, baseType: !19, size: 32, offset: 224)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "indent_nr", scope: !60, file: !1, line: 47, baseType: !19, size: 32, offset: 256)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "indent", scope: !60, file: !1, line: 48, baseType: !12, size: 64, offset: 320)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "indent_len", scope: !60, file: !1, line: 49, baseType: !19, size: 32, offset: 384)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "free_indent", scope: !60, file: !1, line: 50, baseType: !19, size: 32, offset: 416)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "nodelen", scope: !60, file: !1, line: 51, baseType: !19, size: 32, offset: 448)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !60, file: !1, line: 52, baseType: !19, size: 32, offset: 480)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !60, file: !1, line: 53, baseType: !19, size: 32, offset: 512)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !60, file: !1, line: 54, baseType: !19, size: 32, offset: 544)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !60, file: !1, line: 55, baseType: !19, size: 32, offset: 576)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !60, file: !1, line: 56, baseType: !19, size: 32, offset: 608)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !60, file: !1, line: 57, baseType: !19, size: 32, offset: 640)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !60, file: !1, line: 58, baseType: !19, size: 32, offset: 672)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "well_formed", scope: !60, file: !1, line: 59, baseType: !19, size: 32, offset: 704)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "noent", scope: !60, file: !1, line: 60, baseType: !19, size: 32, offset: 736)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "html", scope: !60, file: !1, line: 61, baseType: !19, size: 32, offset: 768)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "dropdtd", scope: !60, file: !1, line: 62, baseType: !19, size: 32, offset: 800)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "xml_decl", scope: !60, file: !1, line: 63, baseType: !19, size: 32, offset: 832)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !60, file: !1, line: 64, baseType: !19, size: 32, offset: 864)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !60, file: !1, line: 65, baseType: !19, size: 32, offset: 896)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "compat", scope: !60, file: !1, line: 66, baseType: !19, size: 32, offset: 928)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "escape", scope: !60, file: !1, line: 67, baseType: !19, size: 32, offset: 960)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "noenc", scope: !60, file: !1, line: 68, baseType: !19, size: 32, offset: 992)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "nonull", scope: !60, file: !1, line: 69, baseType: !19, size: 32, offset: 1024)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "nocdata", scope: !60, file: !1, line: 70, baseType: !19, size: 32, offset: 1056)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "xhtml", scope: !60, file: !1, line: 71, baseType: !19, size: 32, offset: 1088)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !60, file: !1, line: 72, baseType: !19, size: 32, offset: 1120)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "old10", scope: !60, file: !1, line: 73, baseType: !19, size: 32, offset: 1152)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "disable_escape", scope: !60, file: !1, line: 74, baseType: !19, size: 32, offset: 1184)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "curcharset", scope: !60, file: !1, line: 75, baseType: !19, size: 32, offset: 1216)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "savedcur", scope: !60, file: !1, line: 76, baseType: !19, size: 32, offset: 1248)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "savedstate", scope: !60, file: !1, line: 77, baseType: !19, size: 32, offset: 1280)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "savederr", scope: !60, file: !1, line: 78, baseType: !19, size: 32, offset: 1312)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "savedwell_formed", scope: !60, file: !1, line: 79, baseType: !19, size: 32, offset: 1344)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "savednoent", scope: !60, file: !1, line: 80, baseType: !19, size: 32, offset: 1376)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "savedhtml", scope: !60, file: !1, line: 81, baseType: !19, size: 32, offset: 1408)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "saveddropdtd", scope: !60, file: !1, line: 82, baseType: !19, size: 32, offset: 1440)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "savedxml_decl", scope: !60, file: !1, line: 83, baseType: !19, size: 32, offset: 1472)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "savedsize", scope: !60, file: !1, line: 84, baseType: !19, size: 32, offset: 1504)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "savedalloc", scope: !60, file: !1, line: 85, baseType: !19, size: 32, offset: 1536)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "savedcompat", scope: !60, file: !1, line: 86, baseType: !19, size: 32, offset: 1568)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "savedescape", scope: !60, file: !1, line: 87, baseType: !19, size: 32, offset: 1600)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "savednoenc", scope: !60, file: !1, line: 88, baseType: !19, size: 32, offset: 1632)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "savednonull", scope: !60, file: !1, line: 89, baseType: !19, size: 32, offset: 1664)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "savednocdata", scope: !60, file: !1, line: 90, baseType: !19, size: 32, offset: 1696)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "savedxhtml", scope: !60, file: !1, line: 91, baseType: !19, size: 32, offset: 1728)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "savedascii", scope: !60, file: !1, line: 92, baseType: !19, size: 32, offset: 1760)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "savedold10", scope: !60, file: !1, line: 93, baseType: !19, size: 32, offset: 1792)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "saveddisable_escape", scope: !60, file: !1, line: 94, baseType: !19, size: 32, offset: 1824)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "savedcurcharset", scope: !60, file: !1, line: 95, baseType: !19, size: 32, offset: 1856)
!117 = !{}
!118 = !DILocalVariable(name: "ctxt", arg: 1, scope: !55, file: !1, line: 99, type: !58)
!119 = !DILocation(line: 99, column: 35, scope: !55)
!120 = !DILocation(line: 106, column: 9, scope: !121)
!121 = distinct !DILexicalBlock(scope: !55, file: !1, line: 106, column: 9)
!122 = !DILocation(line: 106, column: 15, scope: !121)
!123 = !DILocation(line: 106, column: 19, scope: !121)
!124 = !DILocation(line: 106, column: 9, scope: !55)
!125 = !DILocation(line: 107, column: 9, scope: !126)
!126 = distinct !DILexicalBlock(scope: !121, file: !1, line: 106, column: 28)
!127 = !DILocation(line: 108, column: 5, scope: !126)
!128 = !DILocation(line: 111, column: 5, scope: !55)
!129 = !DILocation(line: 112, column: 1, scope: !55)
!130 = distinct !DISubprogram(name: "xmlNodeDumpOutputInternal", scope: !1, file: !1, line: 115, type: !131, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !117)
!131 = !DISubroutineType(types: !132)
!132 = !{null, !7, !20, !19, !19, !4}
!133 = !DILocalVariable(name: "buf", arg: 1, scope: !130, file: !1, line: 115, type: !7)
!134 = !DILocation(line: 115, column: 40, scope: !130)
!135 = !DILocalVariable(name: "cur", arg: 2, scope: !130, file: !1, line: 115, type: !20)
!136 = !DILocation(line: 115, column: 54, scope: !130)
!137 = !DILocalVariable(name: "level", arg: 3, scope: !130, file: !1, line: 115, type: !19)
!138 = !DILocation(line: 115, column: 63, scope: !130)
!139 = !DILocalVariable(name: "format", arg: 4, scope: !130, file: !1, line: 116, type: !19)
!140 = !DILocation(line: 116, column: 36, scope: !130)
!141 = !DILocalVariable(name: "encoding", arg: 5, scope: !130, file: !1, line: 116, type: !4)
!142 = !DILocation(line: 116, column: 56, scope: !130)
!143 = !DILocalVariable(name: "ctxt", scope: !130, file: !1, line: 117, type: !59)
!144 = !DILocation(line: 117, column: 17, scope: !130)
!145 = !DILocation(line: 119, column: 10, scope: !146)
!146 = distinct !DILexicalBlock(scope: !130, file: !1, line: 119, column: 9)
!147 = !DILocation(line: 119, column: 14, scope: !146)
!148 = !DILocation(line: 119, column: 23, scope: !146)
!149 = !DILocation(line: 119, column: 27, scope: !146)
!150 = !DILocation(line: 119, column: 31, scope: !146)
!151 = !DILocation(line: 119, column: 9, scope: !130)
!152 = !DILocation(line: 119, column: 41, scope: !146)
!153 = !DILocation(line: 121, column: 9, scope: !154)
!154 = distinct !DILexicalBlock(scope: !130, file: !1, line: 121, column: 9)
!155 = !DILocation(line: 121, column: 18, scope: !154)
!156 = !DILocation(line: 121, column: 9, scope: !130)
!157 = !DILocation(line: 122, column: 18, scope: !154)
!158 = !DILocation(line: 122, column: 9, scope: !154)
!159 = !DILocation(line: 124, column: 5, scope: !130)
!160 = !DILocation(line: 125, column: 16, scope: !130)
!161 = !DILocation(line: 125, column: 10, scope: !130)
!162 = !DILocation(line: 125, column: 14, scope: !130)
!163 = !DILocation(line: 126, column: 18, scope: !130)
!164 = !DILocation(line: 126, column: 10, scope: !130)
!165 = !DILocation(line: 126, column: 16, scope: !130)
!166 = !DILocation(line: 127, column: 19, scope: !130)
!167 = !DILocation(line: 127, column: 10, scope: !130)
!168 = !DILocation(line: 127, column: 17, scope: !130)
!169 = !DILocation(line: 128, column: 36, scope: !130)
!170 = !DILocation(line: 128, column: 10, scope: !130)
!171 = !DILocation(line: 128, column: 19, scope: !130)
!172 = !DILocation(line: 129, column: 5, scope: !130)
!173 = !DILocation(line: 130, column: 1, scope: !130)
!174 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 132, type: !175, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !117)
!175 = !DISubroutineType(types: !176)
!176 = !{!19}
!177 = !DILocalVariable(name: "buf", scope: !174, file: !1, line: 134, type: !7)
!178 = !DILocation(line: 134, column: 13, scope: !174)
!179 = !DILocation(line: 134, column: 29, scope: !174)
!180 = !DILocation(line: 134, column: 19, scope: !174)
!181 = !DILocalVariable(name: "node", scope: !174, file: !1, line: 135, type: !20)
!182 = !DILocation(line: 135, column: 14, scope: !174)
!183 = !DILocation(line: 135, column: 32, scope: !174)
!184 = !DILocation(line: 135, column: 21, scope: !174)
!185 = !DILocalVariable(name: "level", scope: !174, file: !1, line: 136, type: !19)
!186 = !DILocation(line: 136, column: 9, scope: !174)
!187 = !DILocalVariable(name: "format", scope: !174, file: !1, line: 136, type: !19)
!188 = !DILocation(line: 136, column: 16, scope: !174)
!189 = !DILocalVariable(name: "encoding", scope: !174, file: !1, line: 137, type: !190)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 32)
!193 = !DILocation(line: 137, column: 10, scope: !174)
!194 = !DILocation(line: 140, column: 24, scope: !174)
!195 = !DILocation(line: 140, column: 5, scope: !174)
!196 = !DILocation(line: 141, column: 24, scope: !174)
!197 = !DILocation(line: 141, column: 5, scope: !174)
!198 = !DILocation(line: 142, column: 24, scope: !174)
!199 = !DILocation(line: 142, column: 5, scope: !174)
!200 = !DILocation(line: 143, column: 24, scope: !174)
!201 = !DILocation(line: 143, column: 5, scope: !174)
!202 = !DILocation(line: 144, column: 24, scope: !174)
!203 = !DILocation(line: 144, column: 5, scope: !174)
!204 = !DILocation(line: 147, column: 9, scope: !205)
!205 = distinct !DILexicalBlock(scope: !174, file: !1, line: 147, column: 9)
!206 = !DILocation(line: 147, column: 13, scope: !205)
!207 = !DILocation(line: 147, column: 9, scope: !174)
!208 = !DILocation(line: 148, column: 29, scope: !209)
!209 = distinct !DILexicalBlock(scope: !205, file: !1, line: 147, column: 22)
!210 = !DILocation(line: 148, column: 34, scope: !209)
!211 = !DILocation(line: 148, column: 28, scope: !209)
!212 = !DILocation(line: 148, column: 9, scope: !209)
!213 = !DILocation(line: 149, column: 29, scope: !209)
!214 = !DILocation(line: 149, column: 34, scope: !209)
!215 = !DILocation(line: 149, column: 28, scope: !209)
!216 = !DILocation(line: 149, column: 9, scope: !209)
!217 = !DILocation(line: 150, column: 29, scope: !209)
!218 = !DILocation(line: 150, column: 34, scope: !209)
!219 = !DILocation(line: 150, column: 28, scope: !209)
!220 = !DILocation(line: 150, column: 9, scope: !209)
!221 = !DILocation(line: 153, column: 21, scope: !209)
!222 = !DILocation(line: 153, column: 26, scope: !209)
!223 = !DILocation(line: 153, column: 31, scope: !209)
!224 = !DILocation(line: 153, column: 9, scope: !209)
!225 = !DILocation(line: 154, column: 21, scope: !209)
!226 = !DILocation(line: 154, column: 26, scope: !209)
!227 = !DILocation(line: 154, column: 33, scope: !209)
!228 = !DILocation(line: 154, column: 38, scope: !209)
!229 = !DILocation(line: 154, column: 30, scope: !209)
!230 = !DILocation(line: 154, column: 9, scope: !209)
!231 = !DILocation(line: 155, column: 21, scope: !209)
!232 = !DILocation(line: 155, column: 26, scope: !209)
!233 = !DILocation(line: 155, column: 32, scope: !209)
!234 = !DILocation(line: 155, column: 37, scope: !209)
!235 = !DILocation(line: 155, column: 40, scope: !209)
!236 = !DILocation(line: 155, column: 45, scope: !209)
!237 = !DILocation(line: 155, column: 51, scope: !209)
!238 = !DILocation(line: 0, scope: !209)
!239 = !DILocation(line: 155, column: 9, scope: !209)
!240 = !DILocation(line: 156, column: 5, scope: !209)
!241 = !DILocation(line: 159, column: 9, scope: !242)
!242 = distinct !DILexicalBlock(scope: !174, file: !1, line: 159, column: 9)
!243 = !DILocation(line: 159, column: 14, scope: !242)
!244 = !DILocation(line: 159, column: 9, scope: !174)
!245 = !DILocation(line: 160, column: 9, scope: !246)
!246 = distinct !DILexicalBlock(scope: !242, file: !1, line: 159, column: 23)
!247 = !DILocation(line: 160, column: 15, scope: !246)
!248 = !DILocation(line: 160, column: 20, scope: !246)
!249 = !DILocation(line: 161, column: 5, scope: !246)
!250 = !DILocation(line: 164, column: 5, scope: !174)
!251 = !DILocation(line: 164, column: 34, scope: !174)
!252 = !DILocation(line: 167, column: 31, scope: !174)
!253 = !DILocation(line: 167, column: 36, scope: !174)
!254 = !DILocation(line: 167, column: 42, scope: !174)
!255 = !DILocation(line: 167, column: 49, scope: !174)
!256 = !DILocation(line: 168, column: 31, scope: !174)
!257 = !DILocation(line: 168, column: 45, scope: !174)
!258 = !DILocation(line: 167, column: 5, scope: !174)
!259 = !DILocation(line: 171, column: 10, scope: !174)
!260 = !DILocation(line: 171, column: 5, scope: !174)
!261 = !DILocation(line: 172, column: 10, scope: !174)
!262 = !DILocation(line: 172, column: 5, scope: !174)
!263 = !DILocation(line: 174, column: 5, scope: !174)
!264 = distinct !DISubprogram(name: "memset", scope: !265, file: !265, line: 12, type: !266, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !117)
!265 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!266 = !DISubroutineType(types: !267)
!267 = !{!3, !3, !19, !268}
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !269, line: 46, baseType: !270)
!269 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!270 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!271 = !DILocalVariable(name: "dst", arg: 1, scope: !264, file: !265, line: 12, type: !3)
!272 = !DILocation(line: 12, column: 20, scope: !264)
!273 = !DILocalVariable(name: "s", arg: 2, scope: !264, file: !265, line: 12, type: !19)
!274 = !DILocation(line: 12, column: 29, scope: !264)
!275 = !DILocalVariable(name: "count", arg: 3, scope: !264, file: !265, line: 12, type: !268)
!276 = !DILocation(line: 12, column: 39, scope: !264)
!277 = !DILocalVariable(name: "a", scope: !264, file: !265, line: 13, type: !12)
!278 = !DILocation(line: 13, column: 9, scope: !264)
!279 = !DILocation(line: 13, column: 13, scope: !264)
!280 = !DILocation(line: 14, column: 3, scope: !264)
!281 = !DILocation(line: 14, column: 15, scope: !264)
!282 = !DILocation(line: 14, column: 18, scope: !264)
!283 = !DILocation(line: 15, column: 12, scope: !264)
!284 = !DILocation(line: 15, column: 7, scope: !264)
!285 = !DILocation(line: 15, column: 10, scope: !264)
!286 = distinct !{!286, !280, !283, !287}
!287 = !{!"llvm.loop.mustprogress"}
!288 = !DILocation(line: 16, column: 10, scope: !264)
!289 = !DILocation(line: 16, column: 3, scope: !264)

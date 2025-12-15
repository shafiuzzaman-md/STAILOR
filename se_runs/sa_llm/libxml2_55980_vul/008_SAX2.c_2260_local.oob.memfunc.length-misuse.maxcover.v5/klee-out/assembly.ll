; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/008_SAX2.c_2260_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/008_SAX2.c_2260_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlNode = type { %struct._xmlNode*, %struct._xmlDoc*, i32, i8* }
%struct._xmlDoc = type opaque
%struct._xmlParserCtxt = type { %struct._xmlNode*, i32, %struct._xmlDoc*, i32 }

@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"(ret != ((void*)0) && ctxt->freeElemsNr >= 0) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_55980_vul/008_SAX2.c_2260_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlSAX2GetNode = private unnamed_addr constant [55 x i8] c"xmlNode *xmlSAX2GetNode(xmlParserCtxt *, const char *)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"stub_name\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"ctxt\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"dictNames\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"localname\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlNode* @xmlSAX2GetNode(%struct._xmlParserCtxt* noundef %0, i8* noundef %1) #0 !dbg !19 {
  %3 = alloca %struct._xmlParserCtxt*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._xmlNode*, align 8
  store %struct._xmlParserCtxt* %0, %struct._xmlParserCtxt** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %3, metadata !47, metadata !DIExpression()), !dbg !48
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !49, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %5, metadata !51, metadata !DIExpression()), !dbg !52
  %6 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %3, align 8, !dbg !53
  %7 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %6, i32 0, i32 0, !dbg !55
  %8 = load %struct._xmlNode*, %struct._xmlNode** %7, align 8, !dbg !55
  %9 = icmp ne %struct._xmlNode* %8, null, !dbg !56
  br i1 %9, label %10, label %58, !dbg !57

10:                                               ; preds = %2
  %11 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %3, align 8, !dbg !58
  %12 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %11, i32 0, i32 0, !dbg !60
  %13 = load %struct._xmlNode*, %struct._xmlNode** %12, align 8, !dbg !60
  store %struct._xmlNode* %13, %struct._xmlNode** %5, align 8, !dbg !61
  %14 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !62
  %15 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %14, i32 0, i32 0, !dbg !63
  %16 = load %struct._xmlNode*, %struct._xmlNode** %15, align 8, !dbg !63
  %17 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %3, align 8, !dbg !64
  %18 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %17, i32 0, i32 0, !dbg !65
  store %struct._xmlNode* %16, %struct._xmlNode** %18, align 8, !dbg !66
  %19 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %3, align 8, !dbg !67
  %20 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %19, i32 0, i32 1, !dbg !68
  %21 = load i32, i32* %20, align 8, !dbg !69
  %22 = add nsw i32 %21, -1, !dbg !69
  store i32 %22, i32* %20, align 8, !dbg !69
  %23 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !70
  %24 = bitcast %struct._xmlNode* %23 to i8*, !dbg !71
  %25 = call i8* @memset(i8* %24, i32 0, i64 32), !dbg !71
  %26 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !72
  %27 = icmp ne %struct._xmlNode* %26, null, !dbg !72
  br i1 %27, label %28, label %35, !dbg !72

28:                                               ; preds = %10
  %29 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %3, align 8, !dbg !72
  %30 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %29, i32 0, i32 1, !dbg !72
  %31 = load i32, i32* %30, align 8, !dbg !72
  %32 = icmp sge i32 %31, 0, !dbg !72
  br i1 %32, label %33, label %35, !dbg !72

33:                                               ; preds = %28
  br i1 true, label %34, label %35, !dbg !72

34:                                               ; preds = %33
  br label %37, !dbg !72

35:                                               ; preds = %33, %28, %10
  %36 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.2, i64 0, i64 0), i32 noundef 50, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__.xmlSAX2GetNode, i64 0, i64 0)), !dbg !72
  br label %37, !dbg !72

37:                                               ; preds = %35, %34
  %38 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.2, i64 0, i64 0), i32 noundef 53, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__.xmlSAX2GetNode, i64 0, i64 0)), !dbg !73
  %39 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %3, align 8, !dbg !74
  %40 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %39, i32 0, i32 2, !dbg !75
  %41 = load %struct._xmlDoc*, %struct._xmlDoc** %40, align 8, !dbg !75
  %42 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !76
  %43 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %42, i32 0, i32 1, !dbg !77
  store %struct._xmlDoc* %41, %struct._xmlDoc** %43, align 8, !dbg !78
  %44 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !79
  %45 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %44, i32 0, i32 2, !dbg !80
  store i32 1, i32* %45, align 8, !dbg !81
  %46 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %3, align 8, !dbg !82
  %47 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %46, i32 0, i32 3, !dbg !84
  %48 = load i32, i32* %47, align 8, !dbg !84
  %49 = icmp ne i32 %48, 0, !dbg !82
  br i1 %49, label %50, label %54, !dbg !85

50:                                               ; preds = %37
  %51 = load i8*, i8** %4, align 8, !dbg !86
  %52 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !87
  %53 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %52, i32 0, i32 3, !dbg !88
  store i8* %51, i8** %53, align 8, !dbg !89
  br label %57, !dbg !87

54:                                               ; preds = %37
  %55 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !90
  %56 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %55, i32 0, i32 3, !dbg !91
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %56, align 8, !dbg !92
  br label %57

57:                                               ; preds = %54, %50
  br label %77, !dbg !93

58:                                               ; preds = %2
  %59 = call noalias i8* @malloc(i64 noundef 32) #7, !dbg !94
  %60 = bitcast i8* %59 to %struct._xmlNode*, !dbg !94
  store %struct._xmlNode* %60, %struct._xmlNode** %5, align 8, !dbg !96
  %61 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !97
  %62 = icmp ne %struct._xmlNode* %61, null, !dbg !97
  br i1 %62, label %63, label %76, !dbg !99

63:                                               ; preds = %58
  %64 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !100
  %65 = bitcast %struct._xmlNode* %64 to i8*, !dbg !102
  %66 = call i8* @memset(i8* %65, i32 0, i64 32), !dbg !102
  %67 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %3, align 8, !dbg !103
  %68 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %67, i32 0, i32 2, !dbg !104
  %69 = load %struct._xmlDoc*, %struct._xmlDoc** %68, align 8, !dbg !104
  %70 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !105
  %71 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %70, i32 0, i32 1, !dbg !106
  store %struct._xmlDoc* %69, %struct._xmlDoc** %71, align 8, !dbg !107
  %72 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !108
  %73 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %72, i32 0, i32 2, !dbg !109
  store i32 1, i32* %73, align 8, !dbg !110
  %74 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !111
  %75 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %74, i32 0, i32 3, !dbg !112
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %75, align 8, !dbg !113
  br label %76, !dbg !114

76:                                               ; preds = %63, %58
  br label %77

77:                                               ; preds = %76, %57
  %78 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !115
  ret %struct._xmlNode* %78, !dbg !116
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSAX2StartElement(%struct._xmlParserCtxt* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i32 noundef %4, i8** noundef %5, i32 noundef %6, i32 noundef %7, i8** noundef %8) #0 !dbg !117 {
  %10 = alloca %struct._xmlParserCtxt*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8**, align 8
  store %struct._xmlParserCtxt* %0, %struct._xmlParserCtxt** %10, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %10, metadata !121, metadata !DIExpression()), !dbg !122
  store i8* %1, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !123, metadata !DIExpression()), !dbg !124
  store i8* %2, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !125, metadata !DIExpression()), !dbg !126
  store i8* %3, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !127, metadata !DIExpression()), !dbg !128
  store i32 %4, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !129, metadata !DIExpression()), !dbg !130
  store i8** %5, i8*** %15, align 8
  call void @llvm.dbg.declare(metadata i8*** %15, metadata !131, metadata !DIExpression()), !dbg !132
  store i32 %6, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !133, metadata !DIExpression()), !dbg !134
  store i32 %7, i32* %17, align 4
  call void @llvm.dbg.declare(metadata i32* %17, metadata !135, metadata !DIExpression()), !dbg !136
  store i8** %8, i8*** %18, align 8
  call void @llvm.dbg.declare(metadata i8*** %18, metadata !137, metadata !DIExpression()), !dbg !138
  %19 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %10, align 8, !dbg !139
  %20 = load i8*, i8** %11, align 8, !dbg !140
  %21 = call %struct._xmlNode* @xmlSAX2GetNode(%struct._xmlParserCtxt* noundef %19, i8* noundef %20), !dbg !141
  ret void, !dbg !142
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !143 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlParserCtxt, align 8
  %3 = alloca %struct._xmlNode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._xmlNode*, align 8
  %6 = alloca [32 x i8], align 16
  %7 = alloca %struct._xmlNode*, align 8
  %8 = alloca %struct._xmlNode*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt* %2, metadata !146, metadata !DIExpression()), !dbg !147
  %9 = bitcast %struct._xmlParserCtxt* %2 to i8*, !dbg !148
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 32, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)), !dbg !149
  %10 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 1, !dbg !150
  %11 = load i32, i32* %10, align 8, !dbg !150
  %12 = icmp sge i32 %11, 0, !dbg !151
  %13 = zext i1 %12 to i32, !dbg !151
  %14 = sext i32 %13 to i64, !dbg !152
  call void @klee_assume(i64 noundef %14), !dbg !153
  %15 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 1, !dbg !154
  %16 = load i32, i32* %15, align 8, !dbg !154
  %17 = icmp sle i32 %16, 100, !dbg !155
  %18 = zext i1 %17 to i32, !dbg !155
  %19 = sext i32 %18 to i64, !dbg !156
  call void @klee_assume(i64 noundef %19), !dbg !157
  %20 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 1, !dbg !158
  %21 = load i32, i32* %20, align 8, !dbg !158
  %22 = icmp sgt i32 %21, 0, !dbg !160
  br i1 %22, label %23, label %53, !dbg !161

23:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %3, metadata !162, metadata !DIExpression()), !dbg !164
  store %struct._xmlNode* null, %struct._xmlNode** %3, align 8, !dbg !164
  call void @llvm.dbg.declare(metadata i32* %4, metadata !165, metadata !DIExpression()), !dbg !167
  store i32 0, i32* %4, align 4, !dbg !167
  br label %24, !dbg !168

24:                                               ; preds = %49, %23
  %25 = load i32, i32* %4, align 4, !dbg !169
  %26 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 1, !dbg !171
  %27 = load i32, i32* %26, align 8, !dbg !171
  %28 = icmp slt i32 %25, %27, !dbg !172
  br i1 %28, label %29, label %52, !dbg !173

29:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %5, metadata !174, metadata !DIExpression()), !dbg !176
  %30 = call noalias i8* @malloc(i64 noundef 32) #7, !dbg !177
  %31 = bitcast i8* %30 to %struct._xmlNode*, !dbg !177
  store %struct._xmlNode* %31, %struct._xmlNode** %5, align 8, !dbg !176
  %32 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !178
  %33 = icmp ne %struct._xmlNode* %32, null, !dbg !179
  %34 = zext i1 %33 to i32, !dbg !179
  %35 = sext i32 %34 to i64, !dbg !178
  call void @klee_assume(i64 noundef %35), !dbg !180
  %36 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !181
  %37 = icmp ne %struct._xmlNode* %36, null, !dbg !181
  br i1 %37, label %38, label %42, !dbg !183

38:                                               ; preds = %29
  %39 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !184
  %40 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !186
  %41 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %40, i32 0, i32 0, !dbg !187
  store %struct._xmlNode* %39, %struct._xmlNode** %41, align 8, !dbg !188
  br label %45, !dbg !189

42:                                               ; preds = %29
  %43 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !190
  %44 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 0, !dbg !192
  store %struct._xmlNode* %43, %struct._xmlNode** %44, align 8, !dbg !193
  br label %45

45:                                               ; preds = %42, %38
  %46 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !194
  store %struct._xmlNode* %46, %struct._xmlNode** %3, align 8, !dbg !195
  %47 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !196
  %48 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %47, i32 0, i32 0, !dbg !197
  store %struct._xmlNode* null, %struct._xmlNode** %48, align 8, !dbg !198
  br label %49, !dbg !199

49:                                               ; preds = %45
  %50 = load i32, i32* %4, align 4, !dbg !200
  %51 = add nsw i32 %50, 1, !dbg !200
  store i32 %51, i32* %4, align 4, !dbg !200
  br label %24, !dbg !201, !llvm.loop !202

52:                                               ; preds = %24
  br label %55, !dbg !205

53:                                               ; preds = %0
  %54 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 0, !dbg !206
  store %struct._xmlNode* null, %struct._xmlNode** %54, align 8, !dbg !208
  br label %55

55:                                               ; preds = %53, %52
  %56 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 2, !dbg !209
  store %struct._xmlDoc* null, %struct._xmlDoc** %56, align 8, !dbg !210
  %57 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 3, !dbg !211
  %58 = bitcast i32* %57 to i8*, !dbg !212
  call void @klee_make_symbolic(i8* noundef %58, i64 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)), !dbg !213
  call void @llvm.dbg.declare(metadata [32 x i8]* %6, metadata !214, metadata !DIExpression()), !dbg !218
  %59 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0, !dbg !219
  call void @klee_make_symbolic(i8* noundef %59, i64 noundef 32, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)), !dbg !220
  %60 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 31, !dbg !221
  store i8 0, i8* %60, align 1, !dbg !222
  %61 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0, !dbg !223
  call void @xmlSAX2StartElement(%struct._xmlParserCtxt* noundef %2, i8* noundef %61, i8* noundef null, i8* noundef null, i32 noundef 0, i8** noundef null, i32 noundef 0, i32 noundef 0, i8** noundef null), !dbg !224
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %7, metadata !225, metadata !DIExpression()), !dbg !226
  %62 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 0, !dbg !227
  %63 = load %struct._xmlNode*, %struct._xmlNode** %62, align 8, !dbg !227
  store %struct._xmlNode* %63, %struct._xmlNode** %7, align 8, !dbg !226
  br label %64, !dbg !228

64:                                               ; preds = %67, %55
  %65 = load %struct._xmlNode*, %struct._xmlNode** %7, align 8, !dbg !229
  %66 = icmp ne %struct._xmlNode* %65, null, !dbg !230
  br i1 %66, label %67, label %74, !dbg !228

67:                                               ; preds = %64
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %8, metadata !231, metadata !DIExpression()), !dbg !233
  %68 = load %struct._xmlNode*, %struct._xmlNode** %7, align 8, !dbg !234
  %69 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %68, i32 0, i32 0, !dbg !235
  %70 = load %struct._xmlNode*, %struct._xmlNode** %69, align 8, !dbg !235
  store %struct._xmlNode* %70, %struct._xmlNode** %8, align 8, !dbg !233
  %71 = load %struct._xmlNode*, %struct._xmlNode** %7, align 8, !dbg !236
  %72 = bitcast %struct._xmlNode* %71 to i8*, !dbg !236
  call void @free(i8* noundef %72) #7, !dbg !237
  %73 = load %struct._xmlNode*, %struct._xmlNode** %8, align 8, !dbg !238
  store %struct._xmlNode* %73, %struct._xmlNode** %7, align 8, !dbg !239
  br label %64, !dbg !228, !llvm.loop !240

74:                                               ; preds = %64
  ret i32 0, !dbg !242
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !243 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !250, metadata !DIExpression()), !dbg !251
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !252, metadata !DIExpression()), !dbg !253
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !254, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.declare(metadata i8** %7, metadata !256, metadata !DIExpression()), !dbg !258
  %8 = load i8*, i8** %4, align 8, !dbg !259
  store i8* %8, i8** %7, align 8, !dbg !258
  br label %9, !dbg !260

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !261
  %11 = add i64 %10, -1, !dbg !261
  store i64 %11, i64* %6, align 8, !dbg !261
  %12 = icmp ugt i64 %10, 0, !dbg !262
  br i1 %12, label %13, label %18, !dbg !260

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !263
  %15 = trunc i32 %14 to i8, !dbg !263
  %16 = load i8*, i8** %7, align 8, !dbg !264
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !264
  store i8* %17, i8** %7, align 8, !dbg !264
  store i8 %15, i8* %16, align 1, !dbg !265
  br label %9, !dbg !260, !llvm.loop !266

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !267
  ret i8* %19, !dbg !268
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18, !18}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !7, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/008_SAX2.c_2260_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "b719e910441dcc7dff70a5e78231ab93")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 13, baseType: !4, size: 32, elements: !5)
!4 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!5 = !{!6}
!6 = !DIEnumerator(name: "XML_ELEMENT_NODE", value: 1)
!7 = !{!8}
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!11 = !{i32 7, !"Dwarf Version", i32 5}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{i32 7, !"PIC Level", i32 2}
!15 = !{i32 7, !"PIE Level", i32 2}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"Ubuntu clang version 14.0.6"}
!19 = distinct !DISubprogram(name: "xmlSAX2GetNode", scope: !1, file: !1, line: 38, type: !20, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !46)
!20 = !DISubroutineType(types: !21)
!21 = !{!22, !37, !34}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 17, baseType: !24)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 18, size: 256, elements: !25)
!25 = !{!26, !27, !31, !33}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !24, file: !1, line: 19, baseType: !22, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !24, file: !1, line: 20, baseType: !28, size: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !1, line: 11, baseType: !30)
!30 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !1, line: 11, flags: DIFlagFwdDecl)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !24, file: !1, line: 21, baseType: !32, size: 32, offset: 128)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !1, line: 15, baseType: !3)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !24, file: !1, line: 22, baseType: !34, size: 64, offset: 192)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!36 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxt", file: !1, line: 25, baseType: !39)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserCtxt", file: !1, line: 26, size: 256, elements: !40)
!40 = !{!41, !42, !44, !45}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "freeElems", scope: !39, file: !1, line: 27, baseType: !22, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "freeElemsNr", scope: !39, file: !1, line: 28, baseType: !43, size: 32, offset: 64)
!43 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "myDoc", scope: !39, file: !1, line: 29, baseType: !28, size: 64, offset: 128)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "dictNames", scope: !39, file: !1, line: 30, baseType: !43, size: 32, offset: 192)
!46 = !{}
!47 = !DILocalVariable(name: "ctxt", arg: 1, scope: !19, file: !1, line: 38, type: !37)
!48 = !DILocation(line: 38, column: 40, scope: !19)
!49 = !DILocalVariable(name: "localname", arg: 2, scope: !19, file: !1, line: 38, type: !34)
!50 = !DILocation(line: 38, column: 58, scope: !19)
!51 = !DILocalVariable(name: "ret", scope: !19, file: !1, line: 39, type: !22)
!52 = !DILocation(line: 39, column: 14, scope: !19)
!53 = !DILocation(line: 41, column: 9, scope: !54)
!54 = distinct !DILexicalBlock(scope: !19, file: !1, line: 41, column: 9)
!55 = !DILocation(line: 41, column: 15, scope: !54)
!56 = !DILocation(line: 41, column: 25, scope: !54)
!57 = !DILocation(line: 41, column: 9, scope: !19)
!58 = !DILocation(line: 42, column: 15, scope: !59)
!59 = distinct !DILexicalBlock(scope: !54, file: !1, line: 41, column: 34)
!60 = !DILocation(line: 42, column: 21, scope: !59)
!61 = !DILocation(line: 42, column: 13, scope: !59)
!62 = !DILocation(line: 43, column: 27, scope: !59)
!63 = !DILocation(line: 43, column: 32, scope: !59)
!64 = !DILocation(line: 43, column: 9, scope: !59)
!65 = !DILocation(line: 43, column: 15, scope: !59)
!66 = !DILocation(line: 43, column: 25, scope: !59)
!67 = !DILocation(line: 44, column: 9, scope: !59)
!68 = !DILocation(line: 44, column: 15, scope: !59)
!69 = !DILocation(line: 44, column: 26, scope: !59)
!70 = !DILocation(line: 47, column: 16, scope: !59)
!71 = !DILocation(line: 47, column: 9, scope: !59)
!72 = !DILocation(line: 50, column: 9, scope: !59)
!73 = !DILocation(line: 53, column: 9, scope: !59)
!74 = !DILocation(line: 55, column: 20, scope: !59)
!75 = !DILocation(line: 55, column: 26, scope: !59)
!76 = !DILocation(line: 55, column: 9, scope: !59)
!77 = !DILocation(line: 55, column: 14, scope: !59)
!78 = !DILocation(line: 55, column: 18, scope: !59)
!79 = !DILocation(line: 56, column: 9, scope: !59)
!80 = !DILocation(line: 56, column: 14, scope: !59)
!81 = !DILocation(line: 56, column: 19, scope: !59)
!82 = !DILocation(line: 58, column: 13, scope: !83)
!83 = distinct !DILexicalBlock(scope: !59, file: !1, line: 58, column: 13)
!84 = !DILocation(line: 58, column: 19, scope: !83)
!85 = !DILocation(line: 58, column: 13, scope: !59)
!86 = !DILocation(line: 59, column: 25, scope: !83)
!87 = !DILocation(line: 59, column: 13, scope: !83)
!88 = !DILocation(line: 59, column: 18, scope: !83)
!89 = !DILocation(line: 59, column: 23, scope: !83)
!90 = !DILocation(line: 61, column: 13, scope: !83)
!91 = !DILocation(line: 61, column: 18, scope: !83)
!92 = !DILocation(line: 61, column: 23, scope: !83)
!93 = !DILocation(line: 62, column: 5, scope: !59)
!94 = !DILocation(line: 63, column: 15, scope: !95)
!95 = distinct !DILexicalBlock(scope: !54, file: !1, line: 62, column: 12)
!96 = !DILocation(line: 63, column: 13, scope: !95)
!97 = !DILocation(line: 64, column: 13, scope: !98)
!98 = distinct !DILexicalBlock(scope: !95, file: !1, line: 64, column: 13)
!99 = !DILocation(line: 64, column: 13, scope: !95)
!100 = !DILocation(line: 65, column: 20, scope: !101)
!101 = distinct !DILexicalBlock(scope: !98, file: !1, line: 64, column: 18)
!102 = !DILocation(line: 65, column: 13, scope: !101)
!103 = !DILocation(line: 66, column: 24, scope: !101)
!104 = !DILocation(line: 66, column: 30, scope: !101)
!105 = !DILocation(line: 66, column: 13, scope: !101)
!106 = !DILocation(line: 66, column: 18, scope: !101)
!107 = !DILocation(line: 66, column: 22, scope: !101)
!108 = !DILocation(line: 67, column: 13, scope: !101)
!109 = !DILocation(line: 67, column: 18, scope: !101)
!110 = !DILocation(line: 67, column: 23, scope: !101)
!111 = !DILocation(line: 68, column: 13, scope: !101)
!112 = !DILocation(line: 68, column: 18, scope: !101)
!113 = !DILocation(line: 68, column: 23, scope: !101)
!114 = !DILocation(line: 69, column: 9, scope: !101)
!115 = !DILocation(line: 72, column: 12, scope: !19)
!116 = !DILocation(line: 72, column: 5, scope: !19)
!117 = distinct !DISubprogram(name: "xmlSAX2StartElement", scope: !1, file: !1, line: 76, type: !118, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !46)
!118 = !DISubroutineType(types: !119)
!119 = !{null, !37, !34, !34, !34, !43, !120, !43, !43, !120}
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!121 = !DILocalVariable(name: "ctxt", arg: 1, scope: !117, file: !1, line: 76, type: !37)
!122 = !DILocation(line: 76, column: 41, scope: !117)
!123 = !DILocalVariable(name: "localname", arg: 2, scope: !117, file: !1, line: 76, type: !34)
!124 = !DILocation(line: 76, column: 59, scope: !117)
!125 = !DILocalVariable(name: "prefix", arg: 3, scope: !117, file: !1, line: 76, type: !34)
!126 = !DILocation(line: 76, column: 82, scope: !117)
!127 = !DILocalVariable(name: "URI", arg: 4, scope: !117, file: !1, line: 76, type: !34)
!128 = !DILocation(line: 76, column: 102, scope: !117)
!129 = !DILocalVariable(name: "nb_namespaces", arg: 5, scope: !117, file: !1, line: 76, type: !43)
!130 = !DILocation(line: 76, column: 111, scope: !117)
!131 = !DILocalVariable(name: "namespaces", arg: 6, scope: !117, file: !1, line: 76, type: !120)
!132 = !DILocation(line: 76, column: 139, scope: !117)
!133 = !DILocalVariable(name: "nb_attributes", arg: 7, scope: !117, file: !1, line: 76, type: !43)
!134 = !DILocation(line: 76, column: 155, scope: !117)
!135 = !DILocalVariable(name: "nb_defaulted", arg: 8, scope: !117, file: !1, line: 76, type: !43)
!136 = !DILocation(line: 76, column: 174, scope: !117)
!137 = !DILocalVariable(name: "attributes", arg: 9, scope: !117, file: !1, line: 76, type: !120)
!138 = !DILocation(line: 76, column: 201, scope: !117)
!139 = !DILocation(line: 77, column: 20, scope: !117)
!140 = !DILocation(line: 77, column: 26, scope: !117)
!141 = !DILocation(line: 77, column: 5, scope: !117)
!142 = !DILocation(line: 78, column: 1, scope: !117)
!143 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 80, type: !144, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !46)
!144 = !DISubroutineType(types: !145)
!145 = !{!43}
!146 = !DILocalVariable(name: "ctxt", scope: !143, file: !1, line: 82, type: !38)
!147 = !DILocation(line: 82, column: 19, scope: !143)
!148 = !DILocation(line: 85, column: 24, scope: !143)
!149 = !DILocation(line: 85, column: 5, scope: !143)
!150 = !DILocation(line: 88, column: 22, scope: !143)
!151 = !DILocation(line: 88, column: 34, scope: !143)
!152 = !DILocation(line: 88, column: 17, scope: !143)
!153 = !DILocation(line: 88, column: 5, scope: !143)
!154 = !DILocation(line: 89, column: 22, scope: !143)
!155 = !DILocation(line: 89, column: 34, scope: !143)
!156 = !DILocation(line: 89, column: 17, scope: !143)
!157 = !DILocation(line: 89, column: 5, scope: !143)
!158 = !DILocation(line: 92, column: 14, scope: !159)
!159 = distinct !DILexicalBlock(scope: !143, file: !1, line: 92, column: 9)
!160 = !DILocation(line: 92, column: 26, scope: !159)
!161 = !DILocation(line: 92, column: 9, scope: !143)
!162 = !DILocalVariable(name: "prev", scope: !163, file: !1, line: 94, type: !22)
!163 = distinct !DILexicalBlock(scope: !159, file: !1, line: 92, column: 31)
!164 = !DILocation(line: 94, column: 18, scope: !163)
!165 = !DILocalVariable(name: "i", scope: !166, file: !1, line: 95, type: !43)
!166 = distinct !DILexicalBlock(scope: !163, file: !1, line: 95, column: 9)
!167 = !DILocation(line: 95, column: 18, scope: !166)
!168 = !DILocation(line: 95, column: 14, scope: !166)
!169 = !DILocation(line: 95, column: 25, scope: !170)
!170 = distinct !DILexicalBlock(scope: !166, file: !1, line: 95, column: 9)
!171 = !DILocation(line: 95, column: 34, scope: !170)
!172 = !DILocation(line: 95, column: 27, scope: !170)
!173 = !DILocation(line: 95, column: 9, scope: !166)
!174 = !DILocalVariable(name: "node", scope: !175, file: !1, line: 96, type: !22)
!175 = distinct !DILexicalBlock(scope: !170, file: !1, line: 95, column: 52)
!176 = !DILocation(line: 96, column: 22, scope: !175)
!177 = !DILocation(line: 96, column: 29, scope: !175)
!178 = !DILocation(line: 97, column: 25, scope: !175)
!179 = !DILocation(line: 97, column: 30, scope: !175)
!180 = !DILocation(line: 97, column: 13, scope: !175)
!181 = !DILocation(line: 99, column: 17, scope: !182)
!182 = distinct !DILexicalBlock(scope: !175, file: !1, line: 99, column: 17)
!183 = !DILocation(line: 99, column: 17, scope: !175)
!184 = !DILocation(line: 100, column: 30, scope: !185)
!185 = distinct !DILexicalBlock(scope: !182, file: !1, line: 99, column: 23)
!186 = !DILocation(line: 100, column: 17, scope: !185)
!187 = !DILocation(line: 100, column: 23, scope: !185)
!188 = !DILocation(line: 100, column: 28, scope: !185)
!189 = !DILocation(line: 101, column: 13, scope: !185)
!190 = !DILocation(line: 102, column: 34, scope: !191)
!191 = distinct !DILexicalBlock(scope: !182, file: !1, line: 101, column: 20)
!192 = !DILocation(line: 102, column: 22, scope: !191)
!193 = !DILocation(line: 102, column: 32, scope: !191)
!194 = !DILocation(line: 104, column: 20, scope: !175)
!195 = !DILocation(line: 104, column: 18, scope: !175)
!196 = !DILocation(line: 105, column: 13, scope: !175)
!197 = !DILocation(line: 105, column: 19, scope: !175)
!198 = !DILocation(line: 105, column: 24, scope: !175)
!199 = !DILocation(line: 106, column: 9, scope: !175)
!200 = !DILocation(line: 95, column: 48, scope: !170)
!201 = !DILocation(line: 95, column: 9, scope: !170)
!202 = distinct !{!202, !173, !203, !204}
!203 = !DILocation(line: 106, column: 9, scope: !166)
!204 = !{!"llvm.loop.mustprogress"}
!205 = !DILocation(line: 107, column: 5, scope: !163)
!206 = !DILocation(line: 108, column: 14, scope: !207)
!207 = distinct !DILexicalBlock(scope: !159, file: !1, line: 107, column: 12)
!208 = !DILocation(line: 108, column: 24, scope: !207)
!209 = !DILocation(line: 112, column: 10, scope: !143)
!210 = !DILocation(line: 112, column: 16, scope: !143)
!211 = !DILocation(line: 115, column: 30, scope: !143)
!212 = !DILocation(line: 115, column: 24, scope: !143)
!213 = !DILocation(line: 115, column: 5, scope: !143)
!214 = !DILocalVariable(name: "localname", scope: !143, file: !1, line: 118, type: !215)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 256, elements: !216)
!216 = !{!217}
!217 = !DISubrange(count: 32)
!218 = !DILocation(line: 118, column: 10, scope: !143)
!219 = !DILocation(line: 119, column: 24, scope: !143)
!220 = !DILocation(line: 119, column: 5, scope: !143)
!221 = !DILocation(line: 120, column: 5, scope: !143)
!222 = !DILocation(line: 120, column: 19, scope: !143)
!223 = !DILocation(line: 123, column: 32, scope: !143)
!224 = !DILocation(line: 123, column: 5, scope: !143)
!225 = !DILocalVariable(name: "current", scope: !143, file: !1, line: 126, type: !22)
!226 = !DILocation(line: 126, column: 14, scope: !143)
!227 = !DILocation(line: 126, column: 29, scope: !143)
!228 = !DILocation(line: 127, column: 5, scope: !143)
!229 = !DILocation(line: 127, column: 12, scope: !143)
!230 = !DILocation(line: 127, column: 20, scope: !143)
!231 = !DILocalVariable(name: "next", scope: !232, file: !1, line: 128, type: !22)
!232 = distinct !DILexicalBlock(scope: !143, file: !1, line: 127, column: 29)
!233 = !DILocation(line: 128, column: 18, scope: !232)
!234 = !DILocation(line: 128, column: 25, scope: !232)
!235 = !DILocation(line: 128, column: 34, scope: !232)
!236 = !DILocation(line: 129, column: 14, scope: !232)
!237 = !DILocation(line: 129, column: 9, scope: !232)
!238 = !DILocation(line: 130, column: 19, scope: !232)
!239 = !DILocation(line: 130, column: 17, scope: !232)
!240 = distinct !{!240, !228, !241, !204}
!241 = !DILocation(line: 131, column: 5, scope: !143)
!242 = !DILocation(line: 133, column: 5, scope: !143)
!243 = distinct !DISubprogram(name: "memset", scope: !244, file: !244, line: 12, type: !245, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !46)
!244 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!245 = !DISubroutineType(types: !246)
!246 = !{!8, !8, !43, !247}
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !248, line: 46, baseType: !249)
!248 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!249 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!250 = !DILocalVariable(name: "dst", arg: 1, scope: !243, file: !244, line: 12, type: !8)
!251 = !DILocation(line: 12, column: 20, scope: !243)
!252 = !DILocalVariable(name: "s", arg: 2, scope: !243, file: !244, line: 12, type: !43)
!253 = !DILocation(line: 12, column: 29, scope: !243)
!254 = !DILocalVariable(name: "count", arg: 3, scope: !243, file: !244, line: 12, type: !247)
!255 = !DILocation(line: 12, column: 39, scope: !243)
!256 = !DILocalVariable(name: "a", scope: !243, file: !244, line: 13, type: !257)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!258 = !DILocation(line: 13, column: 9, scope: !243)
!259 = !DILocation(line: 13, column: 13, scope: !243)
!260 = !DILocation(line: 14, column: 3, scope: !243)
!261 = !DILocation(line: 14, column: 15, scope: !243)
!262 = !DILocation(line: 14, column: 18, scope: !243)
!263 = !DILocation(line: 15, column: 12, scope: !243)
!264 = !DILocation(line: 15, column: 7, scope: !243)
!265 = !DILocation(line: 15, column: 10, scope: !243)
!266 = distinct !{!266, !260, !263, !204}
!267 = !DILocation(line: 16, column: 10, scope: !243)
!268 = !DILocation(line: 16, column: 3, scope: !243)

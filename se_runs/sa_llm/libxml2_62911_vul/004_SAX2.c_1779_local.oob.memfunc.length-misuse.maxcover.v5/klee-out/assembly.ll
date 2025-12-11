; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/004_SAX2.c_1779_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/004_SAX2.c_1779_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDict = type { i32 }
%struct._xmlParserCtxt = type { i32, %struct._xmlDict* }
%struct._xmlNode = type { i8* }

@.str = private unnamed_addr constant [19 x i8] c"dict_lookup_result\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"(len < (int)sizeof(void*)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/004_SAX2.c_1779_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.target_function = private unnamed_addr constant [88 x i8] c"void target_function(xmlParserCtxt *, const xmlChar *, int, xmlChar, struct _xmlNode *)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"options\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"cur\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlDictLookup(%struct._xmlDict* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !25 {
  %4 = alloca %struct._xmlDict*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct._xmlDict* %0, %struct._xmlDict** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlDict** %4, metadata !31, metadata !DIExpression()), !dbg !32
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !33, metadata !DIExpression()), !dbg !34
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i8** %7, metadata !37, metadata !DIExpression()), !dbg !38
  %8 = bitcast i8** %7 to i8*, !dbg !39
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 8, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0)), !dbg !40
  %9 = load i8*, i8** %7, align 8, !dbg !41
  %10 = icmp ne i8* %9, null, !dbg !42
  %11 = zext i1 %10 to i32, !dbg !42
  %12 = sext i32 %11 to i64, !dbg !41
  call void @klee_assume(i64 noundef %12), !dbg !43
  %13 = load i8*, i8** %7, align 8, !dbg !44
  ret i8* %13, !dbg !45
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @target_function(%struct._xmlParserCtxt* noundef %0, i8* noundef %1, i32 noundef %2, i8 noundef zeroext %3, %struct._xmlNode* noundef %4) #0 !dbg !46 {
  %6 = alloca %struct._xmlParserCtxt*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca %struct._xmlNode*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct._xmlParserCtxt* %0, %struct._xmlParserCtxt** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %6, metadata !59, metadata !DIExpression()), !dbg !60
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !61, metadata !DIExpression()), !dbg !62
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !63, metadata !DIExpression()), !dbg !64
  store i8 %3, i8* %9, align 1
  call void @llvm.dbg.declare(metadata i8* %9, metadata !65, metadata !DIExpression()), !dbg !66
  store %struct._xmlNode* %4, %struct._xmlNode** %10, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %10, metadata !67, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.declare(metadata i8** %11, metadata !69, metadata !DIExpression()), !dbg !70
  store i8* null, i8** %11, align 8, !dbg !70
  call void @llvm.dbg.declare(metadata i8** %12, metadata !71, metadata !DIExpression()), !dbg !72
  %13 = load i32, i32* %8, align 4, !dbg !73
  %14 = icmp slt i32 %13, 16, !dbg !75
  br i1 %14, label %15, label %35, !dbg !76

15:                                               ; preds = %5
  %16 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %6, align 8, !dbg !77
  %17 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %16, i32 0, i32 0, !dbg !78
  %18 = load i32, i32* %17, align 8, !dbg !78
  %19 = and i32 %18, 1, !dbg !79
  %20 = icmp ne i32 %19, 0, !dbg !79
  br i1 %20, label %21, label %35, !dbg !80

21:                                               ; preds = %15
  %22 = load %struct._xmlNode*, %struct._xmlNode** %10, align 8, !dbg !81
  %23 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %22, i32 0, i32 0, !dbg !83
  %24 = bitcast i8** %23 to i8*, !dbg !84
  store i8* %24, i8** %12, align 8, !dbg !85
  %25 = load i8*, i8** %12, align 8, !dbg !86
  %26 = load i8*, i8** %7, align 8, !dbg !87
  %27 = load i32, i32* %8, align 4, !dbg !88
  %28 = sext i32 %27 to i64, !dbg !88
  %29 = call i8* @memcpy(i8* %25, i8* %26, i64 %28), !dbg !89
  %30 = load i8*, i8** %12, align 8, !dbg !90
  %31 = load i32, i32* %8, align 4, !dbg !91
  %32 = sext i32 %31 to i64, !dbg !90
  %33 = getelementptr inbounds i8, i8* %30, i64 %32, !dbg !90
  store i8 0, i8* %33, align 1, !dbg !92
  %34 = load i8*, i8** %12, align 8, !dbg !93
  store i8* %34, i8** %11, align 8, !dbg !94
  br label %67, !dbg !95

35:                                               ; preds = %15, %5
  %36 = load i32, i32* %8, align 4, !dbg !96
  %37 = icmp sle i32 %36, 3, !dbg !98
  br i1 %37, label %38, label %66, !dbg !99

38:                                               ; preds = %35
  %39 = load i8, i8* %9, align 1, !dbg !100
  %40 = zext i8 %39 to i32, !dbg !100
  %41 = icmp eq i32 %40, 34, !dbg !101
  br i1 %41, label %59, label %42, !dbg !102

42:                                               ; preds = %38
  %43 = load i8, i8* %9, align 1, !dbg !103
  %44 = zext i8 %43 to i32, !dbg !103
  %45 = icmp eq i32 %44, 39, !dbg !104
  br i1 %45, label %59, label %46, !dbg !105

46:                                               ; preds = %42
  %47 = load i8, i8* %9, align 1, !dbg !106
  %48 = zext i8 %47 to i32, !dbg !106
  %49 = icmp eq i32 %48, 60, !dbg !107
  br i1 %49, label %50, label %66, !dbg !108

50:                                               ; preds = %46
  %51 = load i8*, i8** %7, align 8, !dbg !109
  %52 = load i32, i32* %8, align 4, !dbg !110
  %53 = add nsw i32 %52, 1, !dbg !111
  %54 = sext i32 %53 to i64, !dbg !109
  %55 = getelementptr inbounds i8, i8* %51, i64 %54, !dbg !109
  %56 = load i8, i8* %55, align 1, !dbg !109
  %57 = zext i8 %56 to i32, !dbg !109
  %58 = icmp ne i32 %57, 33, !dbg !112
  br i1 %58, label %59, label %66, !dbg !113

59:                                               ; preds = %50, %42, %38
  %60 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %6, align 8, !dbg !114
  %61 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %60, i32 0, i32 1, !dbg !116
  %62 = load %struct._xmlDict*, %struct._xmlDict** %61, align 8, !dbg !116
  %63 = load i8*, i8** %7, align 8, !dbg !117
  %64 = load i32, i32* %8, align 4, !dbg !118
  %65 = call i8* @xmlDictLookup(%struct._xmlDict* noundef %62, i8* noundef %63, i32 noundef %64), !dbg !119
  store i8* %65, i8** %11, align 8, !dbg !120
  br label %66, !dbg !121

66:                                               ; preds = %59, %50, %46, %35
  br label %67

67:                                               ; preds = %66, %21
  %68 = load i32, i32* %8, align 4, !dbg !122
  %69 = icmp slt i32 %68, 8, !dbg !122
  br i1 %69, label %70, label %72, !dbg !122

70:                                               ; preds = %67
  br i1 true, label %71, label %72, !dbg !122

71:                                               ; preds = %70
  br label %74, !dbg !122

72:                                               ; preds = %70, %67
  %73 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.3, i64 0, i64 0), i32 noundef 57, i8* noundef getelementptr inbounds ([88 x i8], [88 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !122
  br label %74, !dbg !122

74:                                               ; preds = %72, %71
  %75 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.3, i64 0, i64 0), i32 noundef 60, i8* noundef getelementptr inbounds ([88 x i8], [88 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !123
  ret void, !dbg !124
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !125 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlParserCtxt, align 8
  %3 = alloca [100 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca %struct._xmlNode, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt* %2, metadata !128, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.declare(metadata [100 x i8]* %3, metadata !130, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.declare(metadata i32* %4, metadata !135, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.declare(metadata i8* %5, metadata !137, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.declare(metadata %struct._xmlNode* %6, metadata !139, metadata !DIExpression()), !dbg !140
  %7 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 0, !dbg !141
  %8 = bitcast i32* %7 to i8*, !dbg !142
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)), !dbg !143
  %9 = call noalias i8* @malloc(i64 noundef 4) #8, !dbg !144
  %10 = bitcast i8* %9 to %struct._xmlDict*, !dbg !145
  %11 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 1, !dbg !146
  store %struct._xmlDict* %10, %struct._xmlDict** %11, align 8, !dbg !147
  %12 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0, !dbg !148
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 100, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)), !dbg !149
  %13 = bitcast i32* %4 to i8*, !dbg !150
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)), !dbg !151
  %14 = load i32, i32* %4, align 4, !dbg !152
  %15 = icmp sge i32 %14, 0, !dbg !153
  %16 = zext i1 %15 to i32, !dbg !153
  %17 = sext i32 %16 to i64, !dbg !152
  call void @klee_assume(i64 noundef %17), !dbg !154
  %18 = load i32, i32* %4, align 4, !dbg !155
  %19 = icmp slt i32 %18, 100, !dbg !156
  %20 = zext i1 %19 to i32, !dbg !156
  %21 = sext i32 %20 to i64, !dbg !155
  call void @klee_assume(i64 noundef %21), !dbg !157
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)), !dbg !158
  %22 = bitcast %struct._xmlNode* %6 to i8*, !dbg !159
  %23 = call i8* @memset(i8* %22, i32 0, i64 8), !dbg !159
  %24 = load i32, i32* %4, align 4, !dbg !160
  %25 = icmp slt i32 %24, 16, !dbg !161
  %26 = zext i1 %25 to i32, !dbg !161
  %27 = sext i32 %26 to i64, !dbg !160
  call void @klee_assume(i64 noundef %27), !dbg !162
  %28 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 0, !dbg !163
  %29 = load i32, i32* %28, align 8, !dbg !163
  %30 = and i32 %29, 1, !dbg !164
  %31 = sext i32 %30 to i64, !dbg !165
  call void @klee_assume(i64 noundef %31), !dbg !166
  %32 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0, !dbg !167
  %33 = load i32, i32* %4, align 4, !dbg !168
  %34 = load i8, i8* %5, align 1, !dbg !169
  call void @target_function(%struct._xmlParserCtxt* noundef %2, i8* noundef %32, i32 noundef %33, i8 noundef zeroext %34, %struct._xmlNode* noundef %6), !dbg !170
  %35 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 1, !dbg !171
  %36 = load %struct._xmlDict*, %struct._xmlDict** %35, align 8, !dbg !171
  %37 = bitcast %struct._xmlDict* %36 to i8*, !dbg !172
  call void @free(i8* noundef %37) #8, !dbg !173
  ret i32 0, !dbg !174
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nounwind
declare void @free(i8* noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !175 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !184, metadata !DIExpression()), !dbg !185
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !186, metadata !DIExpression()), !dbg !187
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !188, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.declare(metadata i8** %7, metadata !190, metadata !DIExpression()), !dbg !193
  %9 = load i8*, i8** %4, align 8, !dbg !194
  store i8* %9, i8** %7, align 8, !dbg !193
  call void @llvm.dbg.declare(metadata i8** %8, metadata !195, metadata !DIExpression()), !dbg !198
  %10 = load i8*, i8** %5, align 8, !dbg !199
  store i8* %10, i8** %8, align 8, !dbg !198
  br label %11, !dbg !200

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !201
  %13 = add i64 %12, -1, !dbg !201
  store i64 %13, i64* %6, align 8, !dbg !201
  %14 = icmp ugt i64 %12, 0, !dbg !202
  br i1 %14, label %15, label %21, !dbg !200

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !203
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !203
  store i8* %17, i8** %8, align 8, !dbg !203
  %18 = load i8, i8* %16, align 1, !dbg !204
  %19 = load i8*, i8** %7, align 8, !dbg !205
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !205
  store i8* %20, i8** %7, align 8, !dbg !205
  store i8 %18, i8* %19, align 1, !dbg !206
  br label %11, !dbg !200, !llvm.loop !207

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !209
  ret i8* %22, !dbg !210
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #7 !dbg !211 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !215, metadata !DIExpression()), !dbg !216
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !217, metadata !DIExpression()), !dbg !218
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !219, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.declare(metadata i8** %7, metadata !221, metadata !DIExpression()), !dbg !222
  %8 = load i8*, i8** %4, align 8, !dbg !223
  store i8* %8, i8** %7, align 8, !dbg !222
  br label %9, !dbg !224

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !225
  %11 = add i64 %10, -1, !dbg !225
  store i64 %11, i64* %6, align 8, !dbg !225
  %12 = icmp ugt i64 %10, 0, !dbg !226
  br i1 %12, label %13, label %18, !dbg !224

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !227
  %15 = trunc i32 %14 to i8, !dbg !227
  %16 = load i8*, i8** %7, align 8, !dbg !228
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !228
  store i8* %17, i8** %7, align 8, !dbg !228
  store i8 %15, i8* %16, align 1, !dbg !229
  br label %9, !dbg !224, !llvm.loop !230

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !231
  ret i8* %19, !dbg !232
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0, !13, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24, !24, !24}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/004_SAX2.c_1779_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "43b49f75a0e40606ba5ea97c76a8b78a")
!2 = !{!3, !4, !5, !8}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !1, line: 12, baseType: !7)
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !1, line: 10, baseType: !10)
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !1, line: 24, size: 32, elements: !11)
!11 = !{!12}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !10, file: !1, line: 25, baseType: !4, size: 32)
!13 = distinct !DICompileUnit(language: DW_LANG_C99, file: !14, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!14 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!15 = distinct !DICompileUnit(language: DW_LANG_C99, file: !16, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!16 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!17 = !{i32 7, !"Dwarf Version", i32 5}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 4}
!20 = !{i32 7, !"PIC Level", i32 2}
!21 = !{i32 7, !"PIE Level", i32 2}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"Ubuntu clang version 14.0.6"}
!25 = distinct !DISubprogram(name: "xmlDictLookup", scope: !1, file: !1, line: 15, type: !26, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !30)
!26 = !DISubroutineType(types: !27)
!27 = !{!5, !8, !28, !4}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!30 = !{}
!31 = !DILocalVariable(name: "dict", arg: 1, scope: !25, file: !1, line: 15, type: !8)
!32 = !DILocation(line: 15, column: 33, scope: !25)
!33 = !DILocalVariable(name: "str", arg: 2, scope: !25, file: !1, line: 15, type: !28)
!34 = !DILocation(line: 15, column: 54, scope: !25)
!35 = !DILocalVariable(name: "len", arg: 3, scope: !25, file: !1, line: 15, type: !4)
!36 = !DILocation(line: 15, column: 63, scope: !25)
!37 = !DILocalVariable(name: "result", scope: !25, file: !1, line: 17, type: !5)
!38 = !DILocation(line: 17, column: 14, scope: !25)
!39 = !DILocation(line: 18, column: 24, scope: !25)
!40 = !DILocation(line: 18, column: 5, scope: !25)
!41 = !DILocation(line: 19, column: 17, scope: !25)
!42 = !DILocation(line: 19, column: 24, scope: !25)
!43 = !DILocation(line: 19, column: 5, scope: !25)
!44 = !DILocation(line: 20, column: 12, scope: !25)
!45 = !DILocation(line: 20, column: 5, scope: !25)
!46 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 38, type: !47, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !30)
!47 = !DISubroutineType(types: !48)
!48 = !{null, !49, !28, !4, !6, !55}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxt", file: !1, line: 11, baseType: !51)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserCtxt", file: !1, line: 32, size: 128, elements: !52)
!52 = !{!53, !54}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !51, file: !1, line: 33, baseType: !4, size: 32)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !51, file: !1, line: 34, baseType: !8, size: 64, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 28, size: 64, elements: !57)
!57 = !{!58}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !56, file: !1, line: 29, baseType: !3, size: 64)
!59 = !DILocalVariable(name: "ctxt", arg: 1, scope: !46, file: !1, line: 38, type: !49)
!60 = !DILocation(line: 38, column: 37, scope: !46)
!61 = !DILocalVariable(name: "str", arg: 2, scope: !46, file: !1, line: 38, type: !28)
!62 = !DILocation(line: 38, column: 58, scope: !46)
!63 = !DILocalVariable(name: "len", arg: 3, scope: !46, file: !1, line: 38, type: !4)
!64 = !DILocation(line: 38, column: 67, scope: !46)
!65 = !DILocalVariable(name: "cur", arg: 4, scope: !46, file: !1, line: 38, type: !6)
!66 = !DILocation(line: 38, column: 80, scope: !46)
!67 = !DILocalVariable(name: "ret", arg: 5, scope: !46, file: !1, line: 38, type: !55)
!68 = !DILocation(line: 38, column: 102, scope: !46)
!69 = !DILocalVariable(name: "intern", scope: !46, file: !1, line: 39, type: !5)
!70 = !DILocation(line: 39, column: 14, scope: !46)
!71 = !DILocalVariable(name: "tmp", scope: !46, file: !1, line: 40, type: !5)
!72 = !DILocation(line: 40, column: 14, scope: !46)
!73 = !DILocation(line: 42, column: 10, scope: !74)
!74 = distinct !DILexicalBlock(scope: !46, file: !1, line: 42, column: 9)
!75 = !DILocation(line: 42, column: 14, scope: !74)
!76 = !DILocation(line: 42, column: 42, scope: !74)
!77 = !DILocation(line: 43, column: 10, scope: !74)
!78 = !DILocation(line: 43, column: 16, scope: !74)
!79 = !DILocation(line: 43, column: 24, scope: !74)
!80 = !DILocation(line: 42, column: 9, scope: !46)
!81 = !DILocation(line: 45, column: 27, scope: !82)
!82 = distinct !DILexicalBlock(scope: !74, file: !1, line: 43, column: 30)
!83 = !DILocation(line: 45, column: 32, scope: !82)
!84 = !DILocation(line: 45, column: 15, scope: !82)
!85 = !DILocation(line: 45, column: 13, scope: !82)
!86 = !DILocation(line: 46, column: 16, scope: !82)
!87 = !DILocation(line: 46, column: 21, scope: !82)
!88 = !DILocation(line: 46, column: 26, scope: !82)
!89 = !DILocation(line: 46, column: 9, scope: !82)
!90 = !DILocation(line: 47, column: 9, scope: !82)
!91 = !DILocation(line: 47, column: 13, scope: !82)
!92 = !DILocation(line: 47, column: 18, scope: !82)
!93 = !DILocation(line: 48, column: 18, scope: !82)
!94 = !DILocation(line: 48, column: 16, scope: !82)
!95 = !DILocation(line: 49, column: 5, scope: !82)
!96 = !DILocation(line: 49, column: 17, scope: !97)
!97 = distinct !DILexicalBlock(scope: !74, file: !1, line: 49, column: 16)
!98 = !DILocation(line: 49, column: 21, scope: !97)
!99 = !DILocation(line: 49, column: 27, scope: !97)
!100 = !DILocation(line: 49, column: 32, scope: !97)
!101 = !DILocation(line: 49, column: 36, scope: !97)
!102 = !DILocation(line: 49, column: 44, scope: !97)
!103 = !DILocation(line: 49, column: 48, scope: !97)
!104 = !DILocation(line: 49, column: 52, scope: !97)
!105 = !DILocation(line: 49, column: 61, scope: !97)
!106 = !DILocation(line: 50, column: 18, scope: !97)
!107 = !DILocation(line: 50, column: 22, scope: !97)
!108 = !DILocation(line: 50, column: 30, scope: !97)
!109 = !DILocation(line: 50, column: 34, scope: !97)
!110 = !DILocation(line: 50, column: 38, scope: !97)
!111 = !DILocation(line: 50, column: 42, scope: !97)
!112 = !DILocation(line: 50, column: 47, scope: !97)
!113 = !DILocation(line: 49, column: 16, scope: !74)
!114 = !DILocation(line: 51, column: 32, scope: !115)
!115 = distinct !DILexicalBlock(scope: !97, file: !1, line: 50, column: 58)
!116 = !DILocation(line: 51, column: 38, scope: !115)
!117 = !DILocation(line: 51, column: 44, scope: !115)
!118 = !DILocation(line: 51, column: 49, scope: !115)
!119 = !DILocation(line: 51, column: 18, scope: !115)
!120 = !DILocation(line: 51, column: 16, scope: !115)
!121 = !DILocation(line: 52, column: 5, scope: !115)
!122 = !DILocation(line: 57, column: 5, scope: !46)
!123 = !DILocation(line: 60, column: 5, scope: !46)
!124 = !DILocation(line: 61, column: 1, scope: !46)
!125 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 63, type: !126, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !30)
!126 = !DISubroutineType(types: !127)
!127 = !{!4}
!128 = !DILocalVariable(name: "ctxt", scope: !125, file: !1, line: 65, type: !50)
!129 = !DILocation(line: 65, column: 19, scope: !125)
!130 = !DILocalVariable(name: "str", scope: !125, file: !1, line: 66, type: !131)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 800, elements: !132)
!132 = !{!133}
!133 = !DISubrange(count: 100)
!134 = !DILocation(line: 66, column: 13, scope: !125)
!135 = !DILocalVariable(name: "len", scope: !125, file: !1, line: 67, type: !4)
!136 = !DILocation(line: 67, column: 9, scope: !125)
!137 = !DILocalVariable(name: "cur", scope: !125, file: !1, line: 68, type: !6)
!138 = !DILocation(line: 68, column: 13, scope: !125)
!139 = !DILocalVariable(name: "node", scope: !125, file: !1, line: 69, type: !56)
!140 = !DILocation(line: 69, column: 21, scope: !125)
!141 = !DILocation(line: 72, column: 30, scope: !125)
!142 = !DILocation(line: 72, column: 24, scope: !125)
!143 = !DILocation(line: 72, column: 5, scope: !125)
!144 = !DILocation(line: 73, column: 27, scope: !125)
!145 = !DILocation(line: 73, column: 17, scope: !125)
!146 = !DILocation(line: 73, column: 10, scope: !125)
!147 = !DILocation(line: 73, column: 15, scope: !125)
!148 = !DILocation(line: 76, column: 24, scope: !125)
!149 = !DILocation(line: 76, column: 5, scope: !125)
!150 = !DILocation(line: 79, column: 24, scope: !125)
!151 = !DILocation(line: 79, column: 5, scope: !125)
!152 = !DILocation(line: 80, column: 17, scope: !125)
!153 = !DILocation(line: 80, column: 21, scope: !125)
!154 = !DILocation(line: 80, column: 5, scope: !125)
!155 = !DILocation(line: 81, column: 17, scope: !125)
!156 = !DILocation(line: 81, column: 21, scope: !125)
!157 = !DILocation(line: 81, column: 5, scope: !125)
!158 = !DILocation(line: 84, column: 5, scope: !125)
!159 = !DILocation(line: 87, column: 5, scope: !125)
!160 = !DILocation(line: 91, column: 17, scope: !125)
!161 = !DILocation(line: 91, column: 21, scope: !125)
!162 = !DILocation(line: 91, column: 5, scope: !125)
!163 = !DILocation(line: 94, column: 22, scope: !125)
!164 = !DILocation(line: 94, column: 30, scope: !125)
!165 = !DILocation(line: 94, column: 17, scope: !125)
!166 = !DILocation(line: 94, column: 5, scope: !125)
!167 = !DILocation(line: 97, column: 28, scope: !125)
!168 = !DILocation(line: 97, column: 33, scope: !125)
!169 = !DILocation(line: 97, column: 38, scope: !125)
!170 = !DILocation(line: 97, column: 5, scope: !125)
!171 = !DILocation(line: 99, column: 15, scope: !125)
!172 = !DILocation(line: 99, column: 10, scope: !125)
!173 = !DILocation(line: 99, column: 5, scope: !125)
!174 = !DILocation(line: 100, column: 5, scope: !125)
!175 = distinct !DISubprogram(name: "memcpy", scope: !176, file: !176, line: 12, type: !177, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !30)
!176 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!177 = !DISubroutineType(types: !178)
!178 = !{!3, !3, !179, !181}
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !182, line: 46, baseType: !183)
!182 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!183 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!184 = !DILocalVariable(name: "destaddr", arg: 1, scope: !175, file: !176, line: 12, type: !3)
!185 = !DILocation(line: 12, column: 20, scope: !175)
!186 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !175, file: !176, line: 12, type: !179)
!187 = !DILocation(line: 12, column: 42, scope: !175)
!188 = !DILocalVariable(name: "len", arg: 3, scope: !175, file: !176, line: 12, type: !181)
!189 = !DILocation(line: 12, column: 58, scope: !175)
!190 = !DILocalVariable(name: "dest", scope: !175, file: !176, line: 13, type: !191)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!193 = !DILocation(line: 13, column: 9, scope: !175)
!194 = !DILocation(line: 13, column: 16, scope: !175)
!195 = !DILocalVariable(name: "src", scope: !175, file: !176, line: 14, type: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!198 = !DILocation(line: 14, column: 15, scope: !175)
!199 = !DILocation(line: 14, column: 21, scope: !175)
!200 = !DILocation(line: 16, column: 3, scope: !175)
!201 = !DILocation(line: 16, column: 13, scope: !175)
!202 = !DILocation(line: 16, column: 16, scope: !175)
!203 = !DILocation(line: 17, column: 19, scope: !175)
!204 = !DILocation(line: 17, column: 15, scope: !175)
!205 = !DILocation(line: 17, column: 10, scope: !175)
!206 = !DILocation(line: 17, column: 13, scope: !175)
!207 = distinct !{!207, !200, !203, !208}
!208 = !{!"llvm.loop.mustprogress"}
!209 = !DILocation(line: 18, column: 10, scope: !175)
!210 = !DILocation(line: 18, column: 3, scope: !175)
!211 = distinct !DISubprogram(name: "memset", scope: !212, file: !212, line: 12, type: !213, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !30)
!212 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!213 = !DISubroutineType(types: !214)
!214 = !{!3, !3, !4, !181}
!215 = !DILocalVariable(name: "dst", arg: 1, scope: !211, file: !212, line: 12, type: !3)
!216 = !DILocation(line: 12, column: 20, scope: !211)
!217 = !DILocalVariable(name: "s", arg: 2, scope: !211, file: !212, line: 12, type: !4)
!218 = !DILocation(line: 12, column: 29, scope: !211)
!219 = !DILocalVariable(name: "count", arg: 3, scope: !211, file: !212, line: 12, type: !181)
!220 = !DILocation(line: 12, column: 39, scope: !211)
!221 = !DILocalVariable(name: "a", scope: !211, file: !212, line: 13, type: !191)
!222 = !DILocation(line: 13, column: 9, scope: !211)
!223 = !DILocation(line: 13, column: 13, scope: !211)
!224 = !DILocation(line: 14, column: 3, scope: !211)
!225 = !DILocation(line: 14, column: 15, scope: !211)
!226 = !DILocation(line: 14, column: 18, scope: !211)
!227 = !DILocation(line: 15, column: 12, scope: !211)
!228 = !DILocation(line: 15, column: 7, scope: !211)
!229 = !DILocation(line: 15, column: 10, scope: !211)
!230 = distinct !{!230, !224, !227, !208}
!231 = !DILocation(line: 16, column: 10, scope: !211)
!232 = !DILocation(line: 16, column: 3, scope: !211)

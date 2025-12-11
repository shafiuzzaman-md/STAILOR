; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/365_xpath.c_2650_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/365_xpath.c_2650_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlXPathParserContext = type { %struct._xmlXPathContext*, %struct._xmlNode*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8* }
%struct._xmlXPathContext = type { %struct._xmlNode*, i32 }
%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8* }
%struct._xmlDoc = type opaque

@.str = private unnamed_addr constant [5 x i8] c"work\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"(buffersize - 1 >= 0 && buffersize - 1 < 1024) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_62911_vul/365_xpath.c_2650_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlXPathCmpNodesExt = private unnamed_addr constant [59 x i8] c"int xmlXPathCmpNodesExt(xmlXPathParserContext *, int, int)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"strict\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlXPathCmpNodesExt(%struct._xmlXPathParserContext* noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !14 {
  %4 = alloca %struct._xmlXPathParserContext*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca [1024 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct._xmlXPathParserContext* %0, %struct._xmlXPathParserContext** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlXPathParserContext** %4, metadata !62, metadata !DIExpression()), !dbg !63
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !64, metadata !DIExpression()), !dbg !65
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !66, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.declare(metadata i8** %7, metadata !68, metadata !DIExpression()), !dbg !69
  store i8* null, i8** %7, align 8, !dbg !69
  call void @llvm.dbg.declare(metadata [1024 x i8]* %8, metadata !70, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.declare(metadata i32* %9, metadata !75, metadata !DIExpression()), !dbg !76
  store i32 1024, i32* %9, align 4, !dbg !76
  call void @llvm.dbg.declare(metadata i64* %10, metadata !77, metadata !DIExpression()), !dbg !81
  %11 = load %struct._xmlXPathParserContext*, %struct._xmlXPathParserContext** %4, align 8, !dbg !82
  %12 = icmp ne %struct._xmlXPathParserContext* %11, null, !dbg !82
  br i1 %12, label %13, label %61, !dbg !84

13:                                               ; preds = %3
  %14 = load %struct._xmlXPathParserContext*, %struct._xmlXPathParserContext** %4, align 8, !dbg !85
  %15 = getelementptr inbounds %struct._xmlXPathParserContext, %struct._xmlXPathParserContext* %14, i32 0, i32 1, !dbg !86
  %16 = load %struct._xmlNode*, %struct._xmlNode** %15, align 8, !dbg !86
  %17 = icmp ne %struct._xmlNode* %16, null, !dbg !85
  br i1 %17, label %18, label %61, !dbg !87

18:                                               ; preds = %13
  %19 = call noalias i8* @malloc(i64 noundef 1024) #9, !dbg !88
  store i8* %19, i8** %7, align 8, !dbg !90
  %20 = load i8*, i8** %7, align 8, !dbg !91
  call void @klee_make_symbolic(i8* noundef %20, i64 noundef 1024, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !92
  %21 = load i8*, i8** %7, align 8, !dbg !93
  %22 = getelementptr inbounds i8, i8* %21, i64 1023, !dbg !93
  %23 = load i8, i8* %22, align 1, !dbg !93
  %24 = sext i8 %23 to i32, !dbg !93
  %25 = icmp eq i32 %24, 0, !dbg !94
  %26 = zext i1 %25 to i32, !dbg !94
  %27 = sext i32 %26 to i64, !dbg !93
  call void @klee_assume(i64 noundef %27), !dbg !95
  %28 = load i8*, i8** %7, align 8, !dbg !96
  %29 = call i64 @strlen(i8* noundef %28) #10, !dbg !97
  %30 = add i64 %29, 1, !dbg !98
  store i64 %30, i64* %10, align 8, !dbg !99
  %31 = load i64, i64* %10, align 8, !dbg !100
  %32 = load i32, i32* %9, align 4, !dbg !102
  %33 = sext i32 %32 to i64, !dbg !102
  %34 = icmp ugt i64 %31, %33, !dbg !103
  br i1 %34, label %35, label %56, !dbg !104

35:                                               ; preds = %18
  %36 = load i8*, i8** %7, align 8, !dbg !105
  %37 = load i32, i32* %9, align 4, !dbg !107
  %38 = sub nsw i32 %37, 1, !dbg !108
  %39 = sext i32 %38 to i64, !dbg !105
  %40 = getelementptr inbounds i8, i8* %36, i64 %39, !dbg !105
  store i8 0, i8* %40, align 1, !dbg !109
  %41 = load i32, i32* %9, align 4, !dbg !110
  %42 = sub nsw i32 %41, 1, !dbg !110
  %43 = icmp sge i32 %42, 0, !dbg !110
  br i1 %43, label %44, label %50, !dbg !110

44:                                               ; preds = %35
  %45 = load i32, i32* %9, align 4, !dbg !110
  %46 = sub nsw i32 %45, 1, !dbg !110
  %47 = icmp slt i32 %46, 1024, !dbg !110
  br i1 %47, label %48, label %50, !dbg !110

48:                                               ; preds = %44
  br i1 true, label %49, label %50, !dbg !110

49:                                               ; preds = %48
  br label %52, !dbg !110

50:                                               ; preds = %48, %44, %35
  %51 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.3, i64 0, i64 0), i32 noundef 73, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.xmlXPathCmpNodesExt, i64 0, i64 0)), !dbg !110
  br label %52, !dbg !110

52:                                               ; preds = %50, %49
  %53 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.3, i64 0, i64 0), i32 noundef 76, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.xmlXPathCmpNodesExt, i64 0, i64 0)), !dbg !111
  %54 = load i32, i32* %9, align 4, !dbg !112
  %55 = sext i32 %54 to i64, !dbg !112
  store i64 %55, i64* %10, align 8, !dbg !113
  br label %56, !dbg !114

56:                                               ; preds = %52, %18
  %57 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0, !dbg !115
  %58 = load i8*, i8** %7, align 8, !dbg !116
  %59 = load i64, i64* %10, align 8, !dbg !117
  %60 = call i8* @memmove(i8* %57, i8* %58, i64 %59), !dbg !115
  br label %61, !dbg !118

61:                                               ; preds = %56, %13, %3
  %62 = load i8*, i8** %7, align 8, !dbg !119
  %63 = icmp ne i8* %62, null, !dbg !119
  br i1 %63, label %64, label %66, !dbg !121

64:                                               ; preds = %61
  %65 = load i8*, i8** %7, align 8, !dbg !122
  call void @free(i8* noundef %65) #9, !dbg !123
  br label %66, !dbg !123

66:                                               ; preds = %64, %61
  ret i32 0, !dbg !124
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !125 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlXPathParserContext, align 8
  %3 = alloca %struct._xmlNode, align 8
  %4 = alloca %struct._xmlXPathContext, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlXPathParserContext* %2, metadata !128, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.declare(metadata %struct._xmlNode* %3, metadata !130, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.declare(metadata %struct._xmlXPathContext* %4, metadata !132, metadata !DIExpression()), !dbg !133
  %7 = bitcast %struct._xmlXPathParserContext* %2 to i8*, !dbg !134
  %8 = call i8* @memset(i8* %7, i32 0, i64 88), !dbg !134
  %9 = bitcast %struct._xmlNode* %3 to i8*, !dbg !135
  %10 = call i8* @memset(i8* %9, i32 0, i64 80), !dbg !135
  %11 = bitcast %struct._xmlXPathContext* %4 to i8*, !dbg !136
  %12 = call i8* @memset(i8* %11, i32 0, i64 16), !dbg !136
  %13 = getelementptr inbounds %struct._xmlXPathParserContext, %struct._xmlXPathParserContext* %2, i32 0, i32 0, !dbg !137
  store %struct._xmlXPathContext* %4, %struct._xmlXPathContext** %13, align 8, !dbg !138
  %14 = getelementptr inbounds %struct._xmlXPathParserContext, %struct._xmlXPathParserContext* %2, i32 0, i32 1, !dbg !139
  store %struct._xmlNode* %3, %struct._xmlNode** %14, align 8, !dbg !140
  %15 = getelementptr inbounds %struct._xmlXPathContext, %struct._xmlXPathContext* %4, i32 0, i32 0, !dbg !141
  store %struct._xmlNode* %3, %struct._xmlNode** %15, align 8, !dbg !142
  call void @llvm.dbg.declare(metadata i32* %5, metadata !143, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.declare(metadata i32* %6, metadata !145, metadata !DIExpression()), !dbg !146
  %16 = bitcast i32* %5 to i8*, !dbg !147
  call void @klee_make_symbolic(i8* noundef %16, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)), !dbg !148
  %17 = bitcast i32* %6 to i8*, !dbg !149
  call void @klee_make_symbolic(i8* noundef %17, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)), !dbg !150
  %18 = load i32, i32* %5, align 4, !dbg !151
  %19 = load i32, i32* %6, align 4, !dbg !152
  %20 = call i32 @xmlXPathCmpNodesExt(%struct._xmlXPathParserContext* noundef %2, i32 noundef %18, i32 noundef %19), !dbg !153
  ret i32 0, !dbg !154
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memmove(i8* noundef %0, i8* noundef %1, i64 noundef %2) #8 !dbg !155 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !161, metadata !DIExpression()), !dbg !162
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !163, metadata !DIExpression()), !dbg !164
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !165, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.declare(metadata i8** %8, metadata !167, metadata !DIExpression()), !dbg !168
  %10 = load i8*, i8** %5, align 8, !dbg !169
  store i8* %10, i8** %8, align 8, !dbg !168
  call void @llvm.dbg.declare(metadata i8** %9, metadata !170, metadata !DIExpression()), !dbg !171
  %11 = load i8*, i8** %6, align 8, !dbg !172
  store i8* %11, i8** %9, align 8, !dbg !171
  %12 = load i8*, i8** %6, align 8, !dbg !173
  %13 = load i8*, i8** %5, align 8, !dbg !175
  %14 = icmp eq i8* %12, %13, !dbg !176
  br i1 %14, label %15, label %17, !dbg !177

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8, !dbg !178
  store i8* %16, i8** %4, align 8, !dbg !179
  br label %52, !dbg !179

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8, !dbg !180
  %19 = load i8*, i8** %5, align 8, !dbg !182
  %20 = icmp ugt i8* %18, %19, !dbg !183
  br i1 %20, label %21, label %31, !dbg !184

21:                                               ; preds = %17, %25
  %22 = load i64, i64* %7, align 8, !dbg !185
  %23 = add i64 %22, -1, !dbg !185
  store i64 %23, i64* %7, align 8, !dbg !185
  %24 = icmp ne i64 %22, 0, !dbg !187
  br i1 %24, label %25, label %50, !dbg !187

25:                                               ; preds = %21
  %26 = load i8*, i8** %9, align 8, !dbg !188
  %27 = getelementptr inbounds i8, i8* %26, i32 1, !dbg !188
  store i8* %27, i8** %9, align 8, !dbg !188
  %28 = load i8, i8* %26, align 1, !dbg !189
  %29 = load i8*, i8** %8, align 8, !dbg !190
  %30 = getelementptr inbounds i8, i8* %29, i32 1, !dbg !190
  store i8* %30, i8** %8, align 8, !dbg !190
  store i8 %28, i8* %29, align 1, !dbg !191
  br label %21, !dbg !187, !llvm.loop !192

31:                                               ; preds = %17
  %32 = load i64, i64* %7, align 8, !dbg !194
  %33 = sub i64 %32, 1, !dbg !196
  %34 = load i8*, i8** %8, align 8, !dbg !197
  %35 = getelementptr inbounds i8, i8* %34, i64 %33, !dbg !197
  store i8* %35, i8** %8, align 8, !dbg !197
  %36 = load i64, i64* %7, align 8, !dbg !198
  %37 = sub i64 %36, 1, !dbg !199
  %38 = load i8*, i8** %9, align 8, !dbg !200
  %39 = getelementptr inbounds i8, i8* %38, i64 %37, !dbg !200
  store i8* %39, i8** %9, align 8, !dbg !200
  br label %40, !dbg !201

40:                                               ; preds = %44, %31
  %41 = load i64, i64* %7, align 8, !dbg !202
  %42 = add i64 %41, -1, !dbg !202
  store i64 %42, i64* %7, align 8, !dbg !202
  %43 = icmp ne i64 %41, 0, !dbg !201
  br i1 %43, label %44, label %50, !dbg !201

44:                                               ; preds = %40
  %45 = load i8*, i8** %9, align 8, !dbg !203
  %46 = getelementptr inbounds i8, i8* %45, i32 -1, !dbg !203
  store i8* %46, i8** %9, align 8, !dbg !203
  %47 = load i8, i8* %45, align 1, !dbg !204
  %48 = load i8*, i8** %8, align 8, !dbg !205
  %49 = getelementptr inbounds i8, i8* %48, i32 -1, !dbg !205
  store i8* %49, i8** %8, align 8, !dbg !205
  store i8 %47, i8* %48, align 1, !dbg !206
  br label %40, !dbg !201, !llvm.loop !207

50:                                               ; preds = %40, %21
  %51 = load i8*, i8** %5, align 8, !dbg !208
  store i8* %51, i8** %4, align 8, !dbg !209
  br label %52, !dbg !209

52:                                               ; preds = %50, %15
  %53 = load i8*, i8** %4, align 8, !dbg !210
  ret i8* %53, !dbg !210
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #8 !dbg !211 {
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
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13, !13, !13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/365_xpath.c_2650_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "ab8b2462d6e79a1a9291b06163983426")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memmove.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "6cd27189cdce56ce74ae860a315e13f2")
!4 = distinct !DICompileUnit(language: DW_LANG_C99, file: !5, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!5 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 7, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"Ubuntu clang version 14.0.6"}
!14 = distinct !DISubprogram(name: "xmlXPathCmpNodesExt", scope: !1, file: !1, line: 51, type: !15, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !61)
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !18, !17, !17}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathParserContext", file: !1, line: 12, baseType: !20)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathParserContext", file: !1, line: 36, size: 704, elements: !21)
!21 = !{!22, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !20, file: !1, line: 37, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathContext", file: !1, line: 11, baseType: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathContext", file: !1, line: 31, size: 128, elements: !26)
!26 = !{!27, !50}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !25, file: !1, line: 32, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 10, baseType: !30)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 18, size: 640, elements: !31)
!31 = !{!32, !34, !35, !39, !41, !42, !43, !44, !45, !48}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !30, file: !1, line: 19, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !30, file: !1, line: 20, baseType: !17, size: 32, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !30, file: !1, line: 21, baseType: !36, size: 64, offset: 128)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !30, file: !1, line: 22, baseType: !40, size: 64, offset: 192)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !30, file: !1, line: 23, baseType: !40, size: 64, offset: 256)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !30, file: !1, line: 24, baseType: !40, size: 64, offset: 320)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !30, file: !1, line: 25, baseType: !40, size: 64, offset: 384)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !30, file: !1, line: 26, baseType: !40, size: 64, offset: 448)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !30, file: !1, line: 27, baseType: !46, size: 64, offset: 512)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !1, line: 27, flags: DIFlagFwdDecl)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !30, file: !1, line: 28, baseType: !49, size: 64, offset: 576)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "proximityPosition", scope: !25, file: !1, line: 33, baseType: !17, size: 32, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !20, file: !1, line: 38, baseType: !28, size: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "valueFrame", scope: !20, file: !1, line: 39, baseType: !17, size: 32, offset: 128)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !20, file: !1, line: 40, baseType: !33, size: 64, offset: 192)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "valueNr", scope: !20, file: !1, line: 41, baseType: !33, size: 64, offset: 256)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "valueTab", scope: !20, file: !1, line: 42, baseType: !33, size: 64, offset: 320)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !20, file: !1, line: 43, baseType: !33, size: 64, offset: 384)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !20, file: !1, line: 44, baseType: !36, size: 64, offset: 448)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !20, file: !1, line: 45, baseType: !36, size: 64, offset: 512)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !20, file: !1, line: 46, baseType: !17, size: 32, offset: 576)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !20, file: !1, line: 47, baseType: !33, size: 64, offset: 640)
!61 = !{}
!62 = !DILocalVariable(name: "ctxt", arg: 1, scope: !14, file: !1, line: 51, type: !18)
!63 = !DILocation(line: 51, column: 48, scope: !14)
!64 = !DILocalVariable(name: "inf", arg: 2, scope: !14, file: !1, line: 51, type: !17)
!65 = !DILocation(line: 51, column: 58, scope: !14)
!66 = !DILocalVariable(name: "strict", arg: 3, scope: !14, file: !1, line: 51, type: !17)
!67 = !DILocation(line: 51, column: 67, scope: !14)
!68 = !DILocalVariable(name: "work", scope: !14, file: !1, line: 53, type: !49)
!69 = !DILocation(line: 53, column: 11, scope: !14)
!70 = !DILocalVariable(name: "buffer", scope: !14, file: !1, line: 54, type: !71)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 8192, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 1024)
!74 = !DILocation(line: 54, column: 10, scope: !14)
!75 = !DILocalVariable(name: "buffersize", scope: !14, file: !1, line: 55, type: !17)
!76 = !DILocation(line: 55, column: 9, scope: !14)
!77 = !DILocalVariable(name: "size", scope: !14, file: !1, line: 56, type: !78)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !79, line: 46, baseType: !80)
!79 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!80 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!81 = !DILocation(line: 56, column: 12, scope: !14)
!82 = !DILocation(line: 59, column: 9, scope: !83)
!83 = distinct !DILexicalBlock(scope: !14, file: !1, line: 59, column: 9)
!84 = !DILocation(line: 59, column: 14, scope: !83)
!85 = !DILocation(line: 59, column: 17, scope: !83)
!86 = !DILocation(line: 59, column: 23, scope: !83)
!87 = !DILocation(line: 59, column: 9, scope: !14)
!88 = !DILocation(line: 61, column: 16, scope: !89)
!89 = distinct !DILexicalBlock(scope: !83, file: !1, line: 59, column: 29)
!90 = !DILocation(line: 61, column: 14, scope: !89)
!91 = !DILocation(line: 62, column: 28, scope: !89)
!92 = !DILocation(line: 62, column: 9, scope: !89)
!93 = !DILocation(line: 64, column: 21, scope: !89)
!94 = !DILocation(line: 64, column: 32, scope: !89)
!95 = !DILocation(line: 64, column: 9, scope: !89)
!96 = !DILocation(line: 67, column: 23, scope: !89)
!97 = !DILocation(line: 67, column: 16, scope: !89)
!98 = !DILocation(line: 67, column: 29, scope: !89)
!99 = !DILocation(line: 67, column: 14, scope: !89)
!100 = !DILocation(line: 68, column: 13, scope: !101)
!101 = distinct !DILexicalBlock(scope: !89, file: !1, line: 68, column: 13)
!102 = !DILocation(line: 68, column: 20, scope: !101)
!103 = !DILocation(line: 68, column: 18, scope: !101)
!104 = !DILocation(line: 68, column: 13, scope: !89)
!105 = !DILocation(line: 70, column: 13, scope: !106)
!106 = distinct !DILexicalBlock(scope: !101, file: !1, line: 68, column: 32)
!107 = !DILocation(line: 70, column: 18, scope: !106)
!108 = !DILocation(line: 70, column: 29, scope: !106)
!109 = !DILocation(line: 70, column: 34, scope: !106)
!110 = !DILocation(line: 73, column: 13, scope: !106)
!111 = !DILocation(line: 76, column: 13, scope: !106)
!112 = !DILocation(line: 78, column: 20, scope: !106)
!113 = !DILocation(line: 78, column: 18, scope: !106)
!114 = !DILocation(line: 79, column: 9, scope: !106)
!115 = !DILocation(line: 80, column: 9, scope: !89)
!116 = !DILocation(line: 80, column: 25, scope: !89)
!117 = !DILocation(line: 80, column: 31, scope: !89)
!118 = !DILocation(line: 81, column: 5, scope: !89)
!119 = !DILocation(line: 83, column: 9, scope: !120)
!120 = distinct !DILexicalBlock(scope: !14, file: !1, line: 83, column: 9)
!121 = !DILocation(line: 83, column: 9, scope: !14)
!122 = !DILocation(line: 83, column: 20, scope: !120)
!123 = !DILocation(line: 83, column: 15, scope: !120)
!124 = !DILocation(line: 84, column: 5, scope: !14)
!125 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 88, type: !126, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !61)
!126 = !DISubroutineType(types: !127)
!127 = !{!17}
!128 = !DILocalVariable(name: "ctxt", scope: !125, file: !1, line: 90, type: !19)
!129 = !DILocation(line: 90, column: 27, scope: !125)
!130 = !DILocalVariable(name: "node", scope: !125, file: !1, line: 91, type: !29)
!131 = !DILocation(line: 91, column: 13, scope: !125)
!132 = !DILocalVariable(name: "context", scope: !125, file: !1, line: 92, type: !24)
!133 = !DILocation(line: 92, column: 21, scope: !125)
!134 = !DILocation(line: 95, column: 5, scope: !125)
!135 = !DILocation(line: 96, column: 5, scope: !125)
!136 = !DILocation(line: 97, column: 5, scope: !125)
!137 = !DILocation(line: 99, column: 10, scope: !125)
!138 = !DILocation(line: 99, column: 18, scope: !125)
!139 = !DILocation(line: 100, column: 10, scope: !125)
!140 = !DILocation(line: 100, column: 15, scope: !125)
!141 = !DILocation(line: 101, column: 13, scope: !125)
!142 = !DILocation(line: 101, column: 18, scope: !125)
!143 = !DILocalVariable(name: "inf", scope: !125, file: !1, line: 104, type: !17)
!144 = !DILocation(line: 104, column: 9, scope: !125)
!145 = !DILocalVariable(name: "strict", scope: !125, file: !1, line: 104, type: !17)
!146 = !DILocation(line: 104, column: 14, scope: !125)
!147 = !DILocation(line: 105, column: 24, scope: !125)
!148 = !DILocation(line: 105, column: 5, scope: !125)
!149 = !DILocation(line: 106, column: 24, scope: !125)
!150 = !DILocation(line: 106, column: 5, scope: !125)
!151 = !DILocation(line: 109, column: 32, scope: !125)
!152 = !DILocation(line: 109, column: 37, scope: !125)
!153 = !DILocation(line: 109, column: 5, scope: !125)
!154 = !DILocation(line: 111, column: 5, scope: !125)
!155 = distinct !DISubprogram(name: "memmove", scope: !156, file: !156, line: 12, type: !157, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !61)
!156 = !DIFile(filename: "runtime/Freestanding/memmove.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "6cd27189cdce56ce74ae860a315e13f2")
!157 = !DISubroutineType(types: !158)
!158 = !{!33, !33, !159, !78}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!161 = !DILocalVariable(name: "dst", arg: 1, scope: !155, file: !156, line: 12, type: !33)
!162 = !DILocation(line: 12, column: 21, scope: !155)
!163 = !DILocalVariable(name: "src", arg: 2, scope: !155, file: !156, line: 12, type: !159)
!164 = !DILocation(line: 12, column: 38, scope: !155)
!165 = !DILocalVariable(name: "count", arg: 3, scope: !155, file: !156, line: 12, type: !78)
!166 = !DILocation(line: 12, column: 50, scope: !155)
!167 = !DILocalVariable(name: "a", scope: !155, file: !156, line: 13, type: !49)
!168 = !DILocation(line: 13, column: 9, scope: !155)
!169 = !DILocation(line: 13, column: 13, scope: !155)
!170 = !DILocalVariable(name: "b", scope: !155, file: !156, line: 14, type: !36)
!171 = !DILocation(line: 14, column: 15, scope: !155)
!172 = !DILocation(line: 14, column: 19, scope: !155)
!173 = !DILocation(line: 16, column: 7, scope: !174)
!174 = distinct !DILexicalBlock(scope: !155, file: !156, line: 16, column: 7)
!175 = !DILocation(line: 16, column: 14, scope: !174)
!176 = !DILocation(line: 16, column: 11, scope: !174)
!177 = !DILocation(line: 16, column: 7, scope: !155)
!178 = !DILocation(line: 17, column: 12, scope: !174)
!179 = !DILocation(line: 17, column: 5, scope: !174)
!180 = !DILocation(line: 19, column: 7, scope: !181)
!181 = distinct !DILexicalBlock(scope: !155, file: !156, line: 19, column: 7)
!182 = !DILocation(line: 19, column: 13, scope: !181)
!183 = !DILocation(line: 19, column: 11, scope: !181)
!184 = !DILocation(line: 19, column: 7, scope: !155)
!185 = !DILocation(line: 20, column: 17, scope: !186)
!186 = distinct !DILexicalBlock(scope: !181, file: !156, line: 19, column: 18)
!187 = !DILocation(line: 20, column: 5, scope: !186)
!188 = !DILocation(line: 21, column: 16, scope: !186)
!189 = !DILocation(line: 21, column: 14, scope: !186)
!190 = !DILocation(line: 21, column: 9, scope: !186)
!191 = !DILocation(line: 21, column: 12, scope: !186)
!192 = distinct !{!192, !187, !188, !193}
!193 = !{!"llvm.loop.mustprogress"}
!194 = !DILocation(line: 23, column: 10, scope: !195)
!195 = distinct !DILexicalBlock(scope: !181, file: !156, line: 22, column: 10)
!196 = !DILocation(line: 23, column: 16, scope: !195)
!197 = !DILocation(line: 23, column: 7, scope: !195)
!198 = !DILocation(line: 24, column: 10, scope: !195)
!199 = !DILocation(line: 24, column: 16, scope: !195)
!200 = !DILocation(line: 24, column: 7, scope: !195)
!201 = !DILocation(line: 25, column: 5, scope: !195)
!202 = !DILocation(line: 25, column: 17, scope: !195)
!203 = !DILocation(line: 26, column: 16, scope: !195)
!204 = !DILocation(line: 26, column: 14, scope: !195)
!205 = !DILocation(line: 26, column: 9, scope: !195)
!206 = !DILocation(line: 26, column: 12, scope: !195)
!207 = distinct !{!207, !201, !203, !193}
!208 = !DILocation(line: 29, column: 10, scope: !155)
!209 = !DILocation(line: 29, column: 3, scope: !155)
!210 = !DILocation(line: 30, column: 1, scope: !155)
!211 = distinct !DISubprogram(name: "memset", scope: !212, file: !212, line: 12, type: !213, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !61)
!212 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!213 = !DISubroutineType(types: !214)
!214 = !{!33, !33, !17, !78}
!215 = !DILocalVariable(name: "dst", arg: 1, scope: !211, file: !212, line: 12, type: !33)
!216 = !DILocation(line: 12, column: 20, scope: !211)
!217 = !DILocalVariable(name: "s", arg: 2, scope: !211, file: !212, line: 12, type: !17)
!218 = !DILocation(line: 12, column: 29, scope: !211)
!219 = !DILocalVariable(name: "count", arg: 3, scope: !211, file: !212, line: 12, type: !78)
!220 = !DILocation(line: 12, column: 39, scope: !211)
!221 = !DILocalVariable(name: "a", scope: !211, file: !212, line: 13, type: !49)
!222 = !DILocation(line: 13, column: 9, scope: !211)
!223 = !DILocation(line: 13, column: 13, scope: !211)
!224 = !DILocation(line: 14, column: 3, scope: !211)
!225 = !DILocation(line: 14, column: 15, scope: !211)
!226 = !DILocation(line: 14, column: 18, scope: !211)
!227 = !DILocation(line: 15, column: 12, scope: !211)
!228 = !DILocation(line: 15, column: 7, scope: !211)
!229 = !DILocation(line: 15, column: 10, scope: !211)
!230 = distinct !{!230, !224, !227, !193}
!231 = !DILocation(line: 16, column: 10, scope: !211)
!232 = !DILocation(line: 16, column: 3, scope: !211)

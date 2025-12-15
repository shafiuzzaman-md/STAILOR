; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/285_xmlschemas.c_25428_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/285_xmlschemas.c_25428_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaValidationCtxt = type { i32, %struct._xmlSchemaAttrInfo* }
%struct._xmlSchemaAttrInfo = type { i32, i8*, i8* }

@.str = private unnamed_addr constant [10 x i8] c"num_attrs\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.5 = private unnamed_addr constant [74 x i8] c"(vctxt->nbAttrInfos > 0 && i < vctxt->nbAttrInfos) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [110 x i8] c"se_runs/sa_llm/libxml2_55980_vul/285_xmlschemas.c_25428_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlSchemaCleanAttrInfo = private unnamed_addr constant [55 x i8] c"void xmlSchemaCleanAttrInfo(xmlSchemaValidationCtxt *)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !24 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !28, metadata !DIExpression()), !dbg !29
  %3 = load i8*, i8** %2, align 8, !dbg !30
  call void @free(i8* noundef %3) #7, !dbg !31
  ret void, !dbg !32
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchemaFreeValue(i8* noundef %0) #0 !dbg !33 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !34, metadata !DIExpression()), !dbg !35
  %3 = load i8*, i8** %2, align 8, !dbg !36
  call void @free(i8* noundef %3) #7, !dbg !37
  ret void, !dbg !38
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !39 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlSchemaValidationCtxt, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaValidationCtxt* %2, metadata !43, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.declare(metadata i32* %3, metadata !50, metadata !DIExpression()), !dbg !51
  %5 = bitcast i32* %3 to i8*, !dbg !52
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)), !dbg !53
  %6 = load i32, i32* %3, align 4, !dbg !54
  %7 = icmp sge i32 %6, 0, !dbg !55
  %8 = zext i1 %7 to i32, !dbg !55
  %9 = sext i32 %8 to i64, !dbg !54
  call void @klee_assume(i64 noundef %9), !dbg !56
  %10 = load i32, i32* %3, align 4, !dbg !57
  %11 = icmp sle i32 %10, 100, !dbg !58
  %12 = zext i1 %11 to i32, !dbg !58
  %13 = sext i32 %12 to i64, !dbg !57
  call void @klee_assume(i64 noundef %13), !dbg !59
  %14 = load i32, i32* %3, align 4, !dbg !60
  %15 = getelementptr inbounds %struct._xmlSchemaValidationCtxt, %struct._xmlSchemaValidationCtxt* %2, i32 0, i32 0, !dbg !61
  store i32 %14, i32* %15, align 8, !dbg !62
  %16 = load i32, i32* %3, align 4, !dbg !63
  %17 = icmp sgt i32 %16, 0, !dbg !65
  br i1 %17, label %18, label %58, !dbg !66

18:                                               ; preds = %0
  %19 = load i32, i32* %3, align 4, !dbg !67
  %20 = sext i32 %19 to i64, !dbg !67
  %21 = mul i64 %20, 24, !dbg !69
  %22 = call noalias i8* @malloc(i64 noundef %21) #7, !dbg !70
  %23 = bitcast i8* %22 to %struct._xmlSchemaAttrInfo*, !dbg !71
  %24 = getelementptr inbounds %struct._xmlSchemaValidationCtxt, %struct._xmlSchemaValidationCtxt* %2, i32 0, i32 1, !dbg !72
  store %struct._xmlSchemaAttrInfo* %23, %struct._xmlSchemaAttrInfo** %24, align 8, !dbg !73
  call void @llvm.dbg.declare(metadata i32* %4, metadata !74, metadata !DIExpression()), !dbg !76
  store i32 0, i32* %4, align 4, !dbg !76
  br label %25, !dbg !77

25:                                               ; preds = %51, %18
  %26 = load i32, i32* %4, align 4, !dbg !78
  %27 = load i32, i32* %3, align 4, !dbg !80
  %28 = icmp slt i32 %26, %27, !dbg !81
  br i1 %28, label %29, label %54, !dbg !82

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct._xmlSchemaValidationCtxt, %struct._xmlSchemaValidationCtxt* %2, i32 0, i32 1, !dbg !83
  %31 = load %struct._xmlSchemaAttrInfo*, %struct._xmlSchemaAttrInfo** %30, align 8, !dbg !83
  %32 = load i32, i32* %4, align 4, !dbg !85
  %33 = sext i32 %32 to i64, !dbg !86
  %34 = getelementptr inbounds %struct._xmlSchemaAttrInfo, %struct._xmlSchemaAttrInfo* %31, i64 %33, !dbg !86
  %35 = getelementptr inbounds %struct._xmlSchemaAttrInfo, %struct._xmlSchemaAttrInfo* %34, i32 0, i32 0, !dbg !87
  %36 = bitcast i32* %35 to i8*, !dbg !88
  call void @klee_make_symbolic(i8* noundef %36, i64 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)), !dbg !89
  %37 = getelementptr inbounds %struct._xmlSchemaValidationCtxt, %struct._xmlSchemaValidationCtxt* %2, i32 0, i32 1, !dbg !90
  %38 = load %struct._xmlSchemaAttrInfo*, %struct._xmlSchemaAttrInfo** %37, align 8, !dbg !90
  %39 = load i32, i32* %4, align 4, !dbg !91
  %40 = sext i32 %39 to i64, !dbg !92
  %41 = getelementptr inbounds %struct._xmlSchemaAttrInfo, %struct._xmlSchemaAttrInfo* %38, i64 %40, !dbg !92
  %42 = getelementptr inbounds %struct._xmlSchemaAttrInfo, %struct._xmlSchemaAttrInfo* %41, i32 0, i32 1, !dbg !93
  %43 = bitcast i8** %42 to i8*, !dbg !94
  call void @klee_make_symbolic(i8* noundef %43, i64 noundef 8, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)), !dbg !95
  %44 = getelementptr inbounds %struct._xmlSchemaValidationCtxt, %struct._xmlSchemaValidationCtxt* %2, i32 0, i32 1, !dbg !96
  %45 = load %struct._xmlSchemaAttrInfo*, %struct._xmlSchemaAttrInfo** %44, align 8, !dbg !96
  %46 = load i32, i32* %4, align 4, !dbg !97
  %47 = sext i32 %46 to i64, !dbg !98
  %48 = getelementptr inbounds %struct._xmlSchemaAttrInfo, %struct._xmlSchemaAttrInfo* %45, i64 %47, !dbg !98
  %49 = getelementptr inbounds %struct._xmlSchemaAttrInfo, %struct._xmlSchemaAttrInfo* %48, i32 0, i32 2, !dbg !99
  %50 = bitcast i8** %49 to i8*, !dbg !100
  call void @klee_make_symbolic(i8* noundef %50, i64 noundef 8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)), !dbg !101
  br label %51, !dbg !102

51:                                               ; preds = %29
  %52 = load i32, i32* %4, align 4, !dbg !103
  %53 = add nsw i32 %52, 1, !dbg !103
  store i32 %53, i32* %4, align 4, !dbg !103
  br label %25, !dbg !104, !llvm.loop !105

54:                                               ; preds = %25
  call void @xmlSchemaCleanAttrInfo(%struct._xmlSchemaValidationCtxt* noundef %2), !dbg !108
  %55 = getelementptr inbounds %struct._xmlSchemaValidationCtxt, %struct._xmlSchemaValidationCtxt* %2, i32 0, i32 1, !dbg !109
  %56 = load %struct._xmlSchemaAttrInfo*, %struct._xmlSchemaAttrInfo** %55, align 8, !dbg !109
  %57 = bitcast %struct._xmlSchemaAttrInfo* %56 to i8*, !dbg !110
  call void @free(i8* noundef %57) #7, !dbg !111
  br label %58, !dbg !112

58:                                               ; preds = %54, %0
  ret i32 0, !dbg !113
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmlSchemaCleanAttrInfo(%struct._xmlSchemaValidationCtxt* noundef %0) #0 !dbg !114 {
  %2 = alloca %struct._xmlSchemaValidationCtxt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlSchemaAttrInfo*, align 8
  store %struct._xmlSchemaValidationCtxt* %0, %struct._xmlSchemaValidationCtxt** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaValidationCtxt** %2, metadata !118, metadata !DIExpression()), !dbg !119
  call void @llvm.dbg.declare(metadata i32* %3, metadata !120, metadata !DIExpression()), !dbg !121
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaAttrInfo** %4, metadata !122, metadata !DIExpression()), !dbg !123
  %5 = load %struct._xmlSchemaValidationCtxt*, %struct._xmlSchemaValidationCtxt** %2, align 8, !dbg !124
  %6 = icmp eq %struct._xmlSchemaValidationCtxt* %5, null, !dbg !126
  br i1 %6, label %12, label %7, !dbg !127

7:                                                ; preds = %1
  %8 = load %struct._xmlSchemaValidationCtxt*, %struct._xmlSchemaValidationCtxt** %2, align 8, !dbg !128
  %9 = getelementptr inbounds %struct._xmlSchemaValidationCtxt, %struct._xmlSchemaValidationCtxt* %8, i32 0, i32 1, !dbg !129
  %10 = load %struct._xmlSchemaAttrInfo*, %struct._xmlSchemaAttrInfo** %9, align 8, !dbg !129
  %11 = icmp eq %struct._xmlSchemaAttrInfo* %10, null, !dbg !130
  br i1 %11, label %12, label %13, !dbg !131

12:                                               ; preds = %7, %1
  br label %79, !dbg !132

13:                                               ; preds = %7
  store i32 0, i32* %3, align 4, !dbg !133
  br label %14, !dbg !135

14:                                               ; preds = %73, %13
  %15 = load i32, i32* %3, align 4, !dbg !136
  %16 = load %struct._xmlSchemaValidationCtxt*, %struct._xmlSchemaValidationCtxt** %2, align 8, !dbg !138
  %17 = getelementptr inbounds %struct._xmlSchemaValidationCtxt, %struct._xmlSchemaValidationCtxt* %16, i32 0, i32 0, !dbg !139
  %18 = load i32, i32* %17, align 8, !dbg !139
  %19 = icmp slt i32 %15, %18, !dbg !140
  br i1 %19, label %20, label %76, !dbg !141

20:                                               ; preds = %14
  %21 = load %struct._xmlSchemaValidationCtxt*, %struct._xmlSchemaValidationCtxt** %2, align 8, !dbg !142
  %22 = getelementptr inbounds %struct._xmlSchemaValidationCtxt, %struct._xmlSchemaValidationCtxt* %21, i32 0, i32 1, !dbg !144
  %23 = load %struct._xmlSchemaAttrInfo*, %struct._xmlSchemaAttrInfo** %22, align 8, !dbg !144
  %24 = load i32, i32* %3, align 4, !dbg !145
  %25 = sext i32 %24 to i64, !dbg !142
  %26 = getelementptr inbounds %struct._xmlSchemaAttrInfo, %struct._xmlSchemaAttrInfo* %23, i64 %25, !dbg !142
  store %struct._xmlSchemaAttrInfo* %26, %struct._xmlSchemaAttrInfo** %4, align 8, !dbg !146
  %27 = load %struct._xmlSchemaAttrInfo*, %struct._xmlSchemaAttrInfo** %4, align 8, !dbg !147
  %28 = getelementptr inbounds %struct._xmlSchemaAttrInfo, %struct._xmlSchemaAttrInfo* %27, i32 0, i32 0, !dbg !149
  %29 = load i32, i32* %28, align 8, !dbg !149
  %30 = and i32 %29, 1, !dbg !150
  %31 = icmp ne i32 %30, 0, !dbg !150
  br i1 %31, label %32, label %42, !dbg !151

32:                                               ; preds = %20
  %33 = load %struct._xmlSchemaAttrInfo*, %struct._xmlSchemaAttrInfo** %4, align 8, !dbg !152
  %34 = getelementptr inbounds %struct._xmlSchemaAttrInfo, %struct._xmlSchemaAttrInfo* %33, i32 0, i32 1, !dbg !155
  %35 = load i8*, i8** %34, align 8, !dbg !155
  %36 = icmp ne i8* %35, null, !dbg !156
  br i1 %36, label %37, label %41, !dbg !157

37:                                               ; preds = %32
  %38 = load %struct._xmlSchemaAttrInfo*, %struct._xmlSchemaAttrInfo** %4, align 8, !dbg !158
  %39 = getelementptr inbounds %struct._xmlSchemaAttrInfo, %struct._xmlSchemaAttrInfo* %38, i32 0, i32 1, !dbg !159
  %40 = load i8*, i8** %39, align 8, !dbg !159
  call void @xmlFree(i8* noundef %40), !dbg !160
  br label %41, !dbg !160

41:                                               ; preds = %37, %32
  br label %42, !dbg !161

42:                                               ; preds = %41, %20
  %43 = load %struct._xmlSchemaAttrInfo*, %struct._xmlSchemaAttrInfo** %4, align 8, !dbg !162
  %44 = getelementptr inbounds %struct._xmlSchemaAttrInfo, %struct._xmlSchemaAttrInfo* %43, i32 0, i32 2, !dbg !164
  %45 = load i8*, i8** %44, align 8, !dbg !164
  %46 = icmp ne i8* %45, null, !dbg !165
  br i1 %46, label %47, label %53, !dbg !166

47:                                               ; preds = %42
  %48 = load %struct._xmlSchemaAttrInfo*, %struct._xmlSchemaAttrInfo** %4, align 8, !dbg !167
  %49 = getelementptr inbounds %struct._xmlSchemaAttrInfo, %struct._xmlSchemaAttrInfo* %48, i32 0, i32 2, !dbg !169
  %50 = load i8*, i8** %49, align 8, !dbg !169
  call void @xmlSchemaFreeValue(i8* noundef %50), !dbg !170
  %51 = load %struct._xmlSchemaAttrInfo*, %struct._xmlSchemaAttrInfo** %4, align 8, !dbg !171
  %52 = getelementptr inbounds %struct._xmlSchemaAttrInfo, %struct._xmlSchemaAttrInfo* %51, i32 0, i32 2, !dbg !172
  store i8* null, i8** %52, align 8, !dbg !173
  br label %53, !dbg !174

53:                                               ; preds = %47, %42
  %54 = load %struct._xmlSchemaValidationCtxt*, %struct._xmlSchemaValidationCtxt** %2, align 8, !dbg !175
  %55 = getelementptr inbounds %struct._xmlSchemaValidationCtxt, %struct._xmlSchemaValidationCtxt* %54, i32 0, i32 0, !dbg !175
  %56 = load i32, i32* %55, align 8, !dbg !175
  %57 = icmp sgt i32 %56, 0, !dbg !175
  br i1 %57, label %58, label %66, !dbg !175

58:                                               ; preds = %53
  %59 = load i32, i32* %3, align 4, !dbg !175
  %60 = load %struct._xmlSchemaValidationCtxt*, %struct._xmlSchemaValidationCtxt** %2, align 8, !dbg !175
  %61 = getelementptr inbounds %struct._xmlSchemaValidationCtxt, %struct._xmlSchemaValidationCtxt* %60, i32 0, i32 0, !dbg !175
  %62 = load i32, i32* %61, align 8, !dbg !175
  %63 = icmp slt i32 %59, %62, !dbg !175
  br i1 %63, label %64, label %66, !dbg !175

64:                                               ; preds = %58
  br i1 true, label %65, label %66, !dbg !175

65:                                               ; preds = %64
  br label %68, !dbg !175

66:                                               ; preds = %64, %58, %53
  %67 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([110 x i8], [110 x i8]* @.str.6, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__.xmlSchemaCleanAttrInfo, i64 0, i64 0)), !dbg !175
  br label %68, !dbg !175

68:                                               ; preds = %66, %65
  %69 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([110 x i8], [110 x i8]* @.str.6, i64 0, i64 0), i32 noundef 57, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__.xmlSchemaCleanAttrInfo, i64 0, i64 0)), !dbg !176
  %70 = load %struct._xmlSchemaAttrInfo*, %struct._xmlSchemaAttrInfo** %4, align 8, !dbg !177
  %71 = bitcast %struct._xmlSchemaAttrInfo* %70 to i8*, !dbg !178
  %72 = call i8* @memset(i8* %71, i32 0, i64 24), !dbg !178
  br label %73, !dbg !179

73:                                               ; preds = %68
  %74 = load i32, i32* %3, align 4, !dbg !180
  %75 = add nsw i32 %74, 1, !dbg !180
  store i32 %75, i32* %3, align 4, !dbg !180
  br label %14, !dbg !181, !llvm.loop !182

76:                                               ; preds = %14
  %77 = load %struct._xmlSchemaValidationCtxt*, %struct._xmlSchemaValidationCtxt** %2, align 8, !dbg !184
  %78 = getelementptr inbounds %struct._xmlSchemaValidationCtxt, %struct._xmlSchemaValidationCtxt* %77, i32 0, i32 0, !dbg !185
  store i32 0, i32* %78, align 8, !dbg !186
  br label %79, !dbg !187

79:                                               ; preds = %76, %12
  ret void, !dbg !187
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !188 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !195, metadata !DIExpression()), !dbg !196
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !197, metadata !DIExpression()), !dbg !198
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !199, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.declare(metadata i8** %7, metadata !201, metadata !DIExpression()), !dbg !202
  %8 = load i8*, i8** %4, align 8, !dbg !203
  store i8* %8, i8** %7, align 8, !dbg !202
  br label %9, !dbg !204

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !205
  %11 = add i64 %10, -1, !dbg !205
  store i64 %11, i64* %6, align 8, !dbg !205
  %12 = icmp ugt i64 %10, 0, !dbg !206
  br i1 %12, label %13, label %18, !dbg !204

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !207
  %15 = trunc i32 %14 to i8, !dbg !207
  %16 = load i8*, i8** %7, align 8, !dbg !208
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !208
  store i8* %17, i8** %7, align 8, !dbg !208
  store i8 %15, i8* %16, align 1, !dbg !209
  br label %9, !dbg !204, !llvm.loop !210

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !211
  ret i8* %19, !dbg !212
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23, !23}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/285_xmlschemas.c_25428_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "3d87b506aa424c77d93ac4d0cfedf938")
!2 = !{!3, !10, !12}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaAttrInfo", file: !1, line: 10, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaAttrInfo", file: !1, line: 13, size: 192, elements: !6)
!6 = !{!7, !9, !11}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5, file: !1, line: 14, baseType: !8, size: 32)
!8 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!9 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !5, file: !1, line: 15, baseType: !10, size: 64, offset: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5, file: !1, line: 16, baseType: !10, size: 64, offset: 128)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = distinct !DICompileUnit(language: DW_LANG_C99, file: !15, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!15 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!16 = !{i32 7, !"Dwarf Version", i32 5}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{i32 7, !"PIC Level", i32 2}
!20 = !{i32 7, !"PIE Level", i32 2}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"Ubuntu clang version 14.0.6"}
!24 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 25, type: !25, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !27)
!25 = !DISubroutineType(types: !26)
!26 = !{null, !10}
!27 = !{}
!28 = !DILocalVariable(name: "ptr", arg: 1, scope: !24, file: !1, line: 25, type: !10)
!29 = !DILocation(line: 25, column: 20, scope: !24)
!30 = !DILocation(line: 26, column: 10, scope: !24)
!31 = !DILocation(line: 26, column: 5, scope: !24)
!32 = !DILocation(line: 27, column: 1, scope: !24)
!33 = distinct !DISubprogram(name: "xmlSchemaFreeValue", scope: !1, file: !1, line: 30, type: !25, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !27)
!34 = !DILocalVariable(name: "val", arg: 1, scope: !33, file: !1, line: 30, type: !10)
!35 = !DILocation(line: 30, column: 31, scope: !33)
!36 = !DILocation(line: 32, column: 10, scope: !33)
!37 = !DILocation(line: 32, column: 5, scope: !33)
!38 = !DILocation(line: 33, column: 1, scope: !33)
!39 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 63, type: !40, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !27)
!40 = !DISubroutineType(types: !41)
!41 = !{!42}
!42 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!43 = !DILocalVariable(name: "vctxt", scope: !39, file: !1, line: 64, type: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaValidationCtxt", file: !1, line: 11, baseType: !45)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaValidationCtxt", file: !1, line: 19, size: 128, elements: !46)
!46 = !{!47, !48}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "nbAttrInfos", scope: !45, file: !1, line: 20, baseType: !42, size: 32)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "attrInfos", scope: !45, file: !1, line: 21, baseType: !3, size: 64, offset: 64)
!49 = !DILocation(line: 64, column: 29, scope: !39)
!50 = !DILocalVariable(name: "num_attrs", scope: !39, file: !1, line: 65, type: !42)
!51 = !DILocation(line: 65, column: 9, scope: !39)
!52 = !DILocation(line: 68, column: 24, scope: !39)
!53 = !DILocation(line: 68, column: 5, scope: !39)
!54 = !DILocation(line: 71, column: 17, scope: !39)
!55 = !DILocation(line: 71, column: 27, scope: !39)
!56 = !DILocation(line: 71, column: 5, scope: !39)
!57 = !DILocation(line: 72, column: 17, scope: !39)
!58 = !DILocation(line: 72, column: 27, scope: !39)
!59 = !DILocation(line: 72, column: 5, scope: !39)
!60 = !DILocation(line: 75, column: 25, scope: !39)
!61 = !DILocation(line: 75, column: 11, scope: !39)
!62 = !DILocation(line: 75, column: 23, scope: !39)
!63 = !DILocation(line: 76, column: 9, scope: !64)
!64 = distinct !DILexicalBlock(scope: !39, file: !1, line: 76, column: 9)
!65 = !DILocation(line: 76, column: 19, scope: !64)
!66 = !DILocation(line: 76, column: 9, scope: !39)
!67 = !DILocation(line: 77, column: 55, scope: !68)
!68 = distinct !DILexicalBlock(scope: !64, file: !1, line: 76, column: 24)
!69 = !DILocation(line: 77, column: 65, scope: !68)
!70 = !DILocation(line: 77, column: 48, scope: !68)
!71 = !DILocation(line: 77, column: 27, scope: !68)
!72 = !DILocation(line: 77, column: 15, scope: !68)
!73 = !DILocation(line: 77, column: 25, scope: !68)
!74 = !DILocalVariable(name: "i", scope: !75, file: !1, line: 80, type: !42)
!75 = distinct !DILexicalBlock(scope: !68, file: !1, line: 80, column: 9)
!76 = !DILocation(line: 80, column: 18, scope: !75)
!77 = !DILocation(line: 80, column: 14, scope: !75)
!78 = !DILocation(line: 80, column: 25, scope: !79)
!79 = distinct !DILexicalBlock(scope: !75, file: !1, line: 80, column: 9)
!80 = !DILocation(line: 80, column: 29, scope: !79)
!81 = !DILocation(line: 80, column: 27, scope: !79)
!82 = !DILocation(line: 80, column: 9, scope: !75)
!83 = !DILocation(line: 81, column: 39, scope: !84)
!84 = distinct !DILexicalBlock(scope: !79, file: !1, line: 80, column: 45)
!85 = !DILocation(line: 81, column: 49, scope: !84)
!86 = !DILocation(line: 81, column: 33, scope: !84)
!87 = !DILocation(line: 81, column: 52, scope: !84)
!88 = !DILocation(line: 81, column: 32, scope: !84)
!89 = !DILocation(line: 81, column: 13, scope: !84)
!90 = !DILocation(line: 82, column: 39, scope: !84)
!91 = !DILocation(line: 82, column: 49, scope: !84)
!92 = !DILocation(line: 82, column: 33, scope: !84)
!93 = !DILocation(line: 82, column: 52, scope: !84)
!94 = !DILocation(line: 82, column: 32, scope: !84)
!95 = !DILocation(line: 82, column: 13, scope: !84)
!96 = !DILocation(line: 83, column: 39, scope: !84)
!97 = !DILocation(line: 83, column: 49, scope: !84)
!98 = !DILocation(line: 83, column: 33, scope: !84)
!99 = !DILocation(line: 83, column: 52, scope: !84)
!100 = !DILocation(line: 83, column: 32, scope: !84)
!101 = !DILocation(line: 83, column: 13, scope: !84)
!102 = !DILocation(line: 84, column: 9, scope: !84)
!103 = !DILocation(line: 80, column: 41, scope: !79)
!104 = !DILocation(line: 80, column: 9, scope: !79)
!105 = distinct !{!105, !82, !106, !107}
!106 = !DILocation(line: 84, column: 9, scope: !75)
!107 = !{!"llvm.loop.mustprogress"}
!108 = !DILocation(line: 87, column: 9, scope: !68)
!109 = !DILocation(line: 89, column: 20, scope: !68)
!110 = !DILocation(line: 89, column: 14, scope: !68)
!111 = !DILocation(line: 89, column: 9, scope: !68)
!112 = !DILocation(line: 90, column: 5, scope: !68)
!113 = !DILocation(line: 92, column: 5, scope: !39)
!114 = distinct !DISubprogram(name: "xmlSchemaCleanAttrInfo", scope: !1, file: !1, line: 36, type: !115, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !27)
!115 = !DISubroutineType(types: !116)
!116 = !{null, !117}
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!118 = !DILocalVariable(name: "vctxt", arg: 1, scope: !114, file: !1, line: 36, type: !117)
!119 = !DILocation(line: 36, column: 61, scope: !114)
!120 = !DILocalVariable(name: "i", scope: !114, file: !1, line: 37, type: !42)
!121 = !DILocation(line: 37, column: 9, scope: !114)
!122 = !DILocalVariable(name: "attr", scope: !114, file: !1, line: 38, type: !3)
!123 = !DILocation(line: 38, column: 24, scope: !114)
!124 = !DILocation(line: 40, column: 9, scope: !125)
!125 = distinct !DILexicalBlock(scope: !114, file: !1, line: 40, column: 9)
!126 = !DILocation(line: 40, column: 15, scope: !125)
!127 = !DILocation(line: 40, column: 23, scope: !125)
!128 = !DILocation(line: 40, column: 26, scope: !125)
!129 = !DILocation(line: 40, column: 33, scope: !125)
!130 = !DILocation(line: 40, column: 43, scope: !125)
!131 = !DILocation(line: 40, column: 9, scope: !114)
!132 = !DILocation(line: 41, column: 9, scope: !125)
!133 = !DILocation(line: 43, column: 12, scope: !134)
!134 = distinct !DILexicalBlock(scope: !114, file: !1, line: 43, column: 5)
!135 = !DILocation(line: 43, column: 10, scope: !134)
!136 = !DILocation(line: 43, column: 17, scope: !137)
!137 = distinct !DILexicalBlock(scope: !134, file: !1, line: 43, column: 5)
!138 = !DILocation(line: 43, column: 21, scope: !137)
!139 = !DILocation(line: 43, column: 28, scope: !137)
!140 = !DILocation(line: 43, column: 19, scope: !137)
!141 = !DILocation(line: 43, column: 5, scope: !134)
!142 = !DILocation(line: 44, column: 18, scope: !143)
!143 = distinct !DILexicalBlock(scope: !137, file: !1, line: 43, column: 46)
!144 = !DILocation(line: 44, column: 25, scope: !143)
!145 = !DILocation(line: 44, column: 35, scope: !143)
!146 = !DILocation(line: 44, column: 14, scope: !143)
!147 = !DILocation(line: 46, column: 13, scope: !148)
!148 = distinct !DILexicalBlock(scope: !143, file: !1, line: 46, column: 13)
!149 = !DILocation(line: 46, column: 19, scope: !148)
!150 = !DILocation(line: 46, column: 25, scope: !148)
!151 = !DILocation(line: 46, column: 13, scope: !143)
!152 = !DILocation(line: 47, column: 17, scope: !153)
!153 = distinct !DILexicalBlock(scope: !154, file: !1, line: 47, column: 17)
!154 = distinct !DILexicalBlock(scope: !148, file: !1, line: 46, column: 30)
!155 = !DILocation(line: 47, column: 23, scope: !153)
!156 = !DILocation(line: 47, column: 29, scope: !153)
!157 = !DILocation(line: 47, column: 17, scope: !154)
!158 = !DILocation(line: 48, column: 33, scope: !153)
!159 = !DILocation(line: 48, column: 39, scope: !153)
!160 = !DILocation(line: 48, column: 17, scope: !153)
!161 = !DILocation(line: 49, column: 9, scope: !154)
!162 = !DILocation(line: 50, column: 13, scope: !163)
!163 = distinct !DILexicalBlock(scope: !143, file: !1, line: 50, column: 13)
!164 = !DILocation(line: 50, column: 19, scope: !163)
!165 = !DILocation(line: 50, column: 23, scope: !163)
!166 = !DILocation(line: 50, column: 13, scope: !143)
!167 = !DILocation(line: 51, column: 32, scope: !168)
!168 = distinct !DILexicalBlock(scope: !163, file: !1, line: 50, column: 32)
!169 = !DILocation(line: 51, column: 38, scope: !168)
!170 = !DILocation(line: 51, column: 13, scope: !168)
!171 = !DILocation(line: 52, column: 13, scope: !168)
!172 = !DILocation(line: 52, column: 19, scope: !168)
!173 = !DILocation(line: 52, column: 23, scope: !168)
!174 = !DILocation(line: 53, column: 9, scope: !168)
!175 = !DILocation(line: 56, column: 9, scope: !143)
!176 = !DILocation(line: 57, column: 9, scope: !143)
!177 = !DILocation(line: 58, column: 16, scope: !143)
!178 = !DILocation(line: 58, column: 9, scope: !143)
!179 = !DILocation(line: 59, column: 5, scope: !143)
!180 = !DILocation(line: 43, column: 42, scope: !137)
!181 = !DILocation(line: 43, column: 5, scope: !137)
!182 = distinct !{!182, !141, !183, !107}
!183 = !DILocation(line: 59, column: 5, scope: !134)
!184 = !DILocation(line: 60, column: 5, scope: !114)
!185 = !DILocation(line: 60, column: 12, scope: !114)
!186 = !DILocation(line: 60, column: 24, scope: !114)
!187 = !DILocation(line: 61, column: 1, scope: !114)
!188 = distinct !DISubprogram(name: "memset", scope: !189, file: !189, line: 12, type: !190, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !27)
!189 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!190 = !DISubroutineType(types: !191)
!191 = !{!10, !10, !42, !192}
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !193, line: 46, baseType: !194)
!193 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!194 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!195 = !DILocalVariable(name: "dst", arg: 1, scope: !188, file: !189, line: 12, type: !10)
!196 = !DILocation(line: 12, column: 20, scope: !188)
!197 = !DILocalVariable(name: "s", arg: 2, scope: !188, file: !189, line: 12, type: !42)
!198 = !DILocation(line: 12, column: 29, scope: !188)
!199 = !DILocalVariable(name: "count", arg: 3, scope: !188, file: !189, line: 12, type: !192)
!200 = !DILocation(line: 12, column: 39, scope: !188)
!201 = !DILocalVariable(name: "a", scope: !188, file: !189, line: 13, type: !12)
!202 = !DILocation(line: 13, column: 9, scope: !188)
!203 = !DILocation(line: 13, column: 13, scope: !188)
!204 = !DILocation(line: 14, column: 3, scope: !188)
!205 = !DILocation(line: 14, column: 15, scope: !188)
!206 = !DILocation(line: 14, column: 18, scope: !188)
!207 = !DILocation(line: 15, column: 12, scope: !188)
!208 = !DILocation(line: 15, column: 7, scope: !188)
!209 = !DILocation(line: 15, column: 10, scope: !188)
!210 = distinct !{!210, !204, !207, !107}
!211 = !DILocation(line: 16, column: 10, scope: !188)
!212 = !DILocation(line: 16, column: 3, scope: !188)

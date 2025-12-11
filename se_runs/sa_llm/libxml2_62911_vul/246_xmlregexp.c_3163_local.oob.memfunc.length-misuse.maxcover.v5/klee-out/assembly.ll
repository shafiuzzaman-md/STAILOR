; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/246_xmlregexp.c_3163_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/246_xmlregexp.c_3163_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRegExecCtxt = type { i32*, i32, i8*, i8*, i32 }
%struct._xmlRegexp = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"xmlMalloc_buffer\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"running regexp\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"(comp->nbCounters >= 0) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_62911_vul/246_xmlregexp.c_3163_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlFAGenerateTransitions = private unnamed_addr constant [71 x i8] c"xmlRegRetVal xmlFAGenerateTransitions(xmlRegExecCtxtPtr, xmlRegexpPtr)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"nbCounters\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !21 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata i8** %3, metadata !30, metadata !DIExpression()), !dbg !31
  %4 = load i64, i64* %2, align 8, !dbg !32
  %5 = call noalias i8* @malloc(i64 noundef %4) #7, !dbg !33
  store i8* %5, i8** %3, align 8, !dbg !31
  %6 = load i8*, i8** %3, align 8, !dbg !34
  %7 = icmp ne i8* %6, null, !dbg !34
  br i1 %7, label %8, label %11, !dbg !36

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8, !dbg !37
  %10 = load i64, i64* %2, align 8, !dbg !39
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef %10, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)), !dbg !40
  br label %11, !dbg !41

11:                                               ; preds = %8, %1
  %12 = load i8*, i8** %3, align 8, !dbg !42
  ret i8* %12, !dbg !43
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlRegexpErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !44 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !50, metadata !DIExpression()), !dbg !51
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !52, metadata !DIExpression()), !dbg !53
  ret void, !dbg !54
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlFAGenerateTransitions(%struct._xmlRegExecCtxt* noundef %0, %struct._xmlRegexp* noundef %1) #0 !dbg !55 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlRegExecCtxt*, align 8
  %5 = alloca %struct._xmlRegexp*, align 8
  store %struct._xmlRegExecCtxt* %0, %struct._xmlRegExecCtxt** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRegExecCtxt** %4, metadata !75, metadata !DIExpression()), !dbg !76
  store %struct._xmlRegexp* %1, %struct._xmlRegexp** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRegexp** %5, metadata !77, metadata !DIExpression()), !dbg !78
  %6 = load %struct._xmlRegexp*, %struct._xmlRegexp** %5, align 8, !dbg !79
  %7 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %6, i32 0, i32 0, !dbg !81
  %8 = load i32, i32* %7, align 4, !dbg !81
  %9 = icmp sgt i32 %8, 0, !dbg !82
  br i1 %9, label %10, label %46, !dbg !83

10:                                               ; preds = %2
  %11 = load %struct._xmlRegexp*, %struct._xmlRegexp** %5, align 8, !dbg !84
  %12 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %11, i32 0, i32 0, !dbg !86
  %13 = load i32, i32* %12, align 4, !dbg !86
  %14 = sext i32 %13 to i64, !dbg !84
  %15 = mul i64 %14, 4, !dbg !87
  %16 = call i8* @xmlMalloc(i64 noundef %15), !dbg !88
  %17 = bitcast i8* %16 to i32*, !dbg !89
  %18 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %4, align 8, !dbg !90
  %19 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %18, i32 0, i32 0, !dbg !91
  store i32* %17, i32** %19, align 8, !dbg !92
  %20 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %4, align 8, !dbg !93
  %21 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %20, i32 0, i32 0, !dbg !95
  %22 = load i32*, i32** %21, align 8, !dbg !95
  %23 = icmp eq i32* %22, null, !dbg !96
  br i1 %23, label %24, label %25, !dbg !97

24:                                               ; preds = %10
  call void @xmlRegexpErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)), !dbg !98
  store i32 -1, i32* %3, align 4, !dbg !100
  br label %89, !dbg !100

25:                                               ; preds = %10
  %26 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %4, align 8, !dbg !101
  %27 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %26, i32 0, i32 0, !dbg !102
  %28 = load i32*, i32** %27, align 8, !dbg !102
  %29 = bitcast i32* %28 to i8*, !dbg !103
  %30 = load %struct._xmlRegexp*, %struct._xmlRegexp** %5, align 8, !dbg !104
  %31 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %30, i32 0, i32 0, !dbg !105
  %32 = load i32, i32* %31, align 4, !dbg !105
  %33 = sext i32 %32 to i64, !dbg !104
  %34 = mul i64 %33, 4, !dbg !106
  %35 = call i8* @memset(i8* %29, i32 0, i64 %34), !dbg !103
  %36 = load %struct._xmlRegexp*, %struct._xmlRegexp** %5, align 8, !dbg !107
  %37 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %36, i32 0, i32 0, !dbg !107
  %38 = load i32, i32* %37, align 4, !dbg !107
  %39 = icmp sge i32 %38, 0, !dbg !107
  br i1 %39, label %40, label %42, !dbg !107

40:                                               ; preds = %25
  br i1 true, label %41, label %42, !dbg !107

41:                                               ; preds = %40
  br label %44, !dbg !107

42:                                               ; preds = %40, %25
  %43 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.4, i64 0, i64 0), i32 noundef 60, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.xmlFAGenerateTransitions, i64 0, i64 0)), !dbg !107
  br label %44, !dbg !107

44:                                               ; preds = %42, %41
  %45 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.4, i64 0, i64 0), i32 noundef 63, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.xmlFAGenerateTransitions, i64 0, i64 0)), !dbg !108
  br label %49, !dbg !109

46:                                               ; preds = %2
  %47 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %4, align 8, !dbg !110
  %48 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %47, i32 0, i32 0, !dbg !112
  store i32* null, i32** %48, align 8, !dbg !113
  br label %49

49:                                               ; preds = %46, %44
  br label %50, !dbg !114

50:                                               ; preds = %49
  %51 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %4, align 8, !dbg !115
  %52 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %51, i32 0, i32 1, !dbg !116
  %53 = load i32, i32* %52, align 8, !dbg !116
  %54 = icmp eq i32 %53, 0, !dbg !117
  br i1 %54, label %55, label %82, !dbg !118

55:                                               ; preds = %50
  %56 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %4, align 8, !dbg !119
  %57 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %56, i32 0, i32 2, !dbg !120
  %58 = load i8*, i8** %57, align 8, !dbg !120
  %59 = icmp ne i8* %58, null, !dbg !121
  br i1 %59, label %60, label %82, !dbg !122

60:                                               ; preds = %55
  %61 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %4, align 8, !dbg !123
  %62 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %61, i32 0, i32 3, !dbg !124
  %63 = load i8*, i8** %62, align 8, !dbg !124
  %64 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %4, align 8, !dbg !125
  %65 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %64, i32 0, i32 4, !dbg !126
  %66 = load i32, i32* %65, align 8, !dbg !126
  %67 = sext i32 %66 to i64, !dbg !123
  %68 = getelementptr inbounds i8, i8* %63, i64 %67, !dbg !123
  %69 = load i8, i8* %68, align 1, !dbg !123
  %70 = sext i8 %69 to i32, !dbg !123
  %71 = icmp ne i32 %70, 0, !dbg !127
  br i1 %71, label %80, label %72, !dbg !128

72:                                               ; preds = %60
  %73 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %4, align 8, !dbg !129
  %74 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %73, i32 0, i32 2, !dbg !130
  %75 = load i8*, i8** %74, align 8, !dbg !130
  %76 = icmp ne i8* %75, null, !dbg !131
  br i1 %76, label %77, label %78, !dbg !132

77:                                               ; preds = %72
  br label %78

78:                                               ; preds = %77, %72
  %79 = phi i1 [ false, %72 ], [ false, %77 ], !dbg !133
  br label %80, !dbg !128

80:                                               ; preds = %78, %60
  %81 = phi i1 [ true, %60 ], [ %79, %78 ]
  br label %82

82:                                               ; preds = %80, %55, %50
  %83 = phi i1 [ false, %55 ], [ false, %50 ], [ %81, %80 ], !dbg !133
  br i1 %83, label %84, label %85, !dbg !114

84:                                               ; preds = %82
  br label %85, !dbg !134

85:                                               ; preds = %84, %82
  %86 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %4, align 8, !dbg !136
  %87 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %86, i32 0, i32 1, !dbg !137
  %88 = load i32, i32* %87, align 8, !dbg !137
  store i32 %88, i32* %3, align 4, !dbg !138
  br label %89, !dbg !138

89:                                               ; preds = %85, %24
  %90 = load i32, i32* %3, align 4, !dbg !139
  ret i32 %90, !dbg !139
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !140 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlRegexp, align 4
  %3 = alloca %struct._xmlRegExecCtxt, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlRegexp* %2, metadata !143, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.declare(metadata %struct._xmlRegExecCtxt* %3, metadata !145, metadata !DIExpression()), !dbg !146
  %4 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %2, i32 0, i32 0, !dbg !147
  %5 = bitcast i32* %4 to i8*, !dbg !148
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0)), !dbg !149
  %6 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %3, i32 0, i32 1, !dbg !150
  %7 = bitcast i32* %6 to i8*, !dbg !151
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)), !dbg !152
  %8 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %3, i32 0, i32 4, !dbg !153
  %9 = bitcast i32* %8 to i8*, !dbg !154
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0)), !dbg !155
  %10 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %2, i32 0, i32 0, !dbg !156
  %11 = load i32, i32* %10, align 4, !dbg !156
  %12 = icmp sgt i32 %11, 0, !dbg !157
  %13 = zext i1 %12 to i32, !dbg !157
  %14 = sext i32 %13 to i64, !dbg !158
  call void @klee_assume(i64 noundef %14), !dbg !159
  %15 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %3, i32 0, i32 1, !dbg !160
  %16 = load i32, i32* %15, align 8, !dbg !160
  %17 = icmp eq i32 %16, 0, !dbg !161
  %18 = zext i1 %17 to i32, !dbg !161
  %19 = sext i32 %18 to i64, !dbg !162
  call void @klee_assume(i64 noundef %19), !dbg !163
  %20 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %3, i32 0, i32 2, !dbg !164
  store i8* inttoptr (i64 1 to i8*), i8** %20, align 8, !dbg !165
  %21 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %3, i32 0, i32 3, !dbg !166
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), i8** %21, align 8, !dbg !167
  %22 = call i32 @xmlFAGenerateTransitions(%struct._xmlRegExecCtxt* noundef %3, %struct._xmlRegexp* noundef %2), !dbg !168
  %23 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %3, i32 0, i32 0, !dbg !169
  %24 = load i32*, i32** %23, align 8, !dbg !169
  %25 = icmp ne i32* %24, null, !dbg !171
  br i1 %25, label %26, label %30, !dbg !172

26:                                               ; preds = %0
  %27 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %3, i32 0, i32 0, !dbg !173
  %28 = load i32*, i32** %27, align 8, !dbg !173
  %29 = bitcast i32* %28 to i8*, !dbg !175
  call void @free(i8* noundef %29) #7, !dbg !176
  br label %30, !dbg !177

30:                                               ; preds = %26, %0
  ret i32 0, !dbg !178
}

declare void @klee_assume(i64 noundef) #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !179 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !183, metadata !DIExpression()), !dbg !184
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !185, metadata !DIExpression()), !dbg !186
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !187, metadata !DIExpression()), !dbg !188
  call void @llvm.dbg.declare(metadata i8** %7, metadata !189, metadata !DIExpression()), !dbg !191
  %8 = load i8*, i8** %4, align 8, !dbg !192
  store i8* %8, i8** %7, align 8, !dbg !191
  br label %9, !dbg !193

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !194
  %11 = add i64 %10, -1, !dbg !194
  store i64 %11, i64* %6, align 8, !dbg !194
  %12 = icmp ugt i64 %10, 0, !dbg !195
  br i1 %12, label %13, label %18, !dbg !193

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !196
  %15 = trunc i32 %14 to i8, !dbg !196
  %16 = load i8*, i8** %7, align 8, !dbg !197
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !197
  store i8* %17, i8** %7, align 8, !dbg !197
  store i8 %15, i8* %16, align 1, !dbg !198
  br label %9, !dbg !193, !llvm.loop !199

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !201
  ret i8* %19, !dbg !202
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20, !20}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !8, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/246_xmlregexp.c_3163_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "bdf368bdb64683e46cb5cb932fa979a9")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 16, baseType: !4, size: 32, elements: !5)
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{!6, !7}
!6 = !DIEnumerator(name: "XML_REGEXP_OK", value: 0)
!7 = !DIEnumerator(name: "XML_REGEXP_OUT_OF_MEMORY", value: -1)
!8 = !{!9, !10}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!11 = distinct !DICompileUnit(language: DW_LANG_C99, file: !12, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!12 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!13 = !{i32 7, !"Dwarf Version", i32 5}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = !{i32 7, !"PIC Level", i32 2}
!17 = !{i32 7, !"PIE Level", i32 2}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"Ubuntu clang version 14.0.6"}
!21 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 36, type: !22, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !27)
!22 = !DISubroutineType(types: !23)
!23 = !{!10, !24}
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !25, line: 46, baseType: !26)
!25 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!26 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!27 = !{}
!28 = !DILocalVariable(name: "size", arg: 1, scope: !21, file: !1, line: 36, type: !24)
!29 = !DILocation(line: 36, column: 24, scope: !21)
!30 = !DILocalVariable(name: "ptr", scope: !21, file: !1, line: 37, type: !10)
!31 = !DILocation(line: 37, column: 11, scope: !21)
!32 = !DILocation(line: 37, column: 24, scope: !21)
!33 = !DILocation(line: 37, column: 17, scope: !21)
!34 = !DILocation(line: 38, column: 9, scope: !35)
!35 = distinct !DILexicalBlock(scope: !21, file: !1, line: 38, column: 9)
!36 = !DILocation(line: 38, column: 9, scope: !21)
!37 = !DILocation(line: 39, column: 28, scope: !38)
!38 = distinct !DILexicalBlock(scope: !35, file: !1, line: 38, column: 14)
!39 = !DILocation(line: 39, column: 33, scope: !38)
!40 = !DILocation(line: 39, column: 9, scope: !38)
!41 = !DILocation(line: 40, column: 5, scope: !38)
!42 = !DILocation(line: 41, column: 12, scope: !21)
!43 = !DILocation(line: 41, column: 5, scope: !21)
!44 = distinct !DISubprogram(name: "xmlRegexpErrMemory", scope: !1, file: !1, line: 44, type: !45, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !27)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !10, !47}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!49 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!50 = !DILocalVariable(name: "ctxt", arg: 1, scope: !44, file: !1, line: 44, type: !10)
!51 = !DILocation(line: 44, column: 31, scope: !44)
!52 = !DILocalVariable(name: "msg", arg: 2, scope: !44, file: !1, line: 44, type: !47)
!53 = !DILocation(line: 44, column: 49, scope: !44)
!54 = !DILocation(line: 46, column: 1, scope: !44)
!55 = distinct !DISubprogram(name: "xmlFAGenerateTransitions", scope: !1, file: !1, line: 49, type: !56, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !27)
!56 = !DISubroutineType(types: !57)
!57 = !{!58, !59, !69}
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegRetVal", file: !1, line: 19, baseType: !3)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegExecCtxtPtr", file: !1, line: 11, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegExecCtxt", file: !1, line: 10, baseType: !62)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegExecCtxt", file: !1, line: 26, size: 320, elements: !63)
!63 = !{!64, !65, !66, !67, !68}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "counts", scope: !62, file: !1, line: 27, baseType: !9, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !62, file: !1, line: 28, baseType: !4, size: 32, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !62, file: !1, line: 29, baseType: !10, size: 64, offset: 128)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "inputString", scope: !62, file: !1, line: 30, baseType: !47, size: 64, offset: 192)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !62, file: !1, line: 31, baseType: !4, size: 32, offset: 256)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegexpPtr", file: !1, line: 14, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegexp", file: !1, line: 13, baseType: !72)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegexp", file: !1, line: 21, size: 32, elements: !73)
!73 = !{!74}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "nbCounters", scope: !72, file: !1, line: 22, baseType: !4, size: 32)
!75 = !DILocalVariable(name: "exec", arg: 1, scope: !55, file: !1, line: 49, type: !59)
!76 = !DILocation(line: 49, column: 57, scope: !55)
!77 = !DILocalVariable(name: "comp", arg: 2, scope: !55, file: !1, line: 49, type: !69)
!78 = !DILocation(line: 49, column: 76, scope: !55)
!79 = !DILocation(line: 50, column: 9, scope: !80)
!80 = distinct !DILexicalBlock(scope: !55, file: !1, line: 50, column: 9)
!81 = !DILocation(line: 50, column: 15, scope: !80)
!82 = !DILocation(line: 50, column: 26, scope: !80)
!83 = !DILocation(line: 50, column: 9, scope: !55)
!84 = !DILocation(line: 51, column: 42, scope: !85)
!85 = distinct !DILexicalBlock(scope: !80, file: !1, line: 50, column: 31)
!86 = !DILocation(line: 51, column: 48, scope: !85)
!87 = !DILocation(line: 51, column: 59, scope: !85)
!88 = !DILocation(line: 51, column: 32, scope: !85)
!89 = !DILocation(line: 51, column: 24, scope: !85)
!90 = !DILocation(line: 51, column: 9, scope: !85)
!91 = !DILocation(line: 51, column: 15, scope: !85)
!92 = !DILocation(line: 51, column: 22, scope: !85)
!93 = !DILocation(line: 52, column: 13, scope: !94)
!94 = distinct !DILexicalBlock(scope: !85, file: !1, line: 52, column: 13)
!95 = !DILocation(line: 52, column: 19, scope: !94)
!96 = !DILocation(line: 52, column: 26, scope: !94)
!97 = !DILocation(line: 52, column: 13, scope: !85)
!98 = !DILocation(line: 53, column: 13, scope: !99)
!99 = distinct !DILexicalBlock(scope: !94, file: !1, line: 52, column: 35)
!100 = !DILocation(line: 54, column: 13, scope: !99)
!101 = !DILocation(line: 57, column: 16, scope: !85)
!102 = !DILocation(line: 57, column: 22, scope: !85)
!103 = !DILocation(line: 57, column: 9, scope: !85)
!104 = !DILocation(line: 57, column: 33, scope: !85)
!105 = !DILocation(line: 57, column: 39, scope: !85)
!106 = !DILocation(line: 57, column: 50, scope: !85)
!107 = !DILocation(line: 60, column: 9, scope: !85)
!108 = !DILocation(line: 63, column: 9, scope: !85)
!109 = !DILocation(line: 64, column: 5, scope: !85)
!110 = !DILocation(line: 65, column: 9, scope: !111)
!111 = distinct !DILexicalBlock(scope: !80, file: !1, line: 64, column: 12)
!112 = !DILocation(line: 65, column: 15, scope: !111)
!113 = !DILocation(line: 65, column: 22, scope: !111)
!114 = !DILocation(line: 69, column: 5, scope: !55)
!115 = !DILocation(line: 69, column: 13, scope: !55)
!116 = !DILocation(line: 69, column: 19, scope: !55)
!117 = !DILocation(line: 69, column: 26, scope: !55)
!118 = !DILocation(line: 69, column: 44, scope: !55)
!119 = !DILocation(line: 69, column: 48, scope: !55)
!120 = !DILocation(line: 69, column: 54, scope: !55)
!121 = !DILocation(line: 69, column: 60, scope: !55)
!122 = !DILocation(line: 69, column: 69, scope: !55)
!123 = !DILocation(line: 70, column: 14, scope: !55)
!124 = !DILocation(line: 70, column: 20, scope: !55)
!125 = !DILocation(line: 70, column: 32, scope: !55)
!126 = !DILocation(line: 70, column: 38, scope: !55)
!127 = !DILocation(line: 70, column: 45, scope: !55)
!128 = !DILocation(line: 70, column: 51, scope: !55)
!129 = !DILocation(line: 71, column: 15, scope: !55)
!130 = !DILocation(line: 71, column: 21, scope: !55)
!131 = !DILocation(line: 71, column: 27, scope: !55)
!132 = !DILocation(line: 71, column: 36, scope: !55)
!133 = !DILocation(line: 0, scope: !55)
!134 = !DILocation(line: 73, column: 9, scope: !135)
!135 = distinct !DILexicalBlock(scope: !55, file: !1, line: 71, column: 46)
!136 = !DILocation(line: 76, column: 12, scope: !55)
!137 = !DILocation(line: 76, column: 18, scope: !55)
!138 = !DILocation(line: 76, column: 5, scope: !55)
!139 = !DILocation(line: 77, column: 1, scope: !55)
!140 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 79, type: !141, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !27)
!141 = !DISubroutineType(types: !142)
!142 = !{!4}
!143 = !DILocalVariable(name: "comp", scope: !140, file: !1, line: 81, type: !71)
!144 = !DILocation(line: 81, column: 15, scope: !140)
!145 = !DILocalVariable(name: "exec", scope: !140, file: !1, line: 82, type: !61)
!146 = !DILocation(line: 82, column: 20, scope: !140)
!147 = !DILocation(line: 85, column: 30, scope: !140)
!148 = !DILocation(line: 85, column: 24, scope: !140)
!149 = !DILocation(line: 85, column: 5, scope: !140)
!150 = !DILocation(line: 86, column: 30, scope: !140)
!151 = !DILocation(line: 86, column: 24, scope: !140)
!152 = !DILocation(line: 86, column: 5, scope: !140)
!153 = !DILocation(line: 87, column: 30, scope: !140)
!154 = !DILocation(line: 87, column: 24, scope: !140)
!155 = !DILocation(line: 87, column: 5, scope: !140)
!156 = !DILocation(line: 90, column: 22, scope: !140)
!157 = !DILocation(line: 90, column: 33, scope: !140)
!158 = !DILocation(line: 90, column: 17, scope: !140)
!159 = !DILocation(line: 90, column: 5, scope: !140)
!160 = !DILocation(line: 91, column: 22, scope: !140)
!161 = !DILocation(line: 91, column: 29, scope: !140)
!162 = !DILocation(line: 91, column: 17, scope: !140)
!163 = !DILocation(line: 91, column: 5, scope: !140)
!164 = !DILocation(line: 94, column: 10, scope: !140)
!165 = !DILocation(line: 94, column: 16, scope: !140)
!166 = !DILocation(line: 95, column: 10, scope: !140)
!167 = !DILocation(line: 95, column: 22, scope: !140)
!168 = !DILocation(line: 98, column: 5, scope: !140)
!169 = !DILocation(line: 101, column: 14, scope: !170)
!170 = distinct !DILexicalBlock(scope: !140, file: !1, line: 101, column: 9)
!171 = !DILocation(line: 101, column: 9, scope: !170)
!172 = !DILocation(line: 101, column: 9, scope: !140)
!173 = !DILocation(line: 102, column: 19, scope: !174)
!174 = distinct !DILexicalBlock(scope: !170, file: !1, line: 101, column: 22)
!175 = !DILocation(line: 102, column: 14, scope: !174)
!176 = !DILocation(line: 102, column: 9, scope: !174)
!177 = !DILocation(line: 103, column: 5, scope: !174)
!178 = !DILocation(line: 105, column: 5, scope: !140)
!179 = distinct !DISubprogram(name: "memset", scope: !180, file: !180, line: 12, type: !181, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !27)
!180 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!181 = !DISubroutineType(types: !182)
!182 = !{!10, !10, !4, !24}
!183 = !DILocalVariable(name: "dst", arg: 1, scope: !179, file: !180, line: 12, type: !10)
!184 = !DILocation(line: 12, column: 20, scope: !179)
!185 = !DILocalVariable(name: "s", arg: 2, scope: !179, file: !180, line: 12, type: !4)
!186 = !DILocation(line: 12, column: 29, scope: !179)
!187 = !DILocalVariable(name: "count", arg: 3, scope: !179, file: !180, line: 12, type: !24)
!188 = !DILocation(line: 12, column: 39, scope: !179)
!189 = !DILocalVariable(name: "a", scope: !179, file: !180, line: 13, type: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!191 = !DILocation(line: 13, column: 9, scope: !179)
!192 = !DILocation(line: 13, column: 13, scope: !179)
!193 = !DILocation(line: 14, column: 3, scope: !179)
!194 = !DILocation(line: 14, column: 15, scope: !179)
!195 = !DILocation(line: 14, column: 18, scope: !179)
!196 = !DILocation(line: 15, column: 12, scope: !179)
!197 = !DILocation(line: 15, column: 7, scope: !179)
!198 = !DILocation(line: 15, column: 10, scope: !179)
!199 = distinct !{!199, !193, !196, !200}
!200 = !{!"llvm.loop.mustprogress"}
!201 = !DILocation(line: 16, column: 10, scope: !179)
!202 = !DILocation(line: 16, column: 3, scope: !179)

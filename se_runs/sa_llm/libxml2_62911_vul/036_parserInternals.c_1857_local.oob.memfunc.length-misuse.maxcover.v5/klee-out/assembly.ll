; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/036_parserInternals.c_1857_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/036_parserInternals.c_1857_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlParserCtxt = type { %struct._xmlSAXHandler*, i8*, i32 }
%struct._xmlSAXHandler = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"sax_initialized\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [114 x i8] c"se_runs/sa_llm/libxml2_62911_vul/036_parserInternals.c_1857_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlNextChar() #0 !dbg !14 {
  ret void, !dbg !18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @target_function(%struct._xmlParserCtxt* noundef %0, %struct._xmlSAXHandler* noundef %1, i8* noundef %2) #0 !dbg !19 {
  %4 = alloca %struct._xmlParserCtxt*, align 8
  %5 = alloca %struct._xmlSAXHandler*, align 8
  %6 = alloca i8*, align 8
  store %struct._xmlParserCtxt* %0, %struct._xmlParserCtxt** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %4, metadata !36, metadata !DIExpression()), !dbg !37
  store %struct._xmlSAXHandler* %1, %struct._xmlSAXHandler** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSAXHandler** %5, metadata !38, metadata !DIExpression()), !dbg !39
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !40, metadata !DIExpression()), !dbg !41
  %7 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %5, align 8, !dbg !42
  %8 = getelementptr inbounds %struct._xmlSAXHandler, %struct._xmlSAXHandler* %7, i32 0, i32 0, !dbg !44
  %9 = load i32, i32* %8, align 4, !dbg !44
  %10 = icmp eq i32 %9, -559038737, !dbg !45
  br i1 %10, label %11, label %19, !dbg !46

11:                                               ; preds = %3
  %12 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !47
  %13 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %12, i32 0, i32 0, !dbg !49
  %14 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %13, align 8, !dbg !49
  %15 = bitcast %struct._xmlSAXHandler* %14 to i8*, !dbg !50
  %16 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %5, align 8, !dbg !51
  %17 = bitcast %struct._xmlSAXHandler* %16 to i8*, !dbg !50
  %18 = call i8* @memcpy(i8* %15, i8* %17, i64 4), !dbg !50
  br label %32, !dbg !52

19:                                               ; preds = %3
  %20 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !53
  %21 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %20, i32 0, i32 0, !dbg !55
  %22 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %21, align 8, !dbg !55
  %23 = bitcast %struct._xmlSAXHandler* %22 to i8*, !dbg !56
  %24 = call i8* @memset(i8* %23, i32 0, i64 4), !dbg !56
  %25 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !57
  %26 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %25, i32 0, i32 0, !dbg !58
  %27 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %26, align 8, !dbg !58
  %28 = bitcast %struct._xmlSAXHandler* %27 to i8*, !dbg !59
  %29 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %5, align 8, !dbg !60
  %30 = bitcast %struct._xmlSAXHandler* %29 to i8*, !dbg !59
  %31 = call i8* @memcpy(i8* %28, i8* %30, i64 0), !dbg !59
  br label %32

32:                                               ; preds = %19, %11
  %33 = load i8*, i8** %6, align 8, !dbg !61
  %34 = icmp ne i8* %33, null, !dbg !61
  br i1 %34, label %35, label %37, !dbg !61

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8, !dbg !62
  br label %40, !dbg !61

37:                                               ; preds = %32
  %38 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !63
  %39 = bitcast %struct._xmlParserCtxt* %38 to i8*, !dbg !63
  br label %40, !dbg !61

40:                                               ; preds = %37, %35
  %41 = phi i8* [ %36, %35 ], [ %39, %37 ], !dbg !61
  %42 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !64
  %43 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %42, i32 0, i32 1, !dbg !65
  store i8* %41, i8** %43, align 8, !dbg !66
  %44 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !67
  %45 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %44, i32 0, i32 2, !dbg !68
  store i32 0, i32* %45, align 8, !dbg !69
  ret void, !dbg !70
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !71 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlParserCtxt*, align 8
  %3 = alloca %struct._xmlSAXHandler*, align 8
  %4 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %2, metadata !74, metadata !DIExpression()), !dbg !75
  %5 = call noalias i8* @malloc(i64 noundef 24) #8, !dbg !76
  %6 = bitcast i8* %5 to %struct._xmlParserCtxt*, !dbg !76
  store %struct._xmlParserCtxt* %6, %struct._xmlParserCtxt** %2, align 8, !dbg !75
  %7 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !77
  %8 = icmp ne %struct._xmlParserCtxt* %7, null, !dbg !77
  br i1 %8, label %10, label %9, !dbg !79

9:                                                ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !80
  br label %70, !dbg !80

10:                                               ; preds = %0
  %11 = call noalias i8* @malloc(i64 noundef 4) #8, !dbg !81
  %12 = bitcast i8* %11 to %struct._xmlSAXHandler*, !dbg !81
  %13 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !82
  %14 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %13, i32 0, i32 0, !dbg !83
  store %struct._xmlSAXHandler* %12, %struct._xmlSAXHandler** %14, align 8, !dbg !84
  %15 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !85
  %16 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %15, i32 0, i32 0, !dbg !87
  %17 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %16, align 8, !dbg !87
  %18 = icmp ne %struct._xmlSAXHandler* %17, null, !dbg !85
  br i1 %18, label %22, label %19, !dbg !88

19:                                               ; preds = %10
  %20 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !89
  %21 = bitcast %struct._xmlParserCtxt* %20 to i8*, !dbg !89
  call void @free(i8* noundef %21) #8, !dbg !91
  store i32 0, i32* %1, align 4, !dbg !92
  br label %70, !dbg !92

22:                                               ; preds = %10
  call void @llvm.dbg.declare(metadata %struct._xmlSAXHandler** %3, metadata !93, metadata !DIExpression()), !dbg !94
  %23 = call noalias i8* @malloc(i64 noundef 4) #8, !dbg !95
  %24 = bitcast i8* %23 to %struct._xmlSAXHandler*, !dbg !95
  store %struct._xmlSAXHandler* %24, %struct._xmlSAXHandler** %3, align 8, !dbg !94
  %25 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !96
  %26 = icmp ne %struct._xmlSAXHandler* %25, null, !dbg !96
  br i1 %26, label %34, label %27, !dbg !98

27:                                               ; preds = %22
  %28 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !99
  %29 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %28, i32 0, i32 0, !dbg !101
  %30 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %29, align 8, !dbg !101
  %31 = bitcast %struct._xmlSAXHandler* %30 to i8*, !dbg !99
  call void @free(i8* noundef %31) #8, !dbg !102
  %32 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !103
  %33 = bitcast %struct._xmlParserCtxt* %32 to i8*, !dbg !103
  call void @free(i8* noundef %33) #8, !dbg !104
  store i32 0, i32* %1, align 4, !dbg !105
  br label %70, !dbg !105

34:                                               ; preds = %22
  %35 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !106
  %36 = getelementptr inbounds %struct._xmlSAXHandler, %struct._xmlSAXHandler* %35, i32 0, i32 0, !dbg !107
  %37 = bitcast i32* %36 to i8*, !dbg !108
  call void @klee_make_symbolic(i8* noundef %37, i64 noundef 4, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !109
  call void @llvm.dbg.declare(metadata i8** %4, metadata !110, metadata !DIExpression()), !dbg !111
  %38 = call noalias i8* @malloc(i64 noundef 1) #8, !dbg !112
  store i8* %38, i8** %4, align 8, !dbg !111
  %39 = load i8*, i8** %4, align 8, !dbg !113
  %40 = icmp ne i8* %39, null, !dbg !113
  br i1 %40, label %50, label %41, !dbg !115

41:                                               ; preds = %34
  %42 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !116
  %43 = bitcast %struct._xmlSAXHandler* %42 to i8*, !dbg !116
  call void @free(i8* noundef %43) #8, !dbg !118
  %44 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !119
  %45 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %44, i32 0, i32 0, !dbg !120
  %46 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %45, align 8, !dbg !120
  %47 = bitcast %struct._xmlSAXHandler* %46 to i8*, !dbg !119
  call void @free(i8* noundef %47) #8, !dbg !121
  %48 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !122
  %49 = bitcast %struct._xmlParserCtxt* %48 to i8*, !dbg !122
  call void @free(i8* noundef %49) #8, !dbg !123
  store i32 0, i32* %1, align 4, !dbg !124
  br label %70, !dbg !124

50:                                               ; preds = %34
  %51 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !125
  %52 = getelementptr inbounds %struct._xmlSAXHandler, %struct._xmlSAXHandler* %51, i32 0, i32 0, !dbg !126
  %53 = load i32, i32* %52, align 4, !dbg !126
  %54 = icmp ne i32 %53, -559038737, !dbg !127
  %55 = zext i1 %54 to i32, !dbg !127
  %56 = sext i32 %55 to i64, !dbg !125
  call void @klee_assume(i64 noundef %56), !dbg !128
  %57 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([114 x i8], [114 x i8]* @.str.2, i64 0, i64 0), i32 noundef 88, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !129
  %58 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !130
  %59 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !131
  %60 = load i8*, i8** %4, align 8, !dbg !132
  call void @target_function(%struct._xmlParserCtxt* noundef %58, %struct._xmlSAXHandler* noundef %59, i8* noundef %60), !dbg !133
  %61 = load i8*, i8** %4, align 8, !dbg !134
  call void @free(i8* noundef %61) #8, !dbg !135
  %62 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !136
  %63 = bitcast %struct._xmlSAXHandler* %62 to i8*, !dbg !136
  call void @free(i8* noundef %63) #8, !dbg !137
  %64 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !138
  %65 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %64, i32 0, i32 0, !dbg !139
  %66 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %65, align 8, !dbg !139
  %67 = bitcast %struct._xmlSAXHandler* %66 to i8*, !dbg !138
  call void @free(i8* noundef %67) #8, !dbg !140
  %68 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !141
  %69 = bitcast %struct._xmlParserCtxt* %68 to i8*, !dbg !141
  call void @free(i8* noundef %69) #8, !dbg !142
  store i32 0, i32* %1, align 4, !dbg !143
  br label %70, !dbg !143

70:                                               ; preds = %50, %41, %27, %19, %9
  %71 = load i32, i32* %1, align 4, !dbg !144
  ret i32 %71, !dbg !144
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !145 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !154, metadata !DIExpression()), !dbg !155
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !156, metadata !DIExpression()), !dbg !157
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !158, metadata !DIExpression()), !dbg !159
  call void @llvm.dbg.declare(metadata i8** %7, metadata !160, metadata !DIExpression()), !dbg !163
  %9 = load i8*, i8** %4, align 8, !dbg !164
  store i8* %9, i8** %7, align 8, !dbg !163
  call void @llvm.dbg.declare(metadata i8** %8, metadata !165, metadata !DIExpression()), !dbg !168
  %10 = load i8*, i8** %5, align 8, !dbg !169
  store i8* %10, i8** %8, align 8, !dbg !168
  br label %11, !dbg !170

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !171
  %13 = add i64 %12, -1, !dbg !171
  store i64 %13, i64* %6, align 8, !dbg !171
  %14 = icmp ugt i64 %12, 0, !dbg !172
  br i1 %14, label %15, label %21, !dbg !170

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !173
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !173
  store i8* %17, i8** %8, align 8, !dbg !173
  %18 = load i8, i8* %16, align 1, !dbg !174
  %19 = load i8*, i8** %7, align 8, !dbg !175
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !175
  store i8* %20, i8** %7, align 8, !dbg !175
  store i8 %18, i8* %19, align 1, !dbg !176
  br label %11, !dbg !170, !llvm.loop !177

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !179
  ret i8* %22, !dbg !180
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #7 !dbg !181 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !185, metadata !DIExpression()), !dbg !186
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !187, metadata !DIExpression()), !dbg !188
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !189, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.declare(metadata i8** %7, metadata !191, metadata !DIExpression()), !dbg !192
  %8 = load i8*, i8** %4, align 8, !dbg !193
  store i8* %8, i8** %7, align 8, !dbg !192
  br label %9, !dbg !194

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !195
  %11 = add i64 %10, -1, !dbg !195
  store i64 %11, i64* %6, align 8, !dbg !195
  %12 = icmp ugt i64 %10, 0, !dbg !196
  br i1 %12, label %13, label %18, !dbg !194

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !197
  %15 = trunc i32 %14 to i8, !dbg !197
  %16 = load i8*, i8** %7, align 8, !dbg !198
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !198
  store i8* %17, i8** %7, align 8, !dbg !198
  store i8 %15, i8* %16, align 1, !dbg !199
  br label %9, !dbg !194, !llvm.loop !200

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !201
  ret i8* %19, !dbg !202
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13, !13, !13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/036_parserInternals.c_1857_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "081103aada38e802092e2bfa01c938e6")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
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
!14 = distinct !DISubprogram(name: "xmlNextChar", scope: !1, file: !1, line: 27, type: !15, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !17)
!15 = !DISubroutineType(types: !16)
!16 = !{null}
!17 = !{}
!18 = !DILocation(line: 29, column: 1, scope: !14)
!19 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 32, type: !20, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !17)
!20 = !DISubroutineType(types: !21)
!21 = !{null, !22, !27, !34}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxt", file: !1, line: 24, baseType: !24)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserCtxt", file: !1, line: 19, size: 192, elements: !25)
!25 = !{!26, !33, !35}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "sax", scope: !24, file: !1, line: 20, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSAXHandler", file: !1, line: 13, baseType: !29)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSAXHandler", file: !1, line: 10, size: 32, elements: !30)
!30 = !{!31}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !29, file: !1, line: 11, baseType: !32, size: 32)
!32 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !24, file: !1, line: 21, baseType: !34, size: 64, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "maxatts", scope: !24, file: !1, line: 22, baseType: !32, size: 32, offset: 128)
!36 = !DILocalVariable(name: "ctxt", arg: 1, scope: !19, file: !1, line: 32, type: !22)
!37 = !DILocation(line: 32, column: 37, scope: !19)
!38 = !DILocalVariable(name: "sax", arg: 2, scope: !19, file: !1, line: 32, type: !27)
!39 = !DILocation(line: 32, column: 58, scope: !19)
!40 = !DILocalVariable(name: "userData", arg: 3, scope: !19, file: !1, line: 32, type: !34)
!41 = !DILocation(line: 32, column: 69, scope: !19)
!42 = !DILocation(line: 33, column: 9, scope: !43)
!43 = distinct !DILexicalBlock(scope: !19, file: !1, line: 33, column: 9)
!44 = !DILocation(line: 33, column: 14, scope: !43)
!45 = !DILocation(line: 33, column: 26, scope: !43)
!46 = !DILocation(line: 33, column: 9, scope: !19)
!47 = !DILocation(line: 34, column: 16, scope: !48)
!48 = distinct !DILexicalBlock(scope: !43, file: !1, line: 33, column: 41)
!49 = !DILocation(line: 34, column: 22, scope: !48)
!50 = !DILocation(line: 34, column: 9, scope: !48)
!51 = !DILocation(line: 34, column: 27, scope: !48)
!52 = !DILocation(line: 35, column: 5, scope: !48)
!53 = !DILocation(line: 36, column: 16, scope: !54)
!54 = distinct !DILexicalBlock(scope: !43, file: !1, line: 35, column: 12)
!55 = !DILocation(line: 36, column: 22, scope: !54)
!56 = !DILocation(line: 36, column: 9, scope: !54)
!57 = !DILocation(line: 37, column: 16, scope: !54)
!58 = !DILocation(line: 37, column: 22, scope: !54)
!59 = !DILocation(line: 37, column: 9, scope: !54)
!60 = !DILocation(line: 37, column: 27, scope: !54)
!61 = !DILocation(line: 39, column: 22, scope: !19)
!62 = !DILocation(line: 39, column: 33, scope: !19)
!63 = !DILocation(line: 39, column: 44, scope: !19)
!64 = !DILocation(line: 39, column: 5, scope: !19)
!65 = !DILocation(line: 39, column: 11, scope: !19)
!66 = !DILocation(line: 39, column: 20, scope: !19)
!67 = !DILocation(line: 41, column: 5, scope: !19)
!68 = !DILocation(line: 41, column: 11, scope: !19)
!69 = !DILocation(line: 41, column: 19, scope: !19)
!70 = !DILocation(line: 42, column: 1, scope: !19)
!71 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 44, type: !72, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !17)
!72 = !DISubroutineType(types: !73)
!73 = !{!32}
!74 = !DILocalVariable(name: "ctxt", scope: !71, file: !1, line: 46, type: !22)
!75 = !DILocation(line: 46, column: 20, scope: !71)
!76 = !DILocation(line: 46, column: 27, scope: !71)
!77 = !DILocation(line: 47, column: 10, scope: !78)
!78 = distinct !DILexicalBlock(scope: !71, file: !1, line: 47, column: 9)
!79 = !DILocation(line: 47, column: 9, scope: !71)
!80 = !DILocation(line: 47, column: 16, scope: !78)
!81 = !DILocation(line: 50, column: 17, scope: !71)
!82 = !DILocation(line: 50, column: 5, scope: !71)
!83 = !DILocation(line: 50, column: 11, scope: !71)
!84 = !DILocation(line: 50, column: 15, scope: !71)
!85 = !DILocation(line: 51, column: 10, scope: !86)
!86 = distinct !DILexicalBlock(scope: !71, file: !1, line: 51, column: 9)
!87 = !DILocation(line: 51, column: 16, scope: !86)
!88 = !DILocation(line: 51, column: 9, scope: !71)
!89 = !DILocation(line: 52, column: 14, scope: !90)
!90 = distinct !DILexicalBlock(scope: !86, file: !1, line: 51, column: 21)
!91 = !DILocation(line: 52, column: 9, scope: !90)
!92 = !DILocation(line: 53, column: 9, scope: !90)
!93 = !DILocalVariable(name: "sax", scope: !71, file: !1, line: 57, type: !27)
!94 = !DILocation(line: 57, column: 20, scope: !71)
!95 = !DILocation(line: 57, column: 26, scope: !71)
!96 = !DILocation(line: 58, column: 10, scope: !97)
!97 = distinct !DILexicalBlock(scope: !71, file: !1, line: 58, column: 9)
!98 = !DILocation(line: 58, column: 9, scope: !71)
!99 = !DILocation(line: 59, column: 14, scope: !100)
!100 = distinct !DILexicalBlock(scope: !97, file: !1, line: 58, column: 15)
!101 = !DILocation(line: 59, column: 20, scope: !100)
!102 = !DILocation(line: 59, column: 9, scope: !100)
!103 = !DILocation(line: 60, column: 14, scope: !100)
!104 = !DILocation(line: 60, column: 9, scope: !100)
!105 = !DILocation(line: 61, column: 9, scope: !100)
!106 = !DILocation(line: 65, column: 25, scope: !71)
!107 = !DILocation(line: 65, column: 30, scope: !71)
!108 = !DILocation(line: 65, column: 24, scope: !71)
!109 = !DILocation(line: 65, column: 5, scope: !71)
!110 = !DILocalVariable(name: "userData", scope: !71, file: !1, line: 68, type: !34)
!111 = !DILocation(line: 68, column: 11, scope: !71)
!112 = !DILocation(line: 68, column: 22, scope: !71)
!113 = !DILocation(line: 69, column: 10, scope: !114)
!114 = distinct !DILexicalBlock(scope: !71, file: !1, line: 69, column: 9)
!115 = !DILocation(line: 69, column: 9, scope: !71)
!116 = !DILocation(line: 70, column: 14, scope: !117)
!117 = distinct !DILexicalBlock(scope: !114, file: !1, line: 69, column: 20)
!118 = !DILocation(line: 70, column: 9, scope: !117)
!119 = !DILocation(line: 71, column: 14, scope: !117)
!120 = !DILocation(line: 71, column: 20, scope: !117)
!121 = !DILocation(line: 71, column: 9, scope: !117)
!122 = !DILocation(line: 72, column: 14, scope: !117)
!123 = !DILocation(line: 72, column: 9, scope: !117)
!124 = !DILocation(line: 73, column: 9, scope: !117)
!125 = !DILocation(line: 77, column: 17, scope: !71)
!126 = !DILocation(line: 77, column: 22, scope: !71)
!127 = !DILocation(line: 77, column: 34, scope: !71)
!128 = !DILocation(line: 77, column: 5, scope: !71)
!129 = !DILocation(line: 88, column: 5, scope: !71)
!130 = !DILocation(line: 91, column: 21, scope: !71)
!131 = !DILocation(line: 91, column: 27, scope: !71)
!132 = !DILocation(line: 91, column: 32, scope: !71)
!133 = !DILocation(line: 91, column: 5, scope: !71)
!134 = !DILocation(line: 94, column: 10, scope: !71)
!135 = !DILocation(line: 94, column: 5, scope: !71)
!136 = !DILocation(line: 95, column: 10, scope: !71)
!137 = !DILocation(line: 95, column: 5, scope: !71)
!138 = !DILocation(line: 96, column: 10, scope: !71)
!139 = !DILocation(line: 96, column: 16, scope: !71)
!140 = !DILocation(line: 96, column: 5, scope: !71)
!141 = !DILocation(line: 97, column: 10, scope: !71)
!142 = !DILocation(line: 97, column: 5, scope: !71)
!143 = !DILocation(line: 99, column: 5, scope: !71)
!144 = !DILocation(line: 100, column: 1, scope: !71)
!145 = distinct !DISubprogram(name: "memcpy", scope: !146, file: !146, line: 12, type: !147, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !17)
!146 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!147 = !DISubroutineType(types: !148)
!148 = !{!34, !34, !149, !151}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !152, line: 46, baseType: !153)
!152 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!153 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!154 = !DILocalVariable(name: "destaddr", arg: 1, scope: !145, file: !146, line: 12, type: !34)
!155 = !DILocation(line: 12, column: 20, scope: !145)
!156 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !145, file: !146, line: 12, type: !149)
!157 = !DILocation(line: 12, column: 42, scope: !145)
!158 = !DILocalVariable(name: "len", arg: 3, scope: !145, file: !146, line: 12, type: !151)
!159 = !DILocation(line: 12, column: 58, scope: !145)
!160 = !DILocalVariable(name: "dest", scope: !145, file: !146, line: 13, type: !161)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!163 = !DILocation(line: 13, column: 9, scope: !145)
!164 = !DILocation(line: 13, column: 16, scope: !145)
!165 = !DILocalVariable(name: "src", scope: !145, file: !146, line: 14, type: !166)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !162)
!168 = !DILocation(line: 14, column: 15, scope: !145)
!169 = !DILocation(line: 14, column: 21, scope: !145)
!170 = !DILocation(line: 16, column: 3, scope: !145)
!171 = !DILocation(line: 16, column: 13, scope: !145)
!172 = !DILocation(line: 16, column: 16, scope: !145)
!173 = !DILocation(line: 17, column: 19, scope: !145)
!174 = !DILocation(line: 17, column: 15, scope: !145)
!175 = !DILocation(line: 17, column: 10, scope: !145)
!176 = !DILocation(line: 17, column: 13, scope: !145)
!177 = distinct !{!177, !170, !173, !178}
!178 = !{!"llvm.loop.mustprogress"}
!179 = !DILocation(line: 18, column: 10, scope: !145)
!180 = !DILocation(line: 18, column: 3, scope: !145)
!181 = distinct !DISubprogram(name: "memset", scope: !182, file: !182, line: 12, type: !183, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !17)
!182 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!183 = !DISubroutineType(types: !184)
!184 = !{!34, !34, !32, !151}
!185 = !DILocalVariable(name: "dst", arg: 1, scope: !181, file: !182, line: 12, type: !34)
!186 = !DILocation(line: 12, column: 20, scope: !181)
!187 = !DILocalVariable(name: "s", arg: 2, scope: !181, file: !182, line: 12, type: !32)
!188 = !DILocation(line: 12, column: 29, scope: !181)
!189 = !DILocalVariable(name: "count", arg: 3, scope: !181, file: !182, line: 12, type: !151)
!190 = !DILocation(line: 12, column: 39, scope: !181)
!191 = !DILocalVariable(name: "a", scope: !181, file: !182, line: 13, type: !161)
!192 = !DILocation(line: 13, column: 9, scope: !181)
!193 = !DILocation(line: 13, column: 13, scope: !181)
!194 = !DILocation(line: 14, column: 3, scope: !181)
!195 = !DILocation(line: 14, column: 15, scope: !181)
!196 = !DILocation(line: 14, column: 18, scope: !181)
!197 = !DILocation(line: 15, column: 12, scope: !181)
!198 = !DILocation(line: 15, column: 7, scope: !181)
!199 = !DILocation(line: 15, column: 10, scope: !181)
!200 = distinct !{!200, !194, !197, !178}
!201 = !DILocation(line: 16, column: 10, scope: !181)
!202 = !DILocation(line: 16, column: 3, scope: !181)

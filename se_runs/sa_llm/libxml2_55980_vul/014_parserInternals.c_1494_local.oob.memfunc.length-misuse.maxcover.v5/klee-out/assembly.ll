; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/014_parserInternals.c_1494_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/014_parserInternals.c_1494_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlParserCtxt = type { %struct._xmlSAXHandler*, i8*, i32, i8* }
%struct._xmlSAXHandler = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"sax_initialized\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"userData\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [114 x i8] c"se_runs/sa_llm/libxml2_55980_vul/014_parserInternals.c_1494_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !30 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlParserCtxt*, align 8
  %3 = alloca %struct._xmlSAXHandler*, align 8
  %4 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %2, metadata !34, metadata !DIExpression()), !dbg !35
  %5 = call noalias i8* @malloc(i64 noundef 32) #8, !dbg !36
  %6 = bitcast i8* %5 to %struct._xmlParserCtxt*, !dbg !37
  store %struct._xmlParserCtxt* %6, %struct._xmlParserCtxt** %2, align 8, !dbg !35
  %7 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !38
  %8 = icmp ne %struct._xmlParserCtxt* %7, null, !dbg !38
  br i1 %8, label %10, label %9, !dbg !40

9:                                                ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !41
  br label %61, !dbg !41

10:                                               ; preds = %0
  %11 = call noalias i8* @malloc(i64 noundef 4) #8, !dbg !42
  %12 = bitcast i8* %11 to %struct._xmlSAXHandler*, !dbg !43
  %13 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !44
  %14 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %13, i32 0, i32 0, !dbg !45
  store %struct._xmlSAXHandler* %12, %struct._xmlSAXHandler** %14, align 8, !dbg !46
  %15 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !47
  %16 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %15, i32 0, i32 0, !dbg !49
  %17 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %16, align 8, !dbg !49
  %18 = icmp ne %struct._xmlSAXHandler* %17, null, !dbg !47
  br i1 %18, label %22, label %19, !dbg !50

19:                                               ; preds = %10
  %20 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !51
  %21 = bitcast %struct._xmlParserCtxt* %20 to i8*, !dbg !51
  call void @free(i8* noundef %21) #8, !dbg !53
  store i32 0, i32* %1, align 4, !dbg !54
  br label %61, !dbg !54

22:                                               ; preds = %10
  call void @llvm.dbg.declare(metadata %struct._xmlSAXHandler** %3, metadata !55, metadata !DIExpression()), !dbg !56
  %23 = call noalias i8* @malloc(i64 noundef 4) #8, !dbg !57
  %24 = bitcast i8* %23 to %struct._xmlSAXHandler*, !dbg !58
  store %struct._xmlSAXHandler* %24, %struct._xmlSAXHandler** %3, align 8, !dbg !56
  %25 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !59
  %26 = icmp ne %struct._xmlSAXHandler* %25, null, !dbg !59
  br i1 %26, label %34, label %27, !dbg !61

27:                                               ; preds = %22
  %28 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !62
  %29 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %28, i32 0, i32 0, !dbg !64
  %30 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %29, align 8, !dbg !64
  %31 = bitcast %struct._xmlSAXHandler* %30 to i8*, !dbg !62
  call void @free(i8* noundef %31) #8, !dbg !65
  %32 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !66
  %33 = bitcast %struct._xmlParserCtxt* %32 to i8*, !dbg !66
  call void @free(i8* noundef %33) #8, !dbg !67
  store i32 0, i32* %1, align 4, !dbg !68
  br label %61, !dbg !68

34:                                               ; preds = %22
  %35 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !69
  %36 = getelementptr inbounds %struct._xmlSAXHandler, %struct._xmlSAXHandler* %35, i32 0, i32 0, !dbg !70
  %37 = bitcast i32* %36 to i8*, !dbg !71
  call void @klee_make_symbolic(i8* noundef %37, i64 noundef 4, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !72
  call void @llvm.dbg.declare(metadata i8** %4, metadata !73, metadata !DIExpression()), !dbg !74
  %38 = bitcast i8** %4 to i8*, !dbg !75
  call void @klee_make_symbolic(i8* noundef %38, i64 noundef 8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)), !dbg !76
  %39 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !77
  %40 = icmp ne %struct._xmlSAXHandler* %39, null, !dbg !78
  %41 = zext i1 %40 to i32, !dbg !78
  %42 = sext i32 %41 to i64, !dbg !77
  call void @klee_assume(i64 noundef %42), !dbg !79
  %43 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !80
  %44 = getelementptr inbounds %struct._xmlSAXHandler, %struct._xmlSAXHandler* %43, i32 0, i32 0, !dbg !81
  %45 = load i32, i32* %44, align 4, !dbg !81
  %46 = icmp ne i32 %45, -554844497, !dbg !82
  %47 = zext i1 %46 to i32, !dbg !82
  %48 = sext i32 %47 to i64, !dbg !80
  call void @klee_assume(i64 noundef %48), !dbg !83
  %49 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !84
  %50 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !85
  %51 = load i8*, i8** %4, align 8, !dbg !86
  call void @xmlInitParserCtxt(%struct._xmlParserCtxt* noundef %49, %struct._xmlSAXHandler* noundef %50, i8* noundef %51), !dbg !87
  %52 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([114 x i8], [114 x i8]* @.str.3, i64 0, i64 0), i32 noundef 79, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !88
  %53 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !89
  %54 = bitcast %struct._xmlSAXHandler* %53 to i8*, !dbg !89
  call void @free(i8* noundef %54) #8, !dbg !90
  %55 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !91
  %56 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %55, i32 0, i32 0, !dbg !92
  %57 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %56, align 8, !dbg !92
  %58 = bitcast %struct._xmlSAXHandler* %57 to i8*, !dbg !91
  call void @free(i8* noundef %58) #8, !dbg !93
  %59 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !94
  %60 = bitcast %struct._xmlParserCtxt* %59 to i8*, !dbg !94
  call void @free(i8* noundef %60) #8, !dbg !95
  store i32 0, i32* %1, align 4, !dbg !96
  br label %61, !dbg !96

61:                                               ; preds = %34, %27, %19, %9
  %62 = load i32, i32* %1, align 4, !dbg !97
  ret i32 %62, !dbg !97
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlInitParserCtxt(%struct._xmlParserCtxt* noundef %0, %struct._xmlSAXHandler* noundef %1, i8* noundef %2) #0 !dbg !98 {
  %4 = alloca %struct._xmlParserCtxt*, align 8
  %5 = alloca %struct._xmlSAXHandler*, align 8
  %6 = alloca i8*, align 8
  store %struct._xmlParserCtxt* %0, %struct._xmlParserCtxt** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %4, metadata !101, metadata !DIExpression()), !dbg !102
  store %struct._xmlSAXHandler* %1, %struct._xmlSAXHandler** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSAXHandler** %5, metadata !103, metadata !DIExpression()), !dbg !104
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !105, metadata !DIExpression()), !dbg !106
  %7 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %5, align 8, !dbg !107
  %8 = icmp eq %struct._xmlSAXHandler* %7, null, !dbg !109
  br i1 %8, label %9, label %19, !dbg !110

9:                                                ; preds = %3
  %10 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !111
  %11 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %10, i32 0, i32 0, !dbg !113
  %12 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %11, align 8, !dbg !113
  %13 = bitcast %struct._xmlSAXHandler* %12 to i8*, !dbg !114
  %14 = call i8* @memset(i8* %13, i32 0, i64 4), !dbg !114
  %15 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !115
  %16 = bitcast %struct._xmlParserCtxt* %15 to i8*, !dbg !115
  %17 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !116
  %18 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %17, i32 0, i32 1, !dbg !117
  store i8* %16, i8** %18, align 8, !dbg !118
  br label %57, !dbg !119

19:                                               ; preds = %3
  %20 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %5, align 8, !dbg !120
  %21 = getelementptr inbounds %struct._xmlSAXHandler, %struct._xmlSAXHandler* %20, i32 0, i32 0, !dbg !123
  %22 = load i32, i32* %21, align 4, !dbg !123
  %23 = icmp eq i32 %22, -554844497, !dbg !124
  br i1 %23, label %24, label %32, !dbg !125

24:                                               ; preds = %19
  %25 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !126
  %26 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %25, i32 0, i32 0, !dbg !128
  %27 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %26, align 8, !dbg !128
  %28 = bitcast %struct._xmlSAXHandler* %27 to i8*, !dbg !129
  %29 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %5, align 8, !dbg !130
  %30 = bitcast %struct._xmlSAXHandler* %29 to i8*, !dbg !129
  %31 = call i8* @memcpy(i8* %28, i8* %30, i64 4), !dbg !129
  br label %45, !dbg !131

32:                                               ; preds = %19
  %33 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !132
  %34 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %33, i32 0, i32 0, !dbg !134
  %35 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %34, align 8, !dbg !134
  %36 = bitcast %struct._xmlSAXHandler* %35 to i8*, !dbg !135
  %37 = call i8* @memset(i8* %36, i32 0, i64 4), !dbg !135
  %38 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !136
  %39 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %38, i32 0, i32 0, !dbg !137
  %40 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %39, align 8, !dbg !137
  %41 = bitcast %struct._xmlSAXHandler* %40 to i8*, !dbg !138
  %42 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %5, align 8, !dbg !139
  %43 = bitcast %struct._xmlSAXHandler* %42 to i8*, !dbg !138
  %44 = call i8* @memcpy(i8* %41, i8* %43, i64 4), !dbg !138
  br label %45

45:                                               ; preds = %32, %24
  %46 = load i8*, i8** %6, align 8, !dbg !140
  %47 = icmp ne i8* %46, null, !dbg !140
  br i1 %47, label %48, label %50, !dbg !140

48:                                               ; preds = %45
  %49 = load i8*, i8** %6, align 8, !dbg !141
  br label %53, !dbg !140

50:                                               ; preds = %45
  %51 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !142
  %52 = bitcast %struct._xmlParserCtxt* %51 to i8*, !dbg !142
  br label %53, !dbg !140

53:                                               ; preds = %50, %48
  %54 = phi i8* [ %49, %48 ], [ %52, %50 ], !dbg !140
  %55 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !143
  %56 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %55, i32 0, i32 1, !dbg !144
  store i8* %54, i8** %56, align 8, !dbg !145
  br label %57

57:                                               ; preds = %53, %9
  %58 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !146
  %59 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %58, i32 0, i32 2, !dbg !147
  store i32 0, i32* %59, align 8, !dbg !148
  %60 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !149
  %61 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %60, i32 0, i32 3, !dbg !150
  store i8* null, i8** %61, align 8, !dbg !151
  ret void, !dbg !152
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !153 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !162, metadata !DIExpression()), !dbg !163
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !164, metadata !DIExpression()), !dbg !165
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !166, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.declare(metadata i8** %7, metadata !168, metadata !DIExpression()), !dbg !171
  %9 = load i8*, i8** %4, align 8, !dbg !172
  store i8* %9, i8** %7, align 8, !dbg !171
  call void @llvm.dbg.declare(metadata i8** %8, metadata !173, metadata !DIExpression()), !dbg !176
  %10 = load i8*, i8** %5, align 8, !dbg !177
  store i8* %10, i8** %8, align 8, !dbg !176
  br label %11, !dbg !178

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !179
  %13 = add i64 %12, -1, !dbg !179
  store i64 %13, i64* %6, align 8, !dbg !179
  %14 = icmp ugt i64 %12, 0, !dbg !180
  br i1 %14, label %15, label %21, !dbg !178

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !181
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !181
  store i8* %17, i8** %8, align 8, !dbg !181
  %18 = load i8, i8* %16, align 1, !dbg !182
  %19 = load i8*, i8** %7, align 8, !dbg !183
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !183
  store i8* %20, i8** %7, align 8, !dbg !183
  store i8 %18, i8* %19, align 1, !dbg !184
  br label %11, !dbg !178, !llvm.loop !185

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !187
  ret i8* %22, !dbg !188
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #7 !dbg !189 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !193, metadata !DIExpression()), !dbg !194
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !195, metadata !DIExpression()), !dbg !196
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !197, metadata !DIExpression()), !dbg !198
  call void @llvm.dbg.declare(metadata i8** %7, metadata !199, metadata !DIExpression()), !dbg !200
  %8 = load i8*, i8** %4, align 8, !dbg !201
  store i8* %8, i8** %7, align 8, !dbg !200
  br label %9, !dbg !202

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !203
  %11 = add i64 %10, -1, !dbg !203
  store i64 %11, i64* %6, align 8, !dbg !203
  %12 = icmp ugt i64 %10, 0, !dbg !204
  br i1 %12, label %13, label %18, !dbg !202

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !205
  %15 = trunc i32 %14 to i8, !dbg !205
  %16 = load i8*, i8** %7, align 8, !dbg !206
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !206
  store i8* %17, i8** %7, align 8, !dbg !206
  store i8 %15, i8* %16, align 1, !dbg !207
  br label %9, !dbg !202, !llvm.loop !208

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !209
  ret i8* %19, !dbg !210
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0, !18, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29, !29, !29}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/014_parserInternals.c_1494_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "3f2f1ee76fb3a46a8214559f7205452b")
!2 = !{!3, !8, !15}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxt", file: !1, line: 26, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserCtxt", file: !1, line: 20, size: 256, elements: !6)
!6 = !{!7, !14, !16, !17}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "sax", scope: !5, file: !1, line: 21, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSAXHandler", file: !1, line: 18, baseType: !10)
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSAXHandler", file: !1, line: 15, size: 32, elements: !11)
!11 = !{!12}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !10, file: !1, line: 16, baseType: !13, size: 32)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !5, file: !1, line: 22, baseType: !15, size: 64, offset: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "maxatts", scope: !5, file: !1, line: 23, baseType: !13, size: 32, offset: 128)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "atts", scope: !5, file: !1, line: 24, baseType: !15, size: 64, offset: 192)
!18 = distinct !DICompileUnit(language: DW_LANG_C99, file: !19, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!19 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!20 = distinct !DICompileUnit(language: DW_LANG_C99, file: !21, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!21 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!22 = !{i32 7, !"Dwarf Version", i32 5}
!23 = !{i32 2, !"Debug Info Version", i32 3}
!24 = !{i32 1, !"wchar_size", i32 4}
!25 = !{i32 7, !"PIC Level", i32 2}
!26 = !{i32 7, !"PIE Level", i32 2}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"Ubuntu clang version 14.0.6"}
!30 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 31, type: !31, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!31 = !DISubroutineType(types: !32)
!32 = !{!13}
!33 = !{}
!34 = !DILocalVariable(name: "ctxt", scope: !30, file: !1, line: 33, type: !3)
!35 = !DILocation(line: 33, column: 20, scope: !30)
!36 = !DILocation(line: 33, column: 43, scope: !30)
!37 = !DILocation(line: 33, column: 27, scope: !30)
!38 = !DILocation(line: 34, column: 10, scope: !39)
!39 = distinct !DILexicalBlock(scope: !30, file: !1, line: 34, column: 9)
!40 = !DILocation(line: 34, column: 9, scope: !30)
!41 = !DILocation(line: 34, column: 16, scope: !39)
!42 = !DILocation(line: 37, column: 33, scope: !30)
!43 = !DILocation(line: 37, column: 17, scope: !30)
!44 = !DILocation(line: 37, column: 5, scope: !30)
!45 = !DILocation(line: 37, column: 11, scope: !30)
!46 = !DILocation(line: 37, column: 15, scope: !30)
!47 = !DILocation(line: 38, column: 10, scope: !48)
!48 = distinct !DILexicalBlock(scope: !30, file: !1, line: 38, column: 9)
!49 = !DILocation(line: 38, column: 16, scope: !48)
!50 = !DILocation(line: 38, column: 9, scope: !30)
!51 = !DILocation(line: 39, column: 14, scope: !52)
!52 = distinct !DILexicalBlock(scope: !48, file: !1, line: 38, column: 21)
!53 = !DILocation(line: 39, column: 9, scope: !52)
!54 = !DILocation(line: 40, column: 9, scope: !52)
!55 = !DILocalVariable(name: "sax", scope: !30, file: !1, line: 44, type: !8)
!56 = !DILocation(line: 44, column: 20, scope: !30)
!57 = !DILocation(line: 44, column: 42, scope: !30)
!58 = !DILocation(line: 44, column: 26, scope: !30)
!59 = !DILocation(line: 45, column: 10, scope: !60)
!60 = distinct !DILexicalBlock(scope: !30, file: !1, line: 45, column: 9)
!61 = !DILocation(line: 45, column: 9, scope: !30)
!62 = !DILocation(line: 46, column: 14, scope: !63)
!63 = distinct !DILexicalBlock(scope: !60, file: !1, line: 45, column: 15)
!64 = !DILocation(line: 46, column: 20, scope: !63)
!65 = !DILocation(line: 46, column: 9, scope: !63)
!66 = !DILocation(line: 47, column: 14, scope: !63)
!67 = !DILocation(line: 47, column: 9, scope: !63)
!68 = !DILocation(line: 48, column: 9, scope: !63)
!69 = !DILocation(line: 52, column: 25, scope: !30)
!70 = !DILocation(line: 52, column: 30, scope: !30)
!71 = !DILocation(line: 52, column: 24, scope: !30)
!72 = !DILocation(line: 52, column: 5, scope: !30)
!73 = !DILocalVariable(name: "userData", scope: !30, file: !1, line: 55, type: !15)
!74 = !DILocation(line: 55, column: 11, scope: !30)
!75 = !DILocation(line: 56, column: 24, scope: !30)
!76 = !DILocation(line: 56, column: 5, scope: !30)
!77 = !DILocation(line: 59, column: 17, scope: !30)
!78 = !DILocation(line: 59, column: 21, scope: !30)
!79 = !DILocation(line: 59, column: 5, scope: !30)
!80 = !DILocation(line: 64, column: 17, scope: !30)
!81 = !DILocation(line: 64, column: 22, scope: !30)
!82 = !DILocation(line: 64, column: 34, scope: !30)
!83 = !DILocation(line: 64, column: 5, scope: !30)
!84 = !DILocation(line: 67, column: 23, scope: !30)
!85 = !DILocation(line: 67, column: 29, scope: !30)
!86 = !DILocation(line: 67, column: 34, scope: !30)
!87 = !DILocation(line: 67, column: 5, scope: !30)
!88 = !DILocation(line: 79, column: 5, scope: !30)
!89 = !DILocation(line: 82, column: 10, scope: !30)
!90 = !DILocation(line: 82, column: 5, scope: !30)
!91 = !DILocation(line: 83, column: 10, scope: !30)
!92 = !DILocation(line: 83, column: 16, scope: !30)
!93 = !DILocation(line: 83, column: 5, scope: !30)
!94 = !DILocation(line: 84, column: 10, scope: !30)
!95 = !DILocation(line: 84, column: 5, scope: !30)
!96 = !DILocation(line: 86, column: 5, scope: !30)
!97 = !DILocation(line: 87, column: 1, scope: !30)
!98 = distinct !DISubprogram(name: "xmlInitParserCtxt", scope: !1, file: !1, line: 90, type: !99, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!99 = !DISubroutineType(types: !100)
!100 = !{null, !3, !8, !15}
!101 = !DILocalVariable(name: "ctxt", arg: 1, scope: !98, file: !1, line: 90, type: !3)
!102 = !DILocation(line: 90, column: 39, scope: !98)
!103 = !DILocalVariable(name: "sax", arg: 2, scope: !98, file: !1, line: 90, type: !8)
!104 = !DILocation(line: 90, column: 60, scope: !98)
!105 = !DILocalVariable(name: "userData", arg: 3, scope: !98, file: !1, line: 90, type: !15)
!106 = !DILocation(line: 90, column: 71, scope: !98)
!107 = !DILocation(line: 91, column: 9, scope: !108)
!108 = distinct !DILexicalBlock(scope: !98, file: !1, line: 91, column: 9)
!109 = !DILocation(line: 91, column: 13, scope: !108)
!110 = !DILocation(line: 91, column: 9, scope: !98)
!111 = !DILocation(line: 92, column: 16, scope: !112)
!112 = distinct !DILexicalBlock(scope: !108, file: !1, line: 91, column: 22)
!113 = !DILocation(line: 92, column: 22, scope: !112)
!114 = !DILocation(line: 92, column: 9, scope: !112)
!115 = !DILocation(line: 94, column: 26, scope: !112)
!116 = !DILocation(line: 94, column: 9, scope: !112)
!117 = !DILocation(line: 94, column: 15, scope: !112)
!118 = !DILocation(line: 94, column: 24, scope: !112)
!119 = !DILocation(line: 95, column: 5, scope: !112)
!120 = !DILocation(line: 96, column: 13, scope: !121)
!121 = distinct !DILexicalBlock(scope: !122, file: !1, line: 96, column: 13)
!122 = distinct !DILexicalBlock(scope: !108, file: !1, line: 95, column: 12)
!123 = !DILocation(line: 96, column: 18, scope: !121)
!124 = !DILocation(line: 96, column: 30, scope: !121)
!125 = !DILocation(line: 96, column: 13, scope: !122)
!126 = !DILocation(line: 97, column: 20, scope: !127)
!127 = distinct !DILexicalBlock(scope: !121, file: !1, line: 96, column: 49)
!128 = !DILocation(line: 97, column: 26, scope: !127)
!129 = !DILocation(line: 97, column: 13, scope: !127)
!130 = !DILocation(line: 97, column: 31, scope: !127)
!131 = !DILocation(line: 98, column: 9, scope: !127)
!132 = !DILocation(line: 100, column: 20, scope: !133)
!133 = distinct !DILexicalBlock(scope: !121, file: !1, line: 98, column: 16)
!134 = !DILocation(line: 100, column: 26, scope: !133)
!135 = !DILocation(line: 100, column: 13, scope: !133)
!136 = !DILocation(line: 101, column: 20, scope: !133)
!137 = !DILocation(line: 101, column: 26, scope: !133)
!138 = !DILocation(line: 101, column: 13, scope: !133)
!139 = !DILocation(line: 101, column: 31, scope: !133)
!140 = !DILocation(line: 103, column: 26, scope: !122)
!141 = !DILocation(line: 103, column: 37, scope: !122)
!142 = !DILocation(line: 103, column: 48, scope: !122)
!143 = !DILocation(line: 103, column: 9, scope: !122)
!144 = !DILocation(line: 103, column: 15, scope: !122)
!145 = !DILocation(line: 103, column: 24, scope: !122)
!146 = !DILocation(line: 106, column: 5, scope: !98)
!147 = !DILocation(line: 106, column: 11, scope: !98)
!148 = !DILocation(line: 106, column: 19, scope: !98)
!149 = !DILocation(line: 107, column: 5, scope: !98)
!150 = !DILocation(line: 107, column: 11, scope: !98)
!151 = !DILocation(line: 107, column: 16, scope: !98)
!152 = !DILocation(line: 109, column: 1, scope: !98)
!153 = distinct !DISubprogram(name: "memcpy", scope: !154, file: !154, line: 12, type: !155, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !33)
!154 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!155 = !DISubroutineType(types: !156)
!156 = !{!15, !15, !157, !159}
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !160, line: 46, baseType: !161)
!160 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!161 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!162 = !DILocalVariable(name: "destaddr", arg: 1, scope: !153, file: !154, line: 12, type: !15)
!163 = !DILocation(line: 12, column: 20, scope: !153)
!164 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !153, file: !154, line: 12, type: !157)
!165 = !DILocation(line: 12, column: 42, scope: !153)
!166 = !DILocalVariable(name: "len", arg: 3, scope: !153, file: !154, line: 12, type: !159)
!167 = !DILocation(line: 12, column: 58, scope: !153)
!168 = !DILocalVariable(name: "dest", scope: !153, file: !154, line: 13, type: !169)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!171 = !DILocation(line: 13, column: 9, scope: !153)
!172 = !DILocation(line: 13, column: 16, scope: !153)
!173 = !DILocalVariable(name: "src", scope: !153, file: !154, line: 14, type: !174)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!176 = !DILocation(line: 14, column: 15, scope: !153)
!177 = !DILocation(line: 14, column: 21, scope: !153)
!178 = !DILocation(line: 16, column: 3, scope: !153)
!179 = !DILocation(line: 16, column: 13, scope: !153)
!180 = !DILocation(line: 16, column: 16, scope: !153)
!181 = !DILocation(line: 17, column: 19, scope: !153)
!182 = !DILocation(line: 17, column: 15, scope: !153)
!183 = !DILocation(line: 17, column: 10, scope: !153)
!184 = !DILocation(line: 17, column: 13, scope: !153)
!185 = distinct !{!185, !178, !181, !186}
!186 = !{!"llvm.loop.mustprogress"}
!187 = !DILocation(line: 18, column: 10, scope: !153)
!188 = !DILocation(line: 18, column: 3, scope: !153)
!189 = distinct !DISubprogram(name: "memset", scope: !190, file: !190, line: 12, type: !191, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !20, retainedNodes: !33)
!190 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!191 = !DISubroutineType(types: !192)
!192 = !{!15, !15, !13, !159}
!193 = !DILocalVariable(name: "dst", arg: 1, scope: !189, file: !190, line: 12, type: !15)
!194 = !DILocation(line: 12, column: 20, scope: !189)
!195 = !DILocalVariable(name: "s", arg: 2, scope: !189, file: !190, line: 12, type: !13)
!196 = !DILocation(line: 12, column: 29, scope: !189)
!197 = !DILocalVariable(name: "count", arg: 3, scope: !189, file: !190, line: 12, type: !159)
!198 = !DILocation(line: 12, column: 39, scope: !189)
!199 = !DILocalVariable(name: "a", scope: !189, file: !190, line: 13, type: !169)
!200 = !DILocation(line: 13, column: 9, scope: !189)
!201 = !DILocation(line: 13, column: 13, scope: !189)
!202 = !DILocation(line: 14, column: 3, scope: !189)
!203 = !DILocation(line: 14, column: 15, scope: !189)
!204 = !DILocation(line: 14, column: 18, scope: !189)
!205 = !DILocation(line: 15, column: 12, scope: !189)
!206 = !DILocation(line: 15, column: 7, scope: !189)
!207 = !DILocation(line: 15, column: 10, scope: !189)
!208 = distinct !{!208, !202, !205, !186}
!209 = !DILocation(line: 16, column: 10, scope: !189)
!210 = !DILocation(line: 16, column: 3, scope: !189)

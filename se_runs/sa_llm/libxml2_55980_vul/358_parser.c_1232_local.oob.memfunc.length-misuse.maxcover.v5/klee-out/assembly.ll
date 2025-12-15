; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/358_parser.c_1232_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/358_parser.c_1232_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlParserCtxt = type opaque

@.str = private unnamed_addr constant [12 x i8] c"remove_head\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"len_val\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"buffer_size\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"src_buffer\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.5 = private unnamed_addr constant [100 x i8] c"(remove_head <= buffer_size && (1 + new_len) <= (buffer_size - remove_head)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_55980_vul/358_parser.c_1232_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlAttrNormalizeSpace(i8* noundef %0, i8* noundef %1) #0 !dbg !20 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !24, metadata !DIExpression()), !dbg !25
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !26, metadata !DIExpression()), !dbg !27
  ret void, !dbg !28
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlErrMemory(%struct._xmlParserCtxt* noundef %0, i8* noundef %1) #0 !dbg !29 {
  %3 = alloca %struct._xmlParserCtxt*, align 8
  %4 = alloca i8*, align 8
  store %struct._xmlParserCtxt* %0, %struct._xmlParserCtxt** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %3, metadata !35, metadata !DIExpression()), !dbg !36
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !37, metadata !DIExpression()), !dbg !38
  ret void, !dbg !39
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlAttrNormalizeSpace2(%struct._xmlParserCtxt* noundef %0, i8* noundef %1, i32* noundef %2, i32 noundef %3) #0 !dbg !40 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct._xmlParserCtxt*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct._xmlParserCtxt* %0, %struct._xmlParserCtxt** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %6, metadata !45, metadata !DIExpression()), !dbg !46
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !47, metadata !DIExpression()), !dbg !48
  store i32* %2, i32** %8, align 8
  call void @llvm.dbg.declare(metadata i32** %8, metadata !49, metadata !DIExpression()), !dbg !50
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !51, metadata !DIExpression()), !dbg !52
  %11 = load i8*, i8** %7, align 8, !dbg !53
  %12 = icmp eq i8* %11, null, !dbg !55
  br i1 %12, label %13, label %27, !dbg !56

13:                                               ; preds = %4
  call void @llvm.dbg.declare(metadata i8** %10, metadata !57, metadata !DIExpression()), !dbg !59
  %14 = call noalias i8* @malloc(i64 noundef 100) #8, !dbg !60
  store i8* %14, i8** %10, align 8, !dbg !59
  %15 = load i8*, i8** %10, align 8, !dbg !61
  %16 = icmp eq i8* %15, null, !dbg !63
  br i1 %16, label %17, label %19, !dbg !64

17:                                               ; preds = %13
  %18 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %6, align 8, !dbg !65
  call void @xmlErrMemory(%struct._xmlParserCtxt* noundef %18, i8* noundef null), !dbg !67
  store i8* null, i8** %5, align 8, !dbg !68
  br label %48, !dbg !68

19:                                               ; preds = %13
  %20 = load i8*, i8** %10, align 8, !dbg !69
  %21 = load i8*, i8** %10, align 8, !dbg !70
  call void @xmlAttrNormalizeSpace(i8* noundef %20, i8* noundef %21), !dbg !71
  %22 = load i8*, i8** %10, align 8, !dbg !72
  %23 = call i64 @strlen(i8* noundef %22) #9, !dbg !73
  %24 = trunc i64 %23 to i32, !dbg !73
  %25 = load i32*, i32** %8, align 8, !dbg !74
  store i32 %24, i32* %25, align 4, !dbg !75
  %26 = load i8*, i8** %10, align 8, !dbg !76
  store i8* %26, i8** %5, align 8, !dbg !77
  br label %48, !dbg !77

27:                                               ; preds = %4
  %28 = load i32, i32* %9, align 4, !dbg !78
  %29 = icmp ne i32 %28, 0, !dbg !78
  br i1 %29, label %30, label %46, !dbg !80

30:                                               ; preds = %27
  %31 = load i32, i32* %9, align 4, !dbg !81
  %32 = load i32*, i32** %8, align 8, !dbg !83
  %33 = load i32, i32* %32, align 4, !dbg !84
  %34 = sub nsw i32 %33, %31, !dbg !84
  store i32 %34, i32* %32, align 4, !dbg !84
  %35 = load i8*, i8** %7, align 8, !dbg !85
  %36 = load i8*, i8** %7, align 8, !dbg !86
  %37 = load i32, i32* %9, align 4, !dbg !87
  %38 = sext i32 %37 to i64, !dbg !88
  %39 = getelementptr inbounds i8, i8* %36, i64 %38, !dbg !88
  %40 = load i32*, i32** %8, align 8, !dbg !89
  %41 = load i32, i32* %40, align 4, !dbg !90
  %42 = add nsw i32 1, %41, !dbg !91
  %43 = sext i32 %42 to i64, !dbg !92
  %44 = call i8* @memmove(i8* %35, i8* %39, i64 %43), !dbg !93
  %45 = load i8*, i8** %7, align 8, !dbg !94
  store i8* %45, i8** %5, align 8, !dbg !95
  br label %48, !dbg !95

46:                                               ; preds = %27
  br label %47

47:                                               ; preds = %46
  store i8* null, i8** %5, align 8, !dbg !96
  br label %48, !dbg !96

48:                                               ; preds = %47, %30, %19, %17
  %49 = load i8*, i8** %5, align 8, !dbg !97
  ret i8* %49, !dbg !97
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !98 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !101, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.declare(metadata i32* %3, metadata !103, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.declare(metadata i8** %4, metadata !105, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.declare(metadata i32* %5, metadata !107, metadata !DIExpression()), !dbg !108
  %9 = bitcast i32* %2 to i8*, !dbg !109
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0)), !dbg !110
  %10 = bitcast i32* %3 to i8*, !dbg !111
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)), !dbg !112
  %11 = bitcast i32* %5 to i8*, !dbg !113
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0)), !dbg !114
  %12 = load i32, i32* %2, align 4, !dbg !115
  %13 = icmp sgt i32 %12, 0, !dbg !116
  %14 = zext i1 %13 to i32, !dbg !116
  %15 = sext i32 %14 to i64, !dbg !115
  call void @klee_assume(i64 noundef %15), !dbg !117
  %16 = load i32, i32* %3, align 4, !dbg !118
  %17 = icmp sgt i32 %16, 0, !dbg !119
  %18 = zext i1 %17 to i32, !dbg !119
  %19 = sext i32 %18 to i64, !dbg !118
  call void @klee_assume(i64 noundef %19), !dbg !120
  %20 = load i32, i32* %5, align 4, !dbg !121
  %21 = icmp sgt i32 %20, 0, !dbg !122
  %22 = zext i1 %21 to i32, !dbg !122
  %23 = sext i32 %22 to i64, !dbg !121
  call void @klee_assume(i64 noundef %23), !dbg !123
  %24 = load i32, i32* %5, align 4, !dbg !124
  %25 = icmp sle i32 %24, 4096, !dbg !125
  %26 = zext i1 %25 to i32, !dbg !125
  %27 = sext i32 %26 to i64, !dbg !124
  call void @klee_assume(i64 noundef %27), !dbg !126
  %28 = load i32, i32* %5, align 4, !dbg !127
  %29 = sext i32 %28 to i64, !dbg !127
  %30 = call noalias i8* @malloc(i64 noundef %29) #8, !dbg !128
  store i8* %30, i8** %4, align 8, !dbg !129
  %31 = load i8*, i8** %4, align 8, !dbg !130
  %32 = icmp ne i8* %31, null, !dbg !131
  %33 = zext i1 %32 to i32, !dbg !131
  %34 = sext i32 %33 to i64, !dbg !130
  call void @klee_assume(i64 noundef %34), !dbg !132
  %35 = load i8*, i8** %4, align 8, !dbg !133
  %36 = load i32, i32* %5, align 4, !dbg !134
  %37 = sext i32 %36 to i64, !dbg !134
  call void @klee_make_symbolic(i8* noundef %35, i64 noundef %37, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0)), !dbg !135
  %38 = load i8*, i8** %4, align 8, !dbg !136
  %39 = load i32, i32* %5, align 4, !dbg !137
  %40 = sub nsw i32 %39, 1, !dbg !138
  %41 = sext i32 %40 to i64, !dbg !136
  %42 = getelementptr inbounds i8, i8* %38, i64 %41, !dbg !136
  store i8 0, i8* %42, align 1, !dbg !139
  call void @llvm.dbg.declare(metadata i32* %6, metadata !140, metadata !DIExpression()), !dbg !141
  %43 = load i32, i32* %3, align 4, !dbg !142
  %44 = load i32, i32* %2, align 4, !dbg !143
  %45 = sub nsw i32 %43, %44, !dbg !144
  store i32 %45, i32* %6, align 4, !dbg !141
  %46 = load i32, i32* %2, align 4, !dbg !145
  %47 = load i32, i32* %5, align 4, !dbg !145
  %48 = icmp sle i32 %46, %47, !dbg !145
  br i1 %48, label %49, label %58, !dbg !145

49:                                               ; preds = %0
  %50 = load i32, i32* %6, align 4, !dbg !145
  %51 = add nsw i32 1, %50, !dbg !145
  %52 = load i32, i32* %5, align 4, !dbg !145
  %53 = load i32, i32* %2, align 4, !dbg !145
  %54 = sub nsw i32 %52, %53, !dbg !145
  %55 = icmp sle i32 %51, %54, !dbg !145
  br i1 %55, label %56, label %58, !dbg !145

56:                                               ; preds = %49
  br i1 true, label %57, label %58, !dbg !145

57:                                               ; preds = %56
  br label %60, !dbg !145

58:                                               ; preds = %56, %49, %0
  %59 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([100 x i8], [100 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.6, i64 0, i64 0), i32 noundef 81, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !145
  br label %60, !dbg !145

60:                                               ; preds = %58, %57
  call void @llvm.dbg.declare(metadata i32* %7, metadata !146, metadata !DIExpression()), !dbg !147
  %61 = load i32, i32* %3, align 4, !dbg !148
  store i32 %61, i32* %7, align 4, !dbg !147
  call void @llvm.dbg.declare(metadata i8** %8, metadata !149, metadata !DIExpression()), !dbg !150
  %62 = load i8*, i8** %4, align 8, !dbg !151
  %63 = load i32, i32* %2, align 4, !dbg !152
  %64 = call i8* @xmlAttrNormalizeSpace2(%struct._xmlParserCtxt* noundef null, i8* noundef %62, i32* noundef %7, i32 noundef %63), !dbg !153
  store i8* %64, i8** %8, align 8, !dbg !150
  %65 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.6, i64 0, i64 0), i32 noundef 88, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !154
  %66 = load i8*, i8** %4, align 8, !dbg !155
  call void @free(i8* noundef %66) #8, !dbg !156
  ret i32 0, !dbg !157
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #6

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memmove(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !158 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !167, metadata !DIExpression()), !dbg !168
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !169, metadata !DIExpression()), !dbg !170
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !171, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.declare(metadata i8** %8, metadata !173, metadata !DIExpression()), !dbg !175
  %10 = load i8*, i8** %5, align 8, !dbg !176
  store i8* %10, i8** %8, align 8, !dbg !175
  call void @llvm.dbg.declare(metadata i8** %9, metadata !177, metadata !DIExpression()), !dbg !178
  %11 = load i8*, i8** %6, align 8, !dbg !179
  store i8* %11, i8** %9, align 8, !dbg !178
  %12 = load i8*, i8** %6, align 8, !dbg !180
  %13 = load i8*, i8** %5, align 8, !dbg !182
  %14 = icmp eq i8* %12, %13, !dbg !183
  br i1 %14, label %15, label %17, !dbg !184

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8, !dbg !185
  store i8* %16, i8** %4, align 8, !dbg !186
  br label %52, !dbg !186

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8, !dbg !187
  %19 = load i8*, i8** %5, align 8, !dbg !189
  %20 = icmp ugt i8* %18, %19, !dbg !190
  br i1 %20, label %21, label %31, !dbg !191

21:                                               ; preds = %17, %25
  %22 = load i64, i64* %7, align 8, !dbg !192
  %23 = add i64 %22, -1, !dbg !192
  store i64 %23, i64* %7, align 8, !dbg !192
  %24 = icmp ne i64 %22, 0, !dbg !194
  br i1 %24, label %25, label %50, !dbg !194

25:                                               ; preds = %21
  %26 = load i8*, i8** %9, align 8, !dbg !195
  %27 = getelementptr inbounds i8, i8* %26, i32 1, !dbg !195
  store i8* %27, i8** %9, align 8, !dbg !195
  %28 = load i8, i8* %26, align 1, !dbg !196
  %29 = load i8*, i8** %8, align 8, !dbg !197
  %30 = getelementptr inbounds i8, i8* %29, i32 1, !dbg !197
  store i8* %30, i8** %8, align 8, !dbg !197
  store i8 %28, i8* %29, align 1, !dbg !198
  br label %21, !dbg !194, !llvm.loop !199

31:                                               ; preds = %17
  %32 = load i64, i64* %7, align 8, !dbg !201
  %33 = sub i64 %32, 1, !dbg !203
  %34 = load i8*, i8** %8, align 8, !dbg !204
  %35 = getelementptr inbounds i8, i8* %34, i64 %33, !dbg !204
  store i8* %35, i8** %8, align 8, !dbg !204
  %36 = load i64, i64* %7, align 8, !dbg !205
  %37 = sub i64 %36, 1, !dbg !206
  %38 = load i8*, i8** %9, align 8, !dbg !207
  %39 = getelementptr inbounds i8, i8* %38, i64 %37, !dbg !207
  store i8* %39, i8** %9, align 8, !dbg !207
  br label %40, !dbg !208

40:                                               ; preds = %44, %31
  %41 = load i64, i64* %7, align 8, !dbg !209
  %42 = add i64 %41, -1, !dbg !209
  store i64 %42, i64* %7, align 8, !dbg !209
  %43 = icmp ne i64 %41, 0, !dbg !208
  br i1 %43, label %44, label %50, !dbg !208

44:                                               ; preds = %40
  %45 = load i8*, i8** %9, align 8, !dbg !210
  %46 = getelementptr inbounds i8, i8* %45, i32 -1, !dbg !210
  store i8* %46, i8** %9, align 8, !dbg !210
  %47 = load i8, i8* %45, align 1, !dbg !211
  %48 = load i8*, i8** %8, align 8, !dbg !212
  %49 = getelementptr inbounds i8, i8* %48, i32 -1, !dbg !212
  store i8* %49, i8** %8, align 8, !dbg !212
  store i8 %47, i8* %48, align 1, !dbg !213
  br label %40, !dbg !208, !llvm.loop !214

50:                                               ; preds = %40, %21
  %51 = load i8*, i8** %5, align 8, !dbg !215
  store i8* %51, i8** %4, align 8, !dbg !216
  br label %52, !dbg !216

52:                                               ; preds = %50, %15
  %53 = load i8*, i8** %4, align 8, !dbg !217
  ret i8* %53, !dbg !217
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19, !19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/358_parser.c_1232_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "0f3852b26c3c7141964fc8602d6bc9bb")
!2 = !{!3, !4, !7}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !1, line: 11, baseType: !6)
!6 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !11, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!11 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memmove.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "6cd27189cdce56ce74ae860a315e13f2")
!12 = !{i32 7, !"Dwarf Version", i32 5}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{i32 7, !"PIC Level", i32 2}
!16 = !{i32 7, !"PIE Level", i32 2}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"Ubuntu clang version 14.0.6"}
!20 = distinct !DISubprogram(name: "xmlAttrNormalizeSpace", scope: !1, file: !1, line: 14, type: !21, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!21 = !DISubroutineType(types: !22)
!22 = !{null, !4, !4}
!23 = !{}
!24 = !DILocalVariable(name: "value", arg: 1, scope: !20, file: !1, line: 14, type: !4)
!25 = !DILocation(line: 14, column: 37, scope: !20)
!26 = !DILocalVariable(name: "ret", arg: 2, scope: !20, file: !1, line: 14, type: !4)
!27 = !DILocation(line: 14, column: 53, scope: !20)
!28 = !DILocation(line: 16, column: 1, scope: !20)
!29 = distinct !DISubprogram(name: "xmlErrMemory", scope: !1, file: !1, line: 19, type: !30, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !32, !7}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxt", file: !1, line: 10, baseType: !34)
!34 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserCtxt", file: !1, line: 10, flags: DIFlagFwdDecl)
!35 = !DILocalVariable(name: "ctxt", arg: 1, scope: !29, file: !1, line: 19, type: !32)
!36 = !DILocation(line: 19, column: 34, scope: !29)
!37 = !DILocalVariable(name: "extra", arg: 2, scope: !29, file: !1, line: 19, type: !7)
!38 = !DILocation(line: 19, column: 52, scope: !29)
!39 = !DILocation(line: 21, column: 1, scope: !29)
!40 = distinct !DISubprogram(name: "xmlAttrNormalizeSpace2", scope: !1, file: !1, line: 24, type: !41, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!41 = !DISubroutineType(types: !42)
!42 = !{!4, !32, !4, !43, !44}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!45 = !DILocalVariable(name: "ctxt", arg: 1, scope: !40, file: !1, line: 24, type: !32)
!46 = !DILocation(line: 24, column: 48, scope: !40)
!47 = !DILocalVariable(name: "src", arg: 2, scope: !40, file: !1, line: 24, type: !4)
!48 = !DILocation(line: 24, column: 63, scope: !40)
!49 = !DILocalVariable(name: "len", arg: 3, scope: !40, file: !1, line: 24, type: !43)
!50 = !DILocation(line: 24, column: 73, scope: !40)
!51 = !DILocalVariable(name: "remove_head", arg: 4, scope: !40, file: !1, line: 24, type: !44)
!52 = !DILocation(line: 24, column: 82, scope: !40)
!53 = !DILocation(line: 25, column: 9, scope: !54)
!54 = distinct !DILexicalBlock(scope: !40, file: !1, line: 25, column: 9)
!55 = !DILocation(line: 25, column: 13, scope: !54)
!56 = !DILocation(line: 25, column: 9, scope: !40)
!57 = !DILocalVariable(name: "ret", scope: !58, file: !1, line: 26, type: !4)
!58 = distinct !DILexicalBlock(scope: !54, file: !1, line: 25, column: 22)
!59 = !DILocation(line: 26, column: 18, scope: !58)
!60 = !DILocation(line: 26, column: 34, scope: !58)
!61 = !DILocation(line: 27, column: 13, scope: !62)
!62 = distinct !DILexicalBlock(scope: !58, file: !1, line: 27, column: 13)
!63 = !DILocation(line: 27, column: 17, scope: !62)
!64 = !DILocation(line: 27, column: 13, scope: !58)
!65 = !DILocation(line: 28, column: 26, scope: !66)
!66 = distinct !DILexicalBlock(scope: !62, file: !1, line: 27, column: 26)
!67 = !DILocation(line: 28, column: 13, scope: !66)
!68 = !DILocation(line: 29, column: 13, scope: !66)
!69 = !DILocation(line: 31, column: 31, scope: !58)
!70 = !DILocation(line: 31, column: 36, scope: !58)
!71 = !DILocation(line: 31, column: 9, scope: !58)
!72 = !DILocation(line: 32, column: 37, scope: !58)
!73 = !DILocation(line: 32, column: 16, scope: !58)
!74 = !DILocation(line: 32, column: 10, scope: !58)
!75 = !DILocation(line: 32, column: 14, scope: !58)
!76 = !DILocation(line: 33, column: 16, scope: !58)
!77 = !DILocation(line: 33, column: 9, scope: !58)
!78 = !DILocation(line: 34, column: 16, scope: !79)
!79 = distinct !DILexicalBlock(scope: !54, file: !1, line: 34, column: 16)
!80 = !DILocation(line: 34, column: 16, scope: !54)
!81 = !DILocation(line: 35, column: 17, scope: !82)
!82 = distinct !DILexicalBlock(scope: !79, file: !1, line: 34, column: 29)
!83 = !DILocation(line: 35, column: 10, scope: !82)
!84 = !DILocation(line: 35, column: 14, scope: !82)
!85 = !DILocation(line: 37, column: 17, scope: !82)
!86 = !DILocation(line: 37, column: 22, scope: !82)
!87 = !DILocation(line: 37, column: 28, scope: !82)
!88 = !DILocation(line: 37, column: 26, scope: !82)
!89 = !DILocation(line: 37, column: 46, scope: !82)
!90 = !DILocation(line: 37, column: 45, scope: !82)
!91 = !DILocation(line: 37, column: 43, scope: !82)
!92 = !DILocation(line: 37, column: 41, scope: !82)
!93 = !DILocation(line: 37, column: 9, scope: !82)
!94 = !DILocation(line: 38, column: 16, scope: !82)
!95 = !DILocation(line: 38, column: 9, scope: !82)
!96 = !DILocation(line: 40, column: 5, scope: !40)
!97 = !DILocation(line: 41, column: 1, scope: !40)
!98 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 43, type: !99, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!99 = !DISubroutineType(types: !100)
!100 = !{!44}
!101 = !DILocalVariable(name: "remove_head", scope: !98, file: !1, line: 45, type: !44)
!102 = !DILocation(line: 45, column: 9, scope: !98)
!103 = !DILocalVariable(name: "len_val", scope: !98, file: !1, line: 46, type: !44)
!104 = !DILocation(line: 46, column: 9, scope: !98)
!105 = !DILocalVariable(name: "src_buffer", scope: !98, file: !1, line: 47, type: !4)
!106 = !DILocation(line: 47, column: 14, scope: !98)
!107 = !DILocalVariable(name: "buffer_size", scope: !98, file: !1, line: 48, type: !44)
!108 = !DILocation(line: 48, column: 9, scope: !98)
!109 = !DILocation(line: 51, column: 24, scope: !98)
!110 = !DILocation(line: 51, column: 5, scope: !98)
!111 = !DILocation(line: 52, column: 24, scope: !98)
!112 = !DILocation(line: 52, column: 5, scope: !98)
!113 = !DILocation(line: 53, column: 24, scope: !98)
!114 = !DILocation(line: 53, column: 5, scope: !98)
!115 = !DILocation(line: 56, column: 17, scope: !98)
!116 = !DILocation(line: 56, column: 29, scope: !98)
!117 = !DILocation(line: 56, column: 5, scope: !98)
!118 = !DILocation(line: 57, column: 17, scope: !98)
!119 = !DILocation(line: 57, column: 25, scope: !98)
!120 = !DILocation(line: 57, column: 5, scope: !98)
!121 = !DILocation(line: 58, column: 17, scope: !98)
!122 = !DILocation(line: 58, column: 29, scope: !98)
!123 = !DILocation(line: 58, column: 5, scope: !98)
!124 = !DILocation(line: 59, column: 17, scope: !98)
!125 = !DILocation(line: 59, column: 29, scope: !98)
!126 = !DILocation(line: 59, column: 5, scope: !98)
!127 = !DILocation(line: 62, column: 35, scope: !98)
!128 = !DILocation(line: 62, column: 28, scope: !98)
!129 = !DILocation(line: 62, column: 16, scope: !98)
!130 = !DILocation(line: 63, column: 17, scope: !98)
!131 = !DILocation(line: 63, column: 28, scope: !98)
!132 = !DILocation(line: 63, column: 5, scope: !98)
!133 = !DILocation(line: 66, column: 24, scope: !98)
!134 = !DILocation(line: 66, column: 36, scope: !98)
!135 = !DILocation(line: 66, column: 5, scope: !98)
!136 = !DILocation(line: 69, column: 5, scope: !98)
!137 = !DILocation(line: 69, column: 16, scope: !98)
!138 = !DILocation(line: 69, column: 28, scope: !98)
!139 = !DILocation(line: 69, column: 33, scope: !98)
!140 = !DILocalVariable(name: "new_len", scope: !98, file: !1, line: 73, type: !44)
!141 = !DILocation(line: 73, column: 9, scope: !98)
!142 = !DILocation(line: 73, column: 19, scope: !98)
!143 = !DILocation(line: 73, column: 29, scope: !98)
!144 = !DILocation(line: 73, column: 27, scope: !98)
!145 = !DILocation(line: 81, column: 5, scope: !98)
!146 = !DILocalVariable(name: "len", scope: !98, file: !1, line: 84, type: !44)
!147 = !DILocation(line: 84, column: 9, scope: !98)
!148 = !DILocation(line: 84, column: 15, scope: !98)
!149 = !DILocalVariable(name: "result", scope: !98, file: !1, line: 85, type: !4)
!150 = !DILocation(line: 85, column: 14, scope: !98)
!151 = !DILocation(line: 85, column: 52, scope: !98)
!152 = !DILocation(line: 85, column: 70, scope: !98)
!153 = !DILocation(line: 85, column: 23, scope: !98)
!154 = !DILocation(line: 88, column: 5, scope: !98)
!155 = !DILocation(line: 91, column: 10, scope: !98)
!156 = !DILocation(line: 91, column: 5, scope: !98)
!157 = !DILocation(line: 93, column: 5, scope: !98)
!158 = distinct !DISubprogram(name: "memmove", scope: !159, file: !159, line: 12, type: !160, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !23)
!159 = !DIFile(filename: "runtime/Freestanding/memmove.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "6cd27189cdce56ce74ae860a315e13f2")
!160 = !DISubroutineType(types: !161)
!161 = !{!3, !3, !162, !164}
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !165, line: 46, baseType: !166)
!165 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!166 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!167 = !DILocalVariable(name: "dst", arg: 1, scope: !158, file: !159, line: 12, type: !3)
!168 = !DILocation(line: 12, column: 21, scope: !158)
!169 = !DILocalVariable(name: "src", arg: 2, scope: !158, file: !159, line: 12, type: !162)
!170 = !DILocation(line: 12, column: 38, scope: !158)
!171 = !DILocalVariable(name: "count", arg: 3, scope: !158, file: !159, line: 12, type: !164)
!172 = !DILocation(line: 12, column: 50, scope: !158)
!173 = !DILocalVariable(name: "a", scope: !158, file: !159, line: 13, type: !174)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!175 = !DILocation(line: 13, column: 9, scope: !158)
!176 = !DILocation(line: 13, column: 13, scope: !158)
!177 = !DILocalVariable(name: "b", scope: !158, file: !159, line: 14, type: !7)
!178 = !DILocation(line: 14, column: 15, scope: !158)
!179 = !DILocation(line: 14, column: 19, scope: !158)
!180 = !DILocation(line: 16, column: 7, scope: !181)
!181 = distinct !DILexicalBlock(scope: !158, file: !159, line: 16, column: 7)
!182 = !DILocation(line: 16, column: 14, scope: !181)
!183 = !DILocation(line: 16, column: 11, scope: !181)
!184 = !DILocation(line: 16, column: 7, scope: !158)
!185 = !DILocation(line: 17, column: 12, scope: !181)
!186 = !DILocation(line: 17, column: 5, scope: !181)
!187 = !DILocation(line: 19, column: 7, scope: !188)
!188 = distinct !DILexicalBlock(scope: !158, file: !159, line: 19, column: 7)
!189 = !DILocation(line: 19, column: 13, scope: !188)
!190 = !DILocation(line: 19, column: 11, scope: !188)
!191 = !DILocation(line: 19, column: 7, scope: !158)
!192 = !DILocation(line: 20, column: 17, scope: !193)
!193 = distinct !DILexicalBlock(scope: !188, file: !159, line: 19, column: 18)
!194 = !DILocation(line: 20, column: 5, scope: !193)
!195 = !DILocation(line: 21, column: 16, scope: !193)
!196 = !DILocation(line: 21, column: 14, scope: !193)
!197 = !DILocation(line: 21, column: 9, scope: !193)
!198 = !DILocation(line: 21, column: 12, scope: !193)
!199 = distinct !{!199, !194, !195, !200}
!200 = !{!"llvm.loop.mustprogress"}
!201 = !DILocation(line: 23, column: 10, scope: !202)
!202 = distinct !DILexicalBlock(scope: !188, file: !159, line: 22, column: 10)
!203 = !DILocation(line: 23, column: 16, scope: !202)
!204 = !DILocation(line: 23, column: 7, scope: !202)
!205 = !DILocation(line: 24, column: 10, scope: !202)
!206 = !DILocation(line: 24, column: 16, scope: !202)
!207 = !DILocation(line: 24, column: 7, scope: !202)
!208 = !DILocation(line: 25, column: 5, scope: !202)
!209 = !DILocation(line: 25, column: 17, scope: !202)
!210 = !DILocation(line: 26, column: 16, scope: !202)
!211 = !DILocation(line: 26, column: 14, scope: !202)
!212 = !DILocation(line: 26, column: 9, scope: !202)
!213 = !DILocation(line: 26, column: 12, scope: !202)
!214 = distinct !{!214, !208, !210, !200}
!215 = !DILocation(line: 29, column: 10, scope: !158)
!216 = !DILocation(line: 29, column: 3, scope: !158)
!217 = !DILocation(line: 30, column: 1, scope: !158)

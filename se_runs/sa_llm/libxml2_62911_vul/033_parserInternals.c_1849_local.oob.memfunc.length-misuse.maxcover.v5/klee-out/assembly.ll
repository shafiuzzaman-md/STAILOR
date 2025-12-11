; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/033_parserInternals.c_1849_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/033_parserInternals.c_1849_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSAXHandler = type { i32 }
%struct._xmlParserCtxt = type { %struct._xmlSAXHandler*, i8* }

@.str = private unnamed_addr constant [34 x i8] c"cannot initialize parser context\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"sax_ptr\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"sax_handler\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [114 x i8] c"se_runs/sa_llm/libxml2_62911_vul/033_parserInternals.c_1849_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !16 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !23, metadata !DIExpression()), !dbg !24
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !25, metadata !DIExpression()), !dbg !26
  ret void, !dbg !27
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSAXVersion(%struct._xmlSAXHandler* noundef %0, i32 noundef %1) #0 !dbg !28 {
  %3 = alloca %struct._xmlSAXHandler*, align 8
  %4 = alloca i32, align 4
  store %struct._xmlSAXHandler* %0, %struct._xmlSAXHandler** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSAXHandler** %3, metadata !37, metadata !DIExpression()), !dbg !38
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !39, metadata !DIExpression()), !dbg !40
  ret void, !dbg !41
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlNextChar(%struct._xmlParserCtxt* noundef %0, %struct._xmlSAXHandler* noundef %1) #0 !dbg !42 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlParserCtxt*, align 8
  %5 = alloca %struct._xmlSAXHandler*, align 8
  store %struct._xmlParserCtxt* %0, %struct._xmlParserCtxt** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %4, metadata !51, metadata !DIExpression()), !dbg !52
  store %struct._xmlSAXHandler* %1, %struct._xmlSAXHandler** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSAXHandler** %5, metadata !53, metadata !DIExpression()), !dbg !54
  %6 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !55
  %7 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %6, i32 0, i32 0, !dbg !57
  %8 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %7, align 8, !dbg !57
  %9 = icmp eq %struct._xmlSAXHandler* %8, null, !dbg !58
  br i1 %9, label %10, label %11, !dbg !59

10:                                               ; preds = %2
  call void @xmlErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0)), !dbg !60
  store i32 -1, i32* %3, align 4, !dbg !62
  br label %42, !dbg !62

11:                                               ; preds = %2
  %12 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %5, align 8, !dbg !63
  %13 = icmp eq %struct._xmlSAXHandler* %12, null, !dbg !65
  br i1 %13, label %14, label %27, !dbg !66

14:                                               ; preds = %11
  %15 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !67
  %16 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %15, i32 0, i32 0, !dbg !69
  %17 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %16, align 8, !dbg !69
  %18 = bitcast %struct._xmlSAXHandler* %17 to i8*, !dbg !70
  %19 = call i8* @memset(i8* %18, i32 0, i64 4), !dbg !70
  %20 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !71
  %21 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %20, i32 0, i32 0, !dbg !72
  %22 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %21, align 8, !dbg !72
  call void @xmlSAXVersion(%struct._xmlSAXHandler* noundef %22, i32 noundef 2), !dbg !73
  %23 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !74
  %24 = bitcast %struct._xmlParserCtxt* %23 to i8*, !dbg !74
  %25 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !75
  %26 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %25, i32 0, i32 1, !dbg !76
  store i8* %24, i8** %26, align 8, !dbg !77
  br label %41, !dbg !78

27:                                               ; preds = %11
  %28 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %5, align 8, !dbg !79
  %29 = getelementptr inbounds %struct._xmlSAXHandler, %struct._xmlSAXHandler* %28, i32 0, i32 0, !dbg !82
  %30 = load i32, i32* %29, align 4, !dbg !82
  %31 = icmp eq i32 %30, -559038737, !dbg !83
  br i1 %31, label %32, label %40, !dbg !84

32:                                               ; preds = %27
  %33 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !85
  %34 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %33, i32 0, i32 0, !dbg !87
  %35 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %34, align 8, !dbg !87
  %36 = bitcast %struct._xmlSAXHandler* %35 to i8*, !dbg !88
  %37 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %5, align 8, !dbg !89
  %38 = bitcast %struct._xmlSAXHandler* %37 to i8*, !dbg !88
  %39 = call i8* @memcpy(i8* %36, i8* %38, i64 4), !dbg !88
  br label %40, !dbg !90

40:                                               ; preds = %32, %27
  br label %41

41:                                               ; preds = %40, %14
  store i32 0, i32* %3, align 4, !dbg !91
  br label %42, !dbg !91

42:                                               ; preds = %41, %10
  %43 = load i32, i32* %3, align 4, !dbg !92
  ret i32 %43, !dbg !92
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !93 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlParserCtxt*, align 8
  %3 = alloca %struct._xmlSAXHandler*, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %2, metadata !96, metadata !DIExpression()), !dbg !97
  %5 = call noalias i8* @malloc(i64 noundef 16) #8, !dbg !98
  %6 = bitcast i8* %5 to %struct._xmlParserCtxt*, !dbg !98
  store %struct._xmlParserCtxt* %6, %struct._xmlParserCtxt** %2, align 8, !dbg !97
  %7 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !99
  %8 = icmp ne %struct._xmlParserCtxt* %7, null, !dbg !99
  br i1 %8, label %10, label %9, !dbg !101

9:                                                ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !102
  br label %65, !dbg !102

10:                                               ; preds = %0
  %11 = call noalias i8* @malloc(i64 noundef 4) #8, !dbg !103
  %12 = bitcast i8* %11 to %struct._xmlSAXHandler*, !dbg !103
  %13 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !104
  %14 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %13, i32 0, i32 0, !dbg !105
  store %struct._xmlSAXHandler* %12, %struct._xmlSAXHandler** %14, align 8, !dbg !106
  %15 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !107
  %16 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %15, i32 0, i32 0, !dbg !108
  %17 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %16, align 8, !dbg !108
  %18 = bitcast %struct._xmlSAXHandler* %17 to i8*, !dbg !107
  call void @klee_make_symbolic(i8* noundef %18, i64 noundef 8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)), !dbg !109
  %19 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !110
  %20 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %19, i32 0, i32 0, !dbg !112
  %21 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %20, align 8, !dbg !112
  %22 = icmp ne %struct._xmlSAXHandler* %21, null, !dbg !113
  br i1 %22, label %23, label %30, !dbg !114

23:                                               ; preds = %10
  %24 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !115
  %25 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %24, i32 0, i32 0, !dbg !117
  %26 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %25, align 8, !dbg !117
  %27 = icmp ne %struct._xmlSAXHandler* %26, null, !dbg !118
  %28 = zext i1 %27 to i32, !dbg !118
  %29 = sext i32 %28 to i64, !dbg !115
  call void @klee_assume(i64 noundef %29), !dbg !119
  br label %30, !dbg !120

30:                                               ; preds = %23, %10
  call void @llvm.dbg.declare(metadata %struct._xmlSAXHandler** %3, metadata !121, metadata !DIExpression()), !dbg !122
  %31 = call noalias i8* @malloc(i64 noundef 4) #8, !dbg !123
  %32 = bitcast i8* %31 to %struct._xmlSAXHandler*, !dbg !123
  store %struct._xmlSAXHandler* %32, %struct._xmlSAXHandler** %3, align 8, !dbg !122
  %33 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !124
  %34 = icmp ne %struct._xmlSAXHandler* %33, null, !dbg !124
  br i1 %34, label %35, label %38, !dbg !126

35:                                               ; preds = %30
  %36 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !127
  %37 = bitcast %struct._xmlSAXHandler* %36 to i8*, !dbg !127
  call void @klee_make_symbolic(i8* noundef %37, i64 noundef 4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0)), !dbg !129
  br label %38, !dbg !130

38:                                               ; preds = %35, %30
  call void @llvm.dbg.declare(metadata i32* %4, metadata !131, metadata !DIExpression()), !dbg !132
  %39 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !133
  %40 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !134
  %41 = call i32 @xmlNextChar(%struct._xmlParserCtxt* noundef %39, %struct._xmlSAXHandler* noundef %40), !dbg !135
  store i32 %41, i32* %4, align 4, !dbg !132
  %42 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !136
  %43 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %42, i32 0, i32 0, !dbg !138
  %44 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %43, align 8, !dbg !138
  %45 = icmp ne %struct._xmlSAXHandler* %44, null, !dbg !139
  br i1 %45, label %46, label %56, !dbg !140

46:                                               ; preds = %38
  %47 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !141
  %48 = icmp ne %struct._xmlSAXHandler* %47, null, !dbg !142
  br i1 %48, label %49, label %56, !dbg !143

49:                                               ; preds = %46
  %50 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !144
  %51 = getelementptr inbounds %struct._xmlSAXHandler, %struct._xmlSAXHandler* %50, i32 0, i32 0, !dbg !145
  %52 = load i32, i32* %51, align 4, !dbg !145
  %53 = icmp eq i32 %52, -559038737, !dbg !146
  br i1 %53, label %54, label %56, !dbg !147

54:                                               ; preds = %49
  %55 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([114 x i8], [114 x i8]* @.str.4, i64 0, i64 0), i32 noundef 78, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !148
  br label %56, !dbg !150

56:                                               ; preds = %54, %49, %46, %38
  %57 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !151
  %58 = bitcast %struct._xmlSAXHandler* %57 to i8*, !dbg !151
  call void @free(i8* noundef %58) #8, !dbg !152
  %59 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !153
  %60 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %59, i32 0, i32 0, !dbg !154
  %61 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %60, align 8, !dbg !154
  %62 = bitcast %struct._xmlSAXHandler* %61 to i8*, !dbg !153
  call void @free(i8* noundef %62) #8, !dbg !155
  %63 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !156
  %64 = bitcast %struct._xmlParserCtxt* %63 to i8*, !dbg !156
  call void @free(i8* noundef %64) #8, !dbg !157
  store i32 0, i32* %1, align 4, !dbg !158
  br label %65, !dbg !158

65:                                               ; preds = %56, %9
  %66 = load i32, i32* %1, align 4, !dbg !159
  ret i32 %66, !dbg !159
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #6

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !160 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !169, metadata !DIExpression()), !dbg !170
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !171, metadata !DIExpression()), !dbg !172
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !173, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.declare(metadata i8** %7, metadata !175, metadata !DIExpression()), !dbg !177
  %9 = load i8*, i8** %4, align 8, !dbg !178
  store i8* %9, i8** %7, align 8, !dbg !177
  call void @llvm.dbg.declare(metadata i8** %8, metadata !179, metadata !DIExpression()), !dbg !180
  %10 = load i8*, i8** %5, align 8, !dbg !181
  store i8* %10, i8** %8, align 8, !dbg !180
  br label %11, !dbg !182

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !183
  %13 = add i64 %12, -1, !dbg !183
  store i64 %13, i64* %6, align 8, !dbg !183
  %14 = icmp ugt i64 %12, 0, !dbg !184
  br i1 %14, label %15, label %21, !dbg !182

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !185
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !185
  store i8* %17, i8** %8, align 8, !dbg !185
  %18 = load i8, i8* %16, align 1, !dbg !186
  %19 = load i8*, i8** %7, align 8, !dbg !187
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !187
  store i8* %20, i8** %7, align 8, !dbg !187
  store i8 %18, i8* %19, align 1, !dbg !188
  br label %11, !dbg !182, !llvm.loop !189

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !191
  ret i8* %22, !dbg !192
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #7 !dbg !193 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !197, metadata !DIExpression()), !dbg !198
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !199, metadata !DIExpression()), !dbg !200
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !201, metadata !DIExpression()), !dbg !202
  call void @llvm.dbg.declare(metadata i8** %7, metadata !203, metadata !DIExpression()), !dbg !204
  %8 = load i8*, i8** %4, align 8, !dbg !205
  store i8* %8, i8** %7, align 8, !dbg !204
  br label %9, !dbg !206

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !207
  %11 = add i64 %10, -1, !dbg !207
  store i64 %11, i64* %6, align 8, !dbg !207
  %12 = icmp ugt i64 %10, 0, !dbg !208
  br i1 %12, label %13, label %18, !dbg !206

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !209
  %15 = trunc i32 %14 to i8, !dbg !209
  %16 = load i8*, i8** %7, align 8, !dbg !210
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !210
  store i8* %17, i8** %7, align 8, !dbg !210
  store i8 %15, i8* %16, align 1, !dbg !211
  br label %9, !dbg !206, !llvm.loop !212

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !213
  ret i8* %19, !dbg !214
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15, !15, !15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/033_parserInternals.c_1849_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "39397463609342008f25c6902280381b")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = distinct !DICompileUnit(language: DW_LANG_C99, file: !5, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!5 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!6 = distinct !DICompileUnit(language: DW_LANG_C99, file: !7, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!7 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!8 = !{i32 7, !"Dwarf Version", i32 5}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{i32 7, !"PIC Level", i32 2}
!12 = !{i32 7, !"PIE Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"Ubuntu clang version 14.0.6"}
!16 = distinct !DISubprogram(name: "xmlErrMemory", scope: !1, file: !1, line: 22, type: !17, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!17 = !DISubroutineType(types: !18)
!18 = !{null, !3, !19}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!22 = !{}
!23 = !DILocalVariable(name: "ctx", arg: 1, scope: !16, file: !1, line: 22, type: !3)
!24 = !DILocation(line: 22, column: 25, scope: !16)
!25 = !DILocalVariable(name: "msg", arg: 2, scope: !16, file: !1, line: 22, type: !19)
!26 = !DILocation(line: 22, column: 42, scope: !16)
!27 = !DILocation(line: 24, column: 1, scope: !16)
!28 = distinct !DISubprogram(name: "xmlSAXVersion", scope: !1, file: !1, line: 27, type: !29, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!29 = !DISubroutineType(types: !30)
!30 = !{null, !31, !36}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSAXHandler", file: !1, line: 13, baseType: !33)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSAXHandler", file: !1, line: 10, size: 32, elements: !34)
!34 = !{!35}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !33, file: !1, line: 11, baseType: !36, size: 32)
!36 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!37 = !DILocalVariable(name: "sax", arg: 1, scope: !28, file: !1, line: 27, type: !31)
!38 = !DILocation(line: 27, column: 35, scope: !28)
!39 = !DILocalVariable(name: "version", arg: 2, scope: !28, file: !1, line: 27, type: !36)
!40 = !DILocation(line: 27, column: 44, scope: !28)
!41 = !DILocation(line: 29, column: 1, scope: !28)
!42 = distinct !DISubprogram(name: "xmlNextChar", scope: !1, file: !1, line: 32, type: !43, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!43 = !DISubroutineType(types: !44)
!44 = !{!36, !45, !31}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxt", file: !1, line: 19, baseType: !47)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserCtxt", file: !1, line: 15, size: 128, elements: !48)
!48 = !{!49, !50}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "sax", scope: !47, file: !1, line: 16, baseType: !31, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !47, file: !1, line: 17, baseType: !3, size: 64, offset: 64)
!51 = !DILocalVariable(name: "ctxt", arg: 1, scope: !42, file: !1, line: 32, type: !45)
!52 = !DILocation(line: 32, column: 32, scope: !42)
!53 = !DILocalVariable(name: "sax", arg: 2, scope: !42, file: !1, line: 32, type: !31)
!54 = !DILocation(line: 32, column: 53, scope: !42)
!55 = !DILocation(line: 33, column: 9, scope: !56)
!56 = distinct !DILexicalBlock(scope: !42, file: !1, line: 33, column: 9)
!57 = !DILocation(line: 33, column: 15, scope: !56)
!58 = !DILocation(line: 33, column: 19, scope: !56)
!59 = !DILocation(line: 33, column: 9, scope: !42)
!60 = !DILocation(line: 34, column: 9, scope: !61)
!61 = distinct !DILexicalBlock(scope: !56, file: !1, line: 33, column: 28)
!62 = !DILocation(line: 35, column: 9, scope: !61)
!63 = !DILocation(line: 37, column: 9, scope: !64)
!64 = distinct !DILexicalBlock(scope: !42, file: !1, line: 37, column: 9)
!65 = !DILocation(line: 37, column: 13, scope: !64)
!66 = !DILocation(line: 37, column: 9, scope: !42)
!67 = !DILocation(line: 38, column: 16, scope: !68)
!68 = distinct !DILexicalBlock(scope: !64, file: !1, line: 37, column: 22)
!69 = !DILocation(line: 38, column: 22, scope: !68)
!70 = !DILocation(line: 38, column: 9, scope: !68)
!71 = !DILocation(line: 39, column: 23, scope: !68)
!72 = !DILocation(line: 39, column: 29, scope: !68)
!73 = !DILocation(line: 39, column: 9, scope: !68)
!74 = !DILocation(line: 40, column: 26, scope: !68)
!75 = !DILocation(line: 40, column: 9, scope: !68)
!76 = !DILocation(line: 40, column: 15, scope: !68)
!77 = !DILocation(line: 40, column: 24, scope: !68)
!78 = !DILocation(line: 41, column: 5, scope: !68)
!79 = !DILocation(line: 42, column: 13, scope: !80)
!80 = distinct !DILexicalBlock(scope: !81, file: !1, line: 42, column: 13)
!81 = distinct !DILexicalBlock(scope: !64, file: !1, line: 41, column: 12)
!82 = !DILocation(line: 42, column: 18, scope: !80)
!83 = !DILocation(line: 42, column: 30, scope: !80)
!84 = !DILocation(line: 42, column: 13, scope: !81)
!85 = !DILocation(line: 43, column: 20, scope: !86)
!86 = distinct !DILexicalBlock(scope: !80, file: !1, line: 42, column: 45)
!87 = !DILocation(line: 43, column: 26, scope: !86)
!88 = !DILocation(line: 43, column: 13, scope: !86)
!89 = !DILocation(line: 43, column: 31, scope: !86)
!90 = !DILocation(line: 44, column: 9, scope: !86)
!91 = !DILocation(line: 46, column: 5, scope: !42)
!92 = !DILocation(line: 47, column: 1, scope: !42)
!93 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 49, type: !94, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!94 = !DISubroutineType(types: !95)
!95 = !{!36}
!96 = !DILocalVariable(name: "ctxt", scope: !93, file: !1, line: 51, type: !45)
!97 = !DILocation(line: 51, column: 20, scope: !93)
!98 = !DILocation(line: 51, column: 27, scope: !93)
!99 = !DILocation(line: 52, column: 10, scope: !100)
!100 = distinct !DILexicalBlock(scope: !93, file: !1, line: 52, column: 9)
!101 = !DILocation(line: 52, column: 9, scope: !93)
!102 = !DILocation(line: 52, column: 16, scope: !100)
!103 = !DILocation(line: 55, column: 17, scope: !93)
!104 = !DILocation(line: 55, column: 5, scope: !93)
!105 = !DILocation(line: 55, column: 11, scope: !93)
!106 = !DILocation(line: 55, column: 15, scope: !93)
!107 = !DILocation(line: 58, column: 24, scope: !93)
!108 = !DILocation(line: 58, column: 30, scope: !93)
!109 = !DILocation(line: 58, column: 5, scope: !93)
!110 = !DILocation(line: 61, column: 9, scope: !111)
!111 = distinct !DILexicalBlock(scope: !93, file: !1, line: 61, column: 9)
!112 = !DILocation(line: 61, column: 15, scope: !111)
!113 = !DILocation(line: 61, column: 19, scope: !111)
!114 = !DILocation(line: 61, column: 9, scope: !93)
!115 = !DILocation(line: 62, column: 21, scope: !116)
!116 = distinct !DILexicalBlock(scope: !111, file: !1, line: 61, column: 28)
!117 = !DILocation(line: 62, column: 27, scope: !116)
!118 = !DILocation(line: 62, column: 31, scope: !116)
!119 = !DILocation(line: 62, column: 9, scope: !116)
!120 = !DILocation(line: 63, column: 5, scope: !116)
!121 = !DILocalVariable(name: "sax", scope: !93, file: !1, line: 66, type: !31)
!122 = !DILocation(line: 66, column: 20, scope: !93)
!123 = !DILocation(line: 66, column: 26, scope: !93)
!124 = !DILocation(line: 67, column: 9, scope: !125)
!125 = distinct !DILexicalBlock(scope: !93, file: !1, line: 67, column: 9)
!126 = !DILocation(line: 67, column: 9, scope: !93)
!127 = !DILocation(line: 68, column: 28, scope: !128)
!128 = distinct !DILexicalBlock(scope: !125, file: !1, line: 67, column: 14)
!129 = !DILocation(line: 68, column: 9, scope: !128)
!130 = !DILocation(line: 69, column: 5, scope: !128)
!131 = !DILocalVariable(name: "result", scope: !93, file: !1, line: 72, type: !36)
!132 = !DILocation(line: 72, column: 9, scope: !93)
!133 = !DILocation(line: 72, column: 30, scope: !93)
!134 = !DILocation(line: 72, column: 36, scope: !93)
!135 = !DILocation(line: 72, column: 18, scope: !93)
!136 = !DILocation(line: 76, column: 9, scope: !137)
!137 = distinct !DILexicalBlock(scope: !93, file: !1, line: 76, column: 9)
!138 = !DILocation(line: 76, column: 15, scope: !137)
!139 = !DILocation(line: 76, column: 19, scope: !137)
!140 = !DILocation(line: 76, column: 27, scope: !137)
!141 = !DILocation(line: 76, column: 30, scope: !137)
!142 = !DILocation(line: 76, column: 34, scope: !137)
!143 = !DILocation(line: 76, column: 42, scope: !137)
!144 = !DILocation(line: 76, column: 45, scope: !137)
!145 = !DILocation(line: 76, column: 50, scope: !137)
!146 = !DILocation(line: 76, column: 62, scope: !137)
!147 = !DILocation(line: 76, column: 9, scope: !93)
!148 = !DILocation(line: 78, column: 9, scope: !149)
!149 = distinct !DILexicalBlock(scope: !137, file: !1, line: 76, column: 77)
!150 = !DILocation(line: 79, column: 5, scope: !149)
!151 = !DILocation(line: 82, column: 10, scope: !93)
!152 = !DILocation(line: 82, column: 5, scope: !93)
!153 = !DILocation(line: 83, column: 10, scope: !93)
!154 = !DILocation(line: 83, column: 16, scope: !93)
!155 = !DILocation(line: 83, column: 5, scope: !93)
!156 = !DILocation(line: 84, column: 10, scope: !93)
!157 = !DILocation(line: 84, column: 5, scope: !93)
!158 = !DILocation(line: 86, column: 5, scope: !93)
!159 = !DILocation(line: 87, column: 1, scope: !93)
!160 = distinct !DISubprogram(name: "memcpy", scope: !161, file: !161, line: 12, type: !162, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !22)
!161 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!162 = !DISubroutineType(types: !163)
!163 = !{!3, !3, !164, !166}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !167, line: 46, baseType: !168)
!167 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!168 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!169 = !DILocalVariable(name: "destaddr", arg: 1, scope: !160, file: !161, line: 12, type: !3)
!170 = !DILocation(line: 12, column: 20, scope: !160)
!171 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !160, file: !161, line: 12, type: !164)
!172 = !DILocation(line: 12, column: 42, scope: !160)
!173 = !DILocalVariable(name: "len", arg: 3, scope: !160, file: !161, line: 12, type: !166)
!174 = !DILocation(line: 12, column: 58, scope: !160)
!175 = !DILocalVariable(name: "dest", scope: !160, file: !161, line: 13, type: !176)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!177 = !DILocation(line: 13, column: 9, scope: !160)
!178 = !DILocation(line: 13, column: 16, scope: !160)
!179 = !DILocalVariable(name: "src", scope: !160, file: !161, line: 14, type: !19)
!180 = !DILocation(line: 14, column: 15, scope: !160)
!181 = !DILocation(line: 14, column: 21, scope: !160)
!182 = !DILocation(line: 16, column: 3, scope: !160)
!183 = !DILocation(line: 16, column: 13, scope: !160)
!184 = !DILocation(line: 16, column: 16, scope: !160)
!185 = !DILocation(line: 17, column: 19, scope: !160)
!186 = !DILocation(line: 17, column: 15, scope: !160)
!187 = !DILocation(line: 17, column: 10, scope: !160)
!188 = !DILocation(line: 17, column: 13, scope: !160)
!189 = distinct !{!189, !182, !185, !190}
!190 = !{!"llvm.loop.mustprogress"}
!191 = !DILocation(line: 18, column: 10, scope: !160)
!192 = !DILocation(line: 18, column: 3, scope: !160)
!193 = distinct !DISubprogram(name: "memset", scope: !194, file: !194, line: 12, type: !195, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !22)
!194 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!195 = !DISubroutineType(types: !196)
!196 = !{!3, !3, !36, !166}
!197 = !DILocalVariable(name: "dst", arg: 1, scope: !193, file: !194, line: 12, type: !3)
!198 = !DILocation(line: 12, column: 20, scope: !193)
!199 = !DILocalVariable(name: "s", arg: 2, scope: !193, file: !194, line: 12, type: !36)
!200 = !DILocation(line: 12, column: 29, scope: !193)
!201 = !DILocalVariable(name: "count", arg: 3, scope: !193, file: !194, line: 12, type: !166)
!202 = !DILocation(line: 12, column: 39, scope: !193)
!203 = !DILocalVariable(name: "a", scope: !193, file: !194, line: 13, type: !176)
!204 = !DILocation(line: 13, column: 9, scope: !193)
!205 = !DILocation(line: 13, column: 13, scope: !193)
!206 = !DILocation(line: 14, column: 3, scope: !193)
!207 = !DILocation(line: 14, column: 15, scope: !193)
!208 = !DILocation(line: 14, column: 18, scope: !193)
!209 = !DILocation(line: 15, column: 12, scope: !193)
!210 = !DILocation(line: 15, column: 7, scope: !193)
!211 = !DILocation(line: 15, column: 10, scope: !193)
!212 = distinct !{!212, !206, !209, !190}
!213 = !DILocation(line: 16, column: 10, scope: !193)
!214 = !DILocation(line: 16, column: 3, scope: !193)

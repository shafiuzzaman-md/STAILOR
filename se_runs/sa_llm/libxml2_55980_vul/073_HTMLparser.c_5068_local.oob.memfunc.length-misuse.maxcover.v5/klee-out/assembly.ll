; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/073_HTMLparser.c_5068_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/073_HTMLparser.c_5068_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._htmlSAXHandler = type { [256 x i8] }
%struct._htmlParserCtxt = type { %struct._htmlSAXHandler*, i8*, %struct._htmlParserInput** }
%struct._htmlParserInput = type opaque

@.str = private unnamed_addr constant [35 x i8] c"htmlInitParserCtxt: out of memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"(sax != ((void*)0)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [109 x i8] c"se_runs/sa_llm/libxml2_55980_vul/073_HTMLparser.c_5068_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.htmlInitParserCtxt = private unnamed_addr constant [67 x i8] c"int htmlInitParserCtxt(htmlParserCtxt *, htmlSAXHandler *, void *)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"sax_ptr\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"userData\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @htmlErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !30 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !36, metadata !DIExpression()), !dbg !37
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !38, metadata !DIExpression()), !dbg !39
  ret void, !dbg !40
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSAX2InitHtmlDefaultSAXHandler(%struct._htmlSAXHandler* noundef %0) #0 !dbg !41 {
  %2 = alloca %struct._htmlSAXHandler*, align 8
  store %struct._htmlSAXHandler* %0, %struct._htmlSAXHandler** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._htmlSAXHandler** %2, metadata !44, metadata !DIExpression()), !dbg !45
  ret void, !dbg !46
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !47 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !53, metadata !DIExpression()), !dbg !54
  %3 = load i64, i64* %2, align 8, !dbg !55
  %4 = call noalias i8* @malloc(i64 noundef %3) #8, !dbg !56
  ret i8* %4, !dbg !57
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @htmlInitParserCtxt(%struct._htmlParserCtxt* noundef %0, %struct._htmlSAXHandler* noundef %1, i8* noundef %2) #0 !dbg !58 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._htmlParserCtxt*, align 8
  %6 = alloca %struct._htmlSAXHandler*, align 8
  %7 = alloca i8*, align 8
  store %struct._htmlParserCtxt* %0, %struct._htmlParserCtxt** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._htmlParserCtxt** %5, metadata !69, metadata !DIExpression()), !dbg !70
  store %struct._htmlSAXHandler* %1, %struct._htmlSAXHandler** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._htmlSAXHandler** %6, metadata !71, metadata !DIExpression()), !dbg !72
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !73, metadata !DIExpression()), !dbg !74
  %8 = call i8* @xmlMalloc(i64 noundef 256), !dbg !75
  %9 = bitcast i8* %8 to %struct._htmlSAXHandler*, !dbg !76
  %10 = load %struct._htmlParserCtxt*, %struct._htmlParserCtxt** %5, align 8, !dbg !77
  %11 = getelementptr inbounds %struct._htmlParserCtxt, %struct._htmlParserCtxt* %10, i32 0, i32 0, !dbg !78
  store %struct._htmlSAXHandler* %9, %struct._htmlSAXHandler** %11, align 8, !dbg !79
  %12 = load %struct._htmlParserCtxt*, %struct._htmlParserCtxt** %5, align 8, !dbg !80
  %13 = getelementptr inbounds %struct._htmlParserCtxt, %struct._htmlParserCtxt* %12, i32 0, i32 0, !dbg !82
  %14 = load %struct._htmlSAXHandler*, %struct._htmlSAXHandler** %13, align 8, !dbg !82
  %15 = icmp eq %struct._htmlSAXHandler* %14, null, !dbg !83
  br i1 %15, label %16, label %17, !dbg !84

16:                                               ; preds = %3
  call void @htmlErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0)), !dbg !85
  store i32 -1, i32* %4, align 4, !dbg !87
  br label %71, !dbg !87

17:                                               ; preds = %3
  %18 = load %struct._htmlSAXHandler*, %struct._htmlSAXHandler** %6, align 8, !dbg !88
  %19 = icmp eq %struct._htmlSAXHandler* %18, null, !dbg !90
  br i1 %19, label %20, label %33, !dbg !91

20:                                               ; preds = %17
  %21 = load %struct._htmlParserCtxt*, %struct._htmlParserCtxt** %5, align 8, !dbg !92
  %22 = getelementptr inbounds %struct._htmlParserCtxt, %struct._htmlParserCtxt* %21, i32 0, i32 0, !dbg !94
  %23 = load %struct._htmlSAXHandler*, %struct._htmlSAXHandler** %22, align 8, !dbg !94
  %24 = bitcast %struct._htmlSAXHandler* %23 to i8*, !dbg !95
  %25 = call i8* @memset(i8* %24, i32 0, i64 256), !dbg !95
  %26 = load %struct._htmlParserCtxt*, %struct._htmlParserCtxt** %5, align 8, !dbg !96
  %27 = getelementptr inbounds %struct._htmlParserCtxt, %struct._htmlParserCtxt* %26, i32 0, i32 0, !dbg !97
  %28 = load %struct._htmlSAXHandler*, %struct._htmlSAXHandler** %27, align 8, !dbg !97
  call void @xmlSAX2InitHtmlDefaultSAXHandler(%struct._htmlSAXHandler* noundef %28), !dbg !98
  %29 = load %struct._htmlParserCtxt*, %struct._htmlParserCtxt** %5, align 8, !dbg !99
  %30 = bitcast %struct._htmlParserCtxt* %29 to i8*, !dbg !99
  %31 = load %struct._htmlParserCtxt*, %struct._htmlParserCtxt** %5, align 8, !dbg !100
  %32 = getelementptr inbounds %struct._htmlParserCtxt, %struct._htmlParserCtxt* %31, i32 0, i32 1, !dbg !101
  store i8* %30, i8** %32, align 8, !dbg !102
  br label %60, !dbg !103

33:                                               ; preds = %17
  %34 = load %struct._htmlSAXHandler*, %struct._htmlSAXHandler** %6, align 8, !dbg !104
  %35 = icmp ne %struct._htmlSAXHandler* %34, null, !dbg !104
  br i1 %35, label %36, label %38, !dbg !104

36:                                               ; preds = %33
  br i1 true, label %37, label %38, !dbg !104

37:                                               ; preds = %36
  br label %40, !dbg !104

38:                                               ; preds = %36, %33
  %39 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.3, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.htmlInitParserCtxt, i64 0, i64 0)), !dbg !104
  br label %40, !dbg !104

40:                                               ; preds = %38, %37
  %41 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.3, i64 0, i64 0), i32 noundef 59, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.htmlInitParserCtxt, i64 0, i64 0)), !dbg !106
  %42 = load %struct._htmlParserCtxt*, %struct._htmlParserCtxt** %5, align 8, !dbg !107
  %43 = getelementptr inbounds %struct._htmlParserCtxt, %struct._htmlParserCtxt* %42, i32 0, i32 0, !dbg !108
  %44 = load %struct._htmlSAXHandler*, %struct._htmlSAXHandler** %43, align 8, !dbg !108
  %45 = bitcast %struct._htmlSAXHandler* %44 to i8*, !dbg !109
  %46 = load %struct._htmlSAXHandler*, %struct._htmlSAXHandler** %6, align 8, !dbg !110
  %47 = bitcast %struct._htmlSAXHandler* %46 to i8*, !dbg !109
  %48 = call i8* @memcpy(i8* %45, i8* %47, i64 256), !dbg !109
  %49 = load i8*, i8** %7, align 8, !dbg !111
  %50 = icmp ne i8* %49, null, !dbg !111
  br i1 %50, label %51, label %53, !dbg !111

51:                                               ; preds = %40
  %52 = load i8*, i8** %7, align 8, !dbg !112
  br label %56, !dbg !111

53:                                               ; preds = %40
  %54 = load %struct._htmlParserCtxt*, %struct._htmlParserCtxt** %5, align 8, !dbg !113
  %55 = bitcast %struct._htmlParserCtxt* %54 to i8*, !dbg !113
  br label %56, !dbg !111

56:                                               ; preds = %53, %51
  %57 = phi i8* [ %52, %51 ], [ %55, %53 ], !dbg !111
  %58 = load %struct._htmlParserCtxt*, %struct._htmlParserCtxt** %5, align 8, !dbg !114
  %59 = getelementptr inbounds %struct._htmlParserCtxt, %struct._htmlParserCtxt* %58, i32 0, i32 1, !dbg !115
  store i8* %57, i8** %59, align 8, !dbg !116
  br label %60

60:                                               ; preds = %56, %20
  %61 = call i8* @xmlMalloc(i64 noundef 40), !dbg !117
  %62 = bitcast i8* %61 to %struct._htmlParserInput**, !dbg !118
  %63 = load %struct._htmlParserCtxt*, %struct._htmlParserCtxt** %5, align 8, !dbg !119
  %64 = getelementptr inbounds %struct._htmlParserCtxt, %struct._htmlParserCtxt* %63, i32 0, i32 2, !dbg !120
  store %struct._htmlParserInput** %62, %struct._htmlParserInput*** %64, align 8, !dbg !121
  %65 = load %struct._htmlParserCtxt*, %struct._htmlParserCtxt** %5, align 8, !dbg !122
  %66 = getelementptr inbounds %struct._htmlParserCtxt, %struct._htmlParserCtxt* %65, i32 0, i32 2, !dbg !124
  %67 = load %struct._htmlParserInput**, %struct._htmlParserInput*** %66, align 8, !dbg !124
  %68 = icmp eq %struct._htmlParserInput** %67, null, !dbg !125
  br i1 %68, label %69, label %70, !dbg !126

69:                                               ; preds = %60
  call void @htmlErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0)), !dbg !127
  store i32 -1, i32* %4, align 4, !dbg !129
  br label %71, !dbg !129

70:                                               ; preds = %60
  store i32 0, i32* %4, align 4, !dbg !130
  br label %71, !dbg !130

71:                                               ; preds = %70, %69, %16
  %72 = load i32, i32* %4, align 4, !dbg !131
  ret i32 %72, !dbg !131
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !132 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._htmlParserCtxt, align 8
  %3 = alloca %struct._htmlSAXHandler*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._htmlParserCtxt* %2, metadata !135, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.declare(metadata %struct._htmlSAXHandler** %3, metadata !137, metadata !DIExpression()), !dbg !138
  %6 = bitcast %struct._htmlSAXHandler** %3 to i8*, !dbg !139
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)), !dbg !140
  call void @llvm.dbg.declare(metadata i8** %4, metadata !141, metadata !DIExpression()), !dbg !142
  %7 = bitcast i8** %4 to i8*, !dbg !143
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)), !dbg !144
  %8 = load %struct._htmlSAXHandler*, %struct._htmlSAXHandler** %3, align 8, !dbg !145
  %9 = icmp ne %struct._htmlSAXHandler* %8, null, !dbg !146
  %10 = zext i1 %9 to i32, !dbg !146
  %11 = sext i32 %10 to i64, !dbg !145
  call void @klee_assume(i64 noundef %11), !dbg !147
  call void @llvm.dbg.declare(metadata i32* %5, metadata !148, metadata !DIExpression()), !dbg !149
  %12 = load %struct._htmlSAXHandler*, %struct._htmlSAXHandler** %3, align 8, !dbg !150
  %13 = load i8*, i8** %4, align 8, !dbg !151
  %14 = call i32 @htmlInitParserCtxt(%struct._htmlParserCtxt* noundef %2, %struct._htmlSAXHandler* noundef %12, i8* noundef %13), !dbg !152
  store i32 %14, i32* %5, align 4, !dbg !149
  %15 = getelementptr inbounds %struct._htmlParserCtxt, %struct._htmlParserCtxt* %2, i32 0, i32 0, !dbg !153
  %16 = load %struct._htmlSAXHandler*, %struct._htmlSAXHandler** %15, align 8, !dbg !153
  %17 = icmp ne %struct._htmlSAXHandler* %16, null, !dbg !155
  br i1 %17, label %18, label %22, !dbg !156

18:                                               ; preds = %0
  %19 = getelementptr inbounds %struct._htmlParserCtxt, %struct._htmlParserCtxt* %2, i32 0, i32 0, !dbg !157
  %20 = load %struct._htmlSAXHandler*, %struct._htmlSAXHandler** %19, align 8, !dbg !157
  %21 = bitcast %struct._htmlSAXHandler* %20 to i8*, !dbg !158
  call void @free(i8* noundef %21) #8, !dbg !159
  br label %22, !dbg !159

22:                                               ; preds = %18, %0
  %23 = getelementptr inbounds %struct._htmlParserCtxt, %struct._htmlParserCtxt* %2, i32 0, i32 2, !dbg !160
  %24 = load %struct._htmlParserInput**, %struct._htmlParserInput*** %23, align 8, !dbg !160
  %25 = icmp ne %struct._htmlParserInput** %24, null, !dbg !162
  br i1 %25, label %26, label %30, !dbg !163

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct._htmlParserCtxt, %struct._htmlParserCtxt* %2, i32 0, i32 2, !dbg !164
  %28 = load %struct._htmlParserInput**, %struct._htmlParserInput*** %27, align 8, !dbg !164
  %29 = bitcast %struct._htmlParserInput** %28 to i8*, !dbg !165
  call void @free(i8* noundef %29) #8, !dbg !166
  br label %30, !dbg !166

30:                                               ; preds = %26, %22
  ret i32 0, !dbg !167
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #6

declare void @klee_assume(i64 noundef) #6

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !168 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !174, metadata !DIExpression()), !dbg !175
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !176, metadata !DIExpression()), !dbg !177
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !178, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.declare(metadata i8** %7, metadata !180, metadata !DIExpression()), !dbg !182
  %9 = load i8*, i8** %4, align 8, !dbg !183
  store i8* %9, i8** %7, align 8, !dbg !182
  call void @llvm.dbg.declare(metadata i8** %8, metadata !184, metadata !DIExpression()), !dbg !185
  %10 = load i8*, i8** %5, align 8, !dbg !186
  store i8* %10, i8** %8, align 8, !dbg !185
  br label %11, !dbg !187

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !188
  %13 = add i64 %12, -1, !dbg !188
  store i64 %13, i64* %6, align 8, !dbg !188
  %14 = icmp ugt i64 %12, 0, !dbg !189
  br i1 %14, label %15, label %21, !dbg !187

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !190
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !190
  store i8* %17, i8** %8, align 8, !dbg !190
  %18 = load i8, i8* %16, align 1, !dbg !191
  %19 = load i8*, i8** %7, align 8, !dbg !192
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !192
  store i8* %20, i8** %7, align 8, !dbg !192
  store i8 %18, i8* %19, align 1, !dbg !193
  br label %11, !dbg !187, !llvm.loop !194

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !196
  ret i8* %22, !dbg !197
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #7 !dbg !198 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !202, metadata !DIExpression()), !dbg !203
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !204, metadata !DIExpression()), !dbg !205
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !206, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.declare(metadata i8** %7, metadata !208, metadata !DIExpression()), !dbg !209
  %8 = load i8*, i8** %4, align 8, !dbg !210
  store i8* %8, i8** %7, align 8, !dbg !209
  br label %9, !dbg !211

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !212
  %11 = add i64 %10, -1, !dbg !212
  store i64 %11, i64* %6, align 8, !dbg !212
  %12 = icmp ugt i64 %10, 0, !dbg !213
  br i1 %12, label %13, label %18, !dbg !211

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !214
  %15 = trunc i32 %14 to i8, !dbg !214
  %16 = load i8*, i8** %7, align 8, !dbg !215
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !215
  store i8* %17, i8** %7, align 8, !dbg !215
  store i8 %15, i8* %16, align 1, !dbg !216
  br label %9, !dbg !211, !llvm.loop !217

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !218
  ret i8* %19, !dbg !219
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0, !18, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29, !29, !29}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/073_HTMLparser.c_5068_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "6e6dce74569d17699c735b4e7e16b461")
!2 = !{!3, !12, !13}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "htmlSAXHandler", file: !1, line: 10, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_htmlSAXHandler", file: !1, line: 23, size: 2048, elements: !6)
!6 = !{!7}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "placeholder", scope: !5, file: !1, line: 24, baseType: !8, size: 2048)
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 2048, elements: !10)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!10 = !{!11}
!11 = !DISubrange(count: 256)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "htmlParserInputPtr", file: !1, line: 13, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "htmlParserInput", file: !1, line: 12, baseType: !17)
!17 = !DICompositeType(tag: DW_TAG_structure_type, name: "_htmlParserInput", file: !1, line: 12, flags: DIFlagFwdDecl)
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
!30 = distinct !DISubprogram(name: "htmlErrMemory", scope: !1, file: !1, line: 28, type: !31, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!31 = !DISubroutineType(types: !32)
!32 = !{null, !12, !33}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!35 = !{}
!36 = !DILocalVariable(name: "ctx", arg: 1, scope: !30, file: !1, line: 28, type: !12)
!37 = !DILocation(line: 28, column: 26, scope: !30)
!38 = !DILocalVariable(name: "msg", arg: 2, scope: !30, file: !1, line: 28, type: !33)
!39 = !DILocation(line: 28, column: 43, scope: !30)
!40 = !DILocation(line: 30, column: 1, scope: !30)
!41 = distinct !DISubprogram(name: "xmlSAX2InitHtmlDefaultSAXHandler", scope: !1, file: !1, line: 32, type: !42, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!42 = !DISubroutineType(types: !43)
!43 = !{null, !3}
!44 = !DILocalVariable(name: "sax", arg: 1, scope: !41, file: !1, line: 32, type: !3)
!45 = !DILocation(line: 32, column: 55, scope: !41)
!46 = !DILocation(line: 34, column: 1, scope: !41)
!47 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 36, type: !48, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!48 = !DISubroutineType(types: !49)
!49 = !{!12, !50}
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !51, line: 46, baseType: !52)
!51 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!52 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!53 = !DILocalVariable(name: "size", arg: 1, scope: !47, file: !1, line: 36, type: !50)
!54 = !DILocation(line: 36, column: 24, scope: !47)
!55 = !DILocation(line: 37, column: 19, scope: !47)
!56 = !DILocation(line: 37, column: 12, scope: !47)
!57 = !DILocation(line: 37, column: 5, scope: !47)
!58 = distinct !DISubprogram(name: "htmlInitParserCtxt", scope: !1, file: !1, line: 41, type: !59, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!59 = !DISubroutineType(types: !60)
!60 = !{!61, !62, !3, !12}
!61 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "htmlParserCtxt", file: !1, line: 11, baseType: !64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_htmlParserCtxt", file: !1, line: 16, size: 192, elements: !65)
!65 = !{!66, !67, !68}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "sax", scope: !64, file: !1, line: 17, baseType: !3, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !64, file: !1, line: 18, baseType: !12, size: 64, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "inputTab", scope: !64, file: !1, line: 19, baseType: !13, size: 64, offset: 128)
!69 = !DILocalVariable(name: "ctxt", arg: 1, scope: !58, file: !1, line: 41, type: !62)
!70 = !DILocation(line: 41, column: 40, scope: !58)
!71 = !DILocalVariable(name: "sax", arg: 2, scope: !58, file: !1, line: 41, type: !3)
!72 = !DILocation(line: 41, column: 62, scope: !58)
!73 = !DILocalVariable(name: "userData", arg: 3, scope: !58, file: !1, line: 41, type: !12)
!74 = !DILocation(line: 41, column: 73, scope: !58)
!75 = !DILocation(line: 43, column: 34, scope: !58)
!76 = !DILocation(line: 43, column: 17, scope: !58)
!77 = !DILocation(line: 43, column: 5, scope: !58)
!78 = !DILocation(line: 43, column: 11, scope: !58)
!79 = !DILocation(line: 43, column: 15, scope: !58)
!80 = !DILocation(line: 44, column: 9, scope: !81)
!81 = distinct !DILexicalBlock(scope: !58, file: !1, line: 44, column: 9)
!82 = !DILocation(line: 44, column: 15, scope: !81)
!83 = !DILocation(line: 44, column: 19, scope: !81)
!84 = !DILocation(line: 44, column: 9, scope: !58)
!85 = !DILocation(line: 45, column: 9, scope: !86)
!86 = distinct !DILexicalBlock(scope: !81, file: !1, line: 44, column: 28)
!87 = !DILocation(line: 46, column: 9, scope: !86)
!88 = !DILocation(line: 49, column: 9, scope: !89)
!89 = distinct !DILexicalBlock(scope: !58, file: !1, line: 49, column: 9)
!90 = !DILocation(line: 49, column: 13, scope: !89)
!91 = !DILocation(line: 49, column: 9, scope: !58)
!92 = !DILocation(line: 50, column: 16, scope: !93)
!93 = distinct !DILexicalBlock(scope: !89, file: !1, line: 49, column: 22)
!94 = !DILocation(line: 50, column: 22, scope: !93)
!95 = !DILocation(line: 50, column: 9, scope: !93)
!96 = !DILocation(line: 51, column: 42, scope: !93)
!97 = !DILocation(line: 51, column: 48, scope: !93)
!98 = !DILocation(line: 51, column: 9, scope: !93)
!99 = !DILocation(line: 52, column: 26, scope: !93)
!100 = !DILocation(line: 52, column: 9, scope: !93)
!101 = !DILocation(line: 52, column: 15, scope: !93)
!102 = !DILocation(line: 52, column: 24, scope: !93)
!103 = !DILocation(line: 53, column: 5, scope: !93)
!104 = !DILocation(line: 56, column: 9, scope: !105)
!105 = distinct !DILexicalBlock(scope: !89, file: !1, line: 53, column: 12)
!106 = !DILocation(line: 59, column: 9, scope: !105)
!107 = !DILocation(line: 61, column: 16, scope: !105)
!108 = !DILocation(line: 61, column: 22, scope: !105)
!109 = !DILocation(line: 61, column: 9, scope: !105)
!110 = !DILocation(line: 61, column: 27, scope: !105)
!111 = !DILocation(line: 62, column: 26, scope: !105)
!112 = !DILocation(line: 62, column: 37, scope: !105)
!113 = !DILocation(line: 62, column: 48, scope: !105)
!114 = !DILocation(line: 62, column: 9, scope: !105)
!115 = !DILocation(line: 62, column: 15, scope: !105)
!116 = !DILocation(line: 62, column: 24, scope: !105)
!117 = !DILocation(line: 66, column: 43, scope: !58)
!118 = !DILocation(line: 66, column: 22, scope: !58)
!119 = !DILocation(line: 66, column: 5, scope: !58)
!120 = !DILocation(line: 66, column: 11, scope: !58)
!121 = !DILocation(line: 66, column: 20, scope: !58)
!122 = !DILocation(line: 67, column: 9, scope: !123)
!123 = distinct !DILexicalBlock(scope: !58, file: !1, line: 67, column: 9)
!124 = !DILocation(line: 67, column: 15, scope: !123)
!125 = !DILocation(line: 67, column: 24, scope: !123)
!126 = !DILocation(line: 67, column: 9, scope: !58)
!127 = !DILocation(line: 68, column: 9, scope: !128)
!128 = distinct !DILexicalBlock(scope: !123, file: !1, line: 67, column: 33)
!129 = !DILocation(line: 69, column: 9, scope: !128)
!130 = !DILocation(line: 72, column: 5, scope: !58)
!131 = !DILocation(line: 73, column: 1, scope: !58)
!132 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 75, type: !133, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!133 = !DISubroutineType(types: !134)
!134 = !{!61}
!135 = !DILocalVariable(name: "ctxt", scope: !132, file: !1, line: 77, type: !63)
!136 = !DILocation(line: 77, column: 20, scope: !132)
!137 = !DILocalVariable(name: "sax", scope: !132, file: !1, line: 80, type: !3)
!138 = !DILocation(line: 80, column: 21, scope: !132)
!139 = !DILocation(line: 81, column: 24, scope: !132)
!140 = !DILocation(line: 81, column: 5, scope: !132)
!141 = !DILocalVariable(name: "userData", scope: !132, file: !1, line: 84, type: !12)
!142 = !DILocation(line: 84, column: 11, scope: !132)
!143 = !DILocation(line: 85, column: 24, scope: !132)
!144 = !DILocation(line: 85, column: 5, scope: !132)
!145 = !DILocation(line: 88, column: 17, scope: !132)
!146 = !DILocation(line: 88, column: 21, scope: !132)
!147 = !DILocation(line: 88, column: 5, scope: !132)
!148 = !DILocalVariable(name: "result", scope: !132, file: !1, line: 91, type: !61)
!149 = !DILocation(line: 91, column: 9, scope: !132)
!150 = !DILocation(line: 91, column: 44, scope: !132)
!151 = !DILocation(line: 91, column: 49, scope: !132)
!152 = !DILocation(line: 91, column: 18, scope: !132)
!153 = !DILocation(line: 94, column: 14, scope: !154)
!154 = distinct !DILexicalBlock(scope: !132, file: !1, line: 94, column: 9)
!155 = !DILocation(line: 94, column: 9, scope: !154)
!156 = !DILocation(line: 94, column: 9, scope: !132)
!157 = !DILocation(line: 94, column: 29, scope: !154)
!158 = !DILocation(line: 94, column: 24, scope: !154)
!159 = !DILocation(line: 94, column: 19, scope: !154)
!160 = !DILocation(line: 95, column: 14, scope: !161)
!161 = distinct !DILexicalBlock(scope: !132, file: !1, line: 95, column: 9)
!162 = !DILocation(line: 95, column: 9, scope: !161)
!163 = !DILocation(line: 95, column: 9, scope: !132)
!164 = !DILocation(line: 95, column: 34, scope: !161)
!165 = !DILocation(line: 95, column: 29, scope: !161)
!166 = !DILocation(line: 95, column: 24, scope: !161)
!167 = !DILocation(line: 97, column: 5, scope: !132)
!168 = distinct !DISubprogram(name: "memcpy", scope: !169, file: !169, line: 12, type: !170, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !35)
!169 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!170 = !DISubroutineType(types: !171)
!171 = !{!12, !12, !172, !50}
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!174 = !DILocalVariable(name: "destaddr", arg: 1, scope: !168, file: !169, line: 12, type: !12)
!175 = !DILocation(line: 12, column: 20, scope: !168)
!176 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !168, file: !169, line: 12, type: !172)
!177 = !DILocation(line: 12, column: 42, scope: !168)
!178 = !DILocalVariable(name: "len", arg: 3, scope: !168, file: !169, line: 12, type: !50)
!179 = !DILocation(line: 12, column: 58, scope: !168)
!180 = !DILocalVariable(name: "dest", scope: !168, file: !169, line: 13, type: !181)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!182 = !DILocation(line: 13, column: 9, scope: !168)
!183 = !DILocation(line: 13, column: 16, scope: !168)
!184 = !DILocalVariable(name: "src", scope: !168, file: !169, line: 14, type: !33)
!185 = !DILocation(line: 14, column: 15, scope: !168)
!186 = !DILocation(line: 14, column: 21, scope: !168)
!187 = !DILocation(line: 16, column: 3, scope: !168)
!188 = !DILocation(line: 16, column: 13, scope: !168)
!189 = !DILocation(line: 16, column: 16, scope: !168)
!190 = !DILocation(line: 17, column: 19, scope: !168)
!191 = !DILocation(line: 17, column: 15, scope: !168)
!192 = !DILocation(line: 17, column: 10, scope: !168)
!193 = !DILocation(line: 17, column: 13, scope: !168)
!194 = distinct !{!194, !187, !190, !195}
!195 = !{!"llvm.loop.mustprogress"}
!196 = !DILocation(line: 18, column: 10, scope: !168)
!197 = !DILocation(line: 18, column: 3, scope: !168)
!198 = distinct !DISubprogram(name: "memset", scope: !199, file: !199, line: 12, type: !200, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !20, retainedNodes: !35)
!199 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!200 = !DISubroutineType(types: !201)
!201 = !{!12, !12, !61, !50}
!202 = !DILocalVariable(name: "dst", arg: 1, scope: !198, file: !199, line: 12, type: !12)
!203 = !DILocation(line: 12, column: 20, scope: !198)
!204 = !DILocalVariable(name: "s", arg: 2, scope: !198, file: !199, line: 12, type: !61)
!205 = !DILocation(line: 12, column: 29, scope: !198)
!206 = !DILocalVariable(name: "count", arg: 3, scope: !198, file: !199, line: 12, type: !50)
!207 = !DILocation(line: 12, column: 39, scope: !198)
!208 = !DILocalVariable(name: "a", scope: !198, file: !199, line: 13, type: !181)
!209 = !DILocation(line: 13, column: 9, scope: !198)
!210 = !DILocation(line: 13, column: 13, scope: !198)
!211 = !DILocation(line: 14, column: 3, scope: !198)
!212 = !DILocation(line: 14, column: 15, scope: !198)
!213 = !DILocation(line: 14, column: 18, scope: !198)
!214 = !DILocation(line: 15, column: 12, scope: !198)
!215 = !DILocation(line: 15, column: 7, scope: !198)
!216 = !DILocation(line: 15, column: 10, scope: !198)
!217 = distinct !{!217, !211, !214, !195}
!218 = !DILocation(line: 16, column: 10, scope: !198)
!219 = !DILocation(line: 16, column: 3, scope: !198)

; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/155_xinclude.c_255_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/155_xinclude.c_255_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlXIncludeCtxt = type opaque
%struct._xmlNode = type opaque
%struct._xmlXIncludeRef = type { i8*, i8*, %struct._xmlNode*, i32, %struct._xmlXIncludeRef* }

@.str = private unnamed_addr constant [25 x i8] c"growing XInclude context\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_55980_vul/155_xinclude.c_255_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlXIncludeNewRef = private unnamed_addr constant [82 x i8] c"xmlXIncludeRefPtr xmlXIncludeNewRef(xmlXIncludeCtxtPtr, xmlNodePtr, const char *)\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"ctxt\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"elem\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"URI\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlXIncludeErrMemory(%struct._xmlXIncludeCtxt* noundef %0, %struct._xmlNode* noundef %1, i8* noundef %2) #0 !dbg !33 {
  %4 = alloca %struct._xmlXIncludeCtxt*, align 8
  %5 = alloca %struct._xmlNode*, align 8
  %6 = alloca i8*, align 8
  store %struct._xmlXIncludeCtxt* %0, %struct._xmlXIncludeCtxt** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlXIncludeCtxt** %4, metadata !43, metadata !DIExpression()), !dbg !44
  store %struct._xmlNode* %1, %struct._xmlNode** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %5, metadata !45, metadata !DIExpression()), !dbg !46
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !47, metadata !DIExpression()), !dbg !48
  ret void, !dbg !49
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !50 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !56, metadata !DIExpression()), !dbg !57
  %3 = load i64, i64* %2, align 8, !dbg !58
  %4 = call noalias i8* @malloc(i64 noundef %3) #9, !dbg !59
  ret i8* %4, !dbg !60
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlStrdup(i8* noundef %0) #0 !dbg !61 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !64, metadata !DIExpression()), !dbg !65
  %6 = load i8*, i8** %3, align 8, !dbg !66
  %7 = icmp eq i8* %6, null, !dbg !68
  br i1 %7, label %8, label %9, !dbg !69

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !70
  br label %24, !dbg !70

9:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata i64* %4, metadata !71, metadata !DIExpression()), !dbg !72
  %10 = load i8*, i8** %3, align 8, !dbg !73
  %11 = call i64 @strlen(i8* noundef %10) #10, !dbg !74
  %12 = add i64 %11, 1, !dbg !75
  store i64 %12, i64* %4, align 8, !dbg !72
  call void @llvm.dbg.declare(metadata i8** %5, metadata !76, metadata !DIExpression()), !dbg !77
  %13 = load i64, i64* %4, align 8, !dbg !78
  %14 = call noalias i8* @malloc(i64 noundef %13) #9, !dbg !79
  store i8* %14, i8** %5, align 8, !dbg !77
  %15 = load i8*, i8** %5, align 8, !dbg !80
  %16 = icmp ne i8* %15, null, !dbg !80
  br i1 %16, label %17, label %22, !dbg !82

17:                                               ; preds = %9
  %18 = load i8*, i8** %5, align 8, !dbg !83
  %19 = load i8*, i8** %3, align 8, !dbg !84
  %20 = load i64, i64* %4, align 8, !dbg !85
  %21 = call i8* @memcpy(i8* %18, i8* %19, i64 %20), !dbg !86
  br label %22, !dbg !86

22:                                               ; preds = %17, %9
  %23 = load i8*, i8** %5, align 8, !dbg !87
  store i8* %23, i8** %2, align 8, !dbg !88
  br label %24, !dbg !88

24:                                               ; preds = %22, %8
  %25 = load i8*, i8** %2, align 8, !dbg !89
  ret i8* %25, !dbg !89
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlXIncludeRef* @xmlXIncludeNewRef(%struct._xmlXIncludeCtxt* noundef %0, %struct._xmlNode* noundef %1, i8* noundef %2) #0 !dbg !90 {
  %4 = alloca %struct._xmlXIncludeRef*, align 8
  %5 = alloca %struct._xmlXIncludeCtxt*, align 8
  %6 = alloca %struct._xmlNode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._xmlXIncludeRef*, align 8
  store %struct._xmlXIncludeCtxt* %0, %struct._xmlXIncludeCtxt** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlXIncludeCtxt** %5, metadata !93, metadata !DIExpression()), !dbg !94
  store %struct._xmlNode* %1, %struct._xmlNode** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %6, metadata !95, metadata !DIExpression()), !dbg !96
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !97, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.declare(metadata %struct._xmlXIncludeRef** %8, metadata !99, metadata !DIExpression()), !dbg !100
  %9 = call i8* @xmlMalloc(i64 noundef 40), !dbg !101
  %10 = bitcast i8* %9 to %struct._xmlXIncludeRef*, !dbg !102
  store %struct._xmlXIncludeRef* %10, %struct._xmlXIncludeRef** %8, align 8, !dbg !103
  %11 = load %struct._xmlXIncludeRef*, %struct._xmlXIncludeRef** %8, align 8, !dbg !104
  %12 = icmp eq %struct._xmlXIncludeRef* %11, null, !dbg !106
  br i1 %12, label %13, label %16, !dbg !107

13:                                               ; preds = %3
  %14 = load %struct._xmlXIncludeCtxt*, %struct._xmlXIncludeCtxt** %5, align 8, !dbg !108
  %15 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !110
  call void @xmlXIncludeErrMemory(%struct._xmlXIncludeCtxt* noundef %14, %struct._xmlNode* noundef %15, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0)), !dbg !111
  store %struct._xmlXIncludeRef* null, %struct._xmlXIncludeRef** %4, align 8, !dbg !112
  br label %42, !dbg !112

16:                                               ; preds = %3
  %17 = load %struct._xmlXIncludeRef*, %struct._xmlXIncludeRef** %8, align 8, !dbg !113
  %18 = bitcast %struct._xmlXIncludeRef* %17 to i8*, !dbg !114
  %19 = call i8* @memset(i8* %18, i32 0, i64 40), !dbg !114
  %20 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.2, i64 0, i64 0), i32 noundef 63, i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @__PRETTY_FUNCTION__.xmlXIncludeNewRef, i64 0, i64 0)), !dbg !115
  %21 = load i8*, i8** %7, align 8, !dbg !116
  %22 = icmp eq i8* %21, null, !dbg !118
  br i1 %22, label %23, label %26, !dbg !119

23:                                               ; preds = %16
  %24 = load %struct._xmlXIncludeRef*, %struct._xmlXIncludeRef** %8, align 8, !dbg !120
  %25 = getelementptr inbounds %struct._xmlXIncludeRef, %struct._xmlXIncludeRef* %24, i32 0, i32 0, !dbg !121
  store i8* null, i8** %25, align 8, !dbg !122
  br label %31, !dbg !120

26:                                               ; preds = %16
  %27 = load i8*, i8** %7, align 8, !dbg !123
  %28 = call i8* @xmlStrdup(i8* noundef %27), !dbg !124
  %29 = load %struct._xmlXIncludeRef*, %struct._xmlXIncludeRef** %8, align 8, !dbg !125
  %30 = getelementptr inbounds %struct._xmlXIncludeRef, %struct._xmlXIncludeRef* %29, i32 0, i32 0, !dbg !126
  store i8* %28, i8** %30, align 8, !dbg !127
  br label %31

31:                                               ; preds = %26, %23
  %32 = load %struct._xmlXIncludeRef*, %struct._xmlXIncludeRef** %8, align 8, !dbg !128
  %33 = getelementptr inbounds %struct._xmlXIncludeRef, %struct._xmlXIncludeRef* %32, i32 0, i32 1, !dbg !129
  store i8* null, i8** %33, align 8, !dbg !130
  %34 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !131
  %35 = load %struct._xmlXIncludeRef*, %struct._xmlXIncludeRef** %8, align 8, !dbg !132
  %36 = getelementptr inbounds %struct._xmlXIncludeRef, %struct._xmlXIncludeRef* %35, i32 0, i32 2, !dbg !133
  store %struct._xmlNode* %34, %struct._xmlNode** %36, align 8, !dbg !134
  %37 = load %struct._xmlXIncludeRef*, %struct._xmlXIncludeRef** %8, align 8, !dbg !135
  %38 = getelementptr inbounds %struct._xmlXIncludeRef, %struct._xmlXIncludeRef* %37, i32 0, i32 3, !dbg !136
  store i32 0, i32* %38, align 8, !dbg !137
  %39 = load %struct._xmlXIncludeRef*, %struct._xmlXIncludeRef** %8, align 8, !dbg !138
  %40 = getelementptr inbounds %struct._xmlXIncludeRef, %struct._xmlXIncludeRef* %39, i32 0, i32 4, !dbg !139
  store %struct._xmlXIncludeRef* null, %struct._xmlXIncludeRef** %40, align 8, !dbg !140
  %41 = load %struct._xmlXIncludeRef*, %struct._xmlXIncludeRef** %8, align 8, !dbg !141
  store %struct._xmlXIncludeRef* %41, %struct._xmlXIncludeRef** %4, align 8, !dbg !142
  br label %42, !dbg !142

42:                                               ; preds = %31, %13
  %43 = load %struct._xmlXIncludeRef*, %struct._xmlXIncludeRef** %4, align 8, !dbg !143
  ret %struct._xmlXIncludeRef* %43, !dbg !143
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !144 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlXIncludeCtxt*, align 8
  %3 = alloca %struct._xmlNode*, align 8
  %4 = alloca [256 x i8], align 16
  %5 = alloca %struct._xmlXIncludeRef*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlXIncludeCtxt** %2, metadata !147, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %3, metadata !149, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.declare(metadata [256 x i8]* %4, metadata !151, metadata !DIExpression()), !dbg !155
  %6 = bitcast %struct._xmlXIncludeCtxt** %2 to i8*, !dbg !156
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)), !dbg !157
  %7 = bitcast %struct._xmlNode** %3 to i8*, !dbg !158
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)), !dbg !159
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !160
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 256, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)), !dbg !161
  %9 = load %struct._xmlXIncludeCtxt*, %struct._xmlXIncludeCtxt** %2, align 8, !dbg !162
  %10 = icmp ne %struct._xmlXIncludeCtxt* %9, null, !dbg !163
  %11 = zext i1 %10 to i32, !dbg !163
  %12 = sext i32 %11 to i64, !dbg !162
  call void @klee_assume(i64 noundef %12), !dbg !164
  %13 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !165
  %14 = icmp ne %struct._xmlNode* %13, null, !dbg !166
  %15 = zext i1 %14 to i32, !dbg !166
  %16 = sext i32 %15 to i64, !dbg !165
  call void @klee_assume(i64 noundef %16), !dbg !167
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 255, !dbg !168
  store i8 0, i8* %17, align 1, !dbg !169
  call void @llvm.dbg.declare(metadata %struct._xmlXIncludeRef** %5, metadata !170, metadata !DIExpression()), !dbg !171
  %18 = load %struct._xmlXIncludeCtxt*, %struct._xmlXIncludeCtxt** %2, align 8, !dbg !172
  %19 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !173
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !174
  %21 = call %struct._xmlXIncludeRef* @xmlXIncludeNewRef(%struct._xmlXIncludeCtxt* noundef %18, %struct._xmlNode* noundef %19, i8* noundef %20), !dbg !175
  store %struct._xmlXIncludeRef* %21, %struct._xmlXIncludeRef** %5, align 8, !dbg !171
  %22 = load %struct._xmlXIncludeRef*, %struct._xmlXIncludeRef** %5, align 8, !dbg !176
  %23 = icmp ne %struct._xmlXIncludeRef* %22, null, !dbg !178
  br i1 %23, label %24, label %30, !dbg !179

24:                                               ; preds = %0
  %25 = load %struct._xmlXIncludeRef*, %struct._xmlXIncludeRef** %5, align 8, !dbg !180
  %26 = getelementptr inbounds %struct._xmlXIncludeRef, %struct._xmlXIncludeRef* %25, i32 0, i32 0, !dbg !182
  %27 = load i8*, i8** %26, align 8, !dbg !182
  call void @free(i8* noundef %27) #9, !dbg !183
  %28 = load %struct._xmlXIncludeRef*, %struct._xmlXIncludeRef** %5, align 8, !dbg !184
  %29 = bitcast %struct._xmlXIncludeRef* %28 to i8*, !dbg !184
  call void @free(i8* noundef %29) #9, !dbg !185
  br label %30, !dbg !186

30:                                               ; preds = %24, %0
  ret i32 0, !dbg !187
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #7

declare void @klee_assume(i64 noundef) #7

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #8 !dbg !188 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !194, metadata !DIExpression()), !dbg !195
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !196, metadata !DIExpression()), !dbg !197
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !198, metadata !DIExpression()), !dbg !199
  call void @llvm.dbg.declare(metadata i8** %7, metadata !200, metadata !DIExpression()), !dbg !201
  %9 = load i8*, i8** %4, align 8, !dbg !202
  store i8* %9, i8** %7, align 8, !dbg !201
  call void @llvm.dbg.declare(metadata i8** %8, metadata !203, metadata !DIExpression()), !dbg !204
  %10 = load i8*, i8** %5, align 8, !dbg !205
  store i8* %10, i8** %8, align 8, !dbg !204
  br label %11, !dbg !206

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !207
  %13 = add i64 %12, -1, !dbg !207
  store i64 %13, i64* %6, align 8, !dbg !207
  %14 = icmp ugt i64 %12, 0, !dbg !208
  br i1 %14, label %15, label %21, !dbg !206

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !209
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !209
  store i8* %17, i8** %8, align 8, !dbg !209
  %18 = load i8, i8* %16, align 1, !dbg !210
  %19 = load i8*, i8** %7, align 8, !dbg !211
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !211
  store i8* %20, i8** %7, align 8, !dbg !211
  store i8 %18, i8* %19, align 1, !dbg !212
  br label %11, !dbg !206, !llvm.loop !213

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !215
  ret i8* %22, !dbg !216
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #8 !dbg !217 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !221, metadata !DIExpression()), !dbg !222
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !223, metadata !DIExpression()), !dbg !224
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !225, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.declare(metadata i8** %7, metadata !227, metadata !DIExpression()), !dbg !228
  %8 = load i8*, i8** %4, align 8, !dbg !229
  store i8* %8, i8** %7, align 8, !dbg !228
  br label %9, !dbg !230

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !231
  %11 = add i64 %10, -1, !dbg !231
  store i64 %11, i64* %6, align 8, !dbg !231
  %12 = icmp ugt i64 %10, 0, !dbg !232
  br i1 %12, label %13, label %18, !dbg !230

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !233
  %15 = trunc i32 %14 to i8, !dbg !233
  %16 = load i8*, i8** %7, align 8, !dbg !234
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !234
  store i8* %17, i8** %7, align 8, !dbg !234
  store i8 %15, i8* %16, align 1, !dbg !235
  br label %9, !dbg !230, !llvm.loop !236

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !237
  ret i8* %19, !dbg !238
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !21, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32, !32, !32}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/155_xinclude.c_255_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "c64609d9e35d3d0c6cec0230b58d39d7")
!2 = !{!3, !4, !6}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXIncludeRefPtr", file: !1, line: 15, baseType: !7)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXIncludeRef", file: !1, line: 14, baseType: !9)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXIncludeRef", file: !1, line: 17, size: 320, elements: !10)
!10 = !{!11, !12, !13, !18, !20}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "URI", scope: !9, file: !1, line: 18, baseType: !4, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "fragment", scope: !9, file: !1, line: 19, baseType: !4, size: 64, offset: 64)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !9, file: !1, line: 20, baseType: !14, size: 64, offset: 128)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !1, line: 13, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 12, baseType: !17)
!17 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 12, flags: DIFlagFwdDecl)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "xml", scope: !9, file: !1, line: 21, baseType: !19, size: 32, offset: 192)
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "inc", scope: !9, file: !1, line: 22, baseType: !6, size: 64, offset: 256)
!21 = distinct !DICompileUnit(language: DW_LANG_C99, file: !22, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!22 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!23 = distinct !DICompileUnit(language: DW_LANG_C99, file: !24, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!24 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!25 = !{i32 7, !"Dwarf Version", i32 5}
!26 = !{i32 2, !"Debug Info Version", i32 3}
!27 = !{i32 1, !"wchar_size", i32 4}
!28 = !{i32 7, !"PIC Level", i32 2}
!29 = !{i32 7, !"PIE Level", i32 2}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"Ubuntu clang version 14.0.6"}
!33 = distinct !DISubprogram(name: "xmlXIncludeErrMemory", scope: !1, file: !1, line: 26, type: !34, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !42)
!34 = !DISubroutineType(types: !35)
!35 = !{null, !36, !14, !40}
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXIncludeCtxtPtr", file: !1, line: 11, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXIncludeCtxt", file: !1, line: 10, baseType: !39)
!39 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXIncludeCtxt", file: !1, line: 10, flags: DIFlagFwdDecl)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!42 = !{}
!43 = !DILocalVariable(name: "ctxt", arg: 1, scope: !33, file: !1, line: 26, type: !36)
!44 = !DILocation(line: 26, column: 46, scope: !33)
!45 = !DILocalVariable(name: "node", arg: 2, scope: !33, file: !1, line: 26, type: !14)
!46 = !DILocation(line: 26, column: 63, scope: !33)
!47 = !DILocalVariable(name: "msg", arg: 3, scope: !33, file: !1, line: 26, type: !40)
!48 = !DILocation(line: 26, column: 81, scope: !33)
!49 = !DILocation(line: 28, column: 1, scope: !33)
!50 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 30, type: !51, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !42)
!51 = !DISubroutineType(types: !52)
!52 = !{!3, !53}
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !54, line: 46, baseType: !55)
!54 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!55 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!56 = !DILocalVariable(name: "size", arg: 1, scope: !50, file: !1, line: 30, type: !53)
!57 = !DILocation(line: 30, column: 24, scope: !50)
!58 = !DILocation(line: 31, column: 19, scope: !50)
!59 = !DILocation(line: 31, column: 12, scope: !50)
!60 = !DILocation(line: 31, column: 5, scope: !50)
!61 = distinct !DISubprogram(name: "xmlStrdup", scope: !1, file: !1, line: 34, type: !62, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !42)
!62 = !DISubroutineType(types: !63)
!63 = !{!4, !40}
!64 = !DILocalVariable(name: "cur", arg: 1, scope: !61, file: !1, line: 34, type: !40)
!65 = !DILocation(line: 34, column: 29, scope: !61)
!66 = !DILocation(line: 35, column: 9, scope: !67)
!67 = distinct !DILexicalBlock(scope: !61, file: !1, line: 35, column: 9)
!68 = !DILocation(line: 35, column: 13, scope: !67)
!69 = !DILocation(line: 35, column: 9, scope: !61)
!70 = !DILocation(line: 35, column: 22, scope: !67)
!71 = !DILocalVariable(name: "len", scope: !61, file: !1, line: 36, type: !53)
!72 = !DILocation(line: 36, column: 12, scope: !61)
!73 = !DILocation(line: 36, column: 25, scope: !61)
!74 = !DILocation(line: 36, column: 18, scope: !61)
!75 = !DILocation(line: 36, column: 30, scope: !61)
!76 = !DILocalVariable(name: "copy", scope: !61, file: !1, line: 37, type: !4)
!77 = !DILocation(line: 37, column: 11, scope: !61)
!78 = !DILocation(line: 37, column: 33, scope: !61)
!79 = !DILocation(line: 37, column: 26, scope: !61)
!80 = !DILocation(line: 38, column: 9, scope: !81)
!81 = distinct !DILexicalBlock(scope: !61, file: !1, line: 38, column: 9)
!82 = !DILocation(line: 38, column: 9, scope: !61)
!83 = !DILocation(line: 38, column: 22, scope: !81)
!84 = !DILocation(line: 38, column: 28, scope: !81)
!85 = !DILocation(line: 38, column: 33, scope: !81)
!86 = !DILocation(line: 38, column: 15, scope: !81)
!87 = !DILocation(line: 39, column: 12, scope: !61)
!88 = !DILocation(line: 39, column: 5, scope: !61)
!89 = !DILocation(line: 40, column: 1, scope: !61)
!90 = distinct !DISubprogram(name: "xmlXIncludeNewRef", scope: !1, file: !1, line: 43, type: !91, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !42)
!91 = !DISubroutineType(types: !92)
!92 = !{!6, !36, !14, !40}
!93 = !DILocalVariable(name: "ctxt", arg: 1, scope: !90, file: !1, line: 43, type: !36)
!94 = !DILocation(line: 43, column: 56, scope: !90)
!95 = !DILocalVariable(name: "elem", arg: 2, scope: !90, file: !1, line: 43, type: !14)
!96 = !DILocation(line: 43, column: 73, scope: !90)
!97 = !DILocalVariable(name: "URI", arg: 3, scope: !90, file: !1, line: 43, type: !40)
!98 = !DILocation(line: 43, column: 91, scope: !90)
!99 = !DILocalVariable(name: "ret", scope: !90, file: !1, line: 44, type: !6)
!100 = !DILocation(line: 44, column: 23, scope: !90)
!101 = !DILocation(line: 50, column: 31, scope: !90)
!102 = !DILocation(line: 50, column: 11, scope: !90)
!103 = !DILocation(line: 50, column: 9, scope: !90)
!104 = !DILocation(line: 51, column: 9, scope: !105)
!105 = distinct !DILexicalBlock(scope: !90, file: !1, line: 51, column: 9)
!106 = !DILocation(line: 51, column: 13, scope: !105)
!107 = !DILocation(line: 51, column: 9, scope: !90)
!108 = !DILocation(line: 52, column: 30, scope: !109)
!109 = distinct !DILexicalBlock(scope: !105, file: !1, line: 51, column: 22)
!110 = !DILocation(line: 52, column: 36, scope: !109)
!111 = !DILocation(line: 52, column: 9, scope: !109)
!112 = !DILocation(line: 53, column: 9, scope: !109)
!113 = !DILocation(line: 57, column: 12, scope: !90)
!114 = !DILocation(line: 57, column: 5, scope: !90)
!115 = !DILocation(line: 63, column: 5, scope: !90)
!116 = !DILocation(line: 65, column: 9, scope: !117)
!117 = distinct !DILexicalBlock(scope: !90, file: !1, line: 65, column: 9)
!118 = !DILocation(line: 65, column: 13, scope: !117)
!119 = !DILocation(line: 65, column: 9, scope: !90)
!120 = !DILocation(line: 66, column: 9, scope: !117)
!121 = !DILocation(line: 66, column: 14, scope: !117)
!122 = !DILocation(line: 66, column: 18, scope: !117)
!123 = !DILocation(line: 68, column: 30, scope: !117)
!124 = !DILocation(line: 68, column: 20, scope: !117)
!125 = !DILocation(line: 68, column: 9, scope: !117)
!126 = !DILocation(line: 68, column: 14, scope: !117)
!127 = !DILocation(line: 68, column: 18, scope: !117)
!128 = !DILocation(line: 69, column: 5, scope: !90)
!129 = !DILocation(line: 69, column: 10, scope: !90)
!130 = !DILocation(line: 69, column: 19, scope: !90)
!131 = !DILocation(line: 70, column: 17, scope: !90)
!132 = !DILocation(line: 70, column: 5, scope: !90)
!133 = !DILocation(line: 70, column: 10, scope: !90)
!134 = !DILocation(line: 70, column: 15, scope: !90)
!135 = !DILocation(line: 71, column: 5, scope: !90)
!136 = !DILocation(line: 71, column: 10, scope: !90)
!137 = !DILocation(line: 71, column: 14, scope: !90)
!138 = !DILocation(line: 72, column: 5, scope: !90)
!139 = !DILocation(line: 72, column: 10, scope: !90)
!140 = !DILocation(line: 72, column: 14, scope: !90)
!141 = !DILocation(line: 74, column: 12, scope: !90)
!142 = !DILocation(line: 74, column: 5, scope: !90)
!143 = !DILocation(line: 75, column: 1, scope: !90)
!144 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 77, type: !145, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !42)
!145 = !DISubroutineType(types: !146)
!146 = !{!19}
!147 = !DILocalVariable(name: "ctxt", scope: !144, file: !1, line: 79, type: !36)
!148 = !DILocation(line: 79, column: 24, scope: !144)
!149 = !DILocalVariable(name: "elem", scope: !144, file: !1, line: 80, type: !14)
!150 = !DILocation(line: 80, column: 16, scope: !144)
!151 = !DILocalVariable(name: "URI", scope: !144, file: !1, line: 81, type: !152)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 2048, elements: !153)
!153 = !{!154}
!154 = !DISubrange(count: 256)
!155 = !DILocation(line: 81, column: 10, scope: !144)
!156 = !DILocation(line: 84, column: 24, scope: !144)
!157 = !DILocation(line: 84, column: 5, scope: !144)
!158 = !DILocation(line: 85, column: 24, scope: !144)
!159 = !DILocation(line: 85, column: 5, scope: !144)
!160 = !DILocation(line: 86, column: 24, scope: !144)
!161 = !DILocation(line: 86, column: 5, scope: !144)
!162 = !DILocation(line: 89, column: 17, scope: !144)
!163 = !DILocation(line: 89, column: 22, scope: !144)
!164 = !DILocation(line: 89, column: 5, scope: !144)
!165 = !DILocation(line: 90, column: 17, scope: !144)
!166 = !DILocation(line: 90, column: 22, scope: !144)
!167 = !DILocation(line: 90, column: 5, scope: !144)
!168 = !DILocation(line: 93, column: 5, scope: !144)
!169 = !DILocation(line: 93, column: 14, scope: !144)
!170 = !DILocalVariable(name: "result", scope: !144, file: !1, line: 96, type: !6)
!171 = !DILocation(line: 96, column: 23, scope: !144)
!172 = !DILocation(line: 96, column: 50, scope: !144)
!173 = !DILocation(line: 96, column: 56, scope: !144)
!174 = !DILocation(line: 96, column: 62, scope: !144)
!175 = !DILocation(line: 96, column: 32, scope: !144)
!176 = !DILocation(line: 99, column: 9, scope: !177)
!177 = distinct !DILexicalBlock(scope: !144, file: !1, line: 99, column: 9)
!178 = !DILocation(line: 99, column: 16, scope: !177)
!179 = !DILocation(line: 99, column: 9, scope: !144)
!180 = !DILocation(line: 100, column: 14, scope: !181)
!181 = distinct !DILexicalBlock(scope: !177, file: !1, line: 99, column: 25)
!182 = !DILocation(line: 100, column: 22, scope: !181)
!183 = !DILocation(line: 100, column: 9, scope: !181)
!184 = !DILocation(line: 101, column: 14, scope: !181)
!185 = !DILocation(line: 101, column: 9, scope: !181)
!186 = !DILocation(line: 102, column: 5, scope: !181)
!187 = !DILocation(line: 104, column: 5, scope: !144)
!188 = distinct !DISubprogram(name: "memcpy", scope: !189, file: !189, line: 12, type: !190, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !21, retainedNodes: !42)
!189 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!190 = !DISubroutineType(types: !191)
!191 = !{!3, !3, !192, !53}
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!194 = !DILocalVariable(name: "destaddr", arg: 1, scope: !188, file: !189, line: 12, type: !3)
!195 = !DILocation(line: 12, column: 20, scope: !188)
!196 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !188, file: !189, line: 12, type: !192)
!197 = !DILocation(line: 12, column: 42, scope: !188)
!198 = !DILocalVariable(name: "len", arg: 3, scope: !188, file: !189, line: 12, type: !53)
!199 = !DILocation(line: 12, column: 58, scope: !188)
!200 = !DILocalVariable(name: "dest", scope: !188, file: !189, line: 13, type: !4)
!201 = !DILocation(line: 13, column: 9, scope: !188)
!202 = !DILocation(line: 13, column: 16, scope: !188)
!203 = !DILocalVariable(name: "src", scope: !188, file: !189, line: 14, type: !40)
!204 = !DILocation(line: 14, column: 15, scope: !188)
!205 = !DILocation(line: 14, column: 21, scope: !188)
!206 = !DILocation(line: 16, column: 3, scope: !188)
!207 = !DILocation(line: 16, column: 13, scope: !188)
!208 = !DILocation(line: 16, column: 16, scope: !188)
!209 = !DILocation(line: 17, column: 19, scope: !188)
!210 = !DILocation(line: 17, column: 15, scope: !188)
!211 = !DILocation(line: 17, column: 10, scope: !188)
!212 = !DILocation(line: 17, column: 13, scope: !188)
!213 = distinct !{!213, !206, !209, !214}
!214 = !{!"llvm.loop.mustprogress"}
!215 = !DILocation(line: 18, column: 10, scope: !188)
!216 = !DILocation(line: 18, column: 3, scope: !188)
!217 = distinct !DISubprogram(name: "memset", scope: !218, file: !218, line: 12, type: !219, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !23, retainedNodes: !42)
!218 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!219 = !DISubroutineType(types: !220)
!220 = !{!3, !3, !19, !53}
!221 = !DILocalVariable(name: "dst", arg: 1, scope: !217, file: !218, line: 12, type: !3)
!222 = !DILocation(line: 12, column: 20, scope: !217)
!223 = !DILocalVariable(name: "s", arg: 2, scope: !217, file: !218, line: 12, type: !19)
!224 = !DILocation(line: 12, column: 29, scope: !217)
!225 = !DILocalVariable(name: "count", arg: 3, scope: !217, file: !218, line: 12, type: !53)
!226 = !DILocation(line: 12, column: 39, scope: !217)
!227 = !DILocalVariable(name: "a", scope: !217, file: !218, line: 13, type: !4)
!228 = !DILocation(line: 13, column: 9, scope: !217)
!229 = !DILocation(line: 13, column: 13, scope: !217)
!230 = !DILocation(line: 14, column: 3, scope: !217)
!231 = !DILocation(line: 14, column: 15, scope: !217)
!232 = !DILocation(line: 14, column: 18, scope: !217)
!233 = !DILocation(line: 15, column: 12, scope: !217)
!234 = !DILocation(line: 15, column: 7, scope: !217)
!235 = !DILocation(line: 15, column: 10, scope: !217)
!236 = distinct !{!236, !230, !233, !214}
!237 = !DILocation(line: 16, column: 10, scope: !217)
!238 = !DILocation(line: 16, column: 3, scope: !217)

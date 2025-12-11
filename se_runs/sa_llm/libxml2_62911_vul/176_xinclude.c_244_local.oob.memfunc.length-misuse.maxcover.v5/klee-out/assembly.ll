; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/176_xinclude.c_244_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/176_xinclude.c_244_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlXIncludeCtxt = type {}
%struct._xmlNode = type {}
%struct._xmlXIncludeRef = type { i8*, i8* }

@.str = private unnamed_addr constant [25 x i8] c"growing XInclude context\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"URI_len\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"URI_buf\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/176_xinclude.c_244_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlXIncludeErrMemory(%struct._xmlXIncludeCtxt* noundef %0, %struct._xmlNode* noundef %1, i8* noundef %2) #0 !dbg !25 {
  %4 = alloca %struct._xmlXIncludeCtxt*, align 8
  %5 = alloca %struct._xmlNode*, align 8
  %6 = alloca i8*, align 8
  store %struct._xmlXIncludeCtxt* %0, %struct._xmlXIncludeCtxt** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlXIncludeCtxt** %4, metadata !37, metadata !DIExpression()), !dbg !38
  store %struct._xmlNode* %1, %struct._xmlNode** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %5, metadata !39, metadata !DIExpression()), !dbg !40
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !41, metadata !DIExpression()), !dbg !42
  ret void, !dbg !43
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !44 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !50, metadata !DIExpression()), !dbg !51
  %3 = load i64, i64* %2, align 8, !dbg !52
  %4 = call noalias i8* @malloc(i64 noundef %3) #9, !dbg !53
  ret i8* %4, !dbg !54
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlStrdup(i8* noundef %0) #0 !dbg !55 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !58, metadata !DIExpression()), !dbg !59
  %6 = load i8*, i8** %3, align 8, !dbg !60
  %7 = icmp eq i8* %6, null, !dbg !62
  br i1 %7, label %8, label %9, !dbg !63

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !64
  br label %24, !dbg !64

9:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata i64* %4, metadata !65, metadata !DIExpression()), !dbg !66
  %10 = load i8*, i8** %3, align 8, !dbg !67
  %11 = call i64 @strlen(i8* noundef %10) #10, !dbg !68
  %12 = add i64 %11, 1, !dbg !69
  store i64 %12, i64* %4, align 8, !dbg !66
  call void @llvm.dbg.declare(metadata i8** %5, metadata !70, metadata !DIExpression()), !dbg !71
  %13 = load i64, i64* %4, align 8, !dbg !72
  %14 = call noalias i8* @malloc(i64 noundef %13) #9, !dbg !73
  store i8* %14, i8** %5, align 8, !dbg !71
  %15 = load i8*, i8** %5, align 8, !dbg !74
  %16 = icmp ne i8* %15, null, !dbg !74
  br i1 %16, label %17, label %22, !dbg !76

17:                                               ; preds = %9
  %18 = load i8*, i8** %5, align 8, !dbg !77
  %19 = load i8*, i8** %3, align 8, !dbg !78
  %20 = load i64, i64* %4, align 8, !dbg !79
  %21 = call i8* @memcpy(i8* %18, i8* %19, i64 %20), !dbg !80
  br label %22, !dbg !80

22:                                               ; preds = %17, %9
  %23 = load i8*, i8** %5, align 8, !dbg !81
  store i8* %23, i8** %2, align 8, !dbg !82
  br label %24, !dbg !82

24:                                               ; preds = %22, %8
  %25 = load i8*, i8** %2, align 8, !dbg !83
  ret i8* %25, !dbg !83
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlXIncludeRef* @xmlXIncludeNewRef(%struct._xmlXIncludeCtxt* noundef %0, %struct._xmlNode* noundef %1, i8* noundef %2) #0 !dbg !84 {
  %4 = alloca %struct._xmlXIncludeRef*, align 8
  %5 = alloca %struct._xmlXIncludeCtxt*, align 8
  %6 = alloca %struct._xmlNode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._xmlXIncludeRef*, align 8
  store %struct._xmlXIncludeCtxt* %0, %struct._xmlXIncludeCtxt** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlXIncludeCtxt** %5, metadata !87, metadata !DIExpression()), !dbg !88
  store %struct._xmlNode* %1, %struct._xmlNode** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %6, metadata !89, metadata !DIExpression()), !dbg !90
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !91, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.declare(metadata %struct._xmlXIncludeRef** %8, metadata !93, metadata !DIExpression()), !dbg !94
  %9 = call i8* @xmlMalloc(i64 noundef 16), !dbg !95
  %10 = bitcast i8* %9 to %struct._xmlXIncludeRef*, !dbg !96
  store %struct._xmlXIncludeRef* %10, %struct._xmlXIncludeRef** %8, align 8, !dbg !97
  %11 = load %struct._xmlXIncludeRef*, %struct._xmlXIncludeRef** %8, align 8, !dbg !98
  %12 = icmp eq %struct._xmlXIncludeRef* %11, null, !dbg !100
  br i1 %12, label %13, label %16, !dbg !101

13:                                               ; preds = %3
  %14 = load %struct._xmlXIncludeCtxt*, %struct._xmlXIncludeCtxt** %5, align 8, !dbg !102
  %15 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !104
  call void @xmlXIncludeErrMemory(%struct._xmlXIncludeCtxt* noundef %14, %struct._xmlNode* noundef %15, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0)), !dbg !105
  store %struct._xmlXIncludeRef* null, %struct._xmlXIncludeRef** %4, align 8, !dbg !106
  br label %34, !dbg !106

16:                                               ; preds = %3
  %17 = load %struct._xmlXIncludeRef*, %struct._xmlXIncludeRef** %8, align 8, !dbg !107
  %18 = bitcast %struct._xmlXIncludeRef* %17 to i8*, !dbg !108
  %19 = call i8* @memset(i8* %18, i32 0, i64 16), !dbg !108
  %20 = load i8*, i8** %7, align 8, !dbg !109
  %21 = icmp eq i8* %20, null, !dbg !111
  br i1 %21, label %22, label %25, !dbg !112

22:                                               ; preds = %16
  %23 = load %struct._xmlXIncludeRef*, %struct._xmlXIncludeRef** %8, align 8, !dbg !113
  %24 = getelementptr inbounds %struct._xmlXIncludeRef, %struct._xmlXIncludeRef* %23, i32 0, i32 0, !dbg !114
  store i8* null, i8** %24, align 8, !dbg !115
  br label %30, !dbg !113

25:                                               ; preds = %16
  %26 = load i8*, i8** %7, align 8, !dbg !116
  %27 = call i8* @xmlStrdup(i8* noundef %26), !dbg !117
  %28 = load %struct._xmlXIncludeRef*, %struct._xmlXIncludeRef** %8, align 8, !dbg !118
  %29 = getelementptr inbounds %struct._xmlXIncludeRef, %struct._xmlXIncludeRef* %28, i32 0, i32 0, !dbg !119
  store i8* %27, i8** %29, align 8, !dbg !120
  br label %30

30:                                               ; preds = %25, %22
  %31 = load %struct._xmlXIncludeRef*, %struct._xmlXIncludeRef** %8, align 8, !dbg !121
  %32 = getelementptr inbounds %struct._xmlXIncludeRef, %struct._xmlXIncludeRef* %31, i32 0, i32 1, !dbg !122
  store i8* null, i8** %32, align 8, !dbg !123
  %33 = load %struct._xmlXIncludeRef*, %struct._xmlXIncludeRef** %8, align 8, !dbg !124
  store %struct._xmlXIncludeRef* %33, %struct._xmlXIncludeRef** %4, align 8, !dbg !125
  br label %34, !dbg !125

34:                                               ; preds = %30, %13
  %35 = load %struct._xmlXIncludeRef*, %struct._xmlXIncludeRef** %4, align 8, !dbg !126
  ret %struct._xmlXIncludeRef* %35, !dbg !126
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !127 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlXIncludeCtxt, align 1
  %3 = alloca %struct._xmlNode, align 1
  %4 = alloca [256 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct._xmlXIncludeRef*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlXIncludeCtxt* %2, metadata !131, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.declare(metadata %struct._xmlNode* %3, metadata !133, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.declare(metadata [256 x i8]* %4, metadata !135, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.declare(metadata i32* %5, metadata !140, metadata !DIExpression()), !dbg !141
  %8 = bitcast i32* %5 to i8*, !dbg !142
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)), !dbg !143
  %9 = load i32, i32* %5, align 4, !dbg !144
  %10 = icmp sge i32 %9, 0, !dbg !145
  %11 = zext i1 %10 to i32, !dbg !145
  %12 = sext i32 %11 to i64, !dbg !144
  call void @klee_assume(i64 noundef %12), !dbg !146
  %13 = load i32, i32* %5, align 4, !dbg !147
  %14 = icmp slt i32 %13, 256, !dbg !148
  %15 = zext i1 %14 to i32, !dbg !148
  %16 = sext i32 %15 to i64, !dbg !147
  call void @klee_assume(i64 noundef %16), !dbg !149
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !150
  call void @klee_make_symbolic(i8* noundef %17, i64 noundef 256, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)), !dbg !151
  %18 = load i32, i32* %5, align 4, !dbg !152
  %19 = sext i32 %18 to i64, !dbg !153
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 %19, !dbg !153
  store i8 0, i8* %20, align 1, !dbg !154
  call void @llvm.dbg.declare(metadata i8** %6, metadata !155, metadata !DIExpression()), !dbg !156
  %21 = load i32, i32* %5, align 4, !dbg !157
  %22 = icmp sgt i32 %21, 0, !dbg !158
  br i1 %22, label %23, label %25, !dbg !159

23:                                               ; preds = %0
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !160
  br label %26, !dbg !159

25:                                               ; preds = %0
  br label %26, !dbg !159

26:                                               ; preds = %25, %23
  %27 = phi i8* [ %24, %23 ], [ null, %25 ], !dbg !159
  store i8* %27, i8** %6, align 8, !dbg !156
  call void @llvm.dbg.declare(metadata %struct._xmlXIncludeRef** %7, metadata !161, metadata !DIExpression()), !dbg !162
  %28 = load i8*, i8** %6, align 8, !dbg !163
  %29 = call %struct._xmlXIncludeRef* @xmlXIncludeNewRef(%struct._xmlXIncludeCtxt* noundef %2, %struct._xmlNode* noundef %3, i8* noundef %28), !dbg !164
  store %struct._xmlXIncludeRef* %29, %struct._xmlXIncludeRef** %7, align 8, !dbg !162
  %30 = load %struct._xmlXIncludeRef*, %struct._xmlXIncludeRef** %7, align 8, !dbg !165
  %31 = icmp ne %struct._xmlXIncludeRef* %30, null, !dbg !167
  br i1 %31, label %32, label %45, !dbg !168

32:                                               ; preds = %26
  %33 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.4, i64 0, i64 0), i32 noundef 94, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !169
  %34 = load %struct._xmlXIncludeRef*, %struct._xmlXIncludeRef** %7, align 8, !dbg !171
  %35 = getelementptr inbounds %struct._xmlXIncludeRef, %struct._xmlXIncludeRef* %34, i32 0, i32 0, !dbg !173
  %36 = load i8*, i8** %35, align 8, !dbg !173
  %37 = icmp ne i8* %36, null, !dbg !171
  br i1 %37, label %38, label %42, !dbg !174

38:                                               ; preds = %32
  %39 = load %struct._xmlXIncludeRef*, %struct._xmlXIncludeRef** %7, align 8, !dbg !175
  %40 = getelementptr inbounds %struct._xmlXIncludeRef, %struct._xmlXIncludeRef* %39, i32 0, i32 0, !dbg !176
  %41 = load i8*, i8** %40, align 8, !dbg !176
  call void @free(i8* noundef %41) #9, !dbg !177
  br label %42, !dbg !177

42:                                               ; preds = %38, %32
  %43 = load %struct._xmlXIncludeRef*, %struct._xmlXIncludeRef** %7, align 8, !dbg !178
  %44 = bitcast %struct._xmlXIncludeRef* %43 to i8*, !dbg !178
  call void @free(i8* noundef %44) #9, !dbg !179
  br label %45, !dbg !180

45:                                               ; preds = %42, %26
  ret i32 0, !dbg !181
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #6

declare void @klee_assume(i64 noundef) #6

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #7

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #8 !dbg !182 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !188, metadata !DIExpression()), !dbg !189
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !190, metadata !DIExpression()), !dbg !191
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !192, metadata !DIExpression()), !dbg !193
  call void @llvm.dbg.declare(metadata i8** %7, metadata !194, metadata !DIExpression()), !dbg !195
  %9 = load i8*, i8** %4, align 8, !dbg !196
  store i8* %9, i8** %7, align 8, !dbg !195
  call void @llvm.dbg.declare(metadata i8** %8, metadata !197, metadata !DIExpression()), !dbg !198
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
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !13, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24, !24, !24}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/176_xinclude.c_244_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "d966e0a619e277faafbf1bfa1fec724d")
!2 = !{!3, !4, !6}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXIncludeRefPtr", file: !1, line: 11, baseType: !7)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXIncludeRef", file: !1, line: 10, baseType: !9)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXIncludeRef", file: !1, line: 16, size: 128, elements: !10)
!10 = !{!11, !12}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "URI", scope: !9, file: !1, line: 17, baseType: !4, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "fragment", scope: !9, file: !1, line: 18, baseType: !4, size: 64, offset: 64)
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
!25 = distinct !DISubprogram(name: "xmlXIncludeErrMemory", scope: !1, file: !1, line: 31, type: !26, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!26 = !DISubroutineType(types: !27)
!27 = !{null, !28, !32, !35}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXIncludeCtxt", file: !1, line: 12, baseType: !30)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXIncludeCtxt", file: !1, line: 22, elements: !31)
!31 = !{}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 13, baseType: !34)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 26, elements: !31)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!37 = !DILocalVariable(name: "ctxt", arg: 1, scope: !25, file: !1, line: 31, type: !28)
!38 = !DILocation(line: 31, column: 44, scope: !25)
!39 = !DILocalVariable(name: "elem", arg: 2, scope: !25, file: !1, line: 31, type: !32)
!40 = !DILocation(line: 31, column: 59, scope: !25)
!41 = !DILocalVariable(name: "msg", arg: 3, scope: !25, file: !1, line: 31, type: !35)
!42 = !DILocation(line: 31, column: 77, scope: !25)
!43 = !DILocation(line: 33, column: 1, scope: !25)
!44 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 35, type: !45, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!45 = !DISubroutineType(types: !46)
!46 = !{!3, !47}
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !48, line: 46, baseType: !49)
!48 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!49 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!50 = !DILocalVariable(name: "size", arg: 1, scope: !44, file: !1, line: 35, type: !47)
!51 = !DILocation(line: 35, column: 24, scope: !44)
!52 = !DILocation(line: 36, column: 19, scope: !44)
!53 = !DILocation(line: 36, column: 12, scope: !44)
!54 = !DILocation(line: 36, column: 5, scope: !44)
!55 = distinct !DISubprogram(name: "xmlStrdup", scope: !1, file: !1, line: 39, type: !56, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!56 = !DISubroutineType(types: !57)
!57 = !{!4, !35}
!58 = !DILocalVariable(name: "cur", arg: 1, scope: !55, file: !1, line: 39, type: !35)
!59 = !DILocation(line: 39, column: 29, scope: !55)
!60 = !DILocation(line: 40, column: 9, scope: !61)
!61 = distinct !DILexicalBlock(scope: !55, file: !1, line: 40, column: 9)
!62 = !DILocation(line: 40, column: 13, scope: !61)
!63 = !DILocation(line: 40, column: 9, scope: !55)
!64 = !DILocation(line: 40, column: 22, scope: !61)
!65 = !DILocalVariable(name: "len", scope: !55, file: !1, line: 41, type: !47)
!66 = !DILocation(line: 41, column: 12, scope: !55)
!67 = !DILocation(line: 41, column: 25, scope: !55)
!68 = !DILocation(line: 41, column: 18, scope: !55)
!69 = !DILocation(line: 41, column: 30, scope: !55)
!70 = !DILocalVariable(name: "copy", scope: !55, file: !1, line: 42, type: !4)
!71 = !DILocation(line: 42, column: 11, scope: !55)
!72 = !DILocation(line: 42, column: 32, scope: !55)
!73 = !DILocation(line: 42, column: 25, scope: !55)
!74 = !DILocation(line: 43, column: 9, scope: !75)
!75 = distinct !DILexicalBlock(scope: !55, file: !1, line: 43, column: 9)
!76 = !DILocation(line: 43, column: 9, scope: !55)
!77 = !DILocation(line: 43, column: 22, scope: !75)
!78 = !DILocation(line: 43, column: 28, scope: !75)
!79 = !DILocation(line: 43, column: 33, scope: !75)
!80 = !DILocation(line: 43, column: 15, scope: !75)
!81 = !DILocation(line: 44, column: 12, scope: !55)
!82 = !DILocation(line: 44, column: 5, scope: !55)
!83 = !DILocation(line: 45, column: 1, scope: !55)
!84 = distinct !DISubprogram(name: "xmlXIncludeNewRef", scope: !1, file: !1, line: 48, type: !85, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!85 = !DISubroutineType(types: !86)
!86 = !{!6, !28, !32, !35}
!87 = !DILocalVariable(name: "ctxt", arg: 1, scope: !84, file: !1, line: 48, type: !28)
!88 = !DILocation(line: 48, column: 54, scope: !84)
!89 = !DILocalVariable(name: "elem", arg: 2, scope: !84, file: !1, line: 48, type: !32)
!90 = !DILocation(line: 48, column: 69, scope: !84)
!91 = !DILocalVariable(name: "URI", arg: 3, scope: !84, file: !1, line: 48, type: !35)
!92 = !DILocation(line: 48, column: 87, scope: !84)
!93 = !DILocalVariable(name: "ret", scope: !84, file: !1, line: 49, type: !6)
!94 = !DILocation(line: 49, column: 23, scope: !84)
!95 = !DILocation(line: 51, column: 31, scope: !84)
!96 = !DILocation(line: 51, column: 11, scope: !84)
!97 = !DILocation(line: 51, column: 9, scope: !84)
!98 = !DILocation(line: 52, column: 9, scope: !99)
!99 = distinct !DILexicalBlock(scope: !84, file: !1, line: 52, column: 9)
!100 = !DILocation(line: 52, column: 13, scope: !99)
!101 = !DILocation(line: 52, column: 9, scope: !84)
!102 = !DILocation(line: 53, column: 30, scope: !103)
!103 = distinct !DILexicalBlock(scope: !99, file: !1, line: 52, column: 22)
!104 = !DILocation(line: 53, column: 36, scope: !103)
!105 = !DILocation(line: 53, column: 9, scope: !103)
!106 = !DILocation(line: 54, column: 9, scope: !103)
!107 = !DILocation(line: 56, column: 12, scope: !84)
!108 = !DILocation(line: 56, column: 5, scope: !84)
!109 = !DILocation(line: 57, column: 9, scope: !110)
!110 = distinct !DILexicalBlock(scope: !84, file: !1, line: 57, column: 9)
!111 = !DILocation(line: 57, column: 13, scope: !110)
!112 = !DILocation(line: 57, column: 9, scope: !84)
!113 = !DILocation(line: 58, column: 9, scope: !110)
!114 = !DILocation(line: 58, column: 14, scope: !110)
!115 = !DILocation(line: 58, column: 18, scope: !110)
!116 = !DILocation(line: 60, column: 30, scope: !110)
!117 = !DILocation(line: 60, column: 20, scope: !110)
!118 = !DILocation(line: 60, column: 9, scope: !110)
!119 = !DILocation(line: 60, column: 14, scope: !110)
!120 = !DILocation(line: 60, column: 18, scope: !110)
!121 = !DILocation(line: 61, column: 5, scope: !84)
!122 = !DILocation(line: 61, column: 10, scope: !84)
!123 = !DILocation(line: 61, column: 19, scope: !84)
!124 = !DILocation(line: 63, column: 12, scope: !84)
!125 = !DILocation(line: 63, column: 5, scope: !84)
!126 = !DILocation(line: 64, column: 1, scope: !84)
!127 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 67, type: !128, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!128 = !DISubroutineType(types: !129)
!129 = !{!130}
!130 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!131 = !DILocalVariable(name: "ctxt_stub", scope: !127, file: !1, line: 69, type: !29)
!132 = !DILocation(line: 69, column: 21, scope: !127)
!133 = !DILocalVariable(name: "elem_stub", scope: !127, file: !1, line: 70, type: !33)
!134 = !DILocation(line: 70, column: 13, scope: !127)
!135 = !DILocalVariable(name: "URI_buf", scope: !127, file: !1, line: 71, type: !136)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 2048, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 256)
!139 = !DILocation(line: 71, column: 10, scope: !127)
!140 = !DILocalVariable(name: "URI_len", scope: !127, file: !1, line: 72, type: !130)
!141 = !DILocation(line: 72, column: 9, scope: !127)
!142 = !DILocation(line: 75, column: 24, scope: !127)
!143 = !DILocation(line: 75, column: 5, scope: !127)
!144 = !DILocation(line: 76, column: 17, scope: !127)
!145 = !DILocation(line: 76, column: 25, scope: !127)
!146 = !DILocation(line: 76, column: 5, scope: !127)
!147 = !DILocation(line: 77, column: 17, scope: !127)
!148 = !DILocation(line: 77, column: 25, scope: !127)
!149 = !DILocation(line: 77, column: 5, scope: !127)
!150 = !DILocation(line: 80, column: 24, scope: !127)
!151 = !DILocation(line: 80, column: 5, scope: !127)
!152 = !DILocation(line: 81, column: 13, scope: !127)
!153 = !DILocation(line: 81, column: 5, scope: !127)
!154 = !DILocation(line: 81, column: 22, scope: !127)
!155 = !DILocalVariable(name: "URI", scope: !127, file: !1, line: 83, type: !35)
!156 = !DILocation(line: 83, column: 17, scope: !127)
!157 = !DILocation(line: 83, column: 24, scope: !127)
!158 = !DILocation(line: 83, column: 32, scope: !127)
!159 = !DILocation(line: 83, column: 23, scope: !127)
!160 = !DILocation(line: 83, column: 39, scope: !127)
!161 = !DILocalVariable(name: "ref", scope: !127, file: !1, line: 86, type: !6)
!162 = !DILocation(line: 86, column: 23, scope: !127)
!163 = !DILocation(line: 86, column: 71, scope: !127)
!164 = !DILocation(line: 86, column: 29, scope: !127)
!165 = !DILocation(line: 89, column: 9, scope: !166)
!166 = distinct !DILexicalBlock(scope: !127, file: !1, line: 89, column: 9)
!167 = !DILocation(line: 89, column: 13, scope: !166)
!168 = !DILocation(line: 89, column: 9, scope: !127)
!169 = !DILocation(line: 94, column: 9, scope: !170)
!170 = distinct !DILexicalBlock(scope: !166, file: !1, line: 89, column: 22)
!171 = !DILocation(line: 97, column: 13, scope: !172)
!172 = distinct !DILexicalBlock(scope: !170, file: !1, line: 97, column: 13)
!173 = !DILocation(line: 97, column: 18, scope: !172)
!174 = !DILocation(line: 97, column: 13, scope: !170)
!175 = !DILocation(line: 97, column: 28, scope: !172)
!176 = !DILocation(line: 97, column: 33, scope: !172)
!177 = !DILocation(line: 97, column: 23, scope: !172)
!178 = !DILocation(line: 98, column: 14, scope: !170)
!179 = !DILocation(line: 98, column: 9, scope: !170)
!180 = !DILocation(line: 99, column: 5, scope: !170)
!181 = !DILocation(line: 101, column: 5, scope: !127)
!182 = distinct !DISubprogram(name: "memcpy", scope: !183, file: !183, line: 12, type: !184, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !31)
!183 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!184 = !DISubroutineType(types: !185)
!185 = !{!3, !3, !186, !47}
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!188 = !DILocalVariable(name: "destaddr", arg: 1, scope: !182, file: !183, line: 12, type: !3)
!189 = !DILocation(line: 12, column: 20, scope: !182)
!190 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !182, file: !183, line: 12, type: !186)
!191 = !DILocation(line: 12, column: 42, scope: !182)
!192 = !DILocalVariable(name: "len", arg: 3, scope: !182, file: !183, line: 12, type: !47)
!193 = !DILocation(line: 12, column: 58, scope: !182)
!194 = !DILocalVariable(name: "dest", scope: !182, file: !183, line: 13, type: !4)
!195 = !DILocation(line: 13, column: 9, scope: !182)
!196 = !DILocation(line: 13, column: 16, scope: !182)
!197 = !DILocalVariable(name: "src", scope: !182, file: !183, line: 14, type: !35)
!198 = !DILocation(line: 14, column: 15, scope: !182)
!199 = !DILocation(line: 14, column: 21, scope: !182)
!200 = !DILocation(line: 16, column: 3, scope: !182)
!201 = !DILocation(line: 16, column: 13, scope: !182)
!202 = !DILocation(line: 16, column: 16, scope: !182)
!203 = !DILocation(line: 17, column: 19, scope: !182)
!204 = !DILocation(line: 17, column: 15, scope: !182)
!205 = !DILocation(line: 17, column: 10, scope: !182)
!206 = !DILocation(line: 17, column: 13, scope: !182)
!207 = distinct !{!207, !200, !203, !208}
!208 = !{!"llvm.loop.mustprogress"}
!209 = !DILocation(line: 18, column: 10, scope: !182)
!210 = !DILocation(line: 18, column: 3, scope: !182)
!211 = distinct !DISubprogram(name: "memset", scope: !212, file: !212, line: 12, type: !213, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !31)
!212 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!213 = !DISubroutineType(types: !214)
!214 = !{!3, !3, !130, !47}
!215 = !DILocalVariable(name: "dst", arg: 1, scope: !211, file: !212, line: 12, type: !3)
!216 = !DILocation(line: 12, column: 20, scope: !211)
!217 = !DILocalVariable(name: "s", arg: 2, scope: !211, file: !212, line: 12, type: !130)
!218 = !DILocation(line: 12, column: 29, scope: !211)
!219 = !DILocalVariable(name: "count", arg: 3, scope: !211, file: !212, line: 12, type: !47)
!220 = !DILocation(line: 12, column: 39, scope: !211)
!221 = !DILocalVariable(name: "a", scope: !211, file: !212, line: 13, type: !4)
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

; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/240_valid.c_2435_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/240_valid.c_2435_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlValidCtxt = type { i8* }
%struct._xmlNotation = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_55980_vul/240_valid.c_2435_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlAddNotationDecl = private unnamed_addr constant [92 x i8] c"xmlNotationPtr xmlAddNotationDecl(xmlValidCtxt *, const char *, const char *, const char *)\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"systemID\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"publicID\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlVErrMemory(%struct._xmlValidCtxt* noundef %0, i8* noundef %1) #0 !dbg !25 {
  %3 = alloca %struct._xmlValidCtxt*, align 8
  %4 = alloca i8*, align 8
  store %struct._xmlValidCtxt* %0, %struct._xmlValidCtxt** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlValidCtxt** %3, metadata !36, metadata !DIExpression()), !dbg !37
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !38, metadata !DIExpression()), !dbg !39
  ret void, !dbg !40
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !41 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !47, metadata !DIExpression()), !dbg !48
  %3 = load i64, i64* %2, align 8, !dbg !49
  %4 = call noalias i8* @malloc(i64 noundef %3) #9, !dbg !50
  ret i8* %4, !dbg !51
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlStrdup(i8* noundef %0) #0 !dbg !52 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !55, metadata !DIExpression()), !dbg !56
  %6 = load i8*, i8** %3, align 8, !dbg !57
  %7 = icmp eq i8* %6, null, !dbg !59
  br i1 %7, label %8, label %9, !dbg !60

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !61
  br label %24, !dbg !61

9:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata i64* %4, metadata !62, metadata !DIExpression()), !dbg !63
  %10 = load i8*, i8** %3, align 8, !dbg !64
  %11 = call i64 @strlen(i8* noundef %10) #10, !dbg !65
  %12 = add i64 %11, 1, !dbg !66
  store i64 %12, i64* %4, align 8, !dbg !63
  call void @llvm.dbg.declare(metadata i8** %5, metadata !67, metadata !DIExpression()), !dbg !68
  %13 = load i64, i64* %4, align 8, !dbg !69
  %14 = call noalias i8* @malloc(i64 noundef %13) #9, !dbg !70
  store i8* %14, i8** %5, align 8, !dbg !68
  %15 = load i8*, i8** %5, align 8, !dbg !71
  %16 = icmp ne i8* %15, null, !dbg !71
  br i1 %16, label %17, label %22, !dbg !73

17:                                               ; preds = %9
  %18 = load i8*, i8** %5, align 8, !dbg !74
  %19 = load i8*, i8** %3, align 8, !dbg !75
  %20 = load i64, i64* %4, align 8, !dbg !76
  %21 = call i8* @memcpy(i8* %18, i8* %19, i64 %20), !dbg !77
  br label %22, !dbg !77

22:                                               ; preds = %17, %9
  %23 = load i8*, i8** %5, align 8, !dbg !78
  store i8* %23, i8** %2, align 8, !dbg !79
  br label %24, !dbg !79

24:                                               ; preds = %22, %8
  %25 = load i8*, i8** %2, align 8, !dbg !80
  ret i8* %25, !dbg !80
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlNotation* @xmlAddNotationDecl(%struct._xmlValidCtxt* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #0 !dbg !81 {
  %5 = alloca %struct._xmlNotation*, align 8
  %6 = alloca %struct._xmlValidCtxt*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct._xmlNotation*, align 8
  store %struct._xmlValidCtxt* %0, %struct._xmlValidCtxt** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlValidCtxt** %6, metadata !84, metadata !DIExpression()), !dbg !85
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !86, metadata !DIExpression()), !dbg !87
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !88, metadata !DIExpression()), !dbg !89
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !90, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.declare(metadata %struct._xmlNotation** %10, metadata !92, metadata !DIExpression()), !dbg !93
  %11 = load i8*, i8** %7, align 8, !dbg !94
  %12 = icmp eq i8* %11, null, !dbg !96
  br i1 %12, label %13, label %14, !dbg !97

13:                                               ; preds = %4
  store %struct._xmlNotation* null, %struct._xmlNotation** %5, align 8, !dbg !98
  br label %47, !dbg !98

14:                                               ; preds = %4
  %15 = call i8* @xmlMalloc(i64 noundef 24), !dbg !100
  %16 = bitcast i8* %15 to %struct._xmlNotation*, !dbg !101
  store %struct._xmlNotation* %16, %struct._xmlNotation** %10, align 8, !dbg !102
  %17 = load %struct._xmlNotation*, %struct._xmlNotation** %10, align 8, !dbg !103
  %18 = icmp eq %struct._xmlNotation* %17, null, !dbg !105
  br i1 %18, label %19, label %21, !dbg !106

19:                                               ; preds = %14
  %20 = load %struct._xmlValidCtxt*, %struct._xmlValidCtxt** %6, align 8, !dbg !107
  call void @xmlVErrMemory(%struct._xmlValidCtxt* noundef %20, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)), !dbg !109
  store %struct._xmlNotation* null, %struct._xmlNotation** %5, align 8, !dbg !110
  br label %47, !dbg !110

21:                                               ; preds = %14
  %22 = load %struct._xmlNotation*, %struct._xmlNotation** %10, align 8, !dbg !111
  %23 = bitcast %struct._xmlNotation* %22 to i8*, !dbg !112
  %24 = call i8* @memset(i8* %23, i32 0, i64 24), !dbg !112
  %25 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.2, i64 0, i64 0), i32 noundef 59, i8* noundef getelementptr inbounds ([92 x i8], [92 x i8]* @__PRETTY_FUNCTION__.xmlAddNotationDecl, i64 0, i64 0)), !dbg !113
  %26 = load i8*, i8** %7, align 8, !dbg !114
  %27 = call i8* @xmlStrdup(i8* noundef %26), !dbg !115
  %28 = load %struct._xmlNotation*, %struct._xmlNotation** %10, align 8, !dbg !116
  %29 = getelementptr inbounds %struct._xmlNotation, %struct._xmlNotation* %28, i32 0, i32 0, !dbg !117
  store i8* %27, i8** %29, align 8, !dbg !118
  %30 = load i8*, i8** %8, align 8, !dbg !119
  %31 = icmp ne i8* %30, null, !dbg !121
  br i1 %31, label %32, label %37, !dbg !122

32:                                               ; preds = %21
  %33 = load i8*, i8** %8, align 8, !dbg !123
  %34 = call i8* @xmlStrdup(i8* noundef %33), !dbg !124
  %35 = load %struct._xmlNotation*, %struct._xmlNotation** %10, align 8, !dbg !125
  %36 = getelementptr inbounds %struct._xmlNotation, %struct._xmlNotation* %35, i32 0, i32 1, !dbg !126
  store i8* %34, i8** %36, align 8, !dbg !127
  br label %37, !dbg !125

37:                                               ; preds = %32, %21
  %38 = load i8*, i8** %9, align 8, !dbg !128
  %39 = icmp ne i8* %38, null, !dbg !130
  br i1 %39, label %40, label %45, !dbg !131

40:                                               ; preds = %37
  %41 = load i8*, i8** %9, align 8, !dbg !132
  %42 = call i8* @xmlStrdup(i8* noundef %41), !dbg !133
  %43 = load %struct._xmlNotation*, %struct._xmlNotation** %10, align 8, !dbg !134
  %44 = getelementptr inbounds %struct._xmlNotation, %struct._xmlNotation* %43, i32 0, i32 2, !dbg !135
  store i8* %42, i8** %44, align 8, !dbg !136
  br label %45, !dbg !134

45:                                               ; preds = %40, %37
  %46 = load %struct._xmlNotation*, %struct._xmlNotation** %10, align 8, !dbg !137
  store %struct._xmlNotation* %46, %struct._xmlNotation** %5, align 8, !dbg !138
  br label %47, !dbg !138

47:                                               ; preds = %45, %19, %13
  %48 = load %struct._xmlNotation*, %struct._xmlNotation** %5, align 8, !dbg !139
  ret %struct._xmlNotation* %48, !dbg !139
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !140 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlValidCtxt, align 8
  %3 = alloca [256 x i8], align 16
  %4 = alloca [256 x i8], align 16
  %5 = alloca [256 x i8], align 16
  %6 = alloca %struct._xmlNotation*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlValidCtxt* %2, metadata !144, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !146, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.declare(metadata [256 x i8]* %4, metadata !151, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.declare(metadata [256 x i8]* %5, metadata !153, metadata !DIExpression()), !dbg !154
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !155
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 256, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)), !dbg !156
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !157
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)), !dbg !158
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !159
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)), !dbg !160
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 255, !dbg !161
  store i8 0, i8* %10, align 1, !dbg !162
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 255, !dbg !163
  store i8 0, i8* %11, align 1, !dbg !164
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 255, !dbg !165
  store i8 0, i8* %12, align 1, !dbg !166
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !167
  %14 = load i8, i8* %13, align 16, !dbg !167
  %15 = sext i8 %14 to i32, !dbg !167
  %16 = icmp ne i32 %15, 0, !dbg !168
  %17 = zext i1 %16 to i32, !dbg !168
  %18 = sext i32 %17 to i64, !dbg !167
  call void @klee_assume(i64 noundef %18), !dbg !169
  call void @llvm.dbg.declare(metadata %struct._xmlNotation** %6, metadata !170, metadata !DIExpression()), !dbg !171
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !172
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !173
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !174
  %22 = call %struct._xmlNotation* @xmlAddNotationDecl(%struct._xmlValidCtxt* noundef %2, i8* noundef %19, i8* noundef %20, i8* noundef %21), !dbg !175
  store %struct._xmlNotation* %22, %struct._xmlNotation** %6, align 8, !dbg !171
  %23 = load %struct._xmlNotation*, %struct._xmlNotation** %6, align 8, !dbg !176
  %24 = icmp ne %struct._xmlNotation* %23, null, !dbg !178
  br i1 %24, label %25, label %37, !dbg !179

25:                                               ; preds = %0
  %26 = load %struct._xmlNotation*, %struct._xmlNotation** %6, align 8, !dbg !180
  %27 = getelementptr inbounds %struct._xmlNotation, %struct._xmlNotation* %26, i32 0, i32 0, !dbg !182
  %28 = load i8*, i8** %27, align 8, !dbg !182
  call void @free(i8* noundef %28) #9, !dbg !183
  %29 = load %struct._xmlNotation*, %struct._xmlNotation** %6, align 8, !dbg !184
  %30 = getelementptr inbounds %struct._xmlNotation, %struct._xmlNotation* %29, i32 0, i32 1, !dbg !185
  %31 = load i8*, i8** %30, align 8, !dbg !185
  call void @free(i8* noundef %31) #9, !dbg !186
  %32 = load %struct._xmlNotation*, %struct._xmlNotation** %6, align 8, !dbg !187
  %33 = getelementptr inbounds %struct._xmlNotation, %struct._xmlNotation* %32, i32 0, i32 2, !dbg !188
  %34 = load i8*, i8** %33, align 8, !dbg !188
  call void @free(i8* noundef %34) #9, !dbg !189
  %35 = load %struct._xmlNotation*, %struct._xmlNotation** %6, align 8, !dbg !190
  %36 = bitcast %struct._xmlNotation* %35 to i8*, !dbg !190
  call void @free(i8* noundef %36) #9, !dbg !191
  br label %37, !dbg !192

37:                                               ; preds = %25, %0
  ret i32 0, !dbg !193
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #7

declare void @klee_assume(i64 noundef) #7

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #8 !dbg !194 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !200, metadata !DIExpression()), !dbg !201
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !202, metadata !DIExpression()), !dbg !203
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !204, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.declare(metadata i8** %7, metadata !206, metadata !DIExpression()), !dbg !207
  %9 = load i8*, i8** %4, align 8, !dbg !208
  store i8* %9, i8** %7, align 8, !dbg !207
  call void @llvm.dbg.declare(metadata i8** %8, metadata !209, metadata !DIExpression()), !dbg !210
  %10 = load i8*, i8** %5, align 8, !dbg !211
  store i8* %10, i8** %8, align 8, !dbg !210
  br label %11, !dbg !212

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !213
  %13 = add i64 %12, -1, !dbg !213
  store i64 %13, i64* %6, align 8, !dbg !213
  %14 = icmp ugt i64 %12, 0, !dbg !214
  br i1 %14, label %15, label %21, !dbg !212

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !215
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !215
  store i8* %17, i8** %8, align 8, !dbg !215
  %18 = load i8, i8* %16, align 1, !dbg !216
  %19 = load i8*, i8** %7, align 8, !dbg !217
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !217
  store i8* %20, i8** %7, align 8, !dbg !217
  store i8 %18, i8* %19, align 1, !dbg !218
  br label %11, !dbg !212, !llvm.loop !219

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !221
  ret i8* %22, !dbg !222
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #8 !dbg !223 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !227, metadata !DIExpression()), !dbg !228
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !229, metadata !DIExpression()), !dbg !230
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !231, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.declare(metadata i8** %7, metadata !233, metadata !DIExpression()), !dbg !234
  %8 = load i8*, i8** %4, align 8, !dbg !235
  store i8* %8, i8** %7, align 8, !dbg !234
  br label %9, !dbg !236

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !237
  %11 = add i64 %10, -1, !dbg !237
  store i64 %11, i64* %6, align 8, !dbg !237
  %12 = icmp ugt i64 %10, 0, !dbg !238
  br i1 %12, label %13, label %18, !dbg !236

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !239
  %15 = trunc i32 %14 to i8, !dbg !239
  %16 = load i8*, i8** %7, align 8, !dbg !240
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !240
  store i8* %17, i8** %7, align 8, !dbg !240
  store i8 %15, i8* %16, align 1, !dbg !241
  br label %9, !dbg !236, !llvm.loop !242

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !243
  ret i8* %19, !dbg !244
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

!llvm.dbg.cu = !{!0, !13, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24, !24, !24}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/240_valid.c_2435_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "1ae240eabb8f59fea06a7c86b0ce24a3")
!2 = !{!3, !4, !6}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNotationPtr", file: !1, line: 14, baseType: !7)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNotation", file: !1, line: 10, size: 192, elements: !9)
!9 = !{!10, !11, !12}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !8, file: !1, line: 11, baseType: !4, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !8, file: !1, line: 12, baseType: !4, size: 64, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "PublicID", scope: !8, file: !1, line: 13, baseType: !4, size: 64, offset: 128)
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
!25 = distinct !DISubprogram(name: "xmlVErrMemory", scope: !1, file: !1, line: 21, type: !26, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!26 = !DISubroutineType(types: !27)
!27 = !{null, !28, !33}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlValidCtxt", file: !1, line: 18, baseType: !30)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlValidCtxt", file: !1, line: 16, size: 64, elements: !31)
!31 = !{!32}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !30, file: !1, line: 17, baseType: !3, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!35 = !{}
!36 = !DILocalVariable(name: "ctxt", arg: 1, scope: !25, file: !1, line: 21, type: !28)
!37 = !DILocation(line: 21, column: 34, scope: !25)
!38 = !DILocalVariable(name: "msg", arg: 2, scope: !25, file: !1, line: 21, type: !33)
!39 = !DILocation(line: 21, column: 52, scope: !25)
!40 = !DILocation(line: 23, column: 1, scope: !25)
!41 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 25, type: !42, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!42 = !DISubroutineType(types: !43)
!43 = !{!3, !44}
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !45, line: 46, baseType: !46)
!45 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!46 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!47 = !DILocalVariable(name: "size", arg: 1, scope: !41, file: !1, line: 25, type: !44)
!48 = !DILocation(line: 25, column: 24, scope: !41)
!49 = !DILocation(line: 26, column: 19, scope: !41)
!50 = !DILocation(line: 26, column: 12, scope: !41)
!51 = !DILocation(line: 26, column: 5, scope: !41)
!52 = distinct !DISubprogram(name: "xmlStrdup", scope: !1, file: !1, line: 29, type: !53, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!53 = !DISubroutineType(types: !54)
!54 = !{!4, !33}
!55 = !DILocalVariable(name: "cur", arg: 1, scope: !52, file: !1, line: 29, type: !33)
!56 = !DILocation(line: 29, column: 29, scope: !52)
!57 = !DILocation(line: 30, column: 9, scope: !58)
!58 = distinct !DILexicalBlock(scope: !52, file: !1, line: 30, column: 9)
!59 = !DILocation(line: 30, column: 13, scope: !58)
!60 = !DILocation(line: 30, column: 9, scope: !52)
!61 = !DILocation(line: 30, column: 22, scope: !58)
!62 = !DILocalVariable(name: "len", scope: !52, file: !1, line: 31, type: !44)
!63 = !DILocation(line: 31, column: 12, scope: !52)
!64 = !DILocation(line: 31, column: 25, scope: !52)
!65 = !DILocation(line: 31, column: 18, scope: !52)
!66 = !DILocation(line: 31, column: 30, scope: !52)
!67 = !DILocalVariable(name: "copy", scope: !52, file: !1, line: 32, type: !4)
!68 = !DILocation(line: 32, column: 11, scope: !52)
!69 = !DILocation(line: 32, column: 33, scope: !52)
!70 = !DILocation(line: 32, column: 26, scope: !52)
!71 = !DILocation(line: 33, column: 9, scope: !72)
!72 = distinct !DILexicalBlock(scope: !52, file: !1, line: 33, column: 9)
!73 = !DILocation(line: 33, column: 9, scope: !52)
!74 = !DILocation(line: 33, column: 22, scope: !72)
!75 = !DILocation(line: 33, column: 28, scope: !72)
!76 = !DILocation(line: 33, column: 33, scope: !72)
!77 = !DILocation(line: 33, column: 15, scope: !72)
!78 = !DILocation(line: 34, column: 12, scope: !52)
!79 = !DILocation(line: 34, column: 5, scope: !52)
!80 = !DILocation(line: 35, column: 1, scope: !52)
!81 = distinct !DISubprogram(name: "xmlAddNotationDecl", scope: !1, file: !1, line: 38, type: !82, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!82 = !DISubroutineType(types: !83)
!83 = !{!6, !28, !33, !33, !33}
!84 = !DILocalVariable(name: "ctxt", arg: 1, scope: !81, file: !1, line: 38, type: !28)
!85 = !DILocation(line: 38, column: 49, scope: !81)
!86 = !DILocalVariable(name: "name", arg: 2, scope: !81, file: !1, line: 38, type: !33)
!87 = !DILocation(line: 38, column: 67, scope: !81)
!88 = !DILocalVariable(name: "SystemID", arg: 3, scope: !81, file: !1, line: 39, type: !33)
!89 = !DILocation(line: 39, column: 47, scope: !81)
!90 = !DILocalVariable(name: "PublicID", arg: 4, scope: !81, file: !1, line: 39, type: !33)
!91 = !DILocation(line: 39, column: 69, scope: !81)
!92 = !DILocalVariable(name: "ret", scope: !81, file: !1, line: 40, type: !6)
!93 = !DILocation(line: 40, column: 20, scope: !81)
!94 = !DILocation(line: 42, column: 9, scope: !95)
!95 = distinct !DILexicalBlock(scope: !81, file: !1, line: 42, column: 9)
!96 = !DILocation(line: 42, column: 14, scope: !95)
!97 = !DILocation(line: 42, column: 9, scope: !81)
!98 = !DILocation(line: 43, column: 9, scope: !99)
!99 = distinct !DILexicalBlock(scope: !95, file: !1, line: 42, column: 23)
!100 = !DILocation(line: 46, column: 27, scope: !81)
!101 = !DILocation(line: 46, column: 11, scope: !81)
!102 = !DILocation(line: 46, column: 9, scope: !81)
!103 = !DILocation(line: 47, column: 9, scope: !104)
!104 = distinct !DILexicalBlock(scope: !81, file: !1, line: 47, column: 9)
!105 = !DILocation(line: 47, column: 13, scope: !104)
!106 = !DILocation(line: 47, column: 9, scope: !81)
!107 = !DILocation(line: 48, column: 23, scope: !108)
!108 = distinct !DILexicalBlock(scope: !104, file: !1, line: 47, column: 22)
!109 = !DILocation(line: 48, column: 9, scope: !108)
!110 = !DILocation(line: 49, column: 9, scope: !108)
!111 = !DILocation(line: 53, column: 12, scope: !81)
!112 = !DILocation(line: 53, column: 5, scope: !81)
!113 = !DILocation(line: 59, column: 5, scope: !81)
!114 = !DILocation(line: 62, column: 27, scope: !81)
!115 = !DILocation(line: 62, column: 17, scope: !81)
!116 = !DILocation(line: 62, column: 5, scope: !81)
!117 = !DILocation(line: 62, column: 10, scope: !81)
!118 = !DILocation(line: 62, column: 15, scope: !81)
!119 = !DILocation(line: 63, column: 9, scope: !120)
!120 = distinct !DILexicalBlock(scope: !81, file: !1, line: 63, column: 9)
!121 = !DILocation(line: 63, column: 18, scope: !120)
!122 = !DILocation(line: 63, column: 9, scope: !81)
!123 = !DILocation(line: 64, column: 35, scope: !120)
!124 = !DILocation(line: 64, column: 25, scope: !120)
!125 = !DILocation(line: 64, column: 9, scope: !120)
!126 = !DILocation(line: 64, column: 14, scope: !120)
!127 = !DILocation(line: 64, column: 23, scope: !120)
!128 = !DILocation(line: 65, column: 9, scope: !129)
!129 = distinct !DILexicalBlock(scope: !81, file: !1, line: 65, column: 9)
!130 = !DILocation(line: 65, column: 18, scope: !129)
!131 = !DILocation(line: 65, column: 9, scope: !81)
!132 = !DILocation(line: 66, column: 35, scope: !129)
!133 = !DILocation(line: 66, column: 25, scope: !129)
!134 = !DILocation(line: 66, column: 9, scope: !129)
!135 = !DILocation(line: 66, column: 14, scope: !129)
!136 = !DILocation(line: 66, column: 23, scope: !129)
!137 = !DILocation(line: 68, column: 12, scope: !81)
!138 = !DILocation(line: 68, column: 5, scope: !81)
!139 = !DILocation(line: 69, column: 1, scope: !81)
!140 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 71, type: !141, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!141 = !DISubroutineType(types: !142)
!142 = !{!143}
!143 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!144 = !DILocalVariable(name: "ctxt", scope: !140, file: !1, line: 73, type: !29)
!145 = !DILocation(line: 73, column: 18, scope: !140)
!146 = !DILocalVariable(name: "name", scope: !140, file: !1, line: 74, type: !147)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 2048, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 256)
!150 = !DILocation(line: 74, column: 10, scope: !140)
!151 = !DILocalVariable(name: "systemID", scope: !140, file: !1, line: 75, type: !147)
!152 = !DILocation(line: 75, column: 10, scope: !140)
!153 = !DILocalVariable(name: "publicID", scope: !140, file: !1, line: 76, type: !147)
!154 = !DILocation(line: 76, column: 10, scope: !140)
!155 = !DILocation(line: 79, column: 24, scope: !140)
!156 = !DILocation(line: 79, column: 5, scope: !140)
!157 = !DILocation(line: 80, column: 24, scope: !140)
!158 = !DILocation(line: 80, column: 5, scope: !140)
!159 = !DILocation(line: 81, column: 24, scope: !140)
!160 = !DILocation(line: 81, column: 5, scope: !140)
!161 = !DILocation(line: 84, column: 5, scope: !140)
!162 = !DILocation(line: 84, column: 15, scope: !140)
!163 = !DILocation(line: 85, column: 5, scope: !140)
!164 = !DILocation(line: 85, column: 19, scope: !140)
!165 = !DILocation(line: 86, column: 5, scope: !140)
!166 = !DILocation(line: 86, column: 19, scope: !140)
!167 = !DILocation(line: 89, column: 17, scope: !140)
!168 = !DILocation(line: 89, column: 25, scope: !140)
!169 = !DILocation(line: 89, column: 5, scope: !140)
!170 = !DILocalVariable(name: "result", scope: !140, file: !1, line: 92, type: !6)
!171 = !DILocation(line: 92, column: 20, scope: !140)
!172 = !DILocation(line: 92, column: 55, scope: !140)
!173 = !DILocation(line: 92, column: 61, scope: !140)
!174 = !DILocation(line: 92, column: 71, scope: !140)
!175 = !DILocation(line: 92, column: 29, scope: !140)
!176 = !DILocation(line: 95, column: 9, scope: !177)
!177 = distinct !DILexicalBlock(scope: !140, file: !1, line: 95, column: 9)
!178 = !DILocation(line: 95, column: 16, scope: !177)
!179 = !DILocation(line: 95, column: 9, scope: !140)
!180 = !DILocation(line: 96, column: 14, scope: !181)
!181 = distinct !DILexicalBlock(scope: !177, file: !1, line: 95, column: 25)
!182 = !DILocation(line: 96, column: 22, scope: !181)
!183 = !DILocation(line: 96, column: 9, scope: !181)
!184 = !DILocation(line: 97, column: 14, scope: !181)
!185 = !DILocation(line: 97, column: 22, scope: !181)
!186 = !DILocation(line: 97, column: 9, scope: !181)
!187 = !DILocation(line: 98, column: 14, scope: !181)
!188 = !DILocation(line: 98, column: 22, scope: !181)
!189 = !DILocation(line: 98, column: 9, scope: !181)
!190 = !DILocation(line: 99, column: 14, scope: !181)
!191 = !DILocation(line: 99, column: 9, scope: !181)
!192 = !DILocation(line: 100, column: 5, scope: !181)
!193 = !DILocation(line: 102, column: 5, scope: !140)
!194 = distinct !DISubprogram(name: "memcpy", scope: !195, file: !195, line: 12, type: !196, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !35)
!195 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!196 = !DISubroutineType(types: !197)
!197 = !{!3, !3, !198, !44}
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!200 = !DILocalVariable(name: "destaddr", arg: 1, scope: !194, file: !195, line: 12, type: !3)
!201 = !DILocation(line: 12, column: 20, scope: !194)
!202 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !194, file: !195, line: 12, type: !198)
!203 = !DILocation(line: 12, column: 42, scope: !194)
!204 = !DILocalVariable(name: "len", arg: 3, scope: !194, file: !195, line: 12, type: !44)
!205 = !DILocation(line: 12, column: 58, scope: !194)
!206 = !DILocalVariable(name: "dest", scope: !194, file: !195, line: 13, type: !4)
!207 = !DILocation(line: 13, column: 9, scope: !194)
!208 = !DILocation(line: 13, column: 16, scope: !194)
!209 = !DILocalVariable(name: "src", scope: !194, file: !195, line: 14, type: !33)
!210 = !DILocation(line: 14, column: 15, scope: !194)
!211 = !DILocation(line: 14, column: 21, scope: !194)
!212 = !DILocation(line: 16, column: 3, scope: !194)
!213 = !DILocation(line: 16, column: 13, scope: !194)
!214 = !DILocation(line: 16, column: 16, scope: !194)
!215 = !DILocation(line: 17, column: 19, scope: !194)
!216 = !DILocation(line: 17, column: 15, scope: !194)
!217 = !DILocation(line: 17, column: 10, scope: !194)
!218 = !DILocation(line: 17, column: 13, scope: !194)
!219 = distinct !{!219, !212, !215, !220}
!220 = !{!"llvm.loop.mustprogress"}
!221 = !DILocation(line: 18, column: 10, scope: !194)
!222 = !DILocation(line: 18, column: 3, scope: !194)
!223 = distinct !DISubprogram(name: "memset", scope: !224, file: !224, line: 12, type: !225, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !35)
!224 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!225 = !DISubroutineType(types: !226)
!226 = !{!3, !3, !143, !44}
!227 = !DILocalVariable(name: "dst", arg: 1, scope: !223, file: !224, line: 12, type: !3)
!228 = !DILocation(line: 12, column: 20, scope: !223)
!229 = !DILocalVariable(name: "s", arg: 2, scope: !223, file: !224, line: 12, type: !143)
!230 = !DILocation(line: 12, column: 29, scope: !223)
!231 = !DILocalVariable(name: "count", arg: 3, scope: !223, file: !224, line: 12, type: !44)
!232 = !DILocation(line: 12, column: 39, scope: !223)
!233 = !DILocalVariable(name: "a", scope: !223, file: !224, line: 13, type: !4)
!234 = !DILocation(line: 13, column: 9, scope: !223)
!235 = !DILocation(line: 13, column: 13, scope: !223)
!236 = !DILocation(line: 14, column: 3, scope: !223)
!237 = !DILocation(line: 14, column: 15, scope: !223)
!238 = !DILocation(line: 14, column: 18, scope: !223)
!239 = !DILocation(line: 15, column: 12, scope: !223)
!240 = !DILocation(line: 15, column: 7, scope: !223)
!241 = !DILocation(line: 15, column: 10, scope: !223)
!242 = distinct !{!242, !236, !239, !220}
!243 = !DILocation(line: 16, column: 10, scope: !223)
!244 = !DILocation(line: 16, column: 3, scope: !223)

; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/290_tree.c_897_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/290_tree.c_897_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDtd = type { i8*, i32, i8*, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlDoc*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._xmlDoc = type opaque

@.str = private unnamed_addr constant [13 x i8] c"building DTD\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"external_id\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"system_id\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.5 = private unnamed_addr constant [73 x i8] c"(sizeof(xmlDtd) <= __builtin_object_size(dtd, 0)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_55980_vul/290_tree.c_897_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlTreeErrMemory(i8* noundef %0) #0 !dbg !50 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !54, metadata !DIExpression()), !dbg !55
  %3 = load i8*, i8** %2, align 8, !dbg !56
  ret void, !dbg !57
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !58 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !64, metadata !DIExpression()), !dbg !65
  %3 = load i64, i64* %2, align 8, !dbg !66
  %4 = call noalias i8* @malloc(i64 noundef %3) #9, !dbg !67
  ret i8* %4, !dbg !68
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlStrdup(i8* noundef %0) #0 !dbg !69 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !72, metadata !DIExpression()), !dbg !73
  %6 = load i8*, i8** %3, align 8, !dbg !74
  %7 = icmp eq i8* %6, null, !dbg !76
  br i1 %7, label %8, label %9, !dbg !77

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !78
  br label %24, !dbg !78

9:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata i64* %4, metadata !79, metadata !DIExpression()), !dbg !80
  %10 = load i8*, i8** %3, align 8, !dbg !81
  %11 = call i64 @strlen(i8* noundef %10) #10, !dbg !82
  %12 = add i64 %11, 1, !dbg !83
  store i64 %12, i64* %4, align 8, !dbg !80
  call void @llvm.dbg.declare(metadata i8** %5, metadata !84, metadata !DIExpression()), !dbg !85
  %13 = load i64, i64* %4, align 8, !dbg !86
  %14 = call noalias i8* @malloc(i64 noundef %13) #9, !dbg !87
  store i8* %14, i8** %5, align 8, !dbg !85
  %15 = load i8*, i8** %5, align 8, !dbg !88
  %16 = icmp ne i8* %15, null, !dbg !90
  br i1 %16, label %17, label %22, !dbg !91

17:                                               ; preds = %9
  %18 = load i8*, i8** %5, align 8, !dbg !92
  %19 = load i8*, i8** %3, align 8, !dbg !94
  %20 = load i64, i64* %4, align 8, !dbg !95
  %21 = call i8* @memcpy(i8* %18, i8* %19, i64 %20), !dbg !96
  br label %22, !dbg !97

22:                                               ; preds = %17, %9
  %23 = load i8*, i8** %5, align 8, !dbg !98
  store i8* %23, i8** %2, align 8, !dbg !99
  br label %24, !dbg !99

24:                                               ; preds = %22, %8
  %25 = load i8*, i8** %2, align 8, !dbg !100
  ret i8* %25, !dbg !100
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlDtd* @xmlNewDtd(i8* noundef %0, i8* noundef %1, i8* noundef %2) #0 !dbg !101 {
  %4 = alloca %struct._xmlDtd*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._xmlDtd*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !104, metadata !DIExpression()), !dbg !105
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !106, metadata !DIExpression()), !dbg !107
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !108, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata %struct._xmlDtd** %8, metadata !110, metadata !DIExpression()), !dbg !111
  %9 = call i8* @xmlMalloc(i64 noundef 128), !dbg !112
  %10 = bitcast i8* %9 to %struct._xmlDtd*, !dbg !113
  store %struct._xmlDtd* %10, %struct._xmlDtd** %8, align 8, !dbg !114
  %11 = load %struct._xmlDtd*, %struct._xmlDtd** %8, align 8, !dbg !115
  %12 = icmp eq %struct._xmlDtd* %11, null, !dbg !117
  br i1 %12, label %13, label %14, !dbg !118

13:                                               ; preds = %3
  call void @xmlTreeErrMemory(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0)), !dbg !119
  store %struct._xmlDtd* null, %struct._xmlDtd** %4, align 8, !dbg !121
  br label %45, !dbg !121

14:                                               ; preds = %3
  %15 = load %struct._xmlDtd*, %struct._xmlDtd** %8, align 8, !dbg !122
  %16 = bitcast %struct._xmlDtd* %15 to i8*, !dbg !123
  %17 = call i8* @memset(i8* %16, i32 0, i64 128), !dbg !123
  %18 = load %struct._xmlDtd*, %struct._xmlDtd** %8, align 8, !dbg !124
  %19 = getelementptr inbounds %struct._xmlDtd, %struct._xmlDtd* %18, i32 0, i32 1, !dbg !125
  store i32 10, i32* %19, align 8, !dbg !126
  %20 = load i8*, i8** %5, align 8, !dbg !127
  %21 = icmp ne i8* %20, null, !dbg !129
  br i1 %21, label %22, label %27, !dbg !130

22:                                               ; preds = %14
  %23 = load i8*, i8** %5, align 8, !dbg !131
  %24 = call i8* @xmlStrdup(i8* noundef %23), !dbg !132
  %25 = load %struct._xmlDtd*, %struct._xmlDtd** %8, align 8, !dbg !133
  %26 = getelementptr inbounds %struct._xmlDtd, %struct._xmlDtd* %25, i32 0, i32 2, !dbg !134
  store i8* %24, i8** %26, align 8, !dbg !135
  br label %27, !dbg !133

27:                                               ; preds = %22, %14
  %28 = load i8*, i8** %6, align 8, !dbg !136
  %29 = icmp ne i8* %28, null, !dbg !138
  br i1 %29, label %30, label %35, !dbg !139

30:                                               ; preds = %27
  %31 = load i8*, i8** %6, align 8, !dbg !140
  %32 = call i8* @xmlStrdup(i8* noundef %31), !dbg !141
  %33 = load %struct._xmlDtd*, %struct._xmlDtd** %8, align 8, !dbg !142
  %34 = getelementptr inbounds %struct._xmlDtd, %struct._xmlDtd* %33, i32 0, i32 13, !dbg !143
  store i8* %32, i8** %34, align 8, !dbg !144
  br label %35, !dbg !142

35:                                               ; preds = %30, %27
  %36 = load i8*, i8** %7, align 8, !dbg !145
  %37 = icmp ne i8* %36, null, !dbg !147
  br i1 %37, label %38, label %43, !dbg !148

38:                                               ; preds = %35
  %39 = load i8*, i8** %7, align 8, !dbg !149
  %40 = call i8* @xmlStrdup(i8* noundef %39), !dbg !150
  %41 = load %struct._xmlDtd*, %struct._xmlDtd** %8, align 8, !dbg !151
  %42 = getelementptr inbounds %struct._xmlDtd, %struct._xmlDtd* %41, i32 0, i32 14, !dbg !152
  store i8* %40, i8** %42, align 8, !dbg !153
  br label %43, !dbg !151

43:                                               ; preds = %38, %35
  %44 = load %struct._xmlDtd*, %struct._xmlDtd** %8, align 8, !dbg !154
  store %struct._xmlDtd* %44, %struct._xmlDtd** %4, align 8, !dbg !155
  br label %45, !dbg !155

45:                                               ; preds = %43, %13
  %46 = load %struct._xmlDtd*, %struct._xmlDtd** %4, align 8, !dbg !156
  ret %struct._xmlDtd* %46, !dbg !156
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !157 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca [256 x i8], align 16
  %4 = alloca [256 x i8], align 16
  %5 = alloca %struct._xmlDtd*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !161, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !166, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.declare(metadata [256 x i8]* %4, metadata !168, metadata !DIExpression()), !dbg !169
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !170
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 256, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !171
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !172
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 256, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0)), !dbg !173
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !174
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 256, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)), !dbg !175
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !176
  store i8 0, i8* %9, align 1, !dbg !177
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 255, !dbg !178
  store i8 0, i8* %10, align 1, !dbg !179
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 255, !dbg !180
  store i8 0, i8* %11, align 1, !dbg !181
  call void @llvm.dbg.declare(metadata %struct._xmlDtd** %5, metadata !182, metadata !DIExpression()), !dbg !183
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !184
  %13 = load i8, i8* %12, align 16, !dbg !184
  %14 = sext i8 %13 to i64, !dbg !184
  %15 = call i32 @klee_is_symbolic(i64 noundef %14), !dbg !185
  %16 = icmp ne i32 %15, 0, !dbg !185
  br i1 %16, label %17, label %19, !dbg !185

17:                                               ; preds = %0
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !186
  br label %20, !dbg !185

19:                                               ; preds = %0
  br label %20, !dbg !185

20:                                               ; preds = %19, %17
  %21 = phi i8* [ %18, %17 ], [ null, %19 ], !dbg !185
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !187
  %23 = load i8, i8* %22, align 16, !dbg !187
  %24 = sext i8 %23 to i64, !dbg !187
  %25 = call i32 @klee_is_symbolic(i64 noundef %24), !dbg !188
  %26 = icmp ne i32 %25, 0, !dbg !188
  br i1 %26, label %27, label %29, !dbg !188

27:                                               ; preds = %20
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !189
  br label %30, !dbg !188

29:                                               ; preds = %20
  br label %30, !dbg !188

30:                                               ; preds = %29, %27
  %31 = phi i8* [ %28, %27 ], [ null, %29 ], !dbg !188
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !190
  %33 = load i8, i8* %32, align 16, !dbg !190
  %34 = sext i8 %33 to i64, !dbg !190
  %35 = call i32 @klee_is_symbolic(i64 noundef %34), !dbg !191
  %36 = icmp ne i32 %35, 0, !dbg !191
  br i1 %36, label %37, label %39, !dbg !191

37:                                               ; preds = %30
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !192
  br label %40, !dbg !191

39:                                               ; preds = %30
  br label %40, !dbg !191

40:                                               ; preds = %39, %37
  %41 = phi i8* [ %38, %37 ], [ null, %39 ], !dbg !191
  %42 = call %struct._xmlDtd* @xmlNewDtd(i8* noundef %21, i8* noundef %31, i8* noundef %41), !dbg !193
  store %struct._xmlDtd* %42, %struct._xmlDtd** %5, align 8, !dbg !183
  %43 = load %struct._xmlDtd*, %struct._xmlDtd** %5, align 8, !dbg !194
  %44 = icmp ne %struct._xmlDtd* %43, null, !dbg !196
  br i1 %44, label %45, label %66, !dbg !197

45:                                               ; preds = %40
  %46 = load %struct._xmlDtd*, %struct._xmlDtd** %5, align 8, !dbg !198
  %47 = bitcast %struct._xmlDtd* %46 to i8*, !dbg !198
  %48 = icmp ule i64 128, -1, !dbg !198
  br i1 %48, label %49, label %51, !dbg !198

49:                                               ; preds = %45
  br i1 true, label %50, label %51, !dbg !198

50:                                               ; preds = %49
  br label %53, !dbg !198

51:                                               ; preds = %49, %45
  %52 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.6, i64 0, i64 0), i32 noundef 119, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !198
  br label %53, !dbg !198

53:                                               ; preds = %51, %50
  %54 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.6, i64 0, i64 0), i32 noundef 122, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !200
  %55 = load %struct._xmlDtd*, %struct._xmlDtd** %5, align 8, !dbg !201
  %56 = getelementptr inbounds %struct._xmlDtd, %struct._xmlDtd* %55, i32 0, i32 2, !dbg !202
  %57 = load i8*, i8** %56, align 8, !dbg !202
  call void @free(i8* noundef %57) #9, !dbg !203
  %58 = load %struct._xmlDtd*, %struct._xmlDtd** %5, align 8, !dbg !204
  %59 = getelementptr inbounds %struct._xmlDtd, %struct._xmlDtd* %58, i32 0, i32 13, !dbg !205
  %60 = load i8*, i8** %59, align 8, !dbg !205
  call void @free(i8* noundef %60) #9, !dbg !206
  %61 = load %struct._xmlDtd*, %struct._xmlDtd** %5, align 8, !dbg !207
  %62 = getelementptr inbounds %struct._xmlDtd, %struct._xmlDtd* %61, i32 0, i32 14, !dbg !208
  %63 = load i8*, i8** %62, align 8, !dbg !208
  call void @free(i8* noundef %63) #9, !dbg !209
  %64 = load %struct._xmlDtd*, %struct._xmlDtd** %5, align 8, !dbg !210
  %65 = bitcast %struct._xmlDtd* %64 to i8*, !dbg !210
  call void @free(i8* noundef %65) #9, !dbg !211
  br label %66, !dbg !212

66:                                               ; preds = %53, %40
  ret i32 0, !dbg !213
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #6

declare i32 @klee_is_symbolic(i64 noundef) #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #7

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #8 !dbg !214 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !220, metadata !DIExpression()), !dbg !221
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !222, metadata !DIExpression()), !dbg !223
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !224, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.declare(metadata i8** %7, metadata !226, metadata !DIExpression()), !dbg !227
  %9 = load i8*, i8** %4, align 8, !dbg !228
  store i8* %9, i8** %7, align 8, !dbg !227
  call void @llvm.dbg.declare(metadata i8** %8, metadata !229, metadata !DIExpression()), !dbg !230
  %10 = load i8*, i8** %5, align 8, !dbg !231
  store i8* %10, i8** %8, align 8, !dbg !230
  br label %11, !dbg !232

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !233
  %13 = add i64 %12, -1, !dbg !233
  store i64 %13, i64* %6, align 8, !dbg !233
  %14 = icmp ugt i64 %12, 0, !dbg !234
  br i1 %14, label %15, label %21, !dbg !232

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !235
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !235
  store i8* %17, i8** %8, align 8, !dbg !235
  %18 = load i8, i8* %16, align 1, !dbg !236
  %19 = load i8*, i8** %7, align 8, !dbg !237
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !237
  store i8* %20, i8** %7, align 8, !dbg !237
  store i8 %18, i8* %19, align 1, !dbg !238
  br label %11, !dbg !232, !llvm.loop !239

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !241
  ret i8* %22, !dbg !242
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #8 !dbg !243 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !247, metadata !DIExpression()), !dbg !248
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !249, metadata !DIExpression()), !dbg !250
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !251, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.declare(metadata i8** %7, metadata !253, metadata !DIExpression()), !dbg !254
  %8 = load i8*, i8** %4, align 8, !dbg !255
  store i8* %8, i8** %7, align 8, !dbg !254
  br label %9, !dbg !256

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !257
  %11 = add i64 %10, -1, !dbg !257
  store i64 %11, i64* %6, align 8, !dbg !257
  %12 = icmp ugt i64 %10, 0, !dbg !258
  br i1 %12, label %13, label %18, !dbg !256

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !259
  %15 = trunc i32 %14 to i8, !dbg !259
  %16 = load i8*, i8** %7, align 8, !dbg !260
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !260
  store i8* %17, i8** %7, align 8, !dbg !260
  store i8 %15, i8* %16, align 1, !dbg !261
  br label %9, !dbg !256, !llvm.loop !262

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !263
  ret i8* %19, !dbg !264
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

!llvm.dbg.cu = !{!0, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49, !49, !49}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !7, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/290_tree.c_897_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "9b968acaf88c0395b90d42b9690adda2")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 13, baseType: !4, size: 32, elements: !5)
!4 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!5 = !{!6}
!6 = !DIEnumerator(name: "XML_DTD_NODE", value: 10)
!7 = !{!8, !9, !11}
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDtdPtr", file: !1, line: 11, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDtd", file: !1, line: 10, baseType: !14)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !1, line: 17, size: 1024, elements: !15)
!15 = !{!16, !17, !19, !22, !24, !25, !26, !27, !28, !31, !32, !33, !34, !35, !36, !37}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !14, file: !1, line: 18, baseType: !8, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !14, file: !1, line: 19, baseType: !18, size: 32, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !1, line: 15, baseType: !3)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !14, file: !1, line: 20, baseType: !20, size: 64, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !14, file: !1, line: 21, baseType: !23, size: 64, offset: 192)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !14, file: !1, line: 22, baseType: !23, size: 64, offset: 256)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !14, file: !1, line: 23, baseType: !23, size: 64, offset: 320)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !14, file: !1, line: 24, baseType: !23, size: 64, offset: 384)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !14, file: !1, line: 25, baseType: !23, size: 64, offset: 448)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !14, file: !1, line: 26, baseType: !29, size: 64, offset: 512)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !1, line: 26, flags: DIFlagFwdDecl)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !14, file: !1, line: 27, baseType: !8, size: 64, offset: 576)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !14, file: !1, line: 28, baseType: !8, size: 64, offset: 640)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !14, file: !1, line: 29, baseType: !8, size: 64, offset: 704)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !14, file: !1, line: 30, baseType: !8, size: 64, offset: 768)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !14, file: !1, line: 31, baseType: !20, size: 64, offset: 832)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !14, file: !1, line: 32, baseType: !20, size: 64, offset: 896)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !14, file: !1, line: 33, baseType: !8, size: 64, offset: 960)
!38 = distinct !DICompileUnit(language: DW_LANG_C99, file: !39, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!39 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!40 = distinct !DICompileUnit(language: DW_LANG_C99, file: !41, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!41 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!42 = !{i32 7, !"Dwarf Version", i32 5}
!43 = !{i32 2, !"Debug Info Version", i32 3}
!44 = !{i32 1, !"wchar_size", i32 4}
!45 = !{i32 7, !"PIC Level", i32 2}
!46 = !{i32 7, !"PIE Level", i32 2}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"Ubuntu clang version 14.0.6"}
!50 = distinct !DISubprogram(name: "xmlTreeErrMemory", scope: !1, file: !1, line: 37, type: !51, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !53)
!51 = !DISubroutineType(types: !52)
!52 = !{null, !20}
!53 = !{}
!54 = !DILocalVariable(name: "extra", arg: 1, scope: !50, file: !1, line: 37, type: !20)
!55 = !DILocation(line: 37, column: 35, scope: !50)
!56 = !DILocation(line: 38, column: 11, scope: !50)
!57 = !DILocation(line: 39, column: 1, scope: !50)
!58 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 41, type: !59, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !53)
!59 = !DISubroutineType(types: !60)
!60 = !{!8, !61}
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !62, line: 46, baseType: !63)
!62 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!63 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!64 = !DILocalVariable(name: "size", arg: 1, scope: !58, file: !1, line: 41, type: !61)
!65 = !DILocation(line: 41, column: 24, scope: !58)
!66 = !DILocation(line: 42, column: 19, scope: !58)
!67 = !DILocation(line: 42, column: 12, scope: !58)
!68 = !DILocation(line: 42, column: 5, scope: !58)
!69 = distinct !DISubprogram(name: "xmlStrdup", scope: !1, file: !1, line: 45, type: !70, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !53)
!70 = !DISubroutineType(types: !71)
!71 = !{!9, !20}
!72 = !DILocalVariable(name: "cur", arg: 1, scope: !69, file: !1, line: 45, type: !20)
!73 = !DILocation(line: 45, column: 29, scope: !69)
!74 = !DILocation(line: 46, column: 9, scope: !75)
!75 = distinct !DILexicalBlock(scope: !69, file: !1, line: 46, column: 9)
!76 = !DILocation(line: 46, column: 13, scope: !75)
!77 = !DILocation(line: 46, column: 9, scope: !69)
!78 = !DILocation(line: 46, column: 22, scope: !75)
!79 = !DILocalVariable(name: "len", scope: !69, file: !1, line: 47, type: !61)
!80 = !DILocation(line: 47, column: 12, scope: !69)
!81 = !DILocation(line: 47, column: 25, scope: !69)
!82 = !DILocation(line: 47, column: 18, scope: !69)
!83 = !DILocation(line: 47, column: 30, scope: !69)
!84 = !DILocalVariable(name: "copy", scope: !69, file: !1, line: 48, type: !9)
!85 = !DILocation(line: 48, column: 11, scope: !69)
!86 = !DILocation(line: 48, column: 33, scope: !69)
!87 = !DILocation(line: 48, column: 26, scope: !69)
!88 = !DILocation(line: 49, column: 9, scope: !89)
!89 = distinct !DILexicalBlock(scope: !69, file: !1, line: 49, column: 9)
!90 = !DILocation(line: 49, column: 14, scope: !89)
!91 = !DILocation(line: 49, column: 9, scope: !69)
!92 = !DILocation(line: 50, column: 16, scope: !93)
!93 = distinct !DILexicalBlock(scope: !89, file: !1, line: 49, column: 23)
!94 = !DILocation(line: 50, column: 22, scope: !93)
!95 = !DILocation(line: 50, column: 27, scope: !93)
!96 = !DILocation(line: 50, column: 9, scope: !93)
!97 = !DILocation(line: 51, column: 5, scope: !93)
!98 = !DILocation(line: 52, column: 12, scope: !69)
!99 = !DILocation(line: 52, column: 5, scope: !69)
!100 = !DILocation(line: 53, column: 1, scope: !69)
!101 = distinct !DISubprogram(name: "xmlNewDtd", scope: !1, file: !1, line: 56, type: !102, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !53)
!102 = !DISubroutineType(types: !103)
!103 = !{!11, !20, !20, !20}
!104 = !DILocalVariable(name: "name", arg: 1, scope: !101, file: !1, line: 56, type: !20)
!105 = !DILocation(line: 56, column: 33, scope: !101)
!106 = !DILocalVariable(name: "ExternalID", arg: 2, scope: !101, file: !1, line: 56, type: !20)
!107 = !DILocation(line: 56, column: 51, scope: !101)
!108 = !DILocalVariable(name: "SystemID", arg: 3, scope: !101, file: !1, line: 56, type: !20)
!109 = !DILocation(line: 56, column: 75, scope: !101)
!110 = !DILocalVariable(name: "cur", scope: !101, file: !1, line: 57, type: !11)
!111 = !DILocation(line: 57, column: 15, scope: !101)
!112 = !DILocation(line: 59, column: 23, scope: !101)
!113 = !DILocation(line: 59, column: 11, scope: !101)
!114 = !DILocation(line: 59, column: 9, scope: !101)
!115 = !DILocation(line: 60, column: 9, scope: !116)
!116 = distinct !DILexicalBlock(scope: !101, file: !1, line: 60, column: 9)
!117 = !DILocation(line: 60, column: 13, scope: !116)
!118 = !DILocation(line: 60, column: 9, scope: !101)
!119 = !DILocation(line: 61, column: 9, scope: !120)
!120 = distinct !DILexicalBlock(scope: !116, file: !1, line: 60, column: 22)
!121 = !DILocation(line: 62, column: 9, scope: !120)
!122 = !DILocation(line: 66, column: 12, scope: !101)
!123 = !DILocation(line: 66, column: 5, scope: !101)
!124 = !DILocation(line: 68, column: 5, scope: !101)
!125 = !DILocation(line: 68, column: 10, scope: !101)
!126 = !DILocation(line: 68, column: 15, scope: !101)
!127 = !DILocation(line: 70, column: 9, scope: !128)
!128 = distinct !DILexicalBlock(scope: !101, file: !1, line: 70, column: 9)
!129 = !DILocation(line: 70, column: 14, scope: !128)
!130 = !DILocation(line: 70, column: 9, scope: !101)
!131 = !DILocation(line: 71, column: 31, scope: !128)
!132 = !DILocation(line: 71, column: 21, scope: !128)
!133 = !DILocation(line: 71, column: 9, scope: !128)
!134 = !DILocation(line: 71, column: 14, scope: !128)
!135 = !DILocation(line: 71, column: 19, scope: !128)
!136 = !DILocation(line: 72, column: 9, scope: !137)
!137 = distinct !DILexicalBlock(scope: !101, file: !1, line: 72, column: 9)
!138 = !DILocation(line: 72, column: 20, scope: !137)
!139 = !DILocation(line: 72, column: 9, scope: !101)
!140 = !DILocation(line: 73, column: 37, scope: !137)
!141 = !DILocation(line: 73, column: 27, scope: !137)
!142 = !DILocation(line: 73, column: 9, scope: !137)
!143 = !DILocation(line: 73, column: 14, scope: !137)
!144 = !DILocation(line: 73, column: 25, scope: !137)
!145 = !DILocation(line: 74, column: 9, scope: !146)
!146 = distinct !DILexicalBlock(scope: !101, file: !1, line: 74, column: 9)
!147 = !DILocation(line: 74, column: 18, scope: !146)
!148 = !DILocation(line: 74, column: 9, scope: !101)
!149 = !DILocation(line: 75, column: 35, scope: !146)
!150 = !DILocation(line: 75, column: 25, scope: !146)
!151 = !DILocation(line: 75, column: 9, scope: !146)
!152 = !DILocation(line: 75, column: 14, scope: !146)
!153 = !DILocation(line: 75, column: 23, scope: !146)
!154 = !DILocation(line: 77, column: 12, scope: !101)
!155 = !DILocation(line: 77, column: 5, scope: !101)
!156 = !DILocation(line: 78, column: 1, scope: !101)
!157 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 80, type: !158, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !53)
!158 = !DISubroutineType(types: !159)
!159 = !{!160}
!160 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!161 = !DILocalVariable(name: "name", scope: !157, file: !1, line: 82, type: !162)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2048, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 256)
!165 = !DILocation(line: 82, column: 10, scope: !157)
!166 = !DILocalVariable(name: "external_id", scope: !157, file: !1, line: 83, type: !162)
!167 = !DILocation(line: 83, column: 10, scope: !157)
!168 = !DILocalVariable(name: "system_id", scope: !157, file: !1, line: 84, type: !162)
!169 = !DILocation(line: 84, column: 10, scope: !157)
!170 = !DILocation(line: 86, column: 24, scope: !157)
!171 = !DILocation(line: 86, column: 5, scope: !157)
!172 = !DILocation(line: 87, column: 24, scope: !157)
!173 = !DILocation(line: 87, column: 5, scope: !157)
!174 = !DILocation(line: 88, column: 24, scope: !157)
!175 = !DILocation(line: 88, column: 5, scope: !157)
!176 = !DILocation(line: 91, column: 5, scope: !157)
!177 = !DILocation(line: 91, column: 15, scope: !157)
!178 = !DILocation(line: 92, column: 5, scope: !157)
!179 = !DILocation(line: 92, column: 22, scope: !157)
!180 = !DILocation(line: 93, column: 5, scope: !157)
!181 = !DILocation(line: 93, column: 20, scope: !157)
!182 = !DILocalVariable(name: "dtd", scope: !157, file: !1, line: 96, type: !11)
!183 = !DILocation(line: 96, column: 15, scope: !157)
!184 = !DILocation(line: 97, column: 26, scope: !157)
!185 = !DILocation(line: 97, column: 9, scope: !157)
!186 = !DILocation(line: 97, column: 37, scope: !157)
!187 = !DILocation(line: 98, column: 26, scope: !157)
!188 = !DILocation(line: 98, column: 9, scope: !157)
!189 = !DILocation(line: 98, column: 44, scope: !157)
!190 = !DILocation(line: 99, column: 26, scope: !157)
!191 = !DILocation(line: 99, column: 9, scope: !157)
!192 = !DILocation(line: 99, column: 42, scope: !157)
!193 = !DILocation(line: 96, column: 21, scope: !157)
!194 = !DILocation(line: 112, column: 9, scope: !195)
!195 = distinct !DILexicalBlock(scope: !157, file: !1, line: 112, column: 9)
!196 = !DILocation(line: 112, column: 13, scope: !195)
!197 = !DILocation(line: 112, column: 9, scope: !157)
!198 = !DILocation(line: 119, column: 9, scope: !199)
!199 = distinct !DILexicalBlock(scope: !195, file: !1, line: 112, column: 22)
!200 = !DILocation(line: 122, column: 9, scope: !199)
!201 = !DILocation(line: 125, column: 21, scope: !199)
!202 = !DILocation(line: 125, column: 26, scope: !199)
!203 = !DILocation(line: 125, column: 9, scope: !199)
!204 = !DILocation(line: 126, column: 21, scope: !199)
!205 = !DILocation(line: 126, column: 26, scope: !199)
!206 = !DILocation(line: 126, column: 9, scope: !199)
!207 = !DILocation(line: 127, column: 21, scope: !199)
!208 = !DILocation(line: 127, column: 26, scope: !199)
!209 = !DILocation(line: 127, column: 9, scope: !199)
!210 = !DILocation(line: 128, column: 14, scope: !199)
!211 = !DILocation(line: 128, column: 9, scope: !199)
!212 = !DILocation(line: 129, column: 5, scope: !199)
!213 = !DILocation(line: 131, column: 5, scope: !157)
!214 = distinct !DISubprogram(name: "memcpy", scope: !215, file: !215, line: 12, type: !216, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !38, retainedNodes: !53)
!215 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!216 = !DISubroutineType(types: !217)
!217 = !{!8, !8, !218, !61}
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!220 = !DILocalVariable(name: "destaddr", arg: 1, scope: !214, file: !215, line: 12, type: !8)
!221 = !DILocation(line: 12, column: 20, scope: !214)
!222 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !214, file: !215, line: 12, type: !218)
!223 = !DILocation(line: 12, column: 42, scope: !214)
!224 = !DILocalVariable(name: "len", arg: 3, scope: !214, file: !215, line: 12, type: !61)
!225 = !DILocation(line: 12, column: 58, scope: !214)
!226 = !DILocalVariable(name: "dest", scope: !214, file: !215, line: 13, type: !9)
!227 = !DILocation(line: 13, column: 9, scope: !214)
!228 = !DILocation(line: 13, column: 16, scope: !214)
!229 = !DILocalVariable(name: "src", scope: !214, file: !215, line: 14, type: !20)
!230 = !DILocation(line: 14, column: 15, scope: !214)
!231 = !DILocation(line: 14, column: 21, scope: !214)
!232 = !DILocation(line: 16, column: 3, scope: !214)
!233 = !DILocation(line: 16, column: 13, scope: !214)
!234 = !DILocation(line: 16, column: 16, scope: !214)
!235 = !DILocation(line: 17, column: 19, scope: !214)
!236 = !DILocation(line: 17, column: 15, scope: !214)
!237 = !DILocation(line: 17, column: 10, scope: !214)
!238 = !DILocation(line: 17, column: 13, scope: !214)
!239 = distinct !{!239, !232, !235, !240}
!240 = !{!"llvm.loop.mustprogress"}
!241 = !DILocation(line: 18, column: 10, scope: !214)
!242 = !DILocation(line: 18, column: 3, scope: !214)
!243 = distinct !DISubprogram(name: "memset", scope: !244, file: !244, line: 12, type: !245, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !53)
!244 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!245 = !DISubroutineType(types: !246)
!246 = !{!8, !8, !160, !61}
!247 = !DILocalVariable(name: "dst", arg: 1, scope: !243, file: !244, line: 12, type: !8)
!248 = !DILocation(line: 12, column: 20, scope: !243)
!249 = !DILocalVariable(name: "s", arg: 2, scope: !243, file: !244, line: 12, type: !160)
!250 = !DILocation(line: 12, column: 29, scope: !243)
!251 = !DILocalVariable(name: "count", arg: 3, scope: !243, file: !244, line: 12, type: !61)
!252 = !DILocation(line: 12, column: 39, scope: !243)
!253 = !DILocalVariable(name: "a", scope: !243, file: !244, line: 13, type: !9)
!254 = !DILocation(line: 13, column: 9, scope: !243)
!255 = !DILocation(line: 13, column: 13, scope: !243)
!256 = !DILocation(line: 14, column: 3, scope: !243)
!257 = !DILocation(line: 14, column: 15, scope: !243)
!258 = !DILocation(line: 14, column: 18, scope: !243)
!259 = !DILocation(line: 15, column: 12, scope: !243)
!260 = !DILocation(line: 15, column: 7, scope: !243)
!261 = !DILocation(line: 15, column: 10, scope: !243)
!262 = distinct !{!262, !256, !259, !240}
!263 = !DILocation(line: 16, column: 10, scope: !243)
!264 = !DILocation(line: 16, column: 3, scope: !243)

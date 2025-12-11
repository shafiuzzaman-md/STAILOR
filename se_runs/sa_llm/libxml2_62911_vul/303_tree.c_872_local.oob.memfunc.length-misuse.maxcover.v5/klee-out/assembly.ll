; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/303_tree.c_872_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/303_tree.c_872_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDtd = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [13 x i8] c"building DTD\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"external_id\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"system_id\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"name_null\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"extid_null\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"sysid_null\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.8 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_62911_vul/303_tree.c_872_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"/home/shafi/tools/klee/runtime/Intrinsic/klee_range.c\00", align 1
@.str.1.10 = private unnamed_addr constant [14 x i8] c"invalid range\00", align 1
@.str.2.11 = private unnamed_addr constant [5 x i8] c"user\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlTreeErrMemory(i8* noundef %0) #0 !dbg !41 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !47, metadata !DIExpression()), !dbg !48
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
define dso_local %struct._xmlDtd* @xmlCreateIntSubset(i8* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #0 !dbg !90 {
  %5 = alloca %struct._xmlDtd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct._xmlDtd*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !93, metadata !DIExpression()), !dbg !94
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !95, metadata !DIExpression()), !dbg !96
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !97, metadata !DIExpression()), !dbg !98
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !99, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.declare(metadata %struct._xmlDtd** %10, metadata !101, metadata !DIExpression()), !dbg !102
  %11 = call i8* @xmlMalloc(i64 noundef 72), !dbg !103
  %12 = bitcast i8* %11 to %struct._xmlDtd*, !dbg !104
  store %struct._xmlDtd* %12, %struct._xmlDtd** %10, align 8, !dbg !105
  %13 = load %struct._xmlDtd*, %struct._xmlDtd** %10, align 8, !dbg !106
  %14 = icmp eq %struct._xmlDtd* %13, null, !dbg !108
  br i1 %14, label %15, label %16, !dbg !109

15:                                               ; preds = %4
  call void @xmlTreeErrMemory(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0)), !dbg !110
  store %struct._xmlDtd* null, %struct._xmlDtd** %5, align 8, !dbg !112
  br label %47, !dbg !112

16:                                               ; preds = %4
  %17 = load %struct._xmlDtd*, %struct._xmlDtd** %10, align 8, !dbg !113
  %18 = bitcast %struct._xmlDtd* %17 to i8*, !dbg !114
  %19 = call i8* @memset(i8* %18, i32 0, i64 72), !dbg !114
  %20 = load %struct._xmlDtd*, %struct._xmlDtd** %10, align 8, !dbg !115
  %21 = getelementptr inbounds %struct._xmlDtd, %struct._xmlDtd* %20, i32 0, i32 0, !dbg !116
  store i32 10, i32* %21, align 8, !dbg !117
  %22 = load i8*, i8** %7, align 8, !dbg !118
  %23 = icmp ne i8* %22, null, !dbg !120
  br i1 %23, label %24, label %29, !dbg !121

24:                                               ; preds = %16
  %25 = load i8*, i8** %7, align 8, !dbg !122
  %26 = call i8* @xmlStrdup(i8* noundef %25), !dbg !123
  %27 = load %struct._xmlDtd*, %struct._xmlDtd** %10, align 8, !dbg !124
  %28 = getelementptr inbounds %struct._xmlDtd, %struct._xmlDtd* %27, i32 0, i32 1, !dbg !125
  store i8* %26, i8** %28, align 8, !dbg !126
  br label %29, !dbg !124

29:                                               ; preds = %24, %16
  %30 = load i8*, i8** %8, align 8, !dbg !127
  %31 = icmp ne i8* %30, null, !dbg !129
  br i1 %31, label %32, label %37, !dbg !130

32:                                               ; preds = %29
  %33 = load i8*, i8** %8, align 8, !dbg !131
  %34 = call i8* @xmlStrdup(i8* noundef %33), !dbg !132
  %35 = load %struct._xmlDtd*, %struct._xmlDtd** %10, align 8, !dbg !133
  %36 = getelementptr inbounds %struct._xmlDtd, %struct._xmlDtd* %35, i32 0, i32 2, !dbg !134
  store i8* %34, i8** %36, align 8, !dbg !135
  br label %37, !dbg !133

37:                                               ; preds = %32, %29
  %38 = load i8*, i8** %9, align 8, !dbg !136
  %39 = icmp ne i8* %38, null, !dbg !138
  br i1 %39, label %40, label %45, !dbg !139

40:                                               ; preds = %37
  %41 = load i8*, i8** %9, align 8, !dbg !140
  %42 = call i8* @xmlStrdup(i8* noundef %41), !dbg !141
  %43 = load %struct._xmlDtd*, %struct._xmlDtd** %10, align 8, !dbg !142
  %44 = getelementptr inbounds %struct._xmlDtd, %struct._xmlDtd* %43, i32 0, i32 3, !dbg !143
  store i8* %42, i8** %44, align 8, !dbg !144
  br label %45, !dbg !142

45:                                               ; preds = %40, %37
  %46 = load %struct._xmlDtd*, %struct._xmlDtd** %10, align 8, !dbg !145
  store %struct._xmlDtd* %46, %struct._xmlDtd** %5, align 8, !dbg !146
  br label %47, !dbg !146

47:                                               ; preds = %45, %15
  %48 = load %struct._xmlDtd*, %struct._xmlDtd** %5, align 8, !dbg !147
  ret %struct._xmlDtd* %48, !dbg !147
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !148 {
  %1 = alloca i32, align 4
  %2 = alloca [64 x i8], align 16
  %3 = alloca [64 x i8], align 16
  %4 = alloca [64 x i8], align 16
  %5 = alloca %struct._xmlDtd*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [64 x i8]* %2, metadata !151, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.declare(metadata [64 x i8]* %3, metadata !156, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.declare(metadata [64 x i8]* %4, metadata !158, metadata !DIExpression()), !dbg !159
  %6 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0, !dbg !160
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 64, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !161
  %7 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0, !dbg !162
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 64, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0)), !dbg !163
  %8 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0, !dbg !164
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 64, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)), !dbg !165
  %9 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 63, !dbg !166
  store i8 0, i8* %9, align 1, !dbg !167
  %10 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 63, !dbg !168
  store i8 0, i8* %10, align 1, !dbg !169
  %11 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 63, !dbg !170
  store i8 0, i8* %11, align 1, !dbg !171
  call void @llvm.dbg.declare(metadata %struct._xmlDtd** %5, metadata !172, metadata !DIExpression()), !dbg !173
  %12 = call i32 @klee_range(i32 noundef 0, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0)), !dbg !174
  %13 = icmp ne i32 %12, 0, !dbg !174
  br i1 %13, label %14, label %15, !dbg !174

14:                                               ; preds = %0
  br label %17, !dbg !174

15:                                               ; preds = %0
  %16 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0, !dbg !175
  br label %17, !dbg !174

17:                                               ; preds = %15, %14
  %18 = phi i8* [ null, %14 ], [ %16, %15 ], !dbg !174
  %19 = call i32 @klee_range(i32 noundef 0, i32 noundef 2, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0)), !dbg !176
  %20 = icmp ne i32 %19, 0, !dbg !176
  br i1 %20, label %21, label %22, !dbg !176

21:                                               ; preds = %17
  br label %24, !dbg !176

22:                                               ; preds = %17
  %23 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0, !dbg !177
  br label %24, !dbg !176

24:                                               ; preds = %22, %21
  %25 = phi i8* [ null, %21 ], [ %23, %22 ], !dbg !176
  %26 = call i32 @klee_range(i32 noundef 0, i32 noundef 2, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0)), !dbg !178
  %27 = icmp ne i32 %26, 0, !dbg !178
  br i1 %27, label %28, label %29, !dbg !178

28:                                               ; preds = %24
  br label %31, !dbg !178

29:                                               ; preds = %24
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0, !dbg !179
  br label %31, !dbg !178

31:                                               ; preds = %29, %28
  %32 = phi i8* [ null, %28 ], [ %30, %29 ], !dbg !178
  %33 = call %struct._xmlDtd* @xmlCreateIntSubset(i8* noundef null, i8* noundef %18, i8* noundef %25, i8* noundef %32), !dbg !180
  store %struct._xmlDtd* %33, %struct._xmlDtd** %5, align 8, !dbg !173
  %34 = load %struct._xmlDtd*, %struct._xmlDtd** %5, align 8, !dbg !181
  %35 = icmp ne %struct._xmlDtd* %34, null, !dbg !183
  br i1 %35, label %36, label %67, !dbg !184

36:                                               ; preds = %31
  %37 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.8, i64 0, i64 0), i32 noundef 104, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !185
  %38 = load %struct._xmlDtd*, %struct._xmlDtd** %5, align 8, !dbg !187
  %39 = getelementptr inbounds %struct._xmlDtd, %struct._xmlDtd* %38, i32 0, i32 1, !dbg !189
  %40 = load i8*, i8** %39, align 8, !dbg !189
  %41 = icmp ne i8* %40, null, !dbg !187
  br i1 %41, label %42, label %46, !dbg !190

42:                                               ; preds = %36
  %43 = load %struct._xmlDtd*, %struct._xmlDtd** %5, align 8, !dbg !191
  %44 = getelementptr inbounds %struct._xmlDtd, %struct._xmlDtd* %43, i32 0, i32 1, !dbg !192
  %45 = load i8*, i8** %44, align 8, !dbg !192
  call void @free(i8* noundef %45) #9, !dbg !193
  br label %46, !dbg !193

46:                                               ; preds = %42, %36
  %47 = load %struct._xmlDtd*, %struct._xmlDtd** %5, align 8, !dbg !194
  %48 = getelementptr inbounds %struct._xmlDtd, %struct._xmlDtd* %47, i32 0, i32 2, !dbg !196
  %49 = load i8*, i8** %48, align 8, !dbg !196
  %50 = icmp ne i8* %49, null, !dbg !194
  br i1 %50, label %51, label %55, !dbg !197

51:                                               ; preds = %46
  %52 = load %struct._xmlDtd*, %struct._xmlDtd** %5, align 8, !dbg !198
  %53 = getelementptr inbounds %struct._xmlDtd, %struct._xmlDtd* %52, i32 0, i32 2, !dbg !199
  %54 = load i8*, i8** %53, align 8, !dbg !199
  call void @free(i8* noundef %54) #9, !dbg !200
  br label %55, !dbg !200

55:                                               ; preds = %51, %46
  %56 = load %struct._xmlDtd*, %struct._xmlDtd** %5, align 8, !dbg !201
  %57 = getelementptr inbounds %struct._xmlDtd, %struct._xmlDtd* %56, i32 0, i32 3, !dbg !203
  %58 = load i8*, i8** %57, align 8, !dbg !203
  %59 = icmp ne i8* %58, null, !dbg !201
  br i1 %59, label %60, label %64, !dbg !204

60:                                               ; preds = %55
  %61 = load %struct._xmlDtd*, %struct._xmlDtd** %5, align 8, !dbg !205
  %62 = getelementptr inbounds %struct._xmlDtd, %struct._xmlDtd* %61, i32 0, i32 3, !dbg !206
  %63 = load i8*, i8** %62, align 8, !dbg !206
  call void @free(i8* noundef %63) #9, !dbg !207
  br label %64, !dbg !207

64:                                               ; preds = %60, %55
  %65 = load %struct._xmlDtd*, %struct._xmlDtd** %5, align 8, !dbg !208
  %66 = bitcast %struct._xmlDtd* %65 to i8*, !dbg !208
  call void @free(i8* noundef %66) #9, !dbg !209
  br label %67, !dbg !210

67:                                               ; preds = %64, %31
  ret i32 0, !dbg !211
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #6

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #7

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @klee_range(i32 noundef %0, i32 noundef %1, i8* noundef %2) #8 !dbg !212 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !216, metadata !DIExpression()), !dbg !217
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !218, metadata !DIExpression()), !dbg !219
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !220, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.declare(metadata i32* %8, metadata !222, metadata !DIExpression()), !dbg !223
  %9 = load i32, i32* %5, align 4, !dbg !224
  %10 = load i32, i32* %6, align 4, !dbg !226
  %11 = icmp sge i32 %9, %10, !dbg !227
  br i1 %11, label %12, label %13, !dbg !228

12:                                               ; preds = %3
  call void @klee_report_error(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i32 noundef 16, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.11, i64 0, i64 0)) #11, !dbg !229
  unreachable, !dbg !229

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4, !dbg !230
  %15 = add nsw i32 %14, 1, !dbg !232
  %16 = load i32, i32* %6, align 4, !dbg !233
  %17 = icmp eq i32 %15, %16, !dbg !234
  br i1 %17, label %18, label %20, !dbg !235

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4, !dbg !236
  store i32 %19, i32* %4, align 4, !dbg !238
  br label %44, !dbg !238

20:                                               ; preds = %13
  %21 = bitcast i32* %8 to i8*, !dbg !239
  %22 = load i8*, i8** %7, align 8, !dbg !241
  call void @klee_make_symbolic(i8* noundef %21, i64 noundef 4, i8* noundef %22), !dbg !242
  %23 = load i32, i32* %5, align 4, !dbg !243
  %24 = icmp eq i32 %23, 0, !dbg !245
  br i1 %24, label %25, label %31, !dbg !246

25:                                               ; preds = %20
  %26 = load i32, i32* %8, align 4, !dbg !247
  %27 = load i32, i32* %6, align 4, !dbg !249
  %28 = icmp ult i32 %26, %27, !dbg !250
  %29 = zext i1 %28 to i32, !dbg !250
  %30 = sext i32 %29 to i64, !dbg !251
  call void @klee_assume(i64 noundef %30), !dbg !252
  br label %42, !dbg !253

31:                                               ; preds = %20
  %32 = load i32, i32* %5, align 4, !dbg !254
  %33 = load i32, i32* %8, align 4, !dbg !256
  %34 = icmp sle i32 %32, %33, !dbg !257
  %35 = zext i1 %34 to i32, !dbg !257
  %36 = sext i32 %35 to i64, !dbg !254
  call void @klee_assume(i64 noundef %36), !dbg !258
  %37 = load i32, i32* %8, align 4, !dbg !259
  %38 = load i32, i32* %6, align 4, !dbg !260
  %39 = icmp slt i32 %37, %38, !dbg !261
  %40 = zext i1 %39 to i32, !dbg !261
  %41 = sext i32 %40 to i64, !dbg !259
  call void @klee_assume(i64 noundef %41), !dbg !262
  br label %42

42:                                               ; preds = %31, %25
  %43 = load i32, i32* %8, align 4, !dbg !263
  store i32 %43, i32* %4, align 4, !dbg !264
  br label %44, !dbg !264

44:                                               ; preds = %42, %18
  %45 = load i32, i32* %4, align 4, !dbg !265
  ret i32 %45, !dbg !265
}

; Function Attrs: noreturn
declare void @klee_report_error(i8* noundef, i32 noundef, i8* noundef, i8* noundef) #7

declare void @klee_assume(i64 noundef) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #8 !dbg !266 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !272, metadata !DIExpression()), !dbg !273
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !274, metadata !DIExpression()), !dbg !275
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !276, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.declare(metadata i8** %7, metadata !278, metadata !DIExpression()), !dbg !279
  %9 = load i8*, i8** %4, align 8, !dbg !280
  store i8* %9, i8** %7, align 8, !dbg !279
  call void @llvm.dbg.declare(metadata i8** %8, metadata !281, metadata !DIExpression()), !dbg !282
  %10 = load i8*, i8** %5, align 8, !dbg !283
  store i8* %10, i8** %8, align 8, !dbg !282
  br label %11, !dbg !284

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !285
  %13 = add i64 %12, -1, !dbg !285
  store i64 %13, i64* %6, align 8, !dbg !285
  %14 = icmp ugt i64 %12, 0, !dbg !286
  br i1 %14, label %15, label %21, !dbg !284

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !287
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !287
  store i8* %17, i8** %8, align 8, !dbg !287
  %18 = load i8, i8* %16, align 1, !dbg !288
  %19 = load i8*, i8** %7, align 8, !dbg !289
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !289
  store i8* %20, i8** %7, align 8, !dbg !289
  store i8 %18, i8* %19, align 1, !dbg !290
  br label %11, !dbg !284, !llvm.loop !291

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !293
  ret i8* %22, !dbg !294
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #8 !dbg !295 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !299, metadata !DIExpression()), !dbg !300
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !301, metadata !DIExpression()), !dbg !302
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !303, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.declare(metadata i8** %7, metadata !305, metadata !DIExpression()), !dbg !306
  %8 = load i8*, i8** %4, align 8, !dbg !307
  store i8* %8, i8** %7, align 8, !dbg !306
  br label %9, !dbg !308

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !309
  %11 = add i64 %10, -1, !dbg !309
  store i64 %11, i64* %6, align 8, !dbg !309
  %12 = icmp ugt i64 %10, 0, !dbg !310
  br i1 %12, label %13, label %18, !dbg !308

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !311
  %15 = trunc i32 %14 to i8, !dbg !311
  %16 = load i8*, i8** %7, align 8, !dbg !312
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !312
  store i8* %17, i8** %7, align 8, !dbg !312
  store i8 %15, i8* %16, align 1, !dbg !313
  br label %9, !dbg !308, !llvm.loop !314

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !315
  ret i8* %19, !dbg !316
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
attributes #11 = { noreturn }

!llvm.dbg.cu = !{!0, !26, !29, !31}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40, !40, !40, !40}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !7, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/303_tree.c_872_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "2b902e52c47070d01da32aeb4f763659")
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
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !1, line: 17, size: 576, elements: !15)
!15 = !{!16, !18, !19, !20, !21, !22, !23, !24, !25}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !14, file: !1, line: 18, baseType: !17, size: 32)
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !14, file: !1, line: 19, baseType: !9, size: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !14, file: !1, line: 20, baseType: !9, size: 64, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !14, file: !1, line: 21, baseType: !9, size: 64, offset: 192)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !14, file: !1, line: 22, baseType: !8, size: 64, offset: 256)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !14, file: !1, line: 23, baseType: !8, size: 64, offset: 320)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !14, file: !1, line: 24, baseType: !8, size: 64, offset: 384)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !14, file: !1, line: 25, baseType: !8, size: 64, offset: 448)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !14, file: !1, line: 26, baseType: !8, size: 64, offset: 512)
!26 = distinct !DICompileUnit(language: DW_LANG_C89, file: !27, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !28, splitDebugInlining: false, nameTableKind: None)
!27 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Intrinsic/klee_range.c", directory: "/home/shafi/tools/klee/build/runtime/Intrinsic", checksumkind: CSK_MD5, checksum: "967b9ed6e7b3db2f47ee33010ec31c43")
!28 = !{!4}
!29 = distinct !DICompileUnit(language: DW_LANG_C99, file: !30, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!30 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!31 = distinct !DICompileUnit(language: DW_LANG_C99, file: !32, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!32 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!33 = !{i32 7, !"Dwarf Version", i32 5}
!34 = !{i32 2, !"Debug Info Version", i32 3}
!35 = !{i32 1, !"wchar_size", i32 4}
!36 = !{i32 7, !"PIC Level", i32 2}
!37 = !{i32 7, !"PIE Level", i32 2}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"Ubuntu clang version 14.0.6"}
!41 = distinct !DISubprogram(name: "xmlTreeErrMemory", scope: !1, file: !1, line: 30, type: !42, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !46)
!42 = !DISubroutineType(types: !43)
!43 = !{null, !44}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!46 = !{}
!47 = !DILocalVariable(name: "msg", arg: 1, scope: !41, file: !1, line: 30, type: !44)
!48 = !DILocation(line: 30, column: 35, scope: !41)
!49 = !DILocation(line: 32, column: 1, scope: !41)
!50 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 34, type: !51, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !46)
!51 = !DISubroutineType(types: !52)
!52 = !{!8, !53}
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !54, line: 46, baseType: !55)
!54 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!55 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!56 = !DILocalVariable(name: "size", arg: 1, scope: !50, file: !1, line: 34, type: !53)
!57 = !DILocation(line: 34, column: 24, scope: !50)
!58 = !DILocation(line: 35, column: 19, scope: !50)
!59 = !DILocation(line: 35, column: 12, scope: !50)
!60 = !DILocation(line: 35, column: 5, scope: !50)
!61 = distinct !DISubprogram(name: "xmlStrdup", scope: !1, file: !1, line: 38, type: !62, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !46)
!62 = !DISubroutineType(types: !63)
!63 = !{!9, !44}
!64 = !DILocalVariable(name: "cur", arg: 1, scope: !61, file: !1, line: 38, type: !44)
!65 = !DILocation(line: 38, column: 29, scope: !61)
!66 = !DILocation(line: 39, column: 9, scope: !67)
!67 = distinct !DILexicalBlock(scope: !61, file: !1, line: 39, column: 9)
!68 = !DILocation(line: 39, column: 13, scope: !67)
!69 = !DILocation(line: 39, column: 9, scope: !61)
!70 = !DILocation(line: 39, column: 22, scope: !67)
!71 = !DILocalVariable(name: "len", scope: !61, file: !1, line: 40, type: !53)
!72 = !DILocation(line: 40, column: 12, scope: !61)
!73 = !DILocation(line: 40, column: 25, scope: !61)
!74 = !DILocation(line: 40, column: 18, scope: !61)
!75 = !DILocation(line: 40, column: 30, scope: !61)
!76 = !DILocalVariable(name: "res", scope: !61, file: !1, line: 41, type: !9)
!77 = !DILocation(line: 41, column: 11, scope: !61)
!78 = !DILocation(line: 41, column: 31, scope: !61)
!79 = !DILocation(line: 41, column: 24, scope: !61)
!80 = !DILocation(line: 42, column: 9, scope: !81)
!81 = distinct !DILexicalBlock(scope: !61, file: !1, line: 42, column: 9)
!82 = !DILocation(line: 42, column: 9, scope: !61)
!83 = !DILocation(line: 42, column: 21, scope: !81)
!84 = !DILocation(line: 42, column: 26, scope: !81)
!85 = !DILocation(line: 42, column: 31, scope: !81)
!86 = !DILocation(line: 42, column: 14, scope: !81)
!87 = !DILocation(line: 43, column: 12, scope: !61)
!88 = !DILocation(line: 43, column: 5, scope: !61)
!89 = !DILocation(line: 44, column: 1, scope: !61)
!90 = distinct !DISubprogram(name: "xmlCreateIntSubset", scope: !1, file: !1, line: 47, type: !91, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !46)
!91 = !DISubroutineType(types: !92)
!92 = !{!11, !8, !44, !44, !44}
!93 = !DILocalVariable(name: "doc", arg: 1, scope: !90, file: !1, line: 47, type: !8)
!94 = !DILocation(line: 47, column: 36, scope: !90)
!95 = !DILocalVariable(name: "name", arg: 2, scope: !90, file: !1, line: 47, type: !44)
!96 = !DILocation(line: 47, column: 53, scope: !90)
!97 = !DILocalVariable(name: "ExternalID", arg: 3, scope: !90, file: !1, line: 48, type: !44)
!98 = !DILocation(line: 48, column: 42, scope: !90)
!99 = !DILocalVariable(name: "SystemID", arg: 4, scope: !90, file: !1, line: 48, type: !44)
!100 = !DILocation(line: 48, column: 66, scope: !90)
!101 = !DILocalVariable(name: "cur", scope: !90, file: !1, line: 49, type: !11)
!102 = !DILocation(line: 49, column: 15, scope: !90)
!103 = !DILocation(line: 51, column: 23, scope: !90)
!104 = !DILocation(line: 51, column: 11, scope: !90)
!105 = !DILocation(line: 51, column: 9, scope: !90)
!106 = !DILocation(line: 52, column: 9, scope: !107)
!107 = distinct !DILexicalBlock(scope: !90, file: !1, line: 52, column: 9)
!108 = !DILocation(line: 52, column: 13, scope: !107)
!109 = !DILocation(line: 52, column: 9, scope: !90)
!110 = !DILocation(line: 53, column: 9, scope: !111)
!111 = distinct !DILexicalBlock(scope: !107, file: !1, line: 52, column: 22)
!112 = !DILocation(line: 54, column: 9, scope: !111)
!113 = !DILocation(line: 58, column: 12, scope: !90)
!114 = !DILocation(line: 58, column: 5, scope: !90)
!115 = !DILocation(line: 60, column: 5, scope: !90)
!116 = !DILocation(line: 60, column: 10, scope: !90)
!117 = !DILocation(line: 60, column: 15, scope: !90)
!118 = !DILocation(line: 62, column: 9, scope: !119)
!119 = distinct !DILexicalBlock(scope: !90, file: !1, line: 62, column: 9)
!120 = !DILocation(line: 62, column: 14, scope: !119)
!121 = !DILocation(line: 62, column: 9, scope: !90)
!122 = !DILocation(line: 63, column: 31, scope: !119)
!123 = !DILocation(line: 63, column: 21, scope: !119)
!124 = !DILocation(line: 63, column: 9, scope: !119)
!125 = !DILocation(line: 63, column: 14, scope: !119)
!126 = !DILocation(line: 63, column: 19, scope: !119)
!127 = !DILocation(line: 64, column: 9, scope: !128)
!128 = distinct !DILexicalBlock(scope: !90, file: !1, line: 64, column: 9)
!129 = !DILocation(line: 64, column: 20, scope: !128)
!130 = !DILocation(line: 64, column: 9, scope: !90)
!131 = !DILocation(line: 65, column: 37, scope: !128)
!132 = !DILocation(line: 65, column: 27, scope: !128)
!133 = !DILocation(line: 65, column: 9, scope: !128)
!134 = !DILocation(line: 65, column: 14, scope: !128)
!135 = !DILocation(line: 65, column: 25, scope: !128)
!136 = !DILocation(line: 66, column: 9, scope: !137)
!137 = distinct !DILexicalBlock(scope: !90, file: !1, line: 66, column: 9)
!138 = !DILocation(line: 66, column: 18, scope: !137)
!139 = !DILocation(line: 66, column: 9, scope: !90)
!140 = !DILocation(line: 67, column: 35, scope: !137)
!141 = !DILocation(line: 67, column: 25, scope: !137)
!142 = !DILocation(line: 67, column: 9, scope: !137)
!143 = !DILocation(line: 67, column: 14, scope: !137)
!144 = !DILocation(line: 67, column: 23, scope: !137)
!145 = !DILocation(line: 69, column: 12, scope: !90)
!146 = !DILocation(line: 69, column: 5, scope: !90)
!147 = !DILocation(line: 70, column: 1, scope: !90)
!148 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 72, type: !149, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !46)
!149 = !DISubroutineType(types: !150)
!150 = !{!17}
!151 = !DILocalVariable(name: "name", scope: !148, file: !1, line: 74, type: !152)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 512, elements: !153)
!153 = !{!154}
!154 = !DISubrange(count: 64)
!155 = !DILocation(line: 74, column: 10, scope: !148)
!156 = !DILocalVariable(name: "external_id", scope: !148, file: !1, line: 75, type: !152)
!157 = !DILocation(line: 75, column: 10, scope: !148)
!158 = !DILocalVariable(name: "system_id", scope: !148, file: !1, line: 76, type: !152)
!159 = !DILocation(line: 76, column: 10, scope: !148)
!160 = !DILocation(line: 78, column: 24, scope: !148)
!161 = !DILocation(line: 78, column: 5, scope: !148)
!162 = !DILocation(line: 79, column: 24, scope: !148)
!163 = !DILocation(line: 79, column: 5, scope: !148)
!164 = !DILocation(line: 80, column: 24, scope: !148)
!165 = !DILocation(line: 80, column: 5, scope: !148)
!166 = !DILocation(line: 83, column: 5, scope: !148)
!167 = !DILocation(line: 83, column: 14, scope: !148)
!168 = !DILocation(line: 84, column: 5, scope: !148)
!169 = !DILocation(line: 84, column: 21, scope: !148)
!170 = !DILocation(line: 85, column: 5, scope: !148)
!171 = !DILocation(line: 85, column: 19, scope: !148)
!172 = !DILocalVariable(name: "result", scope: !148, file: !1, line: 88, type: !11)
!173 = !DILocation(line: 88, column: 15, scope: !148)
!174 = !DILocation(line: 89, column: 43, scope: !148)
!175 = !DILocation(line: 89, column: 82, scope: !148)
!176 = !DILocation(line: 90, column: 43, scope: !148)
!177 = !DILocation(line: 90, column: 83, scope: !148)
!178 = !DILocation(line: 91, column: 43, scope: !148)
!179 = !DILocation(line: 91, column: 83, scope: !148)
!180 = !DILocation(line: 88, column: 24, scope: !148)
!181 = !DILocation(line: 98, column: 9, scope: !182)
!182 = distinct !DILexicalBlock(scope: !148, file: !1, line: 98, column: 9)
!183 = !DILocation(line: 98, column: 16, scope: !182)
!184 = !DILocation(line: 98, column: 9, scope: !148)
!185 = !DILocation(line: 104, column: 9, scope: !186)
!186 = distinct !DILexicalBlock(scope: !182, file: !1, line: 98, column: 25)
!187 = !DILocation(line: 107, column: 13, scope: !188)
!188 = distinct !DILexicalBlock(scope: !186, file: !1, line: 107, column: 13)
!189 = !DILocation(line: 107, column: 21, scope: !188)
!190 = !DILocation(line: 107, column: 13, scope: !186)
!191 = !DILocation(line: 107, column: 32, scope: !188)
!192 = !DILocation(line: 107, column: 40, scope: !188)
!193 = !DILocation(line: 107, column: 27, scope: !188)
!194 = !DILocation(line: 108, column: 13, scope: !195)
!195 = distinct !DILexicalBlock(scope: !186, file: !1, line: 108, column: 13)
!196 = !DILocation(line: 108, column: 21, scope: !195)
!197 = !DILocation(line: 108, column: 13, scope: !186)
!198 = !DILocation(line: 108, column: 38, scope: !195)
!199 = !DILocation(line: 108, column: 46, scope: !195)
!200 = !DILocation(line: 108, column: 33, scope: !195)
!201 = !DILocation(line: 109, column: 13, scope: !202)
!202 = distinct !DILexicalBlock(scope: !186, file: !1, line: 109, column: 13)
!203 = !DILocation(line: 109, column: 21, scope: !202)
!204 = !DILocation(line: 109, column: 13, scope: !186)
!205 = !DILocation(line: 109, column: 36, scope: !202)
!206 = !DILocation(line: 109, column: 44, scope: !202)
!207 = !DILocation(line: 109, column: 31, scope: !202)
!208 = !DILocation(line: 110, column: 14, scope: !186)
!209 = !DILocation(line: 110, column: 9, scope: !186)
!210 = !DILocation(line: 111, column: 5, scope: !186)
!211 = !DILocation(line: 113, column: 5, scope: !148)
!212 = distinct !DISubprogram(name: "klee_range", scope: !213, file: !213, line: 12, type: !214, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !46)
!213 = !DIFile(filename: "runtime/Intrinsic/klee_range.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "967b9ed6e7b3db2f47ee33010ec31c43")
!214 = !DISubroutineType(types: !215)
!215 = !{!17, !17, !17, !44}
!216 = !DILocalVariable(name: "start", arg: 1, scope: !212, file: !213, line: 12, type: !17)
!217 = !DILocation(line: 12, column: 20, scope: !212)
!218 = !DILocalVariable(name: "end", arg: 2, scope: !212, file: !213, line: 12, type: !17)
!219 = !DILocation(line: 12, column: 31, scope: !212)
!220 = !DILocalVariable(name: "name", arg: 3, scope: !212, file: !213, line: 12, type: !44)
!221 = !DILocation(line: 12, column: 48, scope: !212)
!222 = !DILocalVariable(name: "x", scope: !212, file: !213, line: 13, type: !17)
!223 = !DILocation(line: 13, column: 7, scope: !212)
!224 = !DILocation(line: 15, column: 7, scope: !225)
!225 = distinct !DILexicalBlock(scope: !212, file: !213, line: 15, column: 7)
!226 = !DILocation(line: 15, column: 16, scope: !225)
!227 = !DILocation(line: 15, column: 13, scope: !225)
!228 = !DILocation(line: 15, column: 7, scope: !212)
!229 = !DILocation(line: 16, column: 5, scope: !225)
!230 = !DILocation(line: 18, column: 7, scope: !231)
!231 = distinct !DILexicalBlock(scope: !212, file: !213, line: 18, column: 7)
!232 = !DILocation(line: 18, column: 12, scope: !231)
!233 = !DILocation(line: 18, column: 16, scope: !231)
!234 = !DILocation(line: 18, column: 14, scope: !231)
!235 = !DILocation(line: 18, column: 7, scope: !212)
!236 = !DILocation(line: 19, column: 12, scope: !237)
!237 = distinct !DILexicalBlock(scope: !231, file: !213, line: 18, column: 21)
!238 = !DILocation(line: 19, column: 5, scope: !237)
!239 = !DILocation(line: 21, column: 24, scope: !240)
!240 = distinct !DILexicalBlock(scope: !231, file: !213, line: 20, column: 10)
!241 = !DILocation(line: 21, column: 38, scope: !240)
!242 = !DILocation(line: 21, column: 5, scope: !240)
!243 = !DILocation(line: 24, column: 9, scope: !244)
!244 = distinct !DILexicalBlock(scope: !240, file: !213, line: 24, column: 9)
!245 = !DILocation(line: 24, column: 14, scope: !244)
!246 = !DILocation(line: 24, column: 9, scope: !240)
!247 = !DILocation(line: 25, column: 30, scope: !248)
!248 = distinct !DILexicalBlock(scope: !244, file: !213, line: 24, column: 19)
!249 = !DILocation(line: 25, column: 45, scope: !248)
!250 = !DILocation(line: 25, column: 32, scope: !248)
!251 = !DILocation(line: 25, column: 19, scope: !248)
!252 = !DILocation(line: 25, column: 7, scope: !248)
!253 = !DILocation(line: 26, column: 5, scope: !248)
!254 = !DILocation(line: 27, column: 19, scope: !255)
!255 = distinct !DILexicalBlock(scope: !244, file: !213, line: 26, column: 12)
!256 = !DILocation(line: 27, column: 28, scope: !255)
!257 = !DILocation(line: 27, column: 25, scope: !255)
!258 = !DILocation(line: 27, column: 7, scope: !255)
!259 = !DILocation(line: 28, column: 19, scope: !255)
!260 = !DILocation(line: 28, column: 23, scope: !255)
!261 = !DILocation(line: 28, column: 21, scope: !255)
!262 = !DILocation(line: 28, column: 7, scope: !255)
!263 = !DILocation(line: 31, column: 12, scope: !240)
!264 = !DILocation(line: 31, column: 5, scope: !240)
!265 = !DILocation(line: 33, column: 1, scope: !212)
!266 = distinct !DISubprogram(name: "memcpy", scope: !267, file: !267, line: 12, type: !268, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !29, retainedNodes: !46)
!267 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!268 = !DISubroutineType(types: !269)
!269 = !{!8, !8, !270, !53}
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!272 = !DILocalVariable(name: "destaddr", arg: 1, scope: !266, file: !267, line: 12, type: !8)
!273 = !DILocation(line: 12, column: 20, scope: !266)
!274 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !266, file: !267, line: 12, type: !270)
!275 = !DILocation(line: 12, column: 42, scope: !266)
!276 = !DILocalVariable(name: "len", arg: 3, scope: !266, file: !267, line: 12, type: !53)
!277 = !DILocation(line: 12, column: 58, scope: !266)
!278 = !DILocalVariable(name: "dest", scope: !266, file: !267, line: 13, type: !9)
!279 = !DILocation(line: 13, column: 9, scope: !266)
!280 = !DILocation(line: 13, column: 16, scope: !266)
!281 = !DILocalVariable(name: "src", scope: !266, file: !267, line: 14, type: !44)
!282 = !DILocation(line: 14, column: 15, scope: !266)
!283 = !DILocation(line: 14, column: 21, scope: !266)
!284 = !DILocation(line: 16, column: 3, scope: !266)
!285 = !DILocation(line: 16, column: 13, scope: !266)
!286 = !DILocation(line: 16, column: 16, scope: !266)
!287 = !DILocation(line: 17, column: 19, scope: !266)
!288 = !DILocation(line: 17, column: 15, scope: !266)
!289 = !DILocation(line: 17, column: 10, scope: !266)
!290 = !DILocation(line: 17, column: 13, scope: !266)
!291 = distinct !{!291, !284, !287, !292}
!292 = !{!"llvm.loop.mustprogress"}
!293 = !DILocation(line: 18, column: 10, scope: !266)
!294 = !DILocation(line: 18, column: 3, scope: !266)
!295 = distinct !DISubprogram(name: "memset", scope: !296, file: !296, line: 12, type: !297, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !31, retainedNodes: !46)
!296 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!297 = !DISubroutineType(types: !298)
!298 = !{!8, !8, !17, !53}
!299 = !DILocalVariable(name: "dst", arg: 1, scope: !295, file: !296, line: 12, type: !8)
!300 = !DILocation(line: 12, column: 20, scope: !295)
!301 = !DILocalVariable(name: "s", arg: 2, scope: !295, file: !296, line: 12, type: !17)
!302 = !DILocation(line: 12, column: 29, scope: !295)
!303 = !DILocalVariable(name: "count", arg: 3, scope: !295, file: !296, line: 12, type: !53)
!304 = !DILocation(line: 12, column: 39, scope: !295)
!305 = !DILocalVariable(name: "a", scope: !295, file: !296, line: 13, type: !9)
!306 = !DILocation(line: 13, column: 9, scope: !295)
!307 = !DILocation(line: 13, column: 13, scope: !295)
!308 = !DILocation(line: 14, column: 3, scope: !295)
!309 = !DILocation(line: 14, column: 15, scope: !295)
!310 = !DILocation(line: 14, column: 18, scope: !295)
!311 = !DILocation(line: 15, column: 12, scope: !295)
!312 = !DILocation(line: 15, column: 7, scope: !295)
!313 = !DILocation(line: 15, column: 10, scope: !295)
!314 = distinct !{!314, !308, !311, !292}
!315 = !DILocation(line: 16, column: 10, scope: !295)
!316 = !DILocation(line: 16, column: 3, scope: !295)

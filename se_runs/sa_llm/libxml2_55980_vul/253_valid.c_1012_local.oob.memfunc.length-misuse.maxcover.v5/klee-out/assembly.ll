; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/253_valid.c_1012_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/253_valid.c_1012_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDict = type { i32 }
%struct._xmlElementContent = type { i32, i32, i8* }
%struct._xmlDoc = type { %struct._xmlDict* }

@.str = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_55980_vul/253_valid.c_1012_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlNewElementContent = private unnamed_addr constant [79 x i8] c"xmlElementContentPtr xmlNewElementContent(const xmlElementContent *, xmlDoc *)\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"doc\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"dict\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"cur\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"name_buffer\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"name_is_null\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlVErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !27 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !33, metadata !DIExpression()), !dbg !34
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !35, metadata !DIExpression()), !dbg !36
  ret void, !dbg !37
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !38 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !44, metadata !DIExpression()), !dbg !45
  %3 = load i64, i64* %2, align 8, !dbg !46
  %4 = call noalias i8* @malloc(i64 noundef %3) #9, !dbg !47
  ret i8* %4, !dbg !48
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlDictLookup(%struct._xmlDict* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !49 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._xmlDict*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct._xmlDict* %0, %struct._xmlDict** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlDict** %5, metadata !57, metadata !DIExpression()), !dbg !58
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !59, metadata !DIExpression()), !dbg !60
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !61, metadata !DIExpression()), !dbg !62
  %10 = load i8*, i8** %6, align 8, !dbg !63
  %11 = icmp eq i8* %10, null, !dbg !65
  br i1 %11, label %12, label %13, !dbg !66

12:                                               ; preds = %3
  store i8* null, i8** %4, align 8, !dbg !67
  br label %28, !dbg !67

13:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i64* %8, metadata !68, metadata !DIExpression()), !dbg !69
  %14 = load i8*, i8** %6, align 8, !dbg !70
  %15 = call i64 @strlen(i8* noundef %14) #10, !dbg !71
  %16 = add i64 %15, 1, !dbg !72
  store i64 %16, i64* %8, align 8, !dbg !69
  call void @llvm.dbg.declare(metadata i8** %9, metadata !73, metadata !DIExpression()), !dbg !74
  %17 = load i64, i64* %8, align 8, !dbg !75
  %18 = call noalias i8* @malloc(i64 noundef %17) #9, !dbg !76
  store i8* %18, i8** %9, align 8, !dbg !74
  %19 = load i8*, i8** %9, align 8, !dbg !77
  %20 = icmp ne i8* %19, null, !dbg !77
  br i1 %20, label %21, label %26, !dbg !79

21:                                               ; preds = %13
  %22 = load i8*, i8** %9, align 8, !dbg !80
  %23 = load i8*, i8** %6, align 8, !dbg !81
  %24 = load i64, i64* %8, align 8, !dbg !82
  %25 = call i8* @memcpy(i8* %22, i8* %23, i64 %24), !dbg !83
  br label %26, !dbg !83

26:                                               ; preds = %21, %13
  %27 = load i8*, i8** %9, align 8, !dbg !84
  store i8* %27, i8** %4, align 8, !dbg !85
  br label %28, !dbg !85

28:                                               ; preds = %26, %12
  %29 = load i8*, i8** %4, align 8, !dbg !86
  ret i8* %29, !dbg !86
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlStrdup(i8* noundef %0) #0 !dbg !87 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !90, metadata !DIExpression()), !dbg !91
  %6 = load i8*, i8** %3, align 8, !dbg !92
  %7 = icmp eq i8* %6, null, !dbg !94
  br i1 %7, label %8, label %9, !dbg !95

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !96
  br label %24, !dbg !96

9:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata i64* %4, metadata !97, metadata !DIExpression()), !dbg !98
  %10 = load i8*, i8** %3, align 8, !dbg !99
  %11 = call i64 @strlen(i8* noundef %10) #10, !dbg !100
  %12 = add i64 %11, 1, !dbg !101
  store i64 %12, i64* %4, align 8, !dbg !98
  call void @llvm.dbg.declare(metadata i8** %5, metadata !102, metadata !DIExpression()), !dbg !103
  %13 = load i64, i64* %4, align 8, !dbg !104
  %14 = call noalias i8* @malloc(i64 noundef %13) #9, !dbg !105
  store i8* %14, i8** %5, align 8, !dbg !103
  %15 = load i8*, i8** %5, align 8, !dbg !106
  %16 = icmp ne i8* %15, null, !dbg !106
  br i1 %16, label %17, label %22, !dbg !108

17:                                               ; preds = %9
  %18 = load i8*, i8** %5, align 8, !dbg !109
  %19 = load i8*, i8** %3, align 8, !dbg !110
  %20 = load i64, i64* %4, align 8, !dbg !111
  %21 = call i8* @memcpy(i8* %18, i8* %19, i64 %20), !dbg !112
  br label %22, !dbg !112

22:                                               ; preds = %17, %9
  %23 = load i8*, i8** %5, align 8, !dbg !113
  store i8* %23, i8** %2, align 8, !dbg !114
  br label %24, !dbg !114

24:                                               ; preds = %22, %8
  %25 = load i8*, i8** %2, align 8, !dbg !115
  ret i8* %25, !dbg !115
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlElementContent* @xmlNewElementContent(%struct._xmlElementContent* noundef %0, %struct._xmlDoc* noundef %1) #0 !dbg !116 {
  %3 = alloca %struct._xmlElementContent*, align 8
  %4 = alloca %struct._xmlElementContent*, align 8
  %5 = alloca %struct._xmlDoc*, align 8
  %6 = alloca %struct._xmlElementContent*, align 8
  %7 = alloca %struct._xmlDict*, align 8
  store %struct._xmlElementContent* %0, %struct._xmlElementContent** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlElementContent** %4, metadata !126, metadata !DIExpression()), !dbg !127
  store %struct._xmlDoc* %1, %struct._xmlDoc** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %5, metadata !128, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.declare(metadata %struct._xmlElementContent** %6, metadata !130, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.declare(metadata %struct._xmlDict** %7, metadata !132, metadata !DIExpression()), !dbg !133
  store %struct._xmlDict* null, %struct._xmlDict** %7, align 8, !dbg !133
  %8 = load %struct._xmlDoc*, %struct._xmlDoc** %5, align 8, !dbg !134
  %9 = icmp ne %struct._xmlDoc* %8, null, !dbg !136
  br i1 %9, label %10, label %14, !dbg !137

10:                                               ; preds = %2
  %11 = load %struct._xmlDoc*, %struct._xmlDoc** %5, align 8, !dbg !138
  %12 = getelementptr inbounds %struct._xmlDoc, %struct._xmlDoc* %11, i32 0, i32 0, !dbg !139
  %13 = load %struct._xmlDict*, %struct._xmlDict** %12, align 8, !dbg !139
  store %struct._xmlDict* %13, %struct._xmlDict** %7, align 8, !dbg !140
  br label %14, !dbg !141

14:                                               ; preds = %10, %2
  %15 = call i8* @xmlMalloc(i64 noundef 16), !dbg !142
  %16 = bitcast i8* %15 to %struct._xmlElementContent*, !dbg !143
  store %struct._xmlElementContent* %16, %struct._xmlElementContent** %6, align 8, !dbg !144
  %17 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !145
  %18 = icmp eq %struct._xmlElementContent* %17, null, !dbg !147
  br i1 %18, label %19, label %20, !dbg !148

19:                                               ; preds = %14
  call void @xmlVErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)), !dbg !149
  store %struct._xmlElementContent* null, %struct._xmlElementContent** %3, align 8, !dbg !151
  br label %60, !dbg !151

20:                                               ; preds = %14
  %21 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.2, i64 0, i64 0), i32 noundef 77, i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xmlNewElementContent, i64 0, i64 0)), !dbg !152
  %22 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !153
  %23 = bitcast %struct._xmlElementContent* %22 to i8*, !dbg !154
  %24 = call i8* @memset(i8* %23, i32 0, i64 16), !dbg !154
  %25 = load %struct._xmlElementContent*, %struct._xmlElementContent** %4, align 8, !dbg !155
  %26 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %25, i32 0, i32 0, !dbg !156
  %27 = load i32, i32* %26, align 8, !dbg !156
  %28 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !157
  %29 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %28, i32 0, i32 0, !dbg !158
  store i32 %27, i32* %29, align 8, !dbg !159
  %30 = load %struct._xmlElementContent*, %struct._xmlElementContent** %4, align 8, !dbg !160
  %31 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %30, i32 0, i32 1, !dbg !161
  %32 = load i32, i32* %31, align 4, !dbg !161
  %33 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !162
  %34 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %33, i32 0, i32 1, !dbg !163
  store i32 %32, i32* %34, align 4, !dbg !164
  %35 = load %struct._xmlElementContent*, %struct._xmlElementContent** %4, align 8, !dbg !165
  %36 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %35, i32 0, i32 2, !dbg !167
  %37 = load i8*, i8** %36, align 8, !dbg !167
  %38 = icmp ne i8* %37, null, !dbg !168
  br i1 %38, label %39, label %58, !dbg !169

39:                                               ; preds = %20
  %40 = load %struct._xmlDict*, %struct._xmlDict** %7, align 8, !dbg !170
  %41 = icmp ne %struct._xmlDict* %40, null, !dbg !170
  br i1 %41, label %42, label %50, !dbg !173

42:                                               ; preds = %39
  %43 = load %struct._xmlDict*, %struct._xmlDict** %7, align 8, !dbg !174
  %44 = load %struct._xmlElementContent*, %struct._xmlElementContent** %4, align 8, !dbg !175
  %45 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %44, i32 0, i32 2, !dbg !176
  %46 = load i8*, i8** %45, align 8, !dbg !176
  %47 = call i8* @xmlDictLookup(%struct._xmlDict* noundef %43, i8* noundef %46, i32 noundef -1), !dbg !177
  %48 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !178
  %49 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %48, i32 0, i32 2, !dbg !179
  store i8* %47, i8** %49, align 8, !dbg !180
  br label %57, !dbg !178

50:                                               ; preds = %39
  %51 = load %struct._xmlElementContent*, %struct._xmlElementContent** %4, align 8, !dbg !181
  %52 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %51, i32 0, i32 2, !dbg !182
  %53 = load i8*, i8** %52, align 8, !dbg !182
  %54 = call i8* @xmlStrdup(i8* noundef %53), !dbg !183
  %55 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !184
  %56 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %55, i32 0, i32 2, !dbg !185
  store i8* %54, i8** %56, align 8, !dbg !186
  br label %57

57:                                               ; preds = %50, %42
  br label %58, !dbg !187

58:                                               ; preds = %57, %20
  %59 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !188
  store %struct._xmlElementContent* %59, %struct._xmlElementContent** %3, align 8, !dbg !189
  br label %60, !dbg !189

60:                                               ; preds = %58, %19
  %61 = load %struct._xmlElementContent*, %struct._xmlElementContent** %3, align 8, !dbg !190
  ret %struct._xmlElementContent* %61, !dbg !190
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !191 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlElementContent, align 8
  %3 = alloca %struct._xmlDoc, align 8
  %4 = alloca %struct._xmlDict, align 4
  %5 = alloca [256 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca %struct._xmlElementContent*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlElementContent* %2, metadata !194, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.declare(metadata %struct._xmlDoc* %3, metadata !196, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.declare(metadata %struct._xmlDict* %4, metadata !198, metadata !DIExpression()), !dbg !199
  %8 = bitcast %struct._xmlDoc* %3 to i8*, !dbg !200
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)), !dbg !201
  %9 = bitcast %struct._xmlDict* %4 to i8*, !dbg !202
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)), !dbg !203
  %10 = getelementptr inbounds %struct._xmlDoc, %struct._xmlDoc* %3, i32 0, i32 0, !dbg !204
  store %struct._xmlDict* %4, %struct._xmlDict** %10, align 8, !dbg !205
  %11 = bitcast %struct._xmlElementContent* %2 to i8*, !dbg !206
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 16, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)), !dbg !207
  call void @llvm.dbg.declare(metadata [256 x i8]* %5, metadata !208, metadata !DIExpression()), !dbg !212
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !213
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 256, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0)), !dbg !214
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 255, !dbg !215
  store i8 0, i8* %13, align 1, !dbg !216
  call void @llvm.dbg.declare(metadata i32* %6, metadata !217, metadata !DIExpression()), !dbg !218
  %14 = bitcast i32* %6 to i8*, !dbg !219
  call void @klee_make_symbolic(i8* noundef %14, i64 noundef 4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0)), !dbg !220
  %15 = load i32, i32* %6, align 4, !dbg !221
  %16 = icmp eq i32 %15, 0, !dbg !222
  br i1 %16, label %20, label %17, !dbg !223

17:                                               ; preds = %0
  %18 = load i32, i32* %6, align 4, !dbg !224
  %19 = icmp eq i32 %18, 1, !dbg !225
  br label %20, !dbg !223

20:                                               ; preds = %17, %0
  %21 = phi i1 [ true, %0 ], [ %19, %17 ]
  %22 = zext i1 %21 to i32, !dbg !223
  %23 = sext i32 %22 to i64, !dbg !221
  call void @klee_assume(i64 noundef %23), !dbg !226
  %24 = load i32, i32* %6, align 4, !dbg !227
  %25 = icmp ne i32 %24, 0, !dbg !227
  br i1 %25, label %26, label %28, !dbg !229

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %2, i32 0, i32 2, !dbg !230
  store i8* null, i8** %27, align 8, !dbg !232
  br label %31, !dbg !233

28:                                               ; preds = %20
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !234
  %30 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %2, i32 0, i32 2, !dbg !236
  store i8* %29, i8** %30, align 8, !dbg !237
  br label %31

31:                                               ; preds = %28, %26
  call void @llvm.dbg.declare(metadata %struct._xmlElementContent** %7, metadata !238, metadata !DIExpression()), !dbg !239
  %32 = call %struct._xmlElementContent* @xmlNewElementContent(%struct._xmlElementContent* noundef %2, %struct._xmlDoc* noundef %3), !dbg !240
  store %struct._xmlElementContent* %32, %struct._xmlElementContent** %7, align 8, !dbg !239
  %33 = load %struct._xmlElementContent*, %struct._xmlElementContent** %7, align 8, !dbg !241
  %34 = icmp ne %struct._xmlElementContent* %33, null, !dbg !241
  br i1 %34, label %35, label %47, !dbg !243

35:                                               ; preds = %31
  %36 = load %struct._xmlElementContent*, %struct._xmlElementContent** %7, align 8, !dbg !244
  %37 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %36, i32 0, i32 2, !dbg !247
  %38 = load i8*, i8** %37, align 8, !dbg !247
  %39 = icmp ne i8* %38, null, !dbg !244
  br i1 %39, label %40, label %44, !dbg !248

40:                                               ; preds = %35
  %41 = load %struct._xmlElementContent*, %struct._xmlElementContent** %7, align 8, !dbg !249
  %42 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %41, i32 0, i32 2, !dbg !250
  %43 = load i8*, i8** %42, align 8, !dbg !250
  call void @free(i8* noundef %43) #9, !dbg !251
  br label %44, !dbg !251

44:                                               ; preds = %40, %35
  %45 = load %struct._xmlElementContent*, %struct._xmlElementContent** %7, align 8, !dbg !252
  %46 = bitcast %struct._xmlElementContent* %45 to i8*, !dbg !252
  call void @free(i8* noundef %46) #9, !dbg !253
  br label %47, !dbg !254

47:                                               ; preds = %44, %31
  ret i32 0, !dbg !255
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #7

declare void @klee_assume(i64 noundef) #7

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #8 !dbg !256 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !262, metadata !DIExpression()), !dbg !263
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !264, metadata !DIExpression()), !dbg !265
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !266, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.declare(metadata i8** %7, metadata !268, metadata !DIExpression()), !dbg !269
  %9 = load i8*, i8** %4, align 8, !dbg !270
  store i8* %9, i8** %7, align 8, !dbg !269
  call void @llvm.dbg.declare(metadata i8** %8, metadata !271, metadata !DIExpression()), !dbg !272
  %10 = load i8*, i8** %5, align 8, !dbg !273
  store i8* %10, i8** %8, align 8, !dbg !272
  br label %11, !dbg !274

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !275
  %13 = add i64 %12, -1, !dbg !275
  store i64 %13, i64* %6, align 8, !dbg !275
  %14 = icmp ugt i64 %12, 0, !dbg !276
  br i1 %14, label %15, label %21, !dbg !274

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !277
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !277
  store i8* %17, i8** %8, align 8, !dbg !277
  %18 = load i8, i8* %16, align 1, !dbg !278
  %19 = load i8*, i8** %7, align 8, !dbg !279
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !279
  store i8* %20, i8** %7, align 8, !dbg !279
  store i8 %18, i8* %19, align 1, !dbg !280
  br label %11, !dbg !274, !llvm.loop !281

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !283
  ret i8* %22, !dbg !284
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #8 !dbg !285 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !289, metadata !DIExpression()), !dbg !290
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !291, metadata !DIExpression()), !dbg !292
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !293, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.declare(metadata i8** %7, metadata !295, metadata !DIExpression()), !dbg !296
  %8 = load i8*, i8** %4, align 8, !dbg !297
  store i8* %8, i8** %7, align 8, !dbg !296
  br label %9, !dbg !298

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !299
  %11 = add i64 %10, -1, !dbg !299
  store i64 %11, i64* %6, align 8, !dbg !299
  %12 = icmp ugt i64 %10, 0, !dbg !300
  br i1 %12, label %13, label %18, !dbg !298

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !301
  %15 = trunc i32 %14 to i8, !dbg !301
  %16 = load i8*, i8** %7, align 8, !dbg !302
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !302
  store i8* %17, i8** %7, align 8, !dbg !302
  store i8 %15, i8* %16, align 1, !dbg !303
  br label %9, !dbg !298, !llvm.loop !304

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !305
  ret i8* %19, !dbg !306
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !15, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26, !26, !26}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/253_valid.c_1012_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "9dbf39e3ede59f5f557120726c1a5aac")
!2 = !{!3, !4, !6}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContentPtr", file: !1, line: 13, baseType: !7)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContent", file: !1, line: 12, baseType: !9)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlElementContent", file: !1, line: 24, size: 128, elements: !10)
!10 = !{!11, !13, !14}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !9, file: !1, line: 25, baseType: !12, size: 32)
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "ocur", scope: !9, file: !1, line: 26, baseType: !12, size: 32, offset: 32)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !9, file: !1, line: 27, baseType: !4, size: 64, offset: 64)
!15 = distinct !DICompileUnit(language: DW_LANG_C99, file: !16, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!16 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!17 = distinct !DICompileUnit(language: DW_LANG_C99, file: !18, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!19 = !{i32 7, !"Dwarf Version", i32 5}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{i32 1, !"wchar_size", i32 4}
!22 = !{i32 7, !"PIC Level", i32 2}
!23 = !{i32 7, !"PIE Level", i32 2}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"Ubuntu clang version 14.0.6"}
!27 = distinct !DISubprogram(name: "xmlVErrMemory", scope: !1, file: !1, line: 31, type: !28, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !3, !30}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!32 = !{}
!33 = !DILocalVariable(name: "ctx", arg: 1, scope: !27, file: !1, line: 31, type: !3)
!34 = !DILocation(line: 31, column: 26, scope: !27)
!35 = !DILocalVariable(name: "msg", arg: 2, scope: !27, file: !1, line: 31, type: !30)
!36 = !DILocation(line: 31, column: 43, scope: !27)
!37 = !DILocation(line: 33, column: 1, scope: !27)
!38 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 35, type: !39, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!39 = !DISubroutineType(types: !40)
!40 = !{!3, !41}
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !42, line: 46, baseType: !43)
!42 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!43 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!44 = !DILocalVariable(name: "size", arg: 1, scope: !38, file: !1, line: 35, type: !41)
!45 = !DILocation(line: 35, column: 24, scope: !38)
!46 = !DILocation(line: 36, column: 19, scope: !38)
!47 = !DILocation(line: 36, column: 12, scope: !38)
!48 = !DILocation(line: 36, column: 5, scope: !38)
!49 = distinct !DISubprogram(name: "xmlDictLookup", scope: !1, file: !1, line: 39, type: !50, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!50 = !DISubroutineType(types: !51)
!51 = !{!4, !52, !30, !12}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !1, line: 10, baseType: !54)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !1, line: 16, size: 32, elements: !55)
!55 = !{!56}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !54, file: !1, line: 17, baseType: !12, size: 32)
!57 = !DILocalVariable(name: "dict", arg: 1, scope: !49, file: !1, line: 39, type: !52)
!58 = !DILocation(line: 39, column: 30, scope: !49)
!59 = !DILocalVariable(name: "name", arg: 2, scope: !49, file: !1, line: 39, type: !30)
!60 = !DILocation(line: 39, column: 48, scope: !49)
!61 = !DILocalVariable(name: "len", arg: 3, scope: !49, file: !1, line: 39, type: !12)
!62 = !DILocation(line: 39, column: 58, scope: !49)
!63 = !DILocation(line: 40, column: 9, scope: !64)
!64 = distinct !DILexicalBlock(scope: !49, file: !1, line: 40, column: 9)
!65 = !DILocation(line: 40, column: 14, scope: !64)
!66 = !DILocation(line: 40, column: 9, scope: !49)
!67 = !DILocation(line: 40, column: 23, scope: !64)
!68 = !DILocalVariable(name: "name_len", scope: !49, file: !1, line: 41, type: !41)
!69 = !DILocation(line: 41, column: 12, scope: !49)
!70 = !DILocation(line: 41, column: 30, scope: !49)
!71 = !DILocation(line: 41, column: 23, scope: !49)
!72 = !DILocation(line: 41, column: 36, scope: !49)
!73 = !DILocalVariable(name: "copy", scope: !49, file: !1, line: 42, type: !4)
!74 = !DILocation(line: 42, column: 11, scope: !49)
!75 = !DILocation(line: 42, column: 33, scope: !49)
!76 = !DILocation(line: 42, column: 26, scope: !49)
!77 = !DILocation(line: 43, column: 9, scope: !78)
!78 = distinct !DILexicalBlock(scope: !49, file: !1, line: 43, column: 9)
!79 = !DILocation(line: 43, column: 9, scope: !49)
!80 = !DILocation(line: 43, column: 22, scope: !78)
!81 = !DILocation(line: 43, column: 28, scope: !78)
!82 = !DILocation(line: 43, column: 34, scope: !78)
!83 = !DILocation(line: 43, column: 15, scope: !78)
!84 = !DILocation(line: 44, column: 12, scope: !49)
!85 = !DILocation(line: 44, column: 5, scope: !49)
!86 = !DILocation(line: 45, column: 1, scope: !49)
!87 = distinct !DISubprogram(name: "xmlStrdup", scope: !1, file: !1, line: 47, type: !88, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!88 = !DISubroutineType(types: !89)
!89 = !{!4, !30}
!90 = !DILocalVariable(name: "cur", arg: 1, scope: !87, file: !1, line: 47, type: !30)
!91 = !DILocation(line: 47, column: 29, scope: !87)
!92 = !DILocation(line: 48, column: 9, scope: !93)
!93 = distinct !DILexicalBlock(scope: !87, file: !1, line: 48, column: 9)
!94 = !DILocation(line: 48, column: 13, scope: !93)
!95 = !DILocation(line: 48, column: 9, scope: !87)
!96 = !DILocation(line: 48, column: 22, scope: !93)
!97 = !DILocalVariable(name: "len", scope: !87, file: !1, line: 49, type: !41)
!98 = !DILocation(line: 49, column: 12, scope: !87)
!99 = !DILocation(line: 49, column: 25, scope: !87)
!100 = !DILocation(line: 49, column: 18, scope: !87)
!101 = !DILocation(line: 49, column: 30, scope: !87)
!102 = !DILocalVariable(name: "copy", scope: !87, file: !1, line: 50, type: !4)
!103 = !DILocation(line: 50, column: 11, scope: !87)
!104 = !DILocation(line: 50, column: 33, scope: !87)
!105 = !DILocation(line: 50, column: 26, scope: !87)
!106 = !DILocation(line: 51, column: 9, scope: !107)
!107 = distinct !DILexicalBlock(scope: !87, file: !1, line: 51, column: 9)
!108 = !DILocation(line: 51, column: 9, scope: !87)
!109 = !DILocation(line: 51, column: 22, scope: !107)
!110 = !DILocation(line: 51, column: 28, scope: !107)
!111 = !DILocation(line: 51, column: 33, scope: !107)
!112 = !DILocation(line: 51, column: 15, scope: !107)
!113 = !DILocation(line: 52, column: 12, scope: !87)
!114 = !DILocation(line: 52, column: 5, scope: !87)
!115 = !DILocation(line: 53, column: 1, scope: !87)
!116 = distinct !DISubprogram(name: "xmlNewElementContent", scope: !1, file: !1, line: 59, type: !117, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!117 = !DISubroutineType(types: !118)
!118 = !{!6, !119, !121}
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !1, line: 11, baseType: !123)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !1, line: 20, size: 64, elements: !124)
!124 = !{!125}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !123, file: !1, line: 21, baseType: !52, size: 64)
!126 = !DILocalVariable(name: "cur", arg: 1, scope: !116, file: !1, line: 59, type: !119)
!127 = !DILocation(line: 59, column: 68, scope: !116)
!128 = !DILocalVariable(name: "doc", arg: 2, scope: !116, file: !1, line: 59, type: !121)
!129 = !DILocation(line: 59, column: 81, scope: !116)
!130 = !DILocalVariable(name: "ret", scope: !116, file: !1, line: 60, type: !6)
!131 = !DILocation(line: 60, column: 26, scope: !116)
!132 = !DILocalVariable(name: "dict", scope: !116, file: !1, line: 61, type: !52)
!133 = !DILocation(line: 61, column: 14, scope: !116)
!134 = !DILocation(line: 63, column: 9, scope: !135)
!135 = distinct !DILexicalBlock(scope: !116, file: !1, line: 63, column: 9)
!136 = !DILocation(line: 63, column: 13, scope: !135)
!137 = !DILocation(line: 63, column: 9, scope: !116)
!138 = !DILocation(line: 64, column: 16, scope: !135)
!139 = !DILocation(line: 64, column: 21, scope: !135)
!140 = !DILocation(line: 64, column: 14, scope: !135)
!141 = !DILocation(line: 64, column: 9, scope: !135)
!142 = !DILocation(line: 66, column: 34, scope: !116)
!143 = !DILocation(line: 66, column: 11, scope: !116)
!144 = !DILocation(line: 66, column: 9, scope: !116)
!145 = !DILocation(line: 67, column: 9, scope: !146)
!146 = distinct !DILexicalBlock(scope: !116, file: !1, line: 67, column: 9)
!147 = !DILocation(line: 67, column: 13, scope: !146)
!148 = !DILocation(line: 67, column: 9, scope: !116)
!149 = !DILocation(line: 68, column: 9, scope: !150)
!150 = distinct !DILexicalBlock(scope: !146, file: !1, line: 67, column: 22)
!151 = !DILocation(line: 69, column: 9, scope: !150)
!152 = !DILocation(line: 77, column: 5, scope: !116)
!153 = !DILocation(line: 79, column: 12, scope: !116)
!154 = !DILocation(line: 79, column: 5, scope: !116)
!155 = !DILocation(line: 80, column: 17, scope: !116)
!156 = !DILocation(line: 80, column: 22, scope: !116)
!157 = !DILocation(line: 80, column: 5, scope: !116)
!158 = !DILocation(line: 80, column: 10, scope: !116)
!159 = !DILocation(line: 80, column: 15, scope: !116)
!160 = !DILocation(line: 81, column: 17, scope: !116)
!161 = !DILocation(line: 81, column: 22, scope: !116)
!162 = !DILocation(line: 81, column: 5, scope: !116)
!163 = !DILocation(line: 81, column: 10, scope: !116)
!164 = !DILocation(line: 81, column: 15, scope: !116)
!165 = !DILocation(line: 82, column: 9, scope: !166)
!166 = distinct !DILexicalBlock(scope: !116, file: !1, line: 82, column: 9)
!167 = !DILocation(line: 82, column: 14, scope: !166)
!168 = !DILocation(line: 82, column: 19, scope: !166)
!169 = !DILocation(line: 82, column: 9, scope: !116)
!170 = !DILocation(line: 83, column: 13, scope: !171)
!171 = distinct !DILexicalBlock(scope: !172, file: !1, line: 83, column: 13)
!172 = distinct !DILexicalBlock(scope: !166, file: !1, line: 82, column: 28)
!173 = !DILocation(line: 83, column: 13, scope: !172)
!174 = !DILocation(line: 84, column: 39, scope: !171)
!175 = !DILocation(line: 84, column: 45, scope: !171)
!176 = !DILocation(line: 84, column: 50, scope: !171)
!177 = !DILocation(line: 84, column: 25, scope: !171)
!178 = !DILocation(line: 84, column: 13, scope: !171)
!179 = !DILocation(line: 84, column: 18, scope: !171)
!180 = !DILocation(line: 84, column: 23, scope: !171)
!181 = !DILocation(line: 86, column: 35, scope: !171)
!182 = !DILocation(line: 86, column: 40, scope: !171)
!183 = !DILocation(line: 86, column: 25, scope: !171)
!184 = !DILocation(line: 86, column: 13, scope: !171)
!185 = !DILocation(line: 86, column: 18, scope: !171)
!186 = !DILocation(line: 86, column: 23, scope: !171)
!187 = !DILocation(line: 87, column: 5, scope: !172)
!188 = !DILocation(line: 89, column: 12, scope: !116)
!189 = !DILocation(line: 89, column: 5, scope: !116)
!190 = !DILocation(line: 90, column: 1, scope: !116)
!191 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 92, type: !192, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!192 = !DISubroutineType(types: !193)
!193 = !{!12}
!194 = !DILocalVariable(name: "cur", scope: !191, file: !1, line: 94, type: !8)
!195 = !DILocation(line: 94, column: 23, scope: !191)
!196 = !DILocalVariable(name: "doc", scope: !191, file: !1, line: 95, type: !122)
!197 = !DILocation(line: 95, column: 12, scope: !191)
!198 = !DILocalVariable(name: "dict", scope: !191, file: !1, line: 96, type: !53)
!199 = !DILocation(line: 96, column: 13, scope: !191)
!200 = !DILocation(line: 99, column: 24, scope: !191)
!201 = !DILocation(line: 99, column: 5, scope: !191)
!202 = !DILocation(line: 100, column: 24, scope: !191)
!203 = !DILocation(line: 100, column: 5, scope: !191)
!204 = !DILocation(line: 103, column: 9, scope: !191)
!205 = !DILocation(line: 103, column: 14, scope: !191)
!206 = !DILocation(line: 106, column: 24, scope: !191)
!207 = !DILocation(line: 106, column: 5, scope: !191)
!208 = !DILocalVariable(name: "name_buffer", scope: !191, file: !1, line: 109, type: !209)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 2048, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 256)
!212 = !DILocation(line: 109, column: 10, scope: !191)
!213 = !DILocation(line: 110, column: 24, scope: !191)
!214 = !DILocation(line: 110, column: 5, scope: !191)
!215 = !DILocation(line: 111, column: 5, scope: !191)
!216 = !DILocation(line: 111, column: 22, scope: !191)
!217 = !DILocalVariable(name: "name_is_null", scope: !191, file: !1, line: 114, type: !12)
!218 = !DILocation(line: 114, column: 9, scope: !191)
!219 = !DILocation(line: 115, column: 24, scope: !191)
!220 = !DILocation(line: 115, column: 5, scope: !191)
!221 = !DILocation(line: 116, column: 17, scope: !191)
!222 = !DILocation(line: 116, column: 30, scope: !191)
!223 = !DILocation(line: 116, column: 35, scope: !191)
!224 = !DILocation(line: 116, column: 38, scope: !191)
!225 = !DILocation(line: 116, column: 51, scope: !191)
!226 = !DILocation(line: 116, column: 5, scope: !191)
!227 = !DILocation(line: 118, column: 9, scope: !228)
!228 = distinct !DILexicalBlock(scope: !191, file: !1, line: 118, column: 9)
!229 = !DILocation(line: 118, column: 9, scope: !191)
!230 = !DILocation(line: 119, column: 13, scope: !231)
!231 = distinct !DILexicalBlock(scope: !228, file: !1, line: 118, column: 23)
!232 = !DILocation(line: 119, column: 18, scope: !231)
!233 = !DILocation(line: 120, column: 5, scope: !231)
!234 = !DILocation(line: 121, column: 20, scope: !235)
!235 = distinct !DILexicalBlock(scope: !228, file: !1, line: 120, column: 12)
!236 = !DILocation(line: 121, column: 13, scope: !235)
!237 = !DILocation(line: 121, column: 18, scope: !235)
!238 = !DILocalVariable(name: "result", scope: !191, file: !1, line: 125, type: !6)
!239 = !DILocation(line: 125, column: 26, scope: !191)
!240 = !DILocation(line: 125, column: 35, scope: !191)
!241 = !DILocation(line: 128, column: 9, scope: !242)
!242 = distinct !DILexicalBlock(scope: !191, file: !1, line: 128, column: 9)
!243 = !DILocation(line: 128, column: 9, scope: !191)
!244 = !DILocation(line: 129, column: 13, scope: !245)
!245 = distinct !DILexicalBlock(scope: !246, file: !1, line: 129, column: 13)
!246 = distinct !DILexicalBlock(scope: !242, file: !1, line: 128, column: 17)
!247 = !DILocation(line: 129, column: 21, scope: !245)
!248 = !DILocation(line: 129, column: 13, scope: !246)
!249 = !DILocation(line: 129, column: 32, scope: !245)
!250 = !DILocation(line: 129, column: 40, scope: !245)
!251 = !DILocation(line: 129, column: 27, scope: !245)
!252 = !DILocation(line: 130, column: 14, scope: !246)
!253 = !DILocation(line: 130, column: 9, scope: !246)
!254 = !DILocation(line: 131, column: 5, scope: !246)
!255 = !DILocation(line: 133, column: 5, scope: !191)
!256 = distinct !DISubprogram(name: "memcpy", scope: !257, file: !257, line: 12, type: !258, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !32)
!257 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!258 = !DISubroutineType(types: !259)
!259 = !{!3, !3, !260, !41}
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!262 = !DILocalVariable(name: "destaddr", arg: 1, scope: !256, file: !257, line: 12, type: !3)
!263 = !DILocation(line: 12, column: 20, scope: !256)
!264 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !256, file: !257, line: 12, type: !260)
!265 = !DILocation(line: 12, column: 42, scope: !256)
!266 = !DILocalVariable(name: "len", arg: 3, scope: !256, file: !257, line: 12, type: !41)
!267 = !DILocation(line: 12, column: 58, scope: !256)
!268 = !DILocalVariable(name: "dest", scope: !256, file: !257, line: 13, type: !4)
!269 = !DILocation(line: 13, column: 9, scope: !256)
!270 = !DILocation(line: 13, column: 16, scope: !256)
!271 = !DILocalVariable(name: "src", scope: !256, file: !257, line: 14, type: !30)
!272 = !DILocation(line: 14, column: 15, scope: !256)
!273 = !DILocation(line: 14, column: 21, scope: !256)
!274 = !DILocation(line: 16, column: 3, scope: !256)
!275 = !DILocation(line: 16, column: 13, scope: !256)
!276 = !DILocation(line: 16, column: 16, scope: !256)
!277 = !DILocation(line: 17, column: 19, scope: !256)
!278 = !DILocation(line: 17, column: 15, scope: !256)
!279 = !DILocation(line: 17, column: 10, scope: !256)
!280 = !DILocation(line: 17, column: 13, scope: !256)
!281 = distinct !{!281, !274, !277, !282}
!282 = !{!"llvm.loop.mustprogress"}
!283 = !DILocation(line: 18, column: 10, scope: !256)
!284 = !DILocation(line: 18, column: 3, scope: !256)
!285 = distinct !DISubprogram(name: "memset", scope: !286, file: !286, line: 12, type: !287, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !32)
!286 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!287 = !DISubroutineType(types: !288)
!288 = !{!3, !3, !12, !41}
!289 = !DILocalVariable(name: "dst", arg: 1, scope: !285, file: !286, line: 12, type: !3)
!290 = !DILocation(line: 12, column: 20, scope: !285)
!291 = !DILocalVariable(name: "s", arg: 2, scope: !285, file: !286, line: 12, type: !12)
!292 = !DILocation(line: 12, column: 29, scope: !285)
!293 = !DILocalVariable(name: "count", arg: 3, scope: !285, file: !286, line: 12, type: !41)
!294 = !DILocation(line: 12, column: 39, scope: !285)
!295 = !DILocalVariable(name: "a", scope: !285, file: !286, line: 13, type: !4)
!296 = !DILocation(line: 13, column: 9, scope: !285)
!297 = !DILocation(line: 13, column: 13, scope: !285)
!298 = !DILocation(line: 14, column: 3, scope: !285)
!299 = !DILocation(line: 14, column: 15, scope: !285)
!300 = !DILocation(line: 14, column: 18, scope: !285)
!301 = !DILocation(line: 15, column: 12, scope: !285)
!302 = !DILocation(line: 15, column: 7, scope: !285)
!303 = !DILocation(line: 15, column: 10, scope: !285)
!304 = distinct !{!304, !298, !301, !282}
!305 = !DILocation(line: 16, column: 10, scope: !285)
!306 = !DILocation(line: 16, column: 3, scope: !285)

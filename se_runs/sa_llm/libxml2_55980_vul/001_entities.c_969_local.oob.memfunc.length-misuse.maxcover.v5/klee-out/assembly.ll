; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/001_entities.c_969_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/001_entities.c_969_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlEntity = type { i32, i32, i8*, i8*, i8* }

@.str = private unnamed_addr constant [30 x i8] c"xmlCopyEntity:: malloc failed\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_55980_vul/001_entities.c_969_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlCopyEntity = private unnamed_addr constant [41 x i8] c"xmlEntityPtr xmlCopyEntity(xmlEntityPtr)\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"ent.etype\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"ent.name\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"ent.ExternalID\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"ent.SystemID\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlEntitiesErrMemory(i8* noundef %0) #0 !dbg !34 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !40, metadata !DIExpression()), !dbg !41
  ret void, !dbg !42
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !43 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !49, metadata !DIExpression()), !dbg !50
  %3 = load i64, i64* %2, align 8, !dbg !51
  %4 = call noalias i8* @malloc(i64 noundef %3) #9, !dbg !52
  ret i8* %4, !dbg !53
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlStrdup(i8* noundef %0) #0 !dbg !54 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !57, metadata !DIExpression()), !dbg !58
  %6 = load i8*, i8** %3, align 8, !dbg !59
  %7 = icmp eq i8* %6, null, !dbg !61
  br i1 %7, label %8, label %9, !dbg !62

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !63
  br label %24, !dbg !63

9:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata i64* %4, metadata !64, metadata !DIExpression()), !dbg !65
  %10 = load i8*, i8** %3, align 8, !dbg !66
  %11 = call i64 @strlen(i8* noundef %10) #10, !dbg !67
  %12 = add i64 %11, 1, !dbg !68
  store i64 %12, i64* %4, align 8, !dbg !65
  call void @llvm.dbg.declare(metadata i8** %5, metadata !69, metadata !DIExpression()), !dbg !70
  %13 = load i64, i64* %4, align 8, !dbg !71
  %14 = call noalias i8* @malloc(i64 noundef %13) #9, !dbg !72
  store i8* %14, i8** %5, align 8, !dbg !70
  %15 = load i8*, i8** %5, align 8, !dbg !73
  %16 = icmp ne i8* %15, null, !dbg !73
  br i1 %16, label %17, label %22, !dbg !75

17:                                               ; preds = %9
  %18 = load i8*, i8** %5, align 8, !dbg !76
  %19 = load i8*, i8** %3, align 8, !dbg !77
  %20 = load i64, i64* %4, align 8, !dbg !78
  %21 = call i8* @memcpy(i8* %18, i8* %19, i64 %20), !dbg !79
  br label %22, !dbg !79

22:                                               ; preds = %17, %9
  %23 = load i8*, i8** %5, align 8, !dbg !80
  store i8* %23, i8** %2, align 8, !dbg !81
  br label %24, !dbg !81

24:                                               ; preds = %22, %8
  %25 = load i8*, i8** %2, align 8, !dbg !82
  ret i8* %25, !dbg !82
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlEntity* @xmlCopyEntity(%struct._xmlEntity* noundef %0) #0 !dbg !83 {
  %2 = alloca %struct._xmlEntity*, align 8
  %3 = alloca %struct._xmlEntity*, align 8
  %4 = alloca %struct._xmlEntity*, align 8
  store %struct._xmlEntity* %0, %struct._xmlEntity** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlEntity** %3, metadata !86, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.declare(metadata %struct._xmlEntity** %4, metadata !88, metadata !DIExpression()), !dbg !89
  %5 = call i8* @xmlMalloc(i64 noundef 32), !dbg !90
  %6 = bitcast i8* %5 to %struct._xmlEntity*, !dbg !91
  store %struct._xmlEntity* %6, %struct._xmlEntity** %4, align 8, !dbg !92
  %7 = load %struct._xmlEntity*, %struct._xmlEntity** %4, align 8, !dbg !93
  %8 = icmp eq %struct._xmlEntity* %7, null, !dbg !95
  br i1 %8, label %9, label %10, !dbg !96

9:                                                ; preds = %1
  call void @xmlEntitiesErrMemory(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0)), !dbg !97
  store %struct._xmlEntity* null, %struct._xmlEntity** %2, align 8, !dbg !99
  br label %59, !dbg !99

10:                                               ; preds = %1
  %11 = load %struct._xmlEntity*, %struct._xmlEntity** %4, align 8, !dbg !100
  %12 = bitcast %struct._xmlEntity* %11 to i8*, !dbg !101
  %13 = call i8* @memset(i8* %12, i32 0, i64 32), !dbg !101
  %14 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.2, i64 0, i64 0), i32 noundef 60, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.xmlCopyEntity, i64 0, i64 0)), !dbg !102
  %15 = load %struct._xmlEntity*, %struct._xmlEntity** %4, align 8, !dbg !103
  %16 = getelementptr inbounds %struct._xmlEntity, %struct._xmlEntity* %15, i32 0, i32 0, !dbg !104
  store i32 0, i32* %16, align 8, !dbg !105
  %17 = load %struct._xmlEntity*, %struct._xmlEntity** %3, align 8, !dbg !106
  %18 = getelementptr inbounds %struct._xmlEntity, %struct._xmlEntity* %17, i32 0, i32 1, !dbg !107
  %19 = load i32, i32* %18, align 4, !dbg !107
  %20 = load %struct._xmlEntity*, %struct._xmlEntity** %4, align 8, !dbg !108
  %21 = getelementptr inbounds %struct._xmlEntity, %struct._xmlEntity* %20, i32 0, i32 1, !dbg !109
  store i32 %19, i32* %21, align 4, !dbg !110
  %22 = load %struct._xmlEntity*, %struct._xmlEntity** %3, align 8, !dbg !111
  %23 = getelementptr inbounds %struct._xmlEntity, %struct._xmlEntity* %22, i32 0, i32 2, !dbg !113
  %24 = load i8*, i8** %23, align 8, !dbg !113
  %25 = icmp ne i8* %24, null, !dbg !114
  br i1 %25, label %26, label %33, !dbg !115

26:                                               ; preds = %10
  %27 = load %struct._xmlEntity*, %struct._xmlEntity** %3, align 8, !dbg !116
  %28 = getelementptr inbounds %struct._xmlEntity, %struct._xmlEntity* %27, i32 0, i32 2, !dbg !117
  %29 = load i8*, i8** %28, align 8, !dbg !117
  %30 = call i8* @xmlStrdup(i8* noundef %29), !dbg !118
  %31 = load %struct._xmlEntity*, %struct._xmlEntity** %4, align 8, !dbg !119
  %32 = getelementptr inbounds %struct._xmlEntity, %struct._xmlEntity* %31, i32 0, i32 2, !dbg !120
  store i8* %30, i8** %32, align 8, !dbg !121
  br label %33, !dbg !119

33:                                               ; preds = %26, %10
  %34 = load %struct._xmlEntity*, %struct._xmlEntity** %3, align 8, !dbg !122
  %35 = getelementptr inbounds %struct._xmlEntity, %struct._xmlEntity* %34, i32 0, i32 3, !dbg !124
  %36 = load i8*, i8** %35, align 8, !dbg !124
  %37 = icmp ne i8* %36, null, !dbg !125
  br i1 %37, label %38, label %45, !dbg !126

38:                                               ; preds = %33
  %39 = load %struct._xmlEntity*, %struct._xmlEntity** %3, align 8, !dbg !127
  %40 = getelementptr inbounds %struct._xmlEntity, %struct._xmlEntity* %39, i32 0, i32 3, !dbg !128
  %41 = load i8*, i8** %40, align 8, !dbg !128
  %42 = call i8* @xmlStrdup(i8* noundef %41), !dbg !129
  %43 = load %struct._xmlEntity*, %struct._xmlEntity** %4, align 8, !dbg !130
  %44 = getelementptr inbounds %struct._xmlEntity, %struct._xmlEntity* %43, i32 0, i32 3, !dbg !131
  store i8* %42, i8** %44, align 8, !dbg !132
  br label %45, !dbg !130

45:                                               ; preds = %38, %33
  %46 = load %struct._xmlEntity*, %struct._xmlEntity** %3, align 8, !dbg !133
  %47 = getelementptr inbounds %struct._xmlEntity, %struct._xmlEntity* %46, i32 0, i32 4, !dbg !135
  %48 = load i8*, i8** %47, align 8, !dbg !135
  %49 = icmp ne i8* %48, null, !dbg !136
  br i1 %49, label %50, label %57, !dbg !137

50:                                               ; preds = %45
  %51 = load %struct._xmlEntity*, %struct._xmlEntity** %3, align 8, !dbg !138
  %52 = getelementptr inbounds %struct._xmlEntity, %struct._xmlEntity* %51, i32 0, i32 4, !dbg !139
  %53 = load i8*, i8** %52, align 8, !dbg !139
  %54 = call i8* @xmlStrdup(i8* noundef %53), !dbg !140
  %55 = load %struct._xmlEntity*, %struct._xmlEntity** %4, align 8, !dbg !141
  %56 = getelementptr inbounds %struct._xmlEntity, %struct._xmlEntity* %55, i32 0, i32 4, !dbg !142
  store i8* %54, i8** %56, align 8, !dbg !143
  br label %57, !dbg !141

57:                                               ; preds = %50, %45
  %58 = load %struct._xmlEntity*, %struct._xmlEntity** %4, align 8, !dbg !144
  store %struct._xmlEntity* %58, %struct._xmlEntity** %2, align 8, !dbg !145
  br label %59, !dbg !145

59:                                               ; preds = %57, %9
  %60 = load %struct._xmlEntity*, %struct._xmlEntity** %2, align 8, !dbg !146
  ret %struct._xmlEntity* %60, !dbg !146
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !147 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlEntity, align 8
  %3 = alloca %struct._xmlEntity*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlEntity* %2, metadata !150, metadata !DIExpression()), !dbg !151
  %4 = getelementptr inbounds %struct._xmlEntity, %struct._xmlEntity* %2, i32 0, i32 1, !dbg !152
  %5 = bitcast i32* %4 to i8*, !dbg !153
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)), !dbg !154
  %6 = getelementptr inbounds %struct._xmlEntity, %struct._xmlEntity* %2, i32 0, i32 2, !dbg !155
  %7 = bitcast i8** %6 to i8*, !dbg !156
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)), !dbg !157
  %8 = getelementptr inbounds %struct._xmlEntity, %struct._xmlEntity* %2, i32 0, i32 3, !dbg !158
  %9 = bitcast i8** %8 to i8*, !dbg !159
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 8, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0)), !dbg !160
  %10 = getelementptr inbounds %struct._xmlEntity, %struct._xmlEntity* %2, i32 0, i32 4, !dbg !161
  %11 = bitcast i8** %10 to i8*, !dbg !162
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 8, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0)), !dbg !163
  %12 = getelementptr inbounds %struct._xmlEntity, %struct._xmlEntity* %2, i32 0, i32 2, !dbg !164
  %13 = load i8*, i8** %12, align 8, !dbg !164
  %14 = icmp eq i8* %13, null, !dbg !165
  br i1 %14, label %25, label %15, !dbg !166

15:                                               ; preds = %0
  %16 = getelementptr inbounds %struct._xmlEntity, %struct._xmlEntity* %2, i32 0, i32 2, !dbg !167
  %17 = load i8*, i8** %16, align 8, !dbg !167
  %18 = icmp ne i8* %17, null, !dbg !168
  br i1 %18, label %19, label %23, !dbg !169

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct._xmlEntity, %struct._xmlEntity* %2, i32 0, i32 2, !dbg !170
  %21 = load i8*, i8** %20, align 8, !dbg !170
  %22 = icmp ult i8* %21, inttoptr (i64 4294967295 to i8*), !dbg !171
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi i1 [ false, %15 ], [ %22, %19 ], !dbg !172
  br label %25, !dbg !166

25:                                               ; preds = %23, %0
  %26 = phi i1 [ true, %0 ], [ %24, %23 ]
  %27 = zext i1 %26 to i32, !dbg !166
  %28 = sext i32 %27 to i64, !dbg !173
  call void @klee_assume(i64 noundef %28), !dbg !174
  %29 = getelementptr inbounds %struct._xmlEntity, %struct._xmlEntity* %2, i32 0, i32 3, !dbg !175
  %30 = load i8*, i8** %29, align 8, !dbg !175
  %31 = icmp eq i8* %30, null, !dbg !176
  br i1 %31, label %42, label %32, !dbg !177

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct._xmlEntity, %struct._xmlEntity* %2, i32 0, i32 3, !dbg !178
  %34 = load i8*, i8** %33, align 8, !dbg !178
  %35 = icmp ne i8* %34, null, !dbg !179
  br i1 %35, label %36, label %40, !dbg !180

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct._xmlEntity, %struct._xmlEntity* %2, i32 0, i32 3, !dbg !181
  %38 = load i8*, i8** %37, align 8, !dbg !181
  %39 = icmp ult i8* %38, inttoptr (i64 4294967295 to i8*), !dbg !182
  br label %40

40:                                               ; preds = %36, %32
  %41 = phi i1 [ false, %32 ], [ %39, %36 ], !dbg !172
  br label %42, !dbg !177

42:                                               ; preds = %40, %25
  %43 = phi i1 [ true, %25 ], [ %41, %40 ]
  %44 = zext i1 %43 to i32, !dbg !177
  %45 = sext i32 %44 to i64, !dbg !183
  call void @klee_assume(i64 noundef %45), !dbg !184
  %46 = getelementptr inbounds %struct._xmlEntity, %struct._xmlEntity* %2, i32 0, i32 4, !dbg !185
  %47 = load i8*, i8** %46, align 8, !dbg !185
  %48 = icmp eq i8* %47, null, !dbg !186
  br i1 %48, label %59, label %49, !dbg !187

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct._xmlEntity, %struct._xmlEntity* %2, i32 0, i32 4, !dbg !188
  %51 = load i8*, i8** %50, align 8, !dbg !188
  %52 = icmp ne i8* %51, null, !dbg !189
  br i1 %52, label %53, label %57, !dbg !190

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct._xmlEntity, %struct._xmlEntity* %2, i32 0, i32 4, !dbg !191
  %55 = load i8*, i8** %54, align 8, !dbg !191
  %56 = icmp ult i8* %55, inttoptr (i64 4294967295 to i8*), !dbg !192
  br label %57

57:                                               ; preds = %53, %49
  %58 = phi i1 [ false, %49 ], [ %56, %53 ], !dbg !172
  br label %59, !dbg !187

59:                                               ; preds = %57, %42
  %60 = phi i1 [ true, %42 ], [ %58, %57 ]
  %61 = zext i1 %60 to i32, !dbg !187
  %62 = sext i32 %61 to i64, !dbg !193
  call void @klee_assume(i64 noundef %62), !dbg !194
  call void @llvm.dbg.declare(metadata %struct._xmlEntity** %3, metadata !195, metadata !DIExpression()), !dbg !196
  %63 = call %struct._xmlEntity* @xmlCopyEntity(%struct._xmlEntity* noundef %2), !dbg !197
  store %struct._xmlEntity* %63, %struct._xmlEntity** %3, align 8, !dbg !196
  %64 = load %struct._xmlEntity*, %struct._xmlEntity** %3, align 8, !dbg !198
  %65 = icmp ne %struct._xmlEntity* %64, null, !dbg !198
  br i1 %65, label %66, label %78, !dbg !200

66:                                               ; preds = %59
  %67 = load %struct._xmlEntity*, %struct._xmlEntity** %3, align 8, !dbg !201
  %68 = getelementptr inbounds %struct._xmlEntity, %struct._xmlEntity* %67, i32 0, i32 2, !dbg !203
  %69 = load i8*, i8** %68, align 8, !dbg !203
  call void @free(i8* noundef %69) #9, !dbg !204
  %70 = load %struct._xmlEntity*, %struct._xmlEntity** %3, align 8, !dbg !205
  %71 = getelementptr inbounds %struct._xmlEntity, %struct._xmlEntity* %70, i32 0, i32 3, !dbg !206
  %72 = load i8*, i8** %71, align 8, !dbg !206
  call void @free(i8* noundef %72) #9, !dbg !207
  %73 = load %struct._xmlEntity*, %struct._xmlEntity** %3, align 8, !dbg !208
  %74 = getelementptr inbounds %struct._xmlEntity, %struct._xmlEntity* %73, i32 0, i32 4, !dbg !209
  %75 = load i8*, i8** %74, align 8, !dbg !209
  call void @free(i8* noundef %75) #9, !dbg !210
  %76 = load %struct._xmlEntity*, %struct._xmlEntity** %3, align 8, !dbg !211
  %77 = bitcast %struct._xmlEntity* %76 to i8*, !dbg !211
  call void @free(i8* noundef %77) #9, !dbg !212
  br label %78, !dbg !213

78:                                               ; preds = %66, %59
  ret i32 0, !dbg !214
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #7

declare void @klee_assume(i64 noundef) #7

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #8 !dbg !215 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !221, metadata !DIExpression()), !dbg !222
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !223, metadata !DIExpression()), !dbg !224
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !225, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.declare(metadata i8** %7, metadata !227, metadata !DIExpression()), !dbg !228
  %9 = load i8*, i8** %4, align 8, !dbg !229
  store i8* %9, i8** %7, align 8, !dbg !228
  call void @llvm.dbg.declare(metadata i8** %8, metadata !230, metadata !DIExpression()), !dbg !231
  %10 = load i8*, i8** %5, align 8, !dbg !232
  store i8* %10, i8** %8, align 8, !dbg !231
  br label %11, !dbg !233

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !234
  %13 = add i64 %12, -1, !dbg !234
  store i64 %13, i64* %6, align 8, !dbg !234
  %14 = icmp ugt i64 %12, 0, !dbg !235
  br i1 %14, label %15, label %21, !dbg !233

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !236
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !236
  store i8* %17, i8** %8, align 8, !dbg !236
  %18 = load i8, i8* %16, align 1, !dbg !237
  %19 = load i8*, i8** %7, align 8, !dbg !238
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !238
  store i8* %20, i8** %7, align 8, !dbg !238
  store i8 %18, i8* %19, align 1, !dbg !239
  br label %11, !dbg !233, !llvm.loop !240

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !242
  ret i8* %22, !dbg !243
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #8 !dbg !244 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !248, metadata !DIExpression()), !dbg !249
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !250, metadata !DIExpression()), !dbg !251
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !252, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.declare(metadata i8** %7, metadata !254, metadata !DIExpression()), !dbg !255
  %8 = load i8*, i8** %4, align 8, !dbg !256
  store i8* %8, i8** %7, align 8, !dbg !255
  br label %9, !dbg !257

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !258
  %11 = add i64 %10, -1, !dbg !258
  store i64 %11, i64* %6, align 8, !dbg !258
  %12 = icmp ugt i64 %10, 0, !dbg !259
  br i1 %12, label %13, label %18, !dbg !257

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !260
  %15 = trunc i32 %14 to i8, !dbg !260
  %16 = load i8*, i8** %7, align 8, !dbg !261
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !261
  store i8* %17, i8** %7, align 8, !dbg !261
  store i8 %15, i8* %16, align 1, !dbg !262
  br label %9, !dbg !257, !llvm.loop !263

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !264
  ret i8* %19, !dbg !265
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

!llvm.dbg.cu = !{!0, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33, !33, !33}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !7, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/001_entities.c_969_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "c18d1c28d816fccf1735acce25463964")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 13, baseType: !4, size: 32, elements: !5)
!4 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!5 = !{!6}
!6 = !DIEnumerator(name: "XML_ENTITY_DECL", value: 0)
!7 = !{!8, !9, !11}
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEntityPtr", file: !1, line: 11, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEntity", file: !1, line: 10, baseType: !14)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlEntity", file: !1, line: 17, size: 256, elements: !15)
!15 = !{!16, !18, !19, !20, !21}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !14, file: !1, line: 18, baseType: !17, size: 32)
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "etype", scope: !14, file: !1, line: 19, baseType: !17, size: 32, offset: 32)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !14, file: !1, line: 20, baseType: !9, size: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !14, file: !1, line: 21, baseType: !9, size: 64, offset: 128)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !14, file: !1, line: 22, baseType: !9, size: 64, offset: 192)
!22 = distinct !DICompileUnit(language: DW_LANG_C99, file: !23, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!23 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!24 = distinct !DICompileUnit(language: DW_LANG_C99, file: !25, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!25 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!26 = !{i32 7, !"Dwarf Version", i32 5}
!27 = !{i32 2, !"Debug Info Version", i32 3}
!28 = !{i32 1, !"wchar_size", i32 4}
!29 = !{i32 7, !"PIC Level", i32 2}
!30 = !{i32 7, !"PIE Level", i32 2}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"Ubuntu clang version 14.0.6"}
!34 = distinct !DISubprogram(name: "xmlEntitiesErrMemory", scope: !1, file: !1, line: 27, type: !35, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !39)
!35 = !DISubroutineType(types: !36)
!36 = !{null, !37}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!39 = !{}
!40 = !DILocalVariable(name: "msg", arg: 1, scope: !34, file: !1, line: 27, type: !37)
!41 = !DILocation(line: 27, column: 39, scope: !34)
!42 = !DILocation(line: 29, column: 1, scope: !34)
!43 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 31, type: !44, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !39)
!44 = !DISubroutineType(types: !45)
!45 = !{!8, !46}
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !47, line: 46, baseType: !48)
!47 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!48 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!49 = !DILocalVariable(name: "size", arg: 1, scope: !43, file: !1, line: 31, type: !46)
!50 = !DILocation(line: 31, column: 24, scope: !43)
!51 = !DILocation(line: 32, column: 19, scope: !43)
!52 = !DILocation(line: 32, column: 12, scope: !43)
!53 = !DILocation(line: 32, column: 5, scope: !43)
!54 = distinct !DISubprogram(name: "xmlStrdup", scope: !1, file: !1, line: 35, type: !55, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !39)
!55 = !DISubroutineType(types: !56)
!56 = !{!9, !37}
!57 = !DILocalVariable(name: "str", arg: 1, scope: !54, file: !1, line: 35, type: !37)
!58 = !DILocation(line: 35, column: 29, scope: !54)
!59 = !DILocation(line: 36, column: 9, scope: !60)
!60 = distinct !DILexicalBlock(scope: !54, file: !1, line: 36, column: 9)
!61 = !DILocation(line: 36, column: 13, scope: !60)
!62 = !DILocation(line: 36, column: 9, scope: !54)
!63 = !DILocation(line: 36, column: 22, scope: !60)
!64 = !DILocalVariable(name: "len", scope: !54, file: !1, line: 37, type: !46)
!65 = !DILocation(line: 37, column: 12, scope: !54)
!66 = !DILocation(line: 37, column: 25, scope: !54)
!67 = !DILocation(line: 37, column: 18, scope: !54)
!68 = !DILocation(line: 37, column: 30, scope: !54)
!69 = !DILocalVariable(name: "copy", scope: !54, file: !1, line: 38, type: !9)
!70 = !DILocation(line: 38, column: 11, scope: !54)
!71 = !DILocation(line: 38, column: 33, scope: !54)
!72 = !DILocation(line: 38, column: 26, scope: !54)
!73 = !DILocation(line: 39, column: 9, scope: !74)
!74 = distinct !DILexicalBlock(scope: !54, file: !1, line: 39, column: 9)
!75 = !DILocation(line: 39, column: 9, scope: !54)
!76 = !DILocation(line: 39, column: 22, scope: !74)
!77 = !DILocation(line: 39, column: 28, scope: !74)
!78 = !DILocation(line: 39, column: 33, scope: !74)
!79 = !DILocation(line: 39, column: 15, scope: !74)
!80 = !DILocation(line: 40, column: 12, scope: !54)
!81 = !DILocation(line: 40, column: 5, scope: !54)
!82 = !DILocation(line: 41, column: 1, scope: !54)
!83 = distinct !DISubprogram(name: "xmlCopyEntity", scope: !1, file: !1, line: 44, type: !84, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !39)
!84 = !DISubroutineType(types: !85)
!85 = !{!11, !11}
!86 = !DILocalVariable(name: "ent", arg: 1, scope: !83, file: !1, line: 44, type: !11)
!87 = !DILocation(line: 44, column: 41, scope: !83)
!88 = !DILocalVariable(name: "cur", scope: !83, file: !1, line: 45, type: !11)
!89 = !DILocation(line: 45, column: 18, scope: !83)
!90 = !DILocation(line: 47, column: 26, scope: !83)
!91 = !DILocation(line: 47, column: 11, scope: !83)
!92 = !DILocation(line: 47, column: 9, scope: !83)
!93 = !DILocation(line: 48, column: 9, scope: !94)
!94 = distinct !DILexicalBlock(scope: !83, file: !1, line: 48, column: 9)
!95 = !DILocation(line: 48, column: 13, scope: !94)
!96 = !DILocation(line: 48, column: 9, scope: !83)
!97 = !DILocation(line: 49, column: 9, scope: !98)
!98 = distinct !DILexicalBlock(scope: !94, file: !1, line: 48, column: 22)
!99 = !DILocation(line: 50, column: 9, scope: !98)
!100 = !DILocation(line: 54, column: 12, scope: !83)
!101 = !DILocation(line: 54, column: 5, scope: !83)
!102 = !DILocation(line: 60, column: 5, scope: !83)
!103 = !DILocation(line: 62, column: 5, scope: !83)
!104 = !DILocation(line: 62, column: 10, scope: !83)
!105 = !DILocation(line: 62, column: 15, scope: !83)
!106 = !DILocation(line: 63, column: 18, scope: !83)
!107 = !DILocation(line: 63, column: 23, scope: !83)
!108 = !DILocation(line: 63, column: 5, scope: !83)
!109 = !DILocation(line: 63, column: 10, scope: !83)
!110 = !DILocation(line: 63, column: 16, scope: !83)
!111 = !DILocation(line: 65, column: 9, scope: !112)
!112 = distinct !DILexicalBlock(scope: !83, file: !1, line: 65, column: 9)
!113 = !DILocation(line: 65, column: 14, scope: !112)
!114 = !DILocation(line: 65, column: 19, scope: !112)
!115 = !DILocation(line: 65, column: 9, scope: !83)
!116 = !DILocation(line: 66, column: 31, scope: !112)
!117 = !DILocation(line: 66, column: 36, scope: !112)
!118 = !DILocation(line: 66, column: 21, scope: !112)
!119 = !DILocation(line: 66, column: 9, scope: !112)
!120 = !DILocation(line: 66, column: 14, scope: !112)
!121 = !DILocation(line: 66, column: 19, scope: !112)
!122 = !DILocation(line: 67, column: 9, scope: !123)
!123 = distinct !DILexicalBlock(scope: !83, file: !1, line: 67, column: 9)
!124 = !DILocation(line: 67, column: 14, scope: !123)
!125 = !DILocation(line: 67, column: 25, scope: !123)
!126 = !DILocation(line: 67, column: 9, scope: !83)
!127 = !DILocation(line: 68, column: 37, scope: !123)
!128 = !DILocation(line: 68, column: 42, scope: !123)
!129 = !DILocation(line: 68, column: 27, scope: !123)
!130 = !DILocation(line: 68, column: 9, scope: !123)
!131 = !DILocation(line: 68, column: 14, scope: !123)
!132 = !DILocation(line: 68, column: 25, scope: !123)
!133 = !DILocation(line: 69, column: 9, scope: !134)
!134 = distinct !DILexicalBlock(scope: !83, file: !1, line: 69, column: 9)
!135 = !DILocation(line: 69, column: 14, scope: !134)
!136 = !DILocation(line: 69, column: 23, scope: !134)
!137 = !DILocation(line: 69, column: 9, scope: !83)
!138 = !DILocation(line: 70, column: 35, scope: !134)
!139 = !DILocation(line: 70, column: 40, scope: !134)
!140 = !DILocation(line: 70, column: 25, scope: !134)
!141 = !DILocation(line: 70, column: 9, scope: !134)
!142 = !DILocation(line: 70, column: 14, scope: !134)
!143 = !DILocation(line: 70, column: 23, scope: !134)
!144 = !DILocation(line: 72, column: 12, scope: !83)
!145 = !DILocation(line: 72, column: 5, scope: !83)
!146 = !DILocation(line: 73, column: 1, scope: !83)
!147 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 75, type: !148, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !39)
!148 = !DISubroutineType(types: !149)
!149 = !{!17}
!150 = !DILocalVariable(name: "ent", scope: !147, file: !1, line: 77, type: !13)
!151 = !DILocation(line: 77, column: 15, scope: !147)
!152 = !DILocation(line: 80, column: 29, scope: !147)
!153 = !DILocation(line: 80, column: 24, scope: !147)
!154 = !DILocation(line: 80, column: 5, scope: !147)
!155 = !DILocation(line: 81, column: 29, scope: !147)
!156 = !DILocation(line: 81, column: 24, scope: !147)
!157 = !DILocation(line: 81, column: 5, scope: !147)
!158 = !DILocation(line: 82, column: 29, scope: !147)
!159 = !DILocation(line: 82, column: 24, scope: !147)
!160 = !DILocation(line: 82, column: 5, scope: !147)
!161 = !DILocation(line: 83, column: 29, scope: !147)
!162 = !DILocation(line: 83, column: 24, scope: !147)
!163 = !DILocation(line: 83, column: 5, scope: !147)
!164 = !DILocation(line: 86, column: 21, scope: !147)
!165 = !DILocation(line: 86, column: 26, scope: !147)
!166 = !DILocation(line: 86, column: 31, scope: !147)
!167 = !DILocation(line: 86, column: 39, scope: !147)
!168 = !DILocation(line: 86, column: 44, scope: !147)
!169 = !DILocation(line: 86, column: 49, scope: !147)
!170 = !DILocation(line: 86, column: 56, scope: !147)
!171 = !DILocation(line: 86, column: 61, scope: !147)
!172 = !DILocation(line: 0, scope: !147)
!173 = !DILocation(line: 86, column: 17, scope: !147)
!174 = !DILocation(line: 86, column: 5, scope: !147)
!175 = !DILocation(line: 87, column: 21, scope: !147)
!176 = !DILocation(line: 87, column: 32, scope: !147)
!177 = !DILocation(line: 87, column: 37, scope: !147)
!178 = !DILocation(line: 87, column: 45, scope: !147)
!179 = !DILocation(line: 87, column: 56, scope: !147)
!180 = !DILocation(line: 87, column: 61, scope: !147)
!181 = !DILocation(line: 87, column: 68, scope: !147)
!182 = !DILocation(line: 87, column: 79, scope: !147)
!183 = !DILocation(line: 87, column: 17, scope: !147)
!184 = !DILocation(line: 87, column: 5, scope: !147)
!185 = !DILocation(line: 88, column: 21, scope: !147)
!186 = !DILocation(line: 88, column: 30, scope: !147)
!187 = !DILocation(line: 88, column: 35, scope: !147)
!188 = !DILocation(line: 88, column: 43, scope: !147)
!189 = !DILocation(line: 88, column: 52, scope: !147)
!190 = !DILocation(line: 88, column: 57, scope: !147)
!191 = !DILocation(line: 88, column: 64, scope: !147)
!192 = !DILocation(line: 88, column: 73, scope: !147)
!193 = !DILocation(line: 88, column: 17, scope: !147)
!194 = !DILocation(line: 88, column: 5, scope: !147)
!195 = !DILocalVariable(name: "result", scope: !147, file: !1, line: 91, type: !11)
!196 = !DILocation(line: 91, column: 18, scope: !147)
!197 = !DILocation(line: 91, column: 27, scope: !147)
!198 = !DILocation(line: 94, column: 9, scope: !199)
!199 = distinct !DILexicalBlock(scope: !147, file: !1, line: 94, column: 9)
!200 = !DILocation(line: 94, column: 9, scope: !147)
!201 = !DILocation(line: 95, column: 14, scope: !202)
!202 = distinct !DILexicalBlock(scope: !199, file: !1, line: 94, column: 17)
!203 = !DILocation(line: 95, column: 22, scope: !202)
!204 = !DILocation(line: 95, column: 9, scope: !202)
!205 = !DILocation(line: 96, column: 14, scope: !202)
!206 = !DILocation(line: 96, column: 22, scope: !202)
!207 = !DILocation(line: 96, column: 9, scope: !202)
!208 = !DILocation(line: 97, column: 14, scope: !202)
!209 = !DILocation(line: 97, column: 22, scope: !202)
!210 = !DILocation(line: 97, column: 9, scope: !202)
!211 = !DILocation(line: 98, column: 14, scope: !202)
!212 = !DILocation(line: 98, column: 9, scope: !202)
!213 = !DILocation(line: 99, column: 5, scope: !202)
!214 = !DILocation(line: 101, column: 5, scope: !147)
!215 = distinct !DISubprogram(name: "memcpy", scope: !216, file: !216, line: 12, type: !217, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !39)
!216 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!217 = !DISubroutineType(types: !218)
!218 = !{!8, !8, !219, !46}
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!221 = !DILocalVariable(name: "destaddr", arg: 1, scope: !215, file: !216, line: 12, type: !8)
!222 = !DILocation(line: 12, column: 20, scope: !215)
!223 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !215, file: !216, line: 12, type: !219)
!224 = !DILocation(line: 12, column: 42, scope: !215)
!225 = !DILocalVariable(name: "len", arg: 3, scope: !215, file: !216, line: 12, type: !46)
!226 = !DILocation(line: 12, column: 58, scope: !215)
!227 = !DILocalVariable(name: "dest", scope: !215, file: !216, line: 13, type: !9)
!228 = !DILocation(line: 13, column: 9, scope: !215)
!229 = !DILocation(line: 13, column: 16, scope: !215)
!230 = !DILocalVariable(name: "src", scope: !215, file: !216, line: 14, type: !37)
!231 = !DILocation(line: 14, column: 15, scope: !215)
!232 = !DILocation(line: 14, column: 21, scope: !215)
!233 = !DILocation(line: 16, column: 3, scope: !215)
!234 = !DILocation(line: 16, column: 13, scope: !215)
!235 = !DILocation(line: 16, column: 16, scope: !215)
!236 = !DILocation(line: 17, column: 19, scope: !215)
!237 = !DILocation(line: 17, column: 15, scope: !215)
!238 = !DILocation(line: 17, column: 10, scope: !215)
!239 = !DILocation(line: 17, column: 13, scope: !215)
!240 = distinct !{!240, !233, !236, !241}
!241 = !{!"llvm.loop.mustprogress"}
!242 = !DILocation(line: 18, column: 10, scope: !215)
!243 = !DILocation(line: 18, column: 3, scope: !215)
!244 = distinct !DISubprogram(name: "memset", scope: !245, file: !245, line: 12, type: !246, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !39)
!245 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!246 = !DISubroutineType(types: !247)
!247 = !{!8, !8, !17, !46}
!248 = !DILocalVariable(name: "dst", arg: 1, scope: !244, file: !245, line: 12, type: !8)
!249 = !DILocation(line: 12, column: 20, scope: !244)
!250 = !DILocalVariable(name: "s", arg: 2, scope: !244, file: !245, line: 12, type: !17)
!251 = !DILocation(line: 12, column: 29, scope: !244)
!252 = !DILocalVariable(name: "count", arg: 3, scope: !244, file: !245, line: 12, type: !46)
!253 = !DILocation(line: 12, column: 39, scope: !244)
!254 = !DILocalVariable(name: "a", scope: !244, file: !245, line: 13, type: !9)
!255 = !DILocation(line: 13, column: 9, scope: !244)
!256 = !DILocation(line: 13, column: 13, scope: !244)
!257 = !DILocation(line: 14, column: 3, scope: !244)
!258 = !DILocation(line: 14, column: 15, scope: !244)
!259 = !DILocation(line: 14, column: 18, scope: !244)
!260 = !DILocation(line: 15, column: 12, scope: !244)
!261 = !DILocation(line: 15, column: 7, scope: !244)
!262 = !DILocation(line: 15, column: 10, scope: !244)
!263 = distinct !{!263, !257, !260, !241}
!264 = !DILocation(line: 16, column: 10, scope: !244)
!265 = !DILocation(line: 16, column: 3, scope: !244)

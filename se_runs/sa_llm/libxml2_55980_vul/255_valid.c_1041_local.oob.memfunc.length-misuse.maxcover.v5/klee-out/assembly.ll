; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/255_valid.c_1041_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/255_valid.c_1041_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlElementContent = type { i32, i32, %struct._xmlElementContent*, %struct._xmlElementContent*, i8* }

@.str = private unnamed_addr constant [16 x i8] c"malloc_contents\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_55980_vul/255_valid.c_1041_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.target_function = private unnamed_addr constant [67 x i8] c"xmlElementContentPtr target_function(xmlElementContentPtr, void *)\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"list_node\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"name_buf\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"continue_list\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"dict\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !28 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i8** %3, metadata !37, metadata !DIExpression()), !dbg !38
  %4 = load i64, i64* %2, align 8, !dbg !39
  %5 = call noalias i8* @malloc(i64 noundef %4) #7, !dbg !40
  store i8* %5, i8** %3, align 8, !dbg !38
  %6 = load i8*, i8** %3, align 8, !dbg !41
  %7 = icmp ne i8* %6, null, !dbg !41
  br i1 %7, label %8, label %11, !dbg !43

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8, !dbg !44
  %10 = load i64, i64* %2, align 8, !dbg !46
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef %10, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !47
  br label %11, !dbg !48

11:                                               ; preds = %8, %1
  %12 = load i8*, i8** %3, align 8, !dbg !49
  ret i8* %12, !dbg !50
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlDictLookup(i8* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !51 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !54, metadata !DIExpression()), !dbg !55
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !56, metadata !DIExpression()), !dbg !57
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !58, metadata !DIExpression()), !dbg !59
  %7 = load i8*, i8** %4, align 8, !dbg !60
  %8 = load i32, i32* %6, align 4, !dbg !61
  %9 = load i8*, i8** %5, align 8, !dbg !62
  ret i8* %9, !dbg !63
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlVErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !64 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !67, metadata !DIExpression()), !dbg !68
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !69, metadata !DIExpression()), !dbg !70
  %5 = load i8*, i8** %3, align 8, !dbg !71
  %6 = load i8*, i8** %4, align 8, !dbg !72
  ret void, !dbg !73
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlElementContent* @target_function(%struct._xmlElementContent* noundef %0, i8* noundef %1) #0 !dbg !74 {
  %3 = alloca %struct._xmlElementContent*, align 8
  %4 = alloca %struct._xmlElementContent*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._xmlElementContent*, align 8
  %7 = alloca %struct._xmlElementContent*, align 8
  %8 = alloca %struct._xmlElementContent*, align 8
  store %struct._xmlElementContent* %0, %struct._xmlElementContent** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlElementContent** %4, metadata !77, metadata !DIExpression()), !dbg !78
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !79, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.declare(metadata %struct._xmlElementContent** %6, metadata !81, metadata !DIExpression()), !dbg !82
  store %struct._xmlElementContent* null, %struct._xmlElementContent** %6, align 8, !dbg !82
  call void @llvm.dbg.declare(metadata %struct._xmlElementContent** %7, metadata !83, metadata !DIExpression()), !dbg !84
  store %struct._xmlElementContent* null, %struct._xmlElementContent** %7, align 8, !dbg !84
  call void @llvm.dbg.declare(metadata %struct._xmlElementContent** %8, metadata !85, metadata !DIExpression()), !dbg !86
  %9 = load %struct._xmlElementContent*, %struct._xmlElementContent** %4, align 8, !dbg !87
  %10 = icmp eq %struct._xmlElementContent* %9, null, !dbg !89
  br i1 %10, label %11, label %12, !dbg !90

11:                                               ; preds = %2
  store %struct._xmlElementContent* null, %struct._xmlElementContent** %3, align 8, !dbg !91
  br label %119, !dbg !91

12:                                               ; preds = %2
  %13 = call i8* @xmlMalloc(i64 noundef 32), !dbg !92
  %14 = bitcast i8* %13 to %struct._xmlElementContent*, !dbg !93
  store %struct._xmlElementContent* %14, %struct._xmlElementContent** %6, align 8, !dbg !94
  %15 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !95
  %16 = icmp eq %struct._xmlElementContent* %15, null, !dbg !97
  br i1 %16, label %17, label %18, !dbg !98

17:                                               ; preds = %12
  call void @xmlVErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)), !dbg !99
  store %struct._xmlElementContent* null, %struct._xmlElementContent** %3, align 8, !dbg !101
  br label %119, !dbg !101

18:                                               ; preds = %12
  %19 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !102
  %20 = bitcast %struct._xmlElementContent* %19 to i8*, !dbg !103
  %21 = call i8* @memset(i8* %20, i32 0, i64 32), !dbg !103
  %22 = load %struct._xmlElementContent*, %struct._xmlElementContent** %4, align 8, !dbg !104
  %23 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %22, i32 0, i32 0, !dbg !105
  %24 = load i32, i32* %23, align 8, !dbg !105
  %25 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !106
  %26 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %25, i32 0, i32 0, !dbg !107
  store i32 %24, i32* %26, align 8, !dbg !108
  %27 = load %struct._xmlElementContent*, %struct._xmlElementContent** %4, align 8, !dbg !109
  %28 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %27, i32 0, i32 1, !dbg !110
  %29 = load i32, i32* %28, align 4, !dbg !110
  %30 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !111
  %31 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %30, i32 0, i32 1, !dbg !112
  store i32 %29, i32* %31, align 4, !dbg !113
  %32 = load %struct._xmlElementContent*, %struct._xmlElementContent** %4, align 8, !dbg !114
  %33 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %32, i32 0, i32 4, !dbg !116
  %34 = load i8*, i8** %33, align 8, !dbg !116
  %35 = icmp ne i8* %34, null, !dbg !117
  br i1 %35, label %36, label %54, !dbg !118

36:                                               ; preds = %18
  %37 = load i8*, i8** %5, align 8, !dbg !119
  %38 = icmp ne i8* %37, null, !dbg !119
  br i1 %38, label %39, label %47, !dbg !122

39:                                               ; preds = %36
  %40 = load i8*, i8** %5, align 8, !dbg !123
  %41 = load %struct._xmlElementContent*, %struct._xmlElementContent** %4, align 8, !dbg !124
  %42 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %41, i32 0, i32 4, !dbg !125
  %43 = load i8*, i8** %42, align 8, !dbg !125
  %44 = call i8* @xmlDictLookup(i8* noundef %40, i8* noundef %43, i32 noundef -1), !dbg !126
  %45 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !127
  %46 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %45, i32 0, i32 4, !dbg !128
  store i8* %44, i8** %46, align 8, !dbg !129
  br label %53, !dbg !127

47:                                               ; preds = %36
  %48 = load %struct._xmlElementContent*, %struct._xmlElementContent** %4, align 8, !dbg !130
  %49 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %48, i32 0, i32 4, !dbg !131
  %50 = load i8*, i8** %49, align 8, !dbg !131
  %51 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !132
  %52 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %51, i32 0, i32 4, !dbg !133
  store i8* %50, i8** %52, align 8, !dbg !134
  br label %53

53:                                               ; preds = %47, %39
  br label %54, !dbg !135

54:                                               ; preds = %53, %18
  %55 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !136
  store %struct._xmlElementContent* %55, %struct._xmlElementContent** %7, align 8, !dbg !137
  %56 = load %struct._xmlElementContent*, %struct._xmlElementContent** %4, align 8, !dbg !138
  %57 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %56, i32 0, i32 2, !dbg !139
  %58 = load %struct._xmlElementContent*, %struct._xmlElementContent** %57, align 8, !dbg !139
  store %struct._xmlElementContent* %58, %struct._xmlElementContent** %4, align 8, !dbg !140
  br label %59, !dbg !141

59:                                               ; preds = %112, %54
  %60 = load %struct._xmlElementContent*, %struct._xmlElementContent** %4, align 8, !dbg !142
  %61 = icmp ne %struct._xmlElementContent* %60, null, !dbg !143
  br i1 %61, label %62, label %117, !dbg !141

62:                                               ; preds = %59
  %63 = call i8* @xmlMalloc(i64 noundef 32), !dbg !144
  %64 = bitcast i8* %63 to %struct._xmlElementContent*, !dbg !146
  store %struct._xmlElementContent* %64, %struct._xmlElementContent** %8, align 8, !dbg !147
  %65 = load %struct._xmlElementContent*, %struct._xmlElementContent** %8, align 8, !dbg !148
  %66 = icmp eq %struct._xmlElementContent* %65, null, !dbg !150
  br i1 %66, label %67, label %69, !dbg !151

67:                                               ; preds = %62
  call void @xmlVErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)), !dbg !152
  %68 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !154
  store %struct._xmlElementContent* %68, %struct._xmlElementContent** %3, align 8, !dbg !155
  br label %119, !dbg !155

69:                                               ; preds = %62
  %70 = load %struct._xmlElementContent*, %struct._xmlElementContent** %8, align 8, !dbg !156
  %71 = bitcast %struct._xmlElementContent* %70 to i8*, !dbg !157
  %72 = call i8* @memset(i8* %71, i32 0, i64 32), !dbg !157
  %73 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.3, i64 0, i64 0), i32 noundef 83, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !158
  %74 = load %struct._xmlElementContent*, %struct._xmlElementContent** %4, align 8, !dbg !159
  %75 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %74, i32 0, i32 0, !dbg !160
  %76 = load i32, i32* %75, align 8, !dbg !160
  %77 = load %struct._xmlElementContent*, %struct._xmlElementContent** %8, align 8, !dbg !161
  %78 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %77, i32 0, i32 0, !dbg !162
  store i32 %76, i32* %78, align 8, !dbg !163
  %79 = load %struct._xmlElementContent*, %struct._xmlElementContent** %4, align 8, !dbg !164
  %80 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %79, i32 0, i32 1, !dbg !165
  %81 = load i32, i32* %80, align 4, !dbg !165
  %82 = load %struct._xmlElementContent*, %struct._xmlElementContent** %8, align 8, !dbg !166
  %83 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %82, i32 0, i32 1, !dbg !167
  store i32 %81, i32* %83, align 4, !dbg !168
  %84 = load %struct._xmlElementContent*, %struct._xmlElementContent** %8, align 8, !dbg !169
  %85 = load %struct._xmlElementContent*, %struct._xmlElementContent** %7, align 8, !dbg !170
  %86 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %85, i32 0, i32 2, !dbg !171
  store %struct._xmlElementContent* %84, %struct._xmlElementContent** %86, align 8, !dbg !172
  %87 = load %struct._xmlElementContent*, %struct._xmlElementContent** %7, align 8, !dbg !173
  %88 = load %struct._xmlElementContent*, %struct._xmlElementContent** %8, align 8, !dbg !174
  %89 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %88, i32 0, i32 3, !dbg !175
  store %struct._xmlElementContent* %87, %struct._xmlElementContent** %89, align 8, !dbg !176
  %90 = load %struct._xmlElementContent*, %struct._xmlElementContent** %4, align 8, !dbg !177
  %91 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %90, i32 0, i32 4, !dbg !179
  %92 = load i8*, i8** %91, align 8, !dbg !179
  %93 = icmp ne i8* %92, null, !dbg !180
  br i1 %93, label %94, label %112, !dbg !181

94:                                               ; preds = %69
  %95 = load i8*, i8** %5, align 8, !dbg !182
  %96 = icmp ne i8* %95, null, !dbg !182
  br i1 %96, label %97, label %105, !dbg !185

97:                                               ; preds = %94
  %98 = load i8*, i8** %5, align 8, !dbg !186
  %99 = load %struct._xmlElementContent*, %struct._xmlElementContent** %4, align 8, !dbg !187
  %100 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %99, i32 0, i32 4, !dbg !188
  %101 = load i8*, i8** %100, align 8, !dbg !188
  %102 = call i8* @xmlDictLookup(i8* noundef %98, i8* noundef %101, i32 noundef -1), !dbg !189
  %103 = load %struct._xmlElementContent*, %struct._xmlElementContent** %8, align 8, !dbg !190
  %104 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %103, i32 0, i32 4, !dbg !191
  store i8* %102, i8** %104, align 8, !dbg !192
  br label %111, !dbg !190

105:                                              ; preds = %94
  %106 = load %struct._xmlElementContent*, %struct._xmlElementContent** %4, align 8, !dbg !193
  %107 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %106, i32 0, i32 4, !dbg !194
  %108 = load i8*, i8** %107, align 8, !dbg !194
  %109 = load %struct._xmlElementContent*, %struct._xmlElementContent** %8, align 8, !dbg !195
  %110 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %109, i32 0, i32 4, !dbg !196
  store i8* %108, i8** %110, align 8, !dbg !197
  br label %111

111:                                              ; preds = %105, %97
  br label %112, !dbg !198

112:                                              ; preds = %111, %69
  %113 = load %struct._xmlElementContent*, %struct._xmlElementContent** %8, align 8, !dbg !199
  store %struct._xmlElementContent* %113, %struct._xmlElementContent** %7, align 8, !dbg !200
  %114 = load %struct._xmlElementContent*, %struct._xmlElementContent** %4, align 8, !dbg !201
  %115 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %114, i32 0, i32 2, !dbg !202
  %116 = load %struct._xmlElementContent*, %struct._xmlElementContent** %115, align 8, !dbg !202
  store %struct._xmlElementContent* %116, %struct._xmlElementContent** %4, align 8, !dbg !203
  br label %59, !dbg !141, !llvm.loop !204

117:                                              ; preds = %59
  %118 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !207
  store %struct._xmlElementContent* %118, %struct._xmlElementContent** %3, align 8, !dbg !208
  br label %119, !dbg !208

119:                                              ; preds = %117, %67, %17, %11
  %120 = load %struct._xmlElementContent*, %struct._xmlElementContent** %3, align 8, !dbg !209
  ret %struct._xmlElementContent* %120, !dbg !209
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlElementContent* @create_symbolic_list(i32 noundef %0) #0 !dbg !210 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._xmlElementContent*, align 8
  %4 = alloca %struct._xmlElementContent*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._xmlElementContent*, align 8
  %7 = alloca [32 x i8], align 16
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !213, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.declare(metadata %struct._xmlElementContent** %3, metadata !215, metadata !DIExpression()), !dbg !216
  store %struct._xmlElementContent* null, %struct._xmlElementContent** %3, align 8, !dbg !216
  call void @llvm.dbg.declare(metadata %struct._xmlElementContent** %4, metadata !217, metadata !DIExpression()), !dbg !218
  store %struct._xmlElementContent* null, %struct._xmlElementContent** %4, align 8, !dbg !218
  call void @llvm.dbg.declare(metadata i32* %5, metadata !219, metadata !DIExpression()), !dbg !221
  store i32 0, i32* %5, align 4, !dbg !221
  br label %9, !dbg !222

9:                                                ; preds = %76, %1
  %10 = load i32, i32* %5, align 4, !dbg !223
  %11 = load i32, i32* %2, align 4, !dbg !225
  %12 = icmp slt i32 %10, %11, !dbg !226
  br i1 %12, label %13, label %79, !dbg !227

13:                                               ; preds = %9
  call void @llvm.dbg.declare(metadata %struct._xmlElementContent** %6, metadata !228, metadata !DIExpression()), !dbg !230
  %14 = call noalias i8* @malloc(i64 noundef 32) #7, !dbg !231
  %15 = bitcast i8* %14 to %struct._xmlElementContent*, !dbg !232
  store %struct._xmlElementContent* %15, %struct._xmlElementContent** %6, align 8, !dbg !230
  %16 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !233
  %17 = bitcast %struct._xmlElementContent* %16 to i8*, !dbg !233
  call void @klee_make_symbolic(i8* noundef %17, i64 noundef 32, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0)), !dbg !234
  %18 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !235
  %19 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %18, i32 0, i32 0, !dbg !236
  %20 = load i32, i32* %19, align 8, !dbg !236
  %21 = icmp sge i32 %20, 0, !dbg !237
  br i1 %21, label %22, label %27, !dbg !238

22:                                               ; preds = %13
  %23 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !239
  %24 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %23, i32 0, i32 0, !dbg !240
  %25 = load i32, i32* %24, align 8, !dbg !240
  %26 = icmp sle i32 %25, 10, !dbg !241
  br label %27

27:                                               ; preds = %22, %13
  %28 = phi i1 [ false, %13 ], [ %26, %22 ], !dbg !242
  %29 = zext i1 %28 to i32, !dbg !238
  %30 = sext i32 %29 to i64, !dbg !235
  call void @klee_assume(i64 noundef %30), !dbg !243
  %31 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !244
  %32 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %31, i32 0, i32 1, !dbg !245
  %33 = load i32, i32* %32, align 4, !dbg !245
  %34 = icmp sge i32 %33, 0, !dbg !246
  br i1 %34, label %35, label %40, !dbg !247

35:                                               ; preds = %27
  %36 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !248
  %37 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %36, i32 0, i32 1, !dbg !249
  %38 = load i32, i32* %37, align 4, !dbg !249
  %39 = icmp sle i32 %38, 10, !dbg !250
  br label %40

40:                                               ; preds = %35, %27
  %41 = phi i1 [ false, %27 ], [ %39, %35 ], !dbg !242
  %42 = zext i1 %41 to i32, !dbg !247
  %43 = sext i32 %42 to i64, !dbg !244
  call void @klee_assume(i64 noundef %43), !dbg !251
  call void @llvm.dbg.declare(metadata [32 x i8]* %7, metadata !252, metadata !DIExpression()), !dbg !256
  %44 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0, !dbg !257
  call void @klee_make_symbolic(i8* noundef %44, i64 noundef 32, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)), !dbg !258
  %45 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0, !dbg !259
  %46 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !260
  %47 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %46, i32 0, i32 4, !dbg !261
  store i8* %45, i8** %47, align 8, !dbg !262
  %48 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !263
  %49 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %48, i32 0, i32 2, !dbg !264
  store %struct._xmlElementContent* null, %struct._xmlElementContent** %49, align 8, !dbg !265
  %50 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !266
  %51 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %50, i32 0, i32 3, !dbg !267
  store %struct._xmlElementContent* null, %struct._xmlElementContent** %51, align 8, !dbg !268
  %52 = load %struct._xmlElementContent*, %struct._xmlElementContent** %4, align 8, !dbg !269
  %53 = icmp ne %struct._xmlElementContent* %52, null, !dbg !269
  br i1 %53, label %54, label %58, !dbg !271

54:                                               ; preds = %40
  %55 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !272
  %56 = load %struct._xmlElementContent*, %struct._xmlElementContent** %4, align 8, !dbg !274
  %57 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %56, i32 0, i32 2, !dbg !275
  store %struct._xmlElementContent* %55, %struct._xmlElementContent** %57, align 8, !dbg !276
  br label %60, !dbg !277

58:                                               ; preds = %40
  %59 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !278
  store %struct._xmlElementContent* %59, %struct._xmlElementContent** %3, align 8, !dbg !280
  br label %60

60:                                               ; preds = %58, %54
  %61 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !281
  store %struct._xmlElementContent* %61, %struct._xmlElementContent** %4, align 8, !dbg !282
  call void @llvm.dbg.declare(metadata i32* %8, metadata !283, metadata !DIExpression()), !dbg !284
  %62 = bitcast i32* %8 to i8*, !dbg !285
  call void @klee_make_symbolic(i8* noundef %62, i64 noundef 4, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0)), !dbg !286
  %63 = load i32, i32* %8, align 4, !dbg !287
  %64 = icmp eq i32 %63, 0, !dbg !288
  br i1 %64, label %68, label %65, !dbg !289

65:                                               ; preds = %60
  %66 = load i32, i32* %8, align 4, !dbg !290
  %67 = icmp eq i32 %66, 1, !dbg !291
  br label %68, !dbg !289

68:                                               ; preds = %65, %60
  %69 = phi i1 [ true, %60 ], [ %67, %65 ]
  %70 = zext i1 %69 to i32, !dbg !289
  %71 = sext i32 %70 to i64, !dbg !287
  call void @klee_assume(i64 noundef %71), !dbg !292
  %72 = load i32, i32* %8, align 4, !dbg !293
  %73 = icmp eq i32 %72, 0, !dbg !295
  br i1 %73, label %74, label %75, !dbg !296

74:                                               ; preds = %68
  br label %79, !dbg !297

75:                                               ; preds = %68
  br label %76, !dbg !299

76:                                               ; preds = %75
  %77 = load i32, i32* %5, align 4, !dbg !300
  %78 = add nsw i32 %77, 1, !dbg !300
  store i32 %78, i32* %5, align 4, !dbg !300
  br label %9, !dbg !301, !llvm.loop !302

79:                                               ; preds = %74, %9
  %80 = load %struct._xmlElementContent*, %struct._xmlElementContent** %3, align 8, !dbg !304
  ret %struct._xmlElementContent* %80, !dbg !305
}

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !306 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlElementContent*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._xmlElementContent*, align 8
  %5 = alloca %struct._xmlElementContent*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlElementContent** %2, metadata !309, metadata !DIExpression()), !dbg !310
  %6 = call %struct._xmlElementContent* @create_symbolic_list(i32 noundef 3), !dbg !311
  store %struct._xmlElementContent* %6, %struct._xmlElementContent** %2, align 8, !dbg !310
  call void @llvm.dbg.declare(metadata i8** %3, metadata !312, metadata !DIExpression()), !dbg !313
  %7 = bitcast i8** %3 to i8*, !dbg !314
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)), !dbg !315
  call void @llvm.dbg.declare(metadata %struct._xmlElementContent** %4, metadata !316, metadata !DIExpression()), !dbg !317
  %8 = load %struct._xmlElementContent*, %struct._xmlElementContent** %2, align 8, !dbg !318
  %9 = load i8*, i8** %3, align 8, !dbg !319
  %10 = call %struct._xmlElementContent* @target_function(%struct._xmlElementContent* noundef %8, i8* noundef %9), !dbg !320
  store %struct._xmlElementContent* %10, %struct._xmlElementContent** %4, align 8, !dbg !317
  br label %11, !dbg !321

11:                                               ; preds = %14, %0
  %12 = load %struct._xmlElementContent*, %struct._xmlElementContent** %2, align 8, !dbg !322
  %13 = icmp ne %struct._xmlElementContent* %12, null, !dbg !323
  br i1 %13, label %14, label %21, !dbg !321

14:                                               ; preds = %11
  call void @llvm.dbg.declare(metadata %struct._xmlElementContent** %5, metadata !324, metadata !DIExpression()), !dbg !326
  %15 = load %struct._xmlElementContent*, %struct._xmlElementContent** %2, align 8, !dbg !327
  %16 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %15, i32 0, i32 2, !dbg !328
  %17 = load %struct._xmlElementContent*, %struct._xmlElementContent** %16, align 8, !dbg !328
  store %struct._xmlElementContent* %17, %struct._xmlElementContent** %5, align 8, !dbg !326
  %18 = load %struct._xmlElementContent*, %struct._xmlElementContent** %2, align 8, !dbg !329
  %19 = bitcast %struct._xmlElementContent* %18 to i8*, !dbg !329
  call void @free(i8* noundef %19) #7, !dbg !330
  %20 = load %struct._xmlElementContent*, %struct._xmlElementContent** %5, align 8, !dbg !331
  store %struct._xmlElementContent* %20, %struct._xmlElementContent** %2, align 8, !dbg !332
  br label %11, !dbg !321, !llvm.loop !333

21:                                               ; preds = %11
  ret i32 0, !dbg !335
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !336 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !340, metadata !DIExpression()), !dbg !341
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !342, metadata !DIExpression()), !dbg !343
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !344, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.declare(metadata i8** %7, metadata !346, metadata !DIExpression()), !dbg !348
  %8 = load i8*, i8** %4, align 8, !dbg !349
  store i8* %8, i8** %7, align 8, !dbg !348
  br label %9, !dbg !350

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !351
  %11 = add i64 %10, -1, !dbg !351
  store i64 %11, i64* %6, align 8, !dbg !351
  %12 = icmp ugt i64 %10, 0, !dbg !352
  br i1 %12, label %13, label %18, !dbg !350

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !353
  %15 = trunc i32 %14 to i8, !dbg !353
  %16 = load i8*, i8** %7, align 8, !dbg !354
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !354
  store i8* %17, i8** %7, align 8, !dbg !354
  store i8 %15, i8* %16, align 1, !dbg !355
  br label %9, !dbg !350, !llvm.loop !356

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !357
  ret i8* %19, !dbg !358
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27, !27}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/255_valid.c_1041_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "730356f6caa5dcab523dbc0fb1d3a563")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContentPtr", file: !1, line: 19, baseType: !5)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContent", file: !1, line: 10, baseType: !7)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlElementContent", file: !1, line: 11, size: 256, elements: !8)
!8 = !{!9, !11, !12, !13, !14}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !7, file: !1, line: 12, baseType: !10, size: 32)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "ocur", scope: !7, file: !1, line: 13, baseType: !10, size: 32, offset: 32)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "c2", scope: !7, file: !1, line: 14, baseType: !5, size: 64, offset: 64)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !7, file: !1, line: 15, baseType: !5, size: 64, offset: 128)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !7, file: !1, line: 16, baseType: !15, size: 64, offset: 192)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = distinct !DICompileUnit(language: DW_LANG_C99, file: !19, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!19 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!20 = !{i32 7, !"Dwarf Version", i32 5}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"wchar_size", i32 4}
!23 = !{i32 7, !"PIC Level", i32 2}
!24 = !{i32 7, !"PIE Level", i32 2}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"Ubuntu clang version 14.0.6"}
!28 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 22, type: !29, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!29 = !DISubroutineType(types: !30)
!30 = !{!3, !31}
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !32, line: 46, baseType: !33)
!32 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!33 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!34 = !{}
!35 = !DILocalVariable(name: "size", arg: 1, scope: !28, file: !1, line: 22, type: !31)
!36 = !DILocation(line: 22, column: 24, scope: !28)
!37 = !DILocalVariable(name: "ptr", scope: !28, file: !1, line: 23, type: !3)
!38 = !DILocation(line: 23, column: 11, scope: !28)
!39 = !DILocation(line: 23, column: 24, scope: !28)
!40 = !DILocation(line: 23, column: 17, scope: !28)
!41 = !DILocation(line: 24, column: 9, scope: !42)
!42 = distinct !DILexicalBlock(scope: !28, file: !1, line: 24, column: 9)
!43 = !DILocation(line: 24, column: 9, scope: !28)
!44 = !DILocation(line: 25, column: 28, scope: !45)
!45 = distinct !DILexicalBlock(scope: !42, file: !1, line: 24, column: 14)
!46 = !DILocation(line: 25, column: 33, scope: !45)
!47 = !DILocation(line: 25, column: 9, scope: !45)
!48 = !DILocation(line: 26, column: 5, scope: !45)
!49 = !DILocation(line: 27, column: 12, scope: !28)
!50 = !DILocation(line: 27, column: 5, scope: !28)
!51 = distinct !DISubprogram(name: "xmlDictLookup", scope: !1, file: !1, line: 31, type: !52, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!52 = !DISubroutineType(types: !53)
!53 = !{!15, !3, !15, !10}
!54 = !DILocalVariable(name: "dict", arg: 1, scope: !51, file: !1, line: 31, type: !3)
!55 = !DILocation(line: 31, column: 33, scope: !51)
!56 = !DILocalVariable(name: "name", arg: 2, scope: !51, file: !1, line: 31, type: !15)
!57 = !DILocation(line: 31, column: 51, scope: !51)
!58 = !DILocalVariable(name: "len", arg: 3, scope: !51, file: !1, line: 31, type: !10)
!59 = !DILocation(line: 31, column: 61, scope: !51)
!60 = !DILocation(line: 32, column: 11, scope: !51)
!61 = !DILocation(line: 33, column: 11, scope: !51)
!62 = !DILocation(line: 34, column: 12, scope: !51)
!63 = !DILocation(line: 34, column: 5, scope: !51)
!64 = distinct !DISubprogram(name: "xmlVErrMemory", scope: !1, file: !1, line: 38, type: !65, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !3, !15}
!67 = !DILocalVariable(name: "ctx", arg: 1, scope: !64, file: !1, line: 38, type: !3)
!68 = !DILocation(line: 38, column: 26, scope: !64)
!69 = !DILocalVariable(name: "msg", arg: 2, scope: !64, file: !1, line: 38, type: !15)
!70 = !DILocation(line: 38, column: 43, scope: !64)
!71 = !DILocation(line: 39, column: 11, scope: !64)
!72 = !DILocation(line: 40, column: 11, scope: !64)
!73 = !DILocation(line: 41, column: 1, scope: !64)
!74 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 44, type: !75, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!75 = !DISubroutineType(types: !76)
!76 = !{!4, !4, !3}
!77 = !DILocalVariable(name: "cur", arg: 1, scope: !74, file: !1, line: 44, type: !4)
!78 = !DILocation(line: 44, column: 59, scope: !74)
!79 = !DILocalVariable(name: "dict", arg: 2, scope: !74, file: !1, line: 44, type: !3)
!80 = !DILocation(line: 44, column: 70, scope: !74)
!81 = !DILocalVariable(name: "ret", scope: !74, file: !1, line: 45, type: !4)
!82 = !DILocation(line: 45, column: 26, scope: !74)
!83 = !DILocalVariable(name: "prev", scope: !74, file: !1, line: 46, type: !4)
!84 = !DILocation(line: 46, column: 26, scope: !74)
!85 = !DILocalVariable(name: "tmp", scope: !74, file: !1, line: 47, type: !4)
!86 = !DILocation(line: 47, column: 26, scope: !74)
!87 = !DILocation(line: 49, column: 9, scope: !88)
!88 = distinct !DILexicalBlock(scope: !74, file: !1, line: 49, column: 9)
!89 = !DILocation(line: 49, column: 13, scope: !88)
!90 = !DILocation(line: 49, column: 9, scope: !74)
!91 = !DILocation(line: 49, column: 22, scope: !88)
!92 = !DILocation(line: 52, column: 33, scope: !74)
!93 = !DILocation(line: 52, column: 11, scope: !74)
!94 = !DILocation(line: 52, column: 9, scope: !74)
!95 = !DILocation(line: 53, column: 9, scope: !96)
!96 = distinct !DILexicalBlock(scope: !74, file: !1, line: 53, column: 9)
!97 = !DILocation(line: 53, column: 13, scope: !96)
!98 = !DILocation(line: 53, column: 9, scope: !74)
!99 = !DILocation(line: 54, column: 9, scope: !100)
!100 = distinct !DILexicalBlock(scope: !96, file: !1, line: 53, column: 22)
!101 = !DILocation(line: 55, column: 9, scope: !100)
!102 = !DILocation(line: 57, column: 12, scope: !74)
!103 = !DILocation(line: 57, column: 5, scope: !74)
!104 = !DILocation(line: 58, column: 17, scope: !74)
!105 = !DILocation(line: 58, column: 22, scope: !74)
!106 = !DILocation(line: 58, column: 5, scope: !74)
!107 = !DILocation(line: 58, column: 10, scope: !74)
!108 = !DILocation(line: 58, column: 15, scope: !74)
!109 = !DILocation(line: 59, column: 17, scope: !74)
!110 = !DILocation(line: 59, column: 22, scope: !74)
!111 = !DILocation(line: 59, column: 5, scope: !74)
!112 = !DILocation(line: 59, column: 10, scope: !74)
!113 = !DILocation(line: 59, column: 15, scope: !74)
!114 = !DILocation(line: 60, column: 9, scope: !115)
!115 = distinct !DILexicalBlock(scope: !74, file: !1, line: 60, column: 9)
!116 = !DILocation(line: 60, column: 14, scope: !115)
!117 = !DILocation(line: 60, column: 19, scope: !115)
!118 = !DILocation(line: 60, column: 9, scope: !74)
!119 = !DILocation(line: 61, column: 13, scope: !120)
!120 = distinct !DILexicalBlock(scope: !121, file: !1, line: 61, column: 13)
!121 = distinct !DILexicalBlock(scope: !115, file: !1, line: 60, column: 28)
!122 = !DILocation(line: 61, column: 13, scope: !121)
!123 = !DILocation(line: 62, column: 39, scope: !120)
!124 = !DILocation(line: 62, column: 45, scope: !120)
!125 = !DILocation(line: 62, column: 50, scope: !120)
!126 = !DILocation(line: 62, column: 25, scope: !120)
!127 = !DILocation(line: 62, column: 13, scope: !120)
!128 = !DILocation(line: 62, column: 18, scope: !120)
!129 = !DILocation(line: 62, column: 23, scope: !120)
!130 = !DILocation(line: 64, column: 25, scope: !120)
!131 = !DILocation(line: 64, column: 30, scope: !120)
!132 = !DILocation(line: 64, column: 13, scope: !120)
!133 = !DILocation(line: 64, column: 18, scope: !120)
!134 = !DILocation(line: 64, column: 23, scope: !120)
!135 = !DILocation(line: 65, column: 5, scope: !121)
!136 = !DILocation(line: 67, column: 12, scope: !74)
!137 = !DILocation(line: 67, column: 10, scope: !74)
!138 = !DILocation(line: 68, column: 11, scope: !74)
!139 = !DILocation(line: 68, column: 16, scope: !74)
!140 = !DILocation(line: 68, column: 9, scope: !74)
!141 = !DILocation(line: 69, column: 5, scope: !74)
!142 = !DILocation(line: 69, column: 12, scope: !74)
!143 = !DILocation(line: 69, column: 16, scope: !74)
!144 = !DILocation(line: 70, column: 37, scope: !145)
!145 = distinct !DILexicalBlock(scope: !74, file: !1, line: 69, column: 25)
!146 = !DILocation(line: 70, column: 15, scope: !145)
!147 = !DILocation(line: 70, column: 13, scope: !145)
!148 = !DILocation(line: 71, column: 13, scope: !149)
!149 = distinct !DILexicalBlock(scope: !145, file: !1, line: 71, column: 13)
!150 = !DILocation(line: 71, column: 17, scope: !149)
!151 = !DILocation(line: 71, column: 13, scope: !145)
!152 = !DILocation(line: 72, column: 13, scope: !153)
!153 = distinct !DILexicalBlock(scope: !149, file: !1, line: 71, column: 26)
!154 = !DILocation(line: 73, column: 20, scope: !153)
!155 = !DILocation(line: 73, column: 13, scope: !153)
!156 = !DILocation(line: 77, column: 16, scope: !145)
!157 = !DILocation(line: 77, column: 9, scope: !145)
!158 = !DILocation(line: 83, column: 9, scope: !145)
!159 = !DILocation(line: 85, column: 21, scope: !145)
!160 = !DILocation(line: 85, column: 26, scope: !145)
!161 = !DILocation(line: 85, column: 9, scope: !145)
!162 = !DILocation(line: 85, column: 14, scope: !145)
!163 = !DILocation(line: 85, column: 19, scope: !145)
!164 = !DILocation(line: 86, column: 21, scope: !145)
!165 = !DILocation(line: 86, column: 26, scope: !145)
!166 = !DILocation(line: 86, column: 9, scope: !145)
!167 = !DILocation(line: 86, column: 14, scope: !145)
!168 = !DILocation(line: 86, column: 19, scope: !145)
!169 = !DILocation(line: 87, column: 20, scope: !145)
!170 = !DILocation(line: 87, column: 9, scope: !145)
!171 = !DILocation(line: 87, column: 15, scope: !145)
!172 = !DILocation(line: 87, column: 18, scope: !145)
!173 = !DILocation(line: 88, column: 23, scope: !145)
!174 = !DILocation(line: 88, column: 9, scope: !145)
!175 = !DILocation(line: 88, column: 14, scope: !145)
!176 = !DILocation(line: 88, column: 21, scope: !145)
!177 = !DILocation(line: 89, column: 13, scope: !178)
!178 = distinct !DILexicalBlock(scope: !145, file: !1, line: 89, column: 13)
!179 = !DILocation(line: 89, column: 18, scope: !178)
!180 = !DILocation(line: 89, column: 23, scope: !178)
!181 = !DILocation(line: 89, column: 13, scope: !145)
!182 = !DILocation(line: 90, column: 17, scope: !183)
!183 = distinct !DILexicalBlock(scope: !184, file: !1, line: 90, column: 17)
!184 = distinct !DILexicalBlock(scope: !178, file: !1, line: 89, column: 32)
!185 = !DILocation(line: 90, column: 17, scope: !184)
!186 = !DILocation(line: 91, column: 43, scope: !183)
!187 = !DILocation(line: 91, column: 49, scope: !183)
!188 = !DILocation(line: 91, column: 54, scope: !183)
!189 = !DILocation(line: 91, column: 29, scope: !183)
!190 = !DILocation(line: 91, column: 17, scope: !183)
!191 = !DILocation(line: 91, column: 22, scope: !183)
!192 = !DILocation(line: 91, column: 27, scope: !183)
!193 = !DILocation(line: 93, column: 29, scope: !183)
!194 = !DILocation(line: 93, column: 34, scope: !183)
!195 = !DILocation(line: 93, column: 17, scope: !183)
!196 = !DILocation(line: 93, column: 22, scope: !183)
!197 = !DILocation(line: 93, column: 27, scope: !183)
!198 = !DILocation(line: 94, column: 9, scope: !184)
!199 = !DILocation(line: 95, column: 16, scope: !145)
!200 = !DILocation(line: 95, column: 14, scope: !145)
!201 = !DILocation(line: 96, column: 15, scope: !145)
!202 = !DILocation(line: 96, column: 20, scope: !145)
!203 = !DILocation(line: 96, column: 13, scope: !145)
!204 = distinct !{!204, !141, !205, !206}
!205 = !DILocation(line: 97, column: 5, scope: !74)
!206 = !{!"llvm.loop.mustprogress"}
!207 = !DILocation(line: 99, column: 12, scope: !74)
!208 = !DILocation(line: 99, column: 5, scope: !74)
!209 = !DILocation(line: 100, column: 1, scope: !74)
!210 = distinct !DISubprogram(name: "create_symbolic_list", scope: !1, file: !1, line: 103, type: !211, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!211 = !DISubroutineType(types: !212)
!212 = !{!4, !10}
!213 = !DILocalVariable(name: "max_depth", arg: 1, scope: !210, file: !1, line: 103, type: !10)
!214 = !DILocation(line: 103, column: 47, scope: !210)
!215 = !DILocalVariable(name: "head", scope: !210, file: !1, line: 104, type: !4)
!216 = !DILocation(line: 104, column: 26, scope: !210)
!217 = !DILocalVariable(name: "prev", scope: !210, file: !1, line: 105, type: !4)
!218 = !DILocation(line: 105, column: 26, scope: !210)
!219 = !DILocalVariable(name: "i", scope: !220, file: !1, line: 107, type: !10)
!220 = distinct !DILexicalBlock(scope: !210, file: !1, line: 107, column: 5)
!221 = !DILocation(line: 107, column: 14, scope: !220)
!222 = !DILocation(line: 107, column: 10, scope: !220)
!223 = !DILocation(line: 107, column: 21, scope: !224)
!224 = distinct !DILexicalBlock(scope: !220, file: !1, line: 107, column: 5)
!225 = !DILocation(line: 107, column: 25, scope: !224)
!226 = !DILocation(line: 107, column: 23, scope: !224)
!227 = !DILocation(line: 107, column: 5, scope: !220)
!228 = !DILocalVariable(name: "cur", scope: !229, file: !1, line: 108, type: !4)
!229 = distinct !DILexicalBlock(scope: !224, file: !1, line: 107, column: 41)
!230 = !DILocation(line: 108, column: 30, scope: !229)
!231 = !DILocation(line: 108, column: 58, scope: !229)
!232 = !DILocation(line: 108, column: 36, scope: !229)
!233 = !DILocation(line: 109, column: 28, scope: !229)
!234 = !DILocation(line: 109, column: 9, scope: !229)
!235 = !DILocation(line: 112, column: 21, scope: !229)
!236 = !DILocation(line: 112, column: 26, scope: !229)
!237 = !DILocation(line: 112, column: 31, scope: !229)
!238 = !DILocation(line: 112, column: 36, scope: !229)
!239 = !DILocation(line: 112, column: 39, scope: !229)
!240 = !DILocation(line: 112, column: 44, scope: !229)
!241 = !DILocation(line: 112, column: 49, scope: !229)
!242 = !DILocation(line: 0, scope: !229)
!243 = !DILocation(line: 112, column: 9, scope: !229)
!244 = !DILocation(line: 113, column: 21, scope: !229)
!245 = !DILocation(line: 113, column: 26, scope: !229)
!246 = !DILocation(line: 113, column: 31, scope: !229)
!247 = !DILocation(line: 113, column: 36, scope: !229)
!248 = !DILocation(line: 113, column: 39, scope: !229)
!249 = !DILocation(line: 113, column: 44, scope: !229)
!250 = !DILocation(line: 113, column: 49, scope: !229)
!251 = !DILocation(line: 113, column: 9, scope: !229)
!252 = !DILocalVariable(name: "name_buf", scope: !229, file: !1, line: 116, type: !253)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 256, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 32)
!256 = !DILocation(line: 116, column: 14, scope: !229)
!257 = !DILocation(line: 117, column: 28, scope: !229)
!258 = !DILocation(line: 117, column: 9, scope: !229)
!259 = !DILocation(line: 118, column: 21, scope: !229)
!260 = !DILocation(line: 118, column: 9, scope: !229)
!261 = !DILocation(line: 118, column: 14, scope: !229)
!262 = !DILocation(line: 118, column: 19, scope: !229)
!263 = !DILocation(line: 121, column: 9, scope: !229)
!264 = !DILocation(line: 121, column: 14, scope: !229)
!265 = !DILocation(line: 121, column: 17, scope: !229)
!266 = !DILocation(line: 122, column: 9, scope: !229)
!267 = !DILocation(line: 122, column: 14, scope: !229)
!268 = !DILocation(line: 122, column: 21, scope: !229)
!269 = !DILocation(line: 124, column: 13, scope: !270)
!270 = distinct !DILexicalBlock(scope: !229, file: !1, line: 124, column: 13)
!271 = !DILocation(line: 124, column: 13, scope: !229)
!272 = !DILocation(line: 125, column: 24, scope: !273)
!273 = distinct !DILexicalBlock(scope: !270, file: !1, line: 124, column: 19)
!274 = !DILocation(line: 125, column: 13, scope: !273)
!275 = !DILocation(line: 125, column: 19, scope: !273)
!276 = !DILocation(line: 125, column: 22, scope: !273)
!277 = !DILocation(line: 126, column: 9, scope: !273)
!278 = !DILocation(line: 127, column: 20, scope: !279)
!279 = distinct !DILexicalBlock(scope: !270, file: !1, line: 126, column: 16)
!280 = !DILocation(line: 127, column: 18, scope: !279)
!281 = !DILocation(line: 129, column: 16, scope: !229)
!282 = !DILocation(line: 129, column: 14, scope: !229)
!283 = !DILocalVariable(name: "continue_list", scope: !229, file: !1, line: 132, type: !10)
!284 = !DILocation(line: 132, column: 13, scope: !229)
!285 = !DILocation(line: 133, column: 28, scope: !229)
!286 = !DILocation(line: 133, column: 9, scope: !229)
!287 = !DILocation(line: 134, column: 21, scope: !229)
!288 = !DILocation(line: 134, column: 35, scope: !229)
!289 = !DILocation(line: 134, column: 40, scope: !229)
!290 = !DILocation(line: 134, column: 43, scope: !229)
!291 = !DILocation(line: 134, column: 57, scope: !229)
!292 = !DILocation(line: 134, column: 9, scope: !229)
!293 = !DILocation(line: 136, column: 13, scope: !294)
!294 = distinct !DILexicalBlock(scope: !229, file: !1, line: 136, column: 13)
!295 = !DILocation(line: 136, column: 27, scope: !294)
!296 = !DILocation(line: 136, column: 13, scope: !229)
!297 = !DILocation(line: 137, column: 13, scope: !298)
!298 = distinct !DILexicalBlock(scope: !294, file: !1, line: 136, column: 33)
!299 = !DILocation(line: 139, column: 5, scope: !229)
!300 = !DILocation(line: 107, column: 37, scope: !224)
!301 = !DILocation(line: 107, column: 5, scope: !224)
!302 = distinct !{!302, !227, !303, !206}
!303 = !DILocation(line: 139, column: 5, scope: !220)
!304 = !DILocation(line: 141, column: 12, scope: !210)
!305 = !DILocation(line: 141, column: 5, scope: !210)
!306 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 145, type: !307, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!307 = !DISubroutineType(types: !308)
!308 = !{!10}
!309 = !DILocalVariable(name: "list", scope: !306, file: !1, line: 147, type: !4)
!310 = !DILocation(line: 147, column: 26, scope: !306)
!311 = !DILocation(line: 147, column: 33, scope: !306)
!312 = !DILocalVariable(name: "dict", scope: !306, file: !1, line: 150, type: !3)
!313 = !DILocation(line: 150, column: 11, scope: !306)
!314 = !DILocation(line: 151, column: 24, scope: !306)
!315 = !DILocation(line: 151, column: 5, scope: !306)
!316 = !DILocalVariable(name: "result", scope: !306, file: !1, line: 154, type: !4)
!317 = !DILocation(line: 154, column: 26, scope: !306)
!318 = !DILocation(line: 154, column: 51, scope: !306)
!319 = !DILocation(line: 154, column: 57, scope: !306)
!320 = !DILocation(line: 154, column: 35, scope: !306)
!321 = !DILocation(line: 157, column: 5, scope: !306)
!322 = !DILocation(line: 157, column: 12, scope: !306)
!323 = !DILocation(line: 157, column: 17, scope: !306)
!324 = !DILocalVariable(name: "next", scope: !325, file: !1, line: 158, type: !4)
!325 = distinct !DILexicalBlock(scope: !306, file: !1, line: 157, column: 26)
!326 = !DILocation(line: 158, column: 30, scope: !325)
!327 = !DILocation(line: 158, column: 37, scope: !325)
!328 = !DILocation(line: 158, column: 43, scope: !325)
!329 = !DILocation(line: 159, column: 14, scope: !325)
!330 = !DILocation(line: 159, column: 9, scope: !325)
!331 = !DILocation(line: 160, column: 16, scope: !325)
!332 = !DILocation(line: 160, column: 14, scope: !325)
!333 = distinct !{!333, !321, !334, !206}
!334 = !DILocation(line: 161, column: 5, scope: !306)
!335 = !DILocation(line: 163, column: 5, scope: !306)
!336 = distinct !DISubprogram(name: "memset", scope: !337, file: !337, line: 12, type: !338, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !34)
!337 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!338 = !DISubroutineType(types: !339)
!339 = !{!3, !3, !10, !31}
!340 = !DILocalVariable(name: "dst", arg: 1, scope: !336, file: !337, line: 12, type: !3)
!341 = !DILocation(line: 12, column: 20, scope: !336)
!342 = !DILocalVariable(name: "s", arg: 2, scope: !336, file: !337, line: 12, type: !10)
!343 = !DILocation(line: 12, column: 29, scope: !336)
!344 = !DILocalVariable(name: "count", arg: 3, scope: !336, file: !337, line: 12, type: !31)
!345 = !DILocation(line: 12, column: 39, scope: !336)
!346 = !DILocalVariable(name: "a", scope: !336, file: !337, line: 13, type: !347)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!348 = !DILocation(line: 13, column: 9, scope: !336)
!349 = !DILocation(line: 13, column: 13, scope: !336)
!350 = !DILocation(line: 14, column: 3, scope: !336)
!351 = !DILocation(line: 14, column: 15, scope: !336)
!352 = !DILocation(line: 14, column: 18, scope: !336)
!353 = !DILocation(line: 15, column: 12, scope: !336)
!354 = !DILocation(line: 15, column: 7, scope: !336)
!355 = !DILocation(line: 15, column: 10, scope: !336)
!356 = distinct !{!356, !350, !353, !206}
!357 = !DILocation(line: 16, column: 10, scope: !336)
!358 = !DILocation(line: 16, column: 3, scope: !336)

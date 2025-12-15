; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/033_hash.c_273_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/033_hash.c_273_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlHashTable = type { %struct._xmlHashEntry*, i32 }
%struct._xmlHashEntry = type { i32, i8*, i8*, i8*, %struct._xmlHashEntry* }

@.str = private unnamed_addr constant [8 x i8] c"oldsize\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"table_size\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"(key >= 0 && key < table->size) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_55980_vul/033_hash.c_273_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.vulnerable_function = private unnamed_addr constant [62 x i8] c"void vulnerable_function(xmlHashTable *, xmlHashEntry *, int)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"key\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !24 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlHashTable, align 8
  %3 = alloca %struct._xmlHashEntry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlHashTable* %2, metadata !28, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata %struct._xmlHashEntry** %3, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i32* %4, metadata !37, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata i32* %5, metadata !39, metadata !DIExpression()), !dbg !40
  %7 = bitcast i32* %4 to i8*, !dbg !41
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)), !dbg !42
  %8 = bitcast i32* %5 to i8*, !dbg !43
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)), !dbg !44
  %9 = load i32, i32* %4, align 4, !dbg !45
  %10 = icmp sgt i32 %9, 0, !dbg !46
  br i1 %10, label %11, label %14, !dbg !47

11:                                               ; preds = %0
  %12 = load i32, i32* %4, align 4, !dbg !48
  %13 = icmp sle i32 %12, 100, !dbg !49
  br label %14

14:                                               ; preds = %11, %0
  %15 = phi i1 [ false, %0 ], [ %13, %11 ], !dbg !50
  %16 = zext i1 %15 to i32, !dbg !47
  %17 = sext i32 %16 to i64, !dbg !45
  call void @klee_assume(i64 noundef %17), !dbg !51
  %18 = load i32, i32* %5, align 4, !dbg !52
  %19 = icmp sgt i32 %18, 0, !dbg !53
  br i1 %19, label %20, label %23, !dbg !54

20:                                               ; preds = %14
  %21 = load i32, i32* %5, align 4, !dbg !55
  %22 = icmp sle i32 %21, 100, !dbg !56
  br label %23

23:                                               ; preds = %20, %14
  %24 = phi i1 [ false, %14 ], [ %22, %20 ], !dbg !50
  %25 = zext i1 %24 to i32, !dbg !54
  %26 = sext i32 %25 to i64, !dbg !52
  call void @klee_assume(i64 noundef %26), !dbg !57
  %27 = load i32, i32* %5, align 4, !dbg !58
  %28 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %2, i32 0, i32 1, !dbg !59
  store i32 %27, i32* %28, align 8, !dbg !60
  %29 = load i32, i32* %5, align 4, !dbg !61
  %30 = sext i32 %29 to i64, !dbg !61
  %31 = call noalias i8* @calloc(i64 noundef %30, i64 noundef 40) #7, !dbg !62
  %32 = bitcast i8* %31 to %struct._xmlHashEntry*, !dbg !63
  %33 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %2, i32 0, i32 0, !dbg !64
  store %struct._xmlHashEntry* %32, %struct._xmlHashEntry** %33, align 8, !dbg !65
  %34 = load i32, i32* %4, align 4, !dbg !66
  %35 = sext i32 %34 to i64, !dbg !66
  %36 = call noalias i8* @calloc(i64 noundef %35, i64 noundef 40) #7, !dbg !67
  %37 = bitcast i8* %36 to %struct._xmlHashEntry*, !dbg !68
  store %struct._xmlHashEntry* %37, %struct._xmlHashEntry** %3, align 8, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %6, metadata !70, metadata !DIExpression()), !dbg !72
  store i32 0, i32* %6, align 4, !dbg !72
  br label %38, !dbg !73

38:                                               ; preds = %73, %23
  %39 = load i32, i32* %6, align 4, !dbg !74
  %40 = load i32, i32* %4, align 4, !dbg !76
  %41 = icmp slt i32 %39, %40, !dbg !77
  br i1 %41, label %42, label %76, !dbg !78

42:                                               ; preds = %38
  %43 = load i32, i32* %6, align 4, !dbg !79
  %44 = srem i32 %43, 2, !dbg !81
  %45 = icmp eq i32 %44, 0, !dbg !82
  %46 = zext i1 %45 to i64, !dbg !83
  %47 = select i1 %45, i32 1, i32 0, !dbg !83
  %48 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %3, align 8, !dbg !84
  %49 = load i32, i32* %6, align 4, !dbg !85
  %50 = sext i32 %49 to i64, !dbg !84
  %51 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %48, i64 %50, !dbg !84
  %52 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %51, i32 0, i32 0, !dbg !86
  store i32 %47, i32* %52, align 8, !dbg !87
  %53 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %3, align 8, !dbg !88
  %54 = load i32, i32* %6, align 4, !dbg !89
  %55 = sext i32 %54 to i64, !dbg !88
  %56 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %53, i64 %55, !dbg !88
  %57 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %56, i32 0, i32 1, !dbg !90
  store i8* null, i8** %57, align 8, !dbg !91
  %58 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %3, align 8, !dbg !92
  %59 = load i32, i32* %6, align 4, !dbg !93
  %60 = sext i32 %59 to i64, !dbg !92
  %61 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %58, i64 %60, !dbg !92
  %62 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %61, i32 0, i32 2, !dbg !94
  store i8* null, i8** %62, align 8, !dbg !95
  %63 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %3, align 8, !dbg !96
  %64 = load i32, i32* %6, align 4, !dbg !97
  %65 = sext i32 %64 to i64, !dbg !96
  %66 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %63, i64 %65, !dbg !96
  %67 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %66, i32 0, i32 3, !dbg !98
  store i8* null, i8** %67, align 8, !dbg !99
  %68 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %3, align 8, !dbg !100
  %69 = load i32, i32* %6, align 4, !dbg !101
  %70 = sext i32 %69 to i64, !dbg !100
  %71 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %68, i64 %70, !dbg !100
  %72 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %71, i32 0, i32 4, !dbg !102
  store %struct._xmlHashEntry* null, %struct._xmlHashEntry** %72, align 8, !dbg !103
  br label %73, !dbg !104

73:                                               ; preds = %42
  %74 = load i32, i32* %6, align 4, !dbg !105
  %75 = add nsw i32 %74, 1, !dbg !105
  store i32 %75, i32* %6, align 4, !dbg !105
  br label %38, !dbg !106, !llvm.loop !107

76:                                               ; preds = %38
  %77 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %3, align 8, !dbg !110
  %78 = load i32, i32* %4, align 4, !dbg !111
  call void @vulnerable_function(%struct._xmlHashTable* noundef %2, %struct._xmlHashEntry* noundef %77, i32 noundef %78), !dbg !112
  %79 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %2, i32 0, i32 0, !dbg !113
  %80 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %79, align 8, !dbg !113
  %81 = bitcast %struct._xmlHashEntry* %80 to i8*, !dbg !114
  call void @free(i8* noundef %81) #7, !dbg !115
  %82 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %3, align 8, !dbg !116
  %83 = bitcast %struct._xmlHashEntry* %82 to i8*, !dbg !116
  call void @free(i8* noundef %83) #7, !dbg !117
  ret i32 0, !dbg !118
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vulnerable_function(%struct._xmlHashTable* noundef %0, %struct._xmlHashEntry* noundef %1, i32 noundef %2) #0 !dbg !119 {
  %4 = alloca %struct._xmlHashTable*, align 8
  %5 = alloca %struct._xmlHashEntry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct._xmlHashEntry*, align 8
  %10 = alloca %struct._xmlHashEntry*, align 8
  store %struct._xmlHashTable* %0, %struct._xmlHashTable** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlHashTable** %4, metadata !123, metadata !DIExpression()), !dbg !124
  store %struct._xmlHashEntry* %1, %struct._xmlHashEntry** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlHashEntry** %5, metadata !125, metadata !DIExpression()), !dbg !126
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !127, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.declare(metadata i32* %7, metadata !129, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.declare(metadata i32* %8, metadata !131, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.declare(metadata %struct._xmlHashEntry** %9, metadata !133, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.declare(metadata %struct._xmlHashEntry** %10, metadata !135, metadata !DIExpression()), !dbg !136
  store i32 0, i32* %7, align 4, !dbg !137
  br label %11, !dbg !139

11:                                               ; preds = %79, %3
  %12 = load i32, i32* %7, align 4, !dbg !140
  %13 = load i32, i32* %6, align 4, !dbg !142
  %14 = icmp slt i32 %12, %13, !dbg !143
  br i1 %14, label %15, label %82, !dbg !144

15:                                               ; preds = %11
  %16 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %5, align 8, !dbg !145
  %17 = load i32, i32* %7, align 4, !dbg !148
  %18 = sext i32 %17 to i64, !dbg !145
  %19 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %16, i64 %18, !dbg !145
  %20 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %19, i32 0, i32 0, !dbg !149
  %21 = load i32, i32* %20, align 8, !dbg !149
  %22 = icmp eq i32 %21, 0, !dbg !150
  br i1 %22, label %23, label %24, !dbg !151

23:                                               ; preds = %15
  br label %79, !dbg !152

24:                                               ; preds = %15
  %25 = load %struct._xmlHashTable*, %struct._xmlHashTable** %4, align 8, !dbg !153
  %26 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %5, align 8, !dbg !154
  %27 = load i32, i32* %7, align 4, !dbg !155
  %28 = sext i32 %27 to i64, !dbg !154
  %29 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %26, i64 %28, !dbg !154
  %30 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %29, i32 0, i32 1, !dbg !156
  %31 = load i8*, i8** %30, align 8, !dbg !156
  %32 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %5, align 8, !dbg !157
  %33 = load i32, i32* %7, align 4, !dbg !158
  %34 = sext i32 %33 to i64, !dbg !157
  %35 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %32, i64 %34, !dbg !157
  %36 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %35, i32 0, i32 2, !dbg !159
  %37 = load i8*, i8** %36, align 8, !dbg !159
  %38 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %5, align 8, !dbg !160
  %39 = load i32, i32* %7, align 4, !dbg !161
  %40 = sext i32 %39 to i64, !dbg !160
  %41 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %38, i64 %40, !dbg !160
  %42 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %41, i32 0, i32 3, !dbg !162
  %43 = load i8*, i8** %42, align 8, !dbg !162
  %44 = call i32 @xmlHashComputeKey(%struct._xmlHashTable* noundef %25, i8* noundef %31, i8* noundef %37, i8* noundef %43), !dbg !163
  store i32 %44, i32* %8, align 4, !dbg !164
  %45 = load i32, i32* %8, align 4, !dbg !165
  %46 = icmp sge i32 %45, 0, !dbg !165
  br i1 %46, label %47, label %55, !dbg !165

47:                                               ; preds = %24
  %48 = load i32, i32* %8, align 4, !dbg !165
  %49 = load %struct._xmlHashTable*, %struct._xmlHashTable** %4, align 8, !dbg !165
  %50 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %49, i32 0, i32 1, !dbg !165
  %51 = load i32, i32* %50, align 8, !dbg !165
  %52 = icmp slt i32 %48, %51, !dbg !165
  br i1 %52, label %53, label %55, !dbg !165

53:                                               ; preds = %47
  br i1 true, label %54, label %55, !dbg !165

54:                                               ; preds = %53
  br label %57, !dbg !165

55:                                               ; preds = %53, %47, %24
  %56 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.4, i64 0, i64 0), i32 noundef 46, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.vulnerable_function, i64 0, i64 0)), !dbg !165
  br label %57, !dbg !165

57:                                               ; preds = %55, %54
  %58 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.4, i64 0, i64 0), i32 noundef 49, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.vulnerable_function, i64 0, i64 0)), !dbg !166
  %59 = load %struct._xmlHashTable*, %struct._xmlHashTable** %4, align 8, !dbg !167
  %60 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %59, i32 0, i32 0, !dbg !168
  %61 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %60, align 8, !dbg !168
  %62 = load i32, i32* %8, align 4, !dbg !169
  %63 = sext i32 %62 to i64, !dbg !167
  %64 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %61, i64 %63, !dbg !167
  %65 = bitcast %struct._xmlHashEntry* %64 to i8*, !dbg !170
  %66 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %5, align 8, !dbg !171
  %67 = load i32, i32* %7, align 4, !dbg !172
  %68 = sext i32 %67 to i64, !dbg !171
  %69 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %66, i64 %68, !dbg !171
  %70 = bitcast %struct._xmlHashEntry* %69 to i8*, !dbg !170
  %71 = call i8* @memcpy(i8* %65, i8* %70, i64 40), !dbg !170
  %72 = load %struct._xmlHashTable*, %struct._xmlHashTable** %4, align 8, !dbg !173
  %73 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %72, i32 0, i32 0, !dbg !174
  %74 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %73, align 8, !dbg !174
  %75 = load i32, i32* %8, align 4, !dbg !175
  %76 = sext i32 %75 to i64, !dbg !173
  %77 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %74, i64 %76, !dbg !173
  %78 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %77, i32 0, i32 4, !dbg !176
  store %struct._xmlHashEntry* null, %struct._xmlHashEntry** %78, align 8, !dbg !177
  br label %79, !dbg !178

79:                                               ; preds = %57, %23
  %80 = load i32, i32* %7, align 4, !dbg !179
  %81 = add nsw i32 %80, 1, !dbg !179
  store i32 %81, i32* %7, align 4, !dbg !179
  br label %11, !dbg !180, !llvm.loop !181

82:                                               ; preds = %11
  store i32 0, i32* %7, align 4, !dbg !183
  br label %83, !dbg !185

83:                                               ; preds = %103, %82
  %84 = load i32, i32* %7, align 4, !dbg !186
  %85 = load i32, i32* %6, align 4, !dbg !188
  %86 = icmp slt i32 %84, %85, !dbg !189
  br i1 %86, label %87, label %106, !dbg !190

87:                                               ; preds = %83
  %88 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %5, align 8, !dbg !191
  %89 = load i32, i32* %7, align 4, !dbg !193
  %90 = sext i32 %89 to i64, !dbg !191
  %91 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %88, i64 %90, !dbg !191
  %92 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %91, i32 0, i32 4, !dbg !194
  %93 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %92, align 8, !dbg !194
  store %struct._xmlHashEntry* %93, %struct._xmlHashEntry** %9, align 8, !dbg !195
  br label %94, !dbg !196

94:                                               ; preds = %97, %87
  %95 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %9, align 8, !dbg !197
  %96 = icmp ne %struct._xmlHashEntry* %95, null, !dbg !196
  br i1 %96, label %97, label %102, !dbg !196

97:                                               ; preds = %94
  %98 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %9, align 8, !dbg !198
  %99 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %98, i32 0, i32 4, !dbg !200
  %100 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %99, align 8, !dbg !200
  store %struct._xmlHashEntry* %100, %struct._xmlHashEntry** %10, align 8, !dbg !201
  %101 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %10, align 8, !dbg !202
  store %struct._xmlHashEntry* %101, %struct._xmlHashEntry** %9, align 8, !dbg !203
  br label %94, !dbg !196, !llvm.loop !204

102:                                              ; preds = %94
  br label %103, !dbg !206

103:                                              ; preds = %102
  %104 = load i32, i32* %7, align 4, !dbg !207
  %105 = add nsw i32 %104, 1, !dbg !207
  store i32 %105, i32* %7, align 4, !dbg !207
  br label %83, !dbg !208, !llvm.loop !209

106:                                              ; preds = %83
  ret void, !dbg !211
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xmlHashComputeKey(%struct._xmlHashTable* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #0 !dbg !212 {
  %5 = alloca %struct._xmlHashTable*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct._xmlHashTable* %0, %struct._xmlHashTable** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlHashTable** %5, metadata !215, metadata !DIExpression()), !dbg !216
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !217, metadata !DIExpression()), !dbg !218
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !219, metadata !DIExpression()), !dbg !220
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !221, metadata !DIExpression()), !dbg !222
  call void @llvm.dbg.declare(metadata i32* %9, metadata !223, metadata !DIExpression()), !dbg !224
  %10 = bitcast i32* %9 to i8*, !dbg !225
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)), !dbg !226
  %11 = load i32, i32* %9, align 4, !dbg !227
  %12 = icmp sge i32 %11, 0, !dbg !228
  %13 = zext i1 %12 to i32, !dbg !228
  %14 = sext i32 %13 to i64, !dbg !227
  call void @klee_assume(i64 noundef %14), !dbg !229
  %15 = load i32, i32* %9, align 4, !dbg !230
  %16 = load %struct._xmlHashTable*, %struct._xmlHashTable** %5, align 8, !dbg !231
  %17 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %16, i32 0, i32 1, !dbg !232
  %18 = load i32, i32* %17, align 8, !dbg !232
  %19 = icmp slt i32 %15, %18, !dbg !233
  %20 = zext i1 %19 to i32, !dbg !233
  %21 = sext i32 %20 to i64, !dbg !230
  call void @klee_assume(i64 noundef %21), !dbg !234
  %22 = load i32, i32* %9, align 4, !dbg !235
  ret i32 %22, !dbg !236
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !237 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !246, metadata !DIExpression()), !dbg !247
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !248, metadata !DIExpression()), !dbg !249
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !250, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.declare(metadata i8** %7, metadata !252, metadata !DIExpression()), !dbg !255
  %9 = load i8*, i8** %4, align 8, !dbg !256
  store i8* %9, i8** %7, align 8, !dbg !255
  call void @llvm.dbg.declare(metadata i8** %8, metadata !257, metadata !DIExpression()), !dbg !260
  %10 = load i8*, i8** %5, align 8, !dbg !261
  store i8* %10, i8** %8, align 8, !dbg !260
  br label %11, !dbg !262

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !263
  %13 = add i64 %12, -1, !dbg !263
  store i64 %13, i64* %6, align 8, !dbg !263
  %14 = icmp ugt i64 %12, 0, !dbg !264
  br i1 %14, label %15, label %21, !dbg !262

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !265
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !265
  store i8* %17, i8** %8, align 8, !dbg !265
  %18 = load i8, i8* %16, align 1, !dbg !266
  %19 = load i8*, i8** %7, align 8, !dbg !267
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !267
  store i8* %20, i8** %7, align 8, !dbg !267
  store i8 %18, i8* %19, align 1, !dbg !268
  br label %11, !dbg !262, !llvm.loop !269

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !270
  ret i8* %22, !dbg !271
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23, !23}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/033_hash.c_273_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "587bdeeece7d5f3d09ef9a493541bb1e")
!2 = !{!3, !10}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashEntry", file: !1, line: 10, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlHashEntry", file: !1, line: 11, size: 320, elements: !6)
!6 = !{!7, !9, !11, !12, !13}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !5, file: !1, line: 12, baseType: !8, size: 32)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5, file: !1, line: 13, baseType: !10, size: 64, offset: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "name2", scope: !5, file: !1, line: 14, baseType: !10, size: 64, offset: 128)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "name3", scope: !5, file: !1, line: 15, baseType: !10, size: 64, offset: 192)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5, file: !1, line: 16, baseType: !3, size: 64, offset: 256)
!14 = distinct !DICompileUnit(language: DW_LANG_C99, file: !15, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!15 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!16 = !{i32 7, !"Dwarf Version", i32 5}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{i32 7, !"PIC Level", i32 2}
!20 = !{i32 7, !"PIE Level", i32 2}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"Ubuntu clang version 14.0.6"}
!24 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 65, type: !25, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !27)
!25 = !DISubroutineType(types: !26)
!26 = !{!8}
!27 = !{}
!28 = !DILocalVariable(name: "table", scope: !24, file: !1, line: 66, type: !29)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTable", file: !1, line: 19, baseType: !30)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlHashTable", file: !1, line: 20, size: 128, elements: !31)
!31 = !{!32, !33}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !30, file: !1, line: 21, baseType: !3, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !30, file: !1, line: 22, baseType: !8, size: 32, offset: 64)
!34 = !DILocation(line: 66, column: 18, scope: !24)
!35 = !DILocalVariable(name: "oldtable", scope: !24, file: !1, line: 67, type: !3)
!36 = !DILocation(line: 67, column: 19, scope: !24)
!37 = !DILocalVariable(name: "oldsize", scope: !24, file: !1, line: 68, type: !8)
!38 = !DILocation(line: 68, column: 9, scope: !24)
!39 = !DILocalVariable(name: "table_size", scope: !24, file: !1, line: 68, type: !8)
!40 = !DILocation(line: 68, column: 18, scope: !24)
!41 = !DILocation(line: 71, column: 24, scope: !24)
!42 = !DILocation(line: 71, column: 5, scope: !24)
!43 = !DILocation(line: 72, column: 24, scope: !24)
!44 = !DILocation(line: 72, column: 5, scope: !24)
!45 = !DILocation(line: 75, column: 17, scope: !24)
!46 = !DILocation(line: 75, column: 25, scope: !24)
!47 = !DILocation(line: 75, column: 29, scope: !24)
!48 = !DILocation(line: 75, column: 32, scope: !24)
!49 = !DILocation(line: 75, column: 40, scope: !24)
!50 = !DILocation(line: 0, scope: !24)
!51 = !DILocation(line: 75, column: 5, scope: !24)
!52 = !DILocation(line: 76, column: 17, scope: !24)
!53 = !DILocation(line: 76, column: 28, scope: !24)
!54 = !DILocation(line: 76, column: 32, scope: !24)
!55 = !DILocation(line: 76, column: 35, scope: !24)
!56 = !DILocation(line: 76, column: 46, scope: !24)
!57 = !DILocation(line: 76, column: 5, scope: !24)
!58 = !DILocation(line: 79, column: 18, scope: !24)
!59 = !DILocation(line: 79, column: 11, scope: !24)
!60 = !DILocation(line: 79, column: 16, scope: !24)
!61 = !DILocation(line: 80, column: 42, scope: !24)
!62 = !DILocation(line: 80, column: 35, scope: !24)
!63 = !DILocation(line: 80, column: 19, scope: !24)
!64 = !DILocation(line: 80, column: 11, scope: !24)
!65 = !DILocation(line: 80, column: 17, scope: !24)
!66 = !DILocation(line: 83, column: 39, scope: !24)
!67 = !DILocation(line: 83, column: 32, scope: !24)
!68 = !DILocation(line: 83, column: 16, scope: !24)
!69 = !DILocation(line: 83, column: 14, scope: !24)
!70 = !DILocalVariable(name: "i", scope: !71, file: !1, line: 86, type: !8)
!71 = distinct !DILexicalBlock(scope: !24, file: !1, line: 86, column: 5)
!72 = !DILocation(line: 86, column: 14, scope: !71)
!73 = !DILocation(line: 86, column: 10, scope: !71)
!74 = !DILocation(line: 86, column: 21, scope: !75)
!75 = distinct !DILexicalBlock(scope: !71, file: !1, line: 86, column: 5)
!76 = !DILocation(line: 86, column: 25, scope: !75)
!77 = !DILocation(line: 86, column: 23, scope: !75)
!78 = !DILocation(line: 86, column: 5, scope: !71)
!79 = !DILocation(line: 87, column: 30, scope: !80)
!80 = distinct !DILexicalBlock(scope: !75, file: !1, line: 86, column: 39)
!81 = !DILocation(line: 87, column: 32, scope: !80)
!82 = !DILocation(line: 87, column: 36, scope: !80)
!83 = !DILocation(line: 87, column: 29, scope: !80)
!84 = !DILocation(line: 87, column: 9, scope: !80)
!85 = !DILocation(line: 87, column: 18, scope: !80)
!86 = !DILocation(line: 87, column: 21, scope: !80)
!87 = !DILocation(line: 87, column: 27, scope: !80)
!88 = !DILocation(line: 88, column: 9, scope: !80)
!89 = !DILocation(line: 88, column: 18, scope: !80)
!90 = !DILocation(line: 88, column: 21, scope: !80)
!91 = !DILocation(line: 88, column: 26, scope: !80)
!92 = !DILocation(line: 89, column: 9, scope: !80)
!93 = !DILocation(line: 89, column: 18, scope: !80)
!94 = !DILocation(line: 89, column: 21, scope: !80)
!95 = !DILocation(line: 89, column: 27, scope: !80)
!96 = !DILocation(line: 90, column: 9, scope: !80)
!97 = !DILocation(line: 90, column: 18, scope: !80)
!98 = !DILocation(line: 90, column: 21, scope: !80)
!99 = !DILocation(line: 90, column: 27, scope: !80)
!100 = !DILocation(line: 91, column: 9, scope: !80)
!101 = !DILocation(line: 91, column: 18, scope: !80)
!102 = !DILocation(line: 91, column: 21, scope: !80)
!103 = !DILocation(line: 91, column: 26, scope: !80)
!104 = !DILocation(line: 92, column: 5, scope: !80)
!105 = !DILocation(line: 86, column: 35, scope: !75)
!106 = !DILocation(line: 86, column: 5, scope: !75)
!107 = distinct !{!107, !78, !108, !109}
!108 = !DILocation(line: 92, column: 5, scope: !71)
!109 = !{!"llvm.loop.mustprogress"}
!110 = !DILocation(line: 95, column: 33, scope: !24)
!111 = !DILocation(line: 95, column: 43, scope: !24)
!112 = !DILocation(line: 95, column: 5, scope: !24)
!113 = !DILocation(line: 98, column: 16, scope: !24)
!114 = !DILocation(line: 98, column: 10, scope: !24)
!115 = !DILocation(line: 98, column: 5, scope: !24)
!116 = !DILocation(line: 99, column: 10, scope: !24)
!117 = !DILocation(line: 99, column: 5, scope: !24)
!118 = !DILocation(line: 101, column: 5, scope: !24)
!119 = distinct !DISubprogram(name: "vulnerable_function", scope: !1, file: !1, line: 35, type: !120, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !27)
!120 = !DISubroutineType(types: !121)
!121 = !{null, !122, !3, !8}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!123 = !DILocalVariable(name: "table", arg: 1, scope: !119, file: !1, line: 35, type: !122)
!124 = !DILocation(line: 35, column: 47, scope: !119)
!125 = !DILocalVariable(name: "oldtable", arg: 2, scope: !119, file: !1, line: 35, type: !3)
!126 = !DILocation(line: 35, column: 68, scope: !119)
!127 = !DILocalVariable(name: "oldsize", arg: 3, scope: !119, file: !1, line: 35, type: !8)
!128 = !DILocation(line: 35, column: 82, scope: !119)
!129 = !DILocalVariable(name: "i", scope: !119, file: !1, line: 36, type: !8)
!130 = !DILocation(line: 36, column: 9, scope: !119)
!131 = !DILocalVariable(name: "key", scope: !119, file: !1, line: 36, type: !8)
!132 = !DILocation(line: 36, column: 12, scope: !119)
!133 = !DILocalVariable(name: "iter", scope: !119, file: !1, line: 37, type: !3)
!134 = !DILocation(line: 37, column: 19, scope: !119)
!135 = !DILocalVariable(name: "next", scope: !119, file: !1, line: 37, type: !3)
!136 = !DILocation(line: 37, column: 26, scope: !119)
!137 = !DILocation(line: 39, column: 12, scope: !138)
!138 = distinct !DILexicalBlock(scope: !119, file: !1, line: 39, column: 5)
!139 = !DILocation(line: 39, column: 10, scope: !138)
!140 = !DILocation(line: 39, column: 17, scope: !141)
!141 = distinct !DILexicalBlock(scope: !138, file: !1, line: 39, column: 5)
!142 = !DILocation(line: 39, column: 21, scope: !141)
!143 = !DILocation(line: 39, column: 19, scope: !141)
!144 = !DILocation(line: 39, column: 5, scope: !138)
!145 = !DILocation(line: 40, column: 13, scope: !146)
!146 = distinct !DILexicalBlock(scope: !147, file: !1, line: 40, column: 13)
!147 = distinct !DILexicalBlock(scope: !141, file: !1, line: 39, column: 35)
!148 = !DILocation(line: 40, column: 22, scope: !146)
!149 = !DILocation(line: 40, column: 25, scope: !146)
!150 = !DILocation(line: 40, column: 31, scope: !146)
!151 = !DILocation(line: 40, column: 13, scope: !147)
!152 = !DILocation(line: 41, column: 13, scope: !146)
!153 = !DILocation(line: 42, column: 33, scope: !147)
!154 = !DILocation(line: 42, column: 40, scope: !147)
!155 = !DILocation(line: 42, column: 49, scope: !147)
!156 = !DILocation(line: 42, column: 52, scope: !147)
!157 = !DILocation(line: 42, column: 58, scope: !147)
!158 = !DILocation(line: 42, column: 67, scope: !147)
!159 = !DILocation(line: 42, column: 70, scope: !147)
!160 = !DILocation(line: 43, column: 33, scope: !147)
!161 = !DILocation(line: 43, column: 42, scope: !147)
!162 = !DILocation(line: 43, column: 45, scope: !147)
!163 = !DILocation(line: 42, column: 15, scope: !147)
!164 = !DILocation(line: 42, column: 13, scope: !147)
!165 = !DILocation(line: 46, column: 9, scope: !147)
!166 = !DILocation(line: 49, column: 9, scope: !147)
!167 = !DILocation(line: 51, column: 18, scope: !147)
!168 = !DILocation(line: 51, column: 25, scope: !147)
!169 = !DILocation(line: 51, column: 31, scope: !147)
!170 = !DILocation(line: 51, column: 9, scope: !147)
!171 = !DILocation(line: 51, column: 40, scope: !147)
!172 = !DILocation(line: 51, column: 49, scope: !147)
!173 = !DILocation(line: 52, column: 9, scope: !147)
!174 = !DILocation(line: 52, column: 16, scope: !147)
!175 = !DILocation(line: 52, column: 22, scope: !147)
!176 = !DILocation(line: 52, column: 27, scope: !147)
!177 = !DILocation(line: 52, column: 32, scope: !147)
!178 = !DILocation(line: 53, column: 5, scope: !147)
!179 = !DILocation(line: 39, column: 31, scope: !141)
!180 = !DILocation(line: 39, column: 5, scope: !141)
!181 = distinct !{!181, !144, !182, !109}
!182 = !DILocation(line: 53, column: 5, scope: !138)
!183 = !DILocation(line: 55, column: 12, scope: !184)
!184 = distinct !DILexicalBlock(scope: !119, file: !1, line: 55, column: 5)
!185 = !DILocation(line: 55, column: 10, scope: !184)
!186 = !DILocation(line: 55, column: 17, scope: !187)
!187 = distinct !DILexicalBlock(scope: !184, file: !1, line: 55, column: 5)
!188 = !DILocation(line: 55, column: 21, scope: !187)
!189 = !DILocation(line: 55, column: 19, scope: !187)
!190 = !DILocation(line: 55, column: 5, scope: !184)
!191 = !DILocation(line: 56, column: 16, scope: !192)
!192 = distinct !DILexicalBlock(scope: !187, file: !1, line: 55, column: 35)
!193 = !DILocation(line: 56, column: 25, scope: !192)
!194 = !DILocation(line: 56, column: 28, scope: !192)
!195 = !DILocation(line: 56, column: 14, scope: !192)
!196 = !DILocation(line: 57, column: 9, scope: !192)
!197 = !DILocation(line: 57, column: 16, scope: !192)
!198 = !DILocation(line: 58, column: 20, scope: !199)
!199 = distinct !DILexicalBlock(scope: !192, file: !1, line: 57, column: 22)
!200 = !DILocation(line: 58, column: 26, scope: !199)
!201 = !DILocation(line: 58, column: 18, scope: !199)
!202 = !DILocation(line: 60, column: 20, scope: !199)
!203 = !DILocation(line: 60, column: 18, scope: !199)
!204 = distinct !{!204, !196, !205, !109}
!205 = !DILocation(line: 61, column: 9, scope: !192)
!206 = !DILocation(line: 62, column: 5, scope: !192)
!207 = !DILocation(line: 55, column: 31, scope: !187)
!208 = !DILocation(line: 55, column: 5, scope: !187)
!209 = distinct !{!209, !190, !210, !109}
!210 = !DILocation(line: 62, column: 5, scope: !184)
!211 = !DILocation(line: 63, column: 1, scope: !119)
!212 = distinct !DISubprogram(name: "xmlHashComputeKey", scope: !1, file: !1, line: 26, type: !213, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !27)
!213 = !DISubroutineType(types: !214)
!214 = !{!8, !122, !10, !10, !10}
!215 = !DILocalVariable(name: "table", arg: 1, scope: !212, file: !1, line: 26, type: !122)
!216 = !DILocation(line: 26, column: 44, scope: !212)
!217 = !DILocalVariable(name: "name", arg: 2, scope: !212, file: !1, line: 26, type: !10)
!218 = !DILocation(line: 26, column: 57, scope: !212)
!219 = !DILocalVariable(name: "name2", arg: 3, scope: !212, file: !1, line: 26, type: !10)
!220 = !DILocation(line: 26, column: 69, scope: !212)
!221 = !DILocalVariable(name: "name3", arg: 4, scope: !212, file: !1, line: 26, type: !10)
!222 = !DILocation(line: 26, column: 82, scope: !212)
!223 = !DILocalVariable(name: "key", scope: !212, file: !1, line: 27, type: !8)
!224 = !DILocation(line: 27, column: 9, scope: !212)
!225 = !DILocation(line: 28, column: 24, scope: !212)
!226 = !DILocation(line: 28, column: 5, scope: !212)
!227 = !DILocation(line: 29, column: 17, scope: !212)
!228 = !DILocation(line: 29, column: 21, scope: !212)
!229 = !DILocation(line: 29, column: 5, scope: !212)
!230 = !DILocation(line: 30, column: 17, scope: !212)
!231 = !DILocation(line: 30, column: 23, scope: !212)
!232 = !DILocation(line: 30, column: 30, scope: !212)
!233 = !DILocation(line: 30, column: 21, scope: !212)
!234 = !DILocation(line: 30, column: 5, scope: !212)
!235 = !DILocation(line: 31, column: 12, scope: !212)
!236 = !DILocation(line: 31, column: 5, scope: !212)
!237 = distinct !DISubprogram(name: "memcpy", scope: !238, file: !238, line: 12, type: !239, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !27)
!238 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!239 = !DISubroutineType(types: !240)
!240 = !{!10, !10, !241, !243}
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !244, line: 46, baseType: !245)
!244 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!245 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!246 = !DILocalVariable(name: "destaddr", arg: 1, scope: !237, file: !238, line: 12, type: !10)
!247 = !DILocation(line: 12, column: 20, scope: !237)
!248 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !237, file: !238, line: 12, type: !241)
!249 = !DILocation(line: 12, column: 42, scope: !237)
!250 = !DILocalVariable(name: "len", arg: 3, scope: !237, file: !238, line: 12, type: !243)
!251 = !DILocation(line: 12, column: 58, scope: !237)
!252 = !DILocalVariable(name: "dest", scope: !237, file: !238, line: 13, type: !253)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!255 = !DILocation(line: 13, column: 9, scope: !237)
!256 = !DILocation(line: 13, column: 16, scope: !237)
!257 = !DILocalVariable(name: "src", scope: !237, file: !238, line: 14, type: !258)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !254)
!260 = !DILocation(line: 14, column: 15, scope: !237)
!261 = !DILocation(line: 14, column: 21, scope: !237)
!262 = !DILocation(line: 16, column: 3, scope: !237)
!263 = !DILocation(line: 16, column: 13, scope: !237)
!264 = !DILocation(line: 16, column: 16, scope: !237)
!265 = !DILocation(line: 17, column: 19, scope: !237)
!266 = !DILocation(line: 17, column: 15, scope: !237)
!267 = !DILocation(line: 17, column: 10, scope: !237)
!268 = !DILocation(line: 17, column: 13, scope: !237)
!269 = distinct !{!269, !262, !265, !109}
!270 = !DILocation(line: 18, column: 10, scope: !237)
!271 = !DILocation(line: 18, column: 3, scope: !237)

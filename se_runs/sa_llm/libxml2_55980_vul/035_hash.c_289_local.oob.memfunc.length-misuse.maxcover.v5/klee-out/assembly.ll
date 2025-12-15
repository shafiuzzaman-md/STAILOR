; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/035_hash.c_289_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/035_hash.c_289_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlHashTable = type { %struct._xmlHashEntry*, i32, i32 }
%struct._xmlHashEntry = type { i8*, i8*, i8*, i8*, i32, %struct._xmlHashEntry* }

@.str = private unnamed_addr constant [11 x i8] c"table_size\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"iter\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"(key >= 0 && key < table->size) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_55980_vul/035_hash.c_289_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.vulnerable_path = private unnamed_addr constant [53 x i8] c"void vulnerable_path(xmlHashTable *, xmlHashEntry *)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"key\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !14 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !18, metadata !DIExpression()), !dbg !19
  %3 = load i8*, i8** %2, align 8, !dbg !20
  call void @free(i8* noundef %3) #7, !dbg !21
  ret void, !dbg !22
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !23 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct._xmlHashTable*, align 8
  %4 = alloca %struct._xmlHashEntry*, align 8
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !27, metadata !DIExpression()), !dbg !28
  %6 = bitcast i32* %2 to i8*, !dbg !29
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0)), !dbg !30
  %7 = load i32, i32* %2, align 4, !dbg !31
  %8 = icmp sgt i32 %7, 0, !dbg !32
  %9 = zext i1 %8 to i32, !dbg !32
  %10 = sext i32 %9 to i64, !dbg !31
  call void @klee_assume(i64 noundef %10), !dbg !33
  %11 = load i32, i32* %2, align 4, !dbg !34
  %12 = icmp slt i32 %11, 1000, !dbg !35
  %13 = zext i1 %12 to i32, !dbg !35
  %14 = sext i32 %13 to i64, !dbg !34
  call void @klee_assume(i64 noundef %14), !dbg !36
  call void @llvm.dbg.declare(metadata %struct._xmlHashTable** %3, metadata !37, metadata !DIExpression()), !dbg !55
  %15 = call noalias i8* @malloc(i64 noundef 16) #7, !dbg !56
  %16 = bitcast i8* %15 to %struct._xmlHashTable*, !dbg !56
  store %struct._xmlHashTable* %16, %struct._xmlHashTable** %3, align 8, !dbg !55
  %17 = load i32, i32* %2, align 4, !dbg !57
  %18 = load %struct._xmlHashTable*, %struct._xmlHashTable** %3, align 8, !dbg !58
  %19 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %18, i32 0, i32 1, !dbg !59
  store i32 %17, i32* %19, align 8, !dbg !60
  %20 = load %struct._xmlHashTable*, %struct._xmlHashTable** %3, align 8, !dbg !61
  %21 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %20, i32 0, i32 2, !dbg !62
  store i32 0, i32* %21, align 4, !dbg !63
  %22 = load i32, i32* %2, align 4, !dbg !64
  %23 = sext i32 %22 to i64, !dbg !64
  %24 = call noalias i8* @calloc(i64 noundef %23, i64 noundef 48) #7, !dbg !65
  %25 = bitcast i8* %24 to %struct._xmlHashEntry*, !dbg !65
  %26 = load %struct._xmlHashTable*, %struct._xmlHashTable** %3, align 8, !dbg !66
  %27 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %26, i32 0, i32 0, !dbg !67
  store %struct._xmlHashEntry* %25, %struct._xmlHashEntry** %27, align 8, !dbg !68
  call void @llvm.dbg.declare(metadata %struct._xmlHashEntry** %4, metadata !69, metadata !DIExpression()), !dbg !70
  %28 = call noalias i8* @malloc(i64 noundef 48) #7, !dbg !71
  %29 = bitcast i8* %28 to %struct._xmlHashEntry*, !dbg !71
  store %struct._xmlHashEntry* %29, %struct._xmlHashEntry** %4, align 8, !dbg !70
  %30 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %4, align 8, !dbg !72
  %31 = bitcast %struct._xmlHashEntry* %30 to i8*, !dbg !72
  call void @klee_make_symbolic(i8* noundef %31, i64 noundef 48, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !73
  %32 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %4, align 8, !dbg !74
  %33 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %32, i32 0, i32 0, !dbg !76
  %34 = load i8*, i8** %33, align 8, !dbg !76
  %35 = icmp eq i8* %34, null, !dbg !77
  br i1 %35, label %36, label %40, !dbg !78

36:                                               ; preds = %0
  %37 = call noalias i8* @malloc(i64 noundef 1) #7, !dbg !79
  %38 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %4, align 8, !dbg !80
  %39 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %38, i32 0, i32 0, !dbg !81
  store i8* %37, i8** %39, align 8, !dbg !82
  br label %40, !dbg !80

40:                                               ; preds = %36, %0
  %41 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %4, align 8, !dbg !83
  %42 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %41, i32 0, i32 1, !dbg !85
  %43 = load i8*, i8** %42, align 8, !dbg !85
  %44 = icmp eq i8* %43, null, !dbg !86
  br i1 %44, label %45, label %49, !dbg !87

45:                                               ; preds = %40
  %46 = call noalias i8* @malloc(i64 noundef 1) #7, !dbg !88
  %47 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %4, align 8, !dbg !89
  %48 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %47, i32 0, i32 1, !dbg !90
  store i8* %46, i8** %48, align 8, !dbg !91
  br label %49, !dbg !89

49:                                               ; preds = %45, %40
  %50 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %4, align 8, !dbg !92
  %51 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %50, i32 0, i32 2, !dbg !94
  %52 = load i8*, i8** %51, align 8, !dbg !94
  %53 = icmp eq i8* %52, null, !dbg !95
  br i1 %53, label %54, label %58, !dbg !96

54:                                               ; preds = %49
  %55 = call noalias i8* @malloc(i64 noundef 1) #7, !dbg !97
  %56 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %4, align 8, !dbg !98
  %57 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %56, i32 0, i32 2, !dbg !99
  store i8* %55, i8** %57, align 8, !dbg !100
  br label %58, !dbg !98

58:                                               ; preds = %54, %49
  call void @llvm.dbg.declare(metadata i32* %5, metadata !101, metadata !DIExpression()), !dbg !103
  store i32 0, i32* %5, align 4, !dbg !103
  br label %59, !dbg !104

59:                                               ; preds = %78, %58
  %60 = load i32, i32* %5, align 4, !dbg !105
  %61 = load i32, i32* %2, align 4, !dbg !107
  %62 = icmp slt i32 %60, %61, !dbg !108
  br i1 %62, label %63, label %81, !dbg !109

63:                                               ; preds = %59
  %64 = load %struct._xmlHashTable*, %struct._xmlHashTable** %3, align 8, !dbg !110
  %65 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %64, i32 0, i32 0, !dbg !112
  %66 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %65, align 8, !dbg !112
  %67 = load i32, i32* %5, align 4, !dbg !113
  %68 = sext i32 %67 to i64, !dbg !110
  %69 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %66, i64 %68, !dbg !110
  %70 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %69, i32 0, i32 4, !dbg !114
  store i32 0, i32* %70, align 8, !dbg !115
  %71 = load %struct._xmlHashTable*, %struct._xmlHashTable** %3, align 8, !dbg !116
  %72 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %71, i32 0, i32 0, !dbg !117
  %73 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %72, align 8, !dbg !117
  %74 = load i32, i32* %5, align 4, !dbg !118
  %75 = sext i32 %74 to i64, !dbg !116
  %76 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %73, i64 %75, !dbg !116
  %77 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %76, i32 0, i32 5, !dbg !119
  store %struct._xmlHashEntry* null, %struct._xmlHashEntry** %77, align 8, !dbg !120
  br label %78, !dbg !121

78:                                               ; preds = %63
  %79 = load i32, i32* %5, align 4, !dbg !122
  %80 = add nsw i32 %79, 1, !dbg !122
  store i32 %80, i32* %5, align 4, !dbg !122
  br label %59, !dbg !123, !llvm.loop !124

81:                                               ; preds = %59
  %82 = load %struct._xmlHashTable*, %struct._xmlHashTable** %3, align 8, !dbg !127
  %83 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %4, align 8, !dbg !128
  call void @vulnerable_path(%struct._xmlHashTable* noundef %82, %struct._xmlHashEntry* noundef %83), !dbg !129
  %84 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %4, align 8, !dbg !130
  %85 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %84, i32 0, i32 0, !dbg !131
  %86 = load i8*, i8** %85, align 8, !dbg !131
  call void @free(i8* noundef %86) #7, !dbg !132
  %87 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %4, align 8, !dbg !133
  %88 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %87, i32 0, i32 1, !dbg !134
  %89 = load i8*, i8** %88, align 8, !dbg !134
  call void @free(i8* noundef %89) #7, !dbg !135
  %90 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %4, align 8, !dbg !136
  %91 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %90, i32 0, i32 2, !dbg !137
  %92 = load i8*, i8** %91, align 8, !dbg !137
  call void @free(i8* noundef %92) #7, !dbg !138
  %93 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %4, align 8, !dbg !139
  %94 = bitcast %struct._xmlHashEntry* %93 to i8*, !dbg !139
  call void @free(i8* noundef %94) #7, !dbg !140
  %95 = load %struct._xmlHashTable*, %struct._xmlHashTable** %3, align 8, !dbg !141
  %96 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %95, i32 0, i32 0, !dbg !142
  %97 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %96, align 8, !dbg !142
  %98 = bitcast %struct._xmlHashEntry* %97 to i8*, !dbg !141
  call void @free(i8* noundef %98) #7, !dbg !143
  %99 = load %struct._xmlHashTable*, %struct._xmlHashTable** %3, align 8, !dbg !144
  %100 = bitcast %struct._xmlHashTable* %99 to i8*, !dbg !144
  call void @free(i8* noundef %100) #7, !dbg !145
  ret i32 0, !dbg !146
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vulnerable_path(%struct._xmlHashTable* noundef %0, %struct._xmlHashEntry* noundef %1) #0 !dbg !147 {
  %3 = alloca %struct._xmlHashTable*, align 8
  %4 = alloca %struct._xmlHashEntry*, align 8
  %5 = alloca i32, align 4
  store %struct._xmlHashTable* %0, %struct._xmlHashTable** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlHashTable** %3, metadata !150, metadata !DIExpression()), !dbg !151
  store %struct._xmlHashEntry* %1, %struct._xmlHashEntry** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlHashEntry** %4, metadata !152, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.declare(metadata i32* %5, metadata !154, metadata !DIExpression()), !dbg !155
  %6 = load %struct._xmlHashTable*, %struct._xmlHashTable** %3, align 8, !dbg !156
  %7 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %4, align 8, !dbg !157
  %8 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %7, i32 0, i32 0, !dbg !158
  %9 = load i8*, i8** %8, align 8, !dbg !158
  %10 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %4, align 8, !dbg !159
  %11 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %10, i32 0, i32 1, !dbg !160
  %12 = load i8*, i8** %11, align 8, !dbg !160
  %13 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %4, align 8, !dbg !161
  %14 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %13, i32 0, i32 2, !dbg !162
  %15 = load i8*, i8** %14, align 8, !dbg !162
  %16 = call i32 @xmlHashComputeKey(%struct._xmlHashTable* noundef %6, i8* noundef %9, i8* noundef %12, i8* noundef %15), !dbg !163
  store i32 %16, i32* %5, align 4, !dbg !155
  %17 = load %struct._xmlHashTable*, %struct._xmlHashTable** %3, align 8, !dbg !164
  %18 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %17, i32 0, i32 0, !dbg !166
  %19 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %18, align 8, !dbg !166
  %20 = load i32, i32* %5, align 4, !dbg !167
  %21 = sext i32 %20 to i64, !dbg !164
  %22 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %19, i64 %21, !dbg !164
  %23 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %22, i32 0, i32 4, !dbg !168
  %24 = load i32, i32* %23, align 8, !dbg !168
  %25 = icmp eq i32 %24, 0, !dbg !169
  br i1 %25, label %26, label %60, !dbg !170

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4, !dbg !171
  %28 = icmp sge i32 %27, 0, !dbg !171
  br i1 %28, label %29, label %37, !dbg !171

29:                                               ; preds = %26
  %30 = load i32, i32* %5, align 4, !dbg !171
  %31 = load %struct._xmlHashTable*, %struct._xmlHashTable** %3, align 8, !dbg !171
  %32 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %31, i32 0, i32 1, !dbg !171
  %33 = load i32, i32* %32, align 8, !dbg !171
  %34 = icmp slt i32 %30, %33, !dbg !171
  br i1 %34, label %35, label %37, !dbg !171

35:                                               ; preds = %29
  br i1 true, label %36, label %37, !dbg !171

36:                                               ; preds = %35
  br label %39, !dbg !171

37:                                               ; preds = %35, %29, %26
  %38 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.4, i64 0, i64 0), i32 noundef 47, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.vulnerable_path, i64 0, i64 0)), !dbg !171
  br label %39, !dbg !171

39:                                               ; preds = %37, %36
  %40 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.4, i64 0, i64 0), i32 noundef 50, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.vulnerable_path, i64 0, i64 0)), !dbg !173
  %41 = load %struct._xmlHashTable*, %struct._xmlHashTable** %3, align 8, !dbg !174
  %42 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %41, i32 0, i32 0, !dbg !175
  %43 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %42, align 8, !dbg !175
  %44 = load i32, i32* %5, align 4, !dbg !176
  %45 = sext i32 %44 to i64, !dbg !174
  %46 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %43, i64 %45, !dbg !174
  %47 = bitcast %struct._xmlHashEntry* %46 to i8*, !dbg !177
  %48 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %4, align 8, !dbg !178
  %49 = bitcast %struct._xmlHashEntry* %48 to i8*, !dbg !177
  %50 = call i8* @memcpy(i8* %47, i8* %49, i64 48), !dbg !177
  %51 = load %struct._xmlHashTable*, %struct._xmlHashTable** %3, align 8, !dbg !179
  %52 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %51, i32 0, i32 0, !dbg !180
  %53 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %52, align 8, !dbg !180
  %54 = load i32, i32* %5, align 4, !dbg !181
  %55 = sext i32 %54 to i64, !dbg !179
  %56 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %53, i64 %55, !dbg !179
  %57 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %56, i32 0, i32 5, !dbg !182
  store %struct._xmlHashEntry* null, %struct._xmlHashEntry** %57, align 8, !dbg !183
  %58 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %4, align 8, !dbg !184
  %59 = bitcast %struct._xmlHashEntry* %58 to i8*, !dbg !184
  call void @xmlFree(i8* noundef %59), !dbg !185
  br label %79, !dbg !186

60:                                               ; preds = %2
  %61 = load %struct._xmlHashTable*, %struct._xmlHashTable** %3, align 8, !dbg !187
  %62 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %61, i32 0, i32 0, !dbg !189
  %63 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %62, align 8, !dbg !189
  %64 = load i32, i32* %5, align 4, !dbg !190
  %65 = sext i32 %64 to i64, !dbg !187
  %66 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %63, i64 %65, !dbg !187
  %67 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %66, i32 0, i32 5, !dbg !191
  %68 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %67, align 8, !dbg !191
  %69 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %4, align 8, !dbg !192
  %70 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %69, i32 0, i32 5, !dbg !193
  store %struct._xmlHashEntry* %68, %struct._xmlHashEntry** %70, align 8, !dbg !194
  %71 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %4, align 8, !dbg !195
  %72 = load %struct._xmlHashTable*, %struct._xmlHashTable** %3, align 8, !dbg !196
  %73 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %72, i32 0, i32 0, !dbg !197
  %74 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %73, align 8, !dbg !197
  %75 = load i32, i32* %5, align 4, !dbg !198
  %76 = sext i32 %75 to i64, !dbg !196
  %77 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %74, i64 %76, !dbg !196
  %78 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %77, i32 0, i32 5, !dbg !199
  store %struct._xmlHashEntry* %71, %struct._xmlHashEntry** %78, align 8, !dbg !200
  br label %79

79:                                               ; preds = %60, %39
  ret void, !dbg !201
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xmlHashComputeKey(%struct._xmlHashTable* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #0 !dbg !202 {
  %5 = alloca %struct._xmlHashTable*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct._xmlHashTable* %0, %struct._xmlHashTable** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlHashTable** %5, metadata !205, metadata !DIExpression()), !dbg !206
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !207, metadata !DIExpression()), !dbg !208
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !209, metadata !DIExpression()), !dbg !210
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !211, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.declare(metadata i32* %9, metadata !213, metadata !DIExpression()), !dbg !214
  %10 = bitcast i32* %9 to i8*, !dbg !215
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)), !dbg !216
  %11 = load i32, i32* %9, align 4, !dbg !217
  %12 = icmp sge i32 %11, 0, !dbg !218
  %13 = zext i1 %12 to i32, !dbg !218
  %14 = sext i32 %13 to i64, !dbg !217
  call void @klee_assume(i64 noundef %14), !dbg !219
  %15 = load i32, i32* %9, align 4, !dbg !220
  %16 = load %struct._xmlHashTable*, %struct._xmlHashTable** %5, align 8, !dbg !221
  %17 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %16, i32 0, i32 1, !dbg !222
  %18 = load i32, i32* %17, align 8, !dbg !222
  %19 = icmp slt i32 %15, %18, !dbg !223
  %20 = zext i1 %19 to i32, !dbg !223
  %21 = sext i32 %20 to i64, !dbg !220
  call void @klee_assume(i64 noundef %21), !dbg !224
  %22 = load i32, i32* %9, align 4, !dbg !225
  ret i32 %22, !dbg !226
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !227 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !236, metadata !DIExpression()), !dbg !237
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !238, metadata !DIExpression()), !dbg !239
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !240, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.declare(metadata i8** %7, metadata !242, metadata !DIExpression()), !dbg !245
  %9 = load i8*, i8** %4, align 8, !dbg !246
  store i8* %9, i8** %7, align 8, !dbg !245
  call void @llvm.dbg.declare(metadata i8** %8, metadata !247, metadata !DIExpression()), !dbg !250
  %10 = load i8*, i8** %5, align 8, !dbg !251
  store i8* %10, i8** %8, align 8, !dbg !250
  br label %11, !dbg !252

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !253
  %13 = add i64 %12, -1, !dbg !253
  store i64 %13, i64* %6, align 8, !dbg !253
  %14 = icmp ugt i64 %12, 0, !dbg !254
  br i1 %14, label %15, label %21, !dbg !252

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !255
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !255
  store i8* %17, i8** %8, align 8, !dbg !255
  %18 = load i8, i8* %16, align 1, !dbg !256
  %19 = load i8*, i8** %7, align 8, !dbg !257
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !257
  store i8* %20, i8** %7, align 8, !dbg !257
  store i8 %18, i8* %19, align 1, !dbg !258
  br label %11, !dbg !252, !llvm.loop !259

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !260
  ret i8* %22, !dbg !261
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13, !13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/035_hash.c_289_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "760cc3a64d222d862bb55c31095b42e4")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = distinct !DICompileUnit(language: DW_LANG_C99, file: !5, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!5 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 7, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"Ubuntu clang version 14.0.6"}
!14 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 37, type: !15, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !17)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !3}
!17 = !{}
!18 = !DILocalVariable(name: "mem", arg: 1, scope: !14, file: !1, line: 37, type: !3)
!19 = !DILocation(line: 37, column: 20, scope: !14)
!20 = !DILocation(line: 38, column: 10, scope: !14)
!21 = !DILocation(line: 38, column: 5, scope: !14)
!22 = !DILocation(line: 39, column: 1, scope: !14)
!23 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 62, type: !24, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !17)
!24 = !DISubroutineType(types: !25)
!25 = !{!26}
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !DILocalVariable(name: "table_size", scope: !23, file: !1, line: 64, type: !26)
!28 = !DILocation(line: 64, column: 9, scope: !23)
!29 = !DILocation(line: 65, column: 24, scope: !23)
!30 = !DILocation(line: 65, column: 5, scope: !23)
!31 = !DILocation(line: 66, column: 17, scope: !23)
!32 = !DILocation(line: 66, column: 28, scope: !23)
!33 = !DILocation(line: 66, column: 5, scope: !23)
!34 = !DILocation(line: 67, column: 17, scope: !23)
!35 = !DILocation(line: 67, column: 28, scope: !23)
!36 = !DILocation(line: 67, column: 5, scope: !23)
!37 = !DILocalVariable(name: "table", scope: !23, file: !1, line: 70, type: !38)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTable", file: !1, line: 20, baseType: !40)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlHashTable", file: !1, line: 21, size: 128, elements: !41)
!41 = !{!42, !53, !54}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !40, file: !1, line: 22, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashEntry", file: !1, line: 10, baseType: !45)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlHashEntry", file: !1, line: 11, size: 384, elements: !46)
!46 = !{!47, !48, !49, !50, !51, !52}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !45, file: !1, line: 12, baseType: !3, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "name2", scope: !45, file: !1, line: 13, baseType: !3, size: 64, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "name3", scope: !45, file: !1, line: 14, baseType: !3, size: 64, offset: 128)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !45, file: !1, line: 15, baseType: !3, size: 64, offset: 192)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !45, file: !1, line: 16, baseType: !26, size: 32, offset: 256)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !45, file: !1, line: 17, baseType: !43, size: 64, offset: 320)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !40, file: !1, line: 23, baseType: !26, size: 32, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "nbElems", scope: !40, file: !1, line: 24, baseType: !26, size: 32, offset: 96)
!55 = !DILocation(line: 70, column: 19, scope: !23)
!56 = !DILocation(line: 70, column: 27, scope: !23)
!57 = !DILocation(line: 71, column: 19, scope: !23)
!58 = !DILocation(line: 71, column: 5, scope: !23)
!59 = !DILocation(line: 71, column: 12, scope: !23)
!60 = !DILocation(line: 71, column: 17, scope: !23)
!61 = !DILocation(line: 72, column: 5, scope: !23)
!62 = !DILocation(line: 72, column: 12, scope: !23)
!63 = !DILocation(line: 72, column: 20, scope: !23)
!64 = !DILocation(line: 73, column: 27, scope: !23)
!65 = !DILocation(line: 73, column: 20, scope: !23)
!66 = !DILocation(line: 73, column: 5, scope: !23)
!67 = !DILocation(line: 73, column: 12, scope: !23)
!68 = !DILocation(line: 73, column: 18, scope: !23)
!69 = !DILocalVariable(name: "iter", scope: !23, file: !1, line: 76, type: !43)
!70 = !DILocation(line: 76, column: 19, scope: !23)
!71 = !DILocation(line: 76, column: 26, scope: !23)
!72 = !DILocation(line: 77, column: 24, scope: !23)
!73 = !DILocation(line: 77, column: 5, scope: !23)
!74 = !DILocation(line: 80, column: 9, scope: !75)
!75 = distinct !DILexicalBlock(scope: !23, file: !1, line: 80, column: 9)
!76 = !DILocation(line: 80, column: 15, scope: !75)
!77 = !DILocation(line: 80, column: 20, scope: !75)
!78 = !DILocation(line: 80, column: 9, scope: !23)
!79 = !DILocation(line: 80, column: 42, scope: !75)
!80 = !DILocation(line: 80, column: 29, scope: !75)
!81 = !DILocation(line: 80, column: 35, scope: !75)
!82 = !DILocation(line: 80, column: 40, scope: !75)
!83 = !DILocation(line: 81, column: 9, scope: !84)
!84 = distinct !DILexicalBlock(scope: !23, file: !1, line: 81, column: 9)
!85 = !DILocation(line: 81, column: 15, scope: !84)
!86 = !DILocation(line: 81, column: 21, scope: !84)
!87 = !DILocation(line: 81, column: 9, scope: !23)
!88 = !DILocation(line: 81, column: 44, scope: !84)
!89 = !DILocation(line: 81, column: 30, scope: !84)
!90 = !DILocation(line: 81, column: 36, scope: !84)
!91 = !DILocation(line: 81, column: 42, scope: !84)
!92 = !DILocation(line: 82, column: 9, scope: !93)
!93 = distinct !DILexicalBlock(scope: !23, file: !1, line: 82, column: 9)
!94 = !DILocation(line: 82, column: 15, scope: !93)
!95 = !DILocation(line: 82, column: 21, scope: !93)
!96 = !DILocation(line: 82, column: 9, scope: !23)
!97 = !DILocation(line: 82, column: 44, scope: !93)
!98 = !DILocation(line: 82, column: 30, scope: !93)
!99 = !DILocation(line: 82, column: 36, scope: !93)
!100 = !DILocation(line: 82, column: 42, scope: !93)
!101 = !DILocalVariable(name: "i", scope: !102, file: !1, line: 85, type: !26)
!102 = distinct !DILexicalBlock(scope: !23, file: !1, line: 85, column: 5)
!103 = !DILocation(line: 85, column: 14, scope: !102)
!104 = !DILocation(line: 85, column: 10, scope: !102)
!105 = !DILocation(line: 85, column: 21, scope: !106)
!106 = distinct !DILexicalBlock(scope: !102, file: !1, line: 85, column: 5)
!107 = !DILocation(line: 85, column: 25, scope: !106)
!108 = !DILocation(line: 85, column: 23, scope: !106)
!109 = !DILocation(line: 85, column: 5, scope: !102)
!110 = !DILocation(line: 86, column: 9, scope: !111)
!111 = distinct !DILexicalBlock(scope: !106, file: !1, line: 85, column: 42)
!112 = !DILocation(line: 86, column: 16, scope: !111)
!113 = !DILocation(line: 86, column: 22, scope: !111)
!114 = !DILocation(line: 86, column: 25, scope: !111)
!115 = !DILocation(line: 86, column: 31, scope: !111)
!116 = !DILocation(line: 87, column: 9, scope: !111)
!117 = !DILocation(line: 87, column: 16, scope: !111)
!118 = !DILocation(line: 87, column: 22, scope: !111)
!119 = !DILocation(line: 87, column: 25, scope: !111)
!120 = !DILocation(line: 87, column: 30, scope: !111)
!121 = !DILocation(line: 88, column: 5, scope: !111)
!122 = !DILocation(line: 85, column: 38, scope: !106)
!123 = !DILocation(line: 85, column: 5, scope: !106)
!124 = distinct !{!124, !109, !125, !126}
!125 = !DILocation(line: 88, column: 5, scope: !102)
!126 = !{!"llvm.loop.mustprogress"}
!127 = !DILocation(line: 91, column: 21, scope: !23)
!128 = !DILocation(line: 91, column: 28, scope: !23)
!129 = !DILocation(line: 91, column: 5, scope: !23)
!130 = !DILocation(line: 94, column: 10, scope: !23)
!131 = !DILocation(line: 94, column: 16, scope: !23)
!132 = !DILocation(line: 94, column: 5, scope: !23)
!133 = !DILocation(line: 95, column: 10, scope: !23)
!134 = !DILocation(line: 95, column: 16, scope: !23)
!135 = !DILocation(line: 95, column: 5, scope: !23)
!136 = !DILocation(line: 96, column: 10, scope: !23)
!137 = !DILocation(line: 96, column: 16, scope: !23)
!138 = !DILocation(line: 96, column: 5, scope: !23)
!139 = !DILocation(line: 97, column: 10, scope: !23)
!140 = !DILocation(line: 97, column: 5, scope: !23)
!141 = !DILocation(line: 98, column: 10, scope: !23)
!142 = !DILocation(line: 98, column: 17, scope: !23)
!143 = !DILocation(line: 98, column: 5, scope: !23)
!144 = !DILocation(line: 99, column: 10, scope: !23)
!145 = !DILocation(line: 99, column: 5, scope: !23)
!146 = !DILocation(line: 101, column: 5, scope: !23)
!147 = distinct !DISubprogram(name: "vulnerable_path", scope: !1, file: !1, line: 42, type: !148, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !17)
!148 = !DISubroutineType(types: !149)
!149 = !{null, !38, !43}
!150 = !DILocalVariable(name: "table", arg: 1, scope: !147, file: !1, line: 42, type: !38)
!151 = !DILocation(line: 42, column: 43, scope: !147)
!152 = !DILocalVariable(name: "iter", arg: 2, scope: !147, file: !1, line: 42, type: !43)
!153 = !DILocation(line: 42, column: 64, scope: !147)
!154 = !DILocalVariable(name: "key", scope: !147, file: !1, line: 43, type: !26)
!155 = !DILocation(line: 43, column: 9, scope: !147)
!156 = !DILocation(line: 43, column: 33, scope: !147)
!157 = !DILocation(line: 43, column: 40, scope: !147)
!158 = !DILocation(line: 43, column: 46, scope: !147)
!159 = !DILocation(line: 43, column: 52, scope: !147)
!160 = !DILocation(line: 43, column: 58, scope: !147)
!161 = !DILocation(line: 43, column: 65, scope: !147)
!162 = !DILocation(line: 43, column: 71, scope: !147)
!163 = !DILocation(line: 43, column: 15, scope: !147)
!164 = !DILocation(line: 45, column: 9, scope: !165)
!165 = distinct !DILexicalBlock(scope: !147, file: !1, line: 45, column: 9)
!166 = !DILocation(line: 45, column: 16, scope: !165)
!167 = !DILocation(line: 45, column: 22, scope: !165)
!168 = !DILocation(line: 45, column: 27, scope: !165)
!169 = !DILocation(line: 45, column: 33, scope: !165)
!170 = !DILocation(line: 45, column: 9, scope: !147)
!171 = !DILocation(line: 47, column: 9, scope: !172)
!172 = distinct !DILexicalBlock(scope: !165, file: !1, line: 45, column: 39)
!173 = !DILocation(line: 50, column: 9, scope: !172)
!174 = !DILocation(line: 53, column: 18, scope: !172)
!175 = !DILocation(line: 53, column: 25, scope: !172)
!176 = !DILocation(line: 53, column: 31, scope: !172)
!177 = !DILocation(line: 53, column: 9, scope: !172)
!178 = !DILocation(line: 53, column: 38, scope: !172)
!179 = !DILocation(line: 54, column: 9, scope: !172)
!180 = !DILocation(line: 54, column: 16, scope: !172)
!181 = !DILocation(line: 54, column: 22, scope: !172)
!182 = !DILocation(line: 54, column: 27, scope: !172)
!183 = !DILocation(line: 54, column: 32, scope: !172)
!184 = !DILocation(line: 55, column: 17, scope: !172)
!185 = !DILocation(line: 55, column: 9, scope: !172)
!186 = !DILocation(line: 56, column: 5, scope: !172)
!187 = !DILocation(line: 57, column: 22, scope: !188)
!188 = distinct !DILexicalBlock(scope: !165, file: !1, line: 56, column: 12)
!189 = !DILocation(line: 57, column: 29, scope: !188)
!190 = !DILocation(line: 57, column: 35, scope: !188)
!191 = !DILocation(line: 57, column: 40, scope: !188)
!192 = !DILocation(line: 57, column: 9, scope: !188)
!193 = !DILocation(line: 57, column: 15, scope: !188)
!194 = !DILocation(line: 57, column: 20, scope: !188)
!195 = !DILocation(line: 58, column: 34, scope: !188)
!196 = !DILocation(line: 58, column: 9, scope: !188)
!197 = !DILocation(line: 58, column: 16, scope: !188)
!198 = !DILocation(line: 58, column: 22, scope: !188)
!199 = !DILocation(line: 58, column: 27, scope: !188)
!200 = !DILocation(line: 58, column: 32, scope: !188)
!201 = !DILocation(line: 60, column: 1, scope: !147)
!202 = distinct !DISubprogram(name: "xmlHashComputeKey", scope: !1, file: !1, line: 28, type: !203, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !17)
!203 = !DISubroutineType(types: !204)
!204 = !{!26, !38, !3, !3, !3}
!205 = !DILocalVariable(name: "table", arg: 1, scope: !202, file: !1, line: 28, type: !38)
!206 = !DILocation(line: 28, column: 44, scope: !202)
!207 = !DILocalVariable(name: "name", arg: 2, scope: !202, file: !1, line: 28, type: !3)
!208 = !DILocation(line: 28, column: 57, scope: !202)
!209 = !DILocalVariable(name: "name2", arg: 3, scope: !202, file: !1, line: 28, type: !3)
!210 = !DILocation(line: 28, column: 69, scope: !202)
!211 = !DILocalVariable(name: "name3", arg: 4, scope: !202, file: !1, line: 28, type: !3)
!212 = !DILocation(line: 28, column: 82, scope: !202)
!213 = !DILocalVariable(name: "key", scope: !202, file: !1, line: 29, type: !26)
!214 = !DILocation(line: 29, column: 9, scope: !202)
!215 = !DILocation(line: 30, column: 24, scope: !202)
!216 = !DILocation(line: 30, column: 5, scope: !202)
!217 = !DILocation(line: 31, column: 17, scope: !202)
!218 = !DILocation(line: 31, column: 21, scope: !202)
!219 = !DILocation(line: 31, column: 5, scope: !202)
!220 = !DILocation(line: 32, column: 17, scope: !202)
!221 = !DILocation(line: 32, column: 23, scope: !202)
!222 = !DILocation(line: 32, column: 30, scope: !202)
!223 = !DILocation(line: 32, column: 21, scope: !202)
!224 = !DILocation(line: 32, column: 5, scope: !202)
!225 = !DILocation(line: 33, column: 12, scope: !202)
!226 = !DILocation(line: 33, column: 5, scope: !202)
!227 = distinct !DISubprogram(name: "memcpy", scope: !228, file: !228, line: 12, type: !229, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !17)
!228 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!229 = !DISubroutineType(types: !230)
!230 = !{!3, !3, !231, !233}
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !234, line: 46, baseType: !235)
!234 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!235 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!236 = !DILocalVariable(name: "destaddr", arg: 1, scope: !227, file: !228, line: 12, type: !3)
!237 = !DILocation(line: 12, column: 20, scope: !227)
!238 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !227, file: !228, line: 12, type: !231)
!239 = !DILocation(line: 12, column: 42, scope: !227)
!240 = !DILocalVariable(name: "len", arg: 3, scope: !227, file: !228, line: 12, type: !233)
!241 = !DILocation(line: 12, column: 58, scope: !227)
!242 = !DILocalVariable(name: "dest", scope: !227, file: !228, line: 13, type: !243)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!245 = !DILocation(line: 13, column: 9, scope: !227)
!246 = !DILocation(line: 13, column: 16, scope: !227)
!247 = !DILocalVariable(name: "src", scope: !227, file: !228, line: 14, type: !248)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!250 = !DILocation(line: 14, column: 15, scope: !227)
!251 = !DILocation(line: 14, column: 21, scope: !227)
!252 = !DILocation(line: 16, column: 3, scope: !227)
!253 = !DILocation(line: 16, column: 13, scope: !227)
!254 = !DILocation(line: 16, column: 16, scope: !227)
!255 = !DILocation(line: 17, column: 19, scope: !227)
!256 = !DILocation(line: 17, column: 15, scope: !227)
!257 = !DILocation(line: 17, column: 10, scope: !227)
!258 = !DILocation(line: 17, column: 13, scope: !227)
!259 = distinct !{!259, !252, !255, !126}
!260 = !DILocation(line: 18, column: 10, scope: !227)
!261 = !DILocation(line: 18, column: 3, scope: !227)

; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/033_hash.c_273_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/033_hash.c_273_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlHashTable = type { %struct._xmlHashEntry*, i32, i32 }
%struct._xmlHashEntry = type { i8*, i8*, i8*, i8*, i32, %struct._xmlHashEntry* }

@.str = private unnamed_addr constant [8 x i8] c"oldsize\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"newsize\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"(key >= 0 && key < table->size) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_55980_vul/033_hash.c_273_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlHashGrow = private unnamed_addr constant [38 x i8] c"void xmlHashGrow(xmlHashTable *, int)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"key\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !25 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlHashTable, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlHashTable* %2, metadata !29, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i32* %3, metadata !37, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata i32* %4, metadata !39, metadata !DIExpression()), !dbg !40
  %6 = bitcast i32* %3 to i8*, !dbg !41
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)), !dbg !42
  %7 = bitcast i32* %4 to i8*, !dbg !43
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)), !dbg !44
  %8 = load i32, i32* %3, align 4, !dbg !45
  %9 = icmp sgt i32 %8, 0, !dbg !46
  br i1 %9, label %10, label %13, !dbg !47

10:                                               ; preds = %0
  %11 = load i32, i32* %3, align 4, !dbg !48
  %12 = icmp slt i32 %11, 100, !dbg !49
  br label %13

13:                                               ; preds = %10, %0
  %14 = phi i1 [ false, %0 ], [ %12, %10 ], !dbg !50
  %15 = zext i1 %14 to i32, !dbg !47
  %16 = sext i32 %15 to i64, !dbg !45
  call void @klee_assume(i64 noundef %16), !dbg !51
  %17 = load i32, i32* %4, align 4, !dbg !52
  %18 = icmp sgt i32 %17, 0, !dbg !53
  br i1 %18, label %19, label %22, !dbg !54

19:                                               ; preds = %13
  %20 = load i32, i32* %4, align 4, !dbg !55
  %21 = icmp slt i32 %20, 100, !dbg !56
  br label %22

22:                                               ; preds = %19, %13
  %23 = phi i1 [ false, %13 ], [ %21, %19 ], !dbg !50
  %24 = zext i1 %23 to i32, !dbg !54
  %25 = sext i32 %24 to i64, !dbg !52
  call void @klee_assume(i64 noundef %25), !dbg !57
  %26 = load i32, i32* %3, align 4, !dbg !58
  %27 = sext i32 %26 to i64, !dbg !58
  %28 = call noalias i8* @calloc(i64 noundef %27, i64 noundef 48) #7, !dbg !59
  %29 = bitcast i8* %28 to %struct._xmlHashEntry*, !dbg !60
  %30 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %2, i32 0, i32 0, !dbg !61
  store %struct._xmlHashEntry* %29, %struct._xmlHashEntry** %30, align 8, !dbg !62
  %31 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %2, i32 0, i32 0, !dbg !63
  %32 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %31, align 8, !dbg !63
  %33 = icmp eq %struct._xmlHashEntry* %32, null, !dbg !65
  br i1 %33, label %34, label %35, !dbg !66

34:                                               ; preds = %22
  store i32 0, i32* %1, align 4, !dbg !67
  br label %83, !dbg !67

35:                                               ; preds = %22
  call void @llvm.dbg.declare(metadata i32* %5, metadata !68, metadata !DIExpression()), !dbg !70
  store i32 0, i32* %5, align 4, !dbg !70
  br label %36, !dbg !71

36:                                               ; preds = %70, %35
  %37 = load i32, i32* %5, align 4, !dbg !72
  %38 = load i32, i32* %3, align 4, !dbg !74
  %39 = icmp slt i32 %37, %38, !dbg !75
  br i1 %39, label %40, label %73, !dbg !76

40:                                               ; preds = %36
  %41 = load i32, i32* %5, align 4, !dbg !77
  %42 = srem i32 %41, 2, !dbg !80
  %43 = icmp eq i32 %42, 0, !dbg !81
  br i1 %43, label %44, label %69, !dbg !82

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %2, i32 0, i32 0, !dbg !83
  %46 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %45, align 8, !dbg !83
  %47 = load i32, i32* %5, align 4, !dbg !85
  %48 = sext i32 %47 to i64, !dbg !86
  %49 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %46, i64 %48, !dbg !86
  %50 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %49, i32 0, i32 4, !dbg !87
  store i32 1, i32* %50, align 8, !dbg !88
  %51 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %2, i32 0, i32 0, !dbg !89
  %52 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %51, align 8, !dbg !89
  %53 = load i32, i32* %5, align 4, !dbg !90
  %54 = sext i32 %53 to i64, !dbg !91
  %55 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %52, i64 %54, !dbg !91
  %56 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %55, i32 0, i32 0, !dbg !92
  store i8* inttoptr (i64 1 to i8*), i8** %56, align 8, !dbg !93
  %57 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %2, i32 0, i32 0, !dbg !94
  %58 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %57, align 8, !dbg !94
  %59 = load i32, i32* %5, align 4, !dbg !95
  %60 = sext i32 %59 to i64, !dbg !96
  %61 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %58, i64 %60, !dbg !96
  %62 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %61, i32 0, i32 1, !dbg !97
  store i8* inttoptr (i64 1 to i8*), i8** %62, align 8, !dbg !98
  %63 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %2, i32 0, i32 0, !dbg !99
  %64 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %63, align 8, !dbg !99
  %65 = load i32, i32* %5, align 4, !dbg !100
  %66 = sext i32 %65 to i64, !dbg !101
  %67 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %64, i64 %66, !dbg !101
  %68 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %67, i32 0, i32 2, !dbg !102
  store i8* inttoptr (i64 1 to i8*), i8** %68, align 8, !dbg !103
  br label %69, !dbg !104

69:                                               ; preds = %44, %40
  br label %70, !dbg !105

70:                                               ; preds = %69
  %71 = load i32, i32* %5, align 4, !dbg !106
  %72 = add nsw i32 %71, 1, !dbg !106
  store i32 %72, i32* %5, align 4, !dbg !106
  br label %36, !dbg !107, !llvm.loop !108

73:                                               ; preds = %36
  %74 = load i32, i32* %3, align 4, !dbg !111
  %75 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %2, i32 0, i32 1, !dbg !112
  store i32 %74, i32* %75, align 8, !dbg !113
  %76 = load i32, i32* %3, align 4, !dbg !114
  %77 = sdiv i32 %76, 2, !dbg !115
  %78 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %2, i32 0, i32 2, !dbg !116
  store i32 %77, i32* %78, align 4, !dbg !117
  %79 = load i32, i32* %4, align 4, !dbg !118
  call void @xmlHashGrow(%struct._xmlHashTable* noundef %2, i32 noundef %79), !dbg !119
  %80 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %2, i32 0, i32 0, !dbg !120
  %81 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %80, align 8, !dbg !120
  %82 = bitcast %struct._xmlHashEntry* %81 to i8*, !dbg !121
  call void @free(i8* noundef %82) #7, !dbg !122
  store i32 0, i32* %1, align 4, !dbg !123
  br label %83, !dbg !123

83:                                               ; preds = %73, %34
  %84 = load i32, i32* %1, align 4, !dbg !124
  ret i32 %84, !dbg !124
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmlHashGrow(%struct._xmlHashTable* noundef %0, i32 noundef %1) #0 !dbg !125 {
  %3 = alloca %struct._xmlHashTable*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._xmlHashEntry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct._xmlHashEntry*, align 8
  %10 = alloca %struct._xmlHashEntry*, align 8
  store %struct._xmlHashTable* %0, %struct._xmlHashTable** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlHashTable** %3, metadata !129, metadata !DIExpression()), !dbg !130
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !131, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.declare(metadata %struct._xmlHashEntry** %5, metadata !133, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.declare(metadata i32* %6, metadata !135, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.declare(metadata i32* %7, metadata !137, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.declare(metadata i32* %8, metadata !139, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.declare(metadata %struct._xmlHashEntry** %9, metadata !141, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.declare(metadata %struct._xmlHashEntry** %10, metadata !143, metadata !DIExpression()), !dbg !144
  %11 = load %struct._xmlHashTable*, %struct._xmlHashTable** %3, align 8, !dbg !145
  %12 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %11, i32 0, i32 0, !dbg !146
  %13 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %12, align 8, !dbg !146
  store %struct._xmlHashEntry* %13, %struct._xmlHashEntry** %5, align 8, !dbg !147
  %14 = load %struct._xmlHashTable*, %struct._xmlHashTable** %3, align 8, !dbg !148
  %15 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %14, i32 0, i32 1, !dbg !149
  %16 = load i32, i32* %15, align 8, !dbg !149
  store i32 %16, i32* %6, align 4, !dbg !150
  %17 = load i32, i32* %4, align 4, !dbg !151
  %18 = sext i32 %17 to i64, !dbg !151
  %19 = call noalias i8* @calloc(i64 noundef %18, i64 noundef 48) #7, !dbg !152
  %20 = bitcast i8* %19 to %struct._xmlHashEntry*, !dbg !153
  %21 = load %struct._xmlHashTable*, %struct._xmlHashTable** %3, align 8, !dbg !154
  %22 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %21, i32 0, i32 0, !dbg !155
  store %struct._xmlHashEntry* %20, %struct._xmlHashEntry** %22, align 8, !dbg !156
  %23 = load %struct._xmlHashTable*, %struct._xmlHashTable** %3, align 8, !dbg !157
  %24 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %23, i32 0, i32 0, !dbg !159
  %25 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %24, align 8, !dbg !159
  %26 = icmp eq %struct._xmlHashEntry* %25, null, !dbg !160
  br i1 %26, label %27, label %28, !dbg !161

27:                                               ; preds = %2
  br label %108, !dbg !162

28:                                               ; preds = %2
  %29 = load i32, i32* %4, align 4, !dbg !163
  %30 = load %struct._xmlHashTable*, %struct._xmlHashTable** %3, align 8, !dbg !164
  %31 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %30, i32 0, i32 1, !dbg !165
  store i32 %29, i32* %31, align 8, !dbg !166
  %32 = load %struct._xmlHashTable*, %struct._xmlHashTable** %3, align 8, !dbg !167
  %33 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %32, i32 0, i32 2, !dbg !168
  store i32 0, i32* %33, align 4, !dbg !169
  store i32 0, i32* %7, align 4, !dbg !170
  br label %34, !dbg !172

34:                                               ; preds = %102, %28
  %35 = load i32, i32* %7, align 4, !dbg !173
  %36 = load i32, i32* %6, align 4, !dbg !175
  %37 = icmp slt i32 %35, %36, !dbg !176
  br i1 %37, label %38, label %105, !dbg !177

38:                                               ; preds = %34
  %39 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %5, align 8, !dbg !178
  %40 = load i32, i32* %7, align 4, !dbg !181
  %41 = sext i32 %40 to i64, !dbg !178
  %42 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %39, i64 %41, !dbg !178
  %43 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %42, i32 0, i32 4, !dbg !182
  %44 = load i32, i32* %43, align 8, !dbg !182
  %45 = icmp eq i32 %44, 0, !dbg !183
  br i1 %45, label %46, label %47, !dbg !184

46:                                               ; preds = %38
  br label %102, !dbg !185

47:                                               ; preds = %38
  %48 = load %struct._xmlHashTable*, %struct._xmlHashTable** %3, align 8, !dbg !186
  %49 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %5, align 8, !dbg !187
  %50 = load i32, i32* %7, align 4, !dbg !188
  %51 = sext i32 %50 to i64, !dbg !187
  %52 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %49, i64 %51, !dbg !187
  %53 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %52, i32 0, i32 0, !dbg !189
  %54 = load i8*, i8** %53, align 8, !dbg !189
  %55 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %5, align 8, !dbg !190
  %56 = load i32, i32* %7, align 4, !dbg !191
  %57 = sext i32 %56 to i64, !dbg !190
  %58 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %55, i64 %57, !dbg !190
  %59 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %58, i32 0, i32 1, !dbg !192
  %60 = load i8*, i8** %59, align 8, !dbg !192
  %61 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %5, align 8, !dbg !193
  %62 = load i32, i32* %7, align 4, !dbg !194
  %63 = sext i32 %62 to i64, !dbg !193
  %64 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %61, i64 %63, !dbg !193
  %65 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %64, i32 0, i32 2, !dbg !195
  %66 = load i8*, i8** %65, align 8, !dbg !195
  %67 = call i32 @xmlHashComputeKey(%struct._xmlHashTable* noundef %48, i8* noundef %54, i8* noundef %60, i8* noundef %66), !dbg !196
  store i32 %67, i32* %8, align 4, !dbg !197
  %68 = load i32, i32* %8, align 4, !dbg !198
  %69 = icmp sge i32 %68, 0, !dbg !198
  br i1 %69, label %70, label %78, !dbg !198

70:                                               ; preds = %47
  %71 = load i32, i32* %8, align 4, !dbg !198
  %72 = load %struct._xmlHashTable*, %struct._xmlHashTable** %3, align 8, !dbg !198
  %73 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %72, i32 0, i32 1, !dbg !198
  %74 = load i32, i32* %73, align 8, !dbg !198
  %75 = icmp slt i32 %71, %74, !dbg !198
  br i1 %75, label %76, label %78, !dbg !198

76:                                               ; preds = %70
  br i1 true, label %77, label %78, !dbg !198

77:                                               ; preds = %76
  br label %80, !dbg !198

78:                                               ; preds = %76, %70, %47
  %79 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.4, i64 0, i64 0), i32 noundef 60, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.xmlHashGrow, i64 0, i64 0)), !dbg !198
  br label %80, !dbg !198

80:                                               ; preds = %78, %77
  %81 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.4, i64 0, i64 0), i32 noundef 63, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.xmlHashGrow, i64 0, i64 0)), !dbg !199
  %82 = load %struct._xmlHashTable*, %struct._xmlHashTable** %3, align 8, !dbg !200
  %83 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %82, i32 0, i32 0, !dbg !201
  %84 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %83, align 8, !dbg !201
  %85 = load i32, i32* %8, align 4, !dbg !202
  %86 = sext i32 %85 to i64, !dbg !200
  %87 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %84, i64 %86, !dbg !200
  %88 = bitcast %struct._xmlHashEntry* %87 to i8*, !dbg !203
  %89 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %5, align 8, !dbg !204
  %90 = load i32, i32* %7, align 4, !dbg !205
  %91 = sext i32 %90 to i64, !dbg !204
  %92 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %89, i64 %91, !dbg !204
  %93 = bitcast %struct._xmlHashEntry* %92 to i8*, !dbg !203
  %94 = call i8* @memcpy(i8* %88, i8* %93, i64 48), !dbg !203
  %95 = load %struct._xmlHashTable*, %struct._xmlHashTable** %3, align 8, !dbg !206
  %96 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %95, i32 0, i32 0, !dbg !207
  %97 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %96, align 8, !dbg !207
  %98 = load i32, i32* %8, align 4, !dbg !208
  %99 = sext i32 %98 to i64, !dbg !206
  %100 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %97, i64 %99, !dbg !206
  %101 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %100, i32 0, i32 5, !dbg !209
  store %struct._xmlHashEntry* null, %struct._xmlHashEntry** %101, align 8, !dbg !210
  br label %102, !dbg !211

102:                                              ; preds = %80, %46
  %103 = load i32, i32* %7, align 4, !dbg !212
  %104 = add nsw i32 %103, 1, !dbg !212
  store i32 %104, i32* %7, align 4, !dbg !212
  br label %34, !dbg !213, !llvm.loop !214

105:                                              ; preds = %34
  %106 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %5, align 8, !dbg !216
  %107 = bitcast %struct._xmlHashEntry* %106 to i8*, !dbg !216
  call void @free(i8* noundef %107) #7, !dbg !217
  br label %108, !dbg !218

108:                                              ; preds = %105, %27
  ret void, !dbg !218
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xmlHashComputeKey(%struct._xmlHashTable* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #0 !dbg !219 {
  %5 = alloca %struct._xmlHashTable*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct._xmlHashTable* %0, %struct._xmlHashTable** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlHashTable** %5, metadata !222, metadata !DIExpression()), !dbg !223
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !224, metadata !DIExpression()), !dbg !225
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !226, metadata !DIExpression()), !dbg !227
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !228, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.declare(metadata i32* %9, metadata !230, metadata !DIExpression()), !dbg !231
  %10 = bitcast i32* %9 to i8*, !dbg !232
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)), !dbg !233
  %11 = load i32, i32* %9, align 4, !dbg !234
  %12 = icmp sge i32 %11, 0, !dbg !235
  %13 = zext i1 %12 to i32, !dbg !235
  %14 = sext i32 %13 to i64, !dbg !234
  call void @klee_assume(i64 noundef %14), !dbg !236
  %15 = load i32, i32* %9, align 4, !dbg !237
  %16 = load %struct._xmlHashTable*, %struct._xmlHashTable** %5, align 8, !dbg !238
  %17 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %16, i32 0, i32 1, !dbg !239
  %18 = load i32, i32* %17, align 8, !dbg !239
  %19 = icmp slt i32 %15, %18, !dbg !240
  %20 = zext i1 %19 to i32, !dbg !240
  %21 = sext i32 %20 to i64, !dbg !237
  call void @klee_assume(i64 noundef %21), !dbg !241
  %22 = load i32, i32* %9, align 4, !dbg !242
  ret i32 %22, !dbg !243
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !244 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !253, metadata !DIExpression()), !dbg !254
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !255, metadata !DIExpression()), !dbg !256
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !257, metadata !DIExpression()), !dbg !258
  call void @llvm.dbg.declare(metadata i8** %7, metadata !259, metadata !DIExpression()), !dbg !262
  %9 = load i8*, i8** %4, align 8, !dbg !263
  store i8* %9, i8** %7, align 8, !dbg !262
  call void @llvm.dbg.declare(metadata i8** %8, metadata !264, metadata !DIExpression()), !dbg !267
  %10 = load i8*, i8** %5, align 8, !dbg !268
  store i8* %10, i8** %8, align 8, !dbg !267
  br label %11, !dbg !269

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !270
  %13 = add i64 %12, -1, !dbg !270
  store i64 %13, i64* %6, align 8, !dbg !270
  %14 = icmp ugt i64 %12, 0, !dbg !271
  br i1 %14, label %15, label %21, !dbg !269

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !272
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !272
  store i8* %17, i8** %8, align 8, !dbg !272
  %18 = load i8, i8* %16, align 1, !dbg !273
  %19 = load i8*, i8** %7, align 8, !dbg !274
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !274
  store i8* %20, i8** %7, align 8, !dbg !274
  store i8 %18, i8* %19, align 1, !dbg !275
  br label %11, !dbg !269, !llvm.loop !276

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !277
  ret i8* %22, !dbg !278
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24, !24}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/033_hash.c_273_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "91b16bf27d22a3dad14af2da9a0edef7")
!2 = !{!3, !8}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashEntry", file: !1, line: 10, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlHashEntry", file: !1, line: 13, size: 384, elements: !6)
!6 = !{!7, !9, !10, !11, !12, !14}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5, file: !1, line: 14, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_member, name: "name2", scope: !5, file: !1, line: 15, baseType: !8, size: 64, offset: 64)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "name3", scope: !5, file: !1, line: 16, baseType: !8, size: 64, offset: 128)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !5, file: !1, line: 17, baseType: !8, size: 64, offset: 192)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !5, file: !1, line: 18, baseType: !13, size: 32, offset: 256)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5, file: !1, line: 19, baseType: !3, size: 64, offset: 320)
!15 = distinct !DICompileUnit(language: DW_LANG_C99, file: !16, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!16 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!17 = !{i32 7, !"Dwarf Version", i32 5}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 4}
!20 = !{i32 7, !"PIC Level", i32 2}
!21 = !{i32 7, !"PIE Level", i32 2}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"Ubuntu clang version 14.0.6"}
!25 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 73, type: !26, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!26 = !DISubroutineType(types: !27)
!27 = !{!13}
!28 = !{}
!29 = !DILocalVariable(name: "table", scope: !25, file: !1, line: 74, type: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTable", file: !1, line: 11, baseType: !31)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlHashTable", file: !1, line: 22, size: 128, elements: !32)
!32 = !{!33, !34, !35}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !31, file: !1, line: 23, baseType: !3, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !31, file: !1, line: 24, baseType: !13, size: 32, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "nbElems", scope: !31, file: !1, line: 25, baseType: !13, size: 32, offset: 96)
!36 = !DILocation(line: 74, column: 18, scope: !25)
!37 = !DILocalVariable(name: "oldsize", scope: !25, file: !1, line: 75, type: !13)
!38 = !DILocation(line: 75, column: 9, scope: !25)
!39 = !DILocalVariable(name: "newsize", scope: !25, file: !1, line: 75, type: !13)
!40 = !DILocation(line: 75, column: 18, scope: !25)
!41 = !DILocation(line: 78, column: 24, scope: !25)
!42 = !DILocation(line: 78, column: 5, scope: !25)
!43 = !DILocation(line: 79, column: 24, scope: !25)
!44 = !DILocation(line: 79, column: 5, scope: !25)
!45 = !DILocation(line: 82, column: 17, scope: !25)
!46 = !DILocation(line: 82, column: 25, scope: !25)
!47 = !DILocation(line: 82, column: 29, scope: !25)
!48 = !DILocation(line: 82, column: 32, scope: !25)
!49 = !DILocation(line: 82, column: 40, scope: !25)
!50 = !DILocation(line: 0, scope: !25)
!51 = !DILocation(line: 82, column: 5, scope: !25)
!52 = !DILocation(line: 83, column: 17, scope: !25)
!53 = !DILocation(line: 83, column: 25, scope: !25)
!54 = !DILocation(line: 83, column: 29, scope: !25)
!55 = !DILocation(line: 83, column: 32, scope: !25)
!56 = !DILocation(line: 83, column: 40, scope: !25)
!57 = !DILocation(line: 83, column: 5, scope: !25)
!58 = !DILocation(line: 86, column: 43, scope: !25)
!59 = !DILocation(line: 86, column: 36, scope: !25)
!60 = !DILocation(line: 86, column: 19, scope: !25)
!61 = !DILocation(line: 86, column: 11, scope: !25)
!62 = !DILocation(line: 86, column: 17, scope: !25)
!63 = !DILocation(line: 87, column: 15, scope: !64)
!64 = distinct !DILexicalBlock(scope: !25, file: !1, line: 87, column: 9)
!65 = !DILocation(line: 87, column: 21, scope: !64)
!66 = !DILocation(line: 87, column: 9, scope: !25)
!67 = !DILocation(line: 87, column: 30, scope: !64)
!68 = !DILocalVariable(name: "i", scope: !69, file: !1, line: 90, type: !13)
!69 = distinct !DILexicalBlock(scope: !25, file: !1, line: 90, column: 5)
!70 = !DILocation(line: 90, column: 14, scope: !69)
!71 = !DILocation(line: 90, column: 10, scope: !69)
!72 = !DILocation(line: 90, column: 21, scope: !73)
!73 = distinct !DILexicalBlock(scope: !69, file: !1, line: 90, column: 5)
!74 = !DILocation(line: 90, column: 25, scope: !73)
!75 = !DILocation(line: 90, column: 23, scope: !73)
!76 = !DILocation(line: 90, column: 5, scope: !69)
!77 = !DILocation(line: 91, column: 13, scope: !78)
!78 = distinct !DILexicalBlock(scope: !79, file: !1, line: 91, column: 13)
!79 = distinct !DILexicalBlock(scope: !73, file: !1, line: 90, column: 39)
!80 = !DILocation(line: 91, column: 15, scope: !78)
!81 = !DILocation(line: 91, column: 19, scope: !78)
!82 = !DILocation(line: 91, column: 13, scope: !79)
!83 = !DILocation(line: 92, column: 19, scope: !84)
!84 = distinct !DILexicalBlock(scope: !78, file: !1, line: 91, column: 25)
!85 = !DILocation(line: 92, column: 25, scope: !84)
!86 = !DILocation(line: 92, column: 13, scope: !84)
!87 = !DILocation(line: 92, column: 28, scope: !84)
!88 = !DILocation(line: 92, column: 34, scope: !84)
!89 = !DILocation(line: 94, column: 19, scope: !84)
!90 = !DILocation(line: 94, column: 25, scope: !84)
!91 = !DILocation(line: 94, column: 13, scope: !84)
!92 = !DILocation(line: 94, column: 28, scope: !84)
!93 = !DILocation(line: 94, column: 33, scope: !84)
!94 = !DILocation(line: 95, column: 19, scope: !84)
!95 = !DILocation(line: 95, column: 25, scope: !84)
!96 = !DILocation(line: 95, column: 13, scope: !84)
!97 = !DILocation(line: 95, column: 28, scope: !84)
!98 = !DILocation(line: 95, column: 34, scope: !84)
!99 = !DILocation(line: 96, column: 19, scope: !84)
!100 = !DILocation(line: 96, column: 25, scope: !84)
!101 = !DILocation(line: 96, column: 13, scope: !84)
!102 = !DILocation(line: 96, column: 28, scope: !84)
!103 = !DILocation(line: 96, column: 34, scope: !84)
!104 = !DILocation(line: 97, column: 9, scope: !84)
!105 = !DILocation(line: 98, column: 5, scope: !79)
!106 = !DILocation(line: 90, column: 35, scope: !73)
!107 = !DILocation(line: 90, column: 5, scope: !73)
!108 = distinct !{!108, !76, !109, !110}
!109 = !DILocation(line: 98, column: 5, scope: !69)
!110 = !{!"llvm.loop.mustprogress"}
!111 = !DILocation(line: 100, column: 18, scope: !25)
!112 = !DILocation(line: 100, column: 11, scope: !25)
!113 = !DILocation(line: 100, column: 16, scope: !25)
!114 = !DILocation(line: 101, column: 21, scope: !25)
!115 = !DILocation(line: 101, column: 29, scope: !25)
!116 = !DILocation(line: 101, column: 11, scope: !25)
!117 = !DILocation(line: 101, column: 19, scope: !25)
!118 = !DILocation(line: 104, column: 25, scope: !25)
!119 = !DILocation(line: 104, column: 5, scope: !25)
!120 = !DILocation(line: 107, column: 16, scope: !25)
!121 = !DILocation(line: 107, column: 10, scope: !25)
!122 = !DILocation(line: 107, column: 5, scope: !25)
!123 = !DILocation(line: 109, column: 5, scope: !25)
!124 = !DILocation(line: 110, column: 1, scope: !25)
!125 = distinct !DISubprogram(name: "xmlHashGrow", scope: !1, file: !1, line: 38, type: !126, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !28)
!126 = !DISubroutineType(types: !127)
!127 = !{null, !128, !13}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!129 = !DILocalVariable(name: "table", arg: 1, scope: !125, file: !1, line: 38, type: !128)
!130 = !DILocation(line: 38, column: 39, scope: !125)
!131 = !DILocalVariable(name: "size", arg: 2, scope: !125, file: !1, line: 38, type: !13)
!132 = !DILocation(line: 38, column: 50, scope: !125)
!133 = !DILocalVariable(name: "oldtable", scope: !125, file: !1, line: 39, type: !3)
!134 = !DILocation(line: 39, column: 19, scope: !125)
!135 = !DILocalVariable(name: "oldsize", scope: !125, file: !1, line: 40, type: !13)
!136 = !DILocation(line: 40, column: 9, scope: !125)
!137 = !DILocalVariable(name: "i", scope: !125, file: !1, line: 40, type: !13)
!138 = !DILocation(line: 40, column: 18, scope: !125)
!139 = !DILocalVariable(name: "key", scope: !125, file: !1, line: 40, type: !13)
!140 = !DILocation(line: 40, column: 21, scope: !125)
!141 = !DILocalVariable(name: "iter", scope: !125, file: !1, line: 41, type: !3)
!142 = !DILocation(line: 41, column: 19, scope: !125)
!143 = !DILocalVariable(name: "next", scope: !125, file: !1, line: 41, type: !3)
!144 = !DILocation(line: 41, column: 26, scope: !125)
!145 = !DILocation(line: 43, column: 16, scope: !125)
!146 = !DILocation(line: 43, column: 23, scope: !125)
!147 = !DILocation(line: 43, column: 14, scope: !125)
!148 = !DILocation(line: 44, column: 15, scope: !125)
!149 = !DILocation(line: 44, column: 22, scope: !125)
!150 = !DILocation(line: 44, column: 13, scope: !125)
!151 = !DILocation(line: 46, column: 44, scope: !125)
!152 = !DILocation(line: 46, column: 37, scope: !125)
!153 = !DILocation(line: 46, column: 20, scope: !125)
!154 = !DILocation(line: 46, column: 5, scope: !125)
!155 = !DILocation(line: 46, column: 12, scope: !125)
!156 = !DILocation(line: 46, column: 18, scope: !125)
!157 = !DILocation(line: 47, column: 9, scope: !158)
!158 = distinct !DILexicalBlock(scope: !125, file: !1, line: 47, column: 9)
!159 = !DILocation(line: 47, column: 16, scope: !158)
!160 = !DILocation(line: 47, column: 22, scope: !158)
!161 = !DILocation(line: 47, column: 9, scope: !125)
!162 = !DILocation(line: 47, column: 31, scope: !158)
!163 = !DILocation(line: 49, column: 19, scope: !125)
!164 = !DILocation(line: 49, column: 5, scope: !125)
!165 = !DILocation(line: 49, column: 12, scope: !125)
!166 = !DILocation(line: 49, column: 17, scope: !125)
!167 = !DILocation(line: 50, column: 5, scope: !125)
!168 = !DILocation(line: 50, column: 12, scope: !125)
!169 = !DILocation(line: 50, column: 20, scope: !125)
!170 = !DILocation(line: 53, column: 12, scope: !171)
!171 = distinct !DILexicalBlock(scope: !125, file: !1, line: 53, column: 5)
!172 = !DILocation(line: 53, column: 10, scope: !171)
!173 = !DILocation(line: 53, column: 17, scope: !174)
!174 = distinct !DILexicalBlock(scope: !171, file: !1, line: 53, column: 5)
!175 = !DILocation(line: 53, column: 21, scope: !174)
!176 = !DILocation(line: 53, column: 19, scope: !174)
!177 = !DILocation(line: 53, column: 5, scope: !171)
!178 = !DILocation(line: 54, column: 13, scope: !179)
!179 = distinct !DILexicalBlock(scope: !180, file: !1, line: 54, column: 13)
!180 = distinct !DILexicalBlock(scope: !174, file: !1, line: 53, column: 35)
!181 = !DILocation(line: 54, column: 22, scope: !179)
!182 = !DILocation(line: 54, column: 25, scope: !179)
!183 = !DILocation(line: 54, column: 31, scope: !179)
!184 = !DILocation(line: 54, column: 13, scope: !180)
!185 = !DILocation(line: 55, column: 13, scope: !179)
!186 = !DILocation(line: 56, column: 33, scope: !180)
!187 = !DILocation(line: 56, column: 40, scope: !180)
!188 = !DILocation(line: 56, column: 49, scope: !180)
!189 = !DILocation(line: 56, column: 52, scope: !180)
!190 = !DILocation(line: 56, column: 58, scope: !180)
!191 = !DILocation(line: 56, column: 67, scope: !180)
!192 = !DILocation(line: 56, column: 70, scope: !180)
!193 = !DILocation(line: 57, column: 33, scope: !180)
!194 = !DILocation(line: 57, column: 42, scope: !180)
!195 = !DILocation(line: 57, column: 45, scope: !180)
!196 = !DILocation(line: 56, column: 15, scope: !180)
!197 = !DILocation(line: 56, column: 13, scope: !180)
!198 = !DILocation(line: 60, column: 9, scope: !180)
!199 = !DILocation(line: 63, column: 9, scope: !180)
!200 = !DILocation(line: 65, column: 18, scope: !180)
!201 = !DILocation(line: 65, column: 25, scope: !180)
!202 = !DILocation(line: 65, column: 31, scope: !180)
!203 = !DILocation(line: 65, column: 9, scope: !180)
!204 = !DILocation(line: 65, column: 40, scope: !180)
!205 = !DILocation(line: 65, column: 49, scope: !180)
!206 = !DILocation(line: 66, column: 9, scope: !180)
!207 = !DILocation(line: 66, column: 16, scope: !180)
!208 = !DILocation(line: 66, column: 22, scope: !180)
!209 = !DILocation(line: 66, column: 27, scope: !180)
!210 = !DILocation(line: 66, column: 32, scope: !180)
!211 = !DILocation(line: 67, column: 5, scope: !180)
!212 = !DILocation(line: 53, column: 31, scope: !174)
!213 = !DILocation(line: 53, column: 5, scope: !174)
!214 = distinct !{!214, !177, !215, !110}
!215 = !DILocation(line: 67, column: 5, scope: !171)
!216 = !DILocation(line: 70, column: 10, scope: !125)
!217 = !DILocation(line: 70, column: 5, scope: !125)
!218 = !DILocation(line: 71, column: 1, scope: !125)
!219 = distinct !DISubprogram(name: "xmlHashComputeKey", scope: !1, file: !1, line: 29, type: !220, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !28)
!220 = !DISubroutineType(types: !221)
!221 = !{!13, !128, !8, !8, !8}
!222 = !DILocalVariable(name: "table", arg: 1, scope: !219, file: !1, line: 29, type: !128)
!223 = !DILocation(line: 29, column: 44, scope: !219)
!224 = !DILocalVariable(name: "name", arg: 2, scope: !219, file: !1, line: 29, type: !8)
!225 = !DILocation(line: 29, column: 57, scope: !219)
!226 = !DILocalVariable(name: "name2", arg: 3, scope: !219, file: !1, line: 29, type: !8)
!227 = !DILocation(line: 29, column: 69, scope: !219)
!228 = !DILocalVariable(name: "name3", arg: 4, scope: !219, file: !1, line: 29, type: !8)
!229 = !DILocation(line: 29, column: 82, scope: !219)
!230 = !DILocalVariable(name: "key", scope: !219, file: !1, line: 30, type: !13)
!231 = !DILocation(line: 30, column: 9, scope: !219)
!232 = !DILocation(line: 31, column: 24, scope: !219)
!233 = !DILocation(line: 31, column: 5, scope: !219)
!234 = !DILocation(line: 32, column: 17, scope: !219)
!235 = !DILocation(line: 32, column: 21, scope: !219)
!236 = !DILocation(line: 32, column: 5, scope: !219)
!237 = !DILocation(line: 33, column: 17, scope: !219)
!238 = !DILocation(line: 33, column: 23, scope: !219)
!239 = !DILocation(line: 33, column: 30, scope: !219)
!240 = !DILocation(line: 33, column: 21, scope: !219)
!241 = !DILocation(line: 33, column: 5, scope: !219)
!242 = !DILocation(line: 34, column: 12, scope: !219)
!243 = !DILocation(line: 34, column: 5, scope: !219)
!244 = distinct !DISubprogram(name: "memcpy", scope: !245, file: !245, line: 12, type: !246, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !28)
!245 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!246 = !DISubroutineType(types: !247)
!247 = !{!8, !8, !248, !250}
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !251, line: 46, baseType: !252)
!251 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!252 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!253 = !DILocalVariable(name: "destaddr", arg: 1, scope: !244, file: !245, line: 12, type: !8)
!254 = !DILocation(line: 12, column: 20, scope: !244)
!255 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !244, file: !245, line: 12, type: !248)
!256 = !DILocation(line: 12, column: 42, scope: !244)
!257 = !DILocalVariable(name: "len", arg: 3, scope: !244, file: !245, line: 12, type: !250)
!258 = !DILocation(line: 12, column: 58, scope: !244)
!259 = !DILocalVariable(name: "dest", scope: !244, file: !245, line: 13, type: !260)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!262 = !DILocation(line: 13, column: 9, scope: !244)
!263 = !DILocation(line: 13, column: 16, scope: !244)
!264 = !DILocalVariable(name: "src", scope: !244, file: !245, line: 14, type: !265)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !261)
!267 = !DILocation(line: 14, column: 15, scope: !244)
!268 = !DILocation(line: 14, column: 21, scope: !244)
!269 = !DILocation(line: 16, column: 3, scope: !244)
!270 = !DILocation(line: 16, column: 13, scope: !244)
!271 = !DILocation(line: 16, column: 16, scope: !244)
!272 = !DILocation(line: 17, column: 19, scope: !244)
!273 = !DILocation(line: 17, column: 15, scope: !244)
!274 = !DILocation(line: 17, column: 10, scope: !244)
!275 = !DILocation(line: 17, column: 13, scope: !244)
!276 = distinct !{!276, !269, !272, !110}
!277 = !DILocation(line: 18, column: 10, scope: !244)
!278 = !DILocation(line: 18, column: 3, scope: !244)

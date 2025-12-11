; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/032_hash.c_1134_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/032_hash.c_1134_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlHashTable = type { %struct._xmlHashEntry*, i32, i32 }
%struct._xmlHashEntry = type { i8*, i8*, i8*, i8*, %struct._xmlHashEntry* }

@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"(move_len <= dest_space) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/032_hash.c_1134_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlHashRemoveEntry3 = private unnamed_addr constant [82 x i8] c"int xmlHashRemoveEntry3(xmlHashTable *, const char *, const char *, const char *)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"table_size\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"name2\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"name3\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlHashRemoveEntry3(%struct._xmlHashTable* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #0 !dbg !33 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._xmlHashTable*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct._xmlHashEntry*, align 8
  %11 = alloca %struct._xmlHashEntry*, align 8
  %12 = alloca %struct._xmlHashEntry*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct._xmlHashTable* %0, %struct._xmlHashTable** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlHashTable** %6, metadata !37, metadata !DIExpression()), !dbg !38
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !39, metadata !DIExpression()), !dbg !40
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !41, metadata !DIExpression()), !dbg !42
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !43, metadata !DIExpression()), !dbg !44
  %15 = load %struct._xmlHashTable*, %struct._xmlHashTable** %6, align 8, !dbg !45
  %16 = icmp ne %struct._xmlHashTable* %15, null, !dbg !45
  br i1 %16, label %17, label %27, !dbg !47

17:                                               ; preds = %4
  %18 = load %struct._xmlHashTable*, %struct._xmlHashTable** %6, align 8, !dbg !48
  %19 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %18, i32 0, i32 0, !dbg !49
  %20 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %19, align 8, !dbg !49
  %21 = icmp ne %struct._xmlHashEntry* %20, null, !dbg !48
  br i1 %21, label %22, label %27, !dbg !50

22:                                               ; preds = %17
  %23 = load %struct._xmlHashTable*, %struct._xmlHashTable** %6, align 8, !dbg !51
  %24 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %23, i32 0, i32 1, !dbg !52
  %25 = load i32, i32* %24, align 8, !dbg !52
  %26 = icmp sle i32 %25, 0, !dbg !53
  br i1 %26, label %27, label %28, !dbg !54

27:                                               ; preds = %22, %17, %4
  store i32 -1, i32* %5, align 4, !dbg !55
  br label %78, !dbg !55

28:                                               ; preds = %22
  call void @llvm.dbg.declare(metadata %struct._xmlHashEntry** %10, metadata !56, metadata !DIExpression()), !dbg !57
  %29 = load %struct._xmlHashTable*, %struct._xmlHashTable** %6, align 8, !dbg !58
  %30 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %29, i32 0, i32 0, !dbg !59
  %31 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %30, align 8, !dbg !59
  %32 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %31, i64 0, !dbg !58
  store %struct._xmlHashEntry* %32, %struct._xmlHashEntry** %10, align 8, !dbg !57
  call void @llvm.dbg.declare(metadata %struct._xmlHashEntry** %11, metadata !60, metadata !DIExpression()), !dbg !61
  %33 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %10, align 8, !dbg !62
  %34 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %33, i64 1, !dbg !63
  store %struct._xmlHashEntry* %34, %struct._xmlHashEntry** %11, align 8, !dbg !61
  %35 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %10, align 8, !dbg !64
  %36 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %10, align 8, !dbg !66
  %37 = icmp ult %struct._xmlHashEntry* %35, %36, !dbg !67
  br i1 %37, label %38, label %77, !dbg !68

38:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata %struct._xmlHashEntry** %12, metadata !69, metadata !DIExpression()), !dbg !71
  %39 = load %struct._xmlHashTable*, %struct._xmlHashTable** %6, align 8, !dbg !72
  %40 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %39, i32 0, i32 0, !dbg !73
  %41 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %40, align 8, !dbg !73
  %42 = load %struct._xmlHashTable*, %struct._xmlHashTable** %6, align 8, !dbg !74
  %43 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %42, i32 0, i32 1, !dbg !75
  %44 = load i32, i32* %43, align 8, !dbg !75
  %45 = sext i32 %44 to i64, !dbg !72
  %46 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %41, i64 %45, !dbg !72
  store %struct._xmlHashEntry* %46, %struct._xmlHashEntry** %12, align 8, !dbg !71
  call void @llvm.dbg.declare(metadata i64* %13, metadata !76, metadata !DIExpression()), !dbg !80
  %47 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %12, align 8, !dbg !81
  %48 = bitcast %struct._xmlHashEntry* %47 to i8*, !dbg !82
  %49 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %11, align 8, !dbg !83
  %50 = bitcast %struct._xmlHashEntry* %49 to i8*, !dbg !84
  %51 = ptrtoint i8* %48 to i64, !dbg !85
  %52 = ptrtoint i8* %50 to i64, !dbg !85
  %53 = sub i64 %51, %52, !dbg !85
  store i64 %53, i64* %13, align 8, !dbg !80
  call void @llvm.dbg.declare(metadata i64* %14, metadata !86, metadata !DIExpression()), !dbg !87
  %54 = load %struct._xmlHashTable*, %struct._xmlHashTable** %6, align 8, !dbg !88
  %55 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %54, i32 0, i32 0, !dbg !89
  %56 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %55, align 8, !dbg !89
  %57 = load %struct._xmlHashTable*, %struct._xmlHashTable** %6, align 8, !dbg !90
  %58 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %57, i32 0, i32 1, !dbg !91
  %59 = load i32, i32* %58, align 8, !dbg !91
  %60 = sext i32 %59 to i64, !dbg !88
  %61 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %56, i64 %60, !dbg !88
  %62 = bitcast %struct._xmlHashEntry* %61 to i8*, !dbg !92
  %63 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %10, align 8, !dbg !93
  %64 = bitcast %struct._xmlHashEntry* %63 to i8*, !dbg !94
  %65 = ptrtoint i8* %62 to i64, !dbg !95
  %66 = ptrtoint i8* %64 to i64, !dbg !95
  %67 = sub i64 %65, %66, !dbg !95
  store i64 %67, i64* %14, align 8, !dbg !87
  %68 = load i64, i64* %13, align 8, !dbg !96
  %69 = load i64, i64* %14, align 8, !dbg !96
  %70 = icmp ule i64 %68, %69, !dbg !96
  br i1 %70, label %71, label %73, !dbg !96

71:                                               ; preds = %38
  br i1 true, label %72, label %73, !dbg !96

72:                                               ; preds = %71
  br label %75, !dbg !96

73:                                               ; preds = %71, %38
  %74 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.2, i64 0, i64 0), i32 noundef 47, i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @__PRETTY_FUNCTION__.xmlHashRemoveEntry3, i64 0, i64 0)), !dbg !96
  br label %75, !dbg !96

75:                                               ; preds = %73, %72
  %76 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.2, i64 0, i64 0), i32 noundef 50, i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @__PRETTY_FUNCTION__.xmlHashRemoveEntry3, i64 0, i64 0)), !dbg !97
  br label %77, !dbg !98

77:                                               ; preds = %75, %28
  store i32 0, i32* %5, align 4, !dbg !99
  br label %78, !dbg !99

78:                                               ; preds = %77, %27
  %79 = load i32, i32* %5, align 4, !dbg !100
  ret i32 %79, !dbg !100
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !101 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct._xmlHashTable*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [32 x i8], align 16
  %6 = alloca [32 x i8], align 16
  %7 = alloca [32 x i8], align 16
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !104, metadata !DIExpression()), !dbg !105
  %9 = bitcast i32* %2 to i8*, !dbg !106
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)), !dbg !107
  %10 = load i32, i32* %2, align 4, !dbg !108
  %11 = icmp sgt i32 %10, 1, !dbg !109
  %12 = zext i1 %11 to i32, !dbg !109
  %13 = sext i32 %12 to i64, !dbg !108
  call void @klee_assume(i64 noundef %13), !dbg !110
  %14 = load i32, i32* %2, align 4, !dbg !111
  %15 = icmp slt i32 %14, 100, !dbg !112
  %16 = zext i1 %15 to i32, !dbg !112
  %17 = sext i32 %16 to i64, !dbg !111
  call void @klee_assume(i64 noundef %17), !dbg !113
  call void @llvm.dbg.declare(metadata %struct._xmlHashTable** %3, metadata !114, metadata !DIExpression()), !dbg !115
  %18 = call noalias i8* @malloc(i64 noundef 16) #5, !dbg !116
  %19 = bitcast i8* %18 to %struct._xmlHashTable*, !dbg !117
  store %struct._xmlHashTable* %19, %struct._xmlHashTable** %3, align 8, !dbg !115
  %20 = load i32, i32* %2, align 4, !dbg !118
  %21 = load %struct._xmlHashTable*, %struct._xmlHashTable** %3, align 8, !dbg !119
  %22 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %21, i32 0, i32 1, !dbg !120
  store i32 %20, i32* %22, align 8, !dbg !121
  %23 = load %struct._xmlHashTable*, %struct._xmlHashTable** %3, align 8, !dbg !122
  %24 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %23, i32 0, i32 2, !dbg !123
  store i32 0, i32* %24, align 4, !dbg !124
  %25 = load i32, i32* %2, align 4, !dbg !125
  %26 = sext i32 %25 to i64, !dbg !125
  %27 = mul i64 40, %26, !dbg !126
  %28 = call noalias i8* @malloc(i64 noundef %27) #5, !dbg !127
  %29 = bitcast i8* %28 to %struct._xmlHashEntry*, !dbg !128
  %30 = load %struct._xmlHashTable*, %struct._xmlHashTable** %3, align 8, !dbg !129
  %31 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %30, i32 0, i32 0, !dbg !130
  store %struct._xmlHashEntry* %29, %struct._xmlHashEntry** %31, align 8, !dbg !131
  call void @llvm.dbg.declare(metadata i32* %4, metadata !132, metadata !DIExpression()), !dbg !134
  store i32 0, i32* %4, align 4, !dbg !134
  br label %32, !dbg !135

32:                                               ; preds = %72, %0
  %33 = load i32, i32* %4, align 4, !dbg !136
  %34 = load i32, i32* %2, align 4, !dbg !138
  %35 = icmp slt i32 %33, %34, !dbg !139
  br i1 %35, label %36, label %75, !dbg !140

36:                                               ; preds = %32
  %37 = load %struct._xmlHashTable*, %struct._xmlHashTable** %3, align 8, !dbg !141
  %38 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %37, i32 0, i32 0, !dbg !143
  %39 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %38, align 8, !dbg !143
  %40 = load i32, i32* %4, align 4, !dbg !144
  %41 = sext i32 %40 to i64, !dbg !141
  %42 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %39, i64 %41, !dbg !141
  %43 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %42, i32 0, i32 0, !dbg !145
  store i8* null, i8** %43, align 8, !dbg !146
  %44 = load %struct._xmlHashTable*, %struct._xmlHashTable** %3, align 8, !dbg !147
  %45 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %44, i32 0, i32 0, !dbg !148
  %46 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %45, align 8, !dbg !148
  %47 = load i32, i32* %4, align 4, !dbg !149
  %48 = sext i32 %47 to i64, !dbg !147
  %49 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %46, i64 %48, !dbg !147
  %50 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %49, i32 0, i32 1, !dbg !150
  store i8* null, i8** %50, align 8, !dbg !151
  %51 = load %struct._xmlHashTable*, %struct._xmlHashTable** %3, align 8, !dbg !152
  %52 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %51, i32 0, i32 0, !dbg !153
  %53 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %52, align 8, !dbg !153
  %54 = load i32, i32* %4, align 4, !dbg !154
  %55 = sext i32 %54 to i64, !dbg !152
  %56 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %53, i64 %55, !dbg !152
  %57 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %56, i32 0, i32 2, !dbg !155
  store i8* null, i8** %57, align 8, !dbg !156
  %58 = load %struct._xmlHashTable*, %struct._xmlHashTable** %3, align 8, !dbg !157
  %59 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %58, i32 0, i32 0, !dbg !158
  %60 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %59, align 8, !dbg !158
  %61 = load i32, i32* %4, align 4, !dbg !159
  %62 = sext i32 %61 to i64, !dbg !157
  %63 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %60, i64 %62, !dbg !157
  %64 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %63, i32 0, i32 3, !dbg !160
  store i8* null, i8** %64, align 8, !dbg !161
  %65 = load %struct._xmlHashTable*, %struct._xmlHashTable** %3, align 8, !dbg !162
  %66 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %65, i32 0, i32 0, !dbg !163
  %67 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %66, align 8, !dbg !163
  %68 = load i32, i32* %4, align 4, !dbg !164
  %69 = sext i32 %68 to i64, !dbg !162
  %70 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %67, i64 %69, !dbg !162
  %71 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %70, i32 0, i32 4, !dbg !165
  store %struct._xmlHashEntry* null, %struct._xmlHashEntry** %71, align 8, !dbg !166
  br label %72, !dbg !167

72:                                               ; preds = %36
  %73 = load i32, i32* %4, align 4, !dbg !168
  %74 = add nsw i32 %73, 1, !dbg !168
  store i32 %74, i32* %4, align 4, !dbg !168
  br label %32, !dbg !169, !llvm.loop !170

75:                                               ; preds = %32
  call void @llvm.dbg.declare(metadata [32 x i8]* %5, metadata !173, metadata !DIExpression()), !dbg !177
  call void @llvm.dbg.declare(metadata [32 x i8]* %6, metadata !178, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.declare(metadata [32 x i8]* %7, metadata !180, metadata !DIExpression()), !dbg !181
  %76 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0, !dbg !182
  call void @klee_make_symbolic(i8* noundef %76, i64 noundef 32, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)), !dbg !183
  %77 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0, !dbg !184
  call void @klee_make_symbolic(i8* noundef %77, i64 noundef 32, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)), !dbg !185
  %78 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0, !dbg !186
  call void @klee_make_symbolic(i8* noundef %78, i64 noundef 32, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)), !dbg !187
  call void @llvm.dbg.declare(metadata i32* %8, metadata !188, metadata !DIExpression()), !dbg !189
  %79 = load %struct._xmlHashTable*, %struct._xmlHashTable** %3, align 8, !dbg !190
  %80 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0, !dbg !191
  %81 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0, !dbg !192
  %82 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0, !dbg !193
  %83 = call i32 @xmlHashRemoveEntry3(%struct._xmlHashTable* noundef %79, i8* noundef %80, i8* noundef %81, i8* noundef %82), !dbg !194
  store i32 %83, i32* %8, align 4, !dbg !189
  %84 = load %struct._xmlHashTable*, %struct._xmlHashTable** %3, align 8, !dbg !195
  %85 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %84, i32 0, i32 0, !dbg !196
  %86 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %85, align 8, !dbg !196
  %87 = bitcast %struct._xmlHashEntry* %86 to i8*, !dbg !195
  call void @free(i8* noundef %87) #5, !dbg !197
  %88 = load %struct._xmlHashTable*, %struct._xmlHashTable** %3, align 8, !dbg !198
  %89 = bitcast %struct._xmlHashTable* %88 to i8*, !dbg !198
  call void @free(i8* noundef %89) #5, !dbg !199
  ret i32 0, !dbg !200
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/032_hash.c_1134_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "b5616f19d77961107c6eeac3ad9119e0")
!2 = !{!3, !5, !10, !15}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTable", file: !1, line: 19, baseType: !7)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlHashTable", file: !1, line: 20, size: 128, elements: !8)
!8 = !{!9, !22, !24}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !7, file: !1, line: 21, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashEntry", file: !1, line: 10, baseType: !12)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlHashEntry", file: !1, line: 11, size: 320, elements: !13)
!13 = !{!14, !16, !19, !20, !21}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !12, file: !1, line: 12, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !12, file: !1, line: 13, baseType: !17, size: 64, offset: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "name2", scope: !12, file: !1, line: 14, baseType: !17, size: 64, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "name3", scope: !12, file: !1, line: 15, baseType: !17, size: 64, offset: 192)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !12, file: !1, line: 16, baseType: !10, size: 64, offset: 256)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !7, file: !1, line: 22, baseType: !23, size: 32, offset: 64)
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "nbElems", scope: !7, file: !1, line: 23, baseType: !23, size: 32, offset: 96)
!25 = !{i32 7, !"Dwarf Version", i32 5}
!26 = !{i32 2, !"Debug Info Version", i32 3}
!27 = !{i32 1, !"wchar_size", i32 4}
!28 = !{i32 7, !"PIC Level", i32 2}
!29 = !{i32 7, !"PIE Level", i32 2}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"Ubuntu clang version 14.0.6"}
!33 = distinct !DISubprogram(name: "xmlHashRemoveEntry3", scope: !1, file: !1, line: 27, type: !34, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !36)
!34 = !DISubroutineType(types: !35)
!35 = !{!23, !5, !17, !17, !17}
!36 = !{}
!37 = !DILocalVariable(name: "hash", arg: 1, scope: !33, file: !1, line: 27, type: !5)
!38 = !DILocation(line: 27, column: 39, scope: !33)
!39 = !DILocalVariable(name: "name", arg: 2, scope: !33, file: !1, line: 27, type: !17)
!40 = !DILocation(line: 27, column: 57, scope: !33)
!41 = !DILocalVariable(name: "name2", arg: 3, scope: !33, file: !1, line: 28, type: !17)
!42 = !DILocation(line: 28, column: 37, scope: !33)
!43 = !DILocalVariable(name: "name3", arg: 4, scope: !33, file: !1, line: 28, type: !17)
!44 = !DILocation(line: 28, column: 56, scope: !33)
!45 = !DILocation(line: 29, column: 10, scope: !46)
!46 = distinct !DILexicalBlock(scope: !33, file: !1, line: 29, column: 9)
!47 = !DILocation(line: 29, column: 15, scope: !46)
!48 = !DILocation(line: 29, column: 19, scope: !46)
!49 = !DILocation(line: 29, column: 25, scope: !46)
!50 = !DILocation(line: 29, column: 31, scope: !46)
!51 = !DILocation(line: 29, column: 34, scope: !46)
!52 = !DILocation(line: 29, column: 40, scope: !46)
!53 = !DILocation(line: 29, column: 45, scope: !46)
!54 = !DILocation(line: 29, column: 9, scope: !33)
!55 = !DILocation(line: 30, column: 9, scope: !46)
!56 = !DILocalVariable(name: "entry", scope: !33, file: !1, line: 33, type: !10)
!57 = !DILocation(line: 33, column: 19, scope: !33)
!58 = !DILocation(line: 33, column: 28, scope: !33)
!59 = !DILocation(line: 33, column: 34, scope: !33)
!60 = !DILocalVariable(name: "next", scope: !33, file: !1, line: 34, type: !10)
!61 = !DILocation(line: 34, column: 19, scope: !33)
!62 = !DILocation(line: 34, column: 26, scope: !33)
!63 = !DILocation(line: 34, column: 32, scope: !33)
!64 = !DILocation(line: 37, column: 9, scope: !65)
!65 = distinct !DILexicalBlock(scope: !33, file: !1, line: 37, column: 9)
!66 = !DILocation(line: 37, column: 17, scope: !65)
!67 = !DILocation(line: 37, column: 15, scope: !65)
!68 = !DILocation(line: 37, column: 9, scope: !33)
!69 = !DILocalVariable(name: "end", scope: !70, file: !1, line: 39, type: !10)
!70 = distinct !DILexicalBlock(scope: !65, file: !1, line: 37, column: 24)
!71 = !DILocation(line: 39, column: 23, scope: !70)
!72 = !DILocation(line: 39, column: 30, scope: !70)
!73 = !DILocation(line: 39, column: 36, scope: !70)
!74 = !DILocation(line: 39, column: 42, scope: !70)
!75 = !DILocation(line: 39, column: 48, scope: !70)
!76 = !DILocalVariable(name: "move_len", scope: !70, file: !1, line: 43, type: !77)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !78, line: 46, baseType: !79)
!78 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!79 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!80 = !DILocation(line: 43, column: 16, scope: !70)
!81 = !DILocation(line: 43, column: 35, scope: !70)
!82 = !DILocation(line: 43, column: 27, scope: !70)
!83 = !DILocation(line: 43, column: 49, scope: !70)
!84 = !DILocation(line: 43, column: 41, scope: !70)
!85 = !DILocation(line: 43, column: 39, scope: !70)
!86 = !DILocalVariable(name: "dest_space", scope: !70, file: !1, line: 44, type: !77)
!87 = !DILocation(line: 44, column: 16, scope: !70)
!88 = !DILocation(line: 44, column: 38, scope: !70)
!89 = !DILocation(line: 44, column: 44, scope: !70)
!90 = !DILocation(line: 44, column: 50, scope: !70)
!91 = !DILocation(line: 44, column: 56, scope: !70)
!92 = !DILocation(line: 44, column: 29, scope: !70)
!93 = !DILocation(line: 44, column: 72, scope: !70)
!94 = !DILocation(line: 44, column: 64, scope: !70)
!95 = !DILocation(line: 44, column: 62, scope: !70)
!96 = !DILocation(line: 47, column: 9, scope: !70)
!97 = !DILocation(line: 50, column: 9, scope: !70)
!98 = !DILocation(line: 54, column: 5, scope: !70)
!99 = !DILocation(line: 56, column: 5, scope: !33)
!100 = !DILocation(line: 57, column: 1, scope: !33)
!101 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 59, type: !102, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !36)
!102 = !DISubroutineType(types: !103)
!103 = !{!23}
!104 = !DILocalVariable(name: "table_size", scope: !101, file: !1, line: 61, type: !23)
!105 = !DILocation(line: 61, column: 9, scope: !101)
!106 = !DILocation(line: 62, column: 24, scope: !101)
!107 = !DILocation(line: 62, column: 5, scope: !101)
!108 = !DILocation(line: 63, column: 17, scope: !101)
!109 = !DILocation(line: 63, column: 28, scope: !101)
!110 = !DILocation(line: 63, column: 5, scope: !101)
!111 = !DILocation(line: 64, column: 17, scope: !101)
!112 = !DILocation(line: 64, column: 28, scope: !101)
!113 = !DILocation(line: 64, column: 5, scope: !101)
!114 = !DILocalVariable(name: "hash", scope: !101, file: !1, line: 67, type: !5)
!115 = !DILocation(line: 67, column: 19, scope: !101)
!116 = !DILocation(line: 67, column: 42, scope: !101)
!117 = !DILocation(line: 67, column: 26, scope: !101)
!118 = !DILocation(line: 68, column: 18, scope: !101)
!119 = !DILocation(line: 68, column: 5, scope: !101)
!120 = !DILocation(line: 68, column: 11, scope: !101)
!121 = !DILocation(line: 68, column: 16, scope: !101)
!122 = !DILocation(line: 69, column: 5, scope: !101)
!123 = !DILocation(line: 69, column: 11, scope: !101)
!124 = !DILocation(line: 69, column: 19, scope: !101)
!125 = !DILocation(line: 72, column: 65, scope: !101)
!126 = !DILocation(line: 72, column: 63, scope: !101)
!127 = !DILocation(line: 72, column: 35, scope: !101)
!128 = !DILocation(line: 72, column: 19, scope: !101)
!129 = !DILocation(line: 72, column: 5, scope: !101)
!130 = !DILocation(line: 72, column: 11, scope: !101)
!131 = !DILocation(line: 72, column: 17, scope: !101)
!132 = !DILocalVariable(name: "i", scope: !133, file: !1, line: 75, type: !23)
!133 = distinct !DILexicalBlock(scope: !101, file: !1, line: 75, column: 5)
!134 = !DILocation(line: 75, column: 14, scope: !133)
!135 = !DILocation(line: 75, column: 10, scope: !133)
!136 = !DILocation(line: 75, column: 21, scope: !137)
!137 = distinct !DILexicalBlock(scope: !133, file: !1, line: 75, column: 5)
!138 = !DILocation(line: 75, column: 25, scope: !137)
!139 = !DILocation(line: 75, column: 23, scope: !137)
!140 = !DILocation(line: 75, column: 5, scope: !133)
!141 = !DILocation(line: 76, column: 9, scope: !142)
!142 = distinct !DILexicalBlock(scope: !137, file: !1, line: 75, column: 42)
!143 = !DILocation(line: 76, column: 15, scope: !142)
!144 = !DILocation(line: 76, column: 21, scope: !142)
!145 = !DILocation(line: 76, column: 24, scope: !142)
!146 = !DILocation(line: 76, column: 32, scope: !142)
!147 = !DILocation(line: 77, column: 9, scope: !142)
!148 = !DILocation(line: 77, column: 15, scope: !142)
!149 = !DILocation(line: 77, column: 21, scope: !142)
!150 = !DILocation(line: 77, column: 24, scope: !142)
!151 = !DILocation(line: 77, column: 29, scope: !142)
!152 = !DILocation(line: 78, column: 9, scope: !142)
!153 = !DILocation(line: 78, column: 15, scope: !142)
!154 = !DILocation(line: 78, column: 21, scope: !142)
!155 = !DILocation(line: 78, column: 24, scope: !142)
!156 = !DILocation(line: 78, column: 30, scope: !142)
!157 = !DILocation(line: 79, column: 9, scope: !142)
!158 = !DILocation(line: 79, column: 15, scope: !142)
!159 = !DILocation(line: 79, column: 21, scope: !142)
!160 = !DILocation(line: 79, column: 24, scope: !142)
!161 = !DILocation(line: 79, column: 30, scope: !142)
!162 = !DILocation(line: 80, column: 9, scope: !142)
!163 = !DILocation(line: 80, column: 15, scope: !142)
!164 = !DILocation(line: 80, column: 21, scope: !142)
!165 = !DILocation(line: 80, column: 24, scope: !142)
!166 = !DILocation(line: 80, column: 29, scope: !142)
!167 = !DILocation(line: 81, column: 5, scope: !142)
!168 = !DILocation(line: 75, column: 38, scope: !137)
!169 = !DILocation(line: 75, column: 5, scope: !137)
!170 = distinct !{!170, !140, !171, !172}
!171 = !DILocation(line: 81, column: 5, scope: !133)
!172 = !{!"llvm.loop.mustprogress"}
!173 = !DILocalVariable(name: "name", scope: !101, file: !1, line: 84, type: !174)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !175)
!175 = !{!176}
!176 = !DISubrange(count: 32)
!177 = !DILocation(line: 84, column: 10, scope: !101)
!178 = !DILocalVariable(name: "name2", scope: !101, file: !1, line: 84, type: !174)
!179 = !DILocation(line: 84, column: 20, scope: !101)
!180 = !DILocalVariable(name: "name3", scope: !101, file: !1, line: 84, type: !174)
!181 = !DILocation(line: 84, column: 31, scope: !101)
!182 = !DILocation(line: 85, column: 24, scope: !101)
!183 = !DILocation(line: 85, column: 5, scope: !101)
!184 = !DILocation(line: 86, column: 24, scope: !101)
!185 = !DILocation(line: 86, column: 5, scope: !101)
!186 = !DILocation(line: 87, column: 24, scope: !101)
!187 = !DILocation(line: 87, column: 5, scope: !101)
!188 = !DILocalVariable(name: "result", scope: !101, file: !1, line: 90, type: !23)
!189 = !DILocation(line: 90, column: 9, scope: !101)
!190 = !DILocation(line: 90, column: 38, scope: !101)
!191 = !DILocation(line: 90, column: 44, scope: !101)
!192 = !DILocation(line: 90, column: 50, scope: !101)
!193 = !DILocation(line: 90, column: 57, scope: !101)
!194 = !DILocation(line: 90, column: 18, scope: !101)
!195 = !DILocation(line: 93, column: 10, scope: !101)
!196 = !DILocation(line: 93, column: 16, scope: !101)
!197 = !DILocation(line: 93, column: 5, scope: !101)
!198 = !DILocation(line: 94, column: 10, scope: !101)
!199 = !DILocation(line: 94, column: 5, scope: !101)
!200 = !DILocation(line: 96, column: 5, scope: !101)

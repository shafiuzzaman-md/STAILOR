; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/139_xmlregexp.c_6062_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/139_xmlregexp.c_6062_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRegAtom = type { i32, i8*, i8*, i8*, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"token1\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"token2\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"lenp\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"lenn\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"(lenn <= 6) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_55980_vul/139_xmlregexp.c_6062_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlRegNewAtom = private unnamed_addr constant [36 x i8] c"xmlRegAtom *xmlRegNewAtom(int, int)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"data\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMallocAtomic(i64 noundef %0) #0 !dbg !32 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !39, metadata !DIExpression()), !dbg !40
  %3 = load i64, i64* %2, align 8, !dbg !41
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !42
  ret i8* %4, !dbg !43
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlRegFreeAtom(%struct._xmlRegAtom* noundef %0) #0 !dbg !44 {
  %2 = alloca %struct._xmlRegAtom*, align 8
  store %struct._xmlRegAtom* %0, %struct._xmlRegAtom** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRegAtom** %2, metadata !47, metadata !DIExpression()), !dbg !48
  %3 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %2, align 8, !dbg !49
  %4 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %3, i32 0, i32 1, !dbg !50
  %5 = load i8*, i8** %4, align 8, !dbg !50
  call void @free(i8* noundef %5) #7, !dbg !51
  %6 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %2, align 8, !dbg !52
  %7 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %6, i32 0, i32 2, !dbg !53
  %8 = load i8*, i8** %7, align 8, !dbg !53
  call void @free(i8* noundef %8) #7, !dbg !54
  %9 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %2, align 8, !dbg !55
  %10 = bitcast %struct._xmlRegAtom* %9 to i8*, !dbg !55
  call void @free(i8* noundef %10) #7, !dbg !56
  ret void, !dbg !57
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlRegAtom* @xmlRegNewAtom(i32 noundef %0, i32 noundef %1) #0 !dbg !58 {
  %3 = alloca %struct._xmlRegAtom*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct._xmlRegAtom*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !61, metadata !DIExpression()), !dbg !62
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !63, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata %struct._xmlRegAtom** %6, metadata !65, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.declare(metadata i8** %7, metadata !67, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.declare(metadata i8** %8, metadata !69, metadata !DIExpression()), !dbg !70
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %8, align 8, !dbg !70
  call void @llvm.dbg.declare(metadata i8** %9, metadata !71, metadata !DIExpression()), !dbg !72
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8, !dbg !72
  call void @llvm.dbg.declare(metadata i32* %10, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.declare(metadata i32* %11, metadata !75, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.declare(metadata i32* %12, metadata !77, metadata !DIExpression()), !dbg !78
  store i32 0, i32* %12, align 4, !dbg !78
  %13 = bitcast i32* %10 to i8*, !dbg !79
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !dbg !80
  %14 = bitcast i32* %11 to i8*, !dbg !81
  call void @klee_make_symbolic(i8* noundef %14, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)), !dbg !82
  %15 = load i32, i32* %10, align 4, !dbg !83
  %16 = icmp sge i32 %15, 0, !dbg !84
  br i1 %16, label %17, label %20, !dbg !85

17:                                               ; preds = %2
  %18 = load i32, i32* %10, align 4, !dbg !86
  %19 = icmp slt i32 %18, 100, !dbg !87
  br label %20

20:                                               ; preds = %17, %2
  %21 = phi i1 [ false, %2 ], [ %19, %17 ], !dbg !88
  %22 = zext i1 %21 to i32, !dbg !85
  %23 = sext i32 %22 to i64, !dbg !83
  call void @klee_assume(i64 noundef %23), !dbg !89
  %24 = load i32, i32* %11, align 4, !dbg !90
  %25 = icmp sge i32 %24, 0, !dbg !91
  br i1 %25, label %26, label %29, !dbg !92

26:                                               ; preds = %20
  %27 = load i32, i32* %11, align 4, !dbg !93
  %28 = icmp slt i32 %27, 100, !dbg !94
  br label %29

29:                                               ; preds = %26, %20
  %30 = phi i1 [ false, %20 ], [ %28, %26 ], !dbg !88
  %31 = zext i1 %30 to i32, !dbg !92
  %32 = sext i32 %31 to i64, !dbg !90
  call void @klee_assume(i64 noundef %32), !dbg !95
  %33 = call noalias i8* @malloc(i64 noundef 56) #7, !dbg !96
  %34 = bitcast i8* %33 to %struct._xmlRegAtom*, !dbg !97
  store %struct._xmlRegAtom* %34, %struct._xmlRegAtom** %6, align 8, !dbg !98
  %35 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %6, align 8, !dbg !99
  %36 = icmp eq %struct._xmlRegAtom* %35, null, !dbg !101
  br i1 %36, label %37, label %38, !dbg !102

37:                                               ; preds = %29
  store %struct._xmlRegAtom* null, %struct._xmlRegAtom** %3, align 8, !dbg !103
  br label %112, !dbg !103

38:                                               ; preds = %29
  %39 = load i32, i32* %4, align 4, !dbg !105
  %40 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %6, align 8, !dbg !106
  %41 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %40, i32 0, i32 0, !dbg !107
  store i32 %39, i32* %41, align 8, !dbg !108
  %42 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %6, align 8, !dbg !109
  %43 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %42, i32 0, i32 1, !dbg !110
  store i8* null, i8** %43, align 8, !dbg !111
  %44 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %6, align 8, !dbg !112
  %45 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %44, i32 0, i32 2, !dbg !113
  store i8* null, i8** %45, align 8, !dbg !114
  %46 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %6, align 8, !dbg !115
  %47 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %46, i32 0, i32 3, !dbg !116
  store i8* null, i8** %47, align 8, !dbg !117
  %48 = load i32, i32* %11, align 4, !dbg !118
  %49 = load i32, i32* %10, align 4, !dbg !119
  %50 = add nsw i32 %48, %49, !dbg !120
  %51 = add nsw i32 %50, 2, !dbg !121
  %52 = sext i32 %51 to i64, !dbg !118
  %53 = call i8* @xmlMallocAtomic(i64 noundef %52), !dbg !122
  store i8* %53, i8** %7, align 8, !dbg !123
  %54 = load i8*, i8** %7, align 8, !dbg !124
  %55 = icmp eq i8* %54, null, !dbg !126
  br i1 %55, label %56, label %58, !dbg !127

56:                                               ; preds = %38
  %57 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %6, align 8, !dbg !128
  call void @xmlRegFreeAtom(%struct._xmlRegAtom* noundef %57), !dbg !130
  store %struct._xmlRegAtom* null, %struct._xmlRegAtom** %3, align 8, !dbg !131
  br label %112, !dbg !131

58:                                               ; preds = %38
  %59 = load i8*, i8** %7, align 8, !dbg !132
  %60 = getelementptr inbounds i8, i8* %59, i64 0, !dbg !132
  %61 = load i8*, i8** %8, align 8, !dbg !133
  %62 = load i32, i32* %10, align 4, !dbg !134
  %63 = sext i32 %62 to i64, !dbg !134
  %64 = call i8* @memcpy(i8* %60, i8* %61, i64 %63), !dbg !135
  %65 = load i8*, i8** %7, align 8, !dbg !136
  %66 = load i32, i32* %10, align 4, !dbg !137
  %67 = sext i32 %66 to i64, !dbg !136
  %68 = getelementptr inbounds i8, i8* %65, i64 %67, !dbg !136
  store i8 124, i8* %68, align 1, !dbg !138
  %69 = load i32, i32* %11, align 4, !dbg !139
  %70 = icmp sle i32 %69, 6, !dbg !139
  br i1 %70, label %71, label %73, !dbg !139

71:                                               ; preds = %58
  br i1 true, label %72, label %73, !dbg !139

72:                                               ; preds = %71
  br label %75, !dbg !139

73:                                               ; preds = %71, %58
  %74 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.6, i64 0, i64 0), i32 noundef 92, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.xmlRegNewAtom, i64 0, i64 0)), !dbg !139
  br label %75, !dbg !139

75:                                               ; preds = %73, %72
  %76 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.6, i64 0, i64 0), i32 noundef 95, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.xmlRegNewAtom, i64 0, i64 0)), !dbg !140
  %77 = load i8*, i8** %7, align 8, !dbg !141
  %78 = load i32, i32* %10, align 4, !dbg !142
  %79 = add nsw i32 %78, 1, !dbg !143
  %80 = sext i32 %79 to i64, !dbg !141
  %81 = getelementptr inbounds i8, i8* %77, i64 %80, !dbg !141
  %82 = load i8*, i8** %9, align 8, !dbg !144
  %83 = load i32, i32* %11, align 4, !dbg !145
  %84 = sext i32 %83 to i64, !dbg !145
  %85 = call i8* @memcpy(i8* %81, i8* %82, i64 %84), !dbg !146
  %86 = load i8*, i8** %7, align 8, !dbg !147
  %87 = load i32, i32* %11, align 4, !dbg !148
  %88 = load i32, i32* %10, align 4, !dbg !149
  %89 = add nsw i32 %87, %88, !dbg !150
  %90 = add nsw i32 %89, 1, !dbg !151
  %91 = sext i32 %90 to i64, !dbg !147
  %92 = getelementptr inbounds i8, i8* %86, i64 %91, !dbg !147
  store i8 0, i8* %92, align 1, !dbg !152
  %93 = load i8*, i8** %7, align 8, !dbg !153
  %94 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %6, align 8, !dbg !154
  %95 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %94, i32 0, i32 1, !dbg !155
  store i8* %93, i8** %95, align 8, !dbg !156
  %96 = load i32, i32* %5, align 4, !dbg !157
  %97 = sext i32 %96 to i64, !dbg !158
  %98 = inttoptr i64 %97 to i8*, !dbg !159
  %99 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %6, align 8, !dbg !160
  %100 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %99, i32 0, i32 3, !dbg !161
  store i8* %98, i8** %100, align 8, !dbg !162
  %101 = load i32, i32* %12, align 4, !dbg !163
  %102 = icmp eq i32 %101, 0, !dbg !165
  br i1 %102, label %103, label %106, !dbg !166

103:                                              ; preds = %75
  %104 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %6, align 8, !dbg !167
  %105 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %104, i32 0, i32 4, !dbg !168
  store i32 1, i32* %105, align 8, !dbg !169
  br label %110, !dbg !167

106:                                              ; preds = %75
  %107 = load i32, i32* %12, align 4, !dbg !170
  %108 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %6, align 8, !dbg !171
  %109 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %108, i32 0, i32 4, !dbg !172
  store i32 %107, i32* %109, align 8, !dbg !173
  br label %110

110:                                              ; preds = %106, %103
  %111 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %6, align 8, !dbg !174
  store %struct._xmlRegAtom* %111, %struct._xmlRegAtom** %3, align 8, !dbg !175
  br label %112, !dbg !175

112:                                              ; preds = %110, %56, %37
  %113 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %3, align 8, !dbg !176
  ret %struct._xmlRegAtom* %113, !dbg !176
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !177 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlRegAtom*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlRegAtom** %2, metadata !180, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.declare(metadata i32* %3, metadata !182, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.declare(metadata i32* %4, metadata !184, metadata !DIExpression()), !dbg !185
  %5 = bitcast i32* %3 to i8*, !dbg !186
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)), !dbg !187
  %6 = bitcast i32* %4 to i8*, !dbg !188
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0)), !dbg !189
  %7 = load i32, i32* %3, align 4, !dbg !190
  %8 = load i32, i32* %4, align 4, !dbg !191
  %9 = call %struct._xmlRegAtom* @xmlRegNewAtom(i32 noundef %7, i32 noundef %8), !dbg !192
  store %struct._xmlRegAtom* %9, %struct._xmlRegAtom** %2, align 8, !dbg !193
  %10 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %2, align 8, !dbg !194
  %11 = icmp ne %struct._xmlRegAtom* %10, null, !dbg !196
  br i1 %11, label %12, label %14, !dbg !197

12:                                               ; preds = %0
  %13 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %2, align 8, !dbg !198
  call void @xmlRegFreeAtom(%struct._xmlRegAtom* noundef %13), !dbg !200
  br label %14, !dbg !201

14:                                               ; preds = %12, %0
  ret i32 0, !dbg !202
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !203 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !209, metadata !DIExpression()), !dbg !210
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !211, metadata !DIExpression()), !dbg !212
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !213, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.declare(metadata i8** %7, metadata !215, metadata !DIExpression()), !dbg !218
  %9 = load i8*, i8** %4, align 8, !dbg !219
  store i8* %9, i8** %7, align 8, !dbg !218
  call void @llvm.dbg.declare(metadata i8** %8, metadata !220, metadata !DIExpression()), !dbg !223
  %10 = load i8*, i8** %5, align 8, !dbg !224
  store i8* %10, i8** %8, align 8, !dbg !223
  br label %11, !dbg !225

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !226
  %13 = add i64 %12, -1, !dbg !226
  store i64 %13, i64* %6, align 8, !dbg !226
  %14 = icmp ugt i64 %12, 0, !dbg !227
  br i1 %14, label %15, label %21, !dbg !225

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !228
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !228
  store i8* %17, i8** %8, align 8, !dbg !228
  %18 = load i8, i8* %16, align 1, !dbg !229
  %19 = load i8*, i8** %7, align 8, !dbg !230
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !230
  store i8* %20, i8** %7, align 8, !dbg !230
  store i8 %18, i8* %19, align 1, !dbg !231
  br label %11, !dbg !225, !llvm.loop !232

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !234
  ret i8* %22, !dbg !235
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31, !31}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/139_xmlregexp.c_6062_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "52a5afe5f8cc46bd795652bcf20987ca")
!2 = !{!3, !6, !13, !21}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !1, line: 10, baseType: !5)
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegAtom", file: !1, line: 11, baseType: !8)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegAtom", file: !1, line: 12, size: 448, elements: !9)
!9 = !{!10, !12, !14, !15, !16, !17, !18, !19, !20}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !8, file: !1, line: 13, baseType: !11, size: 32)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "valuep", scope: !8, file: !1, line: 14, baseType: !13, size: 64, offset: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "valuep2", scope: !8, file: !1, line: 15, baseType: !13, size: 64, offset: 128)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !8, file: !1, line: 16, baseType: !13, size: 64, offset: 192)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !8, file: !1, line: 17, baseType: !11, size: 32, offset: 256)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !8, file: !1, line: 18, baseType: !11, size: 32, offset: 288)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "neg", scope: !8, file: !1, line: 19, baseType: !11, size: 32, offset: 320)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !8, file: !1, line: 20, baseType: !11, size: 32, offset: 352)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !8, file: !1, line: 21, baseType: !11, size: 32, offset: 384)
!21 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!22 = distinct !DICompileUnit(language: DW_LANG_C99, file: !23, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!23 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!24 = !{i32 7, !"Dwarf Version", i32 5}
!25 = !{i32 2, !"Debug Info Version", i32 3}
!26 = !{i32 1, !"wchar_size", i32 4}
!27 = !{i32 7, !"PIC Level", i32 2}
!28 = !{i32 7, !"PIE Level", i32 2}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"Ubuntu clang version 14.0.6"}
!32 = distinct !DISubprogram(name: "xmlMallocAtomic", scope: !1, file: !1, line: 29, type: !33, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !38)
!33 = !DISubroutineType(types: !34)
!34 = !{!13, !35}
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !36, line: 46, baseType: !37)
!36 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!37 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!38 = !{}
!39 = !DILocalVariable(name: "size", arg: 1, scope: !32, file: !1, line: 29, type: !35)
!40 = !DILocation(line: 29, column: 30, scope: !32)
!41 = !DILocation(line: 30, column: 19, scope: !32)
!42 = !DILocation(line: 30, column: 12, scope: !32)
!43 = !DILocation(line: 30, column: 5, scope: !32)
!44 = distinct !DISubprogram(name: "xmlRegFreeAtom", scope: !1, file: !1, line: 33, type: !45, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !38)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !6}
!47 = !DILocalVariable(name: "atom", arg: 1, scope: !44, file: !1, line: 33, type: !6)
!48 = !DILocation(line: 33, column: 33, scope: !44)
!49 = !DILocation(line: 34, column: 10, scope: !44)
!50 = !DILocation(line: 34, column: 16, scope: !44)
!51 = !DILocation(line: 34, column: 5, scope: !44)
!52 = !DILocation(line: 35, column: 10, scope: !44)
!53 = !DILocation(line: 35, column: 16, scope: !44)
!54 = !DILocation(line: 35, column: 5, scope: !44)
!55 = !DILocation(line: 36, column: 10, scope: !44)
!56 = !DILocation(line: 36, column: 5, scope: !44)
!57 = !DILocation(line: 37, column: 1, scope: !44)
!58 = distinct !DISubprogram(name: "xmlRegNewAtom", scope: !1, file: !1, line: 43, type: !59, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !38)
!59 = !DISubroutineType(types: !60)
!60 = !{!6, !11, !11}
!61 = !DILocalVariable(name: "type", arg: 1, scope: !58, file: !1, line: 43, type: !11)
!62 = !DILocation(line: 43, column: 31, scope: !58)
!63 = !DILocalVariable(name: "data", arg: 2, scope: !58, file: !1, line: 43, type: !11)
!64 = !DILocation(line: 43, column: 41, scope: !58)
!65 = !DILocalVariable(name: "atom", scope: !58, file: !1, line: 44, type: !6)
!66 = !DILocation(line: 44, column: 17, scope: !58)
!67 = !DILocalVariable(name: "str", scope: !58, file: !1, line: 45, type: !3)
!68 = !DILocation(line: 45, column: 14, scope: !58)
!69 = !DILocalVariable(name: "token", scope: !58, file: !1, line: 46, type: !3)
!70 = !DILocation(line: 46, column: 14, scope: !58)
!71 = !DILocalVariable(name: "token2", scope: !58, file: !1, line: 47, type: !3)
!72 = !DILocation(line: 47, column: 14, scope: !58)
!73 = !DILocalVariable(name: "lenp", scope: !58, file: !1, line: 48, type: !11)
!74 = !DILocation(line: 48, column: 9, scope: !58)
!75 = !DILocalVariable(name: "lenn", scope: !58, file: !1, line: 48, type: !11)
!76 = !DILocation(line: 48, column: 15, scope: !58)
!77 = !DILocalVariable(name: "min", scope: !58, file: !1, line: 49, type: !11)
!78 = !DILocation(line: 49, column: 9, scope: !58)
!79 = !DILocation(line: 52, column: 24, scope: !58)
!80 = !DILocation(line: 52, column: 5, scope: !58)
!81 = !DILocation(line: 53, column: 24, scope: !58)
!82 = !DILocation(line: 53, column: 5, scope: !58)
!83 = !DILocation(line: 56, column: 17, scope: !58)
!84 = !DILocation(line: 56, column: 22, scope: !58)
!85 = !DILocation(line: 56, column: 27, scope: !58)
!86 = !DILocation(line: 56, column: 30, scope: !58)
!87 = !DILocation(line: 56, column: 35, scope: !58)
!88 = !DILocation(line: 0, scope: !58)
!89 = !DILocation(line: 56, column: 5, scope: !58)
!90 = !DILocation(line: 57, column: 17, scope: !58)
!91 = !DILocation(line: 57, column: 22, scope: !58)
!92 = !DILocation(line: 57, column: 27, scope: !58)
!93 = !DILocation(line: 57, column: 30, scope: !58)
!94 = !DILocation(line: 57, column: 35, scope: !58)
!95 = !DILocation(line: 57, column: 5, scope: !58)
!96 = !DILocation(line: 59, column: 26, scope: !58)
!97 = !DILocation(line: 59, column: 12, scope: !58)
!98 = !DILocation(line: 59, column: 10, scope: !58)
!99 = !DILocation(line: 60, column: 9, scope: !100)
!100 = distinct !DILexicalBlock(scope: !58, file: !1, line: 60, column: 9)
!101 = !DILocation(line: 60, column: 14, scope: !100)
!102 = !DILocation(line: 60, column: 9, scope: !58)
!103 = !DILocation(line: 61, column: 9, scope: !104)
!104 = distinct !DILexicalBlock(scope: !100, file: !1, line: 60, column: 23)
!105 = !DILocation(line: 64, column: 18, scope: !58)
!106 = !DILocation(line: 64, column: 5, scope: !58)
!107 = !DILocation(line: 64, column: 11, scope: !58)
!108 = !DILocation(line: 64, column: 16, scope: !58)
!109 = !DILocation(line: 65, column: 5, scope: !58)
!110 = !DILocation(line: 65, column: 11, scope: !58)
!111 = !DILocation(line: 65, column: 18, scope: !58)
!112 = !DILocation(line: 66, column: 5, scope: !58)
!113 = !DILocation(line: 66, column: 11, scope: !58)
!114 = !DILocation(line: 66, column: 19, scope: !58)
!115 = !DILocation(line: 67, column: 5, scope: !58)
!116 = !DILocation(line: 67, column: 11, scope: !58)
!117 = !DILocation(line: 67, column: 16, scope: !58)
!118 = !DILocation(line: 70, column: 38, scope: !58)
!119 = !DILocation(line: 70, column: 45, scope: !58)
!120 = !DILocation(line: 70, column: 43, scope: !58)
!121 = !DILocation(line: 70, column: 50, scope: !58)
!122 = !DILocation(line: 70, column: 22, scope: !58)
!123 = !DILocation(line: 70, column: 9, scope: !58)
!124 = !DILocation(line: 71, column: 9, scope: !125)
!125 = distinct !DILexicalBlock(scope: !58, file: !1, line: 71, column: 9)
!126 = !DILocation(line: 71, column: 13, scope: !125)
!127 = !DILocation(line: 71, column: 9, scope: !58)
!128 = !DILocation(line: 72, column: 24, scope: !129)
!129 = distinct !DILexicalBlock(scope: !125, file: !1, line: 71, column: 22)
!130 = !DILocation(line: 72, column: 9, scope: !129)
!131 = !DILocation(line: 73, column: 9, scope: !129)
!132 = !DILocation(line: 77, column: 13, scope: !58)
!133 = !DILocation(line: 77, column: 21, scope: !58)
!134 = !DILocation(line: 77, column: 28, scope: !58)
!135 = !DILocation(line: 77, column: 5, scope: !58)
!136 = !DILocation(line: 78, column: 5, scope: !58)
!137 = !DILocation(line: 78, column: 9, scope: !58)
!138 = !DILocation(line: 78, column: 15, scope: !58)
!139 = !DILocation(line: 92, column: 5, scope: !58)
!140 = !DILocation(line: 95, column: 5, scope: !58)
!141 = !DILocation(line: 97, column: 13, scope: !58)
!142 = !DILocation(line: 97, column: 17, scope: !58)
!143 = !DILocation(line: 97, column: 22, scope: !58)
!144 = !DILocation(line: 97, column: 28, scope: !58)
!145 = !DILocation(line: 97, column: 36, scope: !58)
!146 = !DILocation(line: 97, column: 5, scope: !58)
!147 = !DILocation(line: 98, column: 5, scope: !58)
!148 = !DILocation(line: 98, column: 9, scope: !58)
!149 = !DILocation(line: 98, column: 16, scope: !58)
!150 = !DILocation(line: 98, column: 14, scope: !58)
!151 = !DILocation(line: 98, column: 21, scope: !58)
!152 = !DILocation(line: 98, column: 26, scope: !58)
!153 = !DILocation(line: 100, column: 20, scope: !58)
!154 = !DILocation(line: 100, column: 5, scope: !58)
!155 = !DILocation(line: 100, column: 11, scope: !58)
!156 = !DILocation(line: 100, column: 18, scope: !58)
!157 = !DILocation(line: 101, column: 31, scope: !58)
!158 = !DILocation(line: 101, column: 25, scope: !58)
!159 = !DILocation(line: 101, column: 18, scope: !58)
!160 = !DILocation(line: 101, column: 5, scope: !58)
!161 = !DILocation(line: 101, column: 11, scope: !58)
!162 = !DILocation(line: 101, column: 16, scope: !58)
!163 = !DILocation(line: 103, column: 9, scope: !164)
!164 = distinct !DILexicalBlock(scope: !58, file: !1, line: 103, column: 9)
!165 = !DILocation(line: 103, column: 13, scope: !164)
!166 = !DILocation(line: 103, column: 9, scope: !58)
!167 = !DILocation(line: 104, column: 9, scope: !164)
!168 = !DILocation(line: 104, column: 15, scope: !164)
!169 = !DILocation(line: 104, column: 19, scope: !164)
!170 = !DILocation(line: 106, column: 21, scope: !164)
!171 = !DILocation(line: 106, column: 9, scope: !164)
!172 = !DILocation(line: 106, column: 15, scope: !164)
!173 = !DILocation(line: 106, column: 19, scope: !164)
!174 = !DILocation(line: 108, column: 12, scope: !58)
!175 = !DILocation(line: 108, column: 5, scope: !58)
!176 = !DILocation(line: 109, column: 1, scope: !58)
!177 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 111, type: !178, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !38)
!178 = !DISubroutineType(types: !179)
!179 = !{!11}
!180 = !DILocalVariable(name: "atom", scope: !177, file: !1, line: 112, type: !6)
!181 = !DILocation(line: 112, column: 17, scope: !177)
!182 = !DILocalVariable(name: "type", scope: !177, file: !1, line: 113, type: !11)
!183 = !DILocation(line: 113, column: 9, scope: !177)
!184 = !DILocalVariable(name: "data", scope: !177, file: !1, line: 113, type: !11)
!185 = !DILocation(line: 113, column: 15, scope: !177)
!186 = !DILocation(line: 116, column: 24, scope: !177)
!187 = !DILocation(line: 116, column: 5, scope: !177)
!188 = !DILocation(line: 117, column: 24, scope: !177)
!189 = !DILocation(line: 117, column: 5, scope: !177)
!190 = !DILocation(line: 120, column: 26, scope: !177)
!191 = !DILocation(line: 120, column: 32, scope: !177)
!192 = !DILocation(line: 120, column: 12, scope: !177)
!193 = !DILocation(line: 120, column: 10, scope: !177)
!194 = !DILocation(line: 123, column: 9, scope: !195)
!195 = distinct !DILexicalBlock(scope: !177, file: !1, line: 123, column: 9)
!196 = !DILocation(line: 123, column: 14, scope: !195)
!197 = !DILocation(line: 123, column: 9, scope: !177)
!198 = !DILocation(line: 124, column: 24, scope: !199)
!199 = distinct !DILexicalBlock(scope: !195, file: !1, line: 123, column: 23)
!200 = !DILocation(line: 124, column: 9, scope: !199)
!201 = !DILocation(line: 125, column: 5, scope: !199)
!202 = !DILocation(line: 127, column: 5, scope: !177)
!203 = distinct !DISubprogram(name: "memcpy", scope: !204, file: !204, line: 12, type: !205, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !38)
!204 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!205 = !DISubroutineType(types: !206)
!206 = !{!13, !13, !207, !35}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!209 = !DILocalVariable(name: "destaddr", arg: 1, scope: !203, file: !204, line: 12, type: !13)
!210 = !DILocation(line: 12, column: 20, scope: !203)
!211 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !203, file: !204, line: 12, type: !207)
!212 = !DILocation(line: 12, column: 42, scope: !203)
!213 = !DILocalVariable(name: "len", arg: 3, scope: !203, file: !204, line: 12, type: !35)
!214 = !DILocation(line: 12, column: 58, scope: !203)
!215 = !DILocalVariable(name: "dest", scope: !203, file: !204, line: 13, type: !216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!218 = !DILocation(line: 13, column: 9, scope: !203)
!219 = !DILocation(line: 13, column: 16, scope: !203)
!220 = !DILocalVariable(name: "src", scope: !203, file: !204, line: 14, type: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!223 = !DILocation(line: 14, column: 15, scope: !203)
!224 = !DILocation(line: 14, column: 21, scope: !203)
!225 = !DILocation(line: 16, column: 3, scope: !203)
!226 = !DILocation(line: 16, column: 13, scope: !203)
!227 = !DILocation(line: 16, column: 16, scope: !203)
!228 = !DILocation(line: 17, column: 19, scope: !203)
!229 = !DILocation(line: 17, column: 15, scope: !203)
!230 = !DILocation(line: 17, column: 10, scope: !203)
!231 = !DILocation(line: 17, column: 13, scope: !203)
!232 = distinct !{!232, !225, !228, !233}
!233 = !{!"llvm.loop.mustprogress"}
!234 = !DILocation(line: 18, column: 10, scope: !203)
!235 = !DILocation(line: 18, column: 3, scope: !203)

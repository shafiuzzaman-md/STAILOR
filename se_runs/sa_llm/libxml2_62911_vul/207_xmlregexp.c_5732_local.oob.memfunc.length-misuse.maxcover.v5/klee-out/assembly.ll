; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/207_xmlregexp.c_5732_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/207_xmlregexp.c_5732_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRegAtom = type { i32, i8* }

@.str = private unnamed_addr constant [5 x i8] c"lenp\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"lenn\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"token\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"token2\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"(lenp <= (lenp + lenn + 1)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_62911_vul/207_xmlregexp.c_5732_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlRegexpCompile = private unnamed_addr constant [43 x i8] c"xmlRegAtom *xmlRegexpCompile(const char *)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"regexp\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlRegFreeAtom(%struct._xmlRegAtom* noundef %0) #0 !dbg !25 {
  %2 = alloca %struct._xmlRegAtom*, align 8
  store %struct._xmlRegAtom* %0, %struct._xmlRegAtom** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRegAtom** %2, metadata !29, metadata !DIExpression()), !dbg !30
  %3 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %2, align 8, !dbg !31
  %4 = icmp ne %struct._xmlRegAtom* %3, null, !dbg !31
  br i1 %4, label %5, label %11, !dbg !33

5:                                                ; preds = %1
  %6 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %2, align 8, !dbg !34
  %7 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %6, i32 0, i32 1, !dbg !36
  %8 = load i8*, i8** %7, align 8, !dbg !36
  call void @free(i8* noundef %8) #7, !dbg !37
  %9 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %2, align 8, !dbg !38
  %10 = bitcast %struct._xmlRegAtom* %9 to i8*, !dbg !38
  call void @free(i8* noundef %10) #7, !dbg !39
  br label %11, !dbg !40

11:                                               ; preds = %5, %1
  ret void, !dbg !41
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlRegAtom* @xmlRegexpCompile(i8* noundef %0) #0 !dbg !42 {
  %2 = alloca %struct._xmlRegAtom*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._xmlRegAtom*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !45, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.declare(metadata %struct._xmlRegAtom** %4, metadata !47, metadata !DIExpression()), !dbg !48
  %10 = call noalias i8* @malloc(i64 noundef 16) #7, !dbg !49
  %11 = bitcast i8* %10 to %struct._xmlRegAtom*, !dbg !50
  store %struct._xmlRegAtom* %11, %struct._xmlRegAtom** %4, align 8, !dbg !48
  %12 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %4, align 8, !dbg !51
  %13 = icmp ne %struct._xmlRegAtom* %12, null, !dbg !51
  br i1 %13, label %15, label %14, !dbg !53

14:                                               ; preds = %1
  store %struct._xmlRegAtom* null, %struct._xmlRegAtom** %2, align 8, !dbg !54
  br label %121, !dbg !54

15:                                               ; preds = %1
  %16 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %4, align 8, !dbg !55
  %17 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %16, i32 0, i32 0, !dbg !56
  store i32 0, i32* %17, align 8, !dbg !57
  %18 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %4, align 8, !dbg !58
  %19 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %18, i32 0, i32 1, !dbg !59
  store i8* null, i8** %19, align 8, !dbg !60
  call void @llvm.dbg.declare(metadata i8** %5, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata i8** %6, metadata !63, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata i32* %7, metadata !65, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.declare(metadata i32* %8, metadata !67, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.declare(metadata i8** %9, metadata !69, metadata !DIExpression()), !dbg !70
  %20 = bitcast i32* %7 to i8*, !dbg !71
  call void @klee_make_symbolic(i8* noundef %20, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !72
  %21 = bitcast i32* %8 to i8*, !dbg !73
  call void @klee_make_symbolic(i8* noundef %21, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !74
  %22 = load i32, i32* %7, align 4, !dbg !75
  %23 = add nsw i32 %22, 1, !dbg !76
  %24 = sext i32 %23 to i64, !dbg !75
  %25 = call noalias i8* @malloc(i64 noundef %24) #7, !dbg !77
  store i8* %25, i8** %5, align 8, !dbg !78
  %26 = load i32, i32* %8, align 4, !dbg !79
  %27 = add nsw i32 %26, 1, !dbg !80
  %28 = sext i32 %27 to i64, !dbg !79
  %29 = call noalias i8* @malloc(i64 noundef %28) #7, !dbg !81
  store i8* %29, i8** %6, align 8, !dbg !82
  %30 = load i8*, i8** %5, align 8, !dbg !83
  %31 = icmp ne i8* %30, null, !dbg !83
  br i1 %31, label %32, label %35, !dbg !85

32:                                               ; preds = %15
  %33 = load i8*, i8** %6, align 8, !dbg !86
  %34 = icmp ne i8* %33, null, !dbg !86
  br i1 %34, label %47, label %35, !dbg !87

35:                                               ; preds = %32, %15
  %36 = load i8*, i8** %5, align 8, !dbg !88
  %37 = icmp ne i8* %36, null, !dbg !88
  br i1 %37, label %38, label %40, !dbg !91

38:                                               ; preds = %35
  %39 = load i8*, i8** %5, align 8, !dbg !92
  call void @free(i8* noundef %39) #7, !dbg !93
  br label %40, !dbg !93

40:                                               ; preds = %38, %35
  %41 = load i8*, i8** %6, align 8, !dbg !94
  %42 = icmp ne i8* %41, null, !dbg !94
  br i1 %42, label %43, label %45, !dbg !96

43:                                               ; preds = %40
  %44 = load i8*, i8** %6, align 8, !dbg !97
  call void @free(i8* noundef %44) #7, !dbg !98
  br label %45, !dbg !98

45:                                               ; preds = %43, %40
  %46 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %4, align 8, !dbg !99
  call void @xmlRegFreeAtom(%struct._xmlRegAtom* noundef %46), !dbg !100
  store %struct._xmlRegAtom* null, %struct._xmlRegAtom** %2, align 8, !dbg !101
  br label %121, !dbg !101

47:                                               ; preds = %32
  %48 = load i8*, i8** %5, align 8, !dbg !102
  %49 = load i32, i32* %7, align 4, !dbg !103
  %50 = add nsw i32 %49, 1, !dbg !104
  %51 = sext i32 %50 to i64, !dbg !103
  call void @klee_make_symbolic(i8* noundef %48, i64 noundef %51, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)), !dbg !105
  %52 = load i8*, i8** %6, align 8, !dbg !106
  %53 = load i32, i32* %8, align 4, !dbg !107
  %54 = add nsw i32 %53, 1, !dbg !108
  %55 = sext i32 %54 to i64, !dbg !107
  call void @klee_make_symbolic(i8* noundef %52, i64 noundef %55, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)), !dbg !109
  %56 = load i32, i32* %7, align 4, !dbg !110
  %57 = icmp sge i32 %56, 0, !dbg !111
  %58 = zext i1 %57 to i32, !dbg !111
  %59 = sext i32 %58 to i64, !dbg !110
  call void @klee_assume(i64 noundef %59), !dbg !112
  %60 = load i32, i32* %8, align 4, !dbg !113
  %61 = icmp sge i32 %60, 0, !dbg !114
  %62 = zext i1 %61 to i32, !dbg !114
  %63 = sext i32 %62 to i64, !dbg !113
  call void @klee_assume(i64 noundef %63), !dbg !115
  %64 = load i32, i32* %7, align 4, !dbg !116
  %65 = load i32, i32* %8, align 4, !dbg !117
  %66 = add nsw i32 %64, %65, !dbg !118
  %67 = add nsw i32 %66, 2, !dbg !119
  %68 = sext i32 %67 to i64, !dbg !116
  %69 = call noalias i8* @malloc(i64 noundef %68) #7, !dbg !120
  store i8* %69, i8** %9, align 8, !dbg !121
  %70 = load i8*, i8** %9, align 8, !dbg !122
  %71 = icmp ne i8* %70, null, !dbg !122
  br i1 %71, label %76, label %72, !dbg !124

72:                                               ; preds = %47
  %73 = load i8*, i8** %5, align 8, !dbg !125
  call void @free(i8* noundef %73) #7, !dbg !127
  %74 = load i8*, i8** %6, align 8, !dbg !128
  call void @free(i8* noundef %74) #7, !dbg !129
  %75 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %4, align 8, !dbg !130
  call void @xmlRegFreeAtom(%struct._xmlRegAtom* noundef %75), !dbg !131
  store %struct._xmlRegAtom* null, %struct._xmlRegAtom** %2, align 8, !dbg !132
  br label %121, !dbg !132

76:                                               ; preds = %47
  %77 = load i32, i32* %7, align 4, !dbg !133
  %78 = load i32, i32* %7, align 4, !dbg !133
  %79 = load i32, i32* %8, align 4, !dbg !133
  %80 = add nsw i32 %78, %79, !dbg !133
  %81 = add nsw i32 %80, 1, !dbg !133
  %82 = icmp sle i32 %77, %81, !dbg !133
  br i1 %82, label %83, label %85, !dbg !133

83:                                               ; preds = %76
  br i1 true, label %84, label %85, !dbg !133

84:                                               ; preds = %83
  br label %87, !dbg !133

85:                                               ; preds = %83, %76
  %86 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.6, i64 0, i64 0), i32 noundef 72, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.xmlRegexpCompile, i64 0, i64 0)), !dbg !133
  br label %87, !dbg !133

87:                                               ; preds = %85, %84
  %88 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.6, i64 0, i64 0), i32 noundef 75, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.xmlRegexpCompile, i64 0, i64 0)), !dbg !134
  %89 = load i8*, i8** %9, align 8, !dbg !135
  %90 = getelementptr inbounds i8, i8* %89, i64 0, !dbg !135
  %91 = load i8*, i8** %5, align 8, !dbg !136
  %92 = load i32, i32* %7, align 4, !dbg !137
  %93 = sext i32 %92 to i64, !dbg !137
  %94 = call i8* @memcpy(i8* %90, i8* %91, i64 %93), !dbg !138
  %95 = load i8*, i8** %9, align 8, !dbg !139
  %96 = load i32, i32* %7, align 4, !dbg !140
  %97 = sext i32 %96 to i64, !dbg !139
  %98 = getelementptr inbounds i8, i8* %95, i64 %97, !dbg !139
  store i8 124, i8* %98, align 1, !dbg !141
  %99 = load i8*, i8** %9, align 8, !dbg !142
  %100 = load i32, i32* %7, align 4, !dbg !143
  %101 = add nsw i32 %100, 1, !dbg !144
  %102 = sext i32 %101 to i64, !dbg !142
  %103 = getelementptr inbounds i8, i8* %99, i64 %102, !dbg !142
  %104 = load i8*, i8** %6, align 8, !dbg !145
  %105 = load i32, i32* %8, align 4, !dbg !146
  %106 = sext i32 %105 to i64, !dbg !146
  %107 = call i8* @memcpy(i8* %103, i8* %104, i64 %106), !dbg !147
  %108 = load i8*, i8** %9, align 8, !dbg !148
  %109 = load i32, i32* %8, align 4, !dbg !149
  %110 = load i32, i32* %7, align 4, !dbg !150
  %111 = add nsw i32 %109, %110, !dbg !151
  %112 = add nsw i32 %111, 1, !dbg !152
  %113 = sext i32 %112 to i64, !dbg !148
  %114 = getelementptr inbounds i8, i8* %108, i64 %113, !dbg !148
  store i8 0, i8* %114, align 1, !dbg !153
  %115 = load i8*, i8** %9, align 8, !dbg !154
  %116 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %4, align 8, !dbg !155
  %117 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %116, i32 0, i32 1, !dbg !156
  store i8* %115, i8** %117, align 8, !dbg !157
  %118 = load i8*, i8** %5, align 8, !dbg !158
  call void @free(i8* noundef %118) #7, !dbg !159
  %119 = load i8*, i8** %6, align 8, !dbg !160
  call void @free(i8* noundef %119) #7, !dbg !161
  %120 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %4, align 8, !dbg !162
  store %struct._xmlRegAtom* %120, %struct._xmlRegAtom** %2, align 8, !dbg !163
  br label %121, !dbg !163

121:                                              ; preds = %87, %72, %45, %14
  %122 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %2, align 8, !dbg !164
  ret %struct._xmlRegAtom* %122, !dbg !164
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !165 {
  %1 = alloca i32, align 4
  %2 = alloca [100 x i8], align 16
  %3 = alloca %struct._xmlRegAtom*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [100 x i8]* %2, metadata !168, metadata !DIExpression()), !dbg !172
  %4 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0, !dbg !173
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 100, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)), !dbg !174
  call void @llvm.dbg.declare(metadata %struct._xmlRegAtom** %3, metadata !175, metadata !DIExpression()), !dbg !176
  %5 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0, !dbg !177
  %6 = call %struct._xmlRegAtom* @xmlRegexpCompile(i8* noundef %5), !dbg !178
  store %struct._xmlRegAtom* %6, %struct._xmlRegAtom** %3, align 8, !dbg !176
  %7 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %3, align 8, !dbg !179
  %8 = icmp ne %struct._xmlRegAtom* %7, null, !dbg !179
  br i1 %8, label %9, label %11, !dbg !181

9:                                                ; preds = %0
  %10 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %3, align 8, !dbg !182
  call void @xmlRegFreeAtom(%struct._xmlRegAtom* noundef %10), !dbg !184
  br label %11, !dbg !185

11:                                               ; preds = %9, %0
  ret i32 0, !dbg !186
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !187 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !196, metadata !DIExpression()), !dbg !197
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !198, metadata !DIExpression()), !dbg !199
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !200, metadata !DIExpression()), !dbg !201
  call void @llvm.dbg.declare(metadata i8** %7, metadata !202, metadata !DIExpression()), !dbg !203
  %9 = load i8*, i8** %4, align 8, !dbg !204
  store i8* %9, i8** %7, align 8, !dbg !203
  call void @llvm.dbg.declare(metadata i8** %8, metadata !205, metadata !DIExpression()), !dbg !206
  %10 = load i8*, i8** %5, align 8, !dbg !207
  store i8* %10, i8** %8, align 8, !dbg !206
  br label %11, !dbg !208

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !209
  %13 = add i64 %12, -1, !dbg !209
  store i64 %13, i64* %6, align 8, !dbg !209
  %14 = icmp ugt i64 %12, 0, !dbg !210
  br i1 %14, label %15, label %21, !dbg !208

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !211
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !211
  store i8* %17, i8** %8, align 8, !dbg !211
  %18 = load i8, i8* %16, align 1, !dbg !212
  %19 = load i8*, i8** %7, align 8, !dbg !213
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !213
  store i8* %20, i8** %7, align 8, !dbg !213
  store i8 %18, i8* %19, align 1, !dbg !214
  br label %11, !dbg !208, !llvm.loop !215

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !217
  ret i8* %22, !dbg !218
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24, !24}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/207_xmlregexp.c_5732_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "2078529db160c40342a83dbabd177ff1")
!2 = !{!3, !10, !11, !14}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegAtom", file: !1, line: 10, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegAtom", file: !1, line: 11, size: 128, elements: !6)
!6 = !{!7, !9}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5, file: !1, line: 12, baseType: !8, size: 32)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_member, name: "valuep", scope: !5, file: !1, line: 13, baseType: !10, size: 64, offset: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
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
!25 = distinct !DISubprogram(name: "xmlRegFreeAtom", scope: !1, file: !1, line: 17, type: !26, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!26 = !DISubroutineType(types: !27)
!27 = !{null, !3}
!28 = !{}
!29 = !DILocalVariable(name: "atom", arg: 1, scope: !25, file: !1, line: 17, type: !3)
!30 = !DILocation(line: 17, column: 33, scope: !25)
!31 = !DILocation(line: 18, column: 9, scope: !32)
!32 = distinct !DILexicalBlock(scope: !25, file: !1, line: 18, column: 9)
!33 = !DILocation(line: 18, column: 9, scope: !25)
!34 = !DILocation(line: 19, column: 14, scope: !35)
!35 = distinct !DILexicalBlock(scope: !32, file: !1, line: 18, column: 15)
!36 = !DILocation(line: 19, column: 20, scope: !35)
!37 = !DILocation(line: 19, column: 9, scope: !35)
!38 = !DILocation(line: 20, column: 14, scope: !35)
!39 = !DILocation(line: 20, column: 9, scope: !35)
!40 = !DILocation(line: 21, column: 5, scope: !35)
!41 = !DILocation(line: 22, column: 1, scope: !25)
!42 = distinct !DISubprogram(name: "xmlRegexpCompile", scope: !1, file: !1, line: 25, type: !43, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!43 = !DISubroutineType(types: !44)
!44 = !{!3, !11}
!45 = !DILocalVariable(name: "regexp", arg: 1, scope: !42, file: !1, line: 25, type: !11)
!46 = !DILocation(line: 25, column: 42, scope: !42)
!47 = !DILocalVariable(name: "atom", scope: !42, file: !1, line: 27, type: !3)
!48 = !DILocation(line: 27, column: 17, scope: !42)
!49 = !DILocation(line: 27, column: 37, scope: !42)
!50 = !DILocation(line: 27, column: 24, scope: !42)
!51 = !DILocation(line: 28, column: 10, scope: !52)
!52 = distinct !DILexicalBlock(scope: !42, file: !1, line: 28, column: 9)
!53 = !DILocation(line: 28, column: 9, scope: !42)
!54 = !DILocation(line: 28, column: 16, scope: !52)
!55 = !DILocation(line: 30, column: 5, scope: !42)
!56 = !DILocation(line: 30, column: 11, scope: !42)
!57 = !DILocation(line: 30, column: 16, scope: !42)
!58 = !DILocation(line: 31, column: 5, scope: !42)
!59 = !DILocation(line: 31, column: 11, scope: !42)
!60 = !DILocation(line: 31, column: 18, scope: !42)
!61 = !DILocalVariable(name: "token", scope: !42, file: !1, line: 34, type: !11)
!62 = !DILocation(line: 34, column: 17, scope: !42)
!63 = !DILocalVariable(name: "token2", scope: !42, file: !1, line: 35, type: !11)
!64 = !DILocation(line: 35, column: 17, scope: !42)
!65 = !DILocalVariable(name: "lenp", scope: !42, file: !1, line: 36, type: !8)
!66 = !DILocation(line: 36, column: 9, scope: !42)
!67 = !DILocalVariable(name: "lenn", scope: !42, file: !1, line: 36, type: !8)
!68 = !DILocation(line: 36, column: 15, scope: !42)
!69 = !DILocalVariable(name: "str", scope: !42, file: !1, line: 37, type: !14)
!70 = !DILocation(line: 37, column: 11, scope: !42)
!71 = !DILocation(line: 40, column: 24, scope: !42)
!72 = !DILocation(line: 40, column: 5, scope: !42)
!73 = !DILocation(line: 41, column: 24, scope: !42)
!74 = !DILocation(line: 41, column: 5, scope: !42)
!75 = !DILocation(line: 44, column: 33, scope: !42)
!76 = !DILocation(line: 44, column: 38, scope: !42)
!77 = !DILocation(line: 44, column: 26, scope: !42)
!78 = !DILocation(line: 44, column: 11, scope: !42)
!79 = !DILocation(line: 45, column: 34, scope: !42)
!80 = !DILocation(line: 45, column: 39, scope: !42)
!81 = !DILocation(line: 45, column: 27, scope: !42)
!82 = !DILocation(line: 45, column: 12, scope: !42)
!83 = !DILocation(line: 47, column: 10, scope: !84)
!84 = distinct !DILexicalBlock(scope: !42, file: !1, line: 47, column: 9)
!85 = !DILocation(line: 47, column: 16, scope: !84)
!86 = !DILocation(line: 47, column: 20, scope: !84)
!87 = !DILocation(line: 47, column: 9, scope: !42)
!88 = !DILocation(line: 48, column: 13, scope: !89)
!89 = distinct !DILexicalBlock(scope: !90, file: !1, line: 48, column: 13)
!90 = distinct !DILexicalBlock(scope: !84, file: !1, line: 47, column: 28)
!91 = !DILocation(line: 48, column: 13, scope: !90)
!92 = !DILocation(line: 48, column: 32, scope: !89)
!93 = !DILocation(line: 48, column: 20, scope: !89)
!94 = !DILocation(line: 49, column: 13, scope: !95)
!95 = distinct !DILexicalBlock(scope: !90, file: !1, line: 49, column: 13)
!96 = !DILocation(line: 49, column: 13, scope: !90)
!97 = !DILocation(line: 49, column: 33, scope: !95)
!98 = !DILocation(line: 49, column: 21, scope: !95)
!99 = !DILocation(line: 50, column: 24, scope: !90)
!100 = !DILocation(line: 50, column: 9, scope: !90)
!101 = !DILocation(line: 51, column: 9, scope: !90)
!102 = !DILocation(line: 54, column: 31, scope: !42)
!103 = !DILocation(line: 54, column: 38, scope: !42)
!104 = !DILocation(line: 54, column: 43, scope: !42)
!105 = !DILocation(line: 54, column: 5, scope: !42)
!106 = !DILocation(line: 55, column: 31, scope: !42)
!107 = !DILocation(line: 55, column: 39, scope: !42)
!108 = !DILocation(line: 55, column: 44, scope: !42)
!109 = !DILocation(line: 55, column: 5, scope: !42)
!110 = !DILocation(line: 58, column: 17, scope: !42)
!111 = !DILocation(line: 58, column: 22, scope: !42)
!112 = !DILocation(line: 58, column: 5, scope: !42)
!113 = !DILocation(line: 59, column: 17, scope: !42)
!114 = !DILocation(line: 59, column: 22, scope: !42)
!115 = !DILocation(line: 59, column: 5, scope: !42)
!116 = !DILocation(line: 62, column: 25, scope: !42)
!117 = !DILocation(line: 62, column: 32, scope: !42)
!118 = !DILocation(line: 62, column: 30, scope: !42)
!119 = !DILocation(line: 62, column: 37, scope: !42)
!120 = !DILocation(line: 62, column: 18, scope: !42)
!121 = !DILocation(line: 62, column: 9, scope: !42)
!122 = !DILocation(line: 63, column: 10, scope: !123)
!123 = distinct !DILexicalBlock(scope: !42, file: !1, line: 63, column: 9)
!124 = !DILocation(line: 63, column: 9, scope: !42)
!125 = !DILocation(line: 64, column: 21, scope: !126)
!126 = distinct !DILexicalBlock(scope: !123, file: !1, line: 63, column: 15)
!127 = !DILocation(line: 64, column: 9, scope: !126)
!128 = !DILocation(line: 65, column: 21, scope: !126)
!129 = !DILocation(line: 65, column: 9, scope: !126)
!130 = !DILocation(line: 66, column: 24, scope: !126)
!131 = !DILocation(line: 66, column: 9, scope: !126)
!132 = !DILocation(line: 67, column: 9, scope: !126)
!133 = !DILocation(line: 72, column: 5, scope: !42)
!134 = !DILocation(line: 75, column: 5, scope: !42)
!135 = !DILocation(line: 78, column: 13, scope: !42)
!136 = !DILocation(line: 78, column: 21, scope: !42)
!137 = !DILocation(line: 78, column: 28, scope: !42)
!138 = !DILocation(line: 78, column: 5, scope: !42)
!139 = !DILocation(line: 81, column: 5, scope: !42)
!140 = !DILocation(line: 81, column: 9, scope: !42)
!141 = !DILocation(line: 81, column: 15, scope: !42)
!142 = !DILocation(line: 82, column: 13, scope: !42)
!143 = !DILocation(line: 82, column: 17, scope: !42)
!144 = !DILocation(line: 82, column: 22, scope: !42)
!145 = !DILocation(line: 82, column: 28, scope: !42)
!146 = !DILocation(line: 82, column: 36, scope: !42)
!147 = !DILocation(line: 82, column: 5, scope: !42)
!148 = !DILocation(line: 83, column: 5, scope: !42)
!149 = !DILocation(line: 83, column: 9, scope: !42)
!150 = !DILocation(line: 83, column: 16, scope: !42)
!151 = !DILocation(line: 83, column: 14, scope: !42)
!152 = !DILocation(line: 83, column: 21, scope: !42)
!153 = !DILocation(line: 83, column: 26, scope: !42)
!154 = !DILocation(line: 85, column: 20, scope: !42)
!155 = !DILocation(line: 85, column: 5, scope: !42)
!156 = !DILocation(line: 85, column: 11, scope: !42)
!157 = !DILocation(line: 85, column: 18, scope: !42)
!158 = !DILocation(line: 88, column: 17, scope: !42)
!159 = !DILocation(line: 88, column: 5, scope: !42)
!160 = !DILocation(line: 89, column: 17, scope: !42)
!161 = !DILocation(line: 89, column: 5, scope: !42)
!162 = !DILocation(line: 91, column: 12, scope: !42)
!163 = !DILocation(line: 91, column: 5, scope: !42)
!164 = !DILocation(line: 92, column: 1, scope: !42)
!165 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 94, type: !166, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!166 = !DISubroutineType(types: !167)
!167 = !{!8}
!168 = !DILocalVariable(name: "regexp", scope: !165, file: !1, line: 96, type: !169)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 100)
!172 = !DILocation(line: 96, column: 10, scope: !165)
!173 = !DILocation(line: 97, column: 24, scope: !165)
!174 = !DILocation(line: 97, column: 5, scope: !165)
!175 = !DILocalVariable(name: "result", scope: !165, file: !1, line: 100, type: !3)
!176 = !DILocation(line: 100, column: 17, scope: !165)
!177 = !DILocation(line: 100, column: 43, scope: !165)
!178 = !DILocation(line: 100, column: 26, scope: !165)
!179 = !DILocation(line: 103, column: 9, scope: !180)
!180 = distinct !DILexicalBlock(scope: !165, file: !1, line: 103, column: 9)
!181 = !DILocation(line: 103, column: 9, scope: !165)
!182 = !DILocation(line: 104, column: 24, scope: !183)
!183 = distinct !DILexicalBlock(scope: !180, file: !1, line: 103, column: 17)
!184 = !DILocation(line: 104, column: 9, scope: !183)
!185 = !DILocation(line: 105, column: 5, scope: !183)
!186 = !DILocation(line: 107, column: 5, scope: !165)
!187 = distinct !DISubprogram(name: "memcpy", scope: !188, file: !188, line: 12, type: !189, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !28)
!188 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!189 = !DISubroutineType(types: !190)
!190 = !{!10, !10, !191, !193}
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !194, line: 46, baseType: !195)
!194 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!195 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!196 = !DILocalVariable(name: "destaddr", arg: 1, scope: !187, file: !188, line: 12, type: !10)
!197 = !DILocation(line: 12, column: 20, scope: !187)
!198 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !187, file: !188, line: 12, type: !191)
!199 = !DILocation(line: 12, column: 42, scope: !187)
!200 = !DILocalVariable(name: "len", arg: 3, scope: !187, file: !188, line: 12, type: !193)
!201 = !DILocation(line: 12, column: 58, scope: !187)
!202 = !DILocalVariable(name: "dest", scope: !187, file: !188, line: 13, type: !14)
!203 = !DILocation(line: 13, column: 9, scope: !187)
!204 = !DILocation(line: 13, column: 16, scope: !187)
!205 = !DILocalVariable(name: "src", scope: !187, file: !188, line: 14, type: !11)
!206 = !DILocation(line: 14, column: 15, scope: !187)
!207 = !DILocation(line: 14, column: 21, scope: !187)
!208 = !DILocation(line: 16, column: 3, scope: !187)
!209 = !DILocation(line: 16, column: 13, scope: !187)
!210 = !DILocation(line: 16, column: 16, scope: !187)
!211 = !DILocation(line: 17, column: 19, scope: !187)
!212 = !DILocation(line: 17, column: 15, scope: !187)
!213 = !DILocation(line: 17, column: 10, scope: !187)
!214 = !DILocation(line: 17, column: 13, scope: !187)
!215 = distinct !{!215, !208, !211, !216}
!216 = !{!"llvm.loop.mustprogress"}
!217 = !DILocation(line: 18, column: 10, scope: !187)
!218 = !DILocation(line: 18, column: 3, scope: !187)

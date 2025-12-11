; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/079_testdict.c_408_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/079_testdict.c_408_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.xmlChar = type { i8*, i32 }

@.str = private unnamed_addr constant [9 x i8] c"strings1\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"strings2\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"test1\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"test2\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"seeds1\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"seeds2\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/079_testdict.c_408_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fill_string_pool(%struct.xmlChar* noundef %0, i32* noundef %1) #0 !dbg !12 {
  %3 = alloca %struct.xmlChar*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.xmlChar* %0, %struct.xmlChar** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.xmlChar** %3, metadata !26, metadata !DIExpression()), !dbg !27
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata i32* %5, metadata !30, metadata !DIExpression()), !dbg !32
  store i32 0, i32* %5, align 4, !dbg !32
  br label %6, !dbg !33

6:                                                ; preds = %76, %2
  %7 = load i32, i32* %5, align 4, !dbg !34
  %8 = icmp slt i32 %7, 1000, !dbg !36
  br i1 %8, label %9, label %79, !dbg !37

9:                                                ; preds = %6
  %10 = load i32*, i32** %4, align 8, !dbg !38
  %11 = load i32, i32* %5, align 4, !dbg !41
  %12 = sext i32 %11 to i64, !dbg !38
  %13 = getelementptr inbounds i32, i32* %10, i64 %12, !dbg !38
  %14 = load i32, i32* %13, align 4, !dbg !38
  %15 = icmp sgt i32 %14, 0, !dbg !42
  br i1 %15, label %16, label %75, !dbg !43

16:                                               ; preds = %9
  %17 = load i32*, i32** %4, align 8, !dbg !44
  %18 = load i32, i32* %5, align 4, !dbg !46
  %19 = sext i32 %18 to i64, !dbg !44
  %20 = getelementptr inbounds i32, i32* %17, i64 %19, !dbg !44
  %21 = load i32, i32* %20, align 4, !dbg !44
  %22 = add nsw i32 %21, 1, !dbg !47
  %23 = sext i32 %22 to i64, !dbg !44
  %24 = call noalias i8* @malloc(i64 noundef %23) #7, !dbg !48
  %25 = load %struct.xmlChar*, %struct.xmlChar** %3, align 8, !dbg !49
  %26 = load i32, i32* %5, align 4, !dbg !50
  %27 = sext i32 %26 to i64, !dbg !49
  %28 = getelementptr inbounds %struct.xmlChar, %struct.xmlChar* %25, i64 %27, !dbg !49
  %29 = getelementptr inbounds %struct.xmlChar, %struct.xmlChar* %28, i32 0, i32 0, !dbg !51
  store i8* %24, i8** %29, align 8, !dbg !52
  %30 = load i32*, i32** %4, align 8, !dbg !53
  %31 = load i32, i32* %5, align 4, !dbg !54
  %32 = sext i32 %31 to i64, !dbg !53
  %33 = getelementptr inbounds i32, i32* %30, i64 %32, !dbg !53
  %34 = load i32, i32* %33, align 4, !dbg !53
  %35 = load %struct.xmlChar*, %struct.xmlChar** %3, align 8, !dbg !55
  %36 = load i32, i32* %5, align 4, !dbg !56
  %37 = sext i32 %36 to i64, !dbg !55
  %38 = getelementptr inbounds %struct.xmlChar, %struct.xmlChar* %35, i64 %37, !dbg !55
  %39 = getelementptr inbounds %struct.xmlChar, %struct.xmlChar* %38, i32 0, i32 1, !dbg !57
  store i32 %34, i32* %39, align 8, !dbg !58
  %40 = load %struct.xmlChar*, %struct.xmlChar** %3, align 8, !dbg !59
  %41 = load i32, i32* %5, align 4, !dbg !61
  %42 = sext i32 %41 to i64, !dbg !59
  %43 = getelementptr inbounds %struct.xmlChar, %struct.xmlChar* %40, i64 %42, !dbg !59
  %44 = getelementptr inbounds %struct.xmlChar, %struct.xmlChar* %43, i32 0, i32 0, !dbg !62
  %45 = load i8*, i8** %44, align 8, !dbg !62
  %46 = icmp ne i8* %45, null, !dbg !59
  br i1 %46, label %47, label %74, !dbg !63

47:                                               ; preds = %16
  %48 = load %struct.xmlChar*, %struct.xmlChar** %3, align 8, !dbg !64
  %49 = load i32, i32* %5, align 4, !dbg !66
  %50 = sext i32 %49 to i64, !dbg !64
  %51 = getelementptr inbounds %struct.xmlChar, %struct.xmlChar* %48, i64 %50, !dbg !64
  %52 = getelementptr inbounds %struct.xmlChar, %struct.xmlChar* %51, i32 0, i32 0, !dbg !67
  %53 = load i8*, i8** %52, align 8, !dbg !67
  %54 = load i32*, i32** %4, align 8, !dbg !68
  %55 = load i32, i32* %5, align 4, !dbg !69
  %56 = sext i32 %55 to i64, !dbg !68
  %57 = getelementptr inbounds i32, i32* %54, i64 %56, !dbg !68
  %58 = load i32, i32* %57, align 4, !dbg !68
  %59 = sext i32 %58 to i64, !dbg !68
  %60 = call i8* @memset(i8* %53, i32 65, i64 %59), !dbg !70
  %61 = load %struct.xmlChar*, %struct.xmlChar** %3, align 8, !dbg !71
  %62 = load i32, i32* %5, align 4, !dbg !72
  %63 = sext i32 %62 to i64, !dbg !71
  %64 = getelementptr inbounds %struct.xmlChar, %struct.xmlChar* %61, i64 %63, !dbg !71
  %65 = getelementptr inbounds %struct.xmlChar, %struct.xmlChar* %64, i32 0, i32 0, !dbg !73
  %66 = load i8*, i8** %65, align 8, !dbg !73
  %67 = load i32*, i32** %4, align 8, !dbg !74
  %68 = load i32, i32* %5, align 4, !dbg !75
  %69 = sext i32 %68 to i64, !dbg !74
  %70 = getelementptr inbounds i32, i32* %67, i64 %69, !dbg !74
  %71 = load i32, i32* %70, align 4, !dbg !74
  %72 = sext i32 %71 to i64, !dbg !71
  %73 = getelementptr inbounds i8, i8* %66, i64 %72, !dbg !71
  store i8 0, i8* %73, align 1, !dbg !76
  br label %74, !dbg !77

74:                                               ; preds = %47, %16
  br label %75, !dbg !78

75:                                               ; preds = %74, %9
  br label %76, !dbg !79

76:                                               ; preds = %75
  %77 = load i32, i32* %5, align 4, !dbg !80
  %78 = add nsw i32 %77, 1, !dbg !80
  store i32 %78, i32* %5, align 4, !dbg !80
  br label %6, !dbg !81, !llvm.loop !82

79:                                               ; preds = %6
  ret void, !dbg !85
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_strings() #0 !dbg !86 {
  ret void, !dbg !89
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !90 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.xmlChar*, align 8
  %3 = alloca %struct.xmlChar*, align 8
  %4 = alloca %struct.xmlChar*, align 8
  %5 = alloca %struct.xmlChar*, align 8
  %6 = alloca [1000 x i32], align 16
  %7 = alloca [1000 x i32], align 16
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.xmlChar** %2, metadata !93, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.declare(metadata %struct.xmlChar** %3, metadata !95, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.declare(metadata %struct.xmlChar** %4, metadata !97, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.declare(metadata %struct.xmlChar** %5, metadata !99, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.declare(metadata [1000 x i32]* %6, metadata !101, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata [1000 x i32]* %7, metadata !106, metadata !DIExpression()), !dbg !107
  %9 = call noalias i8* @malloc(i64 noundef 16000) #7, !dbg !108
  %10 = bitcast i8* %9 to %struct.xmlChar*, !dbg !108
  store %struct.xmlChar* %10, %struct.xmlChar** %2, align 8, !dbg !109
  %11 = load %struct.xmlChar*, %struct.xmlChar** %2, align 8, !dbg !110
  %12 = bitcast %struct.xmlChar* %11 to i8*, !dbg !110
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 16000, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !dbg !111
  %13 = call noalias i8* @malloc(i64 noundef 16000) #7, !dbg !112
  %14 = bitcast i8* %13 to %struct.xmlChar*, !dbg !112
  store %struct.xmlChar* %14, %struct.xmlChar** %3, align 8, !dbg !113
  %15 = load %struct.xmlChar*, %struct.xmlChar** %3, align 8, !dbg !114
  %16 = bitcast %struct.xmlChar* %15 to i8*, !dbg !114
  call void @klee_make_symbolic(i8* noundef %16, i64 noundef 16000, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)), !dbg !115
  %17 = call noalias i8* @malloc(i64 noundef 16000) #7, !dbg !116
  %18 = bitcast i8* %17 to %struct.xmlChar*, !dbg !116
  store %struct.xmlChar* %18, %struct.xmlChar** %4, align 8, !dbg !117
  %19 = load %struct.xmlChar*, %struct.xmlChar** %4, align 8, !dbg !118
  %20 = bitcast %struct.xmlChar* %19 to i8*, !dbg !118
  call void @klee_make_symbolic(i8* noundef %20, i64 noundef 16000, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)), !dbg !119
  %21 = call noalias i8* @malloc(i64 noundef 16000) #7, !dbg !120
  %22 = bitcast i8* %21 to %struct.xmlChar*, !dbg !120
  store %struct.xmlChar* %22, %struct.xmlChar** %5, align 8, !dbg !121
  %23 = load %struct.xmlChar*, %struct.xmlChar** %5, align 8, !dbg !122
  %24 = bitcast %struct.xmlChar* %23 to i8*, !dbg !122
  call void @klee_make_symbolic(i8* noundef %24, i64 noundef 16000, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)), !dbg !123
  %25 = getelementptr inbounds [1000 x i32], [1000 x i32]* %6, i64 0, i64 0, !dbg !124
  %26 = bitcast i32* %25 to i8*, !dbg !124
  call void @klee_make_symbolic(i8* noundef %26, i64 noundef 4000, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)), !dbg !125
  %27 = getelementptr inbounds [1000 x i32], [1000 x i32]* %7, i64 0, i64 0, !dbg !126
  %28 = bitcast i32* %27 to i8*, !dbg !126
  call void @klee_make_symbolic(i8* noundef %28, i64 noundef 4000, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)), !dbg !127
  call void @llvm.dbg.declare(metadata i32* %8, metadata !128, metadata !DIExpression()), !dbg !130
  store i32 0, i32* %8, align 4, !dbg !130
  br label %29, !dbg !131

29:                                               ; preds = %63, %0
  %30 = load i32, i32* %8, align 4, !dbg !132
  %31 = icmp slt i32 %30, 1000, !dbg !134
  br i1 %31, label %32, label %66, !dbg !135

32:                                               ; preds = %29
  %33 = load i32, i32* %8, align 4, !dbg !136
  %34 = sext i32 %33 to i64, !dbg !138
  %35 = getelementptr inbounds [1000 x i32], [1000 x i32]* %6, i64 0, i64 %34, !dbg !138
  %36 = load i32, i32* %35, align 4, !dbg !138
  %37 = icmp sge i32 %36, 0, !dbg !139
  br i1 %37, label %38, label %44, !dbg !140

38:                                               ; preds = %32
  %39 = load i32, i32* %8, align 4, !dbg !141
  %40 = sext i32 %39 to i64, !dbg !142
  %41 = getelementptr inbounds [1000 x i32], [1000 x i32]* %6, i64 0, i64 %40, !dbg !142
  %42 = load i32, i32* %41, align 4, !dbg !142
  %43 = icmp slt i32 %42, 100, !dbg !143
  br label %44

44:                                               ; preds = %38, %32
  %45 = phi i1 [ false, %32 ], [ %43, %38 ], !dbg !144
  %46 = zext i1 %45 to i32, !dbg !140
  %47 = sext i32 %46 to i64, !dbg !138
  call void @klee_assume(i64 noundef %47), !dbg !145
  %48 = load i32, i32* %8, align 4, !dbg !146
  %49 = sext i32 %48 to i64, !dbg !147
  %50 = getelementptr inbounds [1000 x i32], [1000 x i32]* %7, i64 0, i64 %49, !dbg !147
  %51 = load i32, i32* %50, align 4, !dbg !147
  %52 = icmp sge i32 %51, 0, !dbg !148
  br i1 %52, label %53, label %59, !dbg !149

53:                                               ; preds = %44
  %54 = load i32, i32* %8, align 4, !dbg !150
  %55 = sext i32 %54 to i64, !dbg !151
  %56 = getelementptr inbounds [1000 x i32], [1000 x i32]* %7, i64 0, i64 %55, !dbg !151
  %57 = load i32, i32* %56, align 4, !dbg !151
  %58 = icmp slt i32 %57, 100, !dbg !152
  br label %59

59:                                               ; preds = %53, %44
  %60 = phi i1 [ false, %44 ], [ %58, %53 ], !dbg !144
  %61 = zext i1 %60 to i32, !dbg !149
  %62 = sext i32 %61 to i64, !dbg !147
  call void @klee_assume(i64 noundef %62), !dbg !153
  br label %63, !dbg !154

63:                                               ; preds = %59
  %64 = load i32, i32* %8, align 4, !dbg !155
  %65 = add nsw i32 %64, 1, !dbg !155
  store i32 %65, i32* %8, align 4, !dbg !155
  br label %29, !dbg !156, !llvm.loop !157

66:                                               ; preds = %29
  %67 = load %struct.xmlChar*, %struct.xmlChar** %2, align 8, !dbg !159
  %68 = bitcast %struct.xmlChar* %67 to i8*, !dbg !160
  %69 = call i8* @memset(i8* %68, i32 0, i64 16000), !dbg !160
  %70 = load %struct.xmlChar*, %struct.xmlChar** %3, align 8, !dbg !161
  %71 = bitcast %struct.xmlChar* %70 to i8*, !dbg !162
  %72 = call i8* @memset(i8* %71, i32 0, i64 16000), !dbg !162
  %73 = load %struct.xmlChar*, %struct.xmlChar** %4, align 8, !dbg !163
  %74 = bitcast %struct.xmlChar* %73 to i8*, !dbg !164
  %75 = call i8* @memset(i8* %74, i32 0, i64 16000), !dbg !164
  %76 = load %struct.xmlChar*, %struct.xmlChar** %5, align 8, !dbg !165
  %77 = bitcast %struct.xmlChar* %76 to i8*, !dbg !166
  %78 = call i8* @memset(i8* %77, i32 0, i64 16000), !dbg !166
  %79 = load %struct.xmlChar*, %struct.xmlChar** %2, align 8, !dbg !167
  %80 = getelementptr inbounds [1000 x i32], [1000 x i32]* %6, i64 0, i64 0, !dbg !168
  call void @fill_string_pool(%struct.xmlChar* noundef %79, i32* noundef %80), !dbg !169
  %81 = load %struct.xmlChar*, %struct.xmlChar** %3, align 8, !dbg !170
  %82 = getelementptr inbounds [1000 x i32], [1000 x i32]* %7, i64 0, i64 0, !dbg !171
  call void @fill_string_pool(%struct.xmlChar* noundef %81, i32* noundef %82), !dbg !172
  %83 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.7, i64 0, i64 0), i32 noundef 65, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !173
  %84 = load %struct.xmlChar*, %struct.xmlChar** %2, align 8, !dbg !174
  %85 = bitcast %struct.xmlChar* %84 to i8*, !dbg !174
  call void @free(i8* noundef %85) #7, !dbg !175
  %86 = load %struct.xmlChar*, %struct.xmlChar** %3, align 8, !dbg !176
  %87 = bitcast %struct.xmlChar* %86 to i8*, !dbg !176
  call void @free(i8* noundef %87) #7, !dbg !177
  %88 = load %struct.xmlChar*, %struct.xmlChar** %4, align 8, !dbg !178
  %89 = bitcast %struct.xmlChar* %88 to i8*, !dbg !178
  call void @free(i8* noundef %89) #7, !dbg !179
  %90 = load %struct.xmlChar*, %struct.xmlChar** %5, align 8, !dbg !180
  %91 = bitcast %struct.xmlChar* %90 to i8*, !dbg !180
  call void @free(i8* noundef %91) #7, !dbg !181
  ret i32 0, !dbg !182
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !183 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !191, metadata !DIExpression()), !dbg !192
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !193, metadata !DIExpression()), !dbg !194
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !195, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.declare(metadata i8** %7, metadata !197, metadata !DIExpression()), !dbg !198
  %8 = load i8*, i8** %4, align 8, !dbg !199
  store i8* %8, i8** %7, align 8, !dbg !198
  br label %9, !dbg !200

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !201
  %11 = add i64 %10, -1, !dbg !201
  store i64 %11, i64* %6, align 8, !dbg !201
  %12 = icmp ugt i64 %10, 0, !dbg !202
  br i1 %12, label %13, label %18, !dbg !200

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !203
  %15 = trunc i32 %14 to i8, !dbg !203
  %16 = load i8*, i8** %7, align 8, !dbg !204
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !204
  store i8* %17, i8** %7, align 8, !dbg !204
  store i8 %15, i8* %16, align 1, !dbg !205
  br label %9, !dbg !200, !llvm.loop !206

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !207
  ret i8* %19, !dbg !208
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11, !11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/079_testdict.c_408_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "93377871b5fa2f254d40174cea500028")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 7, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"Ubuntu clang version 14.0.6"}
!12 = distinct !DISubprogram(name: "fill_string_pool", scope: !1, file: !1, line: 16, type: !13, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15, !24}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !1, line: 14, baseType: !17)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 11, size: 128, elements: !18)
!18 = !{!19, !22}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !17, file: !1, line: 12, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !17, file: !1, line: 13, baseType: !23, size: 32, offset: 64)
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!25 = !{}
!26 = !DILocalVariable(name: "pool", arg: 1, scope: !12, file: !1, line: 16, type: !15)
!27 = !DILocation(line: 16, column: 32, scope: !12)
!28 = !DILocalVariable(name: "seeds", arg: 2, scope: !12, file: !1, line: 16, type: !24)
!29 = !DILocation(line: 16, column: 43, scope: !12)
!30 = !DILocalVariable(name: "i", scope: !31, file: !1, line: 17, type: !23)
!31 = distinct !DILexicalBlock(scope: !12, file: !1, line: 17, column: 5)
!32 = !DILocation(line: 17, column: 14, scope: !31)
!33 = !DILocation(line: 17, column: 10, scope: !31)
!34 = !DILocation(line: 17, column: 21, scope: !35)
!35 = distinct !DILexicalBlock(scope: !31, file: !1, line: 17, column: 5)
!36 = !DILocation(line: 17, column: 23, scope: !35)
!37 = !DILocation(line: 17, column: 5, scope: !31)
!38 = !DILocation(line: 18, column: 13, scope: !39)
!39 = distinct !DILexicalBlock(scope: !40, file: !1, line: 18, column: 13)
!40 = distinct !DILexicalBlock(scope: !35, file: !1, line: 17, column: 46)
!41 = !DILocation(line: 18, column: 19, scope: !39)
!42 = !DILocation(line: 18, column: 22, scope: !39)
!43 = !DILocation(line: 18, column: 13, scope: !40)
!44 = !DILocation(line: 19, column: 34, scope: !45)
!45 = distinct !DILexicalBlock(scope: !39, file: !1, line: 18, column: 27)
!46 = !DILocation(line: 19, column: 40, scope: !45)
!47 = !DILocation(line: 19, column: 43, scope: !45)
!48 = !DILocation(line: 19, column: 27, scope: !45)
!49 = !DILocation(line: 19, column: 13, scope: !45)
!50 = !DILocation(line: 19, column: 18, scope: !45)
!51 = !DILocation(line: 19, column: 21, scope: !45)
!52 = !DILocation(line: 19, column: 25, scope: !45)
!53 = !DILocation(line: 20, column: 27, scope: !45)
!54 = !DILocation(line: 20, column: 33, scope: !45)
!55 = !DILocation(line: 20, column: 13, scope: !45)
!56 = !DILocation(line: 20, column: 18, scope: !45)
!57 = !DILocation(line: 20, column: 21, scope: !45)
!58 = !DILocation(line: 20, column: 25, scope: !45)
!59 = !DILocation(line: 21, column: 17, scope: !60)
!60 = distinct !DILexicalBlock(scope: !45, file: !1, line: 21, column: 17)
!61 = !DILocation(line: 21, column: 22, scope: !60)
!62 = !DILocation(line: 21, column: 25, scope: !60)
!63 = !DILocation(line: 21, column: 17, scope: !45)
!64 = !DILocation(line: 22, column: 24, scope: !65)
!65 = distinct !DILexicalBlock(scope: !60, file: !1, line: 21, column: 30)
!66 = !DILocation(line: 22, column: 29, scope: !65)
!67 = !DILocation(line: 22, column: 32, scope: !65)
!68 = !DILocation(line: 22, column: 42, scope: !65)
!69 = !DILocation(line: 22, column: 48, scope: !65)
!70 = !DILocation(line: 22, column: 17, scope: !65)
!71 = !DILocation(line: 23, column: 17, scope: !65)
!72 = !DILocation(line: 23, column: 22, scope: !65)
!73 = !DILocation(line: 23, column: 25, scope: !65)
!74 = !DILocation(line: 23, column: 29, scope: !65)
!75 = !DILocation(line: 23, column: 35, scope: !65)
!76 = !DILocation(line: 23, column: 39, scope: !65)
!77 = !DILocation(line: 24, column: 13, scope: !65)
!78 = !DILocation(line: 25, column: 9, scope: !45)
!79 = !DILocation(line: 26, column: 5, scope: !40)
!80 = !DILocation(line: 17, column: 42, scope: !35)
!81 = !DILocation(line: 17, column: 5, scope: !35)
!82 = distinct !{!82, !37, !83, !84}
!83 = !DILocation(line: 26, column: 5, scope: !31)
!84 = !{!"llvm.loop.mustprogress"}
!85 = !DILocation(line: 27, column: 1, scope: !12)
!86 = distinct !DISubprogram(name: "print_strings", scope: !1, file: !1, line: 29, type: !87, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!87 = !DISubroutineType(types: !88)
!88 = !{null}
!89 = !DILocation(line: 30, column: 1, scope: !86)
!90 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 32, type: !91, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!91 = !DISubroutineType(types: !92)
!92 = !{!23}
!93 = !DILocalVariable(name: "strings1", scope: !90, file: !1, line: 33, type: !15)
!94 = !DILocation(line: 33, column: 14, scope: !90)
!95 = !DILocalVariable(name: "strings2", scope: !90, file: !1, line: 33, type: !15)
!96 = !DILocation(line: 33, column: 25, scope: !90)
!97 = !DILocalVariable(name: "test1", scope: !90, file: !1, line: 33, type: !15)
!98 = !DILocation(line: 33, column: 36, scope: !90)
!99 = !DILocalVariable(name: "test2", scope: !90, file: !1, line: 33, type: !15)
!100 = !DILocation(line: 33, column: 44, scope: !90)
!101 = !DILocalVariable(name: "seeds1", scope: !90, file: !1, line: 34, type: !102)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 32000, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 1000)
!105 = !DILocation(line: 34, column: 9, scope: !90)
!106 = !DILocalVariable(name: "seeds2", scope: !90, file: !1, line: 34, type: !102)
!107 = !DILocation(line: 34, column: 33, scope: !90)
!108 = !DILocation(line: 36, column: 16, scope: !90)
!109 = !DILocation(line: 36, column: 14, scope: !90)
!110 = !DILocation(line: 37, column: 24, scope: !90)
!111 = !DILocation(line: 37, column: 5, scope: !90)
!112 = !DILocation(line: 39, column: 16, scope: !90)
!113 = !DILocation(line: 39, column: 14, scope: !90)
!114 = !DILocation(line: 40, column: 24, scope: !90)
!115 = !DILocation(line: 40, column: 5, scope: !90)
!116 = !DILocation(line: 42, column: 13, scope: !90)
!117 = !DILocation(line: 42, column: 11, scope: !90)
!118 = !DILocation(line: 43, column: 24, scope: !90)
!119 = !DILocation(line: 43, column: 5, scope: !90)
!120 = !DILocation(line: 45, column: 13, scope: !90)
!121 = !DILocation(line: 45, column: 11, scope: !90)
!122 = !DILocation(line: 46, column: 24, scope: !90)
!123 = !DILocation(line: 46, column: 5, scope: !90)
!124 = !DILocation(line: 48, column: 24, scope: !90)
!125 = !DILocation(line: 48, column: 5, scope: !90)
!126 = !DILocation(line: 49, column: 24, scope: !90)
!127 = !DILocation(line: 49, column: 5, scope: !90)
!128 = !DILocalVariable(name: "i", scope: !129, file: !1, line: 51, type: !23)
!129 = distinct !DILexicalBlock(scope: !90, file: !1, line: 51, column: 5)
!130 = !DILocation(line: 51, column: 14, scope: !129)
!131 = !DILocation(line: 51, column: 10, scope: !129)
!132 = !DILocation(line: 51, column: 21, scope: !133)
!133 = distinct !DILexicalBlock(scope: !129, file: !1, line: 51, column: 5)
!134 = !DILocation(line: 51, column: 23, scope: !133)
!135 = !DILocation(line: 51, column: 5, scope: !129)
!136 = !DILocation(line: 52, column: 28, scope: !137)
!137 = distinct !DILexicalBlock(scope: !133, file: !1, line: 51, column: 46)
!138 = !DILocation(line: 52, column: 21, scope: !137)
!139 = !DILocation(line: 52, column: 31, scope: !137)
!140 = !DILocation(line: 52, column: 36, scope: !137)
!141 = !DILocation(line: 52, column: 46, scope: !137)
!142 = !DILocation(line: 52, column: 39, scope: !137)
!143 = !DILocation(line: 52, column: 49, scope: !137)
!144 = !DILocation(line: 0, scope: !137)
!145 = !DILocation(line: 52, column: 9, scope: !137)
!146 = !DILocation(line: 53, column: 28, scope: !137)
!147 = !DILocation(line: 53, column: 21, scope: !137)
!148 = !DILocation(line: 53, column: 31, scope: !137)
!149 = !DILocation(line: 53, column: 36, scope: !137)
!150 = !DILocation(line: 53, column: 46, scope: !137)
!151 = !DILocation(line: 53, column: 39, scope: !137)
!152 = !DILocation(line: 53, column: 49, scope: !137)
!153 = !DILocation(line: 53, column: 9, scope: !137)
!154 = !DILocation(line: 54, column: 5, scope: !137)
!155 = !DILocation(line: 51, column: 42, scope: !133)
!156 = !DILocation(line: 51, column: 5, scope: !133)
!157 = distinct !{!157, !135, !158, !84}
!158 = !DILocation(line: 54, column: 5, scope: !129)
!159 = !DILocation(line: 56, column: 12, scope: !90)
!160 = !DILocation(line: 56, column: 5, scope: !90)
!161 = !DILocation(line: 57, column: 12, scope: !90)
!162 = !DILocation(line: 57, column: 5, scope: !90)
!163 = !DILocation(line: 58, column: 12, scope: !90)
!164 = !DILocation(line: 58, column: 5, scope: !90)
!165 = !DILocation(line: 59, column: 12, scope: !90)
!166 = !DILocation(line: 59, column: 5, scope: !90)
!167 = !DILocation(line: 61, column: 22, scope: !90)
!168 = !DILocation(line: 61, column: 32, scope: !90)
!169 = !DILocation(line: 61, column: 5, scope: !90)
!170 = !DILocation(line: 62, column: 22, scope: !90)
!171 = !DILocation(line: 62, column: 32, scope: !90)
!172 = !DILocation(line: 62, column: 5, scope: !90)
!173 = !DILocation(line: 65, column: 5, scope: !90)
!174 = !DILocation(line: 67, column: 10, scope: !90)
!175 = !DILocation(line: 67, column: 5, scope: !90)
!176 = !DILocation(line: 68, column: 10, scope: !90)
!177 = !DILocation(line: 68, column: 5, scope: !90)
!178 = !DILocation(line: 69, column: 10, scope: !90)
!179 = !DILocation(line: 69, column: 5, scope: !90)
!180 = !DILocation(line: 70, column: 10, scope: !90)
!181 = !DILocation(line: 70, column: 5, scope: !90)
!182 = !DILocation(line: 72, column: 5, scope: !90)
!183 = distinct !DISubprogram(name: "memset", scope: !184, file: !184, line: 12, type: !185, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !25)
!184 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!185 = !DISubroutineType(types: !186)
!186 = !{!187, !187, !23, !188}
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !189, line: 46, baseType: !190)
!189 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!190 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!191 = !DILocalVariable(name: "dst", arg: 1, scope: !183, file: !184, line: 12, type: !187)
!192 = !DILocation(line: 12, column: 20, scope: !183)
!193 = !DILocalVariable(name: "s", arg: 2, scope: !183, file: !184, line: 12, type: !23)
!194 = !DILocation(line: 12, column: 29, scope: !183)
!195 = !DILocalVariable(name: "count", arg: 3, scope: !183, file: !184, line: 12, type: !188)
!196 = !DILocation(line: 12, column: 39, scope: !183)
!197 = !DILocalVariable(name: "a", scope: !183, file: !184, line: 13, type: !20)
!198 = !DILocation(line: 13, column: 9, scope: !183)
!199 = !DILocation(line: 13, column: 13, scope: !183)
!200 = !DILocation(line: 14, column: 3, scope: !183)
!201 = !DILocation(line: 14, column: 15, scope: !183)
!202 = !DILocation(line: 14, column: 18, scope: !183)
!203 = !DILocation(line: 15, column: 12, scope: !183)
!204 = !DILocation(line: 15, column: 7, scope: !183)
!205 = !DILocation(line: 15, column: 10, scope: !183)
!206 = distinct !{!206, !200, !203, !84}
!207 = !DILocation(line: 16, column: 10, scope: !183)
!208 = !DILocation(line: 16, column: 3, scope: !183)

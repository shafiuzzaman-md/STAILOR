; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/204_xmlregexp.c_5792_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/204_xmlregexp.c_5792_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRegAtom = type { i32, i8*, i8*, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [5 x i8] c"lenp\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"lenn\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"token\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"token2\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.5 = private unnamed_addr constant [70 x i8] c"(lenn + lenp + 2 > 0 && lenn + lenp + 1 < 256) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_62911_vul/204_xmlregexp.c_5792_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !29 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [256 x i8], align 16
  %5 = alloca [256 x i8], align 16
  %6 = alloca %struct._xmlRegAtom*, align 8
  %7 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i32* %3, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata [256 x i8]* %4, metadata !37, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata [256 x i8]* %5, metadata !42, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.declare(metadata %struct._xmlRegAtom** %6, metadata !44, metadata !DIExpression()), !dbg !45
  call void @llvm.dbg.declare(metadata i8** %7, metadata !46, metadata !DIExpression()), !dbg !47
  %8 = bitcast i32* %2 to i8*, !dbg !48
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !49
  %9 = bitcast i32* %3 to i8*, !dbg !50
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !51
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !52
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 256, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)), !dbg !53
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !54
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 256, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)), !dbg !55
  %12 = load i32, i32* %2, align 4, !dbg !56
  %13 = icmp sge i32 %12, 0, !dbg !57
  br i1 %13, label %14, label %17, !dbg !58

14:                                               ; preds = %0
  %15 = load i32, i32* %2, align 4, !dbg !59
  %16 = icmp slt i32 %15, 256, !dbg !60
  br label %17

17:                                               ; preds = %14, %0
  %18 = phi i1 [ false, %0 ], [ %16, %14 ], !dbg !61
  %19 = zext i1 %18 to i32, !dbg !58
  %20 = sext i32 %19 to i64, !dbg !56
  call void @klee_assume(i64 noundef %20), !dbg !62
  %21 = load i32, i32* %3, align 4, !dbg !63
  %22 = icmp sge i32 %21, 0, !dbg !64
  br i1 %22, label %23, label %26, !dbg !65

23:                                               ; preds = %17
  %24 = load i32, i32* %3, align 4, !dbg !66
  %25 = icmp slt i32 %24, 256, !dbg !67
  br label %26

26:                                               ; preds = %23, %17
  %27 = phi i1 [ false, %17 ], [ %25, %23 ], !dbg !61
  %28 = zext i1 %27 to i32, !dbg !65
  %29 = sext i32 %28 to i64, !dbg !63
  call void @klee_assume(i64 noundef %29), !dbg !68
  %30 = call %struct._xmlRegAtom* @xmlRegNewAtom(i32 noundef 1, i32 noundef 0), !dbg !69
  store %struct._xmlRegAtom* %30, %struct._xmlRegAtom** %6, align 8, !dbg !70
  %31 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %6, align 8, !dbg !71
  %32 = icmp eq %struct._xmlRegAtom* %31, null, !dbg !73
  br i1 %32, label %33, label %34, !dbg !74

33:                                               ; preds = %26
  store i32 0, i32* %1, align 4, !dbg !75
  br label %93, !dbg !75

34:                                               ; preds = %26
  %35 = load i32, i32* %3, align 4, !dbg !77
  %36 = load i32, i32* %2, align 4, !dbg !78
  %37 = add nsw i32 %35, %36, !dbg !79
  %38 = add nsw i32 %37, 2, !dbg !80
  %39 = sext i32 %38 to i64, !dbg !77
  %40 = call i8* @xmlMallocAtomic(i64 noundef %39), !dbg !81
  store i8* %40, i8** %7, align 8, !dbg !82
  %41 = load i8*, i8** %7, align 8, !dbg !83
  %42 = icmp eq i8* %41, null, !dbg !85
  br i1 %42, label %43, label %45, !dbg !86

43:                                               ; preds = %34
  %44 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %6, align 8, !dbg !87
  call void @xmlRegFreeAtom(%struct._xmlRegAtom* noundef %44), !dbg !89
  store i32 0, i32* %1, align 4, !dbg !90
  br label %93, !dbg !90

45:                                               ; preds = %34
  %46 = load i8*, i8** %7, align 8, !dbg !91
  %47 = getelementptr inbounds i8, i8* %46, i64 0, !dbg !91
  %48 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !92
  %49 = load i32, i32* %2, align 4, !dbg !93
  %50 = sext i32 %49 to i64, !dbg !93
  %51 = call i8* @memcpy(i8* %47, i8* %48, i64 %50), !dbg !92
  %52 = load i8*, i8** %7, align 8, !dbg !94
  %53 = load i32, i32* %2, align 4, !dbg !95
  %54 = sext i32 %53 to i64, !dbg !94
  %55 = getelementptr inbounds i8, i8* %52, i64 %54, !dbg !94
  store i8 124, i8* %55, align 1, !dbg !96
  %56 = load i8*, i8** %7, align 8, !dbg !97
  %57 = load i32, i32* %2, align 4, !dbg !98
  %58 = add nsw i32 %57, 1, !dbg !99
  %59 = sext i32 %58 to i64, !dbg !97
  %60 = getelementptr inbounds i8, i8* %56, i64 %59, !dbg !97
  %61 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !100
  %62 = load i32, i32* %3, align 4, !dbg !101
  %63 = sext i32 %62 to i64, !dbg !101
  %64 = call i8* @memcpy(i8* %60, i8* %61, i64 %63), !dbg !100
  %65 = load i8*, i8** %7, align 8, !dbg !102
  %66 = load i32, i32* %3, align 4, !dbg !103
  %67 = load i32, i32* %2, align 4, !dbg !104
  %68 = add nsw i32 %66, %67, !dbg !105
  %69 = add nsw i32 %68, 1, !dbg !106
  %70 = sext i32 %69 to i64, !dbg !102
  %71 = getelementptr inbounds i8, i8* %65, i64 %70, !dbg !102
  store i8 0, i8* %71, align 1, !dbg !107
  %72 = load i32, i32* %3, align 4, !dbg !108
  %73 = load i32, i32* %2, align 4, !dbg !108
  %74 = add nsw i32 %72, %73, !dbg !108
  %75 = add nsw i32 %74, 2, !dbg !108
  %76 = icmp sgt i32 %75, 0, !dbg !108
  br i1 %76, label %77, label %85, !dbg !108

77:                                               ; preds = %45
  %78 = load i32, i32* %3, align 4, !dbg !108
  %79 = load i32, i32* %2, align 4, !dbg !108
  %80 = add nsw i32 %78, %79, !dbg !108
  %81 = add nsw i32 %80, 1, !dbg !108
  %82 = icmp slt i32 %81, 256, !dbg !108
  br i1 %82, label %83, label %85, !dbg !108

83:                                               ; preds = %77
  br i1 true, label %84, label %85, !dbg !108

84:                                               ; preds = %83
  br label %87, !dbg !108

85:                                               ; preds = %83, %77, %45
  %86 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.6, i64 0, i64 0), i32 noundef 77, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !108
  br label %87, !dbg !108

87:                                               ; preds = %85, %84
  %88 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.6, i64 0, i64 0), i32 noundef 78, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !109
  %89 = load i8*, i8** %7, align 8, !dbg !110
  %90 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %6, align 8, !dbg !111
  %91 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %90, i32 0, i32 1, !dbg !112
  store i8* %89, i8** %91, align 8, !dbg !113
  %92 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %6, align 8, !dbg !114
  call void @xmlRegFreeAtom(%struct._xmlRegAtom* noundef %92), !dbg !115
  store i32 0, i32* %1, align 4, !dbg !116
  br label %93, !dbg !116

93:                                               ; preds = %87, %43, %33
  %94 = load i32, i32* %1, align 4, !dbg !117
  ret i32 %94, !dbg !117
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct._xmlRegAtom* @xmlRegNewAtom(i32 noundef %0, i32 noundef %1) #0 !dbg !118 {
  %3 = alloca %struct._xmlRegAtom*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct._xmlRegAtom*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !121, metadata !DIExpression()), !dbg !122
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !123, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.declare(metadata %struct._xmlRegAtom** %6, metadata !125, metadata !DIExpression()), !dbg !126
  %7 = call noalias i8* @malloc(i64 noundef 48) #7, !dbg !127
  %8 = bitcast i8* %7 to %struct._xmlRegAtom*, !dbg !128
  store %struct._xmlRegAtom* %8, %struct._xmlRegAtom** %6, align 8, !dbg !126
  %9 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %6, align 8, !dbg !129
  %10 = icmp eq %struct._xmlRegAtom* %9, null, !dbg !131
  br i1 %10, label %11, label %12, !dbg !132

11:                                               ; preds = %2
  store %struct._xmlRegAtom* null, %struct._xmlRegAtom** %3, align 8, !dbg !133
  br label %30, !dbg !133

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4, !dbg !134
  %14 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %6, align 8, !dbg !135
  %15 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %14, i32 0, i32 0, !dbg !136
  store i32 %13, i32* %15, align 8, !dbg !137
  %16 = load i32, i32* %5, align 4, !dbg !138
  %17 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %6, align 8, !dbg !139
  %18 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %17, i32 0, i32 3, !dbg !140
  store i32 %16, i32* %18, align 8, !dbg !141
  %19 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %6, align 8, !dbg !142
  %20 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %19, i32 0, i32 4, !dbg !143
  store i32 0, i32* %20, align 4, !dbg !144
  %21 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %6, align 8, !dbg !145
  %22 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %21, i32 0, i32 5, !dbg !146
  store i32 0, i32* %22, align 8, !dbg !147
  %23 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %6, align 8, !dbg !148
  %24 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %23, i32 0, i32 1, !dbg !149
  store i8* null, i8** %24, align 8, !dbg !150
  %25 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %6, align 8, !dbg !151
  %26 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %25, i32 0, i32 2, !dbg !152
  store i8* null, i8** %26, align 8, !dbg !153
  %27 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %6, align 8, !dbg !154
  %28 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %27, i32 0, i32 6, !dbg !155
  store i8* null, i8** %28, align 8, !dbg !156
  %29 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %6, align 8, !dbg !157
  store %struct._xmlRegAtom* %29, %struct._xmlRegAtom** %3, align 8, !dbg !158
  br label %30, !dbg !158

30:                                               ; preds = %12, %11
  %31 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %3, align 8, !dbg !159
  ret %struct._xmlRegAtom* %31, !dbg !159
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @xmlMallocAtomic(i64 noundef %0) #0 !dbg !160 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !166, metadata !DIExpression()), !dbg !167
  %3 = load i64, i64* %2, align 8, !dbg !168
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !169
  ret i8* %4, !dbg !170
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmlRegFreeAtom(%struct._xmlRegAtom* noundef %0) #0 !dbg !171 {
  %2 = alloca %struct._xmlRegAtom*, align 8
  store %struct._xmlRegAtom* %0, %struct._xmlRegAtom** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRegAtom** %2, metadata !174, metadata !DIExpression()), !dbg !175
  %3 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %2, align 8, !dbg !176
  %4 = icmp eq %struct._xmlRegAtom* %3, null, !dbg !178
  br i1 %4, label %5, label %6, !dbg !179

5:                                                ; preds = %1
  br label %15, !dbg !180

6:                                                ; preds = %1
  %7 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %2, align 8, !dbg !181
  %8 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %7, i32 0, i32 1, !dbg !182
  %9 = load i8*, i8** %8, align 8, !dbg !182
  call void @free(i8* noundef %9) #7, !dbg !183
  %10 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %2, align 8, !dbg !184
  %11 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %10, i32 0, i32 2, !dbg !185
  %12 = load i8*, i8** %11, align 8, !dbg !185
  call void @free(i8* noundef %12) #7, !dbg !186
  %13 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %2, align 8, !dbg !187
  %14 = bitcast %struct._xmlRegAtom* %13 to i8*, !dbg !187
  call void @free(i8* noundef %14) #7, !dbg !188
  br label %15, !dbg !189

15:                                               ; preds = %6, %5
  ret void, !dbg !189
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !190 {
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
  call void @llvm.dbg.declare(metadata i8** %7, metadata !202, metadata !DIExpression()), !dbg !205
  %9 = load i8*, i8** %4, align 8, !dbg !206
  store i8* %9, i8** %7, align 8, !dbg !205
  call void @llvm.dbg.declare(metadata i8** %8, metadata !207, metadata !DIExpression()), !dbg !210
  %10 = load i8*, i8** %5, align 8, !dbg !211
  store i8* %10, i8** %8, align 8, !dbg !210
  br label %11, !dbg !212

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !213
  %13 = add i64 %12, -1, !dbg !213
  store i64 %13, i64* %6, align 8, !dbg !213
  %14 = icmp ugt i64 %12, 0, !dbg !214
  br i1 %14, label %15, label %21, !dbg !212

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !215
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !215
  store i8* %17, i8** %8, align 8, !dbg !215
  %18 = load i8, i8* %16, align 1, !dbg !216
  %19 = load i8*, i8** %7, align 8, !dbg !217
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !217
  store i8* %20, i8** %7, align 8, !dbg !217
  store i8 %18, i8* %19, align 1, !dbg !218
  br label %11, !dbg !212, !llvm.loop !219

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !221
  ret i8* %22, !dbg !222
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28, !28}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/204_xmlregexp.c_5792_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "8496931221b8da67edd89cc4a158a22a")
!2 = !{!3, !4, !7}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !1, line: 10, baseType: !6)
!6 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegAtom", file: !1, line: 9, baseType: !9)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegAtom", file: !1, line: 12, size: 384, elements: !10)
!10 = !{!11, !13, !14, !15, !16, !17, !18}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !9, file: !1, line: 13, baseType: !12, size: 32)
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "valuep", scope: !9, file: !1, line: 14, baseType: !4, size: 64, offset: 64)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "valuep2", scope: !9, file: !1, line: 15, baseType: !4, size: 64, offset: 128)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "neg", scope: !9, file: !1, line: 16, baseType: !12, size: 32, offset: 192)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !9, file: !1, line: 17, baseType: !12, size: 32, offset: 224)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !9, file: !1, line: 18, baseType: !12, size: 32, offset: 256)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !9, file: !1, line: 19, baseType: !3, size: 64, offset: 320)
!19 = distinct !DICompileUnit(language: DW_LANG_C99, file: !20, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!20 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!21 = !{i32 7, !"Dwarf Version", i32 5}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 1, !"wchar_size", i32 4}
!24 = !{i32 7, !"PIC Level", i32 2}
!25 = !{i32 7, !"PIE Level", i32 2}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"Ubuntu clang version 14.0.6"}
!29 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 46, type: !30, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!30 = !DISubroutineType(types: !31)
!31 = !{!12}
!32 = !{}
!33 = !DILocalVariable(name: "lenp", scope: !29, file: !1, line: 47, type: !12)
!34 = !DILocation(line: 47, column: 9, scope: !29)
!35 = !DILocalVariable(name: "lenn", scope: !29, file: !1, line: 47, type: !12)
!36 = !DILocation(line: 47, column: 15, scope: !29)
!37 = !DILocalVariable(name: "token", scope: !29, file: !1, line: 48, type: !38)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 2048, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 256)
!41 = !DILocation(line: 48, column: 13, scope: !29)
!42 = !DILocalVariable(name: "token2", scope: !29, file: !1, line: 49, type: !38)
!43 = !DILocation(line: 49, column: 13, scope: !29)
!44 = !DILocalVariable(name: "atom", scope: !29, file: !1, line: 50, type: !7)
!45 = !DILocation(line: 50, column: 17, scope: !29)
!46 = !DILocalVariable(name: "str", scope: !29, file: !1, line: 51, type: !4)
!47 = !DILocation(line: 51, column: 14, scope: !29)
!48 = !DILocation(line: 53, column: 24, scope: !29)
!49 = !DILocation(line: 53, column: 5, scope: !29)
!50 = !DILocation(line: 54, column: 24, scope: !29)
!51 = !DILocation(line: 54, column: 5, scope: !29)
!52 = !DILocation(line: 55, column: 24, scope: !29)
!53 = !DILocation(line: 55, column: 5, scope: !29)
!54 = !DILocation(line: 56, column: 24, scope: !29)
!55 = !DILocation(line: 56, column: 5, scope: !29)
!56 = !DILocation(line: 58, column: 17, scope: !29)
!57 = !DILocation(line: 58, column: 22, scope: !29)
!58 = !DILocation(line: 58, column: 27, scope: !29)
!59 = !DILocation(line: 58, column: 30, scope: !29)
!60 = !DILocation(line: 58, column: 35, scope: !29)
!61 = !DILocation(line: 0, scope: !29)
!62 = !DILocation(line: 58, column: 5, scope: !29)
!63 = !DILocation(line: 59, column: 17, scope: !29)
!64 = !DILocation(line: 59, column: 22, scope: !29)
!65 = !DILocation(line: 59, column: 27, scope: !29)
!66 = !DILocation(line: 59, column: 30, scope: !29)
!67 = !DILocation(line: 59, column: 35, scope: !29)
!68 = !DILocation(line: 59, column: 5, scope: !29)
!69 = !DILocation(line: 61, column: 12, scope: !29)
!70 = !DILocation(line: 61, column: 10, scope: !29)
!71 = !DILocation(line: 62, column: 9, scope: !72)
!72 = distinct !DILexicalBlock(scope: !29, file: !1, line: 62, column: 9)
!73 = !DILocation(line: 62, column: 14, scope: !72)
!74 = !DILocation(line: 62, column: 9, scope: !29)
!75 = !DILocation(line: 63, column: 9, scope: !76)
!76 = distinct !DILexicalBlock(scope: !72, file: !1, line: 62, column: 23)
!77 = !DILocation(line: 66, column: 38, scope: !29)
!78 = !DILocation(line: 66, column: 45, scope: !29)
!79 = !DILocation(line: 66, column: 43, scope: !29)
!80 = !DILocation(line: 66, column: 50, scope: !29)
!81 = !DILocation(line: 66, column: 22, scope: !29)
!82 = !DILocation(line: 66, column: 9, scope: !29)
!83 = !DILocation(line: 67, column: 9, scope: !84)
!84 = distinct !DILexicalBlock(scope: !29, file: !1, line: 67, column: 9)
!85 = !DILocation(line: 67, column: 13, scope: !84)
!86 = !DILocation(line: 67, column: 9, scope: !29)
!87 = !DILocation(line: 68, column: 24, scope: !88)
!88 = distinct !DILexicalBlock(scope: !84, file: !1, line: 67, column: 22)
!89 = !DILocation(line: 68, column: 9, scope: !88)
!90 = !DILocation(line: 69, column: 9, scope: !88)
!91 = !DILocation(line: 72, column: 13, scope: !29)
!92 = !DILocation(line: 72, column: 5, scope: !29)
!93 = !DILocation(line: 72, column: 28, scope: !29)
!94 = !DILocation(line: 73, column: 5, scope: !29)
!95 = !DILocation(line: 73, column: 9, scope: !29)
!96 = !DILocation(line: 73, column: 15, scope: !29)
!97 = !DILocation(line: 74, column: 13, scope: !29)
!98 = !DILocation(line: 74, column: 17, scope: !29)
!99 = !DILocation(line: 74, column: 22, scope: !29)
!100 = !DILocation(line: 74, column: 5, scope: !29)
!101 = !DILocation(line: 74, column: 36, scope: !29)
!102 = !DILocation(line: 75, column: 5, scope: !29)
!103 = !DILocation(line: 75, column: 9, scope: !29)
!104 = !DILocation(line: 75, column: 16, scope: !29)
!105 = !DILocation(line: 75, column: 14, scope: !29)
!106 = !DILocation(line: 75, column: 21, scope: !29)
!107 = !DILocation(line: 75, column: 26, scope: !29)
!108 = !DILocation(line: 77, column: 5, scope: !29)
!109 = !DILocation(line: 78, column: 5, scope: !29)
!110 = !DILocation(line: 80, column: 20, scope: !29)
!111 = !DILocation(line: 80, column: 5, scope: !29)
!112 = !DILocation(line: 80, column: 11, scope: !29)
!113 = !DILocation(line: 80, column: 18, scope: !29)
!114 = !DILocation(line: 81, column: 20, scope: !29)
!115 = !DILocation(line: 81, column: 5, scope: !29)
!116 = !DILocation(line: 82, column: 5, scope: !29)
!117 = !DILocation(line: 83, column: 1, scope: !29)
!118 = distinct !DISubprogram(name: "xmlRegNewAtom", scope: !1, file: !1, line: 33, type: !119, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !32)
!119 = !DISubroutineType(types: !120)
!120 = !{!7, !12, !12}
!121 = !DILocalVariable(name: "type", arg: 1, scope: !118, file: !1, line: 33, type: !12)
!122 = !DILocation(line: 33, column: 38, scope: !118)
!123 = !DILocalVariable(name: "neg", arg: 2, scope: !118, file: !1, line: 33, type: !12)
!124 = !DILocation(line: 33, column: 48, scope: !118)
!125 = !DILocalVariable(name: "atom", scope: !118, file: !1, line: 34, type: !7)
!126 = !DILocation(line: 34, column: 17, scope: !118)
!127 = !DILocation(line: 34, column: 38, scope: !118)
!128 = !DILocation(line: 34, column: 24, scope: !118)
!129 = !DILocation(line: 35, column: 9, scope: !130)
!130 = distinct !DILexicalBlock(scope: !118, file: !1, line: 35, column: 9)
!131 = !DILocation(line: 35, column: 14, scope: !130)
!132 = !DILocation(line: 35, column: 9, scope: !118)
!133 = !DILocation(line: 35, column: 23, scope: !130)
!134 = !DILocation(line: 36, column: 18, scope: !118)
!135 = !DILocation(line: 36, column: 5, scope: !118)
!136 = !DILocation(line: 36, column: 11, scope: !118)
!137 = !DILocation(line: 36, column: 16, scope: !118)
!138 = !DILocation(line: 37, column: 17, scope: !118)
!139 = !DILocation(line: 37, column: 5, scope: !118)
!140 = !DILocation(line: 37, column: 11, scope: !118)
!141 = !DILocation(line: 37, column: 15, scope: !118)
!142 = !DILocation(line: 38, column: 5, scope: !118)
!143 = !DILocation(line: 38, column: 11, scope: !118)
!144 = !DILocation(line: 38, column: 15, scope: !118)
!145 = !DILocation(line: 39, column: 5, scope: !118)
!146 = !DILocation(line: 39, column: 11, scope: !118)
!147 = !DILocation(line: 39, column: 15, scope: !118)
!148 = !DILocation(line: 40, column: 5, scope: !118)
!149 = !DILocation(line: 40, column: 11, scope: !118)
!150 = !DILocation(line: 40, column: 18, scope: !118)
!151 = !DILocation(line: 41, column: 5, scope: !118)
!152 = !DILocation(line: 41, column: 11, scope: !118)
!153 = !DILocation(line: 41, column: 19, scope: !118)
!154 = !DILocation(line: 42, column: 5, scope: !118)
!155 = !DILocation(line: 42, column: 11, scope: !118)
!156 = !DILocation(line: 42, column: 16, scope: !118)
!157 = !DILocation(line: 43, column: 12, scope: !118)
!158 = !DILocation(line: 43, column: 5, scope: !118)
!159 = !DILocation(line: 44, column: 1, scope: !118)
!160 = distinct !DISubprogram(name: "xmlMallocAtomic", scope: !1, file: !1, line: 22, type: !161, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !32)
!161 = !DISubroutineType(types: !162)
!162 = !{!3, !163}
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !164, line: 46, baseType: !165)
!164 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!165 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!166 = !DILocalVariable(name: "size", arg: 1, scope: !160, file: !1, line: 22, type: !163)
!167 = !DILocation(line: 22, column: 37, scope: !160)
!168 = !DILocation(line: 23, column: 19, scope: !160)
!169 = !DILocation(line: 23, column: 12, scope: !160)
!170 = !DILocation(line: 23, column: 5, scope: !160)
!171 = distinct !DISubprogram(name: "xmlRegFreeAtom", scope: !1, file: !1, line: 26, type: !172, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !32)
!172 = !DISubroutineType(types: !173)
!173 = !{null, !7}
!174 = !DILocalVariable(name: "atom", arg: 1, scope: !171, file: !1, line: 26, type: !7)
!175 = !DILocation(line: 26, column: 40, scope: !171)
!176 = !DILocation(line: 27, column: 9, scope: !177)
!177 = distinct !DILexicalBlock(scope: !171, file: !1, line: 27, column: 9)
!178 = !DILocation(line: 27, column: 14, scope: !177)
!179 = !DILocation(line: 27, column: 9, scope: !171)
!180 = !DILocation(line: 27, column: 23, scope: !177)
!181 = !DILocation(line: 28, column: 10, scope: !171)
!182 = !DILocation(line: 28, column: 16, scope: !171)
!183 = !DILocation(line: 28, column: 5, scope: !171)
!184 = !DILocation(line: 29, column: 10, scope: !171)
!185 = !DILocation(line: 29, column: 16, scope: !171)
!186 = !DILocation(line: 29, column: 5, scope: !171)
!187 = !DILocation(line: 30, column: 10, scope: !171)
!188 = !DILocation(line: 30, column: 5, scope: !171)
!189 = !DILocation(line: 31, column: 1, scope: !171)
!190 = distinct !DISubprogram(name: "memcpy", scope: !191, file: !191, line: 12, type: !192, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !32)
!191 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!192 = !DISubroutineType(types: !193)
!193 = !{!3, !3, !194, !163}
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!196 = !DILocalVariable(name: "destaddr", arg: 1, scope: !190, file: !191, line: 12, type: !3)
!197 = !DILocation(line: 12, column: 20, scope: !190)
!198 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !190, file: !191, line: 12, type: !194)
!199 = !DILocation(line: 12, column: 42, scope: !190)
!200 = !DILocalVariable(name: "len", arg: 3, scope: !190, file: !191, line: 12, type: !163)
!201 = !DILocation(line: 12, column: 58, scope: !190)
!202 = !DILocalVariable(name: "dest", scope: !190, file: !191, line: 13, type: !203)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!205 = !DILocation(line: 13, column: 9, scope: !190)
!206 = !DILocation(line: 13, column: 16, scope: !190)
!207 = !DILocalVariable(name: "src", scope: !190, file: !191, line: 14, type: !208)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!210 = !DILocation(line: 14, column: 15, scope: !190)
!211 = !DILocation(line: 14, column: 21, scope: !190)
!212 = !DILocation(line: 16, column: 3, scope: !190)
!213 = !DILocation(line: 16, column: 13, scope: !190)
!214 = !DILocation(line: 16, column: 16, scope: !190)
!215 = !DILocation(line: 17, column: 19, scope: !190)
!216 = !DILocation(line: 17, column: 15, scope: !190)
!217 = !DILocation(line: 17, column: 10, scope: !190)
!218 = !DILocation(line: 17, column: 13, scope: !190)
!219 = distinct !{!219, !212, !215, !220}
!220 = !{!"llvm.loop.mustprogress"}
!221 = !DILocation(line: 18, column: 10, scope: !190)
!222 = !DILocation(line: 18, column: 3, scope: !190)

; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/040_c14n.c_304_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/040_c14n.c_304_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.xmlC14NVisibleNsStack = type { %struct._xmlNs**, %struct._xmlNode**, i32 }
%struct._xmlNs = type opaque
%struct._xmlNode = type opaque

@.str = private unnamed_addr constant [6 x i8] c"stack\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"nsTab_size\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"nodeTab_size\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"nsMax\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"(stack->nsMax <= nodeTab_size) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_55980_vul/040_c14n.c_304_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !32 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !36, metadata !DIExpression()), !dbg !37
  %3 = load i8*, i8** %2, align 8, !dbg !38
  call void @free(i8* noundef %3) #7, !dbg !39
  ret void, !dbg !40
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !41 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.xmlC14NVisibleNsStack*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.xmlC14NVisibleNsStack** %2, metadata !44, metadata !DIExpression()), !dbg !45
  %5 = call noalias i8* @malloc(i64 noundef 24) #7, !dbg !46
  %6 = bitcast i8* %5 to %struct.xmlC14NVisibleNsStack*, !dbg !47
  store %struct.xmlC14NVisibleNsStack* %6, %struct.xmlC14NVisibleNsStack** %2, align 8, !dbg !45
  %7 = load %struct.xmlC14NVisibleNsStack*, %struct.xmlC14NVisibleNsStack** %2, align 8, !dbg !48
  %8 = bitcast %struct.xmlC14NVisibleNsStack* %7 to i8*, !dbg !48
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 24, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)), !dbg !49
  call void @llvm.dbg.declare(metadata i32* %3, metadata !50, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.declare(metadata i32* %4, metadata !52, metadata !DIExpression()), !dbg !53
  %9 = bitcast i32* %3 to i8*, !dbg !54
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)), !dbg !55
  %10 = bitcast i32* %4 to i8*, !dbg !56
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0)), !dbg !57
  %11 = load i32, i32* %3, align 4, !dbg !58
  %12 = icmp sge i32 %11, 0, !dbg !59
  br i1 %12, label %13, label %16, !dbg !60

13:                                               ; preds = %0
  %14 = load i32, i32* %3, align 4, !dbg !61
  %15 = icmp sle i32 %14, 1024, !dbg !62
  br label %16

16:                                               ; preds = %13, %0
  %17 = phi i1 [ false, %0 ], [ %15, %13 ], !dbg !63
  %18 = zext i1 %17 to i32, !dbg !60
  %19 = sext i32 %18 to i64, !dbg !58
  call void @klee_assume(i64 noundef %19), !dbg !64
  %20 = load i32, i32* %4, align 4, !dbg !65
  %21 = icmp sge i32 %20, 0, !dbg !66
  br i1 %21, label %22, label %25, !dbg !67

22:                                               ; preds = %16
  %23 = load i32, i32* %4, align 4, !dbg !68
  %24 = icmp sle i32 %23, 1024, !dbg !69
  br label %25

25:                                               ; preds = %22, %16
  %26 = phi i1 [ false, %16 ], [ %24, %22 ], !dbg !63
  %27 = zext i1 %26 to i32, !dbg !67
  %28 = sext i32 %27 to i64, !dbg !65
  call void @klee_assume(i64 noundef %28), !dbg !70
  %29 = load i32, i32* %3, align 4, !dbg !71
  %30 = icmp sgt i32 %29, 0, !dbg !73
  br i1 %30, label %31, label %39, !dbg !74

31:                                               ; preds = %25
  %32 = load i32, i32* %3, align 4, !dbg !75
  %33 = sext i32 %32 to i64, !dbg !75
  %34 = mul i64 %33, 8, !dbg !77
  %35 = call noalias i8* @malloc(i64 noundef %34) #7, !dbg !78
  %36 = bitcast i8* %35 to %struct._xmlNs**, !dbg !79
  %37 = load %struct.xmlC14NVisibleNsStack*, %struct.xmlC14NVisibleNsStack** %2, align 8, !dbg !80
  %38 = getelementptr inbounds %struct.xmlC14NVisibleNsStack, %struct.xmlC14NVisibleNsStack* %37, i32 0, i32 0, !dbg !81
  store %struct._xmlNs** %36, %struct._xmlNs*** %38, align 8, !dbg !82
  br label %42, !dbg !83

39:                                               ; preds = %25
  %40 = load %struct.xmlC14NVisibleNsStack*, %struct.xmlC14NVisibleNsStack** %2, align 8, !dbg !84
  %41 = getelementptr inbounds %struct.xmlC14NVisibleNsStack, %struct.xmlC14NVisibleNsStack* %40, i32 0, i32 0, !dbg !86
  store %struct._xmlNs** null, %struct._xmlNs*** %41, align 8, !dbg !87
  br label %42

42:                                               ; preds = %39, %31
  %43 = load i32, i32* %4, align 4, !dbg !88
  %44 = icmp sgt i32 %43, 0, !dbg !90
  br i1 %44, label %45, label %53, !dbg !91

45:                                               ; preds = %42
  %46 = load i32, i32* %4, align 4, !dbg !92
  %47 = sext i32 %46 to i64, !dbg !92
  %48 = mul i64 %47, 8, !dbg !94
  %49 = call noalias i8* @malloc(i64 noundef %48) #7, !dbg !95
  %50 = bitcast i8* %49 to %struct._xmlNode**, !dbg !96
  %51 = load %struct.xmlC14NVisibleNsStack*, %struct.xmlC14NVisibleNsStack** %2, align 8, !dbg !97
  %52 = getelementptr inbounds %struct.xmlC14NVisibleNsStack, %struct.xmlC14NVisibleNsStack* %51, i32 0, i32 1, !dbg !98
  store %struct._xmlNode** %50, %struct._xmlNode*** %52, align 8, !dbg !99
  br label %56, !dbg !100

53:                                               ; preds = %42
  %54 = load %struct.xmlC14NVisibleNsStack*, %struct.xmlC14NVisibleNsStack** %2, align 8, !dbg !101
  %55 = getelementptr inbounds %struct.xmlC14NVisibleNsStack, %struct.xmlC14NVisibleNsStack* %54, i32 0, i32 1, !dbg !103
  store %struct._xmlNode** null, %struct._xmlNode*** %55, align 8, !dbg !104
  br label %56

56:                                               ; preds = %53, %45
  %57 = load %struct.xmlC14NVisibleNsStack*, %struct.xmlC14NVisibleNsStack** %2, align 8, !dbg !105
  %58 = getelementptr inbounds %struct.xmlC14NVisibleNsStack, %struct.xmlC14NVisibleNsStack* %57, i32 0, i32 2, !dbg !106
  %59 = bitcast i32* %58 to i8*, !dbg !107
  call void @klee_make_symbolic(i8* noundef %59, i64 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)), !dbg !108
  %60 = load %struct.xmlC14NVisibleNsStack*, %struct.xmlC14NVisibleNsStack** %2, align 8, !dbg !109
  %61 = getelementptr inbounds %struct.xmlC14NVisibleNsStack, %struct.xmlC14NVisibleNsStack* %60, i32 0, i32 2, !dbg !110
  %62 = load i32, i32* %61, align 8, !dbg !110
  %63 = icmp sge i32 %62, 0, !dbg !111
  br i1 %63, label %64, label %69, !dbg !112

64:                                               ; preds = %56
  %65 = load %struct.xmlC14NVisibleNsStack*, %struct.xmlC14NVisibleNsStack** %2, align 8, !dbg !113
  %66 = getelementptr inbounds %struct.xmlC14NVisibleNsStack, %struct.xmlC14NVisibleNsStack* %65, i32 0, i32 2, !dbg !114
  %67 = load i32, i32* %66, align 8, !dbg !114
  %68 = icmp sle i32 %67, 2048, !dbg !115
  br label %69

69:                                               ; preds = %64, %56
  %70 = phi i1 [ false, %56 ], [ %68, %64 ], !dbg !63
  %71 = zext i1 %70 to i32, !dbg !112
  %72 = sext i32 %71 to i64, !dbg !109
  call void @klee_assume(i64 noundef %72), !dbg !116
  %73 = load %struct.xmlC14NVisibleNsStack*, %struct.xmlC14NVisibleNsStack** %2, align 8, !dbg !117
  %74 = getelementptr inbounds %struct.xmlC14NVisibleNsStack, %struct.xmlC14NVisibleNsStack* %73, i32 0, i32 1, !dbg !118
  %75 = load %struct._xmlNode**, %struct._xmlNode*** %74, align 8, !dbg !118
  %76 = icmp ne %struct._xmlNode** %75, null, !dbg !119
  %77 = zext i1 %76 to i32, !dbg !119
  %78 = sext i32 %77 to i64, !dbg !117
  call void @klee_assume(i64 noundef %78), !dbg !120
  %79 = load %struct.xmlC14NVisibleNsStack*, %struct.xmlC14NVisibleNsStack** %2, align 8, !dbg !121
  %80 = getelementptr inbounds %struct.xmlC14NVisibleNsStack, %struct.xmlC14NVisibleNsStack* %79, i32 0, i32 2, !dbg !121
  %81 = load i32, i32* %80, align 8, !dbg !121
  %82 = load i32, i32* %4, align 4, !dbg !121
  %83 = icmp sle i32 %81, %82, !dbg !121
  br i1 %83, label %84, label %86, !dbg !121

84:                                               ; preds = %69
  br i1 true, label %85, label %86, !dbg !121

85:                                               ; preds = %84
  br label %88, !dbg !121

86:                                               ; preds = %84, %69
  %87 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.6, i64 0, i64 0), i32 noundef 88, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !121
  br label %88, !dbg !121

88:                                               ; preds = %86, %85
  %89 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.6, i64 0, i64 0), i32 noundef 91, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !122
  %90 = load %struct.xmlC14NVisibleNsStack*, %struct.xmlC14NVisibleNsStack** %2, align 8, !dbg !123
  call void @xmlC14NVisibleNsStackDestroy(%struct.xmlC14NVisibleNsStack* noundef %90), !dbg !124
  ret i32 0, !dbg !125
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmlC14NVisibleNsStackDestroy(%struct.xmlC14NVisibleNsStack* noundef %0) #0 !dbg !126 {
  %2 = alloca %struct.xmlC14NVisibleNsStack*, align 8
  store %struct.xmlC14NVisibleNsStack* %0, %struct.xmlC14NVisibleNsStack** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.xmlC14NVisibleNsStack** %2, metadata !129, metadata !DIExpression()), !dbg !130
  %3 = load %struct.xmlC14NVisibleNsStack*, %struct.xmlC14NVisibleNsStack** %2, align 8, !dbg !131
  %4 = icmp eq %struct.xmlC14NVisibleNsStack* %3, null, !dbg !133
  br i1 %4, label %5, label %6, !dbg !134

5:                                                ; preds = %1
  br label %52, !dbg !135

6:                                                ; preds = %1
  %7 = load %struct.xmlC14NVisibleNsStack*, %struct.xmlC14NVisibleNsStack** %2, align 8, !dbg !137
  %8 = getelementptr inbounds %struct.xmlC14NVisibleNsStack, %struct.xmlC14NVisibleNsStack* %7, i32 0, i32 0, !dbg !139
  %9 = load %struct._xmlNs**, %struct._xmlNs*** %8, align 8, !dbg !139
  %10 = icmp ne %struct._xmlNs** %9, null, !dbg !140
  br i1 %10, label %11, label %26, !dbg !141

11:                                               ; preds = %6
  %12 = load %struct.xmlC14NVisibleNsStack*, %struct.xmlC14NVisibleNsStack** %2, align 8, !dbg !142
  %13 = getelementptr inbounds %struct.xmlC14NVisibleNsStack, %struct.xmlC14NVisibleNsStack* %12, i32 0, i32 0, !dbg !144
  %14 = load %struct._xmlNs**, %struct._xmlNs*** %13, align 8, !dbg !144
  %15 = bitcast %struct._xmlNs** %14 to i8*, !dbg !145
  %16 = load %struct.xmlC14NVisibleNsStack*, %struct.xmlC14NVisibleNsStack** %2, align 8, !dbg !146
  %17 = getelementptr inbounds %struct.xmlC14NVisibleNsStack, %struct.xmlC14NVisibleNsStack* %16, i32 0, i32 2, !dbg !147
  %18 = load i32, i32* %17, align 8, !dbg !147
  %19 = sext i32 %18 to i64, !dbg !146
  %20 = mul i64 %19, 8, !dbg !148
  %21 = call i8* @memset(i8* %15, i32 0, i64 %20), !dbg !145
  %22 = load %struct.xmlC14NVisibleNsStack*, %struct.xmlC14NVisibleNsStack** %2, align 8, !dbg !149
  %23 = getelementptr inbounds %struct.xmlC14NVisibleNsStack, %struct.xmlC14NVisibleNsStack* %22, i32 0, i32 0, !dbg !150
  %24 = load %struct._xmlNs**, %struct._xmlNs*** %23, align 8, !dbg !150
  %25 = bitcast %struct._xmlNs** %24 to i8*, !dbg !149
  call void @xmlFree(i8* noundef %25), !dbg !151
  br label %26, !dbg !152

26:                                               ; preds = %11, %6
  %27 = load %struct.xmlC14NVisibleNsStack*, %struct.xmlC14NVisibleNsStack** %2, align 8, !dbg !153
  %28 = getelementptr inbounds %struct.xmlC14NVisibleNsStack, %struct.xmlC14NVisibleNsStack* %27, i32 0, i32 1, !dbg !155
  %29 = load %struct._xmlNode**, %struct._xmlNode*** %28, align 8, !dbg !155
  %30 = icmp ne %struct._xmlNode** %29, null, !dbg !156
  br i1 %30, label %31, label %46, !dbg !157

31:                                               ; preds = %26
  %32 = load %struct.xmlC14NVisibleNsStack*, %struct.xmlC14NVisibleNsStack** %2, align 8, !dbg !158
  %33 = getelementptr inbounds %struct.xmlC14NVisibleNsStack, %struct.xmlC14NVisibleNsStack* %32, i32 0, i32 1, !dbg !160
  %34 = load %struct._xmlNode**, %struct._xmlNode*** %33, align 8, !dbg !160
  %35 = bitcast %struct._xmlNode** %34 to i8*, !dbg !161
  %36 = load %struct.xmlC14NVisibleNsStack*, %struct.xmlC14NVisibleNsStack** %2, align 8, !dbg !162
  %37 = getelementptr inbounds %struct.xmlC14NVisibleNsStack, %struct.xmlC14NVisibleNsStack* %36, i32 0, i32 2, !dbg !163
  %38 = load i32, i32* %37, align 8, !dbg !163
  %39 = sext i32 %38 to i64, !dbg !162
  %40 = mul i64 %39, 8, !dbg !164
  %41 = call i8* @memset(i8* %35, i32 0, i64 %40), !dbg !161
  %42 = load %struct.xmlC14NVisibleNsStack*, %struct.xmlC14NVisibleNsStack** %2, align 8, !dbg !165
  %43 = getelementptr inbounds %struct.xmlC14NVisibleNsStack, %struct.xmlC14NVisibleNsStack* %42, i32 0, i32 1, !dbg !166
  %44 = load %struct._xmlNode**, %struct._xmlNode*** %43, align 8, !dbg !166
  %45 = bitcast %struct._xmlNode** %44 to i8*, !dbg !165
  call void @xmlFree(i8* noundef %45), !dbg !167
  br label %46, !dbg !168

46:                                               ; preds = %31, %26
  %47 = load %struct.xmlC14NVisibleNsStack*, %struct.xmlC14NVisibleNsStack** %2, align 8, !dbg !169
  %48 = bitcast %struct.xmlC14NVisibleNsStack* %47 to i8*, !dbg !170
  %49 = call i8* @memset(i8* %48, i32 0, i64 24), !dbg !170
  %50 = load %struct.xmlC14NVisibleNsStack*, %struct.xmlC14NVisibleNsStack** %2, align 8, !dbg !171
  %51 = bitcast %struct.xmlC14NVisibleNsStack* %50 to i8*, !dbg !171
  call void @xmlFree(i8* noundef %51), !dbg !172
  br label %52, !dbg !173

52:                                               ; preds = %46, %5
  ret void, !dbg !173
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !174 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !181, metadata !DIExpression()), !dbg !182
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !183, metadata !DIExpression()), !dbg !184
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !185, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.declare(metadata i8** %7, metadata !187, metadata !DIExpression()), !dbg !190
  %8 = load i8*, i8** %4, align 8, !dbg !191
  store i8* %8, i8** %7, align 8, !dbg !190
  br label %9, !dbg !192

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !193
  %11 = add i64 %10, -1, !dbg !193
  store i64 %11, i64* %6, align 8, !dbg !193
  %12 = icmp ugt i64 %10, 0, !dbg !194
  br i1 %12, label %13, label %18, !dbg !192

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !195
  %15 = trunc i32 %14 to i8, !dbg !195
  %16 = load i8*, i8** %7, align 8, !dbg !196
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !196
  store i8* %17, i8** %7, align 8, !dbg !196
  store i8 %15, i8* %16, align 1, !dbg !197
  br label %9, !dbg !192, !llvm.loop !198

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !200
  ret i8* %19, !dbg !201
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31, !31}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/040_c14n.c_304_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "22d4b64aa7f4d4c845d00b0f947caf8b")
!2 = !{!3, !8, !14, !21}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlC14NVisibleNsStack", file: !1, line: 20, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 16, size: 192, elements: !6)
!6 = !{!7, !13, !19}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "nsTab", scope: !5, file: !1, line: 17, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsPtr", file: !1, line: 11, baseType: !10)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !1, line: 10, baseType: !12)
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !1, line: 10, flags: DIFlagFwdDecl)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !5, file: !1, line: 18, baseType: !14, size: 64, offset: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !1, line: 13, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 12, baseType: !18)
!18 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 12, flags: DIFlagFwdDecl)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "nsMax", scope: !5, file: !1, line: 19, baseType: !20, size: 32, offset: 128)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!22 = distinct !DICompileUnit(language: DW_LANG_C99, file: !23, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!23 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!24 = !{i32 7, !"Dwarf Version", i32 5}
!25 = !{i32 2, !"Debug Info Version", i32 3}
!26 = !{i32 1, !"wchar_size", i32 4}
!27 = !{i32 7, !"PIC Level", i32 2}
!28 = !{i32 7, !"PIE Level", i32 2}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"Ubuntu clang version 14.0.6"}
!32 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 23, type: !33, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!33 = !DISubroutineType(types: !34)
!34 = !{null, !21}
!35 = !{}
!36 = !DILocalVariable(name: "ptr", arg: 1, scope: !32, file: !1, line: 23, type: !21)
!37 = !DILocation(line: 23, column: 20, scope: !32)
!38 = !DILocation(line: 24, column: 10, scope: !32)
!39 = !DILocation(line: 24, column: 5, scope: !32)
!40 = !DILocation(line: 25, column: 1, scope: !32)
!41 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 46, type: !42, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!42 = !DISubroutineType(types: !43)
!43 = !{!20}
!44 = !DILocalVariable(name: "stack", scope: !41, file: !1, line: 48, type: !3)
!45 = !DILocation(line: 48, column: 28, scope: !41)
!46 = !DILocation(line: 48, column: 60, scope: !41)
!47 = !DILocation(line: 48, column: 36, scope: !41)
!48 = !DILocation(line: 51, column: 24, scope: !41)
!49 = !DILocation(line: 51, column: 5, scope: !41)
!50 = !DILocalVariable(name: "nsTab_size", scope: !41, file: !1, line: 54, type: !20)
!51 = !DILocation(line: 54, column: 9, scope: !41)
!52 = !DILocalVariable(name: "nodeTab_size", scope: !41, file: !1, line: 54, type: !20)
!53 = !DILocation(line: 54, column: 21, scope: !41)
!54 = !DILocation(line: 55, column: 24, scope: !41)
!55 = !DILocation(line: 55, column: 5, scope: !41)
!56 = !DILocation(line: 56, column: 24, scope: !41)
!57 = !DILocation(line: 56, column: 5, scope: !41)
!58 = !DILocation(line: 59, column: 17, scope: !41)
!59 = !DILocation(line: 59, column: 28, scope: !41)
!60 = !DILocation(line: 59, column: 33, scope: !41)
!61 = !DILocation(line: 59, column: 36, scope: !41)
!62 = !DILocation(line: 59, column: 47, scope: !41)
!63 = !DILocation(line: 0, scope: !41)
!64 = !DILocation(line: 59, column: 5, scope: !41)
!65 = !DILocation(line: 60, column: 17, scope: !41)
!66 = !DILocation(line: 60, column: 30, scope: !41)
!67 = !DILocation(line: 60, column: 35, scope: !41)
!68 = !DILocation(line: 60, column: 38, scope: !41)
!69 = !DILocation(line: 60, column: 51, scope: !41)
!70 = !DILocation(line: 60, column: 5, scope: !41)
!71 = !DILocation(line: 63, column: 9, scope: !72)
!72 = distinct !DILexicalBlock(scope: !41, file: !1, line: 63, column: 9)
!73 = !DILocation(line: 63, column: 20, scope: !72)
!74 = !DILocation(line: 63, column: 9, scope: !41)
!75 = !DILocation(line: 64, column: 42, scope: !76)
!76 = distinct !DILexicalBlock(scope: !72, file: !1, line: 63, column: 25)
!77 = !DILocation(line: 64, column: 53, scope: !76)
!78 = !DILocation(line: 64, column: 35, scope: !76)
!79 = !DILocation(line: 64, column: 24, scope: !76)
!80 = !DILocation(line: 64, column: 9, scope: !76)
!81 = !DILocation(line: 64, column: 16, scope: !76)
!82 = !DILocation(line: 64, column: 22, scope: !76)
!83 = !DILocation(line: 65, column: 5, scope: !76)
!84 = !DILocation(line: 66, column: 9, scope: !85)
!85 = distinct !DILexicalBlock(scope: !72, file: !1, line: 65, column: 12)
!86 = !DILocation(line: 66, column: 16, scope: !85)
!87 = !DILocation(line: 66, column: 22, scope: !85)
!88 = !DILocation(line: 69, column: 9, scope: !89)
!89 = distinct !DILexicalBlock(scope: !41, file: !1, line: 69, column: 9)
!90 = !DILocation(line: 69, column: 22, scope: !89)
!91 = !DILocation(line: 69, column: 9, scope: !41)
!92 = !DILocation(line: 70, column: 46, scope: !93)
!93 = distinct !DILexicalBlock(scope: !89, file: !1, line: 69, column: 27)
!94 = !DILocation(line: 70, column: 59, scope: !93)
!95 = !DILocation(line: 70, column: 39, scope: !93)
!96 = !DILocation(line: 70, column: 26, scope: !93)
!97 = !DILocation(line: 70, column: 9, scope: !93)
!98 = !DILocation(line: 70, column: 16, scope: !93)
!99 = !DILocation(line: 70, column: 24, scope: !93)
!100 = !DILocation(line: 71, column: 5, scope: !93)
!101 = !DILocation(line: 72, column: 9, scope: !102)
!102 = distinct !DILexicalBlock(scope: !89, file: !1, line: 71, column: 12)
!103 = !DILocation(line: 72, column: 16, scope: !102)
!104 = !DILocation(line: 72, column: 24, scope: !102)
!105 = !DILocation(line: 76, column: 25, scope: !41)
!106 = !DILocation(line: 76, column: 32, scope: !41)
!107 = !DILocation(line: 76, column: 24, scope: !41)
!108 = !DILocation(line: 76, column: 5, scope: !41)
!109 = !DILocation(line: 79, column: 17, scope: !41)
!110 = !DILocation(line: 79, column: 24, scope: !41)
!111 = !DILocation(line: 79, column: 30, scope: !41)
!112 = !DILocation(line: 79, column: 35, scope: !41)
!113 = !DILocation(line: 79, column: 38, scope: !41)
!114 = !DILocation(line: 79, column: 45, scope: !41)
!115 = !DILocation(line: 79, column: 51, scope: !41)
!116 = !DILocation(line: 79, column: 5, scope: !41)
!117 = !DILocation(line: 82, column: 17, scope: !41)
!118 = !DILocation(line: 82, column: 24, scope: !41)
!119 = !DILocation(line: 82, column: 32, scope: !41)
!120 = !DILocation(line: 82, column: 5, scope: !41)
!121 = !DILocation(line: 88, column: 5, scope: !41)
!122 = !DILocation(line: 91, column: 5, scope: !41)
!123 = !DILocation(line: 94, column: 34, scope: !41)
!124 = !DILocation(line: 94, column: 5, scope: !41)
!125 = !DILocation(line: 96, column: 5, scope: !41)
!126 = distinct !DISubprogram(name: "xmlC14NVisibleNsStackDestroy", scope: !1, file: !1, line: 28, type: !127, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !35)
!127 = !DISubroutineType(types: !128)
!128 = !{null, !3}
!129 = !DILocalVariable(name: "cur", arg: 1, scope: !126, file: !1, line: 28, type: !3)
!130 = !DILocation(line: 28, column: 65, scope: !126)
!131 = !DILocation(line: 29, column: 9, scope: !132)
!132 = distinct !DILexicalBlock(scope: !126, file: !1, line: 29, column: 9)
!133 = !DILocation(line: 29, column: 13, scope: !132)
!134 = !DILocation(line: 29, column: 9, scope: !126)
!135 = !DILocation(line: 30, column: 9, scope: !136)
!136 = distinct !DILexicalBlock(scope: !132, file: !1, line: 29, column: 22)
!137 = !DILocation(line: 32, column: 9, scope: !138)
!138 = distinct !DILexicalBlock(scope: !126, file: !1, line: 32, column: 9)
!139 = !DILocation(line: 32, column: 14, scope: !138)
!140 = !DILocation(line: 32, column: 20, scope: !138)
!141 = !DILocation(line: 32, column: 9, scope: !126)
!142 = !DILocation(line: 33, column: 16, scope: !143)
!143 = distinct !DILexicalBlock(scope: !138, file: !1, line: 32, column: 29)
!144 = !DILocation(line: 33, column: 21, scope: !143)
!145 = !DILocation(line: 33, column: 9, scope: !143)
!146 = !DILocation(line: 33, column: 31, scope: !143)
!147 = !DILocation(line: 33, column: 36, scope: !143)
!148 = !DILocation(line: 33, column: 42, scope: !143)
!149 = !DILocation(line: 34, column: 17, scope: !143)
!150 = !DILocation(line: 34, column: 22, scope: !143)
!151 = !DILocation(line: 34, column: 9, scope: !143)
!152 = !DILocation(line: 35, column: 5, scope: !143)
!153 = !DILocation(line: 36, column: 9, scope: !154)
!154 = distinct !DILexicalBlock(scope: !126, file: !1, line: 36, column: 9)
!155 = !DILocation(line: 36, column: 14, scope: !154)
!156 = !DILocation(line: 36, column: 22, scope: !154)
!157 = !DILocation(line: 36, column: 9, scope: !126)
!158 = !DILocation(line: 38, column: 16, scope: !159)
!159 = distinct !DILexicalBlock(scope: !154, file: !1, line: 36, column: 31)
!160 = !DILocation(line: 38, column: 21, scope: !159)
!161 = !DILocation(line: 38, column: 9, scope: !159)
!162 = !DILocation(line: 38, column: 33, scope: !159)
!163 = !DILocation(line: 38, column: 38, scope: !159)
!164 = !DILocation(line: 38, column: 44, scope: !159)
!165 = !DILocation(line: 39, column: 17, scope: !159)
!166 = !DILocation(line: 39, column: 22, scope: !159)
!167 = !DILocation(line: 39, column: 9, scope: !159)
!168 = !DILocation(line: 40, column: 5, scope: !159)
!169 = !DILocation(line: 41, column: 12, scope: !126)
!170 = !DILocation(line: 41, column: 5, scope: !126)
!171 = !DILocation(line: 42, column: 13, scope: !126)
!172 = !DILocation(line: 42, column: 5, scope: !126)
!173 = !DILocation(line: 43, column: 1, scope: !126)
!174 = distinct !DISubprogram(name: "memset", scope: !175, file: !175, line: 12, type: !176, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !35)
!175 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!176 = !DISubroutineType(types: !177)
!177 = !{!21, !21, !20, !178}
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !179, line: 46, baseType: !180)
!179 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!180 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!181 = !DILocalVariable(name: "dst", arg: 1, scope: !174, file: !175, line: 12, type: !21)
!182 = !DILocation(line: 12, column: 20, scope: !174)
!183 = !DILocalVariable(name: "s", arg: 2, scope: !174, file: !175, line: 12, type: !20)
!184 = !DILocation(line: 12, column: 29, scope: !174)
!185 = !DILocalVariable(name: "count", arg: 3, scope: !174, file: !175, line: 12, type: !178)
!186 = !DILocation(line: 12, column: 39, scope: !174)
!187 = !DILocalVariable(name: "a", scope: !174, file: !175, line: 13, type: !188)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!190 = !DILocation(line: 13, column: 9, scope: !174)
!191 = !DILocation(line: 13, column: 13, scope: !174)
!192 = !DILocation(line: 14, column: 3, scope: !174)
!193 = !DILocation(line: 14, column: 15, scope: !174)
!194 = !DILocation(line: 14, column: 18, scope: !174)
!195 = !DILocation(line: 15, column: 12, scope: !174)
!196 = !DILocation(line: 15, column: 7, scope: !174)
!197 = !DILocation(line: 15, column: 10, scope: !174)
!198 = distinct !{!198, !192, !195, !199}
!199 = !{!"llvm.loop.mustprogress"}
!200 = !DILocation(line: 16, column: 10, scope: !174)
!201 = !DILocation(line: 16, column: 3, scope: !174)

; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/025_c14n.c_299_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/025_c14n.c_299_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlC14NCtx = type { %struct._xmlNs**, i32, %struct._xmlNode**, i32 }
%struct._xmlNs = type opaque
%struct._xmlNode = type opaque
%struct._xmlC14NIsVisCallback = type {}

@.str = private unnamed_addr constant [28 x i8] c"destroying namespaces stack\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [71 x i8] c"(ctx->nsMax >= 0 && ctx->nsMax <= ctx->nodeMax) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_62911_vul/025_c14n.c_299_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlC14NProcessAttrsAxis = private unnamed_addr constant [81 x i8] c"void xmlC14NProcessAttrsAxis(xmlC14NCtxPtr, xmlNodePtr, xmlC14NIsVisCallbackPtr)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"nsMax\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"nodeMax\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlC14NErrParam(i8* noundef %0) #0 !dbg !24 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !31, metadata !DIExpression()), !dbg !32
  ret void, !dbg !33
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !34 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !37, metadata !DIExpression()), !dbg !38
  %3 = load i8*, i8** %2, align 8, !dbg !39
  call void @free(i8* noundef %3) #7, !dbg !40
  ret void, !dbg !41
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlC14NProcessAttrsAxis(%struct._xmlC14NCtx* noundef %0, %struct._xmlNode* noundef %1, %struct._xmlC14NIsVisCallback* noundef %2) #0 !dbg !42 {
  %4 = alloca %struct._xmlC14NCtx*, align 8
  %5 = alloca %struct._xmlNode*, align 8
  %6 = alloca %struct._xmlC14NIsVisCallback*, align 8
  store %struct._xmlC14NCtx* %0, %struct._xmlC14NCtx** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlC14NCtx** %4, metadata !58, metadata !DIExpression()), !dbg !59
  store %struct._xmlNode* %1, %struct._xmlNode** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %5, metadata !60, metadata !DIExpression()), !dbg !61
  store %struct._xmlC14NIsVisCallback* %2, %struct._xmlC14NIsVisCallback** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlC14NIsVisCallback** %6, metadata !62, metadata !DIExpression()), !dbg !63
  %7 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %4, align 8, !dbg !64
  %8 = icmp eq %struct._xmlC14NCtx* %7, null, !dbg !66
  br i1 %8, label %9, label %10, !dbg !67

9:                                                ; preds = %3
  call void @xmlC14NErrParam(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0)), !dbg !68
  br label %68, !dbg !70

10:                                               ; preds = %3
  %11 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %4, align 8, !dbg !71
  %12 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %11, i32 0, i32 0, !dbg !73
  %13 = load %struct._xmlNs**, %struct._xmlNs*** %12, align 8, !dbg !73
  %14 = icmp ne %struct._xmlNs** %13, null, !dbg !74
  br i1 %14, label %15, label %30, !dbg !75

15:                                               ; preds = %10
  %16 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %4, align 8, !dbg !76
  %17 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %16, i32 0, i32 0, !dbg !78
  %18 = load %struct._xmlNs**, %struct._xmlNs*** %17, align 8, !dbg !78
  %19 = bitcast %struct._xmlNs** %18 to i8*, !dbg !79
  %20 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %4, align 8, !dbg !80
  %21 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %20, i32 0, i32 1, !dbg !81
  %22 = load i32, i32* %21, align 8, !dbg !81
  %23 = sext i32 %22 to i64, !dbg !80
  %24 = mul i64 %23, 8, !dbg !82
  %25 = call i8* @memset(i8* %19, i32 0, i64 %24), !dbg !79
  %26 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %4, align 8, !dbg !83
  %27 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %26, i32 0, i32 0, !dbg !84
  %28 = load %struct._xmlNs**, %struct._xmlNs*** %27, align 8, !dbg !84
  %29 = bitcast %struct._xmlNs** %28 to i8*, !dbg !83
  call void @xmlFree(i8* noundef %29), !dbg !85
  br label %30, !dbg !86

30:                                               ; preds = %15, %10
  %31 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %4, align 8, !dbg !87
  %32 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %31, i32 0, i32 2, !dbg !89
  %33 = load %struct._xmlNode**, %struct._xmlNode*** %32, align 8, !dbg !89
  %34 = icmp ne %struct._xmlNode** %33, null, !dbg !90
  br i1 %34, label %35, label %68, !dbg !91

35:                                               ; preds = %30
  %36 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %4, align 8, !dbg !92
  %37 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %36, i32 0, i32 2, !dbg !94
  %38 = load %struct._xmlNode**, %struct._xmlNode*** %37, align 8, !dbg !94
  %39 = bitcast %struct._xmlNode** %38 to i8*, !dbg !95
  %40 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %4, align 8, !dbg !96
  %41 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %40, i32 0, i32 1, !dbg !97
  %42 = load i32, i32* %41, align 8, !dbg !97
  %43 = sext i32 %42 to i64, !dbg !96
  %44 = mul i64 %43, 8, !dbg !98
  %45 = call i8* @memset(i8* %39, i32 0, i64 %44), !dbg !95
  %46 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %4, align 8, !dbg !99
  %47 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %46, i32 0, i32 1, !dbg !99
  %48 = load i32, i32* %47, align 8, !dbg !99
  %49 = icmp sge i32 %48, 0, !dbg !99
  br i1 %49, label %50, label %60, !dbg !99

50:                                               ; preds = %35
  %51 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %4, align 8, !dbg !99
  %52 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %51, i32 0, i32 1, !dbg !99
  %53 = load i32, i32* %52, align 8, !dbg !99
  %54 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %4, align 8, !dbg !99
  %55 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %54, i32 0, i32 3, !dbg !99
  %56 = load i32, i32* %55, align 8, !dbg !99
  %57 = icmp sle i32 %53, %56, !dbg !99
  br i1 %57, label %58, label %60, !dbg !99

58:                                               ; preds = %50
  br i1 true, label %59, label %60, !dbg !99

59:                                               ; preds = %58
  br label %62, !dbg !99

60:                                               ; preds = %58, %50, %35
  %61 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.3, i64 0, i64 0), i32 noundef 60, i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @__PRETTY_FUNCTION__.xmlC14NProcessAttrsAxis, i64 0, i64 0)), !dbg !99
  br label %62, !dbg !99

62:                                               ; preds = %60, %59
  %63 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.3, i64 0, i64 0), i32 noundef 63, i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @__PRETTY_FUNCTION__.xmlC14NProcessAttrsAxis, i64 0, i64 0)), !dbg !100
  %64 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %4, align 8, !dbg !101
  %65 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %64, i32 0, i32 2, !dbg !102
  %66 = load %struct._xmlNode**, %struct._xmlNode*** %65, align 8, !dbg !102
  %67 = bitcast %struct._xmlNode** %66 to i8*, !dbg !101
  call void @xmlFree(i8* noundef %67), !dbg !103
  br label %68, !dbg !104

68:                                               ; preds = %9, %62, %30
  ret void, !dbg !105
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !106 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlC14NCtx, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlC14NCtx* %2, metadata !109, metadata !DIExpression()), !dbg !110
  %3 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %2, i32 0, i32 1, !dbg !111
  %4 = bitcast i32* %3 to i8*, !dbg !112
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)), !dbg !113
  %5 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %2, i32 0, i32 3, !dbg !114
  %6 = bitcast i32* %5 to i8*, !dbg !115
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)), !dbg !116
  %7 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %2, i32 0, i32 1, !dbg !117
  %8 = load i32, i32* %7, align 8, !dbg !117
  %9 = icmp sge i32 %8, 0, !dbg !118
  br i1 %9, label %10, label %14, !dbg !119

10:                                               ; preds = %0
  %11 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %2, i32 0, i32 1, !dbg !120
  %12 = load i32, i32* %11, align 8, !dbg !120
  %13 = icmp slt i32 %12, 1000, !dbg !121
  br label %14

14:                                               ; preds = %10, %0
  %15 = phi i1 [ false, %0 ], [ %13, %10 ], !dbg !122
  %16 = zext i1 %15 to i32, !dbg !119
  %17 = sext i32 %16 to i64, !dbg !123
  call void @klee_assume(i64 noundef %17), !dbg !124
  %18 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %2, i32 0, i32 3, !dbg !125
  %19 = load i32, i32* %18, align 8, !dbg !125
  %20 = icmp sge i32 %19, 0, !dbg !126
  br i1 %20, label %21, label %25, !dbg !127

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %2, i32 0, i32 3, !dbg !128
  %23 = load i32, i32* %22, align 8, !dbg !128
  %24 = icmp slt i32 %23, 1000, !dbg !129
  br label %25

25:                                               ; preds = %21, %14
  %26 = phi i1 [ false, %14 ], [ %24, %21 ], !dbg !122
  %27 = zext i1 %26 to i32, !dbg !127
  %28 = sext i32 %27 to i64, !dbg !130
  call void @klee_assume(i64 noundef %28), !dbg !131
  %29 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %2, i32 0, i32 1, !dbg !132
  %30 = load i32, i32* %29, align 8, !dbg !132
  %31 = icmp sgt i32 %30, 0, !dbg !134
  br i1 %31, label %32, label %40, !dbg !135

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %2, i32 0, i32 1, !dbg !136
  %34 = load i32, i32* %33, align 8, !dbg !136
  %35 = sext i32 %34 to i64, !dbg !138
  %36 = mul i64 %35, 8, !dbg !139
  %37 = call noalias i8* @malloc(i64 noundef %36) #7, !dbg !140
  %38 = bitcast i8* %37 to %struct._xmlNs**, !dbg !141
  %39 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %2, i32 0, i32 0, !dbg !142
  store %struct._xmlNs** %38, %struct._xmlNs*** %39, align 8, !dbg !143
  br label %42, !dbg !144

40:                                               ; preds = %25
  %41 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %2, i32 0, i32 0, !dbg !145
  store %struct._xmlNs** null, %struct._xmlNs*** %41, align 8, !dbg !147
  br label %42

42:                                               ; preds = %40, %32
  %43 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %2, i32 0, i32 3, !dbg !148
  %44 = load i32, i32* %43, align 8, !dbg !148
  %45 = icmp sgt i32 %44, 0, !dbg !150
  br i1 %45, label %46, label %54, !dbg !151

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %2, i32 0, i32 3, !dbg !152
  %48 = load i32, i32* %47, align 8, !dbg !152
  %49 = sext i32 %48 to i64, !dbg !154
  %50 = mul i64 %49, 8, !dbg !155
  %51 = call noalias i8* @malloc(i64 noundef %50) #7, !dbg !156
  %52 = bitcast i8* %51 to %struct._xmlNode**, !dbg !157
  %53 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %2, i32 0, i32 2, !dbg !158
  store %struct._xmlNode** %52, %struct._xmlNode*** %53, align 8, !dbg !159
  br label %56, !dbg !160

54:                                               ; preds = %42
  %55 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %2, i32 0, i32 2, !dbg !161
  store %struct._xmlNode** null, %struct._xmlNode*** %55, align 8, !dbg !163
  br label %56

56:                                               ; preds = %54, %46
  call void @xmlC14NProcessAttrsAxis(%struct._xmlC14NCtx* noundef %2, %struct._xmlNode* noundef null, %struct._xmlC14NIsVisCallback* noundef null), !dbg !164
  %57 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %2, i32 0, i32 0, !dbg !165
  %58 = load %struct._xmlNs**, %struct._xmlNs*** %57, align 8, !dbg !165
  %59 = icmp ne %struct._xmlNs** %58, null, !dbg !167
  br i1 %59, label %60, label %64, !dbg !168

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %2, i32 0, i32 0, !dbg !169
  %62 = load %struct._xmlNs**, %struct._xmlNs*** %61, align 8, !dbg !169
  %63 = bitcast %struct._xmlNs** %62 to i8*, !dbg !171
  call void @free(i8* noundef %63) #7, !dbg !172
  br label %64, !dbg !173

64:                                               ; preds = %60, %56
  %65 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %2, i32 0, i32 2, !dbg !174
  %66 = load %struct._xmlNode**, %struct._xmlNode*** %65, align 8, !dbg !174
  %67 = icmp ne %struct._xmlNode** %66, null, !dbg !176
  br i1 %67, label %68, label %72, !dbg !177

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %2, i32 0, i32 2, !dbg !178
  %70 = load %struct._xmlNode**, %struct._xmlNode*** %69, align 8, !dbg !178
  %71 = bitcast %struct._xmlNode** %70 to i8*, !dbg !180
  call void @free(i8* noundef %71) #7, !dbg !181
  br label %72, !dbg !182

72:                                               ; preds = %68, %64
  ret i32 0, !dbg !183
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !184 {
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
  call void @llvm.dbg.declare(metadata i8** %7, metadata !197, metadata !DIExpression()), !dbg !199
  %8 = load i8*, i8** %4, align 8, !dbg !200
  store i8* %8, i8** %7, align 8, !dbg !199
  br label %9, !dbg !201

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !202
  %11 = add i64 %10, -1, !dbg !202
  store i64 %11, i64* %6, align 8, !dbg !202
  %12 = icmp ugt i64 %10, 0, !dbg !203
  br i1 %12, label %13, label %18, !dbg !201

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !204
  %15 = trunc i32 %14 to i8, !dbg !204
  %16 = load i8*, i8** %7, align 8, !dbg !205
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !205
  store i8* %17, i8** %7, align 8, !dbg !205
  store i8 %15, i8* %16, align 1, !dbg !206
  br label %9, !dbg !201, !llvm.loop !207

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !209
  ret i8* %19, !dbg !210
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23, !23}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/025_c14n.c_299_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "6228a05a29b856a3d45aad0f06568b50")
!2 = !{!3, !4, !9}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsPtr", file: !1, line: 11, baseType: !6)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !1, line: 10, baseType: !8)
!8 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !1, line: 10, flags: DIFlagFwdDecl)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !1, line: 13, baseType: !11)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 12, baseType: !13)
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 12, flags: DIFlagFwdDecl)
!14 = distinct !DICompileUnit(language: DW_LANG_C99, file: !15, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!15 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!16 = !{i32 7, !"Dwarf Version", i32 5}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{i32 7, !"PIC Level", i32 2}
!20 = !{i32 7, !"PIE Level", i32 2}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"Ubuntu clang version 14.0.6"}
!24 = distinct !DISubprogram(name: "xmlC14NErrParam", scope: !1, file: !1, line: 33, type: !25, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !30)
!25 = !DISubroutineType(types: !26)
!26 = !{null, !27}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!29 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!30 = !{}
!31 = !DILocalVariable(name: "str", arg: 1, scope: !24, file: !1, line: 33, type: !27)
!32 = !DILocation(line: 33, column: 34, scope: !24)
!33 = !DILocation(line: 35, column: 1, scope: !24)
!34 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 37, type: !35, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !30)
!35 = !DISubroutineType(types: !36)
!36 = !{null, !3}
!37 = !DILocalVariable(name: "ptr", arg: 1, scope: !34, file: !1, line: 37, type: !3)
!38 = !DILocation(line: 37, column: 20, scope: !34)
!39 = !DILocation(line: 38, column: 10, scope: !34)
!40 = !DILocation(line: 38, column: 5, scope: !34)
!41 = !DILocation(line: 39, column: 1, scope: !34)
!42 = distinct !DISubprogram(name: "xmlC14NProcessAttrsAxis", scope: !1, file: !1, line: 42, type: !43, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !30)
!43 = !DISubroutineType(types: !44)
!44 = !{null, !45, !10, !55}
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlC14NCtxPtr", file: !1, line: 30, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlC14NCtx", file: !1, line: 28, baseType: !48)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlC14NCtx", file: !1, line: 22, size: 256, elements: !49)
!49 = !{!50, !51, !53, !54}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "nsTab", scope: !48, file: !1, line: 23, baseType: !4, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "nsMax", scope: !48, file: !1, line: 24, baseType: !52, size: 32, offset: 64)
!52 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !48, file: !1, line: 25, baseType: !9, size: 64, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "nodeMax", scope: !48, file: !1, line: 26, baseType: !52, size: 32, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlC14NIsVisCallbackPtr", file: !1, line: 20, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlC14NIsVisCallback", file: !1, line: 16, elements: !30)
!58 = !DILocalVariable(name: "ctx", arg: 1, scope: !42, file: !1, line: 42, type: !45)
!59 = !DILocation(line: 42, column: 44, scope: !42)
!60 = !DILocalVariable(name: "node", arg: 2, scope: !42, file: !1, line: 42, type: !10)
!61 = !DILocation(line: 42, column: 60, scope: !42)
!62 = !DILocalVariable(name: "is_visible_callback", arg: 3, scope: !42, file: !1, line: 42, type: !55)
!63 = !DILocation(line: 42, column: 90, scope: !42)
!64 = !DILocation(line: 44, column: 9, scope: !65)
!65 = distinct !DILexicalBlock(scope: !42, file: !1, line: 44, column: 9)
!66 = !DILocation(line: 44, column: 13, scope: !65)
!67 = !DILocation(line: 44, column: 9, scope: !42)
!68 = !DILocation(line: 45, column: 9, scope: !69)
!69 = distinct !DILexicalBlock(scope: !65, file: !1, line: 44, column: 22)
!70 = !DILocation(line: 46, column: 9, scope: !69)
!71 = !DILocation(line: 50, column: 9, scope: !72)
!72 = distinct !DILexicalBlock(scope: !42, file: !1, line: 50, column: 9)
!73 = !DILocation(line: 50, column: 14, scope: !72)
!74 = !DILocation(line: 50, column: 20, scope: !72)
!75 = !DILocation(line: 50, column: 9, scope: !42)
!76 = !DILocation(line: 51, column: 16, scope: !77)
!77 = distinct !DILexicalBlock(scope: !72, file: !1, line: 50, column: 29)
!78 = !DILocation(line: 51, column: 21, scope: !77)
!79 = !DILocation(line: 51, column: 9, scope: !77)
!80 = !DILocation(line: 51, column: 31, scope: !77)
!81 = !DILocation(line: 51, column: 36, scope: !77)
!82 = !DILocation(line: 51, column: 42, scope: !77)
!83 = !DILocation(line: 52, column: 17, scope: !77)
!84 = !DILocation(line: 52, column: 22, scope: !77)
!85 = !DILocation(line: 52, column: 9, scope: !77)
!86 = !DILocation(line: 53, column: 5, scope: !77)
!87 = !DILocation(line: 54, column: 9, scope: !88)
!88 = distinct !DILexicalBlock(scope: !42, file: !1, line: 54, column: 9)
!89 = !DILocation(line: 54, column: 14, scope: !88)
!90 = !DILocation(line: 54, column: 22, scope: !88)
!91 = !DILocation(line: 54, column: 9, scope: !42)
!92 = !DILocation(line: 56, column: 16, scope: !93)
!93 = distinct !DILexicalBlock(scope: !88, file: !1, line: 54, column: 31)
!94 = !DILocation(line: 56, column: 21, scope: !93)
!95 = !DILocation(line: 56, column: 9, scope: !93)
!96 = !DILocation(line: 56, column: 33, scope: !93)
!97 = !DILocation(line: 56, column: 38, scope: !93)
!98 = !DILocation(line: 56, column: 44, scope: !93)
!99 = !DILocation(line: 60, column: 9, scope: !93)
!100 = !DILocation(line: 63, column: 9, scope: !93)
!101 = !DILocation(line: 65, column: 17, scope: !93)
!102 = !DILocation(line: 65, column: 22, scope: !93)
!103 = !DILocation(line: 65, column: 9, scope: !93)
!104 = !DILocation(line: 66, column: 5, scope: !93)
!105 = !DILocation(line: 67, column: 1, scope: !42)
!106 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 69, type: !107, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !30)
!107 = !DISubroutineType(types: !108)
!108 = !{!52}
!109 = !DILocalVariable(name: "ctx", scope: !106, file: !1, line: 71, type: !47)
!110 = !DILocation(line: 71, column: 16, scope: !106)
!111 = !DILocation(line: 74, column: 29, scope: !106)
!112 = !DILocation(line: 74, column: 24, scope: !106)
!113 = !DILocation(line: 74, column: 5, scope: !106)
!114 = !DILocation(line: 75, column: 29, scope: !106)
!115 = !DILocation(line: 75, column: 24, scope: !106)
!116 = !DILocation(line: 75, column: 5, scope: !106)
!117 = !DILocation(line: 78, column: 21, scope: !106)
!118 = !DILocation(line: 78, column: 27, scope: !106)
!119 = !DILocation(line: 78, column: 32, scope: !106)
!120 = !DILocation(line: 78, column: 39, scope: !106)
!121 = !DILocation(line: 78, column: 45, scope: !106)
!122 = !DILocation(line: 0, scope: !106)
!123 = !DILocation(line: 78, column: 17, scope: !106)
!124 = !DILocation(line: 78, column: 5, scope: !106)
!125 = !DILocation(line: 79, column: 21, scope: !106)
!126 = !DILocation(line: 79, column: 29, scope: !106)
!127 = !DILocation(line: 79, column: 34, scope: !106)
!128 = !DILocation(line: 79, column: 41, scope: !106)
!129 = !DILocation(line: 79, column: 49, scope: !106)
!130 = !DILocation(line: 79, column: 17, scope: !106)
!131 = !DILocation(line: 79, column: 5, scope: !106)
!132 = !DILocation(line: 82, column: 13, scope: !133)
!133 = distinct !DILexicalBlock(scope: !106, file: !1, line: 82, column: 9)
!134 = !DILocation(line: 82, column: 19, scope: !133)
!135 = !DILocation(line: 82, column: 9, scope: !106)
!136 = !DILocation(line: 83, column: 44, scope: !137)
!137 = distinct !DILexicalBlock(scope: !133, file: !1, line: 82, column: 24)
!138 = !DILocation(line: 83, column: 40, scope: !137)
!139 = !DILocation(line: 83, column: 50, scope: !137)
!140 = !DILocation(line: 83, column: 33, scope: !137)
!141 = !DILocation(line: 83, column: 21, scope: !137)
!142 = !DILocation(line: 83, column: 13, scope: !137)
!143 = !DILocation(line: 83, column: 19, scope: !137)
!144 = !DILocation(line: 84, column: 5, scope: !137)
!145 = !DILocation(line: 85, column: 13, scope: !146)
!146 = distinct !DILexicalBlock(scope: !133, file: !1, line: 84, column: 12)
!147 = !DILocation(line: 85, column: 19, scope: !146)
!148 = !DILocation(line: 88, column: 13, scope: !149)
!149 = distinct !DILexicalBlock(scope: !106, file: !1, line: 88, column: 9)
!150 = !DILocation(line: 88, column: 21, scope: !149)
!151 = !DILocation(line: 88, column: 9, scope: !106)
!152 = !DILocation(line: 89, column: 48, scope: !153)
!153 = distinct !DILexicalBlock(scope: !149, file: !1, line: 88, column: 26)
!154 = !DILocation(line: 89, column: 44, scope: !153)
!155 = !DILocation(line: 89, column: 56, scope: !153)
!156 = !DILocation(line: 89, column: 37, scope: !153)
!157 = !DILocation(line: 89, column: 23, scope: !153)
!158 = !DILocation(line: 89, column: 13, scope: !153)
!159 = !DILocation(line: 89, column: 21, scope: !153)
!160 = !DILocation(line: 90, column: 5, scope: !153)
!161 = !DILocation(line: 91, column: 13, scope: !162)
!162 = distinct !DILexicalBlock(scope: !149, file: !1, line: 90, column: 12)
!163 = !DILocation(line: 91, column: 21, scope: !162)
!164 = !DILocation(line: 95, column: 5, scope: !106)
!165 = !DILocation(line: 98, column: 13, scope: !166)
!166 = distinct !DILexicalBlock(scope: !106, file: !1, line: 98, column: 9)
!167 = !DILocation(line: 98, column: 19, scope: !166)
!168 = !DILocation(line: 98, column: 9, scope: !106)
!169 = !DILocation(line: 99, column: 18, scope: !170)
!170 = distinct !DILexicalBlock(scope: !166, file: !1, line: 98, column: 28)
!171 = !DILocation(line: 99, column: 14, scope: !170)
!172 = !DILocation(line: 99, column: 9, scope: !170)
!173 = !DILocation(line: 100, column: 5, scope: !170)
!174 = !DILocation(line: 101, column: 13, scope: !175)
!175 = distinct !DILexicalBlock(scope: !106, file: !1, line: 101, column: 9)
!176 = !DILocation(line: 101, column: 21, scope: !175)
!177 = !DILocation(line: 101, column: 9, scope: !106)
!178 = !DILocation(line: 102, column: 18, scope: !179)
!179 = distinct !DILexicalBlock(scope: !175, file: !1, line: 101, column: 30)
!180 = !DILocation(line: 102, column: 14, scope: !179)
!181 = !DILocation(line: 102, column: 9, scope: !179)
!182 = !DILocation(line: 103, column: 5, scope: !179)
!183 = !DILocation(line: 105, column: 5, scope: !106)
!184 = distinct !DISubprogram(name: "memset", scope: !185, file: !185, line: 12, type: !186, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !30)
!185 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!186 = !DISubroutineType(types: !187)
!187 = !{!3, !3, !52, !188}
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !189, line: 46, baseType: !190)
!189 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!190 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!191 = !DILocalVariable(name: "dst", arg: 1, scope: !184, file: !185, line: 12, type: !3)
!192 = !DILocation(line: 12, column: 20, scope: !184)
!193 = !DILocalVariable(name: "s", arg: 2, scope: !184, file: !185, line: 12, type: !52)
!194 = !DILocation(line: 12, column: 29, scope: !184)
!195 = !DILocalVariable(name: "count", arg: 3, scope: !184, file: !185, line: 12, type: !188)
!196 = !DILocation(line: 12, column: 39, scope: !184)
!197 = !DILocalVariable(name: "a", scope: !184, file: !185, line: 13, type: !198)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!199 = !DILocation(line: 13, column: 9, scope: !184)
!200 = !DILocation(line: 13, column: 13, scope: !184)
!201 = !DILocation(line: 14, column: 3, scope: !184)
!202 = !DILocation(line: 14, column: 15, scope: !184)
!203 = !DILocation(line: 14, column: 18, scope: !184)
!204 = !DILocation(line: 15, column: 12, scope: !184)
!205 = !DILocation(line: 15, column: 7, scope: !184)
!206 = !DILocation(line: 15, column: 10, scope: !184)
!207 = distinct !{!207, !201, !204, !208}
!208 = !{!"llvm.loop.mustprogress"}
!209 = !DILocation(line: 16, column: 10, scope: !184)
!210 = !DILocation(line: 16, column: 3, scope: !184)

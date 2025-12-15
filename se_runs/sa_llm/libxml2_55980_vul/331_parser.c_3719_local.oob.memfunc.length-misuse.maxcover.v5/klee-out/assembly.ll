; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/331_parser.c_3719_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/331_parser.c_3719_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlParserCtxt = type { i32, i8* }

@.str = private unnamed_addr constant [21 x i8] c"xmlIsNameChar_result\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ctxt\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"(len * 2 >= len) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_55980_vul/331_parser.c_3719_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlErrMemory(%struct._xmlParserCtxt* noundef %0, i8* noundef %1) #0 !dbg !22 {
  %3 = alloca %struct._xmlParserCtxt*, align 8
  %4 = alloca i8*, align 8
  store %struct._xmlParserCtxt* %0, %struct._xmlParserCtxt** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %3, metadata !35, metadata !DIExpression()), !dbg !36
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !37, metadata !DIExpression()), !dbg !38
  %5 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %3, align 8, !dbg !39
  %6 = load i8*, i8** %4, align 8, !dbg !40
  ret void, !dbg !41
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMallocAtomic(i64 noundef %0) #0 !dbg !42 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !48, metadata !DIExpression()), !dbg !49
  %3 = load i64, i64* %2, align 8, !dbg !50
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !51
  ret i8* %4, !dbg !52
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !53 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !56, metadata !DIExpression()), !dbg !57
  %3 = load i8*, i8** %2, align 8, !dbg !58
  call void @free(i8* noundef %3) #7, !dbg !59
  ret void, !dbg !60
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlIsNameChar(%struct._xmlParserCtxt* noundef %0, i32 noundef %1) #0 !dbg !61 {
  %3 = alloca %struct._xmlParserCtxt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct._xmlParserCtxt* %0, %struct._xmlParserCtxt** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %3, metadata !64, metadata !DIExpression()), !dbg !65
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !66, metadata !DIExpression()), !dbg !67
  %6 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %3, align 8, !dbg !68
  call void @llvm.dbg.declare(metadata i32* %5, metadata !69, metadata !DIExpression()), !dbg !70
  %7 = bitcast i32* %5 to i8*, !dbg !71
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0)), !dbg !72
  %8 = load i32, i32* %5, align 4, !dbg !73
  %9 = icmp eq i32 %8, 0, !dbg !74
  br i1 %9, label %13, label %10, !dbg !75

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4, !dbg !76
  %12 = icmp eq i32 %11, 1, !dbg !77
  br label %13, !dbg !75

13:                                               ; preds = %10, %2
  %14 = phi i1 [ true, %2 ], [ %12, %10 ]
  %15 = zext i1 %14 to i32, !dbg !75
  %16 = sext i32 %15 to i64, !dbg !73
  call void @klee_assume(i64 noundef %16), !dbg !78
  %17 = load i32, i32* %5, align 4, !dbg !79
  ret i32 %17, !dbg !80
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @target_function(%struct._xmlParserCtxt* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !81 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct._xmlParserCtxt*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct._xmlParserCtxt* %0, %struct._xmlParserCtxt** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %6, metadata !86, metadata !DIExpression()), !dbg !87
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !88, metadata !DIExpression()), !dbg !89
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !90, metadata !DIExpression()), !dbg !91
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !92, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.declare(metadata i8** %10, metadata !94, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.declare(metadata i32* %11, metadata !96, metadata !DIExpression()), !dbg !97
  %13 = load i32, i32* %8, align 4, !dbg !98
  %14 = mul nsw i32 %13, 2, !dbg !99
  store i32 %14, i32* %11, align 4, !dbg !97
  call void @llvm.dbg.declare(metadata i32* %12, metadata !100, metadata !DIExpression()), !dbg !101
  store i32 0, i32* %12, align 4, !dbg !101
  %15 = load i32, i32* %11, align 4, !dbg !102
  %16 = sext i32 %15 to i64, !dbg !102
  %17 = call i8* @xmlMallocAtomic(i64 noundef %16), !dbg !103
  store i8* %17, i8** %10, align 8, !dbg !104
  %18 = load i8*, i8** %10, align 8, !dbg !105
  %19 = icmp eq i8* %18, null, !dbg !107
  br i1 %19, label %20, label %22, !dbg !108

20:                                               ; preds = %4
  %21 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %6, align 8, !dbg !109
  call void @xmlErrMemory(%struct._xmlParserCtxt* noundef %21, i8* noundef null), !dbg !111
  store i8* null, i8** %5, align 8, !dbg !112
  br label %48, !dbg !112

22:                                               ; preds = %4
  %23 = load i8*, i8** %10, align 8, !dbg !113
  %24 = load i8*, i8** %7, align 8, !dbg !114
  %25 = load i32, i32* %8, align 4, !dbg !115
  %26 = sext i32 %25 to i64, !dbg !115
  %27 = call i8* @memcpy(i8* %23, i8* %24, i64 %26), !dbg !116
  br label %28, !dbg !117

28:                                               ; preds = %45, %22
  %29 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %6, align 8, !dbg !118
  %30 = load i32, i32* %9, align 4, !dbg !119
  %31 = call i32 @xmlIsNameChar(%struct._xmlParserCtxt* noundef %29, i32 noundef %30), !dbg !120
  %32 = icmp ne i32 %31, 0, !dbg !117
  br i1 %32, label %33, label %46, !dbg !117

33:                                               ; preds = %28
  %34 = load i32, i32* %12, align 4, !dbg !121
  %35 = add nsw i32 %34, 1, !dbg !121
  store i32 %35, i32* %12, align 4, !dbg !121
  %36 = icmp sgt i32 %34, 100, !dbg !124
  br i1 %36, label %37, label %45, !dbg !125

37:                                               ; preds = %33
  store i32 0, i32* %12, align 4, !dbg !126
  %38 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %6, align 8, !dbg !128
  %39 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %38, i32 0, i32 0, !dbg !130
  %40 = load i32, i32* %39, align 8, !dbg !130
  %41 = icmp eq i32 %40, -1, !dbg !131
  br i1 %41, label %42, label %44, !dbg !132

42:                                               ; preds = %37
  %43 = load i8*, i8** %10, align 8, !dbg !133
  call void @xmlFree(i8* noundef %43), !dbg !135
  store i8* null, i8** %5, align 8, !dbg !136
  br label %48, !dbg !136

44:                                               ; preds = %37
  br label %45, !dbg !137

45:                                               ; preds = %44, %33
  br label %28, !dbg !117, !llvm.loop !138

46:                                               ; preds = %28
  %47 = load i8*, i8** %10, align 8, !dbg !141
  store i8* %47, i8** %5, align 8, !dbg !142
  br label %48, !dbg !142

48:                                               ; preds = %46, %42, %20
  %49 = load i8*, i8** %5, align 8, !dbg !143
  ret i8* %49, !dbg !143
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !144 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlParserCtxt, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt* %2, metadata !147, metadata !DIExpression()), !dbg !148
  %7 = bitcast %struct._xmlParserCtxt* %2 to i8*, !dbg !149
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 16, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !150
  %8 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 0, !dbg !151
  %9 = load i32, i32* %8, align 8, !dbg !151
  %10 = icmp ne i32 %9, -1, !dbg !152
  %11 = zext i1 %10 to i32, !dbg !152
  %12 = sext i32 %11 to i64, !dbg !153
  call void @klee_assume(i64 noundef %12), !dbg !154
  call void @llvm.dbg.declare(metadata i32* %3, metadata !155, metadata !DIExpression()), !dbg !156
  %13 = bitcast i32* %3 to i8*, !dbg !157
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)), !dbg !158
  %14 = load i32, i32* %3, align 4, !dbg !159
  %15 = icmp sge i32 %14, 0, !dbg !160
  %16 = zext i1 %15 to i32, !dbg !160
  %17 = sext i32 %16 to i64, !dbg !159
  call void @klee_assume(i64 noundef %17), !dbg !161
  %18 = load i32, i32* %3, align 4, !dbg !162
  %19 = icmp slt i32 %18, 1024, !dbg !163
  %20 = zext i1 %19 to i32, !dbg !163
  %21 = sext i32 %20 to i64, !dbg !162
  call void @klee_assume(i64 noundef %21), !dbg !164
  call void @llvm.dbg.declare(metadata i8** %4, metadata !165, metadata !DIExpression()), !dbg !166
  %22 = load i32, i32* %3, align 4, !dbg !167
  %23 = add nsw i32 %22, 1, !dbg !168
  %24 = sext i32 %23 to i64, !dbg !167
  %25 = call noalias i8* @malloc(i64 noundef %24) #7, !dbg !169
  store i8* %25, i8** %4, align 8, !dbg !166
  %26 = load i8*, i8** %4, align 8, !dbg !170
  %27 = icmp eq i8* %26, null, !dbg !172
  br i1 %27, label %28, label %29, !dbg !173

28:                                               ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !174
  br label %59, !dbg !174

29:                                               ; preds = %0
  %30 = load i8*, i8** %4, align 8, !dbg !175
  %31 = load i32, i32* %3, align 4, !dbg !176
  %32 = add nsw i32 %31, 1, !dbg !177
  %33 = sext i32 %32 to i64, !dbg !176
  call void @klee_make_symbolic(i8* noundef %30, i64 noundef %33, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)), !dbg !178
  call void @llvm.dbg.declare(metadata i32* %5, metadata !179, metadata !DIExpression()), !dbg !180
  %34 = bitcast i32* %5 to i8*, !dbg !181
  call void @klee_make_symbolic(i8* noundef %34, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)), !dbg !182
  call void @llvm.dbg.declare(metadata i8** %6, metadata !183, metadata !DIExpression()), !dbg !184
  %35 = load i8*, i8** %4, align 8, !dbg !185
  %36 = load i32, i32* %3, align 4, !dbg !186
  %37 = load i32, i32* %5, align 4, !dbg !187
  %38 = call i8* @target_function(%struct._xmlParserCtxt* noundef %2, i8* noundef %35, i32 noundef %36, i32 noundef %37), !dbg !188
  store i8* %38, i8** %6, align 8, !dbg !184
  %39 = load i8*, i8** %6, align 8, !dbg !189
  %40 = icmp ne i8* %39, null, !dbg !191
  br i1 %40, label %41, label %52, !dbg !192

41:                                               ; preds = %29
  %42 = load i32, i32* %3, align 4, !dbg !193
  %43 = mul nsw i32 %42, 2, !dbg !193
  %44 = load i32, i32* %3, align 4, !dbg !193
  %45 = icmp sge i32 %43, %44, !dbg !193
  br i1 %45, label %46, label %48, !dbg !193

46:                                               ; preds = %41
  br i1 true, label %47, label %48, !dbg !193

47:                                               ; preds = %46
  br label %50, !dbg !193

48:                                               ; preds = %46, %41
  %49 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.7, i64 0, i64 0), i32 noundef 103, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !193
  br label %50, !dbg !193

50:                                               ; preds = %48, %47
  %51 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.7, i64 0, i64 0), i32 noundef 105, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !195
  br label %52, !dbg !196

52:                                               ; preds = %50, %29
  %53 = load i8*, i8** %6, align 8, !dbg !197
  %54 = icmp ne i8* %53, null, !dbg !197
  br i1 %54, label %55, label %57, !dbg !199

55:                                               ; preds = %52
  %56 = load i8*, i8** %6, align 8, !dbg !200
  call void @xmlFree(i8* noundef %56), !dbg !201
  br label %57, !dbg !201

57:                                               ; preds = %55, %52
  %58 = load i8*, i8** %4, align 8, !dbg !202
  call void @free(i8* noundef %58) #7, !dbg !203
  store i32 0, i32* %1, align 4, !dbg !204
  br label %59, !dbg !204

59:                                               ; preds = %57, %28
  %60 = load i32, i32* %1, align 4, !dbg !205
  ret i32 %60, !dbg !205
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !206 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !212, metadata !DIExpression()), !dbg !213
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !214, metadata !DIExpression()), !dbg !215
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !216, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.declare(metadata i8** %7, metadata !218, metadata !DIExpression()), !dbg !220
  %9 = load i8*, i8** %4, align 8, !dbg !221
  store i8* %9, i8** %7, align 8, !dbg !220
  call void @llvm.dbg.declare(metadata i8** %8, metadata !222, metadata !DIExpression()), !dbg !223
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
  %22 = load i8*, i8** %4, align 8, !dbg !233
  ret i8* %22, !dbg !234
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21, !21}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !7, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/331_parser.c_3719_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "d9d109fae1038c653b5440680686bb0b")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 13, baseType: !4, size: 32, elements: !5)
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{!6}
!6 = !DIEnumerator(name: "XML_PARSER_EOF", value: -1)
!7 = !{!8, !11}
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !1, line: 11, baseType: !10)
!10 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = distinct !DICompileUnit(language: DW_LANG_C99, file: !13, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!13 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!14 = !{i32 7, !"Dwarf Version", i32 5}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{i32 7, !"PIC Level", i32 2}
!18 = !{i32 7, !"PIE Level", i32 2}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"Ubuntu clang version 14.0.6"}
!22 = distinct !DISubprogram(name: "xmlErrMemory", scope: !1, file: !1, line: 23, type: !23, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!23 = !DISubroutineType(types: !24)
!24 = !{null, !25, !31}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxt", file: !1, line: 10, baseType: !27)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserCtxt", file: !1, line: 17, size: 128, elements: !28)
!28 = !{!29, !30}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "instate", scope: !27, file: !1, line: 18, baseType: !4, size: 32)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !27, file: !1, line: 19, baseType: !11, size: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!33 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!34 = !{}
!35 = !DILocalVariable(name: "ctxt", arg: 1, scope: !22, file: !1, line: 23, type: !25)
!36 = !DILocation(line: 23, column: 34, scope: !22)
!37 = !DILocalVariable(name: "extra", arg: 2, scope: !22, file: !1, line: 23, type: !31)
!38 = !DILocation(line: 23, column: 52, scope: !22)
!39 = !DILocation(line: 24, column: 11, scope: !22)
!40 = !DILocation(line: 24, column: 23, scope: !22)
!41 = !DILocation(line: 25, column: 1, scope: !22)
!42 = distinct !DISubprogram(name: "xmlMallocAtomic", scope: !1, file: !1, line: 27, type: !43, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!43 = !DISubroutineType(types: !44)
!44 = !{!11, !45}
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !46, line: 46, baseType: !47)
!46 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!47 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!48 = !DILocalVariable(name: "size", arg: 1, scope: !42, file: !1, line: 27, type: !45)
!49 = !DILocation(line: 27, column: 30, scope: !42)
!50 = !DILocation(line: 28, column: 19, scope: !42)
!51 = !DILocation(line: 28, column: 12, scope: !42)
!52 = !DILocation(line: 28, column: 5, scope: !42)
!53 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 31, type: !54, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!54 = !DISubroutineType(types: !55)
!55 = !{null, !11}
!56 = !DILocalVariable(name: "ptr", arg: 1, scope: !53, file: !1, line: 31, type: !11)
!57 = !DILocation(line: 31, column: 20, scope: !53)
!58 = !DILocation(line: 32, column: 10, scope: !53)
!59 = !DILocation(line: 32, column: 5, scope: !53)
!60 = !DILocation(line: 33, column: 1, scope: !53)
!61 = distinct !DISubprogram(name: "xmlIsNameChar", scope: !1, file: !1, line: 35, type: !62, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!62 = !DISubroutineType(types: !63)
!63 = !{!4, !25, !4}
!64 = !DILocalVariable(name: "ctxt", arg: 1, scope: !61, file: !1, line: 35, type: !25)
!65 = !DILocation(line: 35, column: 34, scope: !61)
!66 = !DILocalVariable(name: "c", arg: 2, scope: !61, file: !1, line: 35, type: !4)
!67 = !DILocation(line: 35, column: 44, scope: !61)
!68 = !DILocation(line: 36, column: 11, scope: !61)
!69 = !DILocalVariable(name: "result", scope: !61, file: !1, line: 38, type: !4)
!70 = !DILocation(line: 38, column: 9, scope: !61)
!71 = !DILocation(line: 39, column: 24, scope: !61)
!72 = !DILocation(line: 39, column: 5, scope: !61)
!73 = !DILocation(line: 40, column: 17, scope: !61)
!74 = !DILocation(line: 40, column: 24, scope: !61)
!75 = !DILocation(line: 40, column: 29, scope: !61)
!76 = !DILocation(line: 40, column: 32, scope: !61)
!77 = !DILocation(line: 40, column: 39, scope: !61)
!78 = !DILocation(line: 40, column: 5, scope: !61)
!79 = !DILocation(line: 41, column: 12, scope: !61)
!80 = !DILocation(line: 41, column: 5, scope: !61)
!81 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 45, type: !82, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!82 = !DISubroutineType(types: !83)
!83 = !{!8, !25, !84, !4, !4}
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!86 = !DILocalVariable(name: "ctxt", arg: 1, scope: !81, file: !1, line: 45, type: !25)
!87 = !DILocation(line: 45, column: 41, scope: !81)
!88 = !DILocalVariable(name: "buf", arg: 2, scope: !81, file: !1, line: 45, type: !84)
!89 = !DILocation(line: 45, column: 62, scope: !81)
!90 = !DILocalVariable(name: "len", arg: 3, scope: !81, file: !1, line: 45, type: !4)
!91 = !DILocation(line: 45, column: 71, scope: !81)
!92 = !DILocalVariable(name: "c", arg: 4, scope: !81, file: !1, line: 45, type: !4)
!93 = !DILocation(line: 45, column: 80, scope: !81)
!94 = !DILocalVariable(name: "buffer", scope: !81, file: !1, line: 46, type: !8)
!95 = !DILocation(line: 46, column: 14, scope: !81)
!96 = !DILocalVariable(name: "max", scope: !81, file: !1, line: 47, type: !4)
!97 = !DILocation(line: 47, column: 9, scope: !81)
!98 = !DILocation(line: 47, column: 15, scope: !81)
!99 = !DILocation(line: 47, column: 19, scope: !81)
!100 = !DILocalVariable(name: "count", scope: !81, file: !1, line: 48, type: !4)
!101 = !DILocation(line: 48, column: 9, scope: !81)
!102 = !DILocation(line: 50, column: 42, scope: !81)
!103 = !DILocation(line: 50, column: 26, scope: !81)
!104 = !DILocation(line: 50, column: 12, scope: !81)
!105 = !DILocation(line: 51, column: 9, scope: !106)
!106 = distinct !DILexicalBlock(scope: !81, file: !1, line: 51, column: 9)
!107 = !DILocation(line: 51, column: 16, scope: !106)
!108 = !DILocation(line: 51, column: 9, scope: !81)
!109 = !DILocation(line: 52, column: 22, scope: !110)
!110 = distinct !DILexicalBlock(scope: !106, file: !1, line: 51, column: 25)
!111 = !DILocation(line: 52, column: 9, scope: !110)
!112 = !DILocation(line: 53, column: 9, scope: !110)
!113 = !DILocation(line: 57, column: 12, scope: !81)
!114 = !DILocation(line: 57, column: 20, scope: !81)
!115 = !DILocation(line: 57, column: 25, scope: !81)
!116 = !DILocation(line: 57, column: 5, scope: !81)
!117 = !DILocation(line: 60, column: 5, scope: !81)
!118 = !DILocation(line: 60, column: 26, scope: !81)
!119 = !DILocation(line: 60, column: 32, scope: !81)
!120 = !DILocation(line: 60, column: 12, scope: !81)
!121 = !DILocation(line: 61, column: 18, scope: !122)
!122 = distinct !DILexicalBlock(scope: !123, file: !1, line: 61, column: 13)
!123 = distinct !DILexicalBlock(scope: !81, file: !1, line: 60, column: 36)
!124 = !DILocation(line: 61, column: 21, scope: !122)
!125 = !DILocation(line: 61, column: 13, scope: !123)
!126 = !DILocation(line: 62, column: 19, scope: !127)
!127 = distinct !DILexicalBlock(scope: !122, file: !1, line: 61, column: 28)
!128 = !DILocation(line: 64, column: 17, scope: !129)
!129 = distinct !DILexicalBlock(scope: !127, file: !1, line: 64, column: 17)
!130 = !DILocation(line: 64, column: 23, scope: !129)
!131 = !DILocation(line: 64, column: 31, scope: !129)
!132 = !DILocation(line: 64, column: 17, scope: !127)
!133 = !DILocation(line: 65, column: 25, scope: !134)
!134 = distinct !DILexicalBlock(scope: !129, file: !1, line: 64, column: 50)
!135 = !DILocation(line: 65, column: 17, scope: !134)
!136 = !DILocation(line: 66, column: 17, scope: !134)
!137 = !DILocation(line: 68, column: 9, scope: !127)
!138 = distinct !{!138, !117, !139, !140}
!139 = !DILocation(line: 69, column: 5, scope: !81)
!140 = !{!"llvm.loop.mustprogress"}
!141 = !DILocation(line: 71, column: 12, scope: !81)
!142 = !DILocation(line: 71, column: 5, scope: !81)
!143 = !DILocation(line: 72, column: 1, scope: !81)
!144 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 74, type: !145, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!145 = !DISubroutineType(types: !146)
!146 = !{!4}
!147 = !DILocalVariable(name: "ctxt", scope: !144, file: !1, line: 76, type: !26)
!148 = !DILocation(line: 76, column: 19, scope: !144)
!149 = !DILocation(line: 77, column: 24, scope: !144)
!150 = !DILocation(line: 77, column: 5, scope: !144)
!151 = !DILocation(line: 79, column: 22, scope: !144)
!152 = !DILocation(line: 79, column: 30, scope: !144)
!153 = !DILocation(line: 79, column: 17, scope: !144)
!154 = !DILocation(line: 79, column: 5, scope: !144)
!155 = !DILocalVariable(name: "len", scope: !144, file: !1, line: 82, type: !4)
!156 = !DILocation(line: 82, column: 9, scope: !144)
!157 = !DILocation(line: 83, column: 24, scope: !144)
!158 = !DILocation(line: 83, column: 5, scope: !144)
!159 = !DILocation(line: 85, column: 17, scope: !144)
!160 = !DILocation(line: 85, column: 21, scope: !144)
!161 = !DILocation(line: 85, column: 5, scope: !144)
!162 = !DILocation(line: 86, column: 17, scope: !144)
!163 = !DILocation(line: 86, column: 21, scope: !144)
!164 = !DILocation(line: 86, column: 5, scope: !144)
!165 = !DILocalVariable(name: "buf", scope: !144, file: !1, line: 89, type: !8)
!166 = !DILocation(line: 89, column: 14, scope: !144)
!167 = !DILocation(line: 89, column: 37, scope: !144)
!168 = !DILocation(line: 89, column: 41, scope: !144)
!169 = !DILocation(line: 89, column: 30, scope: !144)
!170 = !DILocation(line: 90, column: 9, scope: !171)
!171 = distinct !DILexicalBlock(scope: !144, file: !1, line: 90, column: 9)
!172 = !DILocation(line: 90, column: 13, scope: !171)
!173 = !DILocation(line: 90, column: 9, scope: !144)
!174 = !DILocation(line: 90, column: 22, scope: !171)
!175 = !DILocation(line: 91, column: 24, scope: !144)
!176 = !DILocation(line: 91, column: 29, scope: !144)
!177 = !DILocation(line: 91, column: 33, scope: !144)
!178 = !DILocation(line: 91, column: 5, scope: !144)
!179 = !DILocalVariable(name: "c", scope: !144, file: !1, line: 94, type: !4)
!180 = !DILocation(line: 94, column: 9, scope: !144)
!181 = !DILocation(line: 95, column: 24, scope: !144)
!182 = !DILocation(line: 95, column: 5, scope: !144)
!183 = !DILocalVariable(name: "result", scope: !144, file: !1, line: 98, type: !8)
!184 = !DILocation(line: 98, column: 14, scope: !144)
!185 = !DILocation(line: 98, column: 46, scope: !144)
!186 = !DILocation(line: 98, column: 51, scope: !144)
!187 = !DILocation(line: 98, column: 56, scope: !144)
!188 = !DILocation(line: 98, column: 23, scope: !144)
!189 = !DILocation(line: 102, column: 9, scope: !190)
!190 = distinct !DILexicalBlock(scope: !144, file: !1, line: 102, column: 9)
!191 = !DILocation(line: 102, column: 16, scope: !190)
!192 = !DILocation(line: 102, column: 9, scope: !144)
!193 = !DILocation(line: 103, column: 9, scope: !194)
!194 = distinct !DILexicalBlock(scope: !190, file: !1, line: 102, column: 25)
!195 = !DILocation(line: 105, column: 9, scope: !194)
!196 = !DILocation(line: 106, column: 5, scope: !194)
!197 = !DILocation(line: 109, column: 9, scope: !198)
!198 = distinct !DILexicalBlock(scope: !144, file: !1, line: 109, column: 9)
!199 = !DILocation(line: 109, column: 9, scope: !144)
!200 = !DILocation(line: 109, column: 25, scope: !198)
!201 = !DILocation(line: 109, column: 17, scope: !198)
!202 = !DILocation(line: 110, column: 10, scope: !144)
!203 = !DILocation(line: 110, column: 5, scope: !144)
!204 = !DILocation(line: 112, column: 5, scope: !144)
!205 = !DILocation(line: 113, column: 1, scope: !144)
!206 = distinct !DISubprogram(name: "memcpy", scope: !207, file: !207, line: 12, type: !208, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !34)
!207 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!208 = !DISubroutineType(types: !209)
!209 = !{!11, !11, !210, !45}
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!212 = !DILocalVariable(name: "destaddr", arg: 1, scope: !206, file: !207, line: 12, type: !11)
!213 = !DILocation(line: 12, column: 20, scope: !206)
!214 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !206, file: !207, line: 12, type: !210)
!215 = !DILocation(line: 12, column: 42, scope: !206)
!216 = !DILocalVariable(name: "len", arg: 3, scope: !206, file: !207, line: 12, type: !45)
!217 = !DILocation(line: 12, column: 58, scope: !206)
!218 = !DILocalVariable(name: "dest", scope: !206, file: !207, line: 13, type: !219)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!220 = !DILocation(line: 13, column: 9, scope: !206)
!221 = !DILocation(line: 13, column: 16, scope: !206)
!222 = !DILocalVariable(name: "src", scope: !206, file: !207, line: 14, type: !31)
!223 = !DILocation(line: 14, column: 15, scope: !206)
!224 = !DILocation(line: 14, column: 21, scope: !206)
!225 = !DILocation(line: 16, column: 3, scope: !206)
!226 = !DILocation(line: 16, column: 13, scope: !206)
!227 = !DILocation(line: 16, column: 16, scope: !206)
!228 = !DILocation(line: 17, column: 19, scope: !206)
!229 = !DILocation(line: 17, column: 15, scope: !206)
!230 = !DILocation(line: 17, column: 10, scope: !206)
!231 = !DILocation(line: 17, column: 13, scope: !206)
!232 = distinct !{!232, !225, !228, !140}
!233 = !DILocation(line: 18, column: 10, scope: !206)
!234 = !DILocation(line: 18, column: 3, scope: !206)

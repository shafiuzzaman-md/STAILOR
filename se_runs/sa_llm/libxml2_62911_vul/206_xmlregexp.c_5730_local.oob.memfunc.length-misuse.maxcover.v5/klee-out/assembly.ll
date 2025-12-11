; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/206_xmlregexp.c_5730_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/206_xmlregexp.c_5730_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRegAtom = type { i8* }

@.str = private unnamed_addr constant [6 x i8] c"token\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"token2\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"lenp\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"lenn\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.5 = private unnamed_addr constant [76 x i8] c"(lenp >= 0 && lenp < 100 && lenn >= 0 && lenn < 100) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_62911_vul/206_xmlregexp.c_5730_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMallocAtomic(i64 noundef %0) #0 !dbg !22 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !29, metadata !DIExpression()), !dbg !30
  %3 = load i64, i64* %2, align 8, !dbg !31
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !32
  ret i8* %4, !dbg !33
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlRegFreeAtom(%struct._xmlRegAtom* noundef %0) #0 !dbg !34 {
  %2 = alloca %struct._xmlRegAtom*, align 8
  store %struct._xmlRegAtom* %0, %struct._xmlRegAtom** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRegAtom** %2, metadata !37, metadata !DIExpression()), !dbg !38
  %3 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %2, align 8, !dbg !39
  %4 = bitcast %struct._xmlRegAtom* %3 to i8*, !dbg !39
  call void @free(i8* noundef %4) #7, !dbg !40
  ret void, !dbg !41
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlRegAtom* @xmlRegNewAtom() #0 !dbg !42 {
  %1 = alloca %struct._xmlRegAtom*, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRegAtom** %1, metadata !45, metadata !DIExpression()), !dbg !46
  %2 = call noalias i8* @malloc(i64 noundef 8) #7, !dbg !47
  %3 = bitcast i8* %2 to %struct._xmlRegAtom*, !dbg !48
  store %struct._xmlRegAtom* %3, %struct._xmlRegAtom** %1, align 8, !dbg !46
  %4 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %1, align 8, !dbg !49
  %5 = icmp ne %struct._xmlRegAtom* %4, null, !dbg !49
  br i1 %5, label %6, label %9, !dbg !51

6:                                                ; preds = %0
  %7 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %1, align 8, !dbg !52
  %8 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %7, i32 0, i32 0, !dbg !54
  store i8* null, i8** %8, align 8, !dbg !55
  br label %9, !dbg !56

9:                                                ; preds = %6, %0
  %10 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %1, align 8, !dbg !57
  ret %struct._xmlRegAtom* %10, !dbg !58
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @target_function(i8* noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3) #0 !dbg !59 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct._xmlRegAtom*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !63, metadata !DIExpression()), !dbg !64
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !65, metadata !DIExpression()), !dbg !66
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !67, metadata !DIExpression()), !dbg !68
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !69, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.declare(metadata i8** %10, metadata !71, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.declare(metadata %struct._xmlRegAtom** %11, metadata !73, metadata !DIExpression()), !dbg !74
  %12 = call %struct._xmlRegAtom* @xmlRegNewAtom(), !dbg !75
  store %struct._xmlRegAtom* %12, %struct._xmlRegAtom** %11, align 8, !dbg !74
  %13 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %11, align 8, !dbg !76
  %14 = icmp eq %struct._xmlRegAtom* %13, null, !dbg !78
  br i1 %14, label %15, label %16, !dbg !79

15:                                               ; preds = %4
  store i8* null, i8** %5, align 8, !dbg !80
  br label %58, !dbg !80

16:                                               ; preds = %4
  %17 = load i32, i32* %9, align 4, !dbg !82
  %18 = load i32, i32* %7, align 4, !dbg !83
  %19 = add nsw i32 %17, %18, !dbg !84
  %20 = add nsw i32 %19, 2, !dbg !85
  %21 = sext i32 %20 to i64, !dbg !82
  %22 = call i8* @xmlMallocAtomic(i64 noundef %21), !dbg !86
  store i8* %22, i8** %10, align 8, !dbg !87
  %23 = load i8*, i8** %10, align 8, !dbg !88
  %24 = icmp eq i8* %23, null, !dbg !90
  br i1 %24, label %25, label %27, !dbg !91

25:                                               ; preds = %16
  %26 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %11, align 8, !dbg !92
  call void @xmlRegFreeAtom(%struct._xmlRegAtom* noundef %26), !dbg !94
  store i8* null, i8** %5, align 8, !dbg !95
  br label %58, !dbg !95

27:                                               ; preds = %16
  %28 = load i8*, i8** %10, align 8, !dbg !96
  %29 = getelementptr inbounds i8, i8* %28, i64 0, !dbg !96
  %30 = load i8*, i8** %6, align 8, !dbg !97
  %31 = load i32, i32* %7, align 4, !dbg !98
  %32 = sext i32 %31 to i64, !dbg !98
  %33 = call i8* @memcpy(i8* %29, i8* %30, i64 %32), !dbg !99
  %34 = load i8*, i8** %10, align 8, !dbg !100
  %35 = load i32, i32* %7, align 4, !dbg !101
  %36 = sext i32 %35 to i64, !dbg !100
  %37 = getelementptr inbounds i8, i8* %34, i64 %36, !dbg !100
  store i8 124, i8* %37, align 1, !dbg !102
  %38 = load i8*, i8** %10, align 8, !dbg !103
  %39 = load i32, i32* %7, align 4, !dbg !104
  %40 = add nsw i32 %39, 1, !dbg !105
  %41 = sext i32 %40 to i64, !dbg !103
  %42 = getelementptr inbounds i8, i8* %38, i64 %41, !dbg !103
  %43 = load i8*, i8** %8, align 8, !dbg !106
  %44 = load i32, i32* %9, align 4, !dbg !107
  %45 = sext i32 %44 to i64, !dbg !107
  %46 = call i8* @memcpy(i8* %42, i8* %43, i64 %45), !dbg !108
  %47 = load i8*, i8** %10, align 8, !dbg !109
  %48 = load i32, i32* %9, align 4, !dbg !110
  %49 = load i32, i32* %7, align 4, !dbg !111
  %50 = add nsw i32 %48, %49, !dbg !112
  %51 = add nsw i32 %50, 1, !dbg !113
  %52 = sext i32 %51 to i64, !dbg !109
  %53 = getelementptr inbounds i8, i8* %47, i64 %52, !dbg !109
  store i8 0, i8* %53, align 1, !dbg !114
  %54 = load i8*, i8** %10, align 8, !dbg !115
  %55 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %11, align 8, !dbg !116
  %56 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %55, i32 0, i32 0, !dbg !117
  store i8* %54, i8** %56, align 8, !dbg !118
  %57 = load i8*, i8** %10, align 8, !dbg !119
  store i8* %57, i8** %5, align 8, !dbg !120
  br label %58, !dbg !120

58:                                               ; preds = %27, %25, %15
  %59 = load i8*, i8** %5, align 8, !dbg !121
  ret i8* %59, !dbg !121
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !122 {
  %1 = alloca i32, align 4
  %2 = alloca [100 x i8], align 16
  %3 = alloca [100 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [100 x i8]* %2, metadata !125, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.declare(metadata [100 x i8]* %3, metadata !130, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.declare(metadata i32* %4, metadata !132, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.declare(metadata i32* %5, metadata !134, metadata !DIExpression()), !dbg !135
  %7 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0, !dbg !136
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 100, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)), !dbg !137
  %8 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0, !dbg !138
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 100, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)), !dbg !139
  %9 = bitcast i32* %4 to i8*, !dbg !140
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !dbg !141
  %10 = bitcast i32* %5 to i8*, !dbg !142
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)), !dbg !143
  %11 = load i32, i32* %4, align 4, !dbg !144
  %12 = icmp sge i32 %11, 0, !dbg !145
  br i1 %12, label %13, label %16, !dbg !146

13:                                               ; preds = %0
  %14 = load i32, i32* %4, align 4, !dbg !147
  %15 = icmp slt i32 %14, 100, !dbg !148
  br label %16

16:                                               ; preds = %13, %0
  %17 = phi i1 [ false, %0 ], [ %15, %13 ], !dbg !149
  %18 = zext i1 %17 to i32, !dbg !146
  %19 = sext i32 %18 to i64, !dbg !144
  call void @klee_assume(i64 noundef %19), !dbg !150
  %20 = load i32, i32* %5, align 4, !dbg !151
  %21 = icmp sge i32 %20, 0, !dbg !152
  br i1 %21, label %22, label %25, !dbg !153

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4, !dbg !154
  %24 = icmp slt i32 %23, 100, !dbg !155
  br label %25

25:                                               ; preds = %22, %16
  %26 = phi i1 [ false, %16 ], [ %24, %22 ], !dbg !149
  %27 = zext i1 %26 to i32, !dbg !153
  %28 = sext i32 %27 to i64, !dbg !151
  call void @klee_assume(i64 noundef %28), !dbg !156
  %29 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 99, !dbg !157
  store i8 0, i8* %29, align 1, !dbg !158
  %30 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 99, !dbg !159
  store i8 0, i8* %30, align 1, !dbg !160
  call void @llvm.dbg.declare(metadata i8** %6, metadata !161, metadata !DIExpression()), !dbg !162
  %31 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0, !dbg !163
  %32 = load i32, i32* %4, align 4, !dbg !164
  %33 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0, !dbg !165
  %34 = load i32, i32* %5, align 4, !dbg !166
  %35 = call i8* @target_function(i8* noundef %31, i32 noundef %32, i8* noundef %33, i32 noundef %34), !dbg !167
  store i8* %35, i8** %6, align 8, !dbg !162
  %36 = load i8*, i8** %6, align 8, !dbg !168
  %37 = icmp ne i8* %36, null, !dbg !170
  br i1 %37, label %38, label %57, !dbg !171

38:                                               ; preds = %25
  %39 = load i32, i32* %4, align 4, !dbg !172
  %40 = icmp sge i32 %39, 0, !dbg !172
  br i1 %40, label %41, label %52, !dbg !172

41:                                               ; preds = %38
  %42 = load i32, i32* %4, align 4, !dbg !172
  %43 = icmp slt i32 %42, 100, !dbg !172
  br i1 %43, label %44, label %52, !dbg !172

44:                                               ; preds = %41
  %45 = load i32, i32* %5, align 4, !dbg !172
  %46 = icmp sge i32 %45, 0, !dbg !172
  br i1 %46, label %47, label %52, !dbg !172

47:                                               ; preds = %44
  %48 = load i32, i32* %5, align 4, !dbg !172
  %49 = icmp slt i32 %48, 100, !dbg !172
  br i1 %49, label %50, label %52, !dbg !172

50:                                               ; preds = %47
  br i1 true, label %51, label %52, !dbg !172

51:                                               ; preds = %50
  br label %54, !dbg !172

52:                                               ; preds = %50, %47, %44, %41, %38
  %53 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.6, i64 0, i64 0), i32 noundef 96, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !172
  br label %54, !dbg !172

54:                                               ; preds = %52, %51
  %55 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.6, i64 0, i64 0), i32 noundef 99, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !174
  %56 = load i8*, i8** %6, align 8, !dbg !175
  call void @free(i8* noundef %56) #7, !dbg !176
  br label %57, !dbg !177

57:                                               ; preds = %54, %25
  ret i32 0, !dbg !178
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !179 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !185, metadata !DIExpression()), !dbg !186
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !187, metadata !DIExpression()), !dbg !188
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !189, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.declare(metadata i8** %7, metadata !191, metadata !DIExpression()), !dbg !194
  %9 = load i8*, i8** %4, align 8, !dbg !195
  store i8* %9, i8** %7, align 8, !dbg !194
  call void @llvm.dbg.declare(metadata i8** %8, metadata !196, metadata !DIExpression()), !dbg !199
  %10 = load i8*, i8** %5, align 8, !dbg !200
  store i8* %10, i8** %8, align 8, !dbg !199
  br label %11, !dbg !201

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !202
  %13 = add i64 %12, -1, !dbg !202
  store i64 %13, i64* %6, align 8, !dbg !202
  %14 = icmp ugt i64 %12, 0, !dbg !203
  br i1 %14, label %15, label %21, !dbg !201

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !204
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !204
  store i8* %17, i8** %8, align 8, !dbg !204
  %18 = load i8, i8* %16, align 1, !dbg !205
  %19 = load i8*, i8** %7, align 8, !dbg !206
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !206
  store i8* %20, i8** %7, align 8, !dbg !206
  store i8 %18, i8* %19, align 1, !dbg !207
  br label %11, !dbg !201, !llvm.loop !208

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !210
  ret i8* %22, !dbg !211
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21, !21}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/206_xmlregexp.c_5730_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "cc3ac8e194df5cee191642c1aec5b08f")
!2 = !{!3, !11, !8}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegAtom", file: !1, line: 11, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegAtom", file: !1, line: 12, size: 64, elements: !6)
!6 = !{!7}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "valuep", scope: !5, file: !1, line: 13, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !1, line: 10, baseType: !10)
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
!22 = distinct !DISubprogram(name: "xmlMallocAtomic", scope: !1, file: !1, line: 18, type: !23, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!23 = !DISubroutineType(types: !24)
!24 = !{!11, !25}
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !26, line: 46, baseType: !27)
!26 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!27 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!28 = !{}
!29 = !DILocalVariable(name: "size", arg: 1, scope: !22, file: !1, line: 18, type: !25)
!30 = !DILocation(line: 18, column: 30, scope: !22)
!31 = !DILocation(line: 19, column: 19, scope: !22)
!32 = !DILocation(line: 19, column: 12, scope: !22)
!33 = !DILocation(line: 19, column: 5, scope: !22)
!34 = distinct !DISubprogram(name: "xmlRegFreeAtom", scope: !1, file: !1, line: 22, type: !35, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!35 = !DISubroutineType(types: !36)
!36 = !{null, !3}
!37 = !DILocalVariable(name: "atom", arg: 1, scope: !34, file: !1, line: 22, type: !3)
!38 = !DILocation(line: 22, column: 33, scope: !34)
!39 = !DILocation(line: 23, column: 10, scope: !34)
!40 = !DILocation(line: 23, column: 5, scope: !34)
!41 = !DILocation(line: 24, column: 1, scope: !34)
!42 = distinct !DISubprogram(name: "xmlRegNewAtom", scope: !1, file: !1, line: 26, type: !43, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!43 = !DISubroutineType(types: !44)
!44 = !{!3}
!45 = !DILocalVariable(name: "atom", scope: !42, file: !1, line: 27, type: !3)
!46 = !DILocation(line: 27, column: 17, scope: !42)
!47 = !DILocation(line: 27, column: 37, scope: !42)
!48 = !DILocation(line: 27, column: 24, scope: !42)
!49 = !DILocation(line: 28, column: 9, scope: !50)
!50 = distinct !DILexicalBlock(scope: !42, file: !1, line: 28, column: 9)
!51 = !DILocation(line: 28, column: 9, scope: !42)
!52 = !DILocation(line: 29, column: 9, scope: !53)
!53 = distinct !DILexicalBlock(scope: !50, file: !1, line: 28, column: 15)
!54 = !DILocation(line: 29, column: 15, scope: !53)
!55 = !DILocation(line: 29, column: 22, scope: !53)
!56 = !DILocation(line: 30, column: 5, scope: !53)
!57 = !DILocation(line: 31, column: 12, scope: !42)
!58 = !DILocation(line: 31, column: 5, scope: !42)
!59 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 35, type: !60, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!60 = !DISubroutineType(types: !61)
!61 = !{!8, !8, !62, !8, !62}
!62 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!63 = !DILocalVariable(name: "token", arg: 1, scope: !59, file: !1, line: 35, type: !8)
!64 = !DILocation(line: 35, column: 35, scope: !59)
!65 = !DILocalVariable(name: "lenp", arg: 2, scope: !59, file: !1, line: 35, type: !62)
!66 = !DILocation(line: 35, column: 46, scope: !59)
!67 = !DILocalVariable(name: "token2", arg: 3, scope: !59, file: !1, line: 35, type: !8)
!68 = !DILocation(line: 35, column: 61, scope: !59)
!69 = !DILocalVariable(name: "lenn", arg: 4, scope: !59, file: !1, line: 35, type: !62)
!70 = !DILocation(line: 35, column: 73, scope: !59)
!71 = !DILocalVariable(name: "str", scope: !59, file: !1, line: 36, type: !8)
!72 = !DILocation(line: 36, column: 14, scope: !59)
!73 = !DILocalVariable(name: "atom", scope: !59, file: !1, line: 37, type: !3)
!74 = !DILocation(line: 37, column: 17, scope: !59)
!75 = !DILocation(line: 37, column: 24, scope: !59)
!76 = !DILocation(line: 38, column: 9, scope: !77)
!77 = distinct !DILexicalBlock(scope: !59, file: !1, line: 38, column: 9)
!78 = !DILocation(line: 38, column: 14, scope: !77)
!79 = !DILocation(line: 38, column: 9, scope: !59)
!80 = !DILocation(line: 39, column: 9, scope: !81)
!81 = distinct !DILexicalBlock(scope: !77, file: !1, line: 38, column: 23)
!82 = !DILocation(line: 42, column: 37, scope: !59)
!83 = !DILocation(line: 42, column: 44, scope: !59)
!84 = !DILocation(line: 42, column: 42, scope: !59)
!85 = !DILocation(line: 42, column: 49, scope: !59)
!86 = !DILocation(line: 42, column: 21, scope: !59)
!87 = !DILocation(line: 42, column: 9, scope: !59)
!88 = !DILocation(line: 43, column: 9, scope: !89)
!89 = distinct !DILexicalBlock(scope: !59, file: !1, line: 43, column: 9)
!90 = !DILocation(line: 43, column: 13, scope: !89)
!91 = !DILocation(line: 43, column: 9, scope: !59)
!92 = !DILocation(line: 44, column: 24, scope: !93)
!93 = distinct !DILexicalBlock(scope: !89, file: !1, line: 43, column: 22)
!94 = !DILocation(line: 44, column: 9, scope: !93)
!95 = !DILocation(line: 45, column: 9, scope: !93)
!96 = !DILocation(line: 49, column: 13, scope: !59)
!97 = !DILocation(line: 49, column: 21, scope: !59)
!98 = !DILocation(line: 49, column: 28, scope: !59)
!99 = !DILocation(line: 49, column: 5, scope: !59)
!100 = !DILocation(line: 50, column: 5, scope: !59)
!101 = !DILocation(line: 50, column: 9, scope: !59)
!102 = !DILocation(line: 50, column: 15, scope: !59)
!103 = !DILocation(line: 51, column: 13, scope: !59)
!104 = !DILocation(line: 51, column: 17, scope: !59)
!105 = !DILocation(line: 51, column: 22, scope: !59)
!106 = !DILocation(line: 51, column: 28, scope: !59)
!107 = !DILocation(line: 51, column: 36, scope: !59)
!108 = !DILocation(line: 51, column: 5, scope: !59)
!109 = !DILocation(line: 52, column: 5, scope: !59)
!110 = !DILocation(line: 52, column: 9, scope: !59)
!111 = !DILocation(line: 52, column: 16, scope: !59)
!112 = !DILocation(line: 52, column: 14, scope: !59)
!113 = !DILocation(line: 52, column: 21, scope: !59)
!114 = !DILocation(line: 52, column: 26, scope: !59)
!115 = !DILocation(line: 54, column: 20, scope: !59)
!116 = !DILocation(line: 54, column: 5, scope: !59)
!117 = !DILocation(line: 54, column: 11, scope: !59)
!118 = !DILocation(line: 54, column: 18, scope: !59)
!119 = !DILocation(line: 57, column: 12, scope: !59)
!120 = !DILocation(line: 57, column: 5, scope: !59)
!121 = !DILocation(line: 58, column: 1, scope: !59)
!122 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 60, type: !123, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!123 = !DISubroutineType(types: !124)
!124 = !{!62}
!125 = !DILocalVariable(name: "token", scope: !122, file: !1, line: 62, type: !126)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 800, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 100)
!129 = !DILocation(line: 62, column: 13, scope: !122)
!130 = !DILocalVariable(name: "token2", scope: !122, file: !1, line: 63, type: !126)
!131 = !DILocation(line: 63, column: 13, scope: !122)
!132 = !DILocalVariable(name: "lenp", scope: !122, file: !1, line: 64, type: !62)
!133 = !DILocation(line: 64, column: 9, scope: !122)
!134 = !DILocalVariable(name: "lenn", scope: !122, file: !1, line: 64, type: !62)
!135 = !DILocation(line: 64, column: 15, scope: !122)
!136 = !DILocation(line: 67, column: 24, scope: !122)
!137 = !DILocation(line: 67, column: 5, scope: !122)
!138 = !DILocation(line: 68, column: 24, scope: !122)
!139 = !DILocation(line: 68, column: 5, scope: !122)
!140 = !DILocation(line: 69, column: 24, scope: !122)
!141 = !DILocation(line: 69, column: 5, scope: !122)
!142 = !DILocation(line: 70, column: 24, scope: !122)
!143 = !DILocation(line: 70, column: 5, scope: !122)
!144 = !DILocation(line: 73, column: 17, scope: !122)
!145 = !DILocation(line: 73, column: 22, scope: !122)
!146 = !DILocation(line: 73, column: 27, scope: !122)
!147 = !DILocation(line: 73, column: 30, scope: !122)
!148 = !DILocation(line: 73, column: 35, scope: !122)
!149 = !DILocation(line: 0, scope: !122)
!150 = !DILocation(line: 73, column: 5, scope: !122)
!151 = !DILocation(line: 74, column: 17, scope: !122)
!152 = !DILocation(line: 74, column: 22, scope: !122)
!153 = !DILocation(line: 74, column: 27, scope: !122)
!154 = !DILocation(line: 74, column: 30, scope: !122)
!155 = !DILocation(line: 74, column: 35, scope: !122)
!156 = !DILocation(line: 74, column: 5, scope: !122)
!157 = !DILocation(line: 77, column: 5, scope: !122)
!158 = !DILocation(line: 77, column: 15, scope: !122)
!159 = !DILocation(line: 78, column: 5, scope: !122)
!160 = !DILocation(line: 78, column: 16, scope: !122)
!161 = !DILocalVariable(name: "result", scope: !122, file: !1, line: 81, type: !8)
!162 = !DILocation(line: 81, column: 14, scope: !122)
!163 = !DILocation(line: 81, column: 39, scope: !122)
!164 = !DILocation(line: 81, column: 46, scope: !122)
!165 = !DILocation(line: 81, column: 52, scope: !122)
!166 = !DILocation(line: 81, column: 60, scope: !122)
!167 = !DILocation(line: 81, column: 23, scope: !122)
!168 = !DILocation(line: 94, column: 9, scope: !169)
!169 = distinct !DILexicalBlock(scope: !122, file: !1, line: 94, column: 9)
!170 = !DILocation(line: 94, column: 16, scope: !169)
!171 = !DILocation(line: 94, column: 9, scope: !122)
!172 = !DILocation(line: 96, column: 9, scope: !173)
!173 = distinct !DILexicalBlock(scope: !169, file: !1, line: 94, column: 25)
!174 = !DILocation(line: 99, column: 9, scope: !173)
!175 = !DILocation(line: 101, column: 14, scope: !173)
!176 = !DILocation(line: 101, column: 9, scope: !173)
!177 = !DILocation(line: 102, column: 5, scope: !173)
!178 = !DILocation(line: 104, column: 5, scope: !122)
!179 = distinct !DISubprogram(name: "memcpy", scope: !180, file: !180, line: 12, type: !181, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !28)
!180 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!181 = !DISubroutineType(types: !182)
!182 = !{!11, !11, !183, !25}
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!185 = !DILocalVariable(name: "destaddr", arg: 1, scope: !179, file: !180, line: 12, type: !11)
!186 = !DILocation(line: 12, column: 20, scope: !179)
!187 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !179, file: !180, line: 12, type: !183)
!188 = !DILocation(line: 12, column: 42, scope: !179)
!189 = !DILocalVariable(name: "len", arg: 3, scope: !179, file: !180, line: 12, type: !25)
!190 = !DILocation(line: 12, column: 58, scope: !179)
!191 = !DILocalVariable(name: "dest", scope: !179, file: !180, line: 13, type: !192)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!194 = !DILocation(line: 13, column: 9, scope: !179)
!195 = !DILocation(line: 13, column: 16, scope: !179)
!196 = !DILocalVariable(name: "src", scope: !179, file: !180, line: 14, type: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!199 = !DILocation(line: 14, column: 15, scope: !179)
!200 = !DILocation(line: 14, column: 21, scope: !179)
!201 = !DILocation(line: 16, column: 3, scope: !179)
!202 = !DILocation(line: 16, column: 13, scope: !179)
!203 = !DILocation(line: 16, column: 16, scope: !179)
!204 = !DILocation(line: 17, column: 19, scope: !179)
!205 = !DILocation(line: 17, column: 15, scope: !179)
!206 = !DILocation(line: 17, column: 10, scope: !179)
!207 = !DILocation(line: 17, column: 13, scope: !179)
!208 = distinct !{!208, !201, !204, !209}
!209 = !{!"llvm.loop.mustprogress"}
!210 = !DILocation(line: 18, column: 10, scope: !179)
!211 = !DILocation(line: 18, column: 3, scope: !179)

; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/138_xmlregexp.c_6060_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/138_xmlregexp.c_6060_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRegAtom = type { i8*, i8* }

@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"(lenp <= strlen((char*)token)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_55980_vul/138_xmlregexp.c_6060_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlRegNewAtom = private unnamed_addr constant [61 x i8] c"xmlRegAtom *xmlRegNewAtom(xmlChar *, xmlChar *, void *, int)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"token\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"token2\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"min\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMallocAtomic(i64 noundef %0) #0 !dbg !25 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !32, metadata !DIExpression()), !dbg !33
  %3 = load i64, i64* %2, align 8, !dbg !34
  %4 = call noalias i8* @malloc(i64 noundef %3) #8, !dbg !35
  ret i8* %4, !dbg !36
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlRegFreeAtom(%struct._xmlRegAtom* noundef %0) #0 !dbg !37 {
  %2 = alloca %struct._xmlRegAtom*, align 8
  store %struct._xmlRegAtom* %0, %struct._xmlRegAtom** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRegAtom** %2, metadata !40, metadata !DIExpression()), !dbg !41
  %3 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %2, align 8, !dbg !42
  %4 = icmp ne %struct._xmlRegAtom* %3, null, !dbg !42
  br i1 %4, label %5, label %14, !dbg !44

5:                                                ; preds = %1
  %6 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %2, align 8, !dbg !45
  %7 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %6, i32 0, i32 0, !dbg !46
  %8 = load i8*, i8** %7, align 8, !dbg !46
  %9 = icmp ne i8* %8, null, !dbg !45
  br i1 %9, label %10, label %14, !dbg !47

10:                                               ; preds = %5
  %11 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %2, align 8, !dbg !48
  %12 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %11, i32 0, i32 0, !dbg !50
  %13 = load i8*, i8** %12, align 8, !dbg !50
  call void @free(i8* noundef %13) #8, !dbg !51
  br label %14, !dbg !52

14:                                               ; preds = %10, %5, %1
  %15 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %2, align 8, !dbg !53
  %16 = bitcast %struct._xmlRegAtom* %15 to i8*, !dbg !53
  call void @free(i8* noundef %16) #8, !dbg !54
  ret void, !dbg !55
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlRegAtom* @xmlRegNewAtom(i8* noundef %0, i8* noundef %1, i8* noundef %2, i32 noundef %3) #0 !dbg !56 {
  %5 = alloca %struct._xmlRegAtom*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct._xmlRegAtom*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !60, metadata !DIExpression()), !dbg !61
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !62, metadata !DIExpression()), !dbg !63
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !64, metadata !DIExpression()), !dbg !65
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !66, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.declare(metadata %struct._xmlRegAtom** %10, metadata !68, metadata !DIExpression()), !dbg !69
  %14 = call noalias i8* @malloc(i64 noundef 16) #8, !dbg !70
  %15 = bitcast i8* %14 to %struct._xmlRegAtom*, !dbg !71
  store %struct._xmlRegAtom* %15, %struct._xmlRegAtom** %10, align 8, !dbg !69
  %16 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %10, align 8, !dbg !72
  %17 = icmp ne %struct._xmlRegAtom* %16, null, !dbg !72
  br i1 %17, label %19, label %18, !dbg !74

18:                                               ; preds = %4
  store %struct._xmlRegAtom* null, %struct._xmlRegAtom** %5, align 8, !dbg !75
  br label %76, !dbg !75

19:                                               ; preds = %4
  %20 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %10, align 8, !dbg !76
  %21 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %20, i32 0, i32 0, !dbg !77
  store i8* null, i8** %21, align 8, !dbg !78
  %22 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %10, align 8, !dbg !79
  %23 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %22, i32 0, i32 1, !dbg !80
  store i8* null, i8** %23, align 8, !dbg !81
  call void @llvm.dbg.declare(metadata i64* %11, metadata !82, metadata !DIExpression()), !dbg !83
  %24 = load i8*, i8** %7, align 8, !dbg !84
  %25 = call i64 @strlen(i8* noundef %24) #9, !dbg !85
  store i64 %25, i64* %11, align 8, !dbg !83
  call void @llvm.dbg.declare(metadata i64* %12, metadata !86, metadata !DIExpression()), !dbg !87
  %26 = load i8*, i8** %6, align 8, !dbg !88
  %27 = call i64 @strlen(i8* noundef %26) #9, !dbg !89
  store i64 %27, i64* %12, align 8, !dbg !87
  call void @llvm.dbg.declare(metadata i8** %13, metadata !90, metadata !DIExpression()), !dbg !91
  %28 = load i64, i64* %11, align 8, !dbg !92
  %29 = load i64, i64* %12, align 8, !dbg !93
  %30 = add i64 %28, %29, !dbg !94
  %31 = add i64 %30, 2, !dbg !95
  %32 = call i8* @xmlMallocAtomic(i64 noundef %31), !dbg !96
  store i8* %32, i8** %13, align 8, !dbg !91
  %33 = load i8*, i8** %13, align 8, !dbg !97
  %34 = icmp eq i8* %33, null, !dbg !99
  br i1 %34, label %35, label %37, !dbg !100

35:                                               ; preds = %19
  %36 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %10, align 8, !dbg !101
  call void @xmlRegFreeAtom(%struct._xmlRegAtom* noundef %36), !dbg !103
  store %struct._xmlRegAtom* null, %struct._xmlRegAtom** %5, align 8, !dbg !104
  br label %76, !dbg !104

37:                                               ; preds = %19
  %38 = load i8*, i8** %13, align 8, !dbg !105
  %39 = getelementptr inbounds i8, i8* %38, i64 0, !dbg !105
  %40 = load i8*, i8** %6, align 8, !dbg !106
  %41 = load i64, i64* %12, align 8, !dbg !107
  %42 = call i8* @memcpy(i8* %39, i8* %40, i64 %41), !dbg !108
  %43 = load i64, i64* %12, align 8, !dbg !109
  %44 = load i8*, i8** %6, align 8, !dbg !109
  %45 = call i64 @strlen(i8* noundef %44) #9, !dbg !109
  %46 = icmp ule i64 %43, %45, !dbg !109
  br i1 %46, label %47, label %49, !dbg !109

47:                                               ; preds = %37
  br i1 true, label %48, label %49, !dbg !109

48:                                               ; preds = %47
  br label %51, !dbg !109

49:                                               ; preds = %47, %37
  %50 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.2, i64 0, i64 0), i32 noundef 53, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @__PRETTY_FUNCTION__.xmlRegNewAtom, i64 0, i64 0)), !dbg !109
  br label %51, !dbg !109

51:                                               ; preds = %49, %48
  %52 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.2, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @__PRETTY_FUNCTION__.xmlRegNewAtom, i64 0, i64 0)), !dbg !110
  %53 = load i8*, i8** %13, align 8, !dbg !111
  %54 = load i64, i64* %12, align 8, !dbg !112
  %55 = getelementptr inbounds i8, i8* %53, i64 %54, !dbg !111
  store i8 124, i8* %55, align 1, !dbg !113
  %56 = load i8*, i8** %13, align 8, !dbg !114
  %57 = load i64, i64* %12, align 8, !dbg !115
  %58 = add i64 %57, 1, !dbg !116
  %59 = getelementptr inbounds i8, i8* %56, i64 %58, !dbg !114
  %60 = load i8*, i8** %7, align 8, !dbg !117
  %61 = load i64, i64* %11, align 8, !dbg !118
  %62 = call i8* @memcpy(i8* %59, i8* %60, i64 %61), !dbg !119
  %63 = load i8*, i8** %13, align 8, !dbg !120
  %64 = load i64, i64* %11, align 8, !dbg !121
  %65 = load i64, i64* %12, align 8, !dbg !122
  %66 = add i64 %64, %65, !dbg !123
  %67 = add i64 %66, 1, !dbg !124
  %68 = getelementptr inbounds i8, i8* %63, i64 %67, !dbg !120
  store i8 0, i8* %68, align 1, !dbg !125
  %69 = load i8*, i8** %13, align 8, !dbg !126
  %70 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %10, align 8, !dbg !127
  %71 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %70, i32 0, i32 0, !dbg !128
  store i8* %69, i8** %71, align 8, !dbg !129
  %72 = load i8*, i8** %8, align 8, !dbg !130
  %73 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %10, align 8, !dbg !131
  %74 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %73, i32 0, i32 1, !dbg !132
  store i8* %72, i8** %74, align 8, !dbg !133
  %75 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %10, align 8, !dbg !134
  store %struct._xmlRegAtom* %75, %struct._xmlRegAtom** %5, align 8, !dbg !135
  br label %76, !dbg !135

76:                                               ; preds = %51, %35, %18
  %77 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %5, align 8, !dbg !136
  ret %struct._xmlRegAtom* %77, !dbg !136
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !137 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca [256 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca %struct._xmlRegAtom*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !140, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !145, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.declare(metadata i32* %4, metadata !147, metadata !DIExpression()), !dbg !148
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !149
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 256, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)), !dbg !150
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !151
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 256, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)), !dbg !152
  %8 = bitcast i32* %4 to i8*, !dbg !153
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)), !dbg !154
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !155
  store i8 0, i8* %9, align 1, !dbg !156
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 255, !dbg !157
  store i8 0, i8* %10, align 1, !dbg !158
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !159
  %12 = call i64 @strlen(i8* noundef %11) #9, !dbg !160
  %13 = icmp ult i64 %12, 256, !dbg !161
  %14 = zext i1 %13 to i32, !dbg !161
  %15 = sext i32 %14 to i64, !dbg !160
  call void @klee_assume(i64 noundef %15), !dbg !162
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !163
  %17 = call i64 @strlen(i8* noundef %16) #9, !dbg !164
  %18 = icmp ult i64 %17, 256, !dbg !165
  %19 = zext i1 %18 to i32, !dbg !165
  %20 = sext i32 %19 to i64, !dbg !164
  call void @klee_assume(i64 noundef %20), !dbg !166
  call void @llvm.dbg.declare(metadata %struct._xmlRegAtom** %5, metadata !167, metadata !DIExpression()), !dbg !168
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !169
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !170
  %23 = load i32, i32* %4, align 4, !dbg !171
  %24 = call %struct._xmlRegAtom* @xmlRegNewAtom(i8* noundef %21, i8* noundef %22, i8* noundef null, i32 noundef %23), !dbg !172
  store %struct._xmlRegAtom* %24, %struct._xmlRegAtom** %5, align 8, !dbg !168
  %25 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %5, align 8, !dbg !173
  %26 = icmp ne %struct._xmlRegAtom* %25, null, !dbg !173
  br i1 %26, label %27, label %29, !dbg !175

27:                                               ; preds = %0
  %28 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %5, align 8, !dbg !176
  call void @xmlRegFreeAtom(%struct._xmlRegAtom* noundef %28), !dbg !178
  br label %29, !dbg !179

29:                                               ; preds = %27, %0
  ret i32 0, !dbg !180
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #6

declare void @klee_assume(i64 noundef) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !181 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !187, metadata !DIExpression()), !dbg !188
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !189, metadata !DIExpression()), !dbg !190
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !191, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.declare(metadata i8** %7, metadata !193, metadata !DIExpression()), !dbg !194
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
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24, !24}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/138_xmlregexp.c_6060_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "211d2d9983b7f7bb7c13d6150a6c5836")
!2 = !{!3, !12, !13, !8}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegAtom", file: !1, line: 13, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegAtom", file: !1, line: 14, size: 128, elements: !6)
!6 = !{!7, !11}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "valuep", scope: !5, file: !1, line: 15, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !1, line: 10, baseType: !10)
!10 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5, file: !1, line: 16, baseType: !12, size: 64, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
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
!25 = distinct !DISubprogram(name: "xmlMallocAtomic", scope: !1, file: !1, line: 20, type: !26, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!26 = !DISubroutineType(types: !27)
!27 = !{!12, !28}
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !29, line: 46, baseType: !30)
!29 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!30 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!31 = !{}
!32 = !DILocalVariable(name: "size", arg: 1, scope: !25, file: !1, line: 20, type: !28)
!33 = !DILocation(line: 20, column: 30, scope: !25)
!34 = !DILocation(line: 21, column: 19, scope: !25)
!35 = !DILocation(line: 21, column: 12, scope: !25)
!36 = !DILocation(line: 21, column: 5, scope: !25)
!37 = distinct !DISubprogram(name: "xmlRegFreeAtom", scope: !1, file: !1, line: 25, type: !38, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!38 = !DISubroutineType(types: !39)
!39 = !{null, !3}
!40 = !DILocalVariable(name: "atom", arg: 1, scope: !37, file: !1, line: 25, type: !3)
!41 = !DILocation(line: 25, column: 33, scope: !37)
!42 = !DILocation(line: 26, column: 9, scope: !43)
!43 = distinct !DILexicalBlock(scope: !37, file: !1, line: 26, column: 9)
!44 = !DILocation(line: 26, column: 14, scope: !43)
!45 = !DILocation(line: 26, column: 17, scope: !43)
!46 = !DILocation(line: 26, column: 23, scope: !43)
!47 = !DILocation(line: 26, column: 9, scope: !37)
!48 = !DILocation(line: 27, column: 14, scope: !49)
!49 = distinct !DILexicalBlock(scope: !43, file: !1, line: 26, column: 31)
!50 = !DILocation(line: 27, column: 20, scope: !49)
!51 = !DILocation(line: 27, column: 9, scope: !49)
!52 = !DILocation(line: 28, column: 5, scope: !49)
!53 = !DILocation(line: 29, column: 10, scope: !37)
!54 = !DILocation(line: 29, column: 5, scope: !37)
!55 = !DILocation(line: 30, column: 1, scope: !37)
!56 = distinct !DISubprogram(name: "xmlRegNewAtom", scope: !1, file: !1, line: 33, type: !57, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!57 = !DISubroutineType(types: !58)
!58 = !{!3, !8, !8, !12, !59}
!59 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!60 = !DILocalVariable(name: "token", arg: 1, scope: !56, file: !1, line: 33, type: !8)
!61 = !DILocation(line: 33, column: 36, scope: !56)
!62 = !DILocalVariable(name: "token2", arg: 2, scope: !56, file: !1, line: 33, type: !8)
!63 = !DILocation(line: 33, column: 52, scope: !56)
!64 = !DILocalVariable(name: "data", arg: 3, scope: !56, file: !1, line: 33, type: !12)
!65 = !DILocation(line: 33, column: 66, scope: !56)
!66 = !DILocalVariable(name: "min", arg: 4, scope: !56, file: !1, line: 33, type: !59)
!67 = !DILocation(line: 33, column: 76, scope: !56)
!68 = !DILocalVariable(name: "atom", scope: !56, file: !1, line: 34, type: !3)
!69 = !DILocation(line: 34, column: 17, scope: !56)
!70 = !DILocation(line: 34, column: 37, scope: !56)
!71 = !DILocation(line: 34, column: 24, scope: !56)
!72 = !DILocation(line: 35, column: 10, scope: !73)
!73 = distinct !DILexicalBlock(scope: !56, file: !1, line: 35, column: 9)
!74 = !DILocation(line: 35, column: 9, scope: !56)
!75 = !DILocation(line: 35, column: 16, scope: !73)
!76 = !DILocation(line: 37, column: 5, scope: !56)
!77 = !DILocation(line: 37, column: 11, scope: !56)
!78 = !DILocation(line: 37, column: 18, scope: !56)
!79 = !DILocation(line: 38, column: 5, scope: !56)
!80 = !DILocation(line: 38, column: 11, scope: !56)
!81 = !DILocation(line: 38, column: 16, scope: !56)
!82 = !DILocalVariable(name: "lenn", scope: !56, file: !1, line: 40, type: !28)
!83 = !DILocation(line: 40, column: 12, scope: !56)
!84 = !DILocation(line: 40, column: 33, scope: !56)
!85 = !DILocation(line: 40, column: 19, scope: !56)
!86 = !DILocalVariable(name: "lenp", scope: !56, file: !1, line: 41, type: !28)
!87 = !DILocation(line: 41, column: 12, scope: !56)
!88 = !DILocation(line: 41, column: 33, scope: !56)
!89 = !DILocation(line: 41, column: 19, scope: !56)
!90 = !DILocalVariable(name: "str", scope: !56, file: !1, line: 43, type: !8)
!91 = !DILocation(line: 43, column: 14, scope: !56)
!92 = !DILocation(line: 43, column: 46, scope: !56)
!93 = !DILocation(line: 43, column: 53, scope: !56)
!94 = !DILocation(line: 43, column: 51, scope: !56)
!95 = !DILocation(line: 43, column: 58, scope: !56)
!96 = !DILocation(line: 43, column: 30, scope: !56)
!97 = !DILocation(line: 44, column: 9, scope: !98)
!98 = distinct !DILexicalBlock(scope: !56, file: !1, line: 44, column: 9)
!99 = !DILocation(line: 44, column: 13, scope: !98)
!100 = !DILocation(line: 44, column: 9, scope: !56)
!101 = !DILocation(line: 45, column: 24, scope: !102)
!102 = distinct !DILexicalBlock(scope: !98, file: !1, line: 44, column: 22)
!103 = !DILocation(line: 45, column: 9, scope: !102)
!104 = !DILocation(line: 46, column: 9, scope: !102)
!105 = !DILocation(line: 50, column: 13, scope: !56)
!106 = !DILocation(line: 50, column: 21, scope: !56)
!107 = !DILocation(line: 50, column: 28, scope: !56)
!108 = !DILocation(line: 50, column: 5, scope: !56)
!109 = !DILocation(line: 53, column: 5, scope: !56)
!110 = !DILocation(line: 56, column: 5, scope: !56)
!111 = !DILocation(line: 58, column: 5, scope: !56)
!112 = !DILocation(line: 58, column: 9, scope: !56)
!113 = !DILocation(line: 58, column: 15, scope: !56)
!114 = !DILocation(line: 59, column: 13, scope: !56)
!115 = !DILocation(line: 59, column: 17, scope: !56)
!116 = !DILocation(line: 59, column: 22, scope: !56)
!117 = !DILocation(line: 59, column: 28, scope: !56)
!118 = !DILocation(line: 59, column: 36, scope: !56)
!119 = !DILocation(line: 59, column: 5, scope: !56)
!120 = !DILocation(line: 60, column: 5, scope: !56)
!121 = !DILocation(line: 60, column: 9, scope: !56)
!122 = !DILocation(line: 60, column: 16, scope: !56)
!123 = !DILocation(line: 60, column: 14, scope: !56)
!124 = !DILocation(line: 60, column: 21, scope: !56)
!125 = !DILocation(line: 60, column: 26, scope: !56)
!126 = !DILocation(line: 62, column: 20, scope: !56)
!127 = !DILocation(line: 62, column: 5, scope: !56)
!128 = !DILocation(line: 62, column: 11, scope: !56)
!129 = !DILocation(line: 62, column: 18, scope: !56)
!130 = !DILocation(line: 63, column: 18, scope: !56)
!131 = !DILocation(line: 63, column: 5, scope: !56)
!132 = !DILocation(line: 63, column: 11, scope: !56)
!133 = !DILocation(line: 63, column: 16, scope: !56)
!134 = !DILocation(line: 65, column: 12, scope: !56)
!135 = !DILocation(line: 65, column: 5, scope: !56)
!136 = !DILocation(line: 66, column: 1, scope: !56)
!137 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 68, type: !138, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!138 = !DISubroutineType(types: !139)
!139 = !{!59}
!140 = !DILocalVariable(name: "token", scope: !137, file: !1, line: 70, type: !141)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 2048, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 256)
!144 = !DILocation(line: 70, column: 13, scope: !137)
!145 = !DILocalVariable(name: "token2", scope: !137, file: !1, line: 71, type: !141)
!146 = !DILocation(line: 71, column: 13, scope: !137)
!147 = !DILocalVariable(name: "min", scope: !137, file: !1, line: 72, type: !59)
!148 = !DILocation(line: 72, column: 9, scope: !137)
!149 = !DILocation(line: 74, column: 24, scope: !137)
!150 = !DILocation(line: 74, column: 5, scope: !137)
!151 = !DILocation(line: 75, column: 24, scope: !137)
!152 = !DILocation(line: 75, column: 5, scope: !137)
!153 = !DILocation(line: 76, column: 24, scope: !137)
!154 = !DILocation(line: 76, column: 5, scope: !137)
!155 = !DILocation(line: 79, column: 5, scope: !137)
!156 = !DILocation(line: 79, column: 16, scope: !137)
!157 = !DILocation(line: 80, column: 5, scope: !137)
!158 = !DILocation(line: 80, column: 17, scope: !137)
!159 = !DILocation(line: 83, column: 31, scope: !137)
!160 = !DILocation(line: 83, column: 17, scope: !137)
!161 = !DILocation(line: 83, column: 38, scope: !137)
!162 = !DILocation(line: 83, column: 5, scope: !137)
!163 = !DILocation(line: 84, column: 31, scope: !137)
!164 = !DILocation(line: 84, column: 17, scope: !137)
!165 = !DILocation(line: 84, column: 39, scope: !137)
!166 = !DILocation(line: 84, column: 5, scope: !137)
!167 = !DILocalVariable(name: "atom", scope: !137, file: !1, line: 87, type: !3)
!168 = !DILocation(line: 87, column: 17, scope: !137)
!169 = !DILocation(line: 87, column: 38, scope: !137)
!170 = !DILocation(line: 87, column: 45, scope: !137)
!171 = !DILocation(line: 87, column: 59, scope: !137)
!172 = !DILocation(line: 87, column: 24, scope: !137)
!173 = !DILocation(line: 89, column: 9, scope: !174)
!174 = distinct !DILexicalBlock(scope: !137, file: !1, line: 89, column: 9)
!175 = !DILocation(line: 89, column: 9, scope: !137)
!176 = !DILocation(line: 90, column: 24, scope: !177)
!177 = distinct !DILexicalBlock(scope: !174, file: !1, line: 89, column: 15)
!178 = !DILocation(line: 90, column: 9, scope: !177)
!179 = !DILocation(line: 91, column: 5, scope: !177)
!180 = !DILocation(line: 93, column: 5, scope: !137)
!181 = distinct !DISubprogram(name: "memcpy", scope: !182, file: !182, line: 12, type: !183, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !31)
!182 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!183 = !DISubroutineType(types: !184)
!184 = !{!12, !12, !185, !28}
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!187 = !DILocalVariable(name: "destaddr", arg: 1, scope: !181, file: !182, line: 12, type: !12)
!188 = !DILocation(line: 12, column: 20, scope: !181)
!189 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !181, file: !182, line: 12, type: !185)
!190 = !DILocation(line: 12, column: 42, scope: !181)
!191 = !DILocalVariable(name: "len", arg: 3, scope: !181, file: !182, line: 12, type: !28)
!192 = !DILocation(line: 12, column: 58, scope: !181)
!193 = !DILocalVariable(name: "dest", scope: !181, file: !182, line: 13, type: !13)
!194 = !DILocation(line: 13, column: 9, scope: !181)
!195 = !DILocation(line: 13, column: 16, scope: !181)
!196 = !DILocalVariable(name: "src", scope: !181, file: !182, line: 14, type: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!199 = !DILocation(line: 14, column: 15, scope: !181)
!200 = !DILocation(line: 14, column: 21, scope: !181)
!201 = !DILocation(line: 16, column: 3, scope: !181)
!202 = !DILocation(line: 16, column: 13, scope: !181)
!203 = !DILocation(line: 16, column: 16, scope: !181)
!204 = !DILocation(line: 17, column: 19, scope: !181)
!205 = !DILocation(line: 17, column: 15, scope: !181)
!206 = !DILocation(line: 17, column: 10, scope: !181)
!207 = !DILocation(line: 17, column: 13, scope: !181)
!208 = distinct !{!208, !201, !204, !209}
!209 = !{!"llvm.loop.mustprogress"}
!210 = !DILocation(line: 18, column: 10, scope: !181)
!211 = !DILocation(line: 18, column: 3, scope: !181)
